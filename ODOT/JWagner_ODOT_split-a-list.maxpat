{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 71.0, 104.0, 1310.0, 747.0 ],
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
					"id" : "obj-18",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 174.0, 190.0, 150.0, 33.0 ],
					"text" : "works with different sized lists"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-16",
					"linecount" : 3,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 22.0, 182.0, 150.0, 49.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56, 47, 109, 99, 95, 102, 117, 110, 99, 116, 105, 111, 110, 0, 0, 0, 0, 44, 115, 105, 105, 115, 105, 105, 0, 100, 97, 116, 97, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 100, 97, 116, 97, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50 ],
					"saved_bundle_length" : 76,
					"text" : "/mc_function : [\"data\", 0, 100, \"data\", 0, 50]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-15",
					"linecount" : 6,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 22.0, 628.0, 1216.0, 97.0 ],
					"text" : "/sublist/1 : [\"data\", 0, 25, 1000., 0., 19., 0., 0., 0, 150., 3., 0, 250., 3., 0, 350., 2., 0, 500., 19., 0, 500., 3., 0, 1000., 0., 0, \"linear\", \"data\"],\n/sublist/2 : [\"data\", 1, 22, 1000., 0., 19., 0., 0., 0, 150., 5., 0, 250., 5., 0, 350., 5., 0, 600., 17., 0, 1000., 0., 0, \"linear\", \"data\"],\n/sublist/3 : [\"data\", 2, 25, 1000., 0., 19., 0., 0., 0, 150., 7., 0, 250., 8., 0, 350., 9., 0, 600., 9., 0, 750., 13., 2, 963.934, 0., 0, \"linear\", \"data\"],\n/sublist/4 : [\"data\", 3, 31, 1000., 0., 19., 0., 0., 0, 150., 9., 0, 250., 10., 0, 439.344, 0., 0, 600., 5., 0, 708.197, 0., 0, 757.377, 0., 0, 850., 20., 0, 1000., 0., 0, \"linear\", \"data\"],\n/sublist/5 : [\"data\", 4, 16, 1000., 0., 19., 0., 10., 0, 150., 10., 0, 250., 10., 0, 600., 12., 0, \"linear\"]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 671.0, 57.0, 291.0, 60.0 ],
					"text" : "Here is a list of data vectors of unequal length compiled as a single list. Shown here are two ways to split this into n-sublists that start with the word \"data\" "
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 24.0,
					"id" : "obj-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 22.0, 11.0, 315.0, 33.0 ],
					"text" : "Split a list at a given token"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"id" : "obj-12",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 964.0, 514.5, 141.0, 37.0 ],
					"text" : "This works with older versions of odot."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 22.0, 601.0, 91.0, 22.0 ],
					"text" : "o.select /sublist"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 77.0, 319.0, 91.0, 22.0 ],
					"text" : "o.select /sublist"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-8",
					"linecount" : 7,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 22.0, 482.0, 940.0, 116.0 ],
					"text" : "/comp=\"lambda([i,j], strcmp(i, /mc_function[[j]])==0)\",\n/ind=map(/comp, nfill(133, \"data\"), aseq(0, length(/mc_function)-1)),\n/indx=[],\n/indx=map( lambda(i, if(/ind[[i]], list(/indx, i))), aseq(0, length(/ind)-1)),\n/ind=/indx,\n/ind=list(/ind, length(/mc_function)-1),\nmap(lambda(i, assign(\"/sublist/\" + i, nth(/mc_function, aseq(/ind[[i-1]], /ind[[i]])))), aseq(1, length(/ind)-1))"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"id" : "obj-7",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1014.0, 253.0, 150.0, 51.0 ],
					"text" : "This works with the very latest odot. (March 2021)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-3",
					"linecount" : 6,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 77.0, 346.0, 1161.0, 104.0 ],
					"text" : "/sublist/1 : [\"data\", 0, 25, 1000., 0., 19., 0., 0., 0, 150., 3., 0, 250., 3., 0, 350., 2., 0, 500., 19., 0, 500., 3., 0, 1000., 0., 0, \"linear\", \"data\"],\n/sublist/2 : [\"data\", 1, 22, 1000., 0., 19., 0., 0., 0, 150., 5., 0, 250., 5., 0, 350., 5., 0, 600., 17., 0, 1000., 0., 0, \"linear\", \"data\"],\n/sublist/3 : [\"data\", 2, 25, 1000., 0., 19., 0., 0., 0, 150., 7., 0, 250., 8., 0, 350., 9., 0, 600., 9., 0, 750., 13., 2, 963.934, 0., 0, \"linear\", \"data\"],\n/sublist/4 : [\"data\", 3, 31, 1000., 0., 19., 0., 0., 0, 150., 9., 0, 250., 10., 0, 439.344, 0., 0, 600., 5., 0, 708.197, 0., 0, 757.377, 0., 0, 850., 20., 0, 1000., 0., 0, \"linear\", \"data\"],\n/sublist/5 : [\"data\", 4, 16, 1000., 0., 19., 0., 10., 0, 150., 10., 0, 250., 10., 0, 600., 12., 0, \"linear\"]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-1",
					"linecount" : 4,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 77.0, 241.5, 940.0, 74.0 ],
					"text" : "/comp=\"lambda([i,j], strcmp(i, /mc_function[[j]])==0)\",\n/ind=nonzero(map(/comp, nfill(133, \"data\"), aseq(0, length(/mc_function)-1))),\n/ind=list(/ind, length(/mc_function)-1),\nmap(lambda(i, assign(\"/sublist/\" + i, nth(/mc_function, aseq(/ind[[i-1]], /ind[[i]])))), aseq(1, length(/ind)-1))"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-2",
					"linecount" : 8,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 22.0, 57.0, 630.0, 122.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 28, 47, 109, 99, 95, 102, 117, 110, 99, 116, 105, 111, 110, 0, 0, 0, 0, 44, 115, 105, 105, 100, 100, 100, 100, 100, 105, 100, 100, 105, 100, 100, 105, 100, 100, 105, 100, 100, 105, 100, 100, 105, 100, 100, 105, 115, 115, 105, 105, 100, 100, 100, 100, 100, 105, 100, 100, 105, 100, 100, 105, 100, 100, 105, 100, 100, 105, 100, 100, 105, 115, 115, 105, 105, 100, 100, 100, 100, 100, 105, 100, 100, 105, 100, 100, 105, 100, 100, 105, 100, 100, 105, 100, 100, 105, 100, 100, 105, 115, 115, 105, 105, 100, 100, 100, 100, 100, 105, 100, 100, 105, 100, 100, 105, 100, 100, 105, 100, 100, 105, 100, 100, 105, 100, 100, 105, 100, 100, 105, 100, 100, 105, 115, 115, 105, 105, 100, 100, 100, 100, 100, 105, 100, 100, 105, 100, 100, 105, 100, 100, 105, 115, 0, 100, 97, 116, 97, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 64, -113, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 98, -64, 0, 0, 0, 0, 0, 64, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 111, 64, 0, 0, 0, 0, 0, 64, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 117, -32, 0, 0, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 127, 64, 0, 0, 0, 0, 0, 64, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 127, 64, 0, 0, 0, 0, 0, 64, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, -113, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 108, 105, 110, 101, 97, 114, 0, 0, 100, 97, 116, 97, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 22, 64, -113, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 98, -64, 0, 0, 0, 0, 0, 64, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 111, 64, 0, 0, 0, 0, 0, 64, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 117, -32, 0, 0, 0, 0, 0, 64, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, -126, -64, 0, 0, 0, 0, 0, 64, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, -113, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 108, 105, 110, 101, 97, 114, 0, 0, 100, 97, 116, 97, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 25, 64, -113, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 98, -64, 0, 0, 0, 0, 0, 64, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 111, 64, 0, 0, 0, 0, 0, 64, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 117, -32, 0, 0, 0, 0, 0, 64, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, -126, -64, 0, 0, 0, 0, 0, 64, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, -121, 112, 0, 0, 0, 0, 0, 64, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 64, -114, 31, 120, -44, -3, -13, -74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 108, 105, 110, 101, 97, 114, 0, 0, 100, 97, 116, 97, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 31, 64, -113, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 98, -64, 0, 0, 0, 0, 0, 64, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 111, 64, 0, 0, 0, 0, 0, 64, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 123, 117, -127, 6, 36, -35, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, -126, -64, 0, 0, 0, 0, 0, 64, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, -122, 33, -109, 116, -68, 106, 127, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, -121, -85, 4, 24, -109, 116, -68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, -118, -112, 0, 0, 0, 0, 0, 64, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, -113, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 108, 105, 110, 101, 97, 114, 0, 0, 100, 97, 116, 97, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 16, 64, -113, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 98, -64, 0, 0, 0, 0, 0, 64, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 111, 64, 0, 0, 0, 0, 0, 64, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, -126, -64, 0, 0, 0, 0, 0, 64, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 108, 105, 110, 101, 97, 114, 0, 0 ],
					"saved_bundle_length" : 1072,
					"text" : "/mc_function : [\"data\", 0, 25, 1000., 0., 19., 0., 0., 0, 150., 3., 0, 250., 3., 0, 350., 2., 0, 500., 19., 0, 500., 3., 0, 1000., 0., 0, \"linear\", \"data\", 1, 22, 1000., 0., 19., 0., 0., 0, 150., 5., 0, 250., 5., 0, 350., 5., 0, 600., 17., 0, 1000., 0., 0, \"linear\", \"data\", 2, 25, 1000., 0., 19., 0., 0., 0, 150., 7., 0, 250., 8., 0, 350., 9., 0, 600., 9., 0, 750., 13., 2, 963.934, 0., 0, \"linear\", \"data\", 3, 31, 1000., 0., 19., 0., 0., 0, 150., 9., 0, 250., 10., 0, 439.344, 0., 0, 600., 5., 0, 708.197, 0., 0, 757.377, 0., 0, 850., 20., 0, 1000., 0., 0, \"linear\", \"data\", 4, 16, 1000., 0., 19., 0., 10., 0, 150., 10., 0, 250., 10., 0, 600., 12., 0, \"linear\"]"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"order" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"order" : 1,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"order" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"order" : 1,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "o.compose.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.expr.codebox.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.display.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.select.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
