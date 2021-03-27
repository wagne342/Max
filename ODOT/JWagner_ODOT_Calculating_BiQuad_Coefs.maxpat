{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 3,
			"revision" : 6,
			"architecture" : "x86",
			"modernui" : 1
		}
,
		"rect" : [ 47.0, -947.0, 1612.0, 937.0 ],
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
		"description" : "Main",
		"digest" : "Main",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"showontab" : 1,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 216.0, 848.0, 71.5, 22.0 ],
					"style" : "",
					"text" : "biquad~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"linecount" : 10,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 749.5, 204.0, 433.0, 141.0 ],
					"style" : "",
					"text" : "Biquad filters are super useful and Max has a very nice means of calculating coefficients for these filters in the filtergraph~ object.  However, this functions largely as a black-box.  For the curious, I have made this patch which calculates these coefficients based on center frequency, quality factor (Q) and Gain inputs using odot.  I have also included some visualization and analysis of these filters showing frequency & phase response and group delay of these filters.  Have a look through the tabs, play with the filters and see how their physical characteristics change.  Have fun.\n\n-Jeremy Wagner, May 2019"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-81",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 407.0, 311.0, 31.0, 22.0 ],
					"style" : "",
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 407.0, 256.0, 150.0, 20.0 ],
					"style" : "",
					"text" : "Sample Rate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 216.0, 429.0, 364.0, 20.0 ],
					"style" : "",
					"text" : "Biquad Coefficient Calculation",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-82",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 372.0, 577.0, 160.0, 47.0 ],
					"style" : "",
					"text" : "Note: A and B coeficients are swapped.  /list reorders them for use with biquad~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 294.0, 574.0, 60.0, 22.0 ],
					"style" : "",
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 336.5, 254.0, 60.0, 22.0 ],
					"style" : "",
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 294.0, 602.0, 48.0, 22.0 ],
					"style" : "",
					"text" : "display"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-41",
					"maxclass" : "filtergraph~",
					"nfilters" : 1,
					"numinlets" : 8,
					"numoutlets" : 7,
					"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 216.0, 632.0, 310.0, 194.0 ],
					"setfilter" : [ 0, 0, 1, 0, 0, 40.0, 1.0, 2.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 407.0, 278.0, 50.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-37",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 336.5, 283.0, 24.0, 24.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 336.5, 311.0, 69.0, 22.0 ],
					"style" : "",
					"text" : "adstatus sr"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 216.0, 204.0, 480.0, 33.0 ],
					"style" : "",
					"text" : "RIAA Re-Emphasis Filter"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 216.0, 602.0, 69.0, 22.0 ],
					"style" : "",
					"text" : "o.route /list"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-18",
					"linecount" : 7,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 216.0, 451.0, 364.0, 114.0 ],
					"text" : "/a0 = 1,\n/a1 = 1.7327655,\n/a2 = -0.7345534436,\n/b0 = 1,\n/b1 = -0.7555521,\n/b2 = -0.1646257113,\n/list = [/b0, /b1, /b2, -/a1, -/a2]",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 216.0, 368.0, 222.0, 22.0 ],
					"style" : "",
					"text" : "o.pack /f /Q /g /Fs"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 36.0,
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 222.0, 39.0, 1397.0, 47.0 ],
					"style" : "",
					"text" : "Calculating Biquad Coefficients using odot"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 6,
							"architecture" : "x86",
							"modernui" : 1
						}
,
						"rect" : [ 0.0, 26.0, 1612.0, 885.0 ],
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
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1491.0, 521.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Group Delay",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 6,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ 59.0, 104.0, 1020.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 50.0, 100.0, 60.0, 22.0 ],
													"style" : "",
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 153.0, 243.0, 834.0, 35.0 ],
													"style" : "",
													"text" : "defineygrid 0 5000 10000 15000 20000 25000 30000, defineylabels 0 \"0\" 5000 \"5000\" 10000 \"10000\" 15000 \"15000\" 20000 \"20000\" 25000 \"25000\" 30000 \"30000\""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-52",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 71.0, 147.0, 848.0, 22.0 ],
													"style" : "",
													"text" : "margins 20 20 20 50, definedomain 0 20480 linear, defineline curve, definerange 0 30000, numpoints 88, defineline linear, definepoint none, definethickness 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-49",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 109.0, 184.0, 582.0, 52.0 ],
													"style" : "",
													"text" : "definexgrid 1875 3045 3750 4350 4880 5275 5645 5885 6250 8150 9185 10000 10600 11075 11533 11866 12237 12500 14366 15533 16250 16950 17400 17770 18125 18500 18850 $1, definexlabels 4350 \"50\" 6250 \"100\" 10600 \"500\" 12500 1K 16950 5K 18850 10K"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-57",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 105.0, 338.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"order" : 1,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"order" : 2,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"order" : 0,
													"source" : [ "obj-56", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 1399.0, 510.0, 71.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p plotSetup"
								}

							}
, 							{
								"box" : 								{
									"domainlabel" : "Frequency_(Hz)",
									"id" : "obj-26",
									"margins" : [ 20.0, 20.0, 20.0, 50.0 ],
									"maxclass" : "plot~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"numpoints" : 88,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1384.0, 543.0, 364.0, 194.0 ],
									"rangelabel" : "delay_µsec",
									"subplots" : [ 										{
											"color" : [ 0.4, 0.4, 0.75, 1.0 ],
											"thickness" : 1.0,
											"point_style" : "none",
											"line_style" : "linear",
											"number_style" : "none",
											"filter" : "none",
											"domain_start" : 0.0,
											"domain_end" : 20480.0,
											"domain_style" : "linear",
											"domain_markers" : [ 1875.0, 3045.0, 3750.0, 4350.0, 4880.0, 5275.0, 5645.0, 5885.0, 6250.0, 8150.0, 9185.0, 10000.0, 10600.0, 11075.0, 11533.0, 11866.0, 12237.0, 12500.0, 14366.0, 15533.0, 16250.0, 16950.0, 17400.0, 17770.0, 18125.0, 18500.0, 18850.0, 12097.0 ],
											"domain_labels" : [ 4350.0, "50", 6250.0, "100", 10600.0, "500", 12500.0, "1K", 16950.0, "5K", 18850.0, "10K" ],
											"range_start" : 0.0,
											"range_end" : 30000.0,
											"range_style" : "linear",
											"range_markers" : [ 0.0, 5000.0, 10000.0, 15000.0, 20000.0, 25000.0, 30000.0 ],
											"range_labels" : [ 0.0, "0", 5000.0, "5000", 10000.0, "10000", 15000.0, "15000", 20000.0, "20000", 25000.0, "25000", 30000.0, "30000" ],
											"origin_x" : 0.0,
											"origin_y" : 0.0
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-81",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 265.0, 116.0, 31.0, 22.0 ],
									"style" : "",
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-80",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 265.0, 61.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Sample Rate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 74.0, 234.0, 364.0, 20.0 ],
									"style" : "",
									"text" : "Biquad Coefficient Calculation",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1036.5, 234.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Plot Generation",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-69",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1085.0, 521.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Phase Response",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 681.0, 521.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Frequency Response",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 6,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ 59.0, 104.0, 1020.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 50.0, 100.0, 60.0, 22.0 ],
													"style" : "",
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 153.0, 243.0, 366.0, 22.0 ],
													"style" : "",
													"text" : "defineygrid -360 -180 0, defineylabels -180 \"-180\" 0 \"0\" -360 \"-360\""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-52",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 71.0, 147.0, 839.0, 22.0 ],
													"style" : "",
													"text" : "margins 20 20 20 50, definedomain 0 20480 linear, defineline curve, definerange -360 0, numpoints 88, defineline linear, definepoint none, definethickness 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-49",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 109.0, 184.0, 582.0, 52.0 ],
													"style" : "",
													"text" : "definexgrid 1875 3045 3750 4350 4880 5275 5645 5885 6250 8150 9185 10000 10600 11075 11533 11866 12237 12500 14366 15533 16250 16950 17400 17770 18125 18500 18850 $1, definexlabels 4350 \"50\" 6250 \"100\" 10600 \"500\" 12500 1K 16950 5K 18850 10K"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-57",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 105.0, 338.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"order" : 1,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"order" : 2,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"order" : 0,
													"source" : [ "obj-56", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 993.0, 510.0, 71.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p plotSetup"
								}

							}
, 							{
								"box" : 								{
									"domainlabel" : "Frequency_(Hz)",
									"id" : "obj-64",
									"margins" : [ 20.0, 20.0, 20.0, 50.0 ],
									"maxclass" : "plot~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"numpoints" : 88,
									"outlettype" : [ "" ],
									"patching_rect" : [ 978.0, 543.0, 364.0, 194.0 ],
									"rangelabel" : "Phase_(Radians)",
									"subplots" : [ 										{
											"color" : [ 0.4, 0.4, 0.75, 1.0 ],
											"thickness" : 1.0,
											"point_style" : "none",
											"line_style" : "linear",
											"number_style" : "none",
											"filter" : "none",
											"domain_start" : 0.0,
											"domain_end" : 20480.0,
											"domain_style" : "linear",
											"domain_markers" : [ 1875.0, 3045.0, 3750.0, 4350.0, 4880.0, 5275.0, 5645.0, 5885.0, 6250.0, 8150.0, 9185.0, 10000.0, 10600.0, 11075.0, 11533.0, 11866.0, 12237.0, 12500.0, 14366.0, 15533.0, 16250.0, 16950.0, 17400.0, 17770.0, 18125.0, 18500.0, 18850.0, 12097.0 ],
											"domain_labels" : [ 4350.0, "50", 6250.0, "100", 10600.0, "500", 12500.0, "1K", 16950.0, "5K", 18850.0, "10K" ],
											"range_start" : -360.0,
											"range_end" : 0.0,
											"range_style" : "linear",
											"range_markers" : [ -360.0, -180.0, 0.0 ],
											"range_labels" : [ -180.0, "-180", 0.0, "0", -360.0, "-360" ],
											"origin_x" : 0.0,
											"origin_y" : 0.0
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 6,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 50.0, 100.0, 60.0, 22.0 ],
													"style" : "",
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 153.0, 243.0, 582.0, 35.0 ],
													"style" : "",
													"text" : "defineygrid 24 18 12 6 0 -6 -12 -18 -24, defineylabels 24 \"24\" 18 \"18\" 12 \"12\" 6 \"6\" 0 \"0 dB\" -6 \"-6\" -12 \"-12\" -18 \"-18\" -24 \"-24\""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-52",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 71.0, 147.0, 561.0, 35.0 ],
													"style" : "",
													"text" : "margins 20 20 20 50, definedomain 0 20480 linear, defineline curve, definerange -24 24, numpoints 88, defineline linear, definepoint none, definethickness 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-49",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 109.0, 184.0, 582.0, 52.0 ],
													"style" : "",
													"text" : "definexgrid 1875 3045 3750 4350 4880 5275 5645 5885 6250 8150 9185 10000 10600 11075 11533 11866 12237 12500 14366 15533 16250 16950 17400 17770 18125 18500 18850 $1, definexlabels 4350 \"50\" 6250 \"100\" 10600 \"500\" 12500 1K 16950 5K 18850 10K"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-57",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 105.0, 338.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"order" : 1,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"order" : 2,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"order" : 0,
													"source" : [ "obj-56", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 589.0, 510.0, 71.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p plotSetup"
								}

							}
, 							{
								"box" : 								{
									"domainlabel" : "Frequency_(Hz)",
									"id" : "obj-46",
									"margins" : [ 20.0, 20.0, 20.0, 50.0 ],
									"maxclass" : "plot~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"numpoints" : 88,
									"outlettype" : [ "" ],
									"patching_rect" : [ 574.0, 543.0, 364.0, 194.0 ],
									"rangelabel" : "Amplitude_(dB)",
									"subplots" : [ 										{
											"color" : [ 0.4, 0.4, 0.75, 1.0 ],
											"thickness" : 1.0,
											"point_style" : "none",
											"line_style" : "linear",
											"number_style" : "none",
											"filter" : "none",
											"domain_start" : 0.0,
											"domain_end" : 20480.0,
											"domain_style" : "linear",
											"domain_markers" : [ 1875.0, 3045.0, 3750.0, 4350.0, 4880.0, 5275.0, 5645.0, 5885.0, 6250.0, 8150.0, 9185.0, 10000.0, 10600.0, 11075.0, 11533.0, 11866.0, 12237.0, 12500.0, 14366.0, 15533.0, 16250.0, 16950.0, 17400.0, 17770.0, 18125.0, 18500.0, 18850.0, 12097.0 ],
											"domain_labels" : [ 4350.0, "50", 6250.0, "100", 10600.0, "500", 12500.0, "1K", 16950.0, "5K", 18850.0, "10K" ],
											"range_start" : -24.0,
											"range_end" : 24.0,
											"range_style" : "linear",
											"range_markers" : [ 24.0, 18.0, 12.0, 6.0, 0.0, -6.0, -12.0, -18.0, -24.0 ],
											"range_labels" : [ 24.0, "24", 18.0, "18", 12.0, "12", 6.0, "6", 0.0, "0 dB", -6.0, "-6", -12.0, "-12", -18.0, "-18", -24.0, "-24" ],
											"origin_x" : 0.0,
											"origin_y" : 0.0
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "FullPacket" ],
									"patching_rect" : [ 574.0, 476.0, 165.0, 22.0 ],
									"style" : "",
									"text" : "o.route /dBs /degrees /Group"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-1",
									"linecount" : 14,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 574.0, 256.0, 1231.0, 209.0 ],
									"text" : "/freqs = round(10*pow(pow(2,.125),aseq(0,88))),\n/wS = 2*pi()*/freqs / /Fs,\n/phiS = 4*pow(sin(/wS / 2),2),\n/dBs = 10*log10(pow(/b0+/b1+/b2,2) + (/b0 * /b2 * /phiS - (/b1*(/b0+/b2)+4*/b0*/b2))*/phiS) - 10*log10(pow(1-/a1-/a2,2)+(-/a2*/phiS - (-/a1*(1-/a2)+4*-/a2))*/phiS),\n/omega = 2 * pi() * /Q / (4* /Fs),\n/alfa = sin(/w) / (2* /Q),\n/BB1 = 1 +cos(/omega),\n/BB2 = (1 +cos(/omega)) / 2.0,\n/phase = atan2( ( ( -/a1  -  /a0 * /BB1 -  /a2 * /BB1 +  /a1 * /BB2 + 2 * ( -/a0 * /BB2 -  /a2) * cos( /wS) ) * sin( /wS)  /  ( 1 + /BB1 * /BB1 + /BB2 * /BB2 + 2 * ( /BB1  + /BB1 * /BB2) * cos( /wS) + 2 * /BB2 * cos(2 * /wS) ) ), (  /a0  -  /a1 * /BB1 -  /a2 * /BB2 + ( /a0 * /BB1 -  /a1 *(1 + /BB2) -  /a2 * /BB1) * cos( /wS) + ( /a0 * /BB2 -  /a2) * cos(2 * /wS) ) / ( 1 + /BB1 * /BB1 + /BB2 * /BB2 + 2 * ( ( /BB1 + /BB1 * /BB2) * cos( /wS) + /BB2 * cos(2 * /wS) ) )) * 2,\n/degrees = /phase *360 / (2*pi()),\n/Group = map(lambda([i], (-((/phase[[i+1]] - /phase[[i-1]]) / (/freqs[[i+1]] - /freqs[[i-1]])) / 360)*58000000  ), aseq(1, 87)),\n/Group=list(0, /Group, 0)",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-167",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 196.0, 0.0, 25.0, 22.0 ],
									"style" : "",
									"text" : "r g"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-166",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 133.0, 0.0, 27.0, 22.0 ],
									"style" : "",
									"text" : "r Q"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-163",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 74.0, 0.0, 21.0, 22.0 ],
									"style" : "",
									"text" : "r f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-82",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 231.0, 437.0, 160.0, 47.0 ],
									"style" : "",
									"text" : "Note: A and B coeficients are swapped.  /list reorders them for use with biquad~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 152.0, 485.0, 60.0, 22.0 ],
									"style" : "",
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 621.0, 12.0, 60.0, 22.0 ],
									"style" : "",
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 152.0, 513.0, 48.0, 22.0 ],
									"style" : "",
									"text" : "display"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-41",
									"maxclass" : "filtergraph~",
									"nfilters" : 1,
									"numinlets" : 8,
									"numoutlets" : 7,
									"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 74.0, 543.0, 310.0, 194.0 ],
									"setfilter" : [ 0, 0, 1, 0, 0, 40.0, 1.0, 2.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 265.0, 83.0, 50.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-37",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 621.0, 41.0, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 621.0, 69.0, 69.0, 22.0 ],
									"style" : "",
									"text" : "adstatus sr"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 36.0,
									"id" : "obj-23",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 74.0, 9.0, 422.0, 47.0 ],
									"style" : "",
									"text" : "High Shelf Filter"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 74.0, 513.0, 69.0, 22.0 ],
									"style" : "",
									"text" : "o.route /list"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-18",
									"linecount" : 11,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 74.0, 256.0, 489.0, 168.0 ],
									"text" : "/A = pow(10, /g / 40),\n/w = 2*pi() * /f / /Fs,\n/alpha = sin( /w) / (2* /Q),\n/Azero=(/A+1)-(/A-1)*cos(/w)+2*sqrt(/A)*/alpha,\n/a0 = 1,\n/a1 = -(2*((/A-1)-(/A+1)*cos(/w)))/ /Azero,\n/a2 = -((/A+1)-(/A-1)*cos(/w)-2*sqrt(/A)*/alpha)/ /Azero,\n/b0 = (/A*((/A+1)+(/A-1)*cos(/w)+2*sqrt(/A)*/alpha))/ /Azero,\n/b1 = (-2*/A*((/A-1)+(/A+1)*cos(/w)))/ /Azero,\n/b2 = (/A*((/A+1)+(/A-1)*cos(/w)-2*sqrt(/A)*/alpha))/ /Azero,\n/list = [/b0, /b1, /b2, -/a1, -/a2]",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-17",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 196.0, 83.0, 57.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-16",
									"maxclass" : "flonum",
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 133.0, 83.0, 57.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-15",
									"maxclass" : "flonum",
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 74.0, 83.0, 57.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 196.0, 116.0, 31.0, 22.0 ],
									"style" : "",
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 133.0, 116.0, 31.0, 22.0 ],
									"style" : "",
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 74.0, 173.0, 222.0, 22.0 ],
									"style" : "",
									"text" : "o.pack /f /Q /g /Fs"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 196.0, 61.0, 50.0, 20.0 ],
									"style" : "",
									"text" : "Gain"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 133.0, 61.0, 50.0, 20.0 ],
									"style" : "",
									"text" : "Q"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 74.0, 61.0, 50.0, 20.0 ],
									"style" : "",
									"text" : "Freq"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"source" : [ "obj-12", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 142.5, 146.0, 83.5, 146.0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 2 ],
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 205.5, 147.0, 83.5, 147.0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"source" : [ "obj-163", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"source" : [ "obj-166", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"source" : [ "obj-167", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 83.5, 434.0, 568.0, 434.0, 568.0, 248.5, 583.5, 248.5 ],
									"order" : 0,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"order" : 1,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"hidden" : 1,
									"source" : [ "obj-35", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"hidden" : 1,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"midpoints" : [ 680.833313, 500.0, 1393.5, 500.0 ],
									"source" : [ "obj-8", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"midpoints" : [ 632.166687, 505.5, 987.5, 505.5 ],
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 3 ],
									"source" : [ "obj-81", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 274.5, 148.0, 83.5, 148.0 ],
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 34.5, 314.0, 79.0, 22.0 ],
					"presentation_rect" : [ 34.5, 314.0, 0.0, 0.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p High_Shelf"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 6,
							"architecture" : "x86",
							"modernui" : 1
						}
,
						"rect" : [ 0.0, 26.0, 1612.0, 885.0 ],
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
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1491.0, 521.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Group Delay",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 6,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ 59.0, 104.0, 1020.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 50.0, 100.0, 60.0, 22.0 ],
													"style" : "",
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 153.0, 243.0, 834.0, 35.0 ],
													"style" : "",
													"text" : "defineygrid 0 5000 10000 15000 20000 25000 30000, defineylabels 0 \"0\" 5000 \"5000\" 10000 \"10000\" 15000 \"15000\" 20000 \"20000\" 25000 \"25000\" 30000 \"30000\""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-52",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 71.0, 147.0, 848.0, 22.0 ],
													"style" : "",
													"text" : "margins 20 20 20 50, definedomain 0 20480 linear, defineline curve, definerange 0 30000, numpoints 88, defineline linear, definepoint none, definethickness 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-49",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 109.0, 184.0, 582.0, 52.0 ],
													"style" : "",
													"text" : "definexgrid 1875 3045 3750 4350 4880 5275 5645 5885 6250 8150 9185 10000 10600 11075 11533 11866 12237 12500 14366 15533 16250 16950 17400 17770 18125 18500 18850 $1, definexlabels 4350 \"50\" 6250 \"100\" 10600 \"500\" 12500 1K 16950 5K 18850 10K"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-57",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 105.0, 338.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"order" : 1,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"order" : 2,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"order" : 0,
													"source" : [ "obj-56", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 1399.0, 510.0, 71.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p plotSetup"
								}

							}
