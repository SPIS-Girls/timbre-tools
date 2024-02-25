{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 6,
			"revision" : 1,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 106.0, 107.0, 718.0, 769.0 ],
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
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 959.5, 408.0, 50.0, 22.0 ],
					"text" : "-1401"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 836.0, 353.0, 134.0, 22.0 ],
					"text" : "scale 0 101 -2400 2400"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 952.0, 329.0, 65.0, 22.0 ],
					"text" : "getparams"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 358.0, 109.0, 29.5, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 435.0, 647.0, 35.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 836.0, 398.0, 62.0, 22.0 ],
					"text" : "Transp $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"items" : [ "Dry/Wet", ",", "Gain", ",", "Glide", ",", "Latency", ",", "Quality", ",", "Transp" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 271.0, 667.0, 100.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 1,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-5",
					"linecount" : 5,
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 4,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "" ],
					"patching_rect" : [ 837.0, 449.0, 138.0, 196.0 ],
					"presentation_linecount" : 5,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "amxd~[4]",
							"parameter_modmode" : 0,
							"parameter_shortname" : "amxd~[4]",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"patchername" : "Simple Pitch Shifter.amxd",
						"patchername_fallback" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Simple Pitch Shifter.amxd"
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "max~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"name" : "Simple Pitch Shifter.amxd",
							"origname" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Simple Pitch Shifter.amxd",
							"valuedictionary" : 							{
								"parameter_values" : 								{
									"Dry/Wet" : 74.0,
									"Gain" : 0.0,
									"Glide" : 2040.285449065916737,
									"Latency" : 1.0,
									"Quality" : 0.0,
									"Transp" : -1400.0
								}

							}
,
							"active" : 1
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "Simple Pitch Shifter.amxd",
									"origin" : "Simple Pitch Shifter.amxd",
									"type" : "amxd",
									"subtype" : "Undefined",
									"embed" : 0,
									"snapshot" : 									{
										"name" : "Simple Pitch Shifter.amxd",
										"origname" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Simple Pitch Shifter.amxd",
										"valuedictionary" : 										{
											"parameter_values" : 											{
												"Dry/Wet" : 74.0,
												"Gain" : 0.0,
												"Glide" : 2040.285449065916737,
												"Latency" : 1.0,
												"Quality" : 0.0,
												"Transp" : -1400.0
											}

										}
,
										"active" : 1
									}
,
									"fileref" : 									{
										"name" : "Simple Pitch Shifter.amxd",
										"filename" : "Simple Pitch Shifter.amxd.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "b837394aee4a0efb90cd6028b5a31f3b"
									}

								}
 ]
						}

					}
