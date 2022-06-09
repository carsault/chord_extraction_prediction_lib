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
		"rect" : [ 34.0, 79.0, 1372.0, 787.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
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
					"fontface" : 0,
					"fontsize" : 13.0,
					"id" : "obj-5",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 575.0, 814.0, 421.0, 94.0 ],
					"presentation" : 1,
					"presentation_linecount" : 18,
					"presentation_rect" : [ 120.629311999999999, 125.500045999999998, 155.0, 268.0 ],
					"text" : "All processed data is present in the MuBu container which must have the script name \"0_memory\". The track \"chords\" contains the chord annotation information as: col:0 = Start date of the section, col:1 = End date of the section; col:3 = Special feature (not to be taken into account), col:4: chord annotation id corresponding to the position in the alphabet of the corresponding chord."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 13.0,
					"id" : "obj-21",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 326.0, 629.0, 421.0, 108.0 ],
					"presentation" : 1,
					"presentation_linecount" : 22,
					"presentation_rect" : [ 105.629311999999999, 110.500045999999998, 155.0, 326.0 ],
					"text" : "Once the audio file is selected, it is loaded into a MuBu container (track audio) which will perform the segmentation (track orig_seg). Then the CQT is performed with the PiPo library (track cqt). The segmentation and the CQT are temporarily saved and processed by python to extract the chords. Finally, the chords labeling is saved in a file and this file is loaded in the MuBu container (track chords). To get the chords out of the MuBu container, send the following message \"track chords get\"."
				}

			}