, 							{
								"box" : 								{
									"domainlabel" : "Frequency_(Hz)",
									"id" : "obj-26",
									"margins" : [ 20.0, 20.0, 20.0, 50.0 ],
									"maxclass" : "plot~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"numpoints" : 88,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1384.0, 543.0, 364.0, 194.0 ],
									"rangelabel" : "delay_µsec",
									"subplots" : [ 										{
											"color" : [ 0.4, 0.4, 0.75, 1.0 ],
											"thickness" : 1.0,
											"point_style" : "none",
											"line_style" : "linear",
											"number_style" : "none",
											"filter" : "none",
											"domain_start" : 0.0,
											"domain_end" : 20480.0,
											"domain_style" : "linear",
											"domain_markers" : [ 1875.0, 3045.0, 3750.0, 4350.0, 4880.0, 5275.0, 5645.0, 5885.0, 6250.0, 8150.0, 9185.0, 10000.0, 10600.0, 11075.0, 11533.0, 11866.0, 12237.0, 12500.0, 14366.0, 15533.0, 16250.0, 16950.0, 17400.0, 17770.0, 18125.0, 18500.0, 18850.0, 12097.0 ],
											"domain_labels" : [ 4350.0, "50", 6250.0, "100", 10600.0, "500", 12500.0, "1K", 16950.0, "5K", 18850.0, "10K" ],
											"range_start" : 0.0,
											"range_end" : 30000.0,
											"range_style" : "linear",
											"range_markers" : [ 0.0, 5000.0, 10000.0, 15000.0, 20000.0, 25000.0, 30000.0 ],
											"range_labels" : [ 0.0, "0", 5000.0, "5000", 10000.0, "10000", 15000.0, "15000", 20000.0, "20000", 25000.0, "25000", 30000.0, "30000" ],
											"origin_x" : 0.0,
											"origin_y" : 0.0
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-81",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 265.0, 116.0, 31.0, 22.0 ],
									"style" : "",
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-80",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 265.0, 61.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Sample Rate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 74.0, 234.0, 364.0, 20.0 ],
									"style" : "",
									"text" : "Biquad Coefficient Calculation",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1036.5, 234.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Plot Generation",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-69",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1085.0, 521.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Phase Response",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 681.0, 521.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Frequency Response",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 6,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ 59.0, 104.0, 1020.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 50.0, 100.0, 60.0, 22.0 ],
													"style" : "",
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 153.0, 243.0, 366.0, 22.0 ],
													"style" : "",
													"text" : "defineygrid -360 -180 0, defineylabels -180 \"-180\" 0 \"0\" -360 \"-360\""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-52",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 71.0, 147.0, 839.0, 22.0 ],
													"style" : "",
													"text" : "margins 20 20 20 50, definedomain 0 20480 linear, defineline curve, definerange -360 0, numpoints 88, defineline linear, definepoint none, definethickness 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-49",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 109.0, 184.0, 582.0, 52.0 ],
													"style" : "",
													"text" : "definexgrid 1875 3045 3750 4350 4880 5275 5645 5885 6250 8150 9185 10000 10600 11075 11533 11866 12237 12500 14366 15533 16250 16950 17400 17770 18125 18500 18850 $1, definexlabels 4350 \"50\" 6250 \"100\" 10600 \"500\" 12500 1K 16950 5K 18850 10K"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-57",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 105.0, 338.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"order" : 1,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"order" : 2,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"order" : 0,
													"source" : [ "obj-56", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 993.0, 510.0, 71.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p plotSetup"
								}

							}
, 							{
								"box" : 								{
									"domainlabel" : "Frequency_(Hz)",
									"id" : "obj-64",
									"margins" : [ 20.0, 20.0, 20.0, 50.0 ],
									"maxclass" : "plot~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"numpoints" : 88,
									"outlettype" : [ "" ],
									"patching_rect" : [ 978.0, 543.0, 364.0, 194.0 ],
									"rangelabel" : "Phase_(Radians)",
									"subplots" : [ 										{
											"color" : [ 0.4, 0.4, 0.75, 1.0 ],
											"thickness" : 1.0,
											"point_style" : "none",
											"line_style" : "linear",
											"number_style" : "none",
											"filter" : "none",
											"domain_start" : 0.0,
											"domain_end" : 20480.0,
											"domain_style" : "linear",
											"domain_markers" : [ 1875.0, 3045.0, 3750.0, 4350.0, 4880.0, 5275.0, 5645.0, 5885.0, 6250.0, 8150.0, 9185.0, 10000.0, 10600.0, 11075.0, 11533.0, 11866.0, 12237.0, 12500.0, 14366.0, 15533.0, 16250.0, 16950.0, 17400.0, 17770.0, 18125.0, 18500.0, 18850.0, 12097.0 ],
											"domain_labels" : [ 4350.0, "50", 6250.0, "100", 10600.0, "500", 12500.0, "1K", 16950.0, "5K", 18850.0, "10K" ],
											"range_start" : -360.0,
											"range_end" : 0.0,
											"range_style" : "linear",
											"range_markers" : [ -360.0, -180.0, 0.0 ],
											"range_labels" : [ -180.0, "-180", 0.0, "0", -360.0, "-360" ],
											"origin_x" : 0.0,
											"origin_y" : 0.0
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 6,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 50.0, 100.0, 60.0, 22.0 ],
													"style" : "",
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 153.0, 243.0, 582.0, 35.0 ],
													"style" : "",
													"text" : "defineygrid 24 18 12 6 0 -6 -12 -18 -24, defineylabels 24 \"24\" 18 \"18\" 12 \"12\" 6 \"6\" 0 \"0 dB\" -6 \"-6\" -12 \"-12\" -18 \"-18\" -24 \"-24\""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-52",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 71.0, 147.0, 561.0, 35.0 ],
													"style" : "",
													"text" : "margins 20 20 20 50, definedomain 0 20480 linear, defineline curve, definerange -24 24, numpoints 88, defineline linear, definepoint none, definethickness 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-49",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 109.0, 184.0, 582.0, 52.0 ],
													"style" : "",
													"text" : "definexgrid 1875 3045 3750 4350 4880 5275 5645 5885 6250 8150 9185 10000 10600 11075 11533 11866 12237 12500 14366 15533 16250 16950 17400 17770 18125 18500 18850 $1, definexlabels 4350 \"50\" 6250 \"100\" 10600 \"500\" 12500 1K 16950 5K 18850 10K"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-57",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 105.0, 338.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"order" : 1,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"order" : 2,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"order" : 0,
													"source" : [ "obj-56", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 589.0, 510.0, 71.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p plotSetup"
								}

							}
, 							{
								"box" : 								{
									"domainlabel" : "Frequency_(Hz)",
									"id" : "obj-46",
									"margins" : [ 20.0, 20.0, 20.0, 50.0 ],
									"maxclass" : "plot~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"numpoints" : 88,
									"outlettype" : [ "" ],
									"patching_rect" : [ 574.0, 543.0, 364.0, 194.0 ],
									"rangelabel" : "Amplitude_(dB)",
									"subplots" : [ 										{
											"color" : [ 0.4, 0.4, 0.75, 1.0 ],
											"thickness" : 1.0,
											"point_style" : "none",
											"line_style" : "linear",
											"number_style" : "none",
											"filter" : "none",
											"domain_start" : 0.0,
											"domain_end" : 20480.0,
											"domain_style" : "linear",
											"domain_markers" : [ 1875.0, 3045.0, 3750.0, 4350.0, 4880.0, 5275.0, 5645.0, 5885.0, 6250.0, 8150.0, 9185.0, 10000.0, 10600.0, 11075.0, 11533.0, 11866.0, 12237.0, 12500.0, 14366.0, 15533.0, 16250.0, 16950.0, 17400.0, 17770.0, 18125.0, 18500.0, 18850.0, 12097.0 ],
											"domain_labels" : [ 4350.0, "50", 6250.0, "100", 10600.0, "500", 12500.0, "1K", 16950.0, "5K", 18850.0, "10K" ],
											"range_start" : -24.0,
											"range_end" : 24.0,
											"range_style" : "linear",
											"range_markers" : [ 24.0, 18.0, 12.0, 6.0, 0.0, -6.0, -12.0, -18.0, -24.0 ],
											"range_labels" : [ 24.0, "24", 18.0, "18", 12.0, "12", 6.0, "6", 0.0, "0 dB", -6.0, "-6", -12.0, "-12", -18.0, "-18", -24.0, "-24" ],
											"origin_x" : 0.0,
											"origin_y" : 0.0
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "FullPacket" ],
									"patching_rect" : [ 574.0, 476.0, 165.0, 22.0 ],
									"style" : "",
									"text" : "o.route /dBs /degrees /Group"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-1",
									"linecount" : 14,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 574.0, 256.0, 1231.0, 209.0 ],
									"text" : "/freqs = round(10*pow(pow(2,.125),aseq(0,88))),\n/wS = 2*pi()*/freqs / /Fs,\n/phiS = 4*pow(sin(/wS / 2),2),\n/dBs = 10*log10(pow(/b0+/b1+/b2,2) + (/b0 * /b2 * /phiS - (/b1*(/b0+/b2)+4*/b0*/b2))*/phiS) - 10*log10(pow(1-/a1-/a2,2)+(-/a2*/phiS - (-/a1*(1-/a2)+4*-/a2))*/phiS),\n/omega = 2 * pi() * /Q / (4* /Fs),\n/alfa = sin(/w) / (2* /Q),\n/BB1 = 1 +cos(/omega),\n/BB2 = (1 +cos(/omega)) / 2.0,\n/phase = atan2( ( ( -/a1  -  /a0 * /BB1 -  /a2 * /BB1 +  /a1 * /BB2 + 2 * ( -/a0 * /BB2 -  /a2) * cos( /wS) ) * sin( /wS)  /  ( 1 + /BB1 * /BB1 + /BB2 * /BB2 + 2 * ( /BB1  + /BB1 * /BB2) * cos( /wS) + 2 * /BB2 * cos(2 * /wS) ) ), (  /a0  -  /a1 * /BB1 -  /a2 * /BB2 + ( /a0 * /BB1 -  /a1 *(1 + /BB2) -  /a2 * /BB1) * cos( /wS) + ( /a0 * /BB2 -  /a2) * cos(2 * /wS) ) / ( 1 + /BB1 * /BB1 + /BB2 * /BB2 + 2 * ( ( /BB1 + /BB1 * /BB2) * cos( /wS) + /BB2 * cos(2 * /wS) ) )) * 2,\n/degrees = /phase *360 / (2*pi()),\n/Group = map(lambda([i], (-((/phase[[i+1]] - /phase[[i-1]]) / (/freqs[[i+1]] - /freqs[[i-1]])) / 360)*58000000  ), aseq(1, 87)),\n/Group=list(0, /Group, 0)",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-167",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 196.0, 0.0, 25.0, 22.0 ],
									"style" : "",
									"text" : "r g"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-166",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 133.0, 0.0, 27.0, 22.0 ],
									"style" : "",
									"text" : "r Q"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-163",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 74.0, 0.0, 21.0, 22.0 ],
									"style" : "",
									"text" : "r f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-82",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 231.0, 437.0, 160.0, 47.0 ],
									"style" : "",
									"text" : "Note: A and B coeficients are swapped.  /list reorders them for use with biquad~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 152.0, 485.0, 60.0, 22.0 ],
									"style" : "",
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 621.0, 12.0, 60.0, 22.0 ],
									"style" : "",
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 152.0, 513.0, 48.0, 22.0 ],
									"style" : "",
									"text" : "display"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-41",
									"maxclass" : "filtergraph~",
									"nfilters" : 1,
									"numinlets" : 8,
									"numoutlets" : 7,
									"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 74.0, 543.0, 310.0, 194.0 ],
									"setfilter" : [ 0, 0, 1, 0, 0, 40.0, 1.0, 2.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 265.0, 83.0, 50.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-37",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 621.0, 41.0, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 621.0, 69.0, 69.0, 22.0 ],
									"style" : "",
									"text" : "adstatus sr"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 36.0,
									"id" : "obj-23",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 74.0, 9.0, 422.0, 47.0 ],
									"style" : "",
									"text" : "Low Shelf Filter"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 74.0, 513.0, 69.0, 22.0 ],
									"style" : "",
									"text" : "o.route /list"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-18",
									"linecount" : 11,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 74.0, 256.0, 489.0, 168.0 ],
									"text" : "/A = pow(10, /g / 40),\n/w = 2*pi() * /f / /Fs,\n/alpha = sin( /w) / (2* /Q),\n/Azero=(/A+1)+(/A-1)*cos(/w)+2*sqrt(/A)*/alpha,\n/a0 = 1,\n/a1 = -(-2*((/A-1)+(/A+1)*cos(/w)))/ /Azero,\n/a2 = -((/A+1)+(/A-1)*cos(/w)-2*sqrt(/A)*/alpha)/ /Azero,\n/b0 = (/A*((/A+1)-(/A-1)*cos(/w)+2*sqrt(/A)*/alpha))/ /Azero,\n/b1 = (2*/A*((/A-1)-(/A+1)*cos(/w)))/ /Azero,\n/b2 = (/A*((/A+1)-(/A-1)*cos(/w)-2*sqrt(/A)*/alpha))/ /Azero,\n/list = [/b0, /b1, /b2, -/a1, -/a2]",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-17",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 196.0, 83.0, 57.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-16",
									"maxclass" : "flonum",
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 133.0, 83.0, 57.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-15",
									"maxclass" : "flonum",
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 74.0, 83.0, 57.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 196.0, 116.0, 31.0, 22.0 ],
									"style" : "",
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 133.0, 116.0, 31.0, 22.0 ],
									"style" : "",
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 74.0, 173.0, 222.0, 22.0 ],
									"style" : "",
									"text" : "o.pack /f /Q /g /Fs"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 196.0, 61.0, 50.0, 20.0 ],
									"style" : "",
									"text" : "Gain"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 133.0, 61.0, 50.0, 20.0 ],
									"style" : "",
									"text" : "Q"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 74.0, 61.0, 50.0, 20.0 ],
									"style" : "",
									"text" : "Freq"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"source" : [ "obj-12", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 142.5, 146.0, 83.5, 146.0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 2 ],
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 205.5, 147.0, 83.5, 147.0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"source" : [ "obj-163", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"source" : [ "obj-166", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"source" : [ "obj-167", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 83.5, 434.0, 568.0, 434.0, 568.0, 248.5, 583.5, 248.5 ],
									"order" : 0,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"order" : 1,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"hidden" : 1,
									"source" : [ "obj-35", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"hidden" : 1,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"midpoints" : [ 680.833313, 500.0, 1393.5, 500.0 ],
									"source" : [ "obj-8", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"midpoints" : [ 632.166687, 505.5, 987.5, 505.5 ],
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 3 ],
									"source" : [ "obj-81", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 274.5, 148.0, 83.5, 148.0 ],
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 32.5, 274.0, 77.0, 22.0 ],
					"presentation_rect" : [ 32.5, 274.0, 0.0, 0.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p Low_Shelf"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 6,
							"architecture" : "x86",
							"modernui" : 1
						}
,
						"rect" : [ 0.0, 26.0, 1612.0, 885.0 ],
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
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1394.0, 521.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Group Delay",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 6,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ 59.0, 104.0, 1020.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 50.0, 100.0, 60.0, 22.0 ],
													"style" : "",
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 153.0, 243.0, 834.0, 35.0 ],
													"style" : "",
													"text" : "defineygrid 0 5000 10000 15000 20000 25000 30000, defineylabels 0 \"0\" 5000 \"5000\" 10000 \"10000\" 15000 \"15000\" 20000 \"20000\" 25000 \"25000\" 30000 \"30000\""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-52",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 71.0, 147.0, 848.0, 22.0 ],
													"style" : "",
													"text" : "margins 20 20 20 50, definedomain 0 20480 linear, defineline curve, definerange 0 30000, numpoints 88, defineline linear, definepoint none, definethickness 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-49",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 109.0, 184.0, 582.0, 52.0 ],
													"style" : "",
													"text" : "definexgrid 1875 3045 3750 4350 4880 5275 5645 5885 6250 8150 9185 10000 10600 11075 11533 11866 12237 12500 14366 15533 16250 16950 17400 17770 18125 18500 18850 $1, definexlabels 4350 \"50\" 6250 \"100\" 10600 \"500\" 12500 1K 16950 5K 18850 10K"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-57",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 105.0, 338.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"order" : 1,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"order" : 2,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"order" : 0,
													"source" : [ "obj-56", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 1302.0, 510.0, 71.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p plotSetup"
								}

							}
