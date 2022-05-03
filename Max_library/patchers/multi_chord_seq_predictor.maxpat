{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 8,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ -155.0, -975.0, 939.0, 787.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"comment" : "Possible continuation of the chord sequence (vector of probabilities)",
					"id" : "obj-46",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 200.175291999999956, 859.0, 30.0, 30.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 200.175291999999956, 859.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 493.46264599999995, 154.833373999999992, 87.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 493.46264599999995, 154.833373999999992, 87.0, 22.0 ],
					"text" : "s model_name"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 469.5, 279.0, 85.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 469.5, 279.0, 85.0, 22.0 ],
					"text" : "r model_name"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 500.5, 226.100098000000003, 87.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 500.5, 226.100098000000003, 87.0, 22.0 ],
					"text" : "s model_name"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 635.5, 377.0, 87.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 635.5, 377.0, 87.0, 22.0 ],
					"text" : "s model_name"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 414.0, 223.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 414.0, 223.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 697.0, 271.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 697.0, 271.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 799.0, 234.500123000000144, 73.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 799.0, 234.500123000000144, 73.0, 22.0 ],
					"text" : "combine s s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 832.5, 132.000123000000144, 58.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 832.5, 132.000123000000144, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 832.5, 157.000123000000144, 347.0, 35.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 832.5, 157.000123000000144, 347.0, 35.0 ],
					"text" : "/../../Python_library/modelGen/modelSave200908/a5_124_1_124_mlpDecimFamily/a5_124_1_124_mlpDecimFamily"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 635.5, 310.000123000000144, 421.0, 49.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 635.5, 310.000123000000144, 421.0, 49.0 ],
					"text" : "/Users/carsault/Dropbox/work/code/git_hub/chord_extraction_prediction_lib/Max_library/patchers/../../Python_library/modelGen/modelSave200908/a5_124_1_124_mlpDecimFamily/a5_124_1_124_mlpDecimFamily"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 663.0, 184.000123000000144, 135.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 663.0, 184.000123000000144, 135.0, 22.0 ],
					"text" : "conformpath slash boot"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 647.5, 157.000123000000144, 81.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 647.5, 157.000123000000144, 81.0, 22.0 ],
					"text" : "regexp (.+)/.+"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.826615, 0.153968, 0.629298, 1.0 ],
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 647.5, 126.000123000000144, 109.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 647.5, 126.000123000000144, 109.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "abstraction_path",
						"parameter_enable" : 0
					}