,
					"text" : "amxd~ \"C74:/packages/Max for Live/patchers/Max Audio Effect/Simple Pitch Shifter.amxd\"",
					"varname" : "vst~[1]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-90",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 469.0, 443.0, 40.0, 22.0 ],
					"text" : "*~ 0.5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-88",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1165.0, 47.0, 67.0, 22.0 ],
					"text" : "wet_dry $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 811.0, 52.0, 99.0, 22.0 ],
					"text" : "wet_dry_level $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 837.0, 323.0, 40.0, 22.0 ],
					"text" : "r slink"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1165.0, 11.0, 46.0, 22.0 ],
					"text" : "r bright"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 811.0, 17.0, 47.0, 22.0 ],
					"text" : "r green"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 481.0, 17.0, 33.0, 22.0 ],
					"text" : "r red"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 528.0, 412.0, 39.0, 22.0 ],
					"text" : "r blue"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 321.0, 326.0, 48.0, 22.0 ],
					"text" : "s bright"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 265.0, 326.0, 54.0, 22.0 ],
					"text" : "s crunch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 217.0, 326.0, 42.0, 22.0 ],
					"text" : "s slink"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 164.0, 326.0, 41.0, 22.0 ],
					"text" : "s blue"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 112.0, 326.0, 49.0, 22.0 ],
					"text" : "s green"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 60.0, 326.0, 35.0, 22.0 ],
					"text" : "s red"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 528.0, 449.0, 64.0, 22.0 ],
					"text" : "wet/dry $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 481.0, 50.0, 67.0, 22.0 ],
					"text" : "wet_dry $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 273.0, 621.0, 96.0, 22.0 ],
					"text" : "prepend append"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 273.0, 584.0, 73.0, 22.0 ],
					"text" : "route param"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 273.0, 546.0, 59.0, 22.0 ],
					"text" : "route info"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 7,
					"outlettype" : [ "", "", "", "", "", "", "" ],
					"patching_rect" : [ 60.0, 141.0, 332.0, 22.0 ],
					"text" : "route 1 2 3 4 5 6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 8,
					"outlettype" : [ "", "", "", "int", "int", "", "int", "" ],
					"patching_rect" : [ 60.0, 109.0, 92.5, 22.0 ],
					"text" : "midiparse"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 321.0, 174.0, 20.0, 140.0 ],
					"size" : 101.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 269.0, 174.0, 20.0, 140.0 ],
					"size" : 101.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 217.0, 174.0, 20.0, 140.0 ],
					"size" : 101.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 164.0, 174.0, 20.0, 140.0 ],
					"size" : 101.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 112.0, 174.0, 20.0, 140.0 ],
					"size" : 101.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 60.0, 174.0, 20.0, 140.0 ],
					"size" : 101.0
				}

			}
, 			{
				"box" : 				{
					"basictuning" : 440,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "Macintosh HD:/Users/katebosen/Documents/Logic/Spice Up Your Life.2.wav",
								"filename" : "Spice Up Your Life.2.wav",
								"filekind" : "audiofile",
								"id" : "u993002313",
								"loop" : 1,
								"content_state" : 								{
									"loop" : 1
								}

							}
 ]
					}
,
					"followglobaltempo" : 0,
					"formantcorrection" : 0,
					"id" : "obj-10",
					"maxclass" : "playlist~",
					"mode" : "basic",
					"numinlets" : 1,
					"numoutlets" : 5,
					"originallength" : [ 0.0, "ticks" ],
					"originaltempo" : 120.0,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 163.0, 28.0, 150.0, 30.0 ],
					"pitchcorrection" : 0,
					"quality" : "basic",
					"timestretch" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 1,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-35",
					"linecount" : 2,
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 4,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "" ],
					"patching_rect" : [ 811.0, 83.0, 346.0, 196.0 ],
					"presentation_linecount" : 2,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "amxd~[3]",
							"parameter_modmode" : 0,
							"parameter_shortname" : "amxd~[3]",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"patchername" : "Warpoon.amxd",
						"patchername_fallback" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Warpoon/Warpoon.amxd"
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "max~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"name" : "Warpoon.amxd",
							"origname" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Warpoon/Warpoon.amxd",
							"valuedictionary" : 							{
								"parameter_values" : 								{
									"T1_delay" : 51.0,
									"T1_depth" : 30.0,
									"T1_mod_freq" : 0.19,
									"T2_delay" : 42.0,
									"T2_depth" : 25.0,
									"T2_mod_freq" : 0.28,
									"T3_delay" : 53.0,
									"T3_depth" : 31.0,
									"T3_mod_freq" : 0.24,
									"T4_delay" : 47.0,
									"T4_depth" : 29.0,
									"T4_mod_freq" : 0.22,
									"level" : 0.0,
									"waveform" : 1.0,
									"wet_dry_level" : 0.0
								}

							}