, 							{
								"box" : 								{
									"domainlabel" : "Frequency_(Hz)",
									"id" : "obj-26",
									"margins" : [ 20.0, 20.0, 20.0, 50.0 ],
									"maxclass" : "plot~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"numpoints" : 88,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1287.0, 543.0, 364.0, 194.0 ],
									"rangelabel" : "delay_µsec",
									"subplots" : [ 										{
											"color" : [ 0.4, 0.4, 0.75, 1.0 ],
											"thickness" : 1.0,
											"point_style" : "none",
											"line_style" : "linear",
											"number_style" : "none",
											"filter" : "none",
											"domain_start" : 0.0,
											"domain_end" : 20480.0,
											"domain_style" : "linear",
											"domain_markers" : [ 1875.0, 3045.0, 3750.0, 4350.0, 4880.0, 5275.0, 5645.0, 5885.0, 6250.0, 8150.0, 9185.0, 10000.0, 10600.0, 11075.0, 11533.0, 11866.0, 12237.0, 12500.0, 14366.0, 15533.0, 16250.0, 16950.0, 17400.0, 17770.0, 18125.0, 18500.0, 18850.0, 12097.0 ],
											"domain_labels" : [ 4350.0, "50", 6250.0, "100", 10600.0, "500", 12500.0, "1K", 16950.0, "5K", 18850.0, "10K" ],
											"range_start" : 0.0,
											"range_end" : 30000.0,
											"range_style" : "linear",
											"range_markers" : [ 0.0, 5000.0, 10000.0, 15000.0, 20000.0, 25000.0, 30000.0 ],
											"range_labels" : [ 0.0, "0", 5000.0, "5000", 10000.0, "10000", 15000.0, "15000", 20000.0, "20000", 25000.0, "25000", 30000.0, "30000" ],
											"origin_x" : 0.0,
											"origin_y" : 0.0
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-81",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 265.0, 116.0, 31.0, 22.0 ],
									"style" : "",
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-80",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 265.0, 61.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Sample Rate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 74.0, 234.0, 364.0, 20.0 ],
									"style" : "",
									"text" : "Biquad Coefficient Calculation",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 939.5, 234.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Plot Generation",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-69",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 988.0, 521.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Phase Response",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 584.0, 521.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Frequency Response",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 6,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ 59.0, 104.0, 1020.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 50.0, 100.0, 60.0, 22.0 ],
													"style" : "",
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 153.0, 243.0, 366.0, 22.0 ],
													"style" : "",
													"text" : "defineygrid -360 -180 0, defineylabels -180 \"-180\" 0 \"0\" -360 \"-360\""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-52",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 71.0, 147.0, 839.0, 22.0 ],
													"style" : "",
													"text" : "margins 20 20 20 50, definedomain 0 20480 linear, defineline curve, definerange -360 0, numpoints 88, defineline linear, definepoint none, definethickness 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-49",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 109.0, 184.0, 582.0, 52.0 ],
													"style" : "",
													"text" : "definexgrid 1875 3045 3750 4350 4880 5275 5645 5885 6250 8150 9185 10000 10600 11075 11533 11866 12237 12500 14366 15533 16250 16950 17400 17770 18125 18500 18850 $1, definexlabels 4350 \"50\" 6250 \"100\" 10600 \"500\" 12500 1K 16950 5K 18850 10K"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-57",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 105.0, 338.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"order" : 1,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"order" : 2,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"order" : 0,
													"source" : [ "obj-56", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 896.0, 510.0, 71.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p plotSetup"
								}

							}
, 							{
								"box" : 								{
									"domainlabel" : "Frequency_(Hz)",
									"id" : "obj-64",
									"margins" : [ 20.0, 20.0, 20.0, 50.0 ],
									"maxclass" : "plot~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"numpoints" : 88,
									"outlettype" : [ "" ],
									"patching_rect" : [ 881.0, 543.0, 364.0, 194.0 ],
									"rangelabel" : "Phase_(Radians)",
									"subplots" : [ 										{
											"color" : [ 0.4, 0.4, 0.75, 1.0 ],
											"thickness" : 1.0,
											"point_style" : "none",
											"line_style" : "linear",
											"number_style" : "none",
											"filter" : "none",
											"domain_start" : 0.0,
											"domain_end" : 20480.0,
											"domain_style" : "linear",
											"domain_markers" : [ 1875.0, 3045.0, 3750.0, 4350.0, 4880.0, 5275.0, 5645.0, 5885.0, 6250.0, 8150.0, 9185.0, 10000.0, 10600.0, 11075.0, 11533.0, 11866.0, 12237.0, 12500.0, 14366.0, 15533.0, 16250.0, 16950.0, 17400.0, 17770.0, 18125.0, 18500.0, 18850.0, 12097.0 ],
											"domain_labels" : [ 4350.0, "50", 6250.0, "100", 10600.0, "500", 12500.0, "1K", 16950.0, "5K", 18850.0, "10K" ],
											"range_start" : -360.0,
											"range_end" : 0.0,
											"range_style" : "linear",
											"range_markers" : [ -360.0, -180.0, 0.0 ],
											"range_labels" : [ -180.0, "-180", 0.0, "0", -360.0, "-360" ],
											"origin_x" : 0.0,
											"origin_y" : 0.0
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 6,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 50.0, 100.0, 60.0, 22.0 ],
													"style" : "",
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 153.0, 243.0, 582.0, 35.0 ],
													"style" : "",
													"text" : "defineygrid 24 18 12 6 0 -6 -12 -18 -24, defineylabels 24 \"24\" 18 \"18\" 12 \"12\" 6 \"6\" 0 \"0 dB\" -6 \"-6\" -12 \"-12\" -18 \"-18\" -24 \"-24\""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-52",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 71.0, 147.0, 561.0, 35.0 ],
													"style" : "",
													"text" : "margins 20 20 20 50, definedomain 0 20480 linear, defineline curve, definerange -24 24, numpoints 88, defineline linear, definepoint none, definethickness 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-49",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 109.0, 184.0, 582.0, 52.0 ],
													"style" : "",
													"text" : "definexgrid 1875 3045 3750 4350 4880 5275 5645 5885 6250 8150 9185 10000 10600 11075 11533 11866 12237 12500 14366 15533 16250 16950 17400 17770 18125 18500 18850 $1, definexlabels 4350 \"50\" 6250 \"100\" 10600 \"500\" 12500 1K 16950 5K 18850 10K"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-57",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 105.0, 338.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"order" : 1,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"order" : 2,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"order" : 0,
													"source" : [ "obj-56", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 492.0, 510.0, 71.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p plotSetup"
								}

							}
, 							{
								"box" : 								{
									"domainlabel" : "Frequency_(Hz)",
									"id" : "obj-46",
									"margins" : [ 20.0, 20.0, 20.0, 50.0 ],
									"maxclass" : "plot~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"numpoints" : 88,
									"outlettype" : [ "" ],
									"patching_rect" : [ 477.0, 543.0, 364.0, 194.0 ],
									"rangelabel" : "Amplitude_(dB)",
									"subplots" : [ 										{
											"color" : [ 0.4, 0.4, 0.75, 1.0 ],
											"thickness" : 1.0,
											"point_style" : "none",
											"line_style" : "linear",
											"number_style" : "none",
											"filter" : "none",
											"domain_start" : 0.0,
											"domain_end" : 20480.0,
											"domain_style" : "linear",
											"domain_markers" : [ 1875.0, 3045.0, 3750.0, 4350.0, 4880.0, 5275.0, 5645.0, 5885.0, 6250.0, 8150.0, 9185.0, 10000.0, 10600.0, 11075.0, 11533.0, 11866.0, 12237.0, 12500.0, 14366.0, 15533.0, 16250.0, 16950.0, 17400.0, 17770.0, 18125.0, 18500.0, 18850.0, 12097.0 ],
											"domain_labels" : [ 4350.0, "50", 6250.0, "100", 10600.0, "500", 12500.0, "1K", 16950.0, "5K", 18850.0, "10K" ],
											"range_start" : -24.0,
											"range_end" : 24.0,
											"range_style" : "linear",
											"range_markers" : [ 24.0, 18.0, 12.0, 6.0, 0.0, -6.0, -12.0, -18.0, -24.0 ],
											"range_labels" : [ 24.0, "24", 18.0, "18", 12.0, "12", 6.0, "6", 0.0, "0 dB", -6.0, "-6", -12.0, "-12", -18.0, "-18", -24.0, "-24" ],
											"origin_x" : 0.0,
											"origin_y" : 0.0
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "FullPacket" ],
									"patching_rect" : [ 477.0, 476.0, 165.0, 22.0 ],
									"style" : "",
									"text" : "o.route /dBs /degrees /Group"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-1",
									"linecount" : 14,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 477.0, 256.0, 1231.0, 209.0 ],
									"text" : "/freqs = round(10*pow(pow(2,.125),aseq(0,88))),\n/wS = 2*pi()*/freqs / /Fs,\n/phiS = 4*pow(sin(/wS / 2),2),\n/dBs = 10*log10(pow(/b0+/b1+/b2,2) + (/b0 * /b2 * /phiS - (/b1*(/b0+/b2)+4*/b0*/b2))*/phiS) - 10*log10(pow(1-/a1-/a2,2)+(-/a2*/phiS - (-/a1*(1-/a2)+4*-/a2))*/phiS),\n/omega = 2 * pi() * /Q / (4* /Fs),\n/alfa = sin(/w) / (2* /Q),\n/BB1 = 1 +cos(/omega),\n/BB2 = (1 +cos(/omega)) / 2.0,\n/phase = atan2( ( ( -/a1  -  /a0 * /BB1 -  /a2 * /BB1 +  /a1 * /BB2 + 2 * ( -/a0 * /BB2 -  /a2) * cos( /wS) ) * sin( /wS)  /  ( 1 + /BB1 * /BB1 + /BB2 * /BB2 + 2 * ( /BB1  + /BB1 * /BB2) * cos( /wS) + 2 * /BB2 * cos(2 * /wS) ) ), (  /a0  -  /a1 * /BB1 -  /a2 * /BB2 + ( /a0 * /BB1 -  /a1 *(1 + /BB2) -  /a2 * /BB1) * cos( /wS) + ( /a0 * /BB2 -  /a2) * cos(2 * /wS) ) / ( 1 + /BB1 * /BB1 + /BB2 * /BB2 + 2 * ( ( /BB1 + /BB1 * /BB2) * cos( /wS) + /BB2 * cos(2 * /wS) ) )) * 2,\n/degrees = /phase *360 / (2*pi()),\n/Group = map(lambda([i], (-((/phase[[i+1]] - /phase[[i-1]]) / (/freqs[[i+1]] - /freqs[[i-1]])) / 360)*58000000  ), aseq(1, 87)),\n/Group=list(0, /Group, 0)",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-167",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 196.0, 0.0, 25.0, 22.0 ],
									"style" : "",
									"text" : "r g"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-166",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 133.0, 0.0, 27.0, 22.0 ],
									"style" : "",
									"text" : "r Q"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-163",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 74.0, 0.0, 21.0, 22.0 ],
									"style" : "",
									"text" : "r f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-82",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 224.0, 472.5, 160.0, 47.0 ],
									"style" : "",
									"text" : "Note: A and B coeficients are swapped.  /list reorders them for use with biquad~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 152.0, 485.0, 60.0, 22.0 ],
									"style" : "",
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 621.0, 12.0, 60.0, 22.0 ],
									"style" : "",
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 152.0, 513.0, 48.0, 22.0 ],
									"style" : "",
									"text" : "display"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-41",
									"maxclass" : "filtergraph~",
									"nfilters" : 1,
									"numinlets" : 8,
									"numoutlets" : 7,
									"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 74.0, 543.0, 310.0, 194.0 ],
									"setfilter" : [ 0, 0, 1, 0, 0, 40.0, 1.0, 2.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 265.0, 83.0, 50.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-37",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 621.0, 41.0, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 621.0, 69.0, 69.0, 22.0 ],
									"style" : "",
									"text" : "adstatus sr"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 36.0,
									"id" : "obj-23",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 74.0, 9.0, 422.0, 47.0 ],
									"style" : "",
									"text" : "Peaking EQ (Bell)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 74.0, 513.0, 69.0, 22.0 ],
									"style" : "",
									"text" : "o.route /list"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-18",
									"linecount" : 12,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 74.0, 256.0, 395.0, 182.0 ],
									"text" : "/A = pow(10, /g / 40), #amplitude coef from gain\n/w = 2*pi() * /f / /Fs, #center freq as angular freq\n/alpha = sin( /w) / (2* /Q), #precompute alpha\n#compute coefficients\n/a0 = 1,\n/a1 = 2*cos(/w) / (1+ /alpha / /A),\n/a2 = -(1 - /alpha / /A ) / (/alpha / /A + 1),\n/b0 = (1 + /alpha * /A ) / (/alpha / /A + 1),\n/b1 = (-2*cos(/w)) / (/alpha / /A + 1),\n/b2 = (1-/alpha * /A ) / (/alpha / /A + 1),\n#reorder list for use with Max's Biquad\n/list = [/b0, /b1, /b2, -/a1, -/a2]",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-17",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 196.0, 83.0, 57.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-16",
									"maxclass" : "flonum",
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 133.0, 83.0, 57.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-15",
									"maxclass" : "flonum",
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 74.0, 83.0, 57.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 196.0, 116.0, 31.0, 22.0 ],
									"style" : "",
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 133.0, 116.0, 31.0, 22.0 ],
									"style" : "",
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 74.0, 173.0, 222.0, 22.0 ],
									"style" : "",
									"text" : "o.pack /f /Q /g /Fs"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 196.0, 61.0, 50.0, 20.0 ],
									"style" : "",
									"text" : "Gain"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 133.0, 61.0, 50.0, 20.0 ],
									"style" : "",
									"text" : "Q"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 74.0, 61.0, 50.0, 20.0 ],
									"style" : "",
									"text" : "Freq"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"source" : [ "obj-12", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 142.5, 146.0, 83.5, 146.0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 2 ],
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 205.5, 147.0, 83.5, 147.0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"source" : [ "obj-163", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"source" : [ "obj-166", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"source" : [ "obj-167", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 83.5, 460.0, 472.0, 460.0, 472.0, 248.5, 486.5, 248.5 ],
									"order" : 0,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"order" : 1,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"hidden" : 1,
									"source" : [ "obj-35", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"hidden" : 1,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"midpoints" : [ 583.833313, 500.0, 1296.5, 500.0 ],
									"source" : [ "obj-8", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"midpoints" : [ 535.166687, 505.5, 890.5, 505.5 ],
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 3 ],
									"source" : [ "obj-81", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 274.5, 148.0, 83.5, 148.0 ],
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 26.5, 232.0, 88.0, 22.0 ],
					"presentation_rect" : [ 26.5, 232.0, 0.0, 0.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p Peaking_EQ"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 6,
							"architecture" : "x86",
							"modernui" : 1
						}
,
						"rect" : [ 0.0, 26.0, 1612.0, 885.0 ],
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
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1384.0, 521.0, 150.0, 20.0 ],
									"presentation_rect" : [ 1384.0, 520.0, 0.0, 0.0 ],
									"style" : "",
									"text" : "Group Delay",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 6,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ 59.0, 104.0, 1020.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 50.0, 100.0, 60.0, 22.0 ],
													"style" : "",
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 153.0, 243.0, 834.0, 35.0 ],
													"style" : "",
													"text" : "defineygrid 0 5000 10000 15000 20000 25000 30000, defineylabels 0 \"0\" 5000 \"5000\" 10000 \"10000\" 15000 \"15000\" 20000 \"20000\" 25000 \"25000\" 30000 \"30000\""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-52",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 71.0, 147.0, 848.0, 22.0 ],
													"style" : "",
													"text" : "margins 20 20 20 50, definedomain 0 20480 linear, defineline curve, definerange 0 30000, numpoints 88, defineline linear, definepoint none, definethickness 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-49",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 109.0, 184.0, 582.0, 52.0 ],
													"style" : "",
													"text" : "definexgrid 1875 3045 3750 4350 4880 5275 5645 5885 6250 8150 9185 10000 10600 11075 11533 11866 12237 12500 14366 15533 16250 16950 17400 17770 18125 18500 18850 $1, definexlabels 4350 \"50\" 6250 \"100\" 10600 \"500\" 12500 1K 16950 5K 18850 10K"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-57",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 105.0, 338.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"order" : 1,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"order" : 2,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"order" : 0,
													"source" : [ "obj-56", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 1292.0, 510.0, 71.0, 22.0 ],
									"presentation_rect" : [ 1292.0, 509.0, 0.0, 0.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p plotSetup"
								}

							}
, 							{
								"box" : 								{
									"domainlabel" : "Frequency_(Hz)",
									"id" : "obj-26",
									"margins" : [ 20.0, 20.0, 20.0, 50.0 ],
									"maxclass" : "plot~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"numpoints" : 88,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1277.0, 543.0, 364.0, 194.0 ],
									"rangelabel" : "delay_µsec",
									"subplots" : [ 										{
											"color" : [ 0.4, 0.4, 0.75, 1.0 ],
											"thickness" : 1.0,
											"point_style" : "none",
											"line_style" : "linear",
											"number_style" : "none",
											"filter" : "none",
											"domain_start" : 0.0,
											"domain_end" : 20480.0,
											"domain_style" : "linear",
											"domain_markers" : [ 1875.0, 3045.0, 3750.0, 4350.0, 4880.0, 5275.0, 5645.0, 5885.0, 6250.0, 8150.0, 9185.0, 10000.0, 10600.0, 11075.0, 11533.0, 11866.0, 12237.0, 12500.0, 14366.0, 15533.0, 16250.0, 16950.0, 17400.0, 17770.0, 18125.0, 18500.0, 18850.0, 12097.0 ],
											"domain_labels" : [ 4350.0, "50", 6250.0, "100", 10600.0, "500", 12500.0, "1K", 16950.0, "5K", 18850.0, "10K" ],
											"range_start" : 0.0,
											"range_end" : 30000.0,
											"range_style" : "linear",
											"range_markers" : [ 0.0, 5000.0, 10000.0, 15000.0, 20000.0, 25000.0, 30000.0 ],
											"range_labels" : [ 0.0, "0", 5000.0, "5000", 10000.0, "10000", 15000.0, "15000", 20000.0, "20000", 25000.0, "25000", 30000.0, "30000" ],
											"origin_x" : 0.0,
											"origin_y" : 0.0
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-81",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 265.0, 116.0, 31.0, 22.0 ],
									"style" : "",
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-80",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 265.0, 61.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Sample Rate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 74.0, 234.0, 364.0, 20.0 ],
									"style" : "",
									"text" : "Biquad Coefficient Calculation",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 929.5, 234.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Plot Generation",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-69",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 978.0, 521.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Phase Response",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 574.0, 521.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Frequency Response",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 6,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ 59.0, 104.0, 1020.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 50.0, 100.0, 60.0, 22.0 ],
													"style" : "",
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 153.0, 243.0, 366.0, 22.0 ],
													"style" : "",
													"text" : "defineygrid -360 -180 0, defineylabels -180 \"-180\" 0 \"0\" -360 \"-360\""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-52",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 71.0, 147.0, 839.0, 22.0 ],
													"style" : "",
													"text" : "margins 20 20 20 50, definedomain 0 20480 linear, defineline curve, definerange -360 0, numpoints 88, defineline linear, definepoint none, definethickness 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-49",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 109.0, 184.0, 582.0, 52.0 ],
													"style" : "",
													"text" : "definexgrid 1875 3045 3750 4350 4880 5275 5645 5885 6250 8150 9185 10000 10600 11075 11533 11866 12237 12500 14366 15533 16250 16950 17400 17770 18125 18500 18850 $1, definexlabels 4350 \"50\" 6250 \"100\" 10600 \"500\" 12500 1K 16950 5K 18850 10K"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-57",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 105.0, 338.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"order" : 1,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"order" : 2,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"order" : 0,
													"source" : [ "obj-56", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 886.0, 510.0, 71.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p plotSetup"
								}

							}
