/// @file
///    @ingroup     minexamples
///    @copyright    Copyright 2018 The Min-DevKit Authors. All rights reserved.
///    @license    Use of this source code is governed by the MIT License found in the License.md file.

#include "c74_min.h"
#include <list>
//#include <iostream>
//#include <memory>
#include <filesystem>
namespace fs = std::filesystem;


#include <torch/script.h>
#include <string>
#include <sstream>
#include <vector>
#include <iostream>
#include <iomanip>



using namespace c74::min;


class chord_extrc_extractor_cqt : public object<chord_extrc_extractor_cqt> {
public:
    MIN_DESCRIPTION    {"Post to the Max Console."};
    MIN_TAGS        {"utilities"};
    MIN_AUTHOR        {"Cycling '74"};
    MIN_RELATED        {"print, jit.print, dict.print"};

    inlet<>  left    { this, "(bang) post greeting to the max console" };
    outlet<> output    { this, "(anything) output the message which is posted to the max console" };
    
    // init
    std::vector<atoms> vect_cqt;
    std::vector<atoms> vect_cqt_norm;
    string folder;
    string model_folder;
    string dict_folder;
    torch::jit::script::Module module;
    
    
    // utility function to open chord dictionary
    bool getFileContent(std::string fileName, std::vector<std::string> & vecOfStrs)
    {
        // Open the File
        std::ifstream in(fileName.c_str());
        // Check if object is valid
        if(!in)
        {
            std::cerr << "Cannot open the File : "<<fileName<<std::endl;
            return false;
        }
        std::string str;
        // Read the next line from File untill it reaches the end.
        while (std::getline(in, str))
        {
            // Line contains string of length > 0 then save it in vector
            if(str.size() > 0)
                vecOfStrs.push_back(str);
        }
        //Close The File
        in.close();
        return true;
    }
        
    
    message<> list { this, "list", "Model's folder plus CQT frame",
        MIN_FUNCTION {    // save the CQT for each frame
            atoms       result(args.size()-1);
            float y = 0.0;
            int n_v = vect_cqt.size();

            // get model folder
            folder = std::string(args[args.size()-1]);

            // get the input list
            for (auto i = 0; i < args.size()-2; ++i) {
                y = float(args[i+1]);
                result[i] = y/128;
            }
            
            if (n_v > 10000) {
              vect_cqt.erase(vect_cqt.begin());
            }
            vect_cqt.push_back(result);
            return {};
        }
    };
    
    
    
 
    // respond to the bang message to do something
    message<> bang { this, "bang", "Post the extracted chord between this bang and the previous one.",
        MIN_FUNCTION {

            string add("traced_model.pt");
            model_folder = "";
            model_folder.append(folder);
            model_folder.append(add);
            module = torch::jit::load(model_folder);
            
            //load chord dict
            std::vector<std::string> vecOfStr;
            
            // Get the contents of listChord in a vector
            string add_dict("_listChord.txt");
            dict_folder = "";
            dict_folder.append(folder);
            dict_folder.append(add_dict);
            bool list_chord = getFileContent(dict_folder, vecOfStr);

            //create input tensor
            std::vector<torch::jit::IValue> inputs;
            at::Tensor to_model = at::zeros({15, 105});
            auto tensor = torch::empty(1 * 1 * 15 * 105);
            float* data = tensor.data<float>();
            int n_v = vect_cqt.size();
            atoms       result(vect_cqt[0].size());
            double mean = 0.0;
            double prev = 0.0;
        
            //if no cqt before
            if (vect_cqt.empty())
            {
                inputs.push_back(torch::zeros({1,1,105,15}));
            }
            //else
            else
            {
                // compute mean of the CQT
                for (auto i = 0; i < vect_cqt[0].size(); ++i) {
                    mean = 0.0;
                    for (auto j = 0; j < n_v; ++j){
                        prev = vect_cqt[j][i];
                        mean = mean + prev;
                    }
                    mean = mean/n_v;
                    result[i] = mean;
                }
                
                // iteration to copy 15 times the CQT frames
                for (auto k = 0; k < vect_cqt[0].size(); ++k) {
                    for (auto i = 0; i < 15; ++i) {
                        *data++ = result[k];
                    }
                }

                // change the view to fit the model
                auto tmg  = tensor.view({1,1,105,15});
                inputs.push_back(tmg);
            }
                
            // forward to the model
            at::Tensor out_mod = module.forward(inputs).toTensor();
            
            // initialisation to output as a string
            std::ostringstream ss;
            std::string s;
            std::vector<float> vect_out;
            
            
            
            // get the probility vector
            //for (int i=0; i<25; ++i)
            for (int i=0; i<vecOfStr.size(); ++i)
            {
                vect_out.push_back((*(out_mod.data_ptr<float>()+i)));
            }
            
            int i;
            double m, sum, constant;

            // get softmax of the prob vector
            m = -INFINITY;
            for (i = 0; i < vecOfStr.size(); ++i) {
                if (m < vect_out[i]) {
                    m = vect_out[i];
                }
            }

            sum = 0.0;
            for (i = 0; i < vecOfStr.size(); ++i) {
                sum += exp(vect_out[i] - m);
            }

            constant = m + log(sum);
            for (i = 0; i < vecOfStr.size(); ++i) {
                vect_out[i] = exp(vect_out[i] - constant);
            }
                
            // send the results
            for (int i=0; i<vecOfStr.size(); ++i)
            {
                ss << vect_out[i];
                ss << " ";
            }
                
            

            // get the correct chord
            int maxElementIndex = std::max_element(vect_out.begin(),vect_out.end()) - vect_out.begin();
            ss << maxElementIndex;
            ss << " ";
            //float chord = list_chord[maxElementIndex];
            ss << vecOfStr[maxElementIndex];
            output.send(ss.str());       // send out our outlet
                
            // clean the cqt vectore
            for (auto k = 0; k < n_v; ++k) {
                vect_cqt.erase(vect_cqt.begin());
            }
            return {};
        }
    };
            
};


MIN_EXTERNAL(chord_extrc_extractor_cqt);