,
							"active" : 1
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "Warpoon.amxd",
									"origin" : "Warpoon.amxd",
									"type" : "amxd",
									"subtype" : "Undefined",
									"embed" : 1,
									"snapshot" : 									{
										"name" : "Warpoon.amxd",
										"origname" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Warpoon/Warpoon.amxd",
										"valuedictionary" : 										{
											"parameter_values" : 											{
												"T1_delay" : 51.0,
												"T1_depth" : 30.0,
												"T1_mod_freq" : 0.19,
												"T2_delay" : 42.0,
												"T2_depth" : 25.0,
												"T2_mod_freq" : 0.28,
												"T3_delay" : 53.0,
												"T3_depth" : 31.0,
												"T3_mod_freq" : 0.24,
												"T4_delay" : 47.0,
												"T4_depth" : 29.0,
												"T4_mod_freq" : 0.22,
												"level" : 0.0,
												"waveform" : 1.0,
												"wet_dry_level" : 0.0
											}

										}
,
										"active" : 1
									}
,
									"fileref" : 									{
										"name" : "Warpoon.amxd",
										"filename" : "Warpoon.amxd.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "7b48cc23a530e8a2e16892050f940f41"
									}

								}
 ]
						}

					}
,
					"text" : "amxd~ \"C74:/packages/Max for Live/patchers/Max Audio Effect/Warpoon/Warpoon.amxd\"",
					"varname" : "amxd~[3]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 1,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-33",
					"linecount" : 2,
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 4,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "" ],
					"patching_rect" : [ 481.0, 81.0, 316.0, 196.0 ],
					"presentation_linecount" : 2,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "amxd~[1]",
							"parameter_modmode" : 0,
							"parameter_shortname" : "amxd~[1]",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"patchername" : "Swirl.amxd",
						"patchername_fallback" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Swirl/Swirl.amxd"
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "max~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"name" : "Swirl.amxd",
							"origname" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Swirl/Swirl.amxd",
							"valuedictionary" : 							{
								"parameter_values" : 								{
									"in_level" : 0.272,
									"left_delay" : 70.559997999999993,
									"left_feedback" : 0.3672,
									"left_moddepth" : 0.576,
									"left_modfreq" : 0.272,
									"right_delay" : 114.239998,
									"right_feedback" : 0.6912,
									"right_moddepth" : 0.928,
									"right_modfreq" : 0.16,
									"wet_dry" : 21.0
								}

							}
,
							"active" : 1
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "Swirl.amxd",
									"origin" : "Swirl.amxd",
									"type" : "amxd",
									"subtype" : "Undefined",
									"embed" : 1,
									"snapshot" : 									{
										"name" : "Swirl.amxd",
										"origname" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Swirl/Swirl.amxd",
										"valuedictionary" : 										{
											"parameter_values" : 											{
												"in_level" : 0.272,
												"left_delay" : 70.559997999999993,
												"left_feedback" : 0.3672,
												"left_moddepth" : 0.576,
												"left_modfreq" : 0.272,
												"right_delay" : 114.239998,
												"right_feedback" : 0.6912,
												"right_moddepth" : 0.928,
												"right_modfreq" : 0.16,
												"wet_dry" : 21.0
											}

										}
,
										"active" : 1
									}
,
									"fileref" : 									{
										"name" : "Swirl.amxd",
										"filename" : "Swirl.amxd.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "87ab300c581bc3ad32843b0cb64f4936"
									}

								}
 ]
						}

					}
,
					"text" : "amxd~ \"C74:/packages/Max for Live/patchers/Max Audio Effect/Swirl/Swirl.amxd\"",
					"varname" : "amxd~[1]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 1,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-15",
					"linecount" : 4,
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 4,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "" ],
					"patching_rect" : [ 523.0, 496.0, 171.0, 196.0 ],
					"presentation_linecount" : 4,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "amxd~[5]",
							"parameter_modmode" : 0,
							"parameter_shortname" : "amxd~[4]",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"patchername" : "Raindrops.amxd",
						"patchername_fallback" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Raindrops/Raindrops.amxd"
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "max~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"name" : "Raindrops.amxd",
							"origname" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Raindrops/Raindrops.amxd",
							"valuedictionary" : 							{
								"parameter_values" : 								{
									"attack" : 1.0,
									"decay" : 10.0,
									"density" : 500.0,
									"gain_overdrive" : 0.42,
									"max_freq" : 5312.0,
									"min_freq" : 625.0,
									"resonance" : 137.0,
									"wet/dry" : 0.0
								}

							}