, 							{
								"box" : 								{
									"domainlabel" : "Frequency_(Hz)",
									"id" : "obj-64",
									"margins" : [ 20.0, 20.0, 20.0, 50.0 ],
									"maxclass" : "plot~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"numpoints" : 88,
									"outlettype" : [ "" ],
									"patching_rect" : [ 871.0, 543.0, 364.0, 194.0 ],
									"rangelabel" : "Phase_(Radians)",
									"subplots" : [ 										{
											"color" : [ 0.4, 0.4, 0.75, 1.0 ],
											"thickness" : 1.0,
											"point_style" : "none",
											"line_style" : "linear",
											"number_style" : "none",
											"filter" : "none",
											"domain_start" : 0.0,
											"domain_end" : 20480.0,
											"domain_style" : "linear",
											"domain_markers" : [ 1875.0, 3045.0, 3750.0, 4350.0, 4880.0, 5275.0, 5645.0, 5885.0, 6250.0, 8150.0, 9185.0, 10000.0, 10600.0, 11075.0, 11533.0, 11866.0, 12237.0, 12500.0, 14366.0, 15533.0, 16250.0, 16950.0, 17400.0, 17770.0, 18125.0, 18500.0, 18850.0, 12097.0 ],
											"domain_labels" : [ 4350.0, "50", 6250.0, "100", 10600.0, "500", 12500.0, "1K", 16950.0, "5K", 18850.0, "10K" ],
											"range_start" : -360.0,
											"range_end" : 0.0,
											"range_style" : "linear",
											"range_markers" : [ -360.0, -180.0, 0.0 ],
											"range_labels" : [ -180.0, "-180", 0.0, "0", -360.0, "-360" ],
											"origin_x" : 0.0,
											"origin_y" : 0.0
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 6,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 50.0, 100.0, 60.0, 22.0 ],
													"style" : "",
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 153.0, 243.0, 582.0, 35.0 ],
													"style" : "",
													"text" : "defineygrid 24 18 12 6 0 -6 -12 -18 -24, defineylabels 24 \"24\" 18 \"18\" 12 \"12\" 6 \"6\" 0 \"0 dB\" -6 \"-6\" -12 \"-12\" -18 \"-18\" -24 \"-24\""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-52",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 71.0, 147.0, 561.0, 35.0 ],
													"style" : "",
													"text" : "margins 20 20 20 50, definedomain 0 20480 linear, defineline curve, definerange -24 24, numpoints 88, defineline linear, definepoint none, definethickness 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-49",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 109.0, 184.0, 582.0, 52.0 ],
													"style" : "",
													"text" : "definexgrid 1875 3045 3750 4350 4880 5275 5645 5885 6250 8150 9185 10000 10600 11075 11533 11866 12237 12500 14366 15533 16250 16950 17400 17770 18125 18500 18850 $1, definexlabels 4350 \"50\" 6250 \"100\" 10600 \"500\" 12500 1K 16950 5K 18850 10K"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-57",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 105.0, 338.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"order" : 1,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"order" : 2,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"order" : 0,
													"source" : [ "obj-56", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 482.0, 510.0, 71.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p plotSetup"
								}

							}
, 							{
								"box" : 								{
									"domainlabel" : "Frequency_(Hz)",
									"id" : "obj-46",
									"margins" : [ 20.0, 20.0, 20.0, 50.0 ],
									"maxclass" : "plot~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"numpoints" : 88,
									"outlettype" : [ "" ],
									"patching_rect" : [ 467.0, 543.0, 364.0, 194.0 ],
									"rangelabel" : "Amplitude_(dB)",
									"subplots" : [ 										{
											"color" : [ 0.4, 0.4, 0.75, 1.0 ],
											"thickness" : 1.0,
											"point_style" : "none",
											"line_style" : "linear",
											"number_style" : "none",
											"filter" : "none",
											"domain_start" : 0.0,
											"domain_end" : 20480.0,
											"domain_style" : "linear",
											"domain_markers" : [ 1875.0, 3045.0, 3750.0, 4350.0, 4880.0, 5275.0, 5645.0, 5885.0, 6250.0, 8150.0, 9185.0, 10000.0, 10600.0, 11075.0, 11533.0, 11866.0, 12237.0, 12500.0, 14366.0, 15533.0, 16250.0, 16950.0, 17400.0, 17770.0, 18125.0, 18500.0, 18850.0, 12097.0 ],
											"domain_labels" : [ 4350.0, "50", 6250.0, "100", 10600.0, "500", 12500.0, "1K", 16950.0, "5K", 18850.0, "10K" ],
											"range_start" : -24.0,
											"range_end" : 24.0,
											"range_style" : "linear",
											"range_markers" : [ 24.0, 18.0, 12.0, 6.0, 0.0, -6.0, -12.0, -18.0, -24.0 ],
											"range_labels" : [ 24.0, "24", 18.0, "18", 12.0, "12", 6.0, "6", 0.0, "0 dB", -6.0, "-6", -12.0, "-12", -18.0, "-18", -24.0, "-24" ],
											"origin_x" : 0.0,
											"origin_y" : 0.0
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "FullPacket" ],
									"patching_rect" : [ 467.0, 476.0, 165.0, 22.0 ],
									"style" : "",
									"text" : "o.route /dBs /degrees /Group"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-1",
									"linecount" : 14,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 467.0, 256.0, 1231.0, 209.0 ],
									"text" : "/freqs = round(10*pow(pow(2,.125),aseq(0,88))),\n/wS = 2*pi()*/freqs / /Fs,\n/phiS = 4*pow(sin(/wS / 2),2),\n/dBs = 10*log10(pow(/b0+/b1+/b2,2) + (/b0 * /b2 * /phiS - (/b1*(/b0+/b2)+4*/b0*/b2))*/phiS) - 10*log10(pow(1-/a1-/a2,2)+(-/a2*/phiS - (-/a1*(1-/a2)+4*-/a2))*/phiS),\n/omega = 2 * pi() * /Q / (4* /Fs),\n/alfa = sin(/w) / (2* /Q),\n/BB1 = 1 +cos(/omega),\n/BB2 = (1 +cos(/omega)) / 2.0,\n/phase = atan2( ( ( -/a1  -  /a0 * /BB1 -  /a2 * /BB1 +  /a1 * /BB2 + 2 * ( -/a0 * /BB2 -  /a2) * cos( /wS) ) * sin( /wS)  /  ( 1 + /BB1 * /BB1 + /BB2 * /BB2 + 2 * ( /BB1  + /BB1 * /BB2) * cos( /wS) + 2 * /BB2 * cos(2 * /wS) ) ), (  /a0  -  /a1 * /BB1 -  /a2 * /BB2 + ( /a0 * /BB1 -  /a1 *(1 + /BB2) -  /a2 * /BB1) * cos( /wS) + ( /a0 * /BB2 -  /a2) * cos(2 * /wS) ) / ( 1 + /BB1 * /BB1 + /BB2 * /BB2 + 2 * ( ( /BB1 + /BB1 * /BB2) * cos( /wS) + /BB2 * cos(2 * /wS) ) )) * 2,\n/degrees = /phase *360 / (2*pi()),\n/Group = map(lambda([i], (-((/phase[[i+1]] - /phase[[i-1]]) / (/freqs[[i+1]] - /freqs[[i-1]])) / 360)*58000000  ), aseq(1, 87)),\n/Group=list(0, /Group, 0)",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-167",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 196.0, 0.0, 25.0, 22.0 ],
									"style" : "",
									"text" : "r g"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-166",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 133.0, 0.0, 27.0, 22.0 ],
									"style" : "",
									"text" : "r Q"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-163",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 74.0, 0.0, 21.0, 22.0 ],
									"style" : "",
									"text" : "r f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-82",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 230.0, 421.0, 160.0, 47.0 ],
									"style" : "",
									"text" : "Note: A and B coeficients are swapped.  /list reorders them for use with biquad~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 152.0, 485.0, 60.0, 22.0 ],
									"style" : "",
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 621.0, 12.0, 60.0, 22.0 ],
									"style" : "",
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 152.0, 513.0, 48.0, 22.0 ],
									"style" : "",
									"text" : "display"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-41",
									"maxclass" : "filtergraph~",
									"nfilters" : 1,
									"numinlets" : 8,
									"numoutlets" : 7,
									"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 74.0, 543.0, 310.0, 194.0 ],
									"setfilter" : [ 0, 0, 1, 0, 0, 40.0, 1.0, 2.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 265.0, 83.0, 50.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-37",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 621.0, 41.0, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 621.0, 69.0, 69.0, 22.0 ],
									"style" : "",
									"text" : "adstatus sr"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 36.0,
									"id" : "obj-23",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 74.0, 9.0, 422.0, 47.0 ],
									"style" : "",
									"text" : "Allpass"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 74.0, 513.0, 69.0, 22.0 ],
									"style" : "",
									"text" : "o.route /list"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-18",
									"linecount" : 9,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 74.0, 256.0, 364.0, 141.0 ],
									"text" : "/w = 2*pi() * /f / /Fs,\n/alpha = sin( /w) / (2* /Q),\n/a0 = 1,\n/a1 = 2*cos(/w) / (1+ /alpha),\n/a2 = (/alpha - 1) / (/alpha + 1),\n/b0 = (1 - /alpha) / (/alpha + 1),\n/b1 = (-2*cos(/w)) / (/alpha + 1),\n/b2 = 1,\n/list = [/b0, /b1, /b2, -/a1, -/a2]",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-17",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 196.0, 83.0, 57.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-16",
									"maxclass" : "flonum",
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 133.0, 83.0, 57.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-15",
									"maxclass" : "flonum",
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 74.0, 83.0, 57.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 196.0, 116.0, 31.0, 22.0 ],
									"style" : "",
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 133.0, 116.0, 31.0, 22.0 ],
									"style" : "",
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 74.0, 173.0, 222.0, 22.0 ],
									"style" : "",
									"text" : "o.pack /f /Q /g /Fs"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 196.0, 61.0, 50.0, 20.0 ],
									"style" : "",
									"text" : "Gain"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 133.0, 61.0, 50.0, 20.0 ],
									"style" : "",
									"text" : "Q"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 74.0, 61.0, 50.0, 20.0 ],
									"style" : "",
									"text" : "Freq"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"source" : [ "obj-12", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 142.5, 146.0, 83.5, 146.0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 2 ],
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 205.5, 147.0, 83.5, 147.0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"source" : [ "obj-163", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"source" : [ "obj-166", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"source" : [ "obj-167", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 83.5, 407.0, 457.0, 407.0, 457.0, 248.5, 476.5, 248.5 ],
									"order" : 0,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"order" : 1,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"hidden" : 1,
									"source" : [ "obj-35", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"hidden" : 1,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"midpoints" : [ 573.833313, 500.0, 1286.5, 500.0 ],
									"source" : [ "obj-8", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"midpoints" : [ 525.166687, 505.5, 880.5, 505.5 ],
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 3 ],
									"source" : [ "obj-81", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 274.5, 148.0, 83.5, 148.0 ],
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 25.5, 193.0, 59.0, 22.0 ],
					"presentation_rect" : [ 25.5, 193.0, 0.0, 0.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p Allpass"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 6,
							"architecture" : "x86",
							"modernui" : 1
						}
,
						"rect" : [ 0.0, 26.0, 1612.0, 885.0 ],
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
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1389.0, 521.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Group Delay",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 6,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ 59.0, 104.0, 1020.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 50.0, 100.0, 60.0, 22.0 ],
													"style" : "",
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 153.0, 243.0, 834.0, 35.0 ],
													"style" : "",
													"text" : "defineygrid 0 5000 10000 15000 20000 25000 30000, defineylabels 0 \"0\" 5000 \"5000\" 10000 \"10000\" 15000 \"15000\" 20000 \"20000\" 25000 \"25000\" 30000 \"30000\""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-52",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 71.0, 147.0, 848.0, 22.0 ],
													"style" : "",
													"text" : "margins 20 20 20 50, definedomain 0 20480 linear, defineline curve, definerange 0 30000, numpoints 88, defineline linear, definepoint none, definethickness 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-49",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 109.0, 184.0, 582.0, 52.0 ],
													"style" : "",
													"text" : "definexgrid 1875 3045 3750 4350 4880 5275 5645 5885 6250 8150 9185 10000 10600 11075 11533 11866 12237 12500 14366 15533 16250 16950 17400 17770 18125 18500 18850 $1, definexlabels 4350 \"50\" 6250 \"100\" 10600 \"500\" 12500 1K 16950 5K 18850 10K"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-57",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 105.0, 338.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"order" : 1,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"order" : 2,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"order" : 0,
													"source" : [ "obj-56", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 1297.0, 510.0, 71.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p plotSetup"
								}

							}
, 							{
								"box" : 								{
									"domainlabel" : "Frequency_(Hz)",
									"id" : "obj-26",
									"margins" : [ 20.0, 20.0, 20.0, 50.0 ],
									"maxclass" : "plot~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"numpoints" : 88,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1282.0, 543.0, 364.0, 194.0 ],
									"rangelabel" : "delay_µsec",
									"subplots" : [ 										{
											"color" : [ 0.4, 0.4, 0.75, 1.0 ],
											"thickness" : 1.0,
											"point_style" : "none",
											"line_style" : "linear",
											"number_style" : "none",
											"filter" : "none",
											"domain_start" : 0.0,
											"domain_end" : 20480.0,
											"domain_style" : "linear",
											"domain_markers" : [ 1875.0, 3045.0, 3750.0, 4350.0, 4880.0, 5275.0, 5645.0, 5885.0, 6250.0, 8150.0, 9185.0, 10000.0, 10600.0, 11075.0, 11533.0, 11866.0, 12237.0, 12500.0, 14366.0, 15533.0, 16250.0, 16950.0, 17400.0, 17770.0, 18125.0, 18500.0, 18850.0, 12097.0 ],
											"domain_labels" : [ 4350.0, "50", 6250.0, "100", 10600.0, "500", 12500.0, "1K", 16950.0, "5K", 18850.0, "10K" ],
											"range_start" : 0.0,
											"range_end" : 30000.0,
											"range_style" : "linear",
											"range_markers" : [ 0.0, 5000.0, 10000.0, 15000.0, 20000.0, 25000.0, 30000.0 ],
											"range_labels" : [ 0.0, "0", 5000.0, "5000", 10000.0, "10000", 15000.0, "15000", 20000.0, "20000", 25000.0, "25000", 30000.0, "30000" ],
											"origin_x" : 0.0,
											"origin_y" : 0.0
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 934.5, 234.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Plot Generation",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-69",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 983.0, 521.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Phase Response",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 579.0, 521.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Frequency Response",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 6,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ 59.0, 104.0, 1020.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 50.0, 100.0, 60.0, 22.0 ],
													"style" : "",
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 153.0, 243.0, 366.0, 22.0 ],
													"style" : "",
													"text" : "defineygrid -360 -180 0, defineylabels -180 \"-180\" 0 \"0\" -360 \"-360\""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-52",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 71.0, 147.0, 839.0, 22.0 ],
													"style" : "",
													"text" : "margins 20 20 20 50, definedomain 0 20480 linear, defineline curve, definerange -360 0, numpoints 88, defineline linear, definepoint none, definethickness 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-49",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 109.0, 184.0, 582.0, 52.0 ],
													"style" : "",
													"text" : "definexgrid 1875 3045 3750 4350 4880 5275 5645 5885 6250 8150 9185 10000 10600 11075 11533 11866 12237 12500 14366 15533 16250 16950 17400 17770 18125 18500 18850 $1, definexlabels 4350 \"50\" 6250 \"100\" 10600 \"500\" 12500 1K 16950 5K 18850 10K"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-57",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 105.0, 338.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"order" : 1,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"order" : 2,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"order" : 0,
													"source" : [ "obj-56", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 891.0, 510.0, 71.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p plotSetup"
								}

							}
, 							{
								"box" : 								{
									"domainlabel" : "Frequency_(Hz)",
									"id" : "obj-64",
									"margins" : [ 20.0, 20.0, 20.0, 50.0 ],
									"maxclass" : "plot~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"numpoints" : 88,
									"outlettype" : [ "" ],
									"patching_rect" : [ 876.0, 543.0, 364.0, 194.0 ],
									"rangelabel" : "Phase_(Radians)",
									"subplots" : [ 										{
											"color" : [ 0.4, 0.4, 0.75, 1.0 ],
											"thickness" : 1.0,
											"point_style" : "none",
											"line_style" : "linear",
											"number_style" : "none",
											"filter" : "none",
											"domain_start" : 0.0,
											"domain_end" : 20480.0,
											"domain_style" : "linear",
											"domain_markers" : [ 1875.0, 3045.0, 3750.0, 4350.0, 4880.0, 5275.0, 5645.0, 5885.0, 6250.0, 8150.0, 9185.0, 10000.0, 10600.0, 11075.0, 11533.0, 11866.0, 12237.0, 12500.0, 14366.0, 15533.0, 16250.0, 16950.0, 17400.0, 17770.0, 18125.0, 18500.0, 18850.0, 12097.0 ],
											"domain_labels" : [ 4350.0, "50", 6250.0, "100", 10600.0, "500", 12500.0, "1K", 16950.0, "5K", 18850.0, "10K" ],
											"range_start" : -360.0,
											"range_end" : 0.0,
											"range_style" : "linear",
											"range_markers" : [ -360.0, -180.0, 0.0 ],
											"range_labels" : [ -180.0, "-180", 0.0, "0", -360.0, "-360" ],
											"origin_x" : 0.0,
											"origin_y" : 0.0
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 6,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 50.0, 100.0, 60.0, 22.0 ],
													"style" : "",
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 153.0, 243.0, 582.0, 35.0 ],
													"style" : "",
													"text" : "defineygrid 24 18 12 6 0 -6 -12 -18 -24, defineylabels 24 \"24\" 18 \"18\" 12 \"12\" 6 \"6\" 0 \"0 dB\" -6 \"-6\" -12 \"-12\" -18 \"-18\" -24 \"-24\""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-52",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 71.0, 147.0, 561.0, 35.0 ],
													"style" : "",
													"text" : "margins 20 20 20 50, definedomain 0 20480 linear, defineline curve, definerange -24 24, numpoints 88, defineline linear, definepoint none, definethickness 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-49",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 109.0, 184.0, 582.0, 52.0 ],
													"style" : "",
													"text" : "definexgrid 1875 3045 3750 4350 4880 5275 5645 5885 6250 8150 9185 10000 10600 11075 11533 11866 12237 12500 14366 15533 16250 16950 17400 17770 18125 18500 18850 $1, definexlabels 4350 \"50\" 6250 \"100\" 10600 \"500\" 12500 1K 16950 5K 18850 10K"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-57",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 105.0, 338.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"order" : 1,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"order" : 2,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"order" : 0,
													"source" : [ "obj-56", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 487.0, 510.0, 71.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p plotSetup"
								}

							}
