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
		"rect" : [ 34.0, 79.0, 939.0, 787.0 ],
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
					"id" : "obj-48",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 334.0, 295.100098000000003, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 298.5, 258.100098000000003, 114.0, 22.0 ],
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
					"patching_rect" : [ 298.5, 194.833373999999992, 153.0, 22.0 ],
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
					"patching_rect" : [ 346.0, 225.133422999999993, 118.0, 22.0 ],
					"text" : "Starting OSC Server"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"linecount" : 13,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 259.46264599999995, 179.600098000000003, 29.5, 183.0 ],
					"text" : "OSError: [Errno 48] Address already in use"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 404.962646000000007, 459.533324999999991, 185.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 78.0, 77.333374000000049, 149.0, 20.0 ],
					"text" : "beta value"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 660.0, 529.333374000000049, 29.5, 22.0 ],
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
					"patching_rect" : [ 660.0, 494.0, 24.0, 24.0 ]
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
					"patching_rect" : [ 534.5, 568.333374000000049, 87.0, 22.0 ],
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
					"patching_rect" : [ 530.0, 599.833374000000049, 41.0, 22.0 ],
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
					"patching_rect" : [ 530.0, 633.666625999999951, 138.0, 22.0 ],
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
					"patching_rect" : [ 601.0, 488.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 659.0, 164.833373999999992, 61.0, 22.0 ],
					"text" : "delay 200"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"linecount" : 5,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 659.0, 209.333373999999992, 275.0, 76.0 ],
					"text" : "\"Macintosh HD:/Users/carsault/Dropbox/work/code/git_hub/chord_extraction_prediction_lib/Python_library/modelGen/modelSave200908/a5_124_1_124_mlpDecimFamily/a5_124_1_124_mlpDecimFamily\""
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
					"patching_rect" : [ 533.5, 414.0, 138.0, 22.0 ],
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
					"patching_rect" : [ 533.5, 357.066711000000055, 39.0, 22.0 ],
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
					"patching_rect" : [ 533.5, 311.0, 115.0, 22.0 ],
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
					"patching_rect" : [ 533.5, 144.833373999999992, 66.0, 22.0 ],
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
					"patching_rect" : [ 544.754394999999931, 194.833373999999992, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 37.629311999999999, 62.333374000000049, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 553.5, 235.0, 69.0, 22.0 ],
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
					"patching_rect" : [ 529.5, 102.5, 30.0, 30.0 ]
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
					"presentation_rect" : [ 10.357574, 104.333374000000049, 311.454360999999949, 6.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontsize" : 14.0,
					"id" : "obj-164",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 241.962646000000007, 8.833373999999992, 161.0, 53.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.629312, 5.500046, 317.370687999999973, 22.0 ],
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
					"patching_rect" : [ 0.287353999999993, 326.666748000000098, 244.000000000000057, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 26.0, 170.0, 287.0, 20.0 ],
					"text" : "Possible continuation of the chord sequence:"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 17.5, 70.166748000000098, 185.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 26.0, 112.333374000000049, 149.0, 20.0 ],
					"text" : "Input chord sequence:"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 417.962646000000007, 58.533324999999991, 185.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 63.0, 62.333374000000049, 149.0, 20.0 ],
					"text" : "Select chord model"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 202.96264599999995, 496.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 74.75, 140.333374000000049, 280.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 26.0, 138.333374000000049, 280.0, 22.0 ],
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
					"patching_rect" : [ 17.5, 156.666748000000098, 82.0, 22.0 ],
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
					"patching_rect" : [ 13.0, 188.166748000000098, 41.0, 22.0 ],
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
					"patching_rect" : [ 13.0, 222.0, 138.0, 22.0 ],
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
					"patching_rect" : [ 6.5, 24.333373999999992, 207.0, 22.0 ],
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
					"patching_rect" : [ 147.96264599999995, 496.0, 30.0, 30.0 ]
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
					"patching_rect" : [ 35.0, 108.333374000000049, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"linecount" : 242,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 73.96264599999995, 537.333374000000049, 273.0, 3253.0 ],
					"presentation" : 1,
					"presentation_linecount" : 211,
					"presentation_rect" : [ 26.0, 192.0, 302.0, 2837.0 ],
					"text" : "C:maj7 C:maj7 D:min7 D:min7 G:7 G:7 C:maj7 C:maj7 0.021816 0.000012 0.002574 0. 0.000013 0.001951 0.000278 0.00379 0.000039 0.000321 0.002662 0. 0. 0.000027 0.032425 0.001249 0.000145 0. 0.000461 0.000631 0.00042 0.000405 0.008578 0.000059 0.217857 0. 0. 0.000063 0.011403 0.000882 0.003925 0. 0.003266 0.001289 0.00003 0.005053 0.000962 0.000018 0.014282 0. 0. 0.000168 0.005361 0.000046 0.022503 0. 0.000513 0.000184 0.000039 0.000425 0.000344 0.000002 0.006289 0. 0. 0. 0.012202 0.002185 0.00035 0. 0.000322 0.003268 0.025351 0.222597 0.000569 0.000452 0.004183 0. 0. 0.000444 0.013968 0.000082 0.001959 0. 0. 0.000689 0.000348 0.001264 0.000019 0.000042 0.004777 0. 0. 0.000231 0.052559 0.000142 0.000352 0. 0.001161 0.000884 0.000079 0.000097 0.000827 0.001211 0.075776 0. 0. 0.000498 0.018526 0.00097 0.000306 0. 0.000847 0.00027 0.000009 0.000191 0.000736 0.000023 0.008386 0. 0. 0.000003 0.004555 0.000003 0.001056 0. 0.007686 0.001707 0.000007 0.000102 0.000078 0. 0.00385 0. 0. 0.000017 0.03319 0.00011 0.001069 0. 0.000007 0.008886 0.001867 0.043286 0.001247 0.002156 0.001711 0. 0. 0.000313 0.006765 0.000032 0.001137 0. 0.00001 0.001445 0.001242 0.005563 0.000004 0.000016 0.0018 0. 0. 0. 0.01184 0.002606 0.000774 0. 0.000157 0.006857 0.00321 0.000619 0.001207 0.000294 0.00504 0. 0. 0.004559 0. 0.027448 0.000028 0.001541 0. 0.000022 0.002108 0.000378 0.008521 0.000081 0.000218 0.003393 0. 0. 0.000545 0.041682 0.002153 0.000191 0. 0.000339 0.000825 0.000271 0.000632 0.009355 0.000071 0.181166 0. 0. 0.000168 0.012923 0.000886 0.004832 0. 0.00423 0.002705 0.000175 0.002148 0.000938 0.000071 0.012598 0. 0. 0.00016 0.006217 0.000102 0.023074 0. 0.000389 0.000222 0.000061 0.000913 0.000517 0.000008 0.004447 0. 0. 0.000002 0.017633 0.002429 0.00065 0. 0.000475 0.00738 0.027984 0.203294 0.000831 0.000767 0.006976 0. 0. 0.000336 0.015215 0.000103 0.002651 0. 0. 0.00173 0.00034 0.001704 0.000018 0.000116 0.004875 0. 0. 0.000159 0.056369 0.000348 0.001613 0. 0.000595 0.002015 0.000081 0.000129 0.001327 0.001371 0.044825 0. 0. 0.00055 0.016389 0.001604 0.000424 0. 0.001558 0.000481 0.000029 0.000584 0.000812 0.000019 0.009872 0. 0. 0.000002 0.005512 0.000002 0.004609 0. 0.011187 0.001841 0.000004 0.000106 0.000191 0. 0.00635 0. 0. 0.000029 0.034149 0.000163 0.002235 0. 0.000004 0.013938 0.002161 0.044613 0.001442 0.005267 0.001709 0. 0. 0.000411 0.006445 0.00002 0.000596 0. 0.000009 0.002279 0.001169 0.009025 0.000003 0.000014 0.001166 0. 0. 0.000001 0.018796 0.00227 0.00166 0. 0.000109 0.005991 0.00452 0.001352 0.000883 0.000185 0.006658 0. 0. 0.005508 0. 0.02366 0.000016 0.000679 0. 0.000146 0.002524 0.000603 0.01109 0.000172 0.000063 0.013913 0. 0. 0.000513 0.026992 0.000392 0.000067 0. 0.000598 0.000448 0.000227 0.001092 0.010299 0.000037 0.031751 0. 0. 0.001694 0.014546 0.00166 0.00112 0. 0.011962 0.003045 0.000123 0.00096 0.002179 0.000032 0.034655 0. 0. 0.001252 0.004787 0.000044 0.009422 0. 0.000457 0.000688 0.000042 0.002794 0.001634 0.000097 0.001831 0. 0. 0.00001 0.014822 0.003723 0.000229 0. 0.00307 0.017536 0.029525 0.101327 0.000859 0.00076 0.011165 0. 0. 0.001482 0.006886 0.000023 0.002087 0. 0. 0.011736 0.000792 0.001528 0.000016 0.000291 0.007738 0. 0. 0.000137 0.07032 0.000387 0.000277 0. 0.001502 0.002674 0.000123 0.000251 0.002479 0.00145 0.150316 0. 0. 0.002345 0.024366 0.001401 0.000136 0. 0.004546 0.001193 0.000031 0.001072 0.00075 0.000026 0.05198 0. 0. 0.000011 0.006044 0.000001 0.004947 0. 0.018992 0.001508 0.000055 0.000399 0.000179 0. 0.012174 0. 0. 0.000098 0.009504 0.000094 0.000451 0. 0.000007 0.010494 0.006674 0.04341 0.001156 0.002111 0.002403 0. 0. 0.000165 0.004231 0.000045 0.00058 0. 0.000126 0.00195 0.000736 0.007485 0.000004 0.000011 0.002032 0. 0. 0.000004 0.032079 0.001359 0.001357 0. 0.001571 0.008993 0.007714 0.00482 0.000899 0.000302 0.031503 0. 0. 0.017645 0. 0.013439 0.000013 0.000258 0. 0.000055 0.001264 0.000382 0.007462 0.000136 0.000015 0.013999 0. 0. 0.000097 0.025861 0.000114 0.00005 0. 0.000858 0.000252 0.000168 0.001016 0.012156 0.000198 0.022479 0. 0. 0.002723 0.020747 0.001202 0.000555 0. 0.00814 0.002467 0.000101 0.000459 0.00151 0.000006 0.035868 0. 0. 0.001456 0.003351 0.000039 0.009349 0. 0.000313 0.000492 0.000028 0.00317 0.000804 0.00017 0.001729 0. 0. 0.000008 0.01381 0.005321 0.000184 0. 0.005681 0.02491 0.045619 0.103553 0.000926 0.000622 0.011092 0. 0. 0.001038 0.005147 0.000015 0.003623 0. 0. 0.025404 0.000901 0.002384 0.000011 0.000148 0.00615 0. 0. 0.000083 0.052915 0.000529 0.000158 0. 0.001813 0.003639 0.000162 0.000223 0.003488 0.001264 0.155014 0. 0. 0.002968 0.019336 0.000381 0.000109 0. 0.003117 0.000898 0.00003 0.001006 0.000326 0.000005 0.052569 0. 0. 0.000019 0.007341 0.000015 0.003489 0. 0.019304 0.000538 0.000079 0.000747 0.000214 0. 0.009973 0. 0. 0.0001 0.008323 0.000051 0.000407 0. 0.000014 0.01205 0.01211 0.075208 0.001564 0.001241 0.004461 0. 0. 0.00005 0.004231 0.000122 0.000683 0. 0.000169 0.002973 0.000465 0.009153 0.000002 0.000008 0.001474 0. 0. 0.000003 0.02199 0.002327 0.001989 0. 0.001615 0.006511 0.00369 0.004959 0.00055 0.000491 0.018514 0. 0. 0.009249 0. 0.026048 0.000016 0.000679 0. 0.000033 0.001825 0.000999 0.004165 0.000181 0.000029 0.006344 0. 0. 0.000082 0.048326 0.000774 0.00009 0. 0.000426 0.000349 0.000406 0.000713 0.006806 0.000204 0.022594 0. 0. 0.00654 0.043652 0.001993 0.001043 0. 0.001856 0.002073 0.000111 0.000928 0.001395 0.000006 0.014215 0. 0. 0.000212 0.005435 0.000024 0.011041 0. 0.000362 0.0017 0.000006 0.001885 0.000221 0.000149 0.001036 0. 0. 0.000012 0.045469 0.007947 0.000306 0. 0.001084 0.030562 0.056485 0.102165 0.001027 0.000664 0.00998 0. 0. 0.001366 0.013865 0.00002 0.007472 0. 0. 0.009409 0.000631 0.004331 0.000009 0.000059 0.002023 0. 0. 0.000065 0.02134 0.00139 0.000404 0. 0.000482 0.001881 0.000088 0.000126 0.001885 0.000877 0.039873 0. 0. 0.000957 0.042691 0.001928 0.000133 0. 0.001643 0.001047 0.000047 0.001082 0.000915 0.000024 0.023183 0. 0. 0.000069 0.006341 0.000008 0.005973 0. 0.005173 0.000396 0.000022 0.000336 0.000161 0.000002 0.003635 0. 0. 0.000072 0.016471 0.000146 0.000583 0. 0.000034 0.005903 0.005529 0.062635 0.003103 0.002186 0.004651 0. 0. 0.000063 0.003558 0.000411 0.000458 0. 0.000073 0.005055 0.000519 0.007671 0.000004 0.000012 0.001178 0. 0. 0.000002 0.135854 0.018527 0.003743 0. 0.000681 0.018635 0.00281 0.002832 0.000394 0.000546 0.010756 0. 0. 0.008868 0. 0.031949 0.000033 0.000914 0. 0.000056 0.002135 0.00112 0.005455 0.000358 0.000056 0.005928 0. 0. 0.000205 0.046652 0.000658 0.000062 0. 0.000551 0.000563 0.00068 0.00076 0.004565 0.000208 0.021657 0. 0. 0.000989 0.046935 0.001596 0.001802 0. 0.001512 0.002101 0.000156 0.001078 0.001312 0.000027 0.011176 0. 0. 0.000114 0.006776 0.000021 0.011194 0. 0.000183 0.00257 0.000004 0.001896 0.00004 0.000035 0.000953 0. 0. 0.000018 0.037496 0.008936 0.000771 0. 0.000372 0.022337 0.052137 0.088918 0.000819 0.000915 0.008284 0. 0. 0.000644 0.012928 0.000053 0.011846 0. 0. 0.004152 0.000401 0.004661 0.000007 0.000113 0.001745 0. 0. 0.000085 0.023197 0.000732 0.000513 0. 0.000591 0.002766 0.000138 0.000273 0.002249 0.00078 0.02698 0. 0. 0.001126 0.053867 0.001616 0.000349 0. 0.001429 0.001811 0.000073 0.002273 0.00141 0.000023 0.024109 0. 0. 0.00028 0.004551 0.000003 0.004624 0. 0.00477 0.000514 0.000011 0.000319 0.000137 0.000003 0.003325 0. 0. 0.000068 0.022746 0.00022 0.000573 0. 0.000034 0.006006 0.004203 0.045732 0.004072 0.00155 0.004023 0. 0. 0.000048 0.00373 0.000454 0.000504 0. 0.000009 0.005917 0.000524 0.005052 0.000005 0.000008 0.001172 0. 0. 0.000003 0.181131 0.024653 0.004334 0. 0.000387 0.018256 0.003855 0.002715 0.000377 0.000328 0.007664 0. 0. 0.010133 0. 0.009547 0.000048 0.000656 0. 0.000071 0.002781 0.001576 0.010963 0.000274 0.00009 0.010882 0. 0. 0.000314 0.01607 0.000256 0.000028 0. 0.0012 0.00158 0.001102 0.001263 0.011879 0.000138 0.040884 0. 0. 0.000322 0.008908 0.000183 0.00056 0. 0.011085 0.000771 0.000103 0.00113 0.000588 0.000016 0.01854 0. 0. 0.00124 0.00202 0.000032 0.001648 0. 0.000224 0.000846 0.000023 0.000885 0.000033 0.000012 0.001221 0. 0. 0.000018 0.015653 0.003332 0.000206 0. 0.000627 0.048602 0.07427 0.178484 0.00103 0.000518 0.019255 0. 0. 0.000937 0.003945 0.000041 0.001316 0. 0.000004 0.002979 0.000393 0.003857 0.000005 0.000144 0.002747 0. 0. 0.000077 0.019458 0.00019 0.000246 0. 0.001614 0.003443 0.00055 0.000819 0.003181 0.001125 0.067327 0. 0. 0.002559 0.013927 0.000289 0.000137 0. 0.002797 0.002285 0.000275 0.014937 0.002004 0.000045 0.112168 0. 0. 0.000831 0.001607 0.000001 0.001523 0. 0.009026 0.000586 0.000031 0.000463 0.000162 0. 0.007454 0. 0. 0.000018 0.008423 0.000104 0.000137 0. 0.000104 0.008714 0.005568 0.088053 0.002533 0.000498 0.006281 0. 0. 0.000073 0.001853 0.000312 0.000267 0. 0.000014 0.004108 0.000925 0.013617 0.000007 0.000007 0.000934 0. 0. 0.000013 0.025248 0.001431 0.001901 0. 0.000808 0.006187 0.005612 0.004318 0.000654 0.000198 0.016377 0. 0. 0.003213 0. 0.011147 0.000043 0.000924 0. 0.000025 0.002952 0.00156 0.011153 0.000255 0.000153 0.011782 0. 0. 0.000391 0.013088 0.000224 0.000041 0. 0.000861 0.002261 0.001166 0.001114 0.015337 0.000089 0.043348 0. 0. 0.000149 0.005628 0.00009 0.000535 0. 0.012229 0.000613 0.000082 0.001208 0.000565 0.000004 0.017428 0. 0. 0.001364 0.002034 0.000067 0.000803 0. 0.000182 0.000487 0.000025 0.000615 0.000043 0.000014 0.001334 0. 0. 0.000022 0.011141 0.00274 0.000137 0. 0.000504 0.044546 0.070389 0.174246 0.000716 0.000903 0.01726 0. 0. 0.001785 0.002081 0.000033 0.002021 0. 0.000012 0.001905 0.000347 0.002542 0.000005 0.00015 0.002783 0. 0. 0.000035 0.023571 0.000306 0.000173 0. 0.001454 0.002485 0.000506 0.000773 0.002328 0.001269 0.074219 0. 0. 0.003229 0.015355 0.000256 0.00016 0. 0.002196 0.002434 0.000525 0.035003 0.003008 0.000056 0.130416 0. 0. 0.001053 0.001001 0.000003 0.002303 0. 0.007402 0.000772 0.000076 0.000385 0.000167 0. 0.010239 0. 0. 0.000036 0.008163 0.000151 0.000198 0. 0.000193 0.00733 0.003913 0.072444 0.002352 0.000609 0.004664 0. 0. 0.000083 0.002462 0.000219 0.000476 0. 0.000007 0.002404 0.001235 0.014381 0.000011 0.000015 0.000492 0. 0. 0.000012 0.017102 0.000539 0.00266 0. 0.000826 0.00382 0.005714 0.004164 0.000829 0.000222 0.017499 0. 0. 0.001933 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 93.96264599999995, 428.333374000000049, 146.0, 22.0 ],
					"text" : "route /list_alpha /gen_seq"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 93.96264599999995, 379.333374000000049, 97.0, 22.0 ],
					"text" : "udpreceive 9009"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"grad1" : [ 0.862745, 0.870588, 0.878431, 0.27 ],
					"grad2" : [ 0.32549, 0.345098, 0.372549, 0.75 ],
					"id" : "obj-27",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 439.962646000000007, 24.333373999999992, 335.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ -1.370688000000001, 96.500045999999998, 345.0, 136.0 ],
					"proportion" : 0.39
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
					"destination" : [ "obj-33", 1 ],
					"order" : 0,
					"source" : [ "obj-29", 0 ]
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
					"destination" : [ "obj-32", 0 ],
					"order" : 1,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"order" : 0,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 1 ],
					"source" : [ "obj-36", 0 ]
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
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-44", 0 ]
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
					"bgcolor" : [ 0.538741, 0.764449, 0.877768, 1.0 ],
					"selectioncolor" : [ 0.1, 0.1, 0.1, 1.0 ],
					"fontname" : [ "Helvetica" ],
					"accentcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.55, 0.55, 0.55, 1.0 ]
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
					"bgcolor" : [ 0.904179, 0.895477, 0.842975, 0.56 ],
					"selectioncolor" : [ 0.720698, 0.16723, 0.080014, 1.0 ],
					"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
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
					"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
					"color" : [ 0.475135, 0.293895, 0.251069, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "MAX7-MySTYLE",
				"tab" : 				{
					"clearcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.0, 0.533333, 0.168627, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"newobj" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"number" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 1.0, 1.0, 1.0, 1.0 ],
						"color2" : [ 1.0, 1.0, 1.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"preset" : 				{
					"accentcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "Max6stylish",
				"newobj" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.439216, 0.74902, 0.254902, 1.0 ],
					"elementcolor" : [ 0.522397, 0.541645, 0.600966, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 0.3 ]
				}
,
				"number" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"selectioncolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"led" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
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
					"bgcolor" : [ 0.843137, 0.733333, 0.729412, 1.0 ],
					"selectioncolor" : [ 0.1, 0.1, 0.1, 1.0 ],
					"fontname" : [ "Helvetica" ],
					"accentcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.55, 0.55, 0.55, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "RedTextButtons-1",
				"default" : 				{
					"bgcolor" : [ 0.827321, 0.874747, 0.7195, 1.0 ],
					"selectioncolor" : [ 0.1, 0.1, 0.1, 1.0 ],
					"fontname" : [ "Helvetica" ],
					"accentcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.55, 0.55, 0.55, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "RedTextButtons-1-1",
				"default" : 				{
					"bgcolor" : [ 0.843137, 0.733333, 0.729412, 1.0 ],
					"selectioncolor" : [ 0.1, 0.1, 0.1, 1.0 ],
					"fontname" : [ "Helvetica" ],
					"accentcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.55, 0.55, 0.55, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "RedTextButtons-1-2",
				"default" : 				{
					"bgcolor" : [ 0.843137, 0.733333, 0.729412, 1.0 ],
					"selectioncolor" : [ 0.1, 0.1, 0.1, 1.0 ],
					"fontname" : [ "Helvetica" ],
					"accentcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.55, 0.55, 0.55, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "RedTextButtons-2",
				"default" : 				{
					"bgcolor" : [ 0.843137, 0.733333, 0.729412, 1.0 ],
					"selectioncolor" : [ 0.1, 0.1, 0.1, 1.0 ],
					"fontname" : [ "Helvetica" ],
					"accentcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.55, 0.55, 0.55, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "RedTextButtons-3",
				"default" : 				{
					"bgcolor" : [ 0.843137, 0.733333, 0.729412, 1.0 ],
					"selectioncolor" : [ 0.1, 0.1, 0.1, 1.0 ],
					"fontname" : [ "Helvetica" ],
					"accentcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.55, 0.55, 0.55, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "RedTextButtons-4",
				"default" : 				{
					"bgcolor" : [ 0.843137, 0.733333, 0.729412, 1.0 ],
					"selectioncolor" : [ 0.1, 0.1, 0.1, 1.0 ],
					"fontname" : [ "Helvetica" ],
					"accentcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.55, 0.55, 0.55, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "RedTextButtons-5",
				"default" : 				{
					"bgcolor" : [ 0.843137, 0.733333, 0.729412, 1.0 ],
					"selectioncolor" : [ 0.1, 0.1, 0.1, 1.0 ],
					"fontname" : [ "Helvetica" ],
					"accentcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.55, 0.55, 0.55, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "RedTextButtons-6",
				"default" : 				{
					"bgcolor" : [ 0.843137, 0.733333, 0.729412, 1.0 ],
					"selectioncolor" : [ 0.1, 0.1, 0.1, 1.0 ],
					"fontname" : [ "Helvetica" ],
					"accentcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.55, 0.55, 0.55, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "RedTextButtons-7",
				"default" : 				{
					"bgcolor" : [ 0.827321, 0.874747, 0.7195, 1.0 ],
					"selectioncolor" : [ 0.1, 0.1, 0.1, 1.0 ],
					"fontname" : [ "Helvetica" ],
					"accentcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.55, 0.55, 0.55, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "VioletTextButton",
				"default" : 				{
					"bgcolor" : [ 0.715377, 0.696413, 0.824482, 1.0 ],
					"selectioncolor" : [ 0.1, 0.1, 0.1, 1.0 ],
					"fontname" : [ "Helvetica" ],
					"accentcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.55, 0.55, 0.55, 1.0 ]
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
				"newobj" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.636487, 0.648652, 0.683149, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "default_style-1",
				"newobj" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.636487, 0.648652, 0.683149, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
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
				"newobj" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"message" : 				{
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
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
				"kslider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"gain~" : 				{
					"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
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
					"bgcolor" : [ 0.945827, 0.711942, 0.174445, 0.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
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