,
							"active" : 1
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "Raindrops.amxd",
									"origin" : "Raindrops.amxd",
									"type" : "amxd",
									"subtype" : "Undefined",
									"embed" : 0,
									"snapshot" : 									{
										"name" : "Raindrops.amxd",
										"origname" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Raindrops/Raindrops.amxd",
										"valuedictionary" : 										{
											"parameter_values" : 											{
												"attack" : 1.0,
												"decay" : 10.0,
												"density" : 500.0,
												"gain_overdrive" : 0.42,
												"max_freq" : 5312.0,
												"min_freq" : 625.0,
												"resonance" : 137.0,
												"wet/dry" : 0.0
											}

										}
,
										"active" : 1
									}
,
									"fileref" : 									{
										"name" : "Raindrops.amxd",
										"filename" : "Raindrops.amxd.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "f41c5fe54049ecb11ce32d9415593a7c"
									}

								}
 ]
						}

					}
,
					"text" : "amxd~ \"C74:/packages/Max for Live/patchers/Max Audio Effect/Raindrops/Raindrops.amxd\"",
					"varname" : "amxd~[2]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 1,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-11",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 4,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "" ],
					"patching_rect" : [ 1165.0, 83.0, 525.0, 196.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "amxd~",
							"parameter_modmode" : 0,
							"parameter_shortname" : "amxd~",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"patchername" : "Wheat.amxd",
						"patchername_fallback" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Wheat/Wheat.amxd"
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "max~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"name" : "Wheat.amxd",
							"origname" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Wheat/Wheat.amxd",
							"valuedictionary" : 							{
								"parameter_values" : 								{
									"grain" : 176.0,
									"live.button" : 0.0,
									"mess" : 1.0,
									"mod.amount" : 42.0,
									"mod.speed" : 72.0,
									"mode.freeze" : 0.0,
									"mode.offset" : 0.0,
									"pitch" : 512.0,
									"pitch_rand" : 118.0,
									"rnd_stereo" : 381.0,
									"scan_rate" : 111.0,
									"speed" : 447.0,
									"wet_dry" : 97.0,
									"window" : 172.0,
									"xfade" : 185.0,
									"blob" : 									{
										"ranger" : [ 0, 127 ],
										"variation" : [ 0.637097, 0.0, 0.0, 0.0, 0.040323, 0.045699, 0.051075, 0.072581, 0.080645, 0.086694, 0.092742, 0.09879, 0.112903, 0.112903, 0.120968, 0.120968, 0.120968, 0.129032, 0.131048, 0.133065, 0.135081, 0.137097, 0.139785, 0.142473, 0.145161, 0.149194, 0.153226, 0.157258, 0.16129, 0.163978, 0.166667, 0.169355, 0.172043, 0.174731, 0.177419, 0.181452, 0.185484, 0.189516, 0.193548, 0.197581, 0.201613, 0.201613, 0.201613, 0.205645, 0.209677, 0.209677, 0.209677, 0.209677, 0.215054, 0.22043, 0.225806, 0.233871, 0.241935, 0.246976, 0.252016, 0.257056, 0.262097, 0.267137, 0.272177, 0.277218, 0.282258, 0.28629, 0.290323, 0.295699, 0.301075, 0.306452, 0.308065, 0.309677, 0.31129, 0.312903, 0.322581, 0.326613, 0.330645, 0.330645, 0.330645, 0.33871, 0.33871, 0.33871, 0.346774, 0.350806, 0.370968, 0.379032, 0.395161, 0.403226, 0.41129, 0.427419, 0.431452, 0.435484, 0.443548, 0.443548, 0.443548, 0.451613, 0.475806, 0.487903, 0.5, 0.532258, 0.541936, 0.551613, 0.56129, 0.570968, 0.580645, 0.596774, 0.612903, 0.625, 0.637097, 0.653226, 0.657258, 0.66129, 0.685484, 0.693548, 0.701613, 0.71371, 0.725806, 0.729839, 0.733871, 0.766129, 0.771505, 0.776882, 0.782258, 0.78629, 0.790323, 0.806452, 0.806452, 0.806452, 0.822581, 0.822581, 0.822581, 0.83871, 0.862903, 0.862903, 0.862903, 0.879032, 0.884409, 0.889785, 0.903226, 0.919355, 0.923387, 0.935484, 0.943548, 0.947581, 0.959677, 0.967742, 0.967742, 0.967742, 0.975806, 0.983871, 0.975806, 0.967742, 0.943548, 0.930108, 0.916667, 0.903226, 0.891129, 0.879032, 0.822581, 0.782258, 0.766129, 0.75, 0.741935, 0.733871, 0.725806, 0.701613, 0.689516, 0.677419, 0.66129, 0.645161, 0.637097, 0.612903, 0.596774, 0.592742, 0.572581, 0.556452, 0.552419, 0.548387, 0.532258, 0.508065, 0.5, 0.475806, 0.427419, 0.399194, 0.370968, 0.356855, 0.342742, 0.328629, 0.314516, 0.298387, 0.282258, 0.266129, 0.255376, 0.244624, 0.233871, 0.22043, 0.206989, 0.193548, 0.1875, 0.181452, 0.175403, 0.169355, 0.153226, 0.149194, 0.137097, 0.120968, 0.120968, 0.120968, 0.112903, 0.112903, 0.108871, 0.104839, 0.096774, 0.096774, 0.08871, 0.08871, 0.08871, 0.080645, 0.076613, 0.072581, 0.068548, 0.056452, 0.056452, 0.056452, 0.056452, 0.048387, 0.048387, 0.048387, 0.048387, 0.040323, 0.040323, 0.040323, 0.040323, 0.040323, 0.040323, 0.040323, 0.040323, 0.040323, 0.032258, 0.032258, 0.032258, 0.032258, 0.032258, 0.032258, 0.032258, 0.024194, 0.024194, 0.024194, 0.024194, 0.016129, 0.016129, 0.016129, 0.008065, 0.004032, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ]
									}

								}

							}
,
							"active" : 1
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "Wheat.amxd",
									"origin" : "Wheat.amxd",
									"type" : "amxd",
									"subtype" : "Undefined",
									"embed" : 1,
									"snapshot" : 									{
										"name" : "Wheat.amxd",
										"origname" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Wheat/Wheat.amxd",
										"valuedictionary" : 										{
											"parameter_values" : 											{
												"grain" : 176.0,
												"live.button" : 0.0,
												"mess" : 1.0,
												"mod.amount" : 42.0,
												"mod.speed" : 72.0,
												"mode.freeze" : 0.0,
												"mode.offset" : 0.0,
												"pitch" : 512.0,
												"pitch_rand" : 118.0,
												"rnd_stereo" : 381.0,
												"scan_rate" : 111.0,
												"speed" : 447.0,
												"wet_dry" : 97.0,
												"window" : 172.0,
												"xfade" : 185.0,
												"blob" : 												{
													"ranger" : [ 0, 127 ],
													"variation" : [ 0.637097, 0.0, 0.0, 0.0, 0.040323, 0.045699, 0.051075, 0.072581, 0.080645, 0.086694, 0.092742, 0.09879, 0.112903, 0.112903, 0.120968, 0.120968, 0.120968, 0.129032, 0.131048, 0.133065, 0.135081, 0.137097, 0.139785, 0.142473, 0.145161, 0.149194, 0.153226, 0.157258, 0.16129, 0.163978, 0.166667, 0.169355, 0.172043, 0.174731, 0.177419, 0.181452, 0.185484, 0.189516, 0.193548, 0.197581, 0.201613, 0.201613, 0.201613, 0.205645, 0.209677, 0.209677, 0.209677, 0.209677, 0.215054, 0.22043, 0.225806, 0.233871, 0.241935, 0.246976, 0.252016, 0.257056, 0.262097, 0.267137, 0.272177, 0.277218, 0.282258, 0.28629, 0.290323, 0.295699, 0.301075, 0.306452, 0.308065, 0.309677, 0.31129, 0.312903, 0.322581, 0.326613, 0.330645, 0.330645, 0.330645, 0.33871, 0.33871, 0.33871, 0.346774, 0.350806, 0.370968, 0.379032, 0.395161, 0.403226, 0.41129, 0.427419, 0.431452, 0.435484, 0.443548, 0.443548, 0.443548, 0.451613, 0.475806, 0.487903, 0.5, 0.532258, 0.541936, 0.551613, 0.56129, 0.570968, 0.580645, 0.596774, 0.612903, 0.625, 0.637097, 0.653226, 0.657258, 0.66129, 0.685484, 0.693548, 0.701613, 0.71371, 0.725806, 0.729839, 0.733871, 0.766129, 0.771505, 0.776882, 0.782258, 0.78629, 0.790323, 0.806452, 0.806452, 0.806452, 0.822581, 0.822581, 0.822581, 0.83871, 0.862903, 0.862903, 0.862903, 0.879032, 0.884409, 0.889785, 0.903226, 0.919355, 0.923387, 0.935484, 0.943548, 0.947581, 0.959677, 0.967742, 0.967742, 0.967742, 0.975806, 0.983871, 0.975806, 0.967742, 0.943548, 0.930108, 0.916667, 0.903226, 0.891129, 0.879032, 0.822581, 0.782258, 0.766129, 0.75, 0.741935, 0.733871, 0.725806, 0.701613, 0.689516, 0.677419, 0.66129, 0.645161, 0.637097, 0.612903, 0.596774, 0.592742, 0.572581, 0.556452, 0.552419, 0.548387, 0.532258, 0.508065, 0.5, 0.475806, 0.427419, 0.399194, 0.370968, 0.356855, 0.342742, 0.328629, 0.314516, 0.298387, 0.282258, 0.266129, 0.255376, 0.244624, 0.233871, 0.22043, 0.206989, 0.193548, 0.1875, 0.181452, 0.175403, 0.169355, 0.153226, 0.149194, 0.137097, 0.120968, 0.120968, 0.120968, 0.112903, 0.112903, 0.108871, 0.104839, 0.096774, 0.096774, 0.08871, 0.08871, 0.08871, 0.080645, 0.076613, 0.072581, 0.068548, 0.056452, 0.056452, 0.056452, 0.056452, 0.048387, 0.048387, 0.048387, 0.048387, 0.040323, 0.040323, 0.040323, 0.040323, 0.040323, 0.040323, 0.040323, 0.040323, 0.040323, 0.032258, 0.032258, 0.032258, 0.032258, 0.032258, 0.032258, 0.032258, 0.024194, 0.024194, 0.024194, 0.024194, 0.016129, 0.016129, 0.016129, 0.008065, 0.004032, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ]
												}

											}

										}
,
										"active" : 1
									}
,
									"fileref" : 									{
										"name" : "Wheat.amxd",
										"filename" : "Wheat.amxd.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "776c43a470d7f53cdb25ff1b7dd161f9"
									}

								}
 ]
						}

					}