, 							{
								"box" : 								{
									"domainlabel" : "Frequency_(Hz)",
									"id" : "obj-46",
									"margins" : [ 20.0, 20.0, 20.0, 50.0 ],
									"maxclass" : "plot~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"numpoints" : 88,
									"outlettype" : [ "" ],
									"patching_rect" : [ 472.0, 543.0, 364.0, 194.0 ],
									"rangelabel" : "Amplitude_(dB)",
									"subplots" : [ 										{
											"color" : [ 0.4, 0.4, 0.75, 1.0 ],
											"thickness" : 1.0,
											"point_style" : "none",
											"line_style" : "linear",
											"number_style" : "none",
											"filter" : "none",
											"domain_start" : 0.0,
											"domain_end" : 20480.0,
											"domain_style" : "linear",
											"domain_markers" : [ 1875.0, 3045.0, 3750.0, 4350.0, 4880.0, 5275.0, 5645.0, 5885.0, 6250.0, 8150.0, 9185.0, 10000.0, 10600.0, 11075.0, 11533.0, 11866.0, 12237.0, 12500.0, 14366.0, 15533.0, 16250.0, 16950.0, 17400.0, 17770.0, 18125.0, 18500.0, 18850.0, 12097.0 ],
											"domain_labels" : [ 4350.0, "50", 6250.0, "100", 10600.0, "500", 12500.0, "1K", 16950.0, "5K", 18850.0, "10K" ],
											"range_start" : -24.0,
											"range_end" : 24.0,
											"range_style" : "linear",
											"range_markers" : [ 24.0, 18.0, 12.0, 6.0, 0.0, -6.0, -12.0, -18.0, -24.0 ],
											"range_labels" : [ 24.0, "24", 18.0, "18", 12.0, "12", 6.0, "6", 0.0, "0 dB", -6.0, "-6", -12.0, "-12", -18.0, "-18", -24.0, "-24" ],
											"origin_x" : 0.0,
											"origin_y" : 0.0
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "FullPacket" ],
									"patching_rect" : [ 472.0, 476.0, 165.0, 22.0 ],
									"style" : "",
									"text" : "o.route /dBs /degrees /Group"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-1",
									"linecount" : 14,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 472.0, 256.0, 1231.0, 209.0 ],
									"text" : "/freqs = round(10*pow(pow(2,.125),aseq(0,88))),\n/wS = 2*pi()*/freqs / /Fs,\n/phiS = 4*pow(sin(/wS / 2),2),\n/dBs = 10*log10(pow(/b0+/b1+/b2,2) + (/b0 * /b2 * /phiS - (/b1*(/b0+/b2)+4*/b0*/b2))*/phiS) - 10*log10(pow(1-/a1-/a2,2)+(-/a2*/phiS - (-/a1*(1-/a2)+4*-/a2))*/phiS),\n/omega = 2 * pi() * /Q / (4* /Fs),\n/alfa = sin(/w) / (2* /Q),\n/BB1 = 1 +cos(/omega),\n/BB2 = (1 +cos(/omega)) / 2.0,\n/phase = atan2( ( ( -/a1  -  /a0 * /BB1 -  /a2 * /BB1 +  /a1 * /BB2 + 2 * ( -/a0 * /BB2 -  /a2) * cos( /wS) ) * sin( /wS)  /  ( 1 + /BB1 * /BB1 + /BB2 * /BB2 + 2 * ( /BB1  + /BB1 * /BB2) * cos( /wS) + 2 * /BB2 * cos(2 * /wS) ) ), (  /a0  -  /a1 * /BB1 -  /a2 * /BB2 + ( /a0 * /BB1 -  /a1 *(1 + /BB2) -  /a2 * /BB1) * cos( /wS) + ( /a0 * /BB2 -  /a2) * cos(2 * /wS) ) / ( 1 + /BB1 * /BB1 + /BB2 * /BB2 + 2 * ( ( /BB1 + /BB1 * /BB2) * cos( /wS) + /BB2 * cos(2 * /wS) ) )) * 2,\n/degrees = /phase *360 / (2*pi()),\n/Group = map(lambda([i], (-((/phase[[i+1]] - /phase[[i-1]]) / (/freqs[[i+1]] - /freqs[[i-1]])) / 360)*58000000  ), aseq(1, 87)),\n/Group=list(0, /Group, 0)",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-81",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 265.0, 116.0, 31.0, 22.0 ],
									"style" : "",
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-80",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 265.0, 61.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Sample Rate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 74.0, 234.0, 364.0, 20.0 ],
									"style" : "",
									"text" : "Biquad Coefficient Calculation",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-167",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 196.0, 0.0, 25.0, 22.0 ],
									"style" : "",
									"text" : "r g"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-166",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 133.0, 0.0, 27.0, 22.0 ],
									"style" : "",
									"text" : "r Q"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-163",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 74.0, 0.0, 21.0, 22.0 ],
									"style" : "",
									"text" : "r f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-82",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 230.0, 421.0, 160.0, 47.0 ],
									"style" : "",
									"text" : "Note: A and B coeficients are swapped.  /list reorders them for use with biquad~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 152.0, 485.0, 60.0, 22.0 ],
									"style" : "",
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 621.0, 12.0, 60.0, 22.0 ],
									"style" : "",
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 152.0, 513.0, 48.0, 22.0 ],
									"style" : "",
									"text" : "display"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-41",
									"maxclass" : "filtergraph~",
									"nfilters" : 1,
									"numinlets" : 8,
									"numoutlets" : 7,
									"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 74.0, 543.0, 310.0, 194.0 ],
									"setfilter" : [ 0, 0, 1, 0, 0, 40.0, 1.0, 2.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 265.0, 83.0, 50.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-37",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 621.0, 41.0, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 621.0, 69.0, 69.0, 22.0 ],
									"style" : "",
									"text" : "adstatus sr"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 36.0,
									"id" : "obj-23",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 74.0, 9.0, 422.0, 47.0 ],
									"style" : "",
									"text" : "Notch"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 74.0, 513.0, 69.0, 22.0 ],
									"style" : "",
									"text" : "o.route /list"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-18",
									"linecount" : 9,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 74.0, 256.0, 364.0, 141.0 ],
									"text" : "/w = 2*pi() * /f / /Fs,\n/alpha = sin( /w) / (2* /Q),\n/a0 = 1,\n/a1 = 2*cos(/w)/(1+ /alpha),\n/a2 = (/alpha - 1) / (/alpha + 1),\n/b0 = 1 / (/alpha + 1),\n/b1 = -2*cos(/w) / (1+ /alpha),\n/b2 = 1 / (/alpha + 1),\n/list = [/b0, /b1, /b2, -/a1, -/a2]",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-17",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 196.0, 83.0, 57.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-16",
									"maxclass" : "flonum",
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 133.0, 83.0, 57.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-15",
									"maxclass" : "flonum",
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 74.0, 83.0, 57.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 196.0, 116.0, 31.0, 22.0 ],
									"style" : "",
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 133.0, 116.0, 31.0, 22.0 ],
									"style" : "",
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 74.0, 173.0, 222.0, 22.0 ],
									"style" : "",
									"text" : "o.pack /f /Q /g /Fs"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 196.0, 61.0, 50.0, 20.0 ],
									"style" : "",
									"text" : "Gain"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 133.0, 61.0, 50.0, 20.0 ],
									"style" : "",
									"text" : "Q"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 74.0, 61.0, 50.0, 20.0 ],
									"style" : "",
									"text" : "Freq"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"source" : [ "obj-12", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 142.5, 146.0, 83.5, 146.0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 2 ],
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 205.5, 147.0, 83.5, 147.0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"source" : [ "obj-163", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"source" : [ "obj-166", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"source" : [ "obj-167", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 83.5, 407.0, 458.5, 407.0, 458.5, 245.0, 481.5, 245.0 ],
									"order" : 0,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"order" : 1,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"hidden" : 1,
									"source" : [ "obj-35", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"hidden" : 1,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"midpoints" : [ 578.833313, 500.0, 1291.5, 500.0 ],
									"source" : [ "obj-8", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"midpoints" : [ 530.166687, 505.5, 885.5, 505.5 ],
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 3 ],
									"source" : [ "obj-81", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 274.5, 148.0, 83.5, 148.0 ],
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 24.5, 155.0, 52.0, 22.0 ],
					"presentation_rect" : [ 18.5, 159.0, 0.0, 0.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p Notch"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 6,
							"architecture" : "x86",
							"modernui" : 1
						}
,
						"rect" : [ 0.0, 26.0, 1612.0, 885.0 ],
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
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1401.0, 521.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Group Delay",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 6,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ 59.0, 104.0, 1020.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 50.0, 100.0, 60.0, 22.0 ],
													"style" : "",
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 153.0, 243.0, 834.0, 35.0 ],
													"style" : "",
													"text" : "defineygrid 0 5000 10000 15000 20000 25000 30000, defineylabels 0 \"0\" 5000 \"5000\" 10000 \"10000\" 15000 \"15000\" 20000 \"20000\" 25000 \"25000\" 30000 \"30000\""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-52",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 71.0, 147.0, 848.0, 22.0 ],
													"style" : "",
													"text" : "margins 20 20 20 50, definedomain 0 20480 linear, defineline curve, definerange 0 30000, numpoints 88, defineline linear, definepoint none, definethickness 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-49",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 109.0, 184.0, 582.0, 52.0 ],
													"style" : "",
													"text" : "definexgrid 1875 3045 3750 4350 4880 5275 5645 5885 6250 8150 9185 10000 10600 11075 11533 11866 12237 12500 14366 15533 16250 16950 17400 17770 18125 18500 18850 $1, definexlabels 4350 \"50\" 6250 \"100\" 10600 \"500\" 12500 1K 16950 5K 18850 10K"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-57",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 105.0, 338.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"order" : 1,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"order" : 2,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"order" : 0,
													"source" : [ "obj-56", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 1309.0, 510.0, 71.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p plotSetup"
								}

							}
, 							{
								"box" : 								{
									"domainlabel" : "Frequency_(Hz)",
									"id" : "obj-26",
									"margins" : [ 20.0, 20.0, 20.0, 50.0 ],
									"maxclass" : "plot~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"numpoints" : 88,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1294.0, 543.0, 364.0, 194.0 ],
									"rangelabel" : "delay_µsec",
									"subplots" : [ 										{
											"color" : [ 0.4, 0.4, 0.75, 1.0 ],
											"thickness" : 1.0,
											"point_style" : "none",
											"line_style" : "linear",
											"number_style" : "none",
											"filter" : "none",
											"domain_start" : 0.0,
											"domain_end" : 20480.0,
											"domain_style" : "linear",
											"domain_markers" : [ 1875.0, 3045.0, 3750.0, 4350.0, 4880.0, 5275.0, 5645.0, 5885.0, 6250.0, 8150.0, 9185.0, 10000.0, 10600.0, 11075.0, 11533.0, 11866.0, 12237.0, 12500.0, 14366.0, 15533.0, 16250.0, 16950.0, 17400.0, 17770.0, 18125.0, 18500.0, 18850.0, 12097.0 ],
											"domain_labels" : [ 4350.0, "50", 6250.0, "100", 10600.0, "500", 12500.0, "1K", 16950.0, "5K", 18850.0, "10K" ],
											"range_start" : 0.0,
											"range_end" : 30000.0,
											"range_style" : "linear",
											"range_markers" : [ 0.0, 5000.0, 10000.0, 15000.0, 20000.0, 25000.0, 30000.0 ],
											"range_labels" : [ 0.0, "0", 5000.0, "5000", 10000.0, "10000", 15000.0, "15000", 20000.0, "20000", 25000.0, "25000", 30000.0, "30000" ],
											"origin_x" : 0.0,
											"origin_y" : 0.0
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 946.5, 234.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Plot Generation",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-69",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 995.0, 521.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Phase Response",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 591.0, 521.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Frequency Response",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 6,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ 59.0, 104.0, 1020.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 50.0, 100.0, 60.0, 22.0 ],
													"style" : "",
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 153.0, 243.0, 366.0, 22.0 ],
													"style" : "",
													"text" : "defineygrid -360 -180 0, defineylabels -180 \"-180\" 0 \"0\" -360 \"-360\""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-52",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 71.0, 147.0, 839.0, 22.0 ],
													"style" : "",
													"text" : "margins 20 20 20 50, definedomain 0 20480 linear, defineline curve, definerange -360 0, numpoints 88, defineline linear, definepoint none, definethickness 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-49",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 109.0, 184.0, 582.0, 52.0 ],
													"style" : "",
													"text" : "definexgrid 1875 3045 3750 4350 4880 5275 5645 5885 6250 8150 9185 10000 10600 11075 11533 11866 12237 12500 14366 15533 16250 16950 17400 17770 18125 18500 18850 $1, definexlabels 4350 \"50\" 6250 \"100\" 10600 \"500\" 12500 1K 16950 5K 18850 10K"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-57",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 105.0, 338.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"order" : 1,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"order" : 2,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"order" : 0,
													"source" : [ "obj-56", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 903.0, 510.0, 71.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p plotSetup"
								}

							}
, 							{
								"box" : 								{
									"domainlabel" : "Frequency_(Hz)",
									"id" : "obj-64",
									"margins" : [ 20.0, 20.0, 20.0, 50.0 ],
									"maxclass" : "plot~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"numpoints" : 88,
									"outlettype" : [ "" ],
									"patching_rect" : [ 888.0, 543.0, 364.0, 194.0 ],
									"rangelabel" : "Phase_(Radians)",
									"subplots" : [ 										{
											"color" : [ 0.4, 0.4, 0.75, 1.0 ],
											"thickness" : 1.0,
											"point_style" : "none",
											"line_style" : "linear",
											"number_style" : "none",
											"filter" : "none",
											"domain_start" : 0.0,
											"domain_end" : 20480.0,
											"domain_style" : "linear",
											"domain_markers" : [ 1875.0, 3045.0, 3750.0, 4350.0, 4880.0, 5275.0, 5645.0, 5885.0, 6250.0, 8150.0, 9185.0, 10000.0, 10600.0, 11075.0, 11533.0, 11866.0, 12237.0, 12500.0, 14366.0, 15533.0, 16250.0, 16950.0, 17400.0, 17770.0, 18125.0, 18500.0, 18850.0, 12097.0 ],
											"domain_labels" : [ 4350.0, "50", 6250.0, "100", 10600.0, "500", 12500.0, "1K", 16950.0, "5K", 18850.0, "10K" ],
											"range_start" : -360.0,
											"range_end" : 0.0,
											"range_style" : "linear",
											"range_markers" : [ -360.0, -180.0, 0.0 ],
											"range_labels" : [ -180.0, "-180", 0.0, "0", -360.0, "-360" ],
											"origin_x" : 0.0,
											"origin_y" : 0.0
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 6,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 50.0, 100.0, 60.0, 22.0 ],
													"style" : "",
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 153.0, 243.0, 582.0, 35.0 ],
													"style" : "",
													"text" : "defineygrid 24 18 12 6 0 -6 -12 -18 -24, defineylabels 24 \"24\" 18 \"18\" 12 \"12\" 6 \"6\" 0 \"0 dB\" -6 \"-6\" -12 \"-12\" -18 \"-18\" -24 \"-24\""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-52",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 71.0, 147.0, 561.0, 35.0 ],
													"style" : "",
													"text" : "margins 20 20 20 50, definedomain 0 20480 linear, defineline curve, definerange -24 24, numpoints 88, defineline linear, definepoint none, definethickness 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-49",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 109.0, 184.0, 582.0, 52.0 ],
													"style" : "",
													"text" : "definexgrid 1875 3045 3750 4350 4880 5275 5645 5885 6250 8150 9185 10000 10600 11075 11533 11866 12237 12500 14366 15533 16250 16950 17400 17770 18125 18500 18850 $1, definexlabels 4350 \"50\" 6250 \"100\" 10600 \"500\" 12500 1K 16950 5K 18850 10K"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-57",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 105.0, 338.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"order" : 1,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"order" : 2,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"order" : 0,
													"source" : [ "obj-56", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 499.0, 510.0, 71.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p plotSetup"
								}

							}
