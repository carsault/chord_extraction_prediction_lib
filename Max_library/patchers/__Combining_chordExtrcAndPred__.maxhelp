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
					"id" : "obj-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 348.583333333333314, 1083.0, 518.0, 21.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 120.629311999999999, 125.500045999999998, 152.0, 50.0 ],
					"text" : "As output we obtain a predicted chord sequence for each beat."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 38.73333333333332, 1083.0, 258.0, 22.0 ],
					"text" : "N N N N N N N N"
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
					"patching_rect" : [ 555.0, 344.0, 50.5, 22.0 ],
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
					"patching_rect" : [ 492.0, 344.0, 50.5, 22.0 ],
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
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 428.0, 344.0, 50.5, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1
					}
,
					"text" : "coll a0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 128.73333333333332, 520.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 79.0, 779.0, 787.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-8",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 302.0, 132.5, 101.0, 22.0 ],
									"text" : "N N N N N N N N"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 146.0, 271.5, 71.5, 22.0 ],
									"text" : "zl rev"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-116",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 146.0, 328.5, 238.0, 22.0 ],
									"text" : "N N N N N N N N"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-113",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 146.0, 225.5, 71.5, 22.0 ],
									"text" : "t s"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-103",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 146.0, 179.5, 120.0, 22.0 ],
									"text" : "zl 8 join"
								}

							}