, 			{
				"box" : 				{
					"coll_data" : 					{
						"count" : 169,
						"data" : [ 							{
								"key" : 0,
								"value" : [ "A#:7" ]
							}
, 							{
								"key" : 1,
								"value" : [ "A#:aug" ]
							}
, 							{
								"key" : 2,
								"value" : [ "A#:dim" ]
							}
, 							{
								"key" : 3,
								"value" : [ "A#:dim7" ]
							}
, 							{
								"key" : 4,
								"value" : [ "A#:hdim7" ]
							}
, 							{
								"key" : 5,
								"value" : [ "A#:maj" ]
							}
, 							{
								"key" : 6,
								"value" : [ "A#:maj6" ]
							}
, 							{
								"key" : 7,
								"value" : [ "A#:maj7" ]
							}
, 							{
								"key" : 8,
								"value" : [ "A#:min" ]
							}
, 							{
								"key" : 9,
								"value" : [ "A#:min6" ]
							}
, 							{
								"key" : 10,
								"value" : [ "A#:min7" ]
							}
, 							{
								"key" : 11,
								"value" : [ "A#:minmaj7" ]
							}
, 							{
								"key" : 12,
								"value" : [ "A#:sus2" ]
							}
, 							{
								"key" : 13,
								"value" : [ "A#:sus4" ]
							}
, 							{
								"key" : 14,
								"value" : [ "A:7" ]
							}
, 							{
								"key" : 15,
								"value" : [ "A:aug" ]
							}
, 							{
								"key" : 16,
								"value" : [ "A:dim" ]
							}
, 							{
								"key" : 17,
								"value" : [ "A:dim7" ]
							}
, 							{
								"key" : 18,
								"value" : [ "A:hdim7" ]
							}
, 							{
								"key" : 19,
								"value" : [ "A:maj" ]
							}
, 							{
								"key" : 20,
								"value" : [ "A:maj6" ]
							}
, 							{
								"key" : 21,
								"value" : [ "A:maj7" ]
							}
, 							{
								"key" : 22,
								"value" : [ "A:min" ]
							}
, 							{
								"key" : 23,
								"value" : [ "A:min6" ]
							}
, 							{
								"key" : 24,
								"value" : [ "A:min7" ]
							}
, 							{
								"key" : 25,
								"value" : [ "A:minmaj7" ]
							}
, 							{
								"key" : 26,
								"value" : [ "A:sus2" ]
							}
, 							{
								"key" : 27,
								"value" : [ "A:sus4" ]
							}
, 							{
								"key" : 28,
								"value" : [ "B:7" ]
							}
, 							{
								"key" : 29,
								"value" : [ "B:aug" ]
							}
, 							{
								"key" : 30,
								"value" : [ "B:dim" ]
							}
, 							{
								"key" : 31,
								"value" : [ "B:dim7" ]
							}
, 							{
								"key" : 32,
								"value" : [ "B:hdim7" ]
							}
, 							{
								"key" : 33,
								"value" : [ "B:maj" ]
							}
, 							{
								"key" : 34,
								"value" : [ "B:maj6" ]
							}
, 							{
								"key" : 35,
								"value" : [ "B:maj7" ]
							}
, 							{
								"key" : 36,
								"value" : [ "B:min" ]
							}
, 							{
								"key" : 37,
								"value" : [ "B:min6" ]
							}
, 							{
								"key" : 38,
								"value" : [ "B:min7" ]
							}
, 							{
								"key" : 39,
								"value" : [ "B:minmaj7" ]
							}
, 							{
								"key" : 40,
								"value" : [ "B:sus2" ]
							}
, 							{
								"key" : 41,
								"value" : [ "B:sus4" ]
							}
, 							{
								"key" : 42,
								"value" : [ "C#:7" ]
							}
, 							{
								"key" : 43,
								"value" : [ "C#:aug" ]
							}
, 							{
								"key" : 44,
								"value" : [ "C#:dim" ]
							}
, 							{
								"key" : 45,
								"value" : [ "C#:dim7" ]
							}
, 							{
								"key" : 46,
								"value" : [ "C#:hdim7" ]
							}
, 							{
								"key" : 47,
								"value" : [ "C#:maj" ]
							}
, 							{
								"key" : 48,
								"value" : [ "C#:maj6" ]
							}
, 							{
								"key" : 49,
								"value" : [ "C#:maj7" ]
							}
, 							{
								"key" : 50,
								"value" : [ "C#:min" ]
							}
, 							{
								"key" : 51,
								"value" : [ "C#:min6" ]
							}
, 							{
								"key" : 52,
								"value" : [ "C#:min7" ]
							}
, 							{
								"key" : 53,
								"value" : [ "C#:minmaj7" ]
							}
, 							{
								"key" : 54,
								"value" : [ "C#:sus2" ]
							}
, 							{
								"key" : 55,
								"value" : [ "C#:sus4" ]
							}
, 							{
								"key" : 56,
								"value" : [ "C:7" ]
							}
, 							{
								"key" : 57,
								"value" : [ "C:aug" ]
							}
, 							{
								"key" : 58,
								"value" : [ "C:dim" ]
							}
, 							{
								"key" : 59,
								"value" : [ "C:dim7" ]
							}
, 							{
								"key" : 60,
								"value" : [ "C:hdim7" ]
							}
, 							{
								"key" : 61,
								"value" : [ "C:maj" ]
							}
, 							{
								"key" : 62,
								"value" : [ "C:maj6" ]
							}
, 							{
								"key" : 63,
								"value" : [ "C:maj7" ]
							}
, 							{
								"key" : 64,
								"value" : [ "C:min" ]
							}
, 							{
								"key" : 65,
								"value" : [ "C:min6" ]
							}
, 							{
								"key" : 66,
								"value" : [ "C:min7" ]
							}
, 							{
								"key" : 67,
								"value" : [ "C:minmaj7" ]
							}
, 							{
								"key" : 68,
								"value" : [ "C:sus2" ]
							}
, 							{
								"key" : 69,
								"value" : [ "C:sus4" ]
							}
, 							{
								"key" : 70,
								"value" : [ "D#:7" ]
							}
, 							{
								"key" : 71,
								"value" : [ "D#:aug" ]
							}
, 							{
								"key" : 72,
								"value" : [ "D#:dim" ]
							}
, 							{
								"key" : 73,
								"value" : [ "D#:dim7" ]
							}
, 							{
								"key" : 74,
								"value" : [ "D#:hdim7" ]
							}
, 							{
								"key" : 75,
								"value" : [ "D#:maj" ]
							}
, 							{
								"key" : 76,
								"value" : [ "D#:maj6" ]
							}
, 							{
								"key" : 77,
								"value" : [ "D#:maj7" ]
							}
, 							{
								"key" : 78,
								"value" : [ "D#:min" ]
							}
, 							{
								"key" : 79,
								"value" : [ "D#:min6" ]
							}
, 							{
								"key" : 80,
								"value" : [ "D#:min7" ]
							}
, 							{
								"key" : 81,
								"value" : [ "D#:minmaj7" ]
							}
, 							{
								"key" : 82,
								"value" : [ "D#:sus2" ]
							}
, 							{
								"key" : 83,
								"value" : [ "D#:sus4" ]
							}
, 							{
								"key" : 84,
								"value" : [ "D:7" ]
							}
, 							{
								"key" : 85,
								"value" : [ "D:aug" ]
							}
, 							{
								"key" : 86,
								"value" : [ "D:dim" ]
							}
, 							{
								"key" : 87,
								"value" : [ "D:dim7" ]
							}
, 							{
								"key" : 88,
								"value" : [ "D:hdim7" ]
							}
, 							{
								"key" : 89,
								"value" : [ "D:maj" ]
							}
, 							{
								"key" : 90,
								"value" : [ "D:maj6" ]
							}
, 							{
								"key" : 91,
								"value" : [ "D:maj7" ]
							}
, 							{
								"key" : 92,
								"value" : [ "D:min" ]
							}
, 							{
								"key" : 93,
								"value" : [ "D:min6" ]
							}
, 							{
								"key" : 94,
								"value" : [ "D:min7" ]
							}
, 							{
								"key" : 95,
								"value" : [ "D:minmaj7" ]
							}
, 							{
								"key" : 96,
								"value" : [ "D:sus2" ]
							}
, 							{
								"key" : 97,
								"value" : [ "D:sus4" ]
							}
, 							{
								"key" : 98,
								"value" : [ "E:7" ]
							}
, 							{
								"key" : 99,
								"value" : [ "E:aug" ]
							}
, 							{
								"key" : 100,
								"value" : [ "E:dim" ]
							}
, 							{
								"key" : 101,
								"value" : [ "E:dim7" ]
							}
, 							{
								"key" : 102,
								"value" : [ "E:hdim7" ]
							}
, 							{
								"key" : 103,
								"value" : [ "E:maj" ]
							}
, 							{
								"key" : 104,
								"value" : [ "E:maj6" ]
							}
, 							{
								"key" : 105,
								"value" : [ "E:maj7" ]
							}
, 							{
								"key" : 106,
								"value" : [ "E:min" ]
							}
, 							{
								"key" : 107,
								"value" : [ "E:min6" ]
							}
, 							{
								"key" : 108,
								"value" : [ "E:min7" ]
							}
, 							{
								"key" : 109,
								"value" : [ "E:minmaj7" ]
							}
, 							{
								"key" : 110,
								"value" : [ "E:sus2" ]
							}
, 							{
								"key" : 111,
								"value" : [ "E:sus4" ]
							}
, 							{
								"key" : 112,
								"value" : [ "F#:7" ]
							}
, 							{
								"key" : 113,
								"value" : [ "F#:aug" ]
							}
, 							{
								"key" : 114,
								"value" : [ "F#:dim" ]
							}
, 							{
								"key" : 115,
								"value" : [ "F#:dim7" ]
							}
, 							{
								"key" : 116,
								"value" : [ "F#:hdim7" ]
							}
, 							{
								"key" : 117,
								"value" : [ "F#:maj" ]
							}
, 							{
								"key" : 118,
								"value" : [ "F#:maj6" ]
							}
, 							{
								"key" : 119,
								"value" : [ "F#:maj7" ]
							}
, 							{
								"key" : 120,
								"value" : [ "F#:min" ]
							}
, 							{
								"key" : 121,
								"value" : [ "F#:min6" ]
							}
, 							{
								"key" : 122,
								"value" : [ "F#:min7" ]
							}
, 							{
								"key" : 123,
								"value" : [ "F#:minmaj7" ]
							}
, 							{
								"key" : 124,
								"value" : [ "F#:sus2" ]
							}
, 							{
								"key" : 125,
								"value" : [ "F#:sus4" ]
							}
, 							{
								"key" : 126,
								"value" : [ "F:7" ]
							}
, 							{
								"key" : 127,
								"value" : [ "F:aug" ]
							}
, 							{
								"key" : 128,
								"value" : [ "F:dim" ]
							}
, 							{
								"key" : 129,
								"value" : [ "F:dim7" ]
							}
, 							{
								"key" : 130,
								"value" : [ "F:hdim7" ]
							}
, 							{
								"key" : 131,
								"value" : [ "F:maj" ]
							}
, 							{
								"key" : 132,
								"value" : [ "F:maj6" ]
							}
, 							{
								"key" : 133,
								"value" : [ "F:maj7" ]
							}
, 							{
								"key" : 134,
								"value" : [ "F:min" ]
							}
, 							{
								"key" : 135,
								"value" : [ "F:min6" ]
							}
, 							{
								"key" : 136,
								"value" : [ "F:min7" ]
							}
, 							{
								"key" : 137,
								"value" : [ "F:minmaj7" ]
							}
, 							{
								"key" : 138,
								"value" : [ "F:sus2" ]
							}
, 							{
								"key" : 139,
								"value" : [ "F:sus4" ]
							}
, 							{
								"key" : 140,
								"value" : [ "G#:7" ]
							}
, 							{
								"key" : 141,
								"value" : [ "G#:aug" ]
							}
, 							{
								"key" : 142,
								"value" : [ "G#:dim" ]
							}
, 							{
								"key" : 143,
								"value" : [ "G#:dim7" ]
							}
, 							{
								"key" : 144,
								"value" : [ "G#:hdim7" ]
							}
, 							{
								"key" : 145,
								"value" : [ "G#:maj" ]
							}
, 							{
								"key" : 146,
								"value" : [ "G#:maj6" ]
							}
, 							{
								"key" : 147,
								"value" : [ "G#:maj7" ]
							}
, 							{
								"key" : 148,
								"value" : [ "G#:min" ]
							}
, 							{
								"key" : 149,
								"value" : [ "G#:min6" ]
							}
, 							{
								"key" : 150,
								"value" : [ "G#:min7" ]
							}
, 							{
								"key" : 151,
								"value" : [ "G#:minmaj7" ]
							}
, 							{
								"key" : 152,
								"value" : [ "G#:sus2" ]
							}
, 							{
								"key" : 153,
								"value" : [ "G#:sus4" ]
							}
, 							{
								"key" : 154,
								"value" : [ "G:7" ]
							}
, 							{
								"key" : 155,
								"value" : [ "G:aug" ]
							}
, 							{
								"key" : 156,
								"value" : [ "G:dim" ]
							}
, 							{
								"key" : 157,
								"value" : [ "G:dim7" ]
							}
, 							{
								"key" : 158,
								"value" : [ "G:hdim7" ]
							}
, 							{
								"key" : 159,
								"value" : [ "G:maj" ]
							}
, 							{
								"key" : 160,
								"value" : [ "G:maj6" ]
							}
, 							{
								"key" : 161,
								"value" : [ "G:maj7" ]
							}
, 							{
								"key" : 162,
								"value" : [ "G:min" ]
							}
, 							{
								"key" : 163,
								"value" : [ "G:min6" ]
							}
, 							{
								"key" : 164,
								"value" : [ "G:min7" ]
							}
, 							{
								"key" : 165,
								"value" : [ "G:minmaj7" ]
							}
, 							{
								"key" : 166,
								"value" : [ "G:sus2" ]
							}
, 							{
								"key" : 167,
								"value" : [ "G:sus4" ]
							}
, 							{
								"key" : 168,
								"value" : [ "N" ]
							}
 ]
					}
,
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 544.0, 400.0, 50.5, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1
					}
,
					"text" : "coll a5"
				}

			}