, 							{
								"box" : 								{
									"domainlabel" : "Frequency_(Hz)",
									"id" : "obj-46",
									"margins" : [ 20.0, 20.0, 20.0, 50.0 ],
									"maxclass" : "plot~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"numpoints" : 88,
									"outlettype" : [ "" ],
									"patching_rect" : [ 484.0, 543.0, 364.0, 194.0 ],
									"rangelabel" : "Amplitude_(dB)",
									"subplots" : [ 										{
											"color" : [ 0.4, 0.4, 0.75, 1.0 ],
											"thickness" : 1.0,
											"point_style" : "none",
											"line_style" : "linear",
											"number_style" : "none",
											"filter" : "none",
											"domain_start" : 0.0,
											"domain_end" : 20480.0,
											"domain_style" : "linear",
											"domain_markers" : [ 1875.0, 3045.0, 3750.0, 4350.0, 4880.0, 5275.0, 5645.0, 5885.0, 6250.0, 8150.0, 9185.0, 10000.0, 10600.0, 11075.0, 11533.0, 11866.0, 12237.0, 12500.0, 14366.0, 15533.0, 16250.0, 16950.0, 17400.0, 17770.0, 18125.0, 18500.0, 18850.0, 12097.0 ],
											"domain_labels" : [ 4350.0, "50", 6250.0, "100", 10600.0, "500", 12500.0, "1K", 16950.0, "5K", 18850.0, "10K" ],
											"range_start" : -24.0,
											"range_end" : 24.0,
											"range_style" : "linear",
											"range_markers" : [ 24.0, 18.0, 12.0, 6.0, 0.0, -6.0, -12.0, -18.0, -24.0 ],
											"range_labels" : [ 24.0, "24", 18.0, "18", 12.0, "12", 6.0, "6", 0.0, "0 dB", -6.0, "-6", -12.0, "-12", -18.0, "-18", -24.0, "-24" ],
											"origin_x" : 0.0,
											"origin_y" : 0.0
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "FullPacket" ],
									"patching_rect" : [ 484.0, 476.0, 165.0, 22.0 ],
									"style" : "",
									"text" : "o.route /dBs /degrees /Group"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-1",
									"linecount" : 14,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 484.0, 256.0, 1231.0, 209.0 ],
									"text" : "/freqs = round(10*pow(pow(2,.125),aseq(0,88))),\n/wS = 2*pi()*/freqs / /Fs,\n/phiS = 4*pow(sin(/wS / 2),2),\n/dBs = 10*log10(pow(/b0+/b1+/b2,2) + (/b0 * /b2 * /phiS - (/b1*(/b0+/b2)+4*/b0*/b2))*/phiS) - 10*log10(pow(1-/a1-/a2,2)+(-/a2*/phiS - (-/a1*(1-/a2)+4*-/a2))*/phiS),\n/omega = 2 * pi() * /Q / (4* /Fs),\n/alfa = sin(/w) / (2* /Q),\n/BB1 = 1 +cos(/omega),\n/BB2 = (1 +cos(/omega)) / 2.0,\n/phase = atan2( ( ( -/a1  -  /a0 * /BB1 -  /a2 * /BB1 +  /a1 * /BB2 + 2 * ( -/a0 * /BB2 -  /a2) * cos( /wS) ) * sin( /wS)  /  ( 1 + /BB1 * /BB1 + /BB2 * /BB2 + 2 * ( /BB1  + /BB1 * /BB2) * cos( /wS) + 2 * /BB2 * cos(2 * /wS) ) ), (  /a0  -  /a1 * /BB1 -  /a2 * /BB2 + ( /a0 * /BB1 -  /a1 *(1 + /BB2) -  /a2 * /BB1) * cos( /wS) + ( /a0 * /BB2 -  /a2) * cos(2 * /wS) ) / ( 1 + /BB1 * /BB1 + /BB2 * /BB2 + 2 * ( ( /BB1 + /BB1 * /BB2) * cos( /wS) + /BB2 * cos(2 * /wS) ) )) * 2,\n/degrees = /phase *360 / (2*pi()),\n/Group = map(lambda([i], (-((/phase[[i+1]] - /phase[[i-1]]) / (/freqs[[i+1]] - /freqs[[i-1]])) / 360)*58000000  ), aseq(1, 87)),\n/Group=list(0, /Group, 0)",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-81",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 265.0, 116.0, 31.0, 22.0 ],
									"style" : "",
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-80",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 265.0, 61.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Sample Rate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 74.0, 234.0, 364.0, 20.0 ],
									"style" : "",
									"text" : "Biquad Coefficient Calculation",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-167",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 196.0, 0.0, 25.0, 22.0 ],
									"style" : "",
									"text" : "r g"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-166",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 133.0, 0.0, 27.0, 22.0 ],
									"style" : "",
									"text" : "r Q"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-163",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 74.0, 0.0, 21.0, 22.0 ],
									"style" : "",
									"text" : "r f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-82",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 230.0, 421.0, 160.0, 47.0 ],
									"style" : "",
									"text" : "Note: A and B coeficients are swapped.  /list reorders them for use with biquad~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 152.0, 485.0, 60.0, 22.0 ],
									"style" : "",
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 621.0, 12.0, 60.0, 22.0 ],
									"style" : "",
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 152.0, 513.0, 48.0, 22.0 ],
									"style" : "",
									"text" : "display"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-41",
									"maxclass" : "filtergraph~",
									"nfilters" : 1,
									"numinlets" : 8,
									"numoutlets" : 7,
									"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 74.0, 543.0, 310.0, 194.0 ],
									"setfilter" : [ 0, 0, 1, 0, 0, 40.0, 1.0, 2.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 265.0, 83.0, 50.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-37",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 621.0, 41.0, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 621.0, 69.0, 69.0, 22.0 ],
									"style" : "",
									"text" : "adstatus sr"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 36.0,
									"id" : "obj-23",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 74.0, 9.0, 422.0, 47.0 ],
									"style" : "",
									"text" : "Bandpass Filter #2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 74.0, 513.0, 69.0, 22.0 ],
									"style" : "",
									"text" : "o.route /list"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-18",
									"linecount" : 9,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 74.0, 256.0, 364.0, 141.0 ],
									"text" : "/w = 2*pi() * /f / /Fs,\n/alpha = sin( /w) / (2* /Q),\n/a0 = 1,\n/a1 = 2*cos(/w)/(1+ /alpha),\n/a2 = (/alpha - 1) / (/alpha + 1),\n/b0 = /alpha / (/alpha + 1),\n/b1 = 0,\n/b2 = -/alpha / (/alpha + 1),\n/list = [/b0, /b1, /b2, -/a1, -/a2]",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-17",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 196.0, 83.0, 57.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-16",
									"maxclass" : "flonum",
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 133.0, 83.0, 57.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-15",
									"maxclass" : "flonum",
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 74.0, 83.0, 57.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 196.0, 116.0, 31.0, 22.0 ],
									"style" : "",
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 133.0, 116.0, 31.0, 22.0 ],
									"style" : "",
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 74.0, 173.0, 222.0, 22.0 ],
									"style" : "",
									"text" : "o.pack /f /Q /g /Fs"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 196.0, 61.0, 50.0, 20.0 ],
									"style" : "",
									"text" : "Gain"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 133.0, 61.0, 50.0, 20.0 ],
									"style" : "",
									"text" : "Q"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 74.0, 61.0, 50.0, 20.0 ],
									"style" : "",
									"text" : "Freq"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"source" : [ "obj-12", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 142.5, 146.0, 83.5, 146.0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 2 ],
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 205.5, 147.0, 83.5, 147.0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"source" : [ "obj-163", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"source" : [ "obj-166", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"source" : [ "obj-167", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 83.5, 407.0, 457.5, 407.0, 457.5, 245.0, 493.5, 245.0 ],
									"order" : 0,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"order" : 1,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"hidden" : 1,
									"source" : [ "obj-35", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"hidden" : 1,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"midpoints" : [ 590.833313, 500.0, 1303.5, 500.0 ],
									"source" : [ "obj-8", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"midpoints" : [ 542.166687, 505.5, 897.5, 505.5 ],
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 3 ],
									"source" : [ "obj-81", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 274.5, 148.0, 83.5, 148.0 ],
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 20.5, 115.0, 81.0, 22.0 ],
					"presentation_rect" : [ 17.5, 121.0, 0.0, 0.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p Bandpass2"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 6,
							"architecture" : "x86",
							"modernui" : 1
						}
,
						"rect" : [ 0.0, 26.0, 1612.0, 885.0 ],
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
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1381.0, 521.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Group Delay",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 6,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ 59.0, 104.0, 1020.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 50.0, 100.0, 60.0, 22.0 ],
													"style" : "",
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 153.0, 243.0, 834.0, 35.0 ],
													"style" : "",
													"text" : "defineygrid 0 5000 10000 15000 20000 25000 30000, defineylabels 0 \"0\" 5000 \"5000\" 10000 \"10000\" 15000 \"15000\" 20000 \"20000\" 25000 \"25000\" 30000 \"30000\""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-52",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 71.0, 147.0, 848.0, 22.0 ],
													"style" : "",
													"text" : "margins 20 20 20 50, definedomain 0 20480 linear, defineline curve, definerange 0 30000, numpoints 88, defineline linear, definepoint none, definethickness 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-49",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 109.0, 184.0, 582.0, 52.0 ],
													"style" : "",
													"text" : "definexgrid 1875 3045 3750 4350 4880 5275 5645 5885 6250 8150 9185 10000 10600 11075 11533 11866 12237 12500 14366 15533 16250 16950 17400 17770 18125 18500 18850 $1, definexlabels 4350 \"50\" 6250 \"100\" 10600 \"500\" 12500 1K 16950 5K 18850 10K"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-57",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 105.0, 338.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"order" : 1,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"order" : 2,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"order" : 0,
													"source" : [ "obj-56", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 1289.0, 510.0, 71.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p plotSetup"
								}

							}
, 							{
								"box" : 								{
									"domainlabel" : "Frequency_(Hz)",
									"id" : "obj-26",
									"margins" : [ 20.0, 20.0, 20.0, 50.0 ],
									"maxclass" : "plot~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"numpoints" : 88,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1274.0, 543.0, 364.0, 194.0 ],
									"rangelabel" : "delay_µsec",
									"subplots" : [ 										{
											"color" : [ 0.4, 0.4, 0.75, 1.0 ],
											"thickness" : 1.0,
											"point_style" : "none",
											"line_style" : "linear",
											"number_style" : "none",
											"filter" : "none",
											"domain_start" : 0.0,
											"domain_end" : 20480.0,
											"domain_style" : "linear",
											"domain_markers" : [ 1875.0, 3045.0, 3750.0, 4350.0, 4880.0, 5275.0, 5645.0, 5885.0, 6250.0, 8150.0, 9185.0, 10000.0, 10600.0, 11075.0, 11533.0, 11866.0, 12237.0, 12500.0, 14366.0, 15533.0, 16250.0, 16950.0, 17400.0, 17770.0, 18125.0, 18500.0, 18850.0, 12097.0 ],
											"domain_labels" : [ 4350.0, "50", 6250.0, "100", 10600.0, "500", 12500.0, "1K", 16950.0, "5K", 18850.0, "10K" ],
											"range_start" : 0.0,
											"range_end" : 30000.0,
											"range_style" : "linear",
											"range_markers" : [ 0.0, 5000.0, 10000.0, 15000.0, 20000.0, 25000.0, 30000.0 ],
											"range_labels" : [ 0.0, "0", 5000.0, "5000", 10000.0, "10000", 15000.0, "15000", 20000.0, "20000", 25000.0, "25000", 30000.0, "30000" ],
											"origin_x" : 0.0,
											"origin_y" : 0.0
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 926.5, 234.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Plot Generation",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-69",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 975.0, 521.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Phase Response",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 571.0, 521.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Frequency Response",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 6,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ 59.0, 104.0, 1020.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 50.0, 100.0, 60.0, 22.0 ],
													"style" : "",
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 153.0, 243.0, 366.0, 22.0 ],
													"style" : "",
													"text" : "defineygrid -360 -180 0, defineylabels -180 \"-180\" 0 \"0\" -360 \"-360\""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-52",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 71.0, 147.0, 839.0, 22.0 ],
													"style" : "",
													"text" : "margins 20 20 20 50, definedomain 0 20480 linear, defineline curve, definerange -360 0, numpoints 88, defineline linear, definepoint none, definethickness 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-49",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 109.0, 184.0, 582.0, 52.0 ],
													"style" : "",
													"text" : "definexgrid 1875 3045 3750 4350 4880 5275 5645 5885 6250 8150 9185 10000 10600 11075 11533 11866 12237 12500 14366 15533 16250 16950 17400 17770 18125 18500 18850 $1, definexlabels 4350 \"50\" 6250 \"100\" 10600 \"500\" 12500 1K 16950 5K 18850 10K"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-57",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 105.0, 338.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"order" : 1,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"order" : 2,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"order" : 0,
													"source" : [ "obj-56", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 883.0, 510.0, 71.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p plotSetup"
								}

							}
, 							{
								"box" : 								{
									"domainlabel" : "Frequency_(Hz)",
									"id" : "obj-64",
									"margins" : [ 20.0, 20.0, 20.0, 50.0 ],
									"maxclass" : "plot~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"numpoints" : 88,
									"outlettype" : [ "" ],
									"patching_rect" : [ 868.0, 543.0, 364.0, 194.0 ],
									"rangelabel" : "Phase_(Radians)",
									"subplots" : [ 										{
											"color" : [ 0.4, 0.4, 0.75, 1.0 ],
											"thickness" : 1.0,
											"point_style" : "none",
											"line_style" : "linear",
											"number_style" : "none",
											"filter" : "none",
											"domain_start" : 0.0,
											"domain_end" : 20480.0,
											"domain_style" : "linear",
											"domain_markers" : [ 1875.0, 3045.0, 3750.0, 4350.0, 4880.0, 5275.0, 5645.0, 5885.0, 6250.0, 8150.0, 9185.0, 10000.0, 10600.0, 11075.0, 11533.0, 11866.0, 12237.0, 12500.0, 14366.0, 15533.0, 16250.0, 16950.0, 17400.0, 17770.0, 18125.0, 18500.0, 18850.0, 12097.0 ],
											"domain_labels" : [ 4350.0, "50", 6250.0, "100", 10600.0, "500", 12500.0, "1K", 16950.0, "5K", 18850.0, "10K" ],
											"range_start" : -360.0,
											"range_end" : 0.0,
											"range_style" : "linear",
											"range_markers" : [ -360.0, -180.0, 0.0 ],
											"range_labels" : [ -180.0, "-180", 0.0, "0", -360.0, "-360" ],
											"origin_x" : 0.0,
											"origin_y" : 0.0
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 6,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 50.0, 100.0, 60.0, 22.0 ],
													"style" : "",
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 153.0, 243.0, 582.0, 35.0 ],
													"style" : "",
													"text" : "defineygrid 24 18 12 6 0 -6 -12 -18 -24, defineylabels 24 \"24\" 18 \"18\" 12 \"12\" 6 \"6\" 0 \"0 dB\" -6 \"-6\" -12 \"-12\" -18 \"-18\" -24 \"-24\""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-52",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 71.0, 147.0, 561.0, 35.0 ],
													"style" : "",
													"text" : "margins 20 20 20 50, definedomain 0 20480 linear, defineline curve, definerange -24 24, numpoints 88, defineline linear, definepoint none, definethickness 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-49",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 109.0, 184.0, 582.0, 52.0 ],
													"style" : "",
													"text" : "definexgrid 1875 3045 3750 4350 4880 5275 5645 5885 6250 8150 9185 10000 10600 11075 11533 11866 12237 12500 14366 15533 16250 16950 17400 17770 18125 18500 18850 $1, definexlabels 4350 \"50\" 6250 \"100\" 10600 \"500\" 12500 1K 16950 5K 18850 10K"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-57",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 105.0, 338.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"order" : 1,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"order" : 2,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"order" : 0,
													"source" : [ "obj-56", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 479.0, 510.0, 71.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p plotSetup"
								}

							}
, 							{
								"box" : 								{
									"domainlabel" : "Frequency_(Hz)",
									"id" : "obj-46",
									"margins" : [ 20.0, 20.0, 20.0, 50.0 ],
									"maxclass" : "plot~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"numpoints" : 88,
									"outlettype" : [ "" ],
									"patching_rect" : [ 464.0, 543.0, 364.0, 194.0 ],
									"rangelabel" : "Amplitude_(dB)",
									"subplots" : [ 										{
											"color" : [ 0.4, 0.4, 0.75, 1.0 ],
											"thickness" : 1.0,
											"point_style" : "none",
											"line_style" : "linear",
											"number_style" : "none",
											"filter" : "none",
											"domain_start" : 0.0,
											"domain_end" : 20480.0,
											"domain_style" : "linear",
											"domain_markers" : [ 1875.0, 3045.0, 3750.0, 4350.0, 4880.0, 5275.0, 5645.0, 5885.0, 6250.0, 8150.0, 9185.0, 10000.0, 10600.0, 11075.0, 11533.0, 11866.0, 12237.0, 12500.0, 14366.0, 15533.0, 16250.0, 16950.0, 17400.0, 17770.0, 18125.0, 18500.0, 18850.0, 12097.0 ],
											"domain_labels" : [ 4350.0, "50", 6250.0, "100", 10600.0, "500", 12500.0, "1K", 16950.0, "5K", 18850.0, "10K" ],
											"range_start" : -24.0,
											"range_end" : 24.0,
											"range_style" : "linear",
											"range_markers" : [ 24.0, 18.0, 12.0, 6.0, 0.0, -6.0, -12.0, -18.0, -24.0 ],
											"range_labels" : [ 24.0, "24", 18.0, "18", 12.0, "12", 6.0, "6", 0.0, "0 dB", -6.0, "-6", -12.0, "-12", -18.0, "-18", -24.0, "-24" ],
											"origin_x" : 0.0,
											"origin_y" : 0.0
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "FullPacket" ],
									"patching_rect" : [ 464.0, 476.0, 165.0, 22.0 ],
									"style" : "",
									"text" : "o.route /dBs /degrees /Group"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-1",
									"linecount" : 14,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 464.0, 256.0, 1231.0, 209.0 ],
									"text" : "/freqs = round(10*pow(pow(2,.125),aseq(0,88))),\n/wS = 2*pi()*/freqs / /Fs,\n/phiS = 4*pow(sin(/wS / 2),2),\n/dBs = 10*log10(pow(/b0+/b1+/b2,2) + (/b0 * /b2 * /phiS - (/b1*(/b0+/b2)+4*/b0*/b2))*/phiS) - 10*log10(pow(1-/a1-/a2,2)+(-/a2*/phiS - (-/a1*(1-/a2)+4*-/a2))*/phiS),\n/omega = 2 * pi() * /Q / (4* /Fs),\n/alfa = sin(/w) / (2* /Q),\n/BB1 = 1 +cos(/omega),\n/BB2 = (1 +cos(/omega)) / 2.0,\n/phase = atan2( ( ( -/a1  -  /a0 * /BB1 -  /a2 * /BB1 +  /a1 * /BB2 + 2 * ( -/a0 * /BB2 -  /a2) * cos( /wS) ) * sin( /wS)  /  ( 1 + /BB1 * /BB1 + /BB2 * /BB2 + 2 * ( /BB1  + /BB1 * /BB2) * cos( /wS) + 2 * /BB2 * cos(2 * /wS) ) ), (  /a0  -  /a1 * /BB1 -  /a2 * /BB2 + ( /a0 * /BB1 -  /a1 *(1 + /BB2) -  /a2 * /BB1) * cos( /wS) + ( /a0 * /BB2 -  /a2) * cos(2 * /wS) ) / ( 1 + /BB1 * /BB1 + /BB2 * /BB2 + 2 * ( ( /BB1 + /BB1 * /BB2) * cos( /wS) + /BB2 * cos(2 * /wS) ) )) * 2,\n/degrees = /phase *360 / (2*pi()),\n/Group = map(lambda([i], (-((/phase[[i+1]] - /phase[[i-1]]) / (/freqs[[i+1]] - /freqs[[i-1]])) / 360)*58000000  ), aseq(1, 87)),\n/Group=list(0, /Group, 0)",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-81",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 265.0, 116.0, 31.0, 22.0 ],
									"style" : "",
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-80",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 265.0, 61.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Sample Rate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 74.0, 234.0, 364.0, 20.0 ],
									"style" : "",
									"text" : "Biquad Coefficient Calculation",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-167",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 196.0, 0.0, 25.0, 22.0 ],
									"style" : "",
									"text" : "r g"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-166",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 133.0, 0.0, 27.0, 22.0 ],
									"style" : "",
									"text" : "r Q"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-163",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 74.0, 0.0, 21.0, 22.0 ],
									"style" : "",
									"text" : "r f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-82",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 230.0, 421.0, 160.0, 47.0 ],
									"style" : "",
									"text" : "Note: A and B coeficients are swapped.  /list reorders them for use with biquad~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 152.0, 485.0, 60.0, 22.0 ],
									"style" : "",
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 621.0, 12.0, 60.0, 22.0 ],
									"style" : "",
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 152.0, 513.0, 48.0, 22.0 ],
									"style" : "",
									"text" : "display"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-41",
									"maxclass" : "filtergraph~",
									"nfilters" : 1,
									"numinlets" : 8,
									"numoutlets" : 7,
									"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 74.0, 543.0, 310.0, 194.0 ],
									"setfilter" : [ 0, 0, 1, 0, 0, 40.0, 1.0, 2.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 265.0, 83.0, 50.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-37",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 621.0, 41.0, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 621.0, 69.0, 69.0, 22.0 ],
									"style" : "",
									"text" : "adstatus sr"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 36.0,
									"id" : "obj-23",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 74.0, 9.0, 422.0, 47.0 ],
									"style" : "",
									"text" : "Bandpass Filter #1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 74.0, 513.0, 69.0, 22.0 ],
									"style" : "",
									"text" : "o.route /list"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-18",
									"linecount" : 9,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 74.0, 256.0, 364.0, 141.0 ],
									"text" : "/w = 2*pi() * /f / /Fs,\n/alpha = sin( /w) / (2* /Q),\n/a0 = 1,\n/a1 = 2*cos(/w)/(1+ /alpha),\n/a2 = (/alpha - 1) / (/alpha + 1),\n/b0 = (sin(/w))/(2*(/alpha + 1)),\n/b1 = 0,\n/b2 = -(sin(/w))/(2*(/alpha + 1)),\n/list = [/b0, /b1, /b2, -/a1, -/a2]",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-17",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 196.0, 83.0, 57.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-16",
									"maxclass" : "flonum",
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 133.0, 83.0, 57.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-15",
									"maxclass" : "flonum",
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 74.0, 83.0, 57.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 196.0, 116.0, 31.0, 22.0 ],
									"style" : "",
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 133.0, 116.0, 31.0, 22.0 ],
									"style" : "",
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 74.0, 173.0, 222.0, 22.0 ],
									"style" : "",
									"text" : "o.pack /f /Q /g /Fs"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 196.0, 61.0, 50.0, 20.0 ],
									"style" : "",
									"text" : "Gain"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 133.0, 61.0, 50.0, 20.0 ],
									"style" : "",
									"text" : "Q"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 74.0, 61.0, 50.0, 20.0 ],
									"style" : "",
									"text" : "Freq"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"source" : [ "obj-12", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 142.5, 146.0, 83.5, 146.0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 2 ],
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 205.5, 147.0, 83.5, 147.0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"source" : [ "obj-163", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"source" : [ "obj-166", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"source" : [ "obj-167", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 83.5, 407.0, 452.5, 407.0, 452.5, 245.0, 473.5, 245.0 ],
									"order" : 0,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"order" : 1,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"hidden" : 1,
									"source" : [ "obj-35", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"hidden" : 1,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"midpoints" : [ 570.833313, 500.0, 1283.5, 500.0 ],
									"source" : [ "obj-8", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"midpoints" : [ 522.166687, 505.5, 877.5, 505.5 ],
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 3 ],
									"source" : [ "obj-81", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 274.5, 148.0, 83.5, 148.0 ],
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 20.5, 84.0, 81.0, 22.0 ],
					"presentation_rect" : [ 16.0, 83.0, 0.0, 0.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p Bandpass1"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 6,
							"architecture" : "x86",
							"modernui" : 1
						}
,
						"rect" : [ 0.0, 26.0, 1612.0, 885.0 ],
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
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1397.0, 521.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Group Delay",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 6,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ 59.0, 104.0, 1020.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 50.0, 100.0, 60.0, 22.0 ],
													"style" : "",
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 153.0, 243.0, 834.0, 35.0 ],
													"style" : "",
													"text" : "defineygrid 0 5000 10000 15000 20000 25000 30000, defineylabels 0 \"0\" 5000 \"5000\" 10000 \"10000\" 15000 \"15000\" 20000 \"20000\" 25000 \"25000\" 30000 \"30000\""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-52",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 71.0, 147.0, 848.0, 22.0 ],
													"style" : "",
													"text" : "margins 20 20 20 50, definedomain 0 20480 linear, defineline curve, definerange 0 30000, numpoints 88, defineline linear, definepoint none, definethickness 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-49",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 109.0, 184.0, 582.0, 52.0 ],
													"style" : "",
													"text" : "definexgrid 1875 3045 3750 4350 4880 5275 5645 5885 6250 8150 9185 10000 10600 11075 11533 11866 12237 12500 14366 15533 16250 16950 17400 17770 18125 18500 18850 $1, definexlabels 4350 \"50\" 6250 \"100\" 10600 \"500\" 12500 1K 16950 5K 18850 10K"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-57",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 105.0, 338.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"order" : 1,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"order" : 2,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"order" : 0,
													"source" : [ "obj-56", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 1305.0, 510.0, 71.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p plotSetup"
								}

							}