,
					"text" : "js abstraction_path"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 13.0, 44.533324999999991, 185.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 13.0, 44.533324999999991, 185.0, 20.0 ],
					"text" : "Start OSC server"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 13.0, 269.100098000000003, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 13.0, 269.100098000000003, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 13.0, 226.100098000000003, 114.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 13.0, 226.100098000000003, 114.0, 22.0 ],
					"text" : "if $i1 != 0 then bang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 13.0, 188.833373999999992, 153.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 13.0, 188.833373999999992, 153.0, 22.0 ],
					"text" : "zl.compare"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 147.0, 157.833373999999992, 118.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 147.0, 157.833373999999992, 118.0, 22.0 ],
					"text" : "Starting OSC Server"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 13.0, 115.333373999999992, 188.0, 35.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 13.0, 115.333373999999992, 188.0, 35.0 ],
					"text" : "(fc1): Linear(in_features=50, out_features=500, bias=True)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 417.962646000000007, 388.900085000000104, 185.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 417.962646000000007, 388.900085000000104, 185.0, 20.0 ],
					"text" : "Select beta value"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 563.5, 488.700134000000162, 29.5, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 563.5, 488.700134000000162, 29.5, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 563.5, 453.366760000000113, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 563.5, 453.366760000000113, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 442.462646000000007, 523.700134000000162, 87.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 442.462646000000007, 523.700134000000162, 87.0, 22.0 ],
					"text" : "/weight_param"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 442.462646000000007, 572.200134000000162, 41.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 442.462646000000007, 572.200134000000162, 41.0, 22.0 ],
					"text" : "zl.join"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 442.462646000000007, 609.033386000000064, 138.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 442.462646000000007, 609.033386000000064, 138.0, 22.0 ],
					"text" : "udpsend 127.0.0.1 9008"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Beta value",
					"comment" : "Beta value",
					"hint" : "Beta value",
					"id" : "obj-7",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 442.462646000000007, 425.366760000000113, 30.0, 30.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 442.462646000000007, 425.366760000000113, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 568.96264599999995, 105.833373999999992, 61.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 568.96264599999995, 105.833373999999992, 61.0, 22.0 ],
					"text" : "delay 200"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 449.5, 341.066711000000055, 138.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 449.5, 341.066711000000055, 138.0, 22.0 ],
					"text" : "udpsend 127.0.0.1 9008"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 449.5, 310.000123000000144, 39.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 449.5, 310.000123000000144, 39.0, 22.0 ],
					"text" : "zl join"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-32",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 449.5, 255.0, 115.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 449.5, 255.0, 115.0, 22.0 ],
					"text" : "/define_pred_model"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 449.5, 122.833373999999992, 66.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 449.5, 122.833373999999992, 66.0, 22.0 ],
					"text" : "route bang",
					"varname" : "amxd~[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 449.5, 154.833373999999992, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 449.5, 154.833373999999992, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 449.5, 196.0, 69.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 449.5, 196.0, 69.0, 22.0 ],
					"text" : "opendialog"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "File path or bang\n",
					"comment" : "Model path or bang to load it",
					"hint" : "File path or bang\n",
					"id" : "obj-31",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 449.5, 81.5, 30.0, 30.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 449.5, 81.5, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-90",
					"linecolor" : [ 0.349151, 0.377564, 0.442529, 1.0 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2109.0, 640.0, 5.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2109.0, 640.0, 5.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontsize" : 14.0,
					"id" : "obj-164",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6.5, 8.833373999999992, 307.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.5, 8.833373999999992, 307.0, 22.0 ],
					"text" : "Chord Sequence Continuation Prediction"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 13.0, 693.066711000000055, 244.000000000000057, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 13.0, 693.066711000000055, 244.000000000000057, 33.0 ],
					"text" : "Possible continuation of the chord sequence:"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 13.0, 388.900085000000104, 185.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 13.0, 388.900085000000104, 185.0, 20.0 ],
					"text" : "Input chord sequence:"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 417.962646000000007, 48.533324999999991, 185.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 417.962646000000007, 48.533324999999991, 185.0, 20.0 ],
					"text" : "Select chord model"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"linecount" : 2000,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 350.212646000000007, 841.0, 52.0, 26821.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2000,
					"presentation_rect" : [ 350.212646000000007, 841.0, 52.0, 26821.0 ],
					"text" : "0.000038 0.000014 0.000251 0. 0. 0.000496 0.000008 0.000016 0.001712 0.000075 0.000046 0. 0. 0.000034 0.010559 0.003975 0.000064 0. 0.001557 0.002869 0.000004 0. 0.018123 0.000018 0.000067 0. 0. 0. 0.000934 0.000002 0.000082 0. 0.000098 0.002401 0. 0.000012 0.00087 0.000047 0.000277 0. 0. 0. 0.000331 0.000001 0.000024 0. 0. 0.000114 0.000016 0.000001 0.000071 0.000109 0.00003 0. 0. 0. 0.00157 0.000198 0.000341 0. 0.000071 0.007499 0.000036 0.000022 0.783316 0.000196 0.000146 0. 0. 0.000055 0.002302 0.000379 0.000048 0. 0. 0.012015 0.000079 0.000014 0.001962 0.000007 0.000004 0. 0. 0.000009 0.011957 0.000292 0.00012 0. 0.003061 0.013725 0.000022 0.00034 0.00304 0.000342 0.000238 0. 0. 0.00019 0.000772 0.000027 0.000178 0. 0.000076 0.017516 0.000003 0. 0.001509 0.000001 0.000134 0. 0. 0.000001 0.000847 0.000004 0.001574 0. 0.000195 0.001754 0. 0.000008 0.000039 0. 0.000003 0. 0. 0. 0.003054 0.000011 0.00127 0. 0.000008 0.028701 0.00007 0.000262 0.006375 0.000662 0.000142 0. 0. 0.000026 0.000216 0.001683 0.003544 0. 0.000004 0.004351 0.000006 0.000021 0.000839 0.000109 0.000004 0. 0. 0. 0.00314 0.000096 0.000114 0. 0.000028 0.029725 0.000203 0.000007 0.000644 0.000799 0.000116 0. 0. 0.000177 0. 0.000514 0.000022 0.000149 0. 0.000006 0.001908 0.000042 0.000131 0.006891 0.000175 0.000104 0. 0. 0.00031 0.022406 0.004125 0.000858 0. 0.008195 0.005668 0.000001 0.000001 0.02613 0.000166 0.00022 0. 0. 0.000001 0.00861 0.000007 0.00039 0. 0.000061 0.01101 0. 0.000054 0.002907 0.000065 0.001156 0. 0. 0.000003 0.00171 0.000002 0.000035 0. 0. 0.000618 0.000162 0.000005 0.000361 0.000494 0.000065 0. 0. 0.000004 0.005454 0.000225 0.001882 0. 0.000094 0.027648 0.000598 0.000202 0.219253 0.000601 0.000381 0. 0. 0.000183 0.002223 0.000443 0.00012 0. 0. 0.009417 0.000174 0.000092 0.006994 0.000011 0.000027 0. 0. 0.000025 0.049171 0.000416 0.000355 0. 0.008149 0.044989 0.000057 0.000549 0.017635 0.000499 0.000605 0. 0. 0.000163 0.006686 0.00019 0.000217 0. 0.000172 0.038613 0.000006 0.000001 0.003859 0.000006 0.000215 0. 0. 0.000005 0.001765 0.000021 0.004603 0. 0.00035 0.003266 0.000001 0.000021 0.000179 0. 0.000016 0. 0. 0. 0.00723 0.000081 0.002528 0. 0.000124 0.074471 0.000183 0.000444 0.030076 0.005938 0.000935 0. 0. 0.000013 0.001397 0.001618 0.001378 0. 0.000046 0.013798 0.000132 0.000245 0.003817 0.000257 0.000046 0. 0. 0.000001 0.018226 0.000291 0.000373 0. 0.000046 0.266681 0.000136 0.000038 0.002285 0.001233 0.000519 0. 0. 0.000853 0. 0.001118 0.000017 0.000038 0. 0.000003 0.002749 0.00005 0.000115 0.003643 0.000062 0.000059 0. 0. 0.000247 0.022026 0.001947 0.001037 0. 0.008074 0.005645 0.000001 0.000001 0.018468 0.000197 0.000363 0. 0. 0.000003 0.009514 0.000017 0.000186 0. 0.000054 0.034742 0. 0.000071 0.001968 0.000106 0.001133 0. 0. 0.000003 0.001976 0.000005 0.000021 0. 0.000001 0.001103 0.000135 0.000016 0.000884 0.000085 0.000076 0. 0. 0.000002 0.006595 0.000096 0.00145 0. 0.000042 0.076862 0.002428 0.000614 0.160128 0.000657 0.000597 0. 0. 0.000045 0.001519 0.000064 0.000069 0. 0. 0.004044 0.000056 0.000065 0.016376 0.000012 0.000044 0. 0. 0.000049 0.039876 0.001168 0.000424 0. 0.005013 0.046684 0.0002 0.000506 0.028535 0.000754 0.000614 0. 0. 0.000128 0.002811 0.000469 0.000271 0. 0.000364 0.022526 0.000008 0.000001 0.003419 0.000004 0.000088 0. 0. 0.000009 0.00136 0.000117 0.002754 0. 0.000526 0.001755 0. 0.00003 0.000201 0. 0.000038 0. 0. 0. 0.004679 0.000079 0.002034 0. 0.000037 0.088058 0.000107 0.000311 0.029775 0.005813 0.000623 0. 0. 0.000007 0.002152 0.001896 0.000562 0. 0.000321 0.018681 0.000066 0.000388 0.001649 0.00018 0.000058 0. 0. 0.000005 0.03314 0.000466 0.000195 0. 0.000032 0.248937 0.000159 0.000109 0.002689 0.001334 0.00066 0. 0. 0.00437 0. 0.001854 0.000038 0.000011 0. 0.000001 0.006075 0.000177 0.000226 0.003504 0.000097 0.000128 0. 0. 0.000088 0.008399 0.000519 0.000348 0. 0.01993 0.012276 0.000003 0.000001 0.020609 0.000189 0.000739 0. 0. 0.000026 0.012576 0.000021 0.0004 0. 0.000366 0.066583 0.000001 0.0001 0.001885 0.000126 0.00164 0. 0. 0.000023 0.00481 0.000006 0.000013 0. 0.000005 0.001526 0.000147 0.000046 0.001087 0.000065 0.000075 0. 0. 0.000002 0.002544 0.000045 0.000675 0. 0.00002 0.15066 0.002344 0.001006 0.057403 0.005822 0.0008 0. 0. 0.000044 0.000577 0.000034 0.000272 0. 0. 0.006228 0.000278 0.0002 0.020953 0.000016 0.000183 0. 0. 0.000058 0.042604 0.002754 0.00048 0. 0.004736 0.039664 0.000487 0.000453 0.049143 0.000896 0.000846 0. 0. 0.000259 0.004474 0.000707 0.000321 0. 0.000879 0.021462 0.000025 0.00001 0.00959 0.000003 0.000189 0. 0. 0.000046 0.001547 0.000094 0.00232 0. 0.001417 0.001444 0.000001 0.000042 0.000371 0. 0.000107 0. 0. 0. 0.003329 0.000092 0.002374 0. 0.000029 0.089388 0.000144 0.000207 0.025148 0.006072 0.0027 0. 0. 0.000034 0.002219 0.001076 0.001247 0. 0.000235 0.014899 0.000057 0.000805 0.001913 0.00008 0.00007 0. 0. 0.000016 0.035555 0.000445 0.000113 0. 0.000054 0.193775 0.000247 0.000516 0.007057 0.001369 0.00184 0. 0. 0.002624 0. 0.001453 0.000075 0.000045 0. 0.000001 0.005916 0.000158 0.000216 0.004767 0.000173 0.000154 0. 0. 0.000102 0.006299 0.000644 0.00026 0. 0.022231 0.004504 0.000003 0.000001 0.023427 0.000299 0.000762 0. 0. 0.000019 0.014717 0.000013 0.001025 0. 0.000761 0.08129 0.000004 0.000072 0.001896 0.000059 0.000875 0. 0. 0.000158 0.006655 0.000003 0.000118 0. 0.000011 0.000705 0.000112 0.000048 0.002368 0.000082 0.000046 0. 0. 0.000003 0.002428 0.000084 0.000651 0. 0.00001 0.169161 0.001064 0.000897 0.03728 0.002363 0.000476 0. 0. 0.000135 0.000832 0.000056 0.001726 0. 0.000001 0.014283 0.000819 0.00021 0.029099 0.000022 0.000083 0. 0. 0.000079 0.034684 0.000855 0.000748 0. 0.002434 0.059233 0.000485 0.000289 0.044164 0.000806 0.00113 0. 0. 0.000236 0.01253 0.002757 0.000307 0. 0.000904 0.023352 0.000022 0.00001 0.011072 0.000003 0.000297 0. 0. 0.000188 0.003392 0.000291 0.004471 0. 0.001128 0.002928 0.000003 0.000021 0.000669 0.000001 0.00011 0. 0. 0.000001 0.005423 0.000131 0.00365 0. 0.000058 0.066498 0.000215 0.000253 0.026123 0.005982 0.003283 0. 0. 0.000039 0.00371 0.000416 0.002888 0. 0.000125 0.01401 0.000076 0.000543 0.000988 0.000056 0.000084 0. 0. 0.000026 0.044153 0.000547 0.000263 0. 0.000047 0.158717 0.000302 0.000473 0.00374 0.000995 0.001176 0. 0. 0.001197 0. 0.001948 0.000068 0.000067 0. 0.000002 0.005917 0.000066 0.000425 0.005419 0.000254 0.000324 0. 0. 0.000121 0.013613 0.0009 0.000199 0. 0.027758 0.00162 0.000003 0.000002 0.028794 0.001166 0.001018 0. 0. 0.00003 0.011895 0.000041 0.005015 0. 0.000371 0.102293 0.000006 0.000072 0.001365 0.000024 0.000663 0. 0. 0.000048 0.00524 0.000001 0.000287 0. 0.000032 0.000648 0.000023 0.000033 0.002218 0.000065 0.000019 0. 0. 0.000002 0.006303 0.000227 0.00116 0. 0.000018 0.173656 0.000988 0.000422 0.033081 0.003256 0.000692 0. 0. 0.000443 0.001423 0.000033 0.003459 0. 0.000001 0.019857 0.000819 0.000421 0.038948 0.000021 0.000064 0. 0. 0.000202 0.036718 0.000811 0.001162 0. 0.00225 0.050065 0.000151 0.000098 0.026376 0.000466 0.001049 0. 0. 0.000303 0.043939 0.005039 0.000368 0. 0.000829 0.024909 0.00009 0.00001 0.011364 0.000003 0.000362 0. 0. 0.000155 0.007916 0.000019 0.008873 0. 0.001206 0.003717 0.000002 0.000045 0.001609 0.000002 0.000214 0. 0. 0.000006 0.004016 0.00027 0.001576 0. 0.000068 0.028974 0.000399 0.000368 0.016918 0.00612 0.001949 0. 0. 0.000016 0.003186 0.001341 0.002177 0. 0.000014 0.010785 0.000054 0.000459 0.000861 0.000044 0.000107 0. 0. 0.00005 0.063542 0.001841 0.000398 0. 0.000109 0.113134 0.000149 0.000168 0.002417 0.000697 0.001488 0. 0. 0.000606 0. 0.002625 0.000015 0.000132 0. 0.000006 0.008554 0.000093 0.000945 0.004151 0.000873 0.000501 0. 0. 0.000064 0.017508 0.001073 0.000099 0. 0.033289 0.002064 0.000004 0.000005 0.030311 0.002307 0.001287 0. 0. 0.000045 0.008098 0.000122 0.004662 0. 0.000427 0.085143 0.000005 0.000144 0.002326 0.000047 0.000796 0. 0. 0.00006 0.00355 0. 0.000345 0. 0.000048 0.000727 0.000008 0.00005 0.001693 0.000043 0.000051 0. 0. 0.000008 0.009334 0.000187 0.001771 0. 0.000061 0.182222 0.002591 0.000231 0.043761 0.003462 0.001667 0. 0. 0.0004 0.001945 0.000016 0.006364 0. 0.000008 0.01654 0.001078 0.000404 0.029932 0.000044 0.00013 0. 0. 0.000339 0.03652 0.00124 0.000601 0. 0.004238 0.029694 0.000189 0.00007 0.017963 0.0005 0.001115 0. 0. 0.000218 0.072103 0.003684 0.000461 0. 0.000745 0.028609 0.000555 0.00002 0.010096 0.000004 0.000455 0. 0. 0.00012 0.009533 0.000111 0.011754 0. 0.001691 0.006767 0.000001 0.000051 0.003031 0.000003 0.00045 0. 0. 0.000024 0.002654 0.000042 0.000911 0. 0.000045 0.020176 0.000778 0.000816 0.024812 0.004166 0.002027 0. 0. 0.000016 0.002666 0.000387 0.002837 0. 0.000019 0.008674 0.000029 0.000373 0.001272 0.000063 0.00031 0. 0. 0.00003 0.053943 0.001134 0.000239 0. 0.00017 0.105766 0.00014 0.000093 0.003163 0.000969 0.001239 0. 0. 0.00064 0. 0.004199 0.000017 0.00039 0. 0.000016 0.010947 0.000132 0.001324 0.003461 0.001739 0.000794 0. 0. 0.000028 0.021437 0.001047 0.000093 0. 0.036568 0.004693 0.000011 0.000013 0.039822 0.001662 0.00103 0. 0. 0.0001 0.008882 0.000714 0.002648 0. 0.000756 0.096204 0.000001 0.000243 0.002216 0.000062 0.001456 0. 0. 0.000045 0.001936 0.000001 0.000653 0. 0.000252 0.000728 0.000005 0.000051 0.002786 0.000016 0.000197 0. 0. 0.00002 0.010822 0.000139 0.001759 0. 0.000045 0.106732 0.002279 0.000151 0.065104 0.007752 0.002916 0. 0. 0.000301 0.003088 0.000004 0.009664 0. 0.000113 0.016703 0.001728 0.000824 0.008498 0.000131 0.000243 0. 0. 0.000995 0.053345 0.003189 0.000867 0. 0.004759 0.024737 0.000608 0.000092 0.011417 0.000768 0.001189 0. 0. 0.000361 0.097892 0.001974 0.00029 0. 0.001037 0.015163 0.001126 0.000012 0.00917 0.000006 0.000608 0. 0. 0.000216 0.012827 0.000031 0.00917 0. 0.001206 0.006338 0.000001 0.000045 0.001569 0.000001 0.000342 0. 0. 0.000066 0.003634 0.000013 0.000298 0. 0.000018 0.012489 0.000793 0.000764 0.031253 0.002204 0.003352 0. 0. 0.000053 0.003989 0.00009 0.005812 0. 0.000004 0.010332 0.000028 0.000224 0.002836 0.000063 0.00041 0. 0. 0.000081 0.050388 0.001382 0.000211 0. 0.000177 0.111751 0.000342 0.000217 0.004024 0.001206 0.001103 0. 0. 0.000651 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 90.25, 419.066711000000055, 280.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 90.25, 419.066711000000055, 280.0, 22.0 ],
					"text" : "B:maj E:maj C:maj C:maj C:maj C:maj A:min C:min"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-9",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.5, 479.400085000000104, 82.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 30.5, 479.400085000000104, 82.0, 22.0 ],
					"text" : "/gen_memory"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 30.5, 568.666625999999951, 41.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 30.5, 568.666625999999951, 41.0, 22.0 ],
					"text" : "zl.join"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.5, 607.499877999999853, 138.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 30.5, 607.499877999999853, 138.0, 22.0 ],
					"text" : "udpsend 127.0.0.1 9008"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 13.0, 80.533324999999991, 207.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 13.0, 80.533324999999991, 207.0, 22.0 ],
					"text" : "Launch_DYCI2_agents_ACE.maxpat",
					"textcolor" : [ 0.772549019607843, 0.674509803921569, 0.062745098039216, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Possible continuation of the chord sequence",
					"id" : "obj-2",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 86.175291999999956, 859.0, 30.0, 30.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 86.175291999999956, 859.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Input chord sequence",
					"comment" : "Input chord sequence",
					"hint" : "Input chord sequence",
					"id" : "obj-1",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.5, 415.066711000000055, 30.0, 30.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 30.5, 415.066711000000055, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ -2.287353999999993, 920.333374000000049, 329.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ -2.287353999999993, 920.333374000000049, 329.0, 22.0 ],
					"text" : "C:min G:maj G:maj G:maj C:maj C:maj C:maj G:maj"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 22.675291999999956, 800.333374000000049, 198.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 22.675291999999956, 800.333374000000049, 198.0, 22.0 ],
					"text" : "route /list_alpha /gen_seq /gen_vec"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 22.712646000000007, 750.333374000000049, 97.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 22.712646000000007, 750.333374000000049, 97.0, 22.0 ],
					"text" : "udpreceive 9009"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 1 ],
					"order" : 0,
					"source" : [ "obj-11", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"order" : 1,
					"source" : [ "obj-11", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 1 ],
					"order" : 0,
					"source" : [ "obj-11", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"order" : 1,
					"source" : [ "obj-11", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"order" : 0,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"order" : 1,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"order" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"order" : 1,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 1 ],
					"order" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"order" : 1,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-21", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"order" : 1,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"order" : 0,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"order" : 1,
					"source" : [ "obj-25", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"order" : 0,
					"source" : [ "obj-25", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"order" : 1,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"order" : 0,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 1 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"order" : 1,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"order" : 0,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"order" : 0,
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"order" : 1,
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 1 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 1 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"order" : 1,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"order" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 1 ],
					"order" : 0,
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"order" : 1,
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "Launch_DYCI2_agents_ACE.maxpat",
				"bootpath" : "~/Dropbox/work/code/git_hub/chord_extraction_prediction_lib/Max_library/patchers/ACE_objects",
				"patcherrelativepath" : "./ACE_objects",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "Launch_DYCI2_agents_script_ACE.maxpat",
				"bootpath" : "~/Dropbox/work/code/git_hub/chord_extraction_prediction_lib/Max_library/patchers/ACE_objects",
				"patcherrelativepath" : "./ACE_objects",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abstraction_path.js",
				"bootpath" : "~/Dropbox/work/DYCI2_lib/Max_library/app",
				"patcherrelativepath" : "../../../../../DYCI2_lib/Max_library/app",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "shell.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "AudioStatus_Menu",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "color",
						"color" : [ 0.294118, 0.313726, 0.337255, 1 ],
						"color1" : [ 0.454902, 0.462745, 0.482353, 0.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "BlueTextButtons",
				"default" : 				{
					"bgcolor" : [ 0.666206, 0.782298, 0.817138, 1.0 ]
				}
,
				"parentstyle" : "RedTextButtons",
				"multi" : 0
			}
, 			{
				"name" : "BlueTextButtons-1",
				"default" : 				{
					"fontname" : [ "Helvetica" ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.538741, 0.764449, 0.877768, 1.0 ],
					"accentcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"elementcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"selectioncolor" : [ 0.1, 0.1, 0.1, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "GreenTextButtons",
				"parentstyle" : "RedTextButtons",
				"multi" : 0
			}
, 			{
				"name" : "Luca",
				"default" : 				{
					"fontname" : [ "Open Sans Semibold" ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"color" : [ 0.475135, 0.293895, 0.251069, 1.0 ],
					"bgcolor" : [ 0.904179, 0.895477, 0.842975, 0.56 ],
					"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"selectioncolor" : [ 0.720698, 0.16723, 0.080014, 1.0 ],
					"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "MAX7-MySTYLE",
				"umenu" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 1.0, 1.0, 1.0, 1.0 ],
						"color2" : [ 1.0, 1.0, 1.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"preset" : 				{
					"color" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"accentcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"toggle" : 				{
					"color" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"tab" : 				{
					"color" : [ 0.0, 0.533333, 0.168627, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"clearcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"number" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"newobj" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "Max6stylish",
				"button" : 				{
					"color" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"toggle" : 				{
					"color" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 0.3 ]
				}
,
				"slider" : 				{
					"color" : [ 0.439216, 0.74902, 0.254902, 1.0 ],
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.522397, 0.541645, 0.600966, 1.0 ]
				}
,
				"led" : 				{
					"color" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"number" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"selectioncolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"newobj" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "Max7style",
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "RedTextButtons",
				"default" : 				{
					"fontname" : [ "Helvetica" ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.843137, 0.733333, 0.729412, 1.0 ],
					"accentcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"elementcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"selectioncolor" : [ 0.1, 0.1, 0.1, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "RedTextButtons-1",
				"default" : 				{
					"fontname" : [ "Helvetica" ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.827321, 0.874747, 0.7195, 1.0 ],
					"accentcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"elementcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"selectioncolor" : [ 0.1, 0.1, 0.1, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "RedTextButtons-1-1",
				"default" : 				{
					"fontname" : [ "Helvetica" ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.843137, 0.733333, 0.729412, 1.0 ],
					"accentcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"elementcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"selectioncolor" : [ 0.1, 0.1, 0.1, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "RedTextButtons-1-2",
				"default" : 				{
					"fontname" : [ "Helvetica" ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.843137, 0.733333, 0.729412, 1.0 ],
					"accentcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"elementcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"selectioncolor" : [ 0.1, 0.1, 0.1, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "RedTextButtons-2",
				"default" : 				{
					"fontname" : [ "Helvetica" ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.843137, 0.733333, 0.729412, 1.0 ],
					"accentcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"elementcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"selectioncolor" : [ 0.1, 0.1, 0.1, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "RedTextButtons-3",
				"default" : 				{
					"fontname" : [ "Helvetica" ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.843137, 0.733333, 0.729412, 1.0 ],
					"accentcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"elementcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"selectioncolor" : [ 0.1, 0.1, 0.1, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "RedTextButtons-4",
				"default" : 				{
					"fontname" : [ "Helvetica" ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.843137, 0.733333, 0.729412, 1.0 ],
					"accentcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"elementcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"selectioncolor" : [ 0.1, 0.1, 0.1, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "RedTextButtons-5",
				"default" : 				{
					"fontname" : [ "Helvetica" ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.843137, 0.733333, 0.729412, 1.0 ],
					"accentcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"elementcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"selectioncolor" : [ 0.1, 0.1, 0.1, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "RedTextButtons-6",
				"default" : 				{
					"fontname" : [ "Helvetica" ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.843137, 0.733333, 0.729412, 1.0 ],
					"accentcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"elementcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"selectioncolor" : [ 0.1, 0.1, 0.1, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "RedTextButtons-7",
				"default" : 				{
					"fontname" : [ "Helvetica" ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.827321, 0.874747, 0.7195, 1.0 ],
					"accentcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"elementcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"selectioncolor" : [ 0.1, 0.1, 0.1, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "VioletTextButton",
				"default" : 				{
					"fontname" : [ "Helvetica" ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.715377, 0.696413, 0.824482, 1.0 ],
					"accentcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"elementcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"selectioncolor" : [ 0.1, 0.1, 0.1, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "dUG Yello 01-1",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.94902, 0.992157, 1.0, 1.0 ],
						"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"fontface" : [ 1 ],
					"bgcolor" : [ 1.0, 0.941176, 0.803922, 1.0 ],
					"fontsize" : [ 10.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.94902, 0.992157, 1.0, 1.0 ],
						"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"fontface" : [ 1 ],
					"fontsize" : [ 10.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"newobj" : 				{
					"fontface" : [ 1 ],
					"bgcolor" : [ 1.0, 0.941176, 0.803922, 1.0 ],
					"fontsize" : [ 10.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 1.0, 0.941176, 0.803922, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 1.0, 0.941176, 0.803922, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "dark-night-patch",
				"default" : 				{
					"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.898039 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}
,
					"accentcolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ],
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "default_style",
				"button" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ]
				}
,
				"toggle" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.636487, 0.648652, 0.683149, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"newobj" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "default_style-1",
				"button" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ]
				}
,
				"toggle" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.636487, 0.648652, 0.683149, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"newobj" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "jpatcher001",
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "ksliderWhite",
				"default" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "m4l",
				"default" : 				{
					"fontname" : [ "Arial Bold" ],
					"fontsize" : [ 10.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "master_style",
				"message" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"button" : 				{
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"kslider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"function" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"toggle" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezdac~" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"gain~" : 				{
					"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"slider" : 				{
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"multislider" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"ezadc~" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"newobj" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "maty@multislider001",
				"parentstyle" : "multislider001",
				"multi" : 0
			}
, 			{
				"name" : "maty_jpatcher01",
				"default" : 				{
					"fontname" : [ "Helvetica Neue Thin" ]
				}
,
				"parentstyle" : "jpatcher001",
				"multi" : 0
			}
, 			{
				"name" : "maty_multislider01",
				"parentstyle" : "multislider001",
				"multi" : 0
			}
, 			{
				"name" : "multi001",
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "multislider001",
				"default" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.945827, 0.711942, 0.174445, 0.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjBlue-1",
				"default" : 				{
					"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjBlue-2",
				"default" : 				{
					"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjBlue-3",
				"default" : 				{
					"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjGreen-1",
				"default" : 				{
					"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjGreen-2",
				"default" : 				{
					"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjGreen-3",
				"default" : 				{
					"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjYellow-1",
				"default" : 				{
					"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
					"fontsize" : [ 12.059008 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjYellow-2",
				"default" : 				{
					"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
					"fontsize" : [ 12.059008 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjYellow-3",
				"default" : 				{
					"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
					"fontsize" : [ 12.059008 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "numberGold-1",
				"default" : 				{
					"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
