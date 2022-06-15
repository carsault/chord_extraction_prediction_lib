# chord_extraction_prediction_lib


The Chord extraction and prediction library contains a collection of tools for automatic chord extraction and chord sequence continuation. 

If using the library, please quote: __Carsault, T., Nika, J., Esling, P., & Assayag, G (2021). Combining Real-Time Extraction and Prediction of Musical Chord Progressions for Creative Applications. In Electronics. [(Article)](https://www.mdpi.com/2079-9292/10/21/2634).__

__Author:__ Tristan Carsault (IRCAM STMS LAB)
__Contributors:__ Jérôme Nika (IRCAM STMS LAB), Philippe Esling (IRCAM STMS LAB), Diemo Schwarz (IRCAM STMS LAB), Antoine Caillon (IRCAM STMS LAB); 
__REACH research project :__ Gérard Assayag (Ircam, PI)


------
_**To use Chord extraction and prediction applications in Max directly, please go to the [Release page](https://github.com/carsault/chord_extraction_prediction_lib/releases) that contains a release version of Chord extraction and prediction library ready to be used as a Max library. The following sections of this document are intended for developers wishing to craft the Python core of the libary and build .mxo external.**_

------

## Repository

This repository contains: 

* __Tutorials__  with complete standard chord extraction and prediction functionalities. These self-contained Max applications and can be used as such by users who are not interested in building new patches.

* The __Max library__ of patches interfacing with the extraction and prediction engine developed in Python. 

* The __Python library__, defining models and tools for creative generation of sequences (and in particular musical sequences) from models of sequences. It implements several models, generative heuristics, time management strategies, and architectures of interactive agents. 

* The __Chord_extrc_external__, that allows to build the .mxo which is used for the real-time chord extraction.

------

## Requirements
* Mac OS
* Max 8
* Python 3.9 and >

## Externals
* Mubu for Max: Open Max, File / Show Package Manager, Search "Mubu for Max", Install.
* Max shell object: already included in chord_extraction_prediction_lib/Max_Library/external (but check the repository https://github.com/jeremybernstein/shell/releases !) 

## Installation
* Drag the chord_extraction_prediction_lib directory wherever you want (but not in Max packages / libraries !) and add its path into Max's search path (in Max: Options/File preferences... then add the path WITH THE SUBFOLDERS). /!\ The path of this folder must not contain any whitespace.

## Python configuration
* Download and install the **last** version of Python **3** (https://www.python.org/downloads).
* Open Terminal to install the dependencies: `cd [DRAG_AND_DROP_THE_DIRECTORY_chord_extraction_prediction_lib]`, enter, `pip3 install -r requirements.txt --user`, enter.

------
## Build instruction for the real-time chord extraction MXO file

### macOS

Pre-built binaries are available in the [release section](https://github.com/carsault/chord_extraction_prediction_lib/releases) of this repo.

- Download libtorch 1.10 (CPU) [here](https://download.pytorch.org/libtorch/cpu/libtorch-macos-1.10.1.zip) and unzip it to a known directory
- Run the following commands:

```bash
git clone https://github.com/carsault/chord_extraction_prediction_lib --recursive
cd chord_extraction_prediction_lib/Chord_extrc_external
mkdir build
cd build
cmake ../src/ -DCMAKE_PREFIX_PATH=/path/to/libtorch -DCMAKE_BUILD_TYPE=Release
make
```

- Copy the produced `.mxo` external (located in `Chord_extrc_external/src/externals`) inside `chord_extraction_prediction_lib/Max_library/external`

## Troubleshooting
Please write to `tristan.carsault@ircam.fr` for any question, or to share with us your projects using Chord extraction and prediction library !

## License
MIT License