, 			{
				"box" : 				{
					"coll_data" : 					{
						"count" : 85,
						"data" : [ 							{
								"key" : 0,
								"value" : [ "A#:7" ]
							}
, 							{
								"key" : 1,
								"value" : [ "A#:dim" ]
							}
, 							{
								"key" : 2,
								"value" : [ "A#:dim7" ]
							}
, 							{
								"key" : 3,
								"value" : [ "A#:maj" ]
							}
, 							{
								"key" : 4,
								"value" : [ "A#:maj7" ]
							}
, 							{
								"key" : 5,
								"value" : [ "A#:min" ]
							}
, 							{
								"key" : 6,
								"value" : [ "A#:min7" ]
							}
, 							{
								"key" : 7,
								"value" : [ "A:7" ]
							}
, 							{
								"key" : 8,
								"value" : [ "A:dim" ]
							}
, 							{
								"key" : 9,
								"value" : [ "A:dim7" ]
							}
, 							{
								"key" : 10,
								"value" : [ "A:maj" ]
							}
, 							{
								"key" : 11,
								"value" : [ "A:maj7" ]
							}
, 							{
								"key" : 12,
								"value" : [ "A:min" ]
							}
, 							{
								"key" : 13,
								"value" : [ "A:min7" ]
							}
, 							{
								"key" : 14,
								"value" : [ "B:7" ]
							}
, 							{
								"key" : 15,
								"value" : [ "B:dim" ]
							}
, 							{
								"key" : 16,
								"value" : [ "B:dim7" ]
							}
, 							{
								"key" : 17,
								"value" : [ "B:maj" ]
							}
, 							{
								"key" : 18,
								"value" : [ "B:maj7" ]
							}
, 							{
								"key" : 19,
								"value" : [ "B:min" ]
							}
, 							{
								"key" : 20,
								"value" : [ "B:min7" ]
							}
, 							{
								"key" : 21,
								"value" : [ "C#:7" ]
							}
, 							{
								"key" : 22,
								"value" : [ "C#:dim" ]
							}
, 							{
								"key" : 23,
								"value" : [ "C#:dim7" ]
							}
, 							{
								"key" : 24,
								"value" : [ "C#:maj" ]
							}
, 							{
								"key" : 25,
								"value" : [ "C#:maj7" ]
							}
, 							{
								"key" : 26,
								"value" : [ "C#:min" ]
							}
, 							{
								"key" : 27,
								"value" : [ "C#:min7" ]
							}
, 							{
								"key" : 28,
								"value" : [ "C:7" ]
							}
, 							{
								"key" : 29,
								"value" : [ "C:dim" ]
							}
, 							{
								"key" : 30,
								"value" : [ "C:dim7" ]
							}
, 							{
								"key" : 31,
								"value" : [ "C:maj" ]
							}
, 							{
								"key" : 32,
								"value" : [ "C:maj7" ]
							}
, 							{
								"key" : 33,
								"value" : [ "C:min" ]
							}
, 							{
								"key" : 34,
								"value" : [ "C:min7" ]
							}
, 							{
								"key" : 35,
								"value" : [ "D#:7" ]
							}
, 							{
								"key" : 36,
								"value" : [ "D#:dim" ]
							}
, 							{
								"key" : 37,
								"value" : [ "D#:dim7" ]
							}
, 							{
								"key" : 38,
								"value" : [ "D#:maj" ]
							}
, 							{
								"key" : 39,
								"value" : [ "D#:maj7" ]
							}
, 							{
								"key" : 40,
								"value" : [ "D#:min" ]
							}
, 							{
								"key" : 41,
								"value" : [ "D#:min7" ]
							}
, 							{
								"key" : 42,
								"value" : [ "D:7" ]
							}
, 							{
								"key" : 43,
								"value" : [ "D:dim" ]
							}
, 							{
								"key" : 44,
								"value" : [ "D:dim7" ]
							}
, 							{
								"key" : 45,
								"value" : [ "D:maj" ]
							}
, 							{
								"key" : 46,
								"value" : [ "D:maj7" ]
							}
, 							{
								"key" : 47,
								"value" : [ "D:min" ]
							}
, 							{
								"key" : 48,
								"value" : [ "D:min7" ]
							}
, 							{
								"key" : 49,
								"value" : [ "E:7" ]
							}
, 							{
								"key" : 50,
								"value" : [ "E:dim" ]
							}
, 							{
								"key" : 51,
								"value" : [ "E:dim7" ]
							}
, 							{
								"key" : 52,
								"value" : [ "E:maj" ]
							}
, 							{
								"key" : 53,
								"value" : [ "E:maj7" ]
							}
, 							{
								"key" : 54,
								"value" : [ "E:min" ]
							}
, 							{
								"key" : 55,
								"value" : [ "E:min7" ]
							}
, 							{
								"key" : 56,
								"value" : [ "F#:7" ]
							}
, 							{
								"key" : 57,
								"value" : [ "F#:dim" ]
							}
, 							{
								"key" : 58,
								"value" : [ "F#:dim7" ]
							}
, 							{
								"key" : 59,
								"value" : [ "F#:maj" ]
							}
, 							{
								"key" : 60,
								"value" : [ "F#:maj7" ]
							}
, 							{
								"key" : 61,
								"value" : [ "F#:min" ]
							}
, 							{
								"key" : 62,
								"value" : [ "F#:min7" ]
							}
, 							{
								"key" : 63,
								"value" : [ "F:7" ]
							}
, 							{
								"key" : 64,
								"value" : [ "F:dim" ]
							}
, 							{
								"key" : 65,
								"value" : [ "F:dim7" ]
							}
, 							{
								"key" : 66,
								"value" : [ "F:maj" ]
							}
, 							{
								"key" : 67,
								"value" : [ "F:maj7" ]
							}
, 							{
								"key" : 68,
								"value" : [ "F:min" ]
							}
, 							{
								"key" : 69,
								"value" : [ "F:min7" ]
							}
, 							{
								"key" : 70,
								"value" : [ "G#:7" ]
							}
, 							{
								"key" : 71,
								"value" : [ "G#:dim" ]
							}
, 							{
								"key" : 72,
								"value" : [ "G#:dim7" ]
							}
, 							{
								"key" : 73,
								"value" : [ "G#:maj" ]
							}
, 							{
								"key" : 74,
								"value" : [ "G#:maj7" ]
							}
, 							{
								"key" : 75,
								"value" : [ "G#:min" ]
							}
, 							{
								"key" : 76,
								"value" : [ "G#:min7" ]
							}
, 							{
								"key" : 77,
								"value" : [ "G:7" ]
							}
, 							{
								"key" : 78,
								"value" : [ "G:dim" ]
							}
, 							{
								"key" : 79,
								"value" : [ "G:dim7" ]
							}
, 							{
								"key" : 80,
								"value" : [ "G:maj" ]
							}
, 							{
								"key" : 81,
								"value" : [ "G:maj7" ]
							}
, 							{
								"key" : 82,
								"value" : [ "G:min" ]
							}
, 							{
								"key" : 83,
								"value" : [ "G:min7" ]
							}
, 							{
								"key" : 84,
								"value" : [ "N" ]
							}
 ]
					}
,
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 481.0, 400.0, 50.5, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1
					}
,
					"text" : "coll a2"
				}

			}