, 							{
								"box" : 								{
									"domainlabel" : "Frequency_(Hz)",
									"id" : "obj-26",
									"margins" : [ 20.0, 20.0, 20.0, 50.0 ],
									"maxclass" : "plot~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"numpoints" : 88,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1290.0, 543.0, 364.0, 194.0 ],
									"rangelabel" : "delay_µsec",
									"subplots" : [ 										{
											"color" : [ 0.4, 0.4, 0.75, 1.0 ],
											"thickness" : 1.0,
											"point_style" : "none",
											"line_style" : "linear",
											"number_style" : "none",
											"filter" : "none",
											"domain_start" : 0.0,
											"domain_end" : 20480.0,
											"domain_style" : "linear",
											"domain_markers" : [ 1875.0, 3045.0, 3750.0, 4350.0, 4880.0, 5275.0, 5645.0, 5885.0, 6250.0, 8150.0, 9185.0, 10000.0, 10600.0, 11075.0, 11533.0, 11866.0, 12237.0, 12500.0, 14366.0, 15533.0, 16250.0, 16950.0, 17400.0, 17770.0, 18125.0, 18500.0, 18850.0, 12097.0 ],
											"domain_labels" : [ 4350.0, "50", 6250.0, "100", 10600.0, "500", 12500.0, "1K", 16950.0, "5K", 18850.0, "10K" ],
											"range_start" : 0.0,
											"range_end" : 30000.0,
											"range_style" : "linear",
											"range_markers" : [ 0.0, 5000.0, 10000.0, 15000.0, 20000.0, 25000.0, 30000.0 ],
											"range_labels" : [ 0.0, "0", 5000.0, "5000", 10000.0, "10000", 15000.0, "15000", 20000.0, "20000", 25000.0, "25000", 30000.0, "30000" ],
											"origin_x" : 0.0,
											"origin_y" : 0.0
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 942.5, 234.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Plot Generation",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-69",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 991.0, 521.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Phase Response",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 587.0, 521.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Frequency Response",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 6,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ 59.0, 104.0, 1020.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 50.0, 100.0, 60.0, 22.0 ],
													"style" : "",
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 153.0, 243.0, 366.0, 22.0 ],
													"style" : "",
													"text" : "defineygrid -360 -180 0, defineylabels -180 \"-180\" 0 \"0\" -360 \"-360\""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-52",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 71.0, 147.0, 839.0, 22.0 ],
													"style" : "",
													"text" : "margins 20 20 20 50, definedomain 0 20480 linear, defineline curve, definerange -360 0, numpoints 88, defineline linear, definepoint none, definethickness 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-49",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 109.0, 184.0, 582.0, 52.0 ],
													"style" : "",
													"text" : "definexgrid 1875 3045 3750 4350 4880 5275 5645 5885 6250 8150 9185 10000 10600 11075 11533 11866 12237 12500 14366 15533 16250 16950 17400 17770 18125 18500 18850 $1, definexlabels 4350 \"50\" 6250 \"100\" 10600 \"500\" 12500 1K 16950 5K 18850 10K"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-57",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 105.0, 338.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"order" : 1,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"order" : 2,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"order" : 0,
													"source" : [ "obj-56", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 899.0, 510.0, 71.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p plotSetup"
								}

							}
, 							{
								"box" : 								{
									"domainlabel" : "Frequency_(Hz)",
									"id" : "obj-64",
									"margins" : [ 20.0, 20.0, 20.0, 50.0 ],
									"maxclass" : "plot~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"numpoints" : 88,
									"outlettype" : [ "" ],
									"patching_rect" : [ 884.0, 543.0, 364.0, 194.0 ],
									"rangelabel" : "Phase_(Radians)",
									"subplots" : [ 										{
											"color" : [ 0.4, 0.4, 0.75, 1.0 ],
											"thickness" : 1.0,
											"point_style" : "none",
											"line_style" : "linear",
											"number_style" : "none",
											"filter" : "none",
											"domain_start" : 0.0,
											"domain_end" : 20480.0,
											"domain_style" : "linear",
											"domain_markers" : [ 1875.0, 3045.0, 3750.0, 4350.0, 4880.0, 5275.0, 5645.0, 5885.0, 6250.0, 8150.0, 9185.0, 10000.0, 10600.0, 11075.0, 11533.0, 11866.0, 12237.0, 12500.0, 14366.0, 15533.0, 16250.0, 16950.0, 17400.0, 17770.0, 18125.0, 18500.0, 18850.0, 12097.0 ],
											"domain_labels" : [ 4350.0, "50", 6250.0, "100", 10600.0, "500", 12500.0, "1K", 16950.0, "5K", 18850.0, "10K" ],
											"range_start" : -360.0,
											"range_end" : 0.0,
											"range_style" : "linear",
											"range_markers" : [ -360.0, -180.0, 0.0 ],
											"range_labels" : [ -180.0, "-180", 0.0, "0", -360.0, "-360" ],
											"origin_x" : 0.0,
											"origin_y" : 0.0
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 6,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 50.0, 100.0, 60.0, 22.0 ],
													"style" : "",
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 153.0, 243.0, 582.0, 35.0 ],
													"style" : "",
													"text" : "defineygrid 24 18 12 6 0 -6 -12 -18 -24, defineylabels 24 \"24\" 18 \"18\" 12 \"12\" 6 \"6\" 0 \"0 dB\" -6 \"-6\" -12 \"-12\" -18 \"-18\" -24 \"-24\""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-52",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 71.0, 147.0, 561.0, 35.0 ],
													"style" : "",
													"text" : "margins 20 20 20 50, definedomain 0 20480 linear, defineline curve, definerange -24 24, numpoints 88, defineline linear, definepoint none, definethickness 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-49",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 109.0, 184.0, 582.0, 52.0 ],
													"style" : "",
													"text" : "definexgrid 1875 3045 3750 4350 4880 5275 5645 5885 6250 8150 9185 10000 10600 11075 11533 11866 12237 12500 14366 15533 16250 16950 17400 17770 18125 18500 18850 $1, definexlabels 4350 \"50\" 6250 \"100\" 10600 \"500\" 12500 1K 16950 5K 18850 10K"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-57",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 105.0, 338.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"order" : 1,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"order" : 2,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"order" : 0,
													"source" : [ "obj-56", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 495.0, 510.0, 71.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p plotSetup"
								}

							}
, 							{
								"box" : 								{
									"domainlabel" : "Frequency_(Hz)",
									"id" : "obj-46",
									"margins" : [ 20.0, 20.0, 20.0, 50.0 ],
									"maxclass" : "plot~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"numpoints" : 88,
									"outlettype" : [ "" ],
									"patching_rect" : [ 480.0, 543.0, 364.0, 194.0 ],
									"rangelabel" : "Amplitude_(dB)",
									"subplots" : [ 										{
											"color" : [ 0.4, 0.4, 0.75, 1.0 ],
											"thickness" : 1.0,
											"point_style" : "none",
											"line_style" : "linear",
											"number_style" : "none",
											"filter" : "none",
											"domain_start" : 0.0,
											"domain_end" : 20480.0,
											"domain_style" : "linear",
											"domain_markers" : [ 1875.0, 3045.0, 3750.0, 4350.0, 4880.0, 5275.0, 5645.0, 5885.0, 6250.0, 8150.0, 9185.0, 10000.0, 10600.0, 11075.0, 11533.0, 11866.0, 12237.0, 12500.0, 14366.0, 15533.0, 16250.0, 16950.0, 17400.0, 17770.0, 18125.0, 18500.0, 18850.0, 12097.0 ],
											"domain_labels" : [ 4350.0, "50", 6250.0, "100", 10600.0, "500", 12500.0, "1K", 16950.0, "5K", 18850.0, "10K" ],
											"range_start" : -24.0,
											"range_end" : 24.0,
											"range_style" : "linear",
											"range_markers" : [ 24.0, 18.0, 12.0, 6.0, 0.0, -6.0, -12.0, -18.0, -24.0 ],
											"range_labels" : [ 24.0, "24", 18.0, "18", 12.0, "12", 6.0, "6", 0.0, "0 dB", -6.0, "-6", -12.0, "-12", -18.0, "-18", -24.0, "-24" ],
											"origin_x" : 0.0,
											"origin_y" : 0.0
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "FullPacket" ],
									"patching_rect" : [ 480.0, 476.0, 165.0, 22.0 ],
									"style" : "",
									"text" : "o.route /dBs /degrees /Group"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-1",
									"linecount" : 14,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 480.0, 256.0, 1231.0, 209.0 ],
									"text" : "/freqs = round(10*pow(pow(2,.125),aseq(0,88))),\n/wS = 2*pi()*/freqs / /Fs,\n/phiS = 4*pow(sin(/wS / 2),2),\n/dBs = 10*log10(pow(/b0+/b1+/b2,2) + (/b0 * /b2 * /phiS - (/b1*(/b0+/b2)+4*/b0*/b2))*/phiS) - 10*log10(pow(1-/a1-/a2,2)+(-/a2*/phiS - (-/a1*(1-/a2)+4*-/a2))*/phiS),\n/omega = 2 * pi() * /Q / (4* /Fs),\n/alfa = sin(/w) / (2* /Q),\n/BB1 = 1 +cos(/omega),\n/BB2 = (1 +cos(/omega)) / 2.0,\n/phase = atan2( ( ( -/a1  -  /a0 * /BB1 -  /a2 * /BB1 +  /a1 * /BB2 + 2 * ( -/a0 * /BB2 -  /a2) * cos( /wS) ) * sin( /wS)  /  ( 1 + /BB1 * /BB1 + /BB2 * /BB2 + 2 * ( /BB1  + /BB1 * /BB2) * cos( /wS) + 2 * /BB2 * cos(2 * /wS) ) ), (  /a0  -  /a1 * /BB1 -  /a2 * /BB2 + ( /a0 * /BB1 -  /a1 *(1 + /BB2) -  /a2 * /BB1) * cos( /wS) + ( /a0 * /BB2 -  /a2) * cos(2 * /wS) ) / ( 1 + /BB1 * /BB1 + /BB2 * /BB2 + 2 * ( ( /BB1 + /BB1 * /BB2) * cos( /wS) + /BB2 * cos(2 * /wS) ) )) * 2,\n/degrees = /phase *360 / (2*pi()),\n/Group = map(lambda([i], (-((/phase[[i+1]] - /phase[[i-1]]) / (/freqs[[i+1]] - /freqs[[i-1]])) / 360)*58000000  ), aseq(1, 87)),\n/Group=list(0, /Group, 0)",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-81",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 265.0, 116.0, 31.0, 22.0 ],
									"style" : "",
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-80",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 265.0, 61.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Sample Rate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 74.0, 234.0, 364.0, 20.0 ],
									"style" : "",
									"text" : "Biquad Coefficient Calculation",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-167",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 196.0, 0.0, 25.0, 22.0 ],
									"style" : "",
									"text" : "r g"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-166",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 133.0, 0.0, 27.0, 22.0 ],
									"style" : "",
									"text" : "r Q"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-163",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 74.0, 0.0, 21.0, 22.0 ],
									"style" : "",
									"text" : "r f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-82",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 230.0, 421.0, 160.0, 47.0 ],
									"style" : "",
									"text" : "Note: A and B coeficients are swapped.  /list reorders them for use with biquad~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 152.0, 485.0, 60.0, 22.0 ],
									"style" : "",
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 621.0, 12.0, 60.0, 22.0 ],
									"style" : "",
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 152.0, 513.0, 48.0, 22.0 ],
									"style" : "",
									"text" : "display"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-41",
									"maxclass" : "filtergraph~",
									"nfilters" : 1,
									"numinlets" : 8,
									"numoutlets" : 7,
									"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 74.0, 543.0, 310.0, 194.0 ],
									"setfilter" : [ 0, 0, 1, 0, 0, 40.0, 1.0, 2.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 265.0, 83.0, 50.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-37",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 621.0, 41.0, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 621.0, 69.0, 69.0, 22.0 ],
									"style" : "",
									"text" : "adstatus sr"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 36.0,
									"id" : "obj-23",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 74.0, 9.0, 422.0, 47.0 ],
									"style" : "",
									"text" : "Highpass Filter"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 74.0, 513.0, 69.0, 22.0 ],
									"style" : "",
									"text" : "o.route /list"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-18",
									"linecount" : 9,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 74.0, 256.0, 364.0, 141.0 ],
									"text" : "/w = 2*pi() * /f / /Fs,\n/alpha = sin( /w) / (2* /Q),\n/a0 = 1,\n/a1 = 2*cos(/w)/(1+ /alpha),\n/a2 = (/alpha - 1) / (/alpha + 1),\n/b0 = (1+cos(/w))/(2*(/alpha + 1)),\n/b1 = -(1+cos(/w))/(/alpha + 1),\n/b2 = (1+cos(/w))/(2*(/alpha + 1)),\n/list = [/b0, /b1, /b2, -/a1, -/a2]",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-17",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 196.0, 83.0, 57.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-16",
									"maxclass" : "flonum",
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 133.0, 83.0, 57.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-15",
									"maxclass" : "flonum",
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 74.0, 83.0, 57.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 196.0, 116.0, 31.0, 22.0 ],
									"style" : "",
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 133.0, 116.0, 31.0, 22.0 ],
									"style" : "",
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 74.0, 173.0, 222.0, 22.0 ],
									"style" : "",
									"text" : "o.pack /f /Q /g /Fs"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 196.0, 61.0, 50.0, 20.0 ],
									"style" : "",
									"text" : "Gain"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 133.0, 61.0, 50.0, 20.0 ],
									"style" : "",
									"text" : "Q"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 74.0, 61.0, 50.0, 20.0 ],
									"style" : "",
									"text" : "Freq"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"source" : [ "obj-12", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 142.5, 146.0, 83.5, 146.0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 2 ],
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 205.5, 147.0, 83.5, 147.0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"source" : [ "obj-163", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"source" : [ "obj-166", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"source" : [ "obj-167", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 83.5, 407.0, 460.5, 407.0, 460.5, 245.0, 489.5, 245.0 ],
									"order" : 0,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"order" : 1,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"hidden" : 1,
									"source" : [ "obj-35", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"hidden" : 1,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"midpoints" : [ 586.833313, 500.0, 1299.5, 500.0 ],
									"source" : [ "obj-8", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"midpoints" : [ 538.166687, 505.5, 893.5, 505.5 ],
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 3 ],
									"source" : [ "obj-81", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 274.5, 148.0, 83.5, 148.0 ],
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 20.0, 49.0, 71.0, 22.0 ],
					"presentation_rect" : [ 19.0, 49.0, 0.0, 0.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p Highpass"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-195",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 6,
							"architecture" : "x86",
							"modernui" : 1
						}
,
						"rect" : [ 47.0, -895.0, 1612.0, 885.0 ],
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
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1392.0, 521.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Group Delay",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 6,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ 59.0, 104.0, 1020.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 50.0, 100.0, 60.0, 22.0 ],
													"style" : "",
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 153.0, 243.0, 834.0, 35.0 ],
													"style" : "",
													"text" : "defineygrid 0 5000 10000 15000 20000 25000 30000, defineylabels 0 \"0\" 5000 \"5000\" 10000 \"10000\" 15000 \"15000\" 20000 \"20000\" 25000 \"25000\" 30000 \"30000\""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-52",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 71.0, 147.0, 848.0, 22.0 ],
													"style" : "",
													"text" : "margins 20 20 20 50, definedomain 0 20480 linear, defineline curve, definerange 0 30000, numpoints 88, defineline linear, definepoint none, definethickness 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-49",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 109.0, 184.0, 582.0, 52.0 ],
													"style" : "",
													"text" : "definexgrid 1875 3045 3750 4350 4880 5275 5645 5885 6250 8150 9185 10000 10600 11075 11533 11866 12237 12500 14366 15533 16250 16950 17400 17770 18125 18500 18850 $1, definexlabels 4350 \"50\" 6250 \"100\" 10600 \"500\" 12500 1K 16950 5K 18850 10K"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-57",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 105.0, 338.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"order" : 1,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"order" : 2,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"order" : 0,
													"source" : [ "obj-56", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 1300.0, 510.0, 71.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p plotSetup"
								}

							}