,
					"text" : "amxd~ \"C74:/packages/Max for Live/patchers/Max Audio Effect/Wheat/Wheat.amxd\"",
					"varname" : "amxd~",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 56.0, 36.0, 35.0, 22.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 18.0, 36.0, 31.0, 22.0 ],
					"text" : "plug"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 766.0, 712.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 18.0, 76.0, 92.5, 22.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~",
							"parameter_modmode" : 0,
							"parameter_shortname" : "vst~",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"parameter_mappable" : 0
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "vst~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"pluginname" : "SpisGirls.vst3",
							"plugindisplayname" : "SpisGirls",
							"pluginsavedname" : "~/Documents/timbre-tools/SpisGirls/Builds/MacOSX/build/Debug/SpisGirls.vst3",
							"pluginsaveduniqueid" : 0,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"blob" : "191.VMjLgXK....O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9XCLt3hKt3hKt3hKt3hYRUUSTEETIckVwTjQisVTTgkdEYjKAQjYPQSPWgUdMcjKAQjct3hdA4hKt3hKt3hKtnTUv.UQAslXuk0UXoWUFE0YQcEV77RRC8Vav8lak4Fc9vyKVMEUy.Ea0cVZtMEcgQWY9.."
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "SpisGirls",
									"origin" : "SpisGirls.vst3",
									"type" : "VST3",
									"subtype" : "AudioEffect",
									"embed" : 1,
									"snapshot" : 									{
										"pluginname" : "SpisGirls.vst3",
										"plugindisplayname" : "SpisGirls",
										"pluginsavedname" : "~/Documents/timbre-tools/SpisGirls/Builds/MacOSX/build/Debug/SpisGirls.vst3",
										"pluginsaveduniqueid" : 0,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"blob" : "191.VMjLgXK....O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9XCLt3hKt3hKt3hKt3hYRUUSTEETIckVwTjQisVTTgkdEYjKAQjYPQSPWgUdMcjKAQjct3hdA4hKt3hKt3hKtnTUv.UQAslXuk0UXoWUFE0YQcEV77RRC8Vav8lak4Fc9vyKVMEUy.Ea0cVZtMEcgQWY9.."
									}