, 			{
				"box" : 				{
					"coll_data" : 					{
						"count" : 25,
						"data" : [ 							{
								"key" : 0,
								"value" : [ "A#:maj" ]
							}
, 							{
								"key" : 1,
								"value" : [ "A#:min" ]
							}
, 							{
								"key" : 2,
								"value" : [ "A:maj" ]
							}
, 							{
								"key" : 3,
								"value" : [ "A:min" ]
							}
, 							{
								"key" : 4,
								"value" : [ "B:maj" ]
							}
, 							{
								"key" : 5,
								"value" : [ "B:min" ]
							}
, 							{
								"key" : 6,
								"value" : [ "C#:maj" ]
							}
, 							{
								"key" : 7,
								"value" : [ "C#:min" ]
							}
, 							{
								"key" : 8,
								"value" : [ "C:maj" ]
							}
, 							{
								"key" : 9,
								"value" : [ "C:min" ]
							}
, 							{
								"key" : 10,
								"value" : [ "D#:maj" ]
							}
, 							{
								"key" : 11,
								"value" : [ "D#:min" ]
							}
, 							{
								"key" : 12,
								"value" : [ "D:maj" ]
							}
, 							{
								"key" : 13,
								"value" : [ "D:min" ]
							}
, 							{
								"key" : 14,
								"value" : [ "E:maj" ]
							}
, 							{
								"key" : 15,
								"value" : [ "E:min" ]
							}
, 							{
								"key" : 16,
								"value" : [ "F#:maj" ]
							}
, 							{
								"key" : 17,
								"value" : [ "F#:min" ]
							}
, 							{
								"key" : 18,
								"value" : [ "F:maj" ]
							}
, 							{
								"key" : 19,
								"value" : [ "F:min" ]
							}
, 							{
								"key" : 20,
								"value" : [ "G#:maj" ]
							}
, 							{
								"key" : 21,
								"value" : [ "G#:min" ]
							}
, 							{
								"key" : 22,
								"value" : [ "G:maj" ]
							}
, 							{
								"key" : 23,
								"value" : [ "G:min" ]
							}
, 							{
								"key" : 24,
								"value" : [ "N" ]
							}
 ]
					}
,
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 417.0, 400.0, 50.5, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1
					}
,
					"text" : "coll a0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 186.800000000000011, 352.0, 94.0, 22.0 ],
					"text" : "a5_ace_pytorch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 166.0, 327.0, 94.0, 22.0 ],
					"text" : "a2_ace_pytorch"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 13.0,
					"id" : "obj-4",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 326.0, 569.0, 518.0, 36.0 ],
					"presentation" : 1,
					"presentation_linecount" : 7,
					"presentation_rect" : [ 60.629311999999999, 65.500045999999998, 157.0, 108.0 ],
					"text" : "The arguments given to the patch are the parameters of the OSC server. Indeed, the chord extraction is performed using a python framework."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 274.5, 471.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 44.0, 633.0, 47.0, 22.0 ],
					"text" : "clearall"
				}

			}