, 							{
								"box" : 								{
									"domainlabel" : "Frequency_(Hz)",
									"id" : "obj-26",
									"margins" : [ 20.0, 20.0, 20.0, 50.0 ],
									"maxclass" : "plot~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"numpoints" : 88,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1285.0, 543.0, 364.0, 194.0 ],
									"rangelabel" : "delay_µsec",
									"subplots" : [ 										{
											"color" : [ 0.4, 0.4, 0.75, 1.0 ],
											"thickness" : 1.0,
											"point_style" : "none",
											"line_style" : "linear",
											"number_style" : "none",
											"filter" : "none",
											"domain_start" : 0.0,
											"domain_end" : 20480.0,
											"domain_style" : "linear",
											"domain_markers" : [ 1875.0, 3045.0, 3750.0, 4350.0, 4880.0, 5275.0, 5645.0, 5885.0, 6250.0, 8150.0, 9185.0, 10000.0, 10600.0, 11075.0, 11533.0, 11866.0, 12237.0, 12500.0, 14366.0, 15533.0, 16250.0, 16950.0, 17400.0, 17770.0, 18125.0, 18500.0, 18850.0, 12097.0 ],
											"domain_labels" : [ 4350.0, "50", 6250.0, "100", 10600.0, "500", 12500.0, "1K", 16950.0, "5K", 18850.0, "10K" ],
											"range_start" : 0.0,
											"range_end" : 30000.0,
											"range_style" : "linear",
											"range_markers" : [ 0.0, 5000.0, 10000.0, 15000.0, 20000.0, 25000.0, 30000.0 ],
											"range_labels" : [ 0.0, "0", 5000.0, "5000", 10000.0, "10000", 15000.0, "15000", 20000.0, "20000", 25000.0, "25000", 30000.0, "30000" ],
											"origin_x" : 0.0,
											"origin_y" : 0.0
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 937.5, 234.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Plot Generation",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-69",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 986.0, 521.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Phase Response",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 582.0, 521.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Frequency Response",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 6,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ 59.0, 104.0, 1020.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 50.0, 100.0, 60.0, 22.0 ],
													"style" : "",
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 153.0, 243.0, 366.0, 22.0 ],
													"style" : "",
													"text" : "defineygrid -360 -180 0, defineylabels -180 \"-180\" 0 \"0\" -360 \"-360\""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-52",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 71.0, 147.0, 839.0, 22.0 ],
													"style" : "",
													"text" : "margins 20 20 20 50, definedomain 0 20480 linear, defineline curve, definerange -360 0, numpoints 88, defineline linear, definepoint none, definethickness 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-49",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 109.0, 184.0, 582.0, 52.0 ],
													"style" : "",
													"text" : "definexgrid 1875 3045 3750 4350 4880 5275 5645 5885 6250 8150 9185 10000 10600 11075 11533 11866 12237 12500 14366 15533 16250 16950 17400 17770 18125 18500 18850 $1, definexlabels 4350 \"50\" 6250 \"100\" 10600 \"500\" 12500 1K 16950 5K 18850 10K"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-57",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 105.0, 338.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"order" : 1,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"order" : 2,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"order" : 0,
													"source" : [ "obj-56", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 894.0, 510.0, 71.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p plotSetup"
								}

							}
, 							{
								"box" : 								{
									"domainlabel" : "Frequency_(Hz)",
									"id" : "obj-64",
									"margins" : [ 20.0, 20.0, 20.0, 50.0 ],
									"maxclass" : "plot~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"numpoints" : 88,
									"outlettype" : [ "" ],
									"patching_rect" : [ 879.0, 543.0, 364.0, 194.0 ],
									"rangelabel" : "Phase_(Radians)",
									"subplots" : [ 										{
											"color" : [ 0.4, 0.4, 0.75, 1.0 ],
											"thickness" : 1.0,
											"point_style" : "none",
											"line_style" : "linear",
											"number_style" : "none",
											"filter" : "none",
											"domain_start" : 0.0,
											"domain_end" : 20480.0,
											"domain_style" : "linear",
											"domain_markers" : [ 1875.0, 3045.0, 3750.0, 4350.0, 4880.0, 5275.0, 5645.0, 5885.0, 6250.0, 8150.0, 9185.0, 10000.0, 10600.0, 11075.0, 11533.0, 11866.0, 12237.0, 12500.0, 14366.0, 15533.0, 16250.0, 16950.0, 17400.0, 17770.0, 18125.0, 18500.0, 18850.0, 12097.0 ],
											"domain_labels" : [ 4350.0, "50", 6250.0, "100", 10600.0, "500", 12500.0, "1K", 16950.0, "5K", 18850.0, "10K" ],
											"range_start" : -360.0,
											"range_end" : 0.0,
											"range_style" : "linear",
											"range_markers" : [ -360.0, -180.0, 0.0 ],
											"range_labels" : [ -180.0, "-180", 0.0, "0", -360.0, "-360" ],
											"origin_x" : 0.0,
											"origin_y" : 0.0
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 6,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 50.0, 100.0, 60.0, 22.0 ],
													"style" : "",
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 153.0, 243.0, 582.0, 35.0 ],
													"style" : "",
													"text" : "defineygrid 24 18 12 6 0 -6 -12 -18 -24, defineylabels 24 \"24\" 18 \"18\" 12 \"12\" 6 \"6\" 0 \"0 dB\" -6 \"-6\" -12 \"-12\" -18 \"-18\" -24 \"-24\""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-52",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 71.0, 147.0, 561.0, 35.0 ],
													"style" : "",
													"text" : "margins 20 20 20 50, definedomain 0 20480 linear, defineline curve, definerange -24 24, numpoints 88, defineline linear, definepoint none, definethickness 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-49",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 109.0, 184.0, 582.0, 52.0 ],
													"style" : "",
													"text" : "definexgrid 1875 3045 3750 4350 4880 5275 5645 5885 6250 8150 9185 10000 10600 11075 11533 11866 12237 12500 14366 15533 16250 16950 17400 17770 18125 18500 18850 $1, definexlabels 4350 \"50\" 6250 \"100\" 10600 \"500\" 12500 1K 16950 5K 18850 10K"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-57",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 105.0, 338.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"order" : 1,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"order" : 2,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"order" : 0,
													"source" : [ "obj-56", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 490.0, 510.0, 71.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p plotSetup"
								}

							}
, 							{
								"box" : 								{
									"domainlabel" : "Frequency_(Hz)",
									"id" : "obj-46",
									"margins" : [ 20.0, 20.0, 20.0, 50.0 ],
									"maxclass" : "plot~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"numpoints" : 88,
									"outlettype" : [ "" ],
									"patching_rect" : [ 475.0, 543.0, 364.0, 194.0 ],
									"rangelabel" : "Amplitude_(dB)",
									"subplots" : [ 										{
											"color" : [ 0.4, 0.4, 0.75, 1.0 ],
											"thickness" : 1.0,
											"point_style" : "none",
											"line_style" : "linear",
											"number_style" : "none",
											"filter" : "none",
											"domain_start" : 0.0,
											"domain_end" : 20480.0,
											"domain_style" : "linear",
											"domain_markers" : [ 1875.0, 3045.0, 3750.0, 4350.0, 4880.0, 5275.0, 5645.0, 5885.0, 6250.0, 8150.0, 9185.0, 10000.0, 10600.0, 11075.0, 11533.0, 11866.0, 12237.0, 12500.0, 14366.0, 15533.0, 16250.0, 16950.0, 17400.0, 17770.0, 18125.0, 18500.0, 18850.0, 12097.0 ],
											"domain_labels" : [ 4350.0, "50", 6250.0, "100", 10600.0, "500", 12500.0, "1K", 16950.0, "5K", 18850.0, "10K" ],
											"range_start" : -24.0,
											"range_end" : 24.0,
											"range_style" : "linear",
											"range_markers" : [ 24.0, 18.0, 12.0, 6.0, 0.0, -6.0, -12.0, -18.0, -24.0 ],
											"range_labels" : [ 24.0, "24", 18.0, "18", 12.0, "12", 6.0, "6", 0.0, "0 dB", -6.0, "-6", -12.0, "-12", -18.0, "-18", -24.0, "-24" ],
											"origin_x" : 0.0,
											"origin_y" : 0.0
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "FullPacket" ],
									"patching_rect" : [ 475.0, 476.0, 165.0, 22.0 ],
									"style" : "",
									"text" : "o.route /dBs /degrees /Group"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-1",
									"linecount" : 14,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 475.0, 256.0, 1231.0, 209.0 ],
									"text" : "/freqs = round(10*pow(pow(2,.125),aseq(0,88))),\n/wS = 2*pi()*/freqs / /Fs,\n/phiS = 4*pow(sin(/wS / 2),2),\n/dBs = 10*log10(pow(/b0+/b1+/b2,2) + (/b0 * /b2 * /phiS - (/b1*(/b0+/b2)+4*/b0*/b2))*/phiS) - 10*log10(pow(1-/a1-/a2,2)+(-/a2*/phiS - (-/a1*(1-/a2)+4*-/a2))*/phiS),\n/omega = 2 * pi() * /Q / (4* /Fs),\n/alfa = sin(/w) / (2* /Q),\n/BB1 = 1 +cos(/omega),\n/BB2 = (1 +cos(/omega)) / 2.0,\n/phase = atan2( ( ( -/a1  -  /a0 * /BB1 -  /a2 * /BB1 +  /a1 * /BB2 + 2 * ( -/a0 * /BB2 -  /a2) * cos( /wS) ) * sin( /wS)  /  ( 1 + /BB1 * /BB1 + /BB2 * /BB2 + 2 * ( /BB1  + /BB1 * /BB2) * cos( /wS) + 2 * /BB2 * cos(2 * /wS) ) ), (  /a0  -  /a1 * /BB1 -  /a2 * /BB2 + ( /a0 * /BB1 -  /a1 *(1 + /BB2) -  /a2 * /BB1) * cos( /wS) + ( /a0 * /BB2 -  /a2) * cos(2 * /wS) ) / ( 1 + /BB1 * /BB1 + /BB2 * /BB2 + 2 * ( ( /BB1 + /BB1 * /BB2) * cos( /wS) + /BB2 * cos(2 * /wS) ) )) * 2,\n/degrees = /phase *360 / (2*pi()),\n/Group = map(lambda([i], (-((/phase[[i+1]] - /phase[[i-1]]) / (/freqs[[i+1]] - /freqs[[i-1]])) / 360)*58000000  ), aseq(1, 87)),\n/Group=list(0, /Group, 0)",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-81",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 265.0, 116.0, 31.0, 22.0 ],
									"presentation_rect" : [ 263.0, 118.0, 0.0, 0.0 ],
									"style" : "",
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-80",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 265.0, 61.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "Sample Rate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 74.0, 234.0, 364.0, 20.0 ],
									"presentation_rect" : [ 156.5, 236.0, 0.0, 0.0 ],
									"style" : "",
									"text" : "Biquad Coefficient Calculation",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-167",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 196.0, 0.0, 25.0, 22.0 ],
									"style" : "",
									"text" : "r g"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-166",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 133.0, 0.0, 27.0, 22.0 ],
									"style" : "",
									"text" : "r Q"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-163",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 74.0, 0.0, 21.0, 22.0 ],
									"style" : "",
									"text" : "r f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-82",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 230.0, 421.0, 160.0, 47.0 ],
									"style" : "",
									"text" : "Note: A and B coeficients are swapped.  /list reorders them for use with biquad~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 152.0, 485.0, 60.0, 22.0 ],
									"style" : "",
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 621.0, 12.0, 60.0, 22.0 ],
									"style" : "",
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 152.0, 513.0, 48.0, 22.0 ],
									"style" : "",
									"text" : "display"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-41",
									"maxclass" : "filtergraph~",
									"nfilters" : 1,
									"numinlets" : 8,
									"numoutlets" : 7,
									"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 74.0, 543.0, 310.0, 194.0 ],
									"setfilter" : [ 0, 0, 1, 0, 0, 40.0, 1.0, 2.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 265.0, 83.0, 50.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-37",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 621.0, 41.0, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 621.0, 69.0, 69.0, 22.0 ],
									"style" : "",
									"text" : "adstatus sr"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 36.0,
									"id" : "obj-23",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 74.0, 9.0, 422.0, 47.0 ],
									"style" : "",
									"text" : "Lowpass Filter"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 74.0, 513.0, 69.0, 22.0 ],
									"style" : "",
									"text" : "o.route /list"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-18",
									"linecount" : 9,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 74.0, 256.0, 364.0, 141.0 ],
									"text" : "/w = 2*pi() * /f / /Fs,\n/alpha = sin( /w) / (2* /Q),\n/a0 = 1,\n/a1 = 2*cos(/w)/(1+ /alpha),\n/a2 = (/alpha - 1) / (/alpha + 1),\n/b0 = (1-cos(/w))/(2*(/alpha + 1)),\n/b1 = (1-cos(/w))/(/alpha + 1),\n/b2 = (1-cos(/w))/(2*(/alpha + 1)),\n/list = [/b0, /b1, /b2, -/a1, -/a2]",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-17",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 196.0, 83.0, 57.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-16",
									"maxclass" : "flonum",
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 133.0, 83.0, 57.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-15",
									"maxclass" : "flonum",
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 74.0, 83.0, 57.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 196.0, 116.0, 31.0, 22.0 ],
									"style" : "",
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 133.0, 116.0, 31.0, 22.0 ],
									"style" : "",
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 74.0, 173.0, 222.0, 22.0 ],
									"style" : "",
									"text" : "o.pack /f /Q /g /Fs"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 196.0, 61.0, 50.0, 20.0 ],
									"style" : "",
									"text" : "Gain"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 133.0, 61.0, 50.0, 20.0 ],
									"style" : "",
									"text" : "Q"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 74.0, 61.0, 50.0, 20.0 ],
									"style" : "",
									"text" : "Freq"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"source" : [ "obj-12", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 142.5, 146.0, 83.5, 146.0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 2 ],
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 205.5, 147.0, 83.5, 147.0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"source" : [ "obj-163", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"source" : [ "obj-166", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"source" : [ "obj-167", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 83.5, 407.0, 460.0, 407.0, 460.0, 245.0, 484.5, 245.0 ],
									"order" : 0,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"order" : 1,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"hidden" : 1,
									"source" : [ "obj-35", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"hidden" : 1,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"midpoints" : [ 581.833313, 500.0, 1294.5, 500.0 ],
									"source" : [ "obj-8", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"midpoints" : [ 533.166687, 505.5, 888.5, 505.5 ],
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 3 ],
									"source" : [ "obj-81", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 274.5, 148.0, 83.5, 148.0 ],
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 20.0, 12.0, 68.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p Lowpass"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-193",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1370.5, 155.0, 150.0, 20.0 ],
					"style" : "",
					"text" : "Global Variables"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-191",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1325.0, 339.5, 41.0, 20.0 ],
					"style" : "",
					"text" : "Gain"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-190",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1325.0, 269.5, 41.0, 20.0 ],
					"style" : "",
					"text" : "Q"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-189",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1325.0, 201.5, 41.0, 20.0 ],
					"style" : "",
					"text" : "Freq."
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-187",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1479.5, 249.0, 23.0, 22.0 ],
					"style" : "",
					"text" : "s f"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-186",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1471.5, 310.0, 29.0, 22.0 ],
					"style" : "",
					"text" : "s Q"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-185",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1471.5, 385.0, 27.0, 22.0 ],
					"style" : "",
					"text" : "s g"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 36.0,
					"format" : 6,
					"id" : "obj-183",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1370.5, 325.0, 88.0, 49.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-184",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1539.5, 112.0, 75.0, 22.0 ],
					"style" : "",
					"text" : "loadmess 7."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 36.0,
					"format" : 6,
					"id" : "obj-182",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1370.5, 255.0, 88.0, 49.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 36.0,
					"format" : 6,
					"id" : "obj-181",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1370.5, 187.0, 109.0, 49.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-164",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1460.5, 112.0, 75.0, 22.0 ],
					"style" : "",
					"text" : "loadmess 7."
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-165",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1370.5, 112.0, 85.0, 22.0 ],
					"style" : "",
					"text" : "loadmess 120"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-182", 0 ],
					"hidden" : 1,
					"source" : [ "obj-164", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-181", 0 ],
					"hidden" : 1,
					"source" : [ "obj-165", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-187", 0 ],
					"hidden" : 1,
					"source" : [ "obj-181", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-186", 0 ],
					"hidden" : 1,
					"source" : [ "obj-182", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-185", 0 ],
					"hidden" : 1,
					"source" : [ "obj-183", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-183", 0 ],
					"hidden" : 1,
					"source" : [ "obj-184", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"hidden" : 1,
					"source" : [ "obj-35", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-81", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"hidden" : 1,
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 3 ],
					"source" : [ "obj-81", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"midpoints" : [ 416.5, 343.0, 225.5, 343.0 ],
					"source" : [ "obj-81", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "o.pack.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.expr.codebox.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