,
									"fileref" : 									{
										"name" : "SpisGirls",
										"filename" : "SpisGirls.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "703f7af3a63bd9ef606b464f0ea44d8a"
									}

								}
 ]
						}

					}
,
					"text" : "vst~",
					"varname" : "vst~",
					"viewvisibility" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-1", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"order" : 1,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 1 ],
					"order" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 1 ],
					"source" : [ "obj-33", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-5", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 1 ],
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-68", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-68", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-68", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-68", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-68", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-88", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 1 ],
					"order" : 0,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"order" : 1,
					"source" : [ "obj-90", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-1" : [ "vst~", "vst~", 0 ],
			"obj-11" : [ "amxd~", "amxd~", 0 ],
			"obj-15" : [ "amxd~[5]", "amxd~[4]", 0 ],
			"obj-33" : [ "amxd~[1]", "amxd~[1]", 0 ],
			"obj-35" : [ "amxd~[3]", "amxd~[3]", 0 ],
			"obj-5" : [ "amxd~[4]", "amxd~[4]", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "Raindrops.amxd",
				"bootpath" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Raindrops",
				"type" : "amxd",
				"implicit" : 1
			}
, 			{
				"name" : "Raindrops.amxd.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "Simple Pitch Shifter.amxd",
				"bootpath" : "C74:/packages/Max for Live/patchers/Max Audio Effect",
				"type" : "amxd",
				"implicit" : 1
			}
, 			{
				"name" : "Simple Pitch Shifter.amxd.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "Spice Up Your Life.2.wav",
				"bootpath" : "~/Documents/Logic",
				"patcherrelativepath" : "../Logic",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "SpisGirls.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "Swirl.amxd",
				"bootpath" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Swirl",
				"type" : "amxd",
				"implicit" : 1
			}
, 			{
				"name" : "Swirl.amxd.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "Warpoon.amxd",
				"bootpath" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Warpoon",
				"type" : "amxd",
				"implicit" : 1
			}
, 			{
				"name" : "Warpoon.amxd.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "Wheat.amxd",
				"bootpath" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Wheat",
				"type" : "amxd",
				"implicit" : 1
			}
, 			{
				"name" : "Wheat.amxd.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