, 			{
				"box" : 				{
					"alignviewbounds" : 0,
					"autobounds" : 2,
					"autorefreshrate" : 0,
					"autoupdate" : 120.0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bufferchooser_bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bufferchooser_fgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bufferchooser_position" : 1,
					"bufferchooser_shape" : "buttons",
					"bufferchooser_size" : 15,
					"bufferchooser_visible" : 1,
					"cursor_circleedgecolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"cursor_circlefillcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"cursor_circlefilled" : 1,
					"cursor_circleheight" : 3.0,
					"cursor_circlewidth" : 3.0,
					"cursor_color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"cursor_followmouse" : 0,
					"cursor_nearest" : 0,
					"cursor_nearestcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"cursor_noringoffset" : 0,
					"cursor_position" : -1.0,
					"cursor_shape" : "bar",
					"cursor_size" : 3,
					"cursor_sizeunit" : 0,
					"cursor_visible" : 1,
					"domain_bounds" : [ 0.0, 110159.977324263032642 ],
					"domainruler_bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"domainruler_fgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"domainruler_grid" : 0,
					"domainruler_position" : 0,
					"domainruler_size" : 15,
					"domainruler_unit" : 0,
					"domainruler_visible" : 0,
					"domainscrollbar_color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"domainscrollbar_size" : 10,
					"domainscrollbar_visible" : 1,
					"embed" : 0,
					"externalfiles" : 1,
					"freeze" : 0,
					"id" : "obj-130",
					"layout" : 0,
					"maxclass" : "imubu",
					"mousewheelscroll" : 0,
					"name" : "0_memory",
					"numinlets" : 1,
					"numoutlets" : 1,
					"opacity" : 0.0,
					"opacityprogressive" : 0,
					"orientation" : 0,
					"outlettype" : [ "" ],
					"outputkeys" : 0,
					"outputmouse" : 0,
					"outputselection" : 0,
					"outputtimeselection" : 0,
					"outputvalues" : 1,
					"outputviewname" : 0,
					"parameter_enable" : 0,
					"patching_rect" : [ 29.5, 755.0, 524.245604999999955, 234.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 175.629302999999993, -2.999954, 286.245605000000012, 188.5 ],
					"rangeruler_grid" : 0,
					"rangeruler_size" : 35,
					"rangeruler_visible" : 0,
					"region_bounds" : [ 0.0, 0.0 ],
					"region_color" : [ 0.8, 0.7, 0.7, 1.0 ],
					"region_visible" : 1,
					"resamplefiles" : 0,
					"snaprate" : 1000.0,
					"split_color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"split_size" : 2,
					"split_visible" : 1,
					"tabs_position" : 0,
					"tabs_size" : 20,
					"tabs_visible" : 1,
					"tool" : "edit",
					"toolbar_bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"toolbar_position" : 1,
					"toolbar_size" : 30,
					"toolbar_visible" : 1,
					"useplaceholders" : 1,
					"varname" : "0_memory",
					"verbose" : 1,
					"windresize" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 29.5, 950.0, 32.0, 22.0 ],
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 262.5, 638.799744000000601, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 69.599999999999994, 677.0, 94.0, 22.0 ],
					"text" : "track chords get"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 13.0,
					"id" : "obj-7",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 303.0, 278.5, 396.0, 108.0 ],
					"presentation" : 1,
					"presentation_linecount" : 17,
					"presentation_rect" : [ 90.629311999999999, 95.500045999999998, 161.0, 253.0 ],
					"text" : "This argument allows to select the model via a dialog window or with the path of the chosen model. This patch works with keras or pytorch models. The chord alphabet must be integrated in the name of the model (ex: my_model_alphabet.extension). We propose three pre-trained networks corresponding to three chord alphabets (a0, a2 and a5). The chord dictionaries are detailed coll a0, coll a2 and coll a5."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 152.0, 303.0, 94.0, 22.0 ],
					"text" : "a0_ace_pytorch"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 13.0,
					"id" : "obj-20",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 322.0, 458.0, 419.0, 50.0 ],
					"presentation" : 1,
					"presentation_linecount" : 7,
					"presentation_rect" : [ 90.629311999999999, 95.500045999999998, 149.0, 108.0 ],
					"text" : "The last argument accepts two values: 0 & 1. If it is 0, the MuBu segmentation is used, if it is 1, it opens a diolag window to select the annotation file."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 13.0,
					"id" : "obj-11",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 78.0, 174.000000000000028, 519.0, 36.0 ],
					"presentation" : 1,
					"presentation_linecount" : 7,
					"presentation_rect" : [ 45.629311999999999, 50.500045999999998, 151.0, 108.0 ],
					"text" : "The first argument can accept two types of input. If it is a bang, it opens a dialog window to select your audio file. Otherwise it can receive the path to your file."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 13.0,
					"id" : "obj-9",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 12.962645999999999, 90.866699000000011, 503.0, 65.0 ],
					"presentation" : 1,
					"presentation_linecount" : 15,
					"presentation_rect" : [ 45.629311999999999, 50.500045999999998, 155.0, 224.0 ],
					"text" : "Perform chord extraction on an audio file using pre-trained ACE models based on machine learning. The segmentation can be performed using the MuBu library (from loundness) or from a .txt file that follows a specific format. The result will be an annotated chord file, saved in the same directory as the input audio file.",
					"textcolor" : [ 0.568627450980392, 0.56078431372549, 0.56078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 13.0,
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 12.962645999999999, 62.866699000000011, 500.0, 21.0 ],
					"presentation" : 1,
					"presentation_linecount" : 4,
					"presentation_rect" : [ 30.629311999999999, 35.500045999999998, 140.0, 65.0 ],
					"text" : "Extract chords from audio file with or without a segmentation file"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 26.0,
					"id" : "obj-164",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 12.962645999999999, 14.866699000000011, 635.0, 36.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 15.629312000000001, 20.500046000000001, 293.0, 65.0 ],
					"text" : "Automatic Chord Extractor"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 29.5, 186.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 29.5, 583.0, 264.0, 22.0 ],
					"text" : "automatic_chord_extractor 127.0.0.1 9050 9003"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-130", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 2 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-130", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-130", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-130", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"source" : [ "obj-6", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "automatic_chord_extractor.maxpat",
				"bootpath" : "~/Dropbox/work/code/git_hub/chord_extraction_prediction_lib/Max_library/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "Launch_ACE.maxpat",
				"bootpath" : "~/Dropbox/work/code/git_hub/chord_extraction_prediction_lib/Max_library/patchers/ACE_objects",
				"patcherrelativepath" : "./ACE_objects",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "Launch_server_script_ACE.maxpat",
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
				"name" : "ace_model_select.maxpat",
				"bootpath" : "~/Dropbox/work/code/git_hub/chord_extraction_prediction_lib/Max_library/patchers/ACE_objects",
				"patcherrelativepath" : "./ACE_objects",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "shell.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "mubu.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "mubu.mxo",
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
					"elementcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"bgcolor" : [ 0.538741, 0.764449, 0.877768, 1.0 ],
					"selectioncolor" : [ 0.1, 0.1, 0.1, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : [ "Helvetica" ],
					"accentcolor" : [ 0.25, 0.25, 0.25, 1.0 ]
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
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"bgcolor" : [ 0.904179, 0.895477, 0.842975, 0.56 ],
					"selectioncolor" : [ 0.720698, 0.16723, 0.080014, 1.0 ],
					"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
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
					"fontname" : [ "Open Sans Semibold" ],
					"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "MAX7-MySTYLE",
				"preset" : 				{
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"accentcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"tab" : 				{
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"clearcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.0, 0.533333, 0.168627, 1.0 ]
				}
,
				"toggle" : 				{
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
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
				"button" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
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
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "Max6stylish",
				"toggle" : 				{
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 0.3 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
				}
,
				"led" : 				{
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
				}
,
				"slider" : 				{
					"elementcolor" : [ 0.522397, 0.541645, 0.600966, 1.0 ],
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.439216, 0.74902, 0.254902, 1.0 ]
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
				"button" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
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
					"elementcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"bgcolor" : [ 0.843137, 0.733333, 0.729412, 1.0 ],
					"selectioncolor" : [ 0.1, 0.1, 0.1, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : [ "Helvetica" ],
					"accentcolor" : [ 0.25, 0.25, 0.25, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "RedTextButtons-1",
				"default" : 				{
					"elementcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"bgcolor" : [ 0.827321, 0.874747, 0.7195, 1.0 ],
					"selectioncolor" : [ 0.1, 0.1, 0.1, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : [ "Helvetica" ],
					"accentcolor" : [ 0.25, 0.25, 0.25, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "RedTextButtons-1-1",
				"default" : 				{
					"elementcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"bgcolor" : [ 0.843137, 0.733333, 0.729412, 1.0 ],
					"selectioncolor" : [ 0.1, 0.1, 0.1, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : [ "Helvetica" ],
					"accentcolor" : [ 0.25, 0.25, 0.25, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "RedTextButtons-1-2",
				"default" : 				{
					"elementcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"bgcolor" : [ 0.843137, 0.733333, 0.729412, 1.0 ],
					"selectioncolor" : [ 0.1, 0.1, 0.1, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : [ "Helvetica" ],
					"accentcolor" : [ 0.25, 0.25, 0.25, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "RedTextButtons-2",
				"default" : 				{
					"elementcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"bgcolor" : [ 0.843137, 0.733333, 0.729412, 1.0 ],
					"selectioncolor" : [ 0.1, 0.1, 0.1, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : [ "Helvetica" ],
					"accentcolor" : [ 0.25, 0.25, 0.25, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "RedTextButtons-3",
				"default" : 				{
					"elementcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"bgcolor" : [ 0.843137, 0.733333, 0.729412, 1.0 ],
					"selectioncolor" : [ 0.1, 0.1, 0.1, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : [ "Helvetica" ],
					"accentcolor" : [ 0.25, 0.25, 0.25, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "RedTextButtons-4",
				"default" : 				{
					"elementcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"bgcolor" : [ 0.843137, 0.733333, 0.729412, 1.0 ],
					"selectioncolor" : [ 0.1, 0.1, 0.1, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : [ "Helvetica" ],
					"accentcolor" : [ 0.25, 0.25, 0.25, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "RedTextButtons-5",
				"default" : 				{
					"elementcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"bgcolor" : [ 0.843137, 0.733333, 0.729412, 1.0 ],
					"selectioncolor" : [ 0.1, 0.1, 0.1, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : [ "Helvetica" ],
					"accentcolor" : [ 0.25, 0.25, 0.25, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "RedTextButtons-6",
				"default" : 				{
					"elementcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"bgcolor" : [ 0.843137, 0.733333, 0.729412, 1.0 ],
					"selectioncolor" : [ 0.1, 0.1, 0.1, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : [ "Helvetica" ],
					"accentcolor" : [ 0.25, 0.25, 0.25, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "RedTextButtons-7",
				"default" : 				{
					"elementcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"bgcolor" : [ 0.827321, 0.874747, 0.7195, 1.0 ],
					"selectioncolor" : [ 0.1, 0.1, 0.1, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : [ "Helvetica" ],
					"accentcolor" : [ 0.25, 0.25, 0.25, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "VioletTextButton",
				"default" : 				{
					"elementcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"bgcolor" : [ 0.715377, 0.696413, 0.824482, 1.0 ],
					"selectioncolor" : [ 0.1, 0.1, 0.1, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : [ "Helvetica" ],
					"accentcolor" : [ 0.25, 0.25, 0.25, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "dUG Yello 01-1",
				"newobj" : 				{
					"fontface" : [ 1 ],
					"bgcolor" : [ 1.0, 0.941176, 0.803922, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : [ 10.0 ]
				}
,
				"message" : 				{
					"fontface" : [ 1 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : [ 10.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.94902, 0.992157, 1.0, 1.0 ],
						"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"default" : 				{
					"fontface" : [ 1 ],
					"bgcolor" : [ 1.0, 0.941176, 0.803922, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : [ 10.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.94902, 0.992157, 1.0, 1.0 ],
						"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"toggle" : 				{
					"bgcolor" : [ 1.0, 0.941176, 0.803922, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 1.0, 0.941176, 0.803922, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "dark-night-patch",
				"default" : 				{
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
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
					"accentcolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "default_style",
				"toggle" : 				{
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"bgcolor" : [ 0.636487, 0.648652, 0.683149, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
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
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "default_style-1",
				"toggle" : 				{
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"bgcolor" : [ 0.636487, 0.648652, 0.683149, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
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
					"fontsize" : [ 10.0 ],
					"fontname" : [ "Arial Bold" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "master_style",
				"ezadc~" : 				{
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"toggle" : 				{
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"ezdac~" : 				{
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"kslider" : 				{
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"gain~" : 				{
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 1.0, 0.861448, 0.16921, 1.0 ]
				}
,
				"slider" : 				{
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ]
				}
,
				"button" : 				{
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"newobj" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
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
					"fontsize" : [ 12.059008 ],
					"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjYellow-2",
				"default" : 				{
					"fontsize" : [ 12.059008 ],
					"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjYellow-3",
				"default" : 				{
					"fontsize" : [ 12.059008 ],
					"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ]
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