, 							{
								"box" : 								{
									"comment" : "Reset extracted chord sequence",
									"id" : "obj-4",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 302.0, 69.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "Extracted chord sequence",
									"id" : "obj-2",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 146.0, 394.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "Beat-wise Chord",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 146.0, 69.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-103", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 0 ],
									"source" : [ "obj-103", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-103", 1 ],
									"order" : 0,
									"source" : [ "obj-113", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"order" : 1,
									"source" : [ "obj-113", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-116", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-116", 1 ],
									"order" : 0,
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-116", 0 ],
									"order" : 1,
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-103", 1 ],
									"order" : 1,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-116", 1 ],
									"order" : 0,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-116", 0 ],
									"order" : 2,
									"source" : [ "obj-8", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "AudioStatus_Menu",
								"default" : 								{
									"bgfillcolor" : 									{
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
, 							{
								"name" : "BlueTextButtons",
								"default" : 								{
									"bgcolor" : [ 0.666206, 0.782298, 0.817138, 1.0 ]
								}
,
								"parentstyle" : "RedTextButtons",
								"multi" : 0
							}
, 							{
								"name" : "BlueTextButtons-1",
								"default" : 								{
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
, 							{
								"name" : "GreenTextButtons",
								"parentstyle" : "RedTextButtons",
								"multi" : 0
							}
, 							{
								"name" : "Luca",
								"default" : 								{
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"bgcolor" : [ 0.904179, 0.895477, 0.842975, 0.56 ],
									"selectioncolor" : [ 0.720698, 0.16723, 0.080014, 1.0 ],
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"bgfillcolor" : 									{
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
, 							{
								"name" : "MAX7-MySTYLE",
								"preset" : 								{
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
									"accentcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"tab" : 								{
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"clearcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"toggle" : 								{
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
								}
,
								"number" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"newobj" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"umenu" : 								{
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
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
, 							{
								"name" : "Max6stylish",
								"toggle" : 								{
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 0.3 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
								}
,
								"led" : 								{
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
								}
,
								"slider" : 								{
									"elementcolor" : [ 0.522397, 0.541645, 0.600966, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.439216, 0.74902, 0.254902, 1.0 ]
								}
,
								"number" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"selectioncolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"newobj" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "Max7style",
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "RedTextButtons",
								"default" : 								{
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
, 							{
								"name" : "RedTextButtons-1",
								"default" : 								{
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
, 							{
								"name" : "RedTextButtons-1-1",
								"default" : 								{
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
, 							{
								"name" : "RedTextButtons-1-2",
								"default" : 								{
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
, 							{
								"name" : "RedTextButtons-2",
								"default" : 								{
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
, 							{
								"name" : "RedTextButtons-3",
								"default" : 								{
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
, 							{
								"name" : "RedTextButtons-4",
								"default" : 								{
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
, 							{
								"name" : "RedTextButtons-5",
								"default" : 								{
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
, 							{
								"name" : "RedTextButtons-6",
								"default" : 								{
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
, 							{
								"name" : "RedTextButtons-7",
								"default" : 								{
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
, 							{
								"name" : "VioletTextButton",
								"default" : 								{
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
, 							{
								"name" : "dark-night-patch",
								"default" : 								{
									"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
									"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.898039 ],
									"bgfillcolor" : 									{
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
, 							{
								"name" : "default_style",
								"toggle" : 								{
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"bgcolor" : [ 0.636487, 0.648652, 0.683149, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"newobj" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "default_style-1",
								"toggle" : 								{
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"bgcolor" : [ 0.636487, 0.648652, 0.683149, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"newobj" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "jpatcher001",
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "ksliderWhite",
								"default" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style",
								"ezadc~" : 								{
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"ezdac~" : 								{
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"kslider" : 								{
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"gain~" : 								{
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ]
								}
,
								"slider" : 								{
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ]
								}
,
								"button" : 								{
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"newobj" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"message" : 								{
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
, 							{
								"name" : "maty@multislider001",
								"parentstyle" : "multislider001",
								"multi" : 0
							}
, 							{
								"name" : "maty_jpatcher01",
								"default" : 								{
									"fontname" : [ "Helvetica Neue Thin" ]
								}
,
								"parentstyle" : "jpatcher001",
								"multi" : 0
							}
, 							{
								"name" : "maty_multislider01",
								"parentstyle" : "multislider001",
								"multi" : 0
							}
, 							{
								"name" : "multi001",
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "multislider001",
								"default" : 								{
									"bgcolor" : [ 0.945827, 0.711942, 0.174445, 0.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBlue-1",
								"default" : 								{
									"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBlue-2",
								"default" : 								{
									"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBlue-3",
								"default" : 								{
									"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjGreen-1",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjGreen-2",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjGreen-3",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjYellow-1",
								"default" : 								{
									"fontsize" : [ 12.059008 ],
									"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjYellow-2",
								"default" : 								{
									"fontsize" : [ 12.059008 ],
									"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjYellow-3",
								"default" : 								{
									"fontsize" : [ 12.059008 ],
									"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberGold-1",
								"default" : 								{
									"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 41.0, 554.0, 107.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p combine_chords"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 13.0,
					"id" : "obj-21",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 348.583333333333314, 1022.0, 518.0, 36.0 ],
					"presentation" : 1,
					"presentation_linecount" : 6,
					"presentation_rect" : [ 105.629311999999999, 110.500045999999998, 152.0, 94.0 ],
					"text" : "The given arguments are the parameters of the OSC server. Indeed, the chord prediction is processed using the python framework."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 178.73333333333332, 715.0, 99.0, 22.0 ],
					"text" : "a5_pred_pytorch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 163.73333333333332, 691.0, 99.0, 22.0 ],
					"text" : "a2_pred_pytorch"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 13.0,
					"id" : "obj-25",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 319.333333333333314, 663.5, 405.0, 108.0 ],
					"presentation" : 1,
					"presentation_linecount" : 17,
					"presentation_rect" : [ 90.629311999999999, 95.500045999999998, 167.0, 253.0 ],
					"text" : "This argument allows to select the prediction model via a dialog window or with the path of the chosen model. This patch works with pytorch models. The chord alphabet must be integrated in the model name (for example my_model_alphabet.extension). We propose three pre-trained networks corresponding to three chord alphabets (a0, a2 and a5). The chord dictionaries are detailed coll a0, coll a2 and coll a5."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 38.73333333333332, 1029.0, 263.0, 22.0 ],
					"text" : "multi_chord_seq_predictor 127.0.0.1 9050 9003"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 13.0,
					"id" : "obj-31",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 339.083333333333371, 869.5, 329.0, 50.0 ],
					"presentation" : 1,
					"presentation_linecount" : 7,
					"presentation_rect" : [ 105.629311999999999, 110.500045999999998, 152.0, 108.0 ],
					"text" : "The last argument is a parameter (named beta) that indicates how intensively the system uses previous predictions to improve the current prediction."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 282.733333333333348, 852.5, 19.0, 84.0 ],
					"size" : 100.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 148.73333333333332, 667.0, 99.0, 22.0 ],
					"text" : "a0_pred_pytorch"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 13.0,
					"id" : "obj-35",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 319.333333333333314, 547.0, 327.0, 36.0 ],
					"presentation" : 1,
					"presentation_linecount" : 4,
					"presentation_rect" : [ 45.629311999999999, 50.500045999999998, 144.0, 65.0 ],
					"text" : "Then, the 8 last beat wise extracted chord are combined and output as a sequence."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 41.0, 590.0, 258.0, 22.0 ],
					"text" : "N N N N N N N N"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 81.0, 133.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 81.0, 157.000000000000057, 29.5, 22.0 ],
					"text" : "157"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"interpinlet" : 1,
					"maxclass" : "gain~",
					"multichannelvariant" : 0,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 54.5, 201.0, 23.5, 73.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 40.0, 159.0, 23.5, 73.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_mmax" : 157.0,
							"parameter_initial" : [ 120 ],
							"parameter_shortname" : "gain~",
							"parameter_type" : 0,
							"parameter_longname" : "gain~[2]",
							"parameter_initial_enable" : 1
						}

					}
,
					"varname" : "gain~[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 197.833333333333314, 289.0, 94.0, 22.0 ],
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
					"patching_rect" : [ 184.333333333333314, 263.0, 94.0, 22.0 ],
					"text" : "a2_ace_pytorch"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 13.0,
					"id" : "obj-1",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 319.333333333333314, 220.0, 396.0, 108.0 ],
					"presentation" : 1,
					"presentation_linecount" : 19,
					"presentation_rect" : [ 90.629311999999999, 95.500045999999998, 152.0, 282.0 ],
					"text" : "This argument allows to select the model via a dialog window or with the path of the chosen model. This patch only works with pytorch models. The chord alphabet must be embedded in the model name (e.g. my_model_alphabet.extension). We propose three pre-trained networks corresponding to three chord alphabets (a0, a2 and a5). The chord dictionaries are detailed coll a0, coll a2 and coll a5."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"interpinlet" : 1,
					"maxclass" : "gain~",
					"multichannelvariant" : 0,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 29.0, 201.0, 23.5, 73.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 25.0, 144.0, 23.5, 73.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_mmax" : 157.0,
							"parameter_initial" : [ 120 ],
							"parameter_shortname" : "gain~",
							"parameter_type" : 0,
							"parameter_longname" : "gain~[1]",
							"parameter_initial_enable" : 1
						}

					}
,
					"varname" : "gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 93.0, 201.0, 14.0, 73.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 72.0, 144.0, 14.0, 73.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 41.0, 459.0, 137.0, 22.0 ],
					"text" : "real_time_ace_extractor"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 13.0,
					"id" : "obj-4",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 353.0, 392.5, 389.0, 65.0 ],
					"presentation" : 1,
					"presentation_linecount" : 11,
					"presentation_rect" : [ 90.629311999999999, 95.500045999999998, 143.0, 166.0 ],
					"text" : "The last argument provides the extraction between two consecutive bangs. The outputs are the chord probability vector, the label and the index of the most probable chord in the selected chord alphabet."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 163.0, 237.5, 94.0, 22.0 ],
					"text" : "a0_ace_pytorch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "ezadc~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 29.0, 137.5, 40.0, 40.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 41.0, 34.0, 40.0, 40.0 ]
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
					"patching_rect" : [ 154.0, 133.0, 518.0, 36.0 ],
					"presentation" : 1,
					"presentation_linecount" : 8,
					"presentation_rect" : [ 45.629311999999999, 50.500045999999998, 148.0, 123.0 ],
					"text" : "The first two arguments accept an audio signal with left and right channels. In order to obtain a better chord extraction, the volume must be important without saturation."
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
					"patching_rect" : [ 12.962645999999999, 88.866699000000011, 500.0, 21.0 ],
					"presentation" : 1,
					"presentation_linecount" : 5,
					"presentation_rect" : [ 30.629311999999999, 35.500045999999998, 140.0, 79.0 ],
					"text" : "Extract chords from audio flux and predict a possible continuation at each beat."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 26.0,
					"id" : "obj-164",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 12.962645999999999, 14.866699000000011, 635.0, 65.0 ],
					"presentation" : 1,
					"presentation_linecount" : 4,
					"presentation_rect" : [ 15.629312000000001, 20.500046000000001, 293.0, 123.0 ],
					"text" : "Real-time Chord Extractor combined with Chord Sequence Continuator"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 290.0, 413.0, 24.0, 24.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 3 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 2 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 1 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"order" : 1,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"order" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 2 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 2 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"order" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"order" : 1,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 2 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 1 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 1 ],
					"order" : 0,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"order" : 1,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 1 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"order" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 1 ],
					"order" : 1,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-7", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 1 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-27" : [ "gain~[1]", "gain~", 0 ],
			"obj-6" : [ "gain~[2]", "gain~", 0 ],
			"parameterbanks" : 			{

			}

		}
,
		"dependency_cache" : [ 			{
				"name" : "real_time_ace_extractor.maxpat",
				"bootpath" : "~/Dropbox/work/code/git_hub/chord_extraction_prediction_lib/Max_library/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "real_time_ace_model_select.maxpat",
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
				"name" : "multi_chord_seq_predictor.maxpat",
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
				"name" : "pred_model_select.maxpat",
				"bootpath" : "~/Dropbox/work/code/git_hub/chord_extraction_prediction_lib/Max_library/patchers/ACE_objects",
				"patcherrelativepath" : "./ACE_objects",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pipo~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "chord_extrc.mxo",
				"type" : "iLaX"
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
