--
-- Addon       _puzzles.lua
-- Author      marcob@marcob.org
-- StartDate   29/05/2018
--
-- Expansion:  Mathosia
-- Source:     http://www.kfguides.com/rift/puzzlesguide.php
-- Credits:    Krinadon and Faiona, or KFGuides (Support@KFGuides.com)
--
-- Data:       Storm Legion - Puzzles
-- Source:     http://tmrguides.blogspot.com/
--
-- Format:     {
--                label="puzzle/cairn name",
--                location="zone Name",
--                location=["es.: Lake of Solace"],
--                x=nn,
--                z=nn,
--                y=[nn],
--                text=["...mi favourite fishing spot..."]
--             }
--
--             ONLY fields between [] may be missing.
--
-- t  =  {  idx         =  newnote.idx or self.lastidx,
--          label       =  newnote.label,
--          text        =  newnote.text,
--          category    =  newnote.category,
--          playerpos   =  playerpos,
--                         x              =  tbl.x or nil,
--                         z              =  tbl.z,
--                         y              =  tbl.y
--                         locationName   =  tbl.location or nil,
--                         name           =  "forums",
--                         radius         =  self.default.radius,
--                         zoneid         =  tbl.zoneid or  self.extdbhandler.zonename2id[zonename],
--                         zonename       =  zonename,
--                         },
--          timestamp   =  newnote.timestamp or os.time(),
--       }
--
--

if not Library 				then Library	=	{}	end
if not Library.LibMapNotes	then Library.LibMapNotes	=	{}	end


function Library.LibMapNotes.puzzles()
   -- the new instance
   local self =   {
                  db =  {},
                  }
      -- public fields go in the instance table

   local zn2id =  {  ["Meridian"]               =  'z6BA3E574E9564149',
                     ["Morban"]                 =  'z39095BA75AD7DC03',
                     ["Silverwood"]             =  'z0000000CB7B53FD7',
                     ["Gloamwood"]              =  'z0000001B2BB9E10E',
                     ["Scarlet Gorge"]          =  'z019595DB11E70F58',
                     ["Freemarch"]              =  'z00000013CAF21BE3',
                     ["Stonefield"]             =  'z585230E5F68EA919',
                     ["Scarwood Reach"]         =  'z000000142C649218',
                     ["Droughtlands"]           =  'z1416248E485F6684',
                     ["Iron Pine Peak"]         =  'z00000016EB9ECBA5',
                     ["Shimmersand"]            =  'z000000069C1F0227',
                     ["Stillmoor"]              =  'z0000001A4AF8CD7A',
                     ["Ember Isle"]             =  'z76C88A5A51A38D90',
                     ["Ardent Domain"]          =  'z563CB77E4A32233F',
                     ["City Core"]              =  'z754553DD46F46371',
                     ["Eastern Holdings"]       =  'z48530386ED2EA5AD',
                     ["Seratos"]                =  'z59124F7DD7F15825',
                     ["Kingsward"]              =  'z4D8820D7EF52685C',
                     ["The Dendrome"]           =  'z10D7E74AB6D7B293',
                     ["Moonshade Highlands"]    =  'z0000001804F56C61',
                     ["Cape Jule"]              =  'z698CB7B72B3D69E9',
                     ["Ashora"]                 =  'z2F1E4708BEC6A608',
                     ["Kingdom of Pelladane"]   =  'z1C938C07F41C83CC',
                     ["Steppes of Infinity"]    =  'z2F9C9E1FF91F9293',
                  }

-- t  =  {  idx         =  newnote.idx or self.lastidx,
--          label       =  newnote.label,
--          text        =  newnote.text,
--          category    =  newnote.category,
--          playerpos   =  y         =  tbl.y or nil,
--                         x         =  tbl.x,
--                         z         =  tbl.z,
--                         locationName   =  tbl.location or nil,
--                         name           =  "forums",
--                         radius         =  self.default.radius,
--                         zoneid         =  tbl.zoneid or  self.extdbhandler.zonename2id[zonename],
--                         zonename       =  zonename,
--                         },
--          timestamp   =  newnote.timestamp or os.time(),
--       }

   t  =  {}
   t  =  {  ["Silverwood"]       =  {  idx         =  nil,
                                       text        =  nil,
                                       label       =  "Puzzled at the Top of the World",
                                       category    =  "Puzzles",
                                       playerpos   =  {  y        =  0,
                                                         x        =  6515,
                                                         z        =  3080,
                                                         zonename =  "Silverwood",
                                                         zoneid   =  zn2id["Silverwood"],
                                                      },
                                       timestamp   =  os.time(),
                                    },   -- 1
            ["Gloamwood"]        =  {  idx         =  nil,
                                       text        =  nil,
                                       label       =  "Shield Wall",
                                       category    =  "Puzzles",
                                       playerpos   =  {  y        =  0,
                                                         x        =  4540,
                                                         z	      =  2382,
                                                         zonename =  "Gloamwood",
                                                         zoneid   =  zn2id["Gloamwood"],
                                                      },
                                       timestamp   =  os.time(),
                                    },   -- 2
            ["Scarlet Gorge"]    =  {  idx         =  nil,
                                       text        =  nil,
                                       label       =  "A Barrel of Laughs",
                                       category    =  "Puzzles",
                                       playerpos   =  {  y  = 0,
                                                         x  =  3619,
                                                         z  =  2775,
                                                         zonename =  "Scarlet Gorge",
                                                         zoneid   =  zn2id["Scarlet Gorge"],
                                                      },
                                       timestamp   =  os.time(),
                                    },   -- 3
            ["Freemarch"]        =  {  idx         =  nil,
                                       text        =  nil,
                                       label       =  "Lake Solace",
                                       category    =  "Puzzles",
                                       playerpos   =  {  y  =  0,
                                                         x  =  5998,
                                                         z  =  6141,
                                                         zonename =  "Freemarch",
                                                         zoneid   =  zn2id["Freemarch"],
                                       },
                                       timestamp   =  os.time(),
                                    },   -- 4


            ["Stonefield"]       =  {  idx         =  nil,
                                       text        =  nil,
                                       label       =  "Spinning Plates",
                                       category    =  "Puzzles",
                                       playerpos   =  {  y  =  0,
                                                         x  =  4577,
                                                         z  =  4974,
                                                         zonename =  "Stonefield",
                                                         zoneid   =  zn2id["Stonefield"],
                                                      },
                                       timestamp   =  os.time(),
                                    },   -- 5
            ["Scarwood Reach"]   =  {  idx         =  nil,
                                       text        =  nil,
                                       label       =  "Scarwood by Torchlight",
                                       category    =  "Puzzles",
                                       playerpos   =  {  y  =  0,
                                                         x  =  3123,
                                                         z  =  4426,
                                                         zonename =  "Scarwood Reach",
                                                         zoneid   =  zn2id["Scarwood Reach"],
                                       },
                                       timestamp   =  os.time(),
                                    },   -- 6
            ["Droughtlands"]     =  {  idx         =  nil,
                                       text        =  nil,
                                       label       =  "Don’t be Cagey",
                                       category    =  "Puzzles",
                                       playerpos   =  {  y  =  0,
                                                         x  =  8335,
                                                         z  =  6200,
                                                         zonename =  "Droughtlands",
                                                         zoneid   =  zn2id["Droughtlands"],
                                                      },
                                       timestamp   =  os.time(),
                                    },   -- 7
            ["Iron Pine Peak"]   =  {  idx         =  nil,
                                       text        =  nil,
                                       label       =  "Tracks in the Snow",
                                       category    =  "Puzzles",
                                       playerpos   =  {  y=0,
                                                         x=3760,
                                                         z=2266,
                                                         zonename =  "Iron Pine Peak",
                                                         zoneid   =  zn2id["Iron Pine Peak"],
                                                      },
                                       timestamp   =  os.time(),
                                    },   -- 8
            ["Shimmersand"]      =  {  idx         =  nil,
                                       text        =  nil,
                                       label       =  "The Peg Solitaire",
                                       category		=  "Puzzles",
                                       playerpos   =  {  y  =  0,
                                                         x  =  6414,
                                                         z  =  7714,
                                                         zonename =  "Shimmersand",
                                                         zoneid   =  zn2id["Shimmersand"],
                                                      },
                                       timestamp   =  os.time(),
                                    },   -- 9
            ["Stillmoor"]        =  {  idx         =  nil,
                                       text        =  nil,
                                       timestamp   =  os.time(),
                                       label			=  "Herding Bats",
                                       category		=  "Puzzles",
                                       playerpos   =  {  y  =  0,
                                                         x  =  1705,
                                                         z  =  2310,
                                                         zonename =  "Shimmersand",
                                                         zoneid   =  zn2id["Shimmersand"],
                                                      },
                                    },   -- 10
            ["Ember Isle"]       =  {  idx         =  nil,
                                       text        =  nil,
                                       timestamp   =  os.time(),
                                       label			=  "Emerald Enigma",
                                       category		=  "Puzzles",
                                       playerpos   =  {  y  =  0,
                                                         x  =  12823,
                                                         z  =  3857,
                                                         zonename =  "Ember Isle",
                                                         zoneid   =  zn2id["Ember Isle"],
                                                      },
                                    },   -- 11
            ["Ardent Domain"]    =  {  idx         =  nil,
                                       text        =  "Artifact Set Required: Circuit Diagrams (12)",
                                       timestamp   =  os.time(),
                                       label			=  "Circuit Diagrams",
                                       category		=  "Puzzles",
                                       playerpos   =  {  y=0,
                                                         x=5988,
                                                         z=10744,
                                                         zonename =  "Ardent Domain",
                                                         zoneid   =  zn2id["Ardent Domain"],
                                                      },
                                    },                              -- 12
            ["City Core"]        =  {  idx         =  nil,
                                       text        =  "Artifact Set Required: A Knight's Tour (6)",
                                       timestamp   =  os.time(),
                                       label			=  "A Knight's Tour",
                                       category		=  "Puzzles",
                                       playerpos   =  {  y=0,
                                                         x=6984,
                                                         z=10036,
                                                         zonename =  "City Core",
                                                         zoneid   =  zn2id["City Core"],
                                                      },
                                    },                              -- 13
            ["Eastern Holdings"] =  {  idx         =  nil,
                                       text        =  "Artifact Set Required: M'doidoi Dolls (9) (bottom of the pond has a portal)",
                                       timestamp   =  os.time(),
                                       label			=  "M'doidoi Dolls",
                                       category		=  "Puzzles",
                                       playerpos   =  {  y=0,
                                                         x=8800,
                                                         z=8750,
                                                         zonename =  "Eastern Holdings",
                                                         zoneid   =  zn2id["Eastern Holdings"],
                                                      },
                                    },	     -- 14
            ["Seratos"]          =  {  idx         =  nil,
                                       text        =  "Artifact Set Required: Seeing Dots, 3 Blob of Ectoplasm (found in NW Ardent Domain)",
                                       timestamp   =  os.time(),
                                       label			=  "Seeing Dots",
                                       category		=  "Puzzles",
                                       playerpos   =  {  y=0,
                                                         x=11400,
                                                         z=6280,
                                                         zonename =  "Seratos",
                                                         zoneid   =  zn2id["Seratos"],
                                                      },
                                    },	                     -- 15
            ["Kingsward"]        =  {  idx         =  nil,
                                       text        =  "Artifact Set Required: Queen's Gambit (12)",
                                       timestamp   =  os.time(),
                                       label			=  "Queen's Gambit",
                                       category		=  "Puzzles",
                                       playerpos   =  {  y=0,
                                                         x=4813,
                                                         z=8675,
                                                         zonename =  "Kingsward",
                                                         zoneid   =  zn2id["Kingsward"],
                                                      },
                                    },
            ["Morban"]           =  {  idx         =  nil,
                                       text        =  "Artifact Set Required: Black Box",
                                       timestamp   =  os.time(),
                                       label			=  "Black Box",
                                       category		=  "Puzzles",
                                       playerpos   =  {  y=0,
                                                         x=12700,
                                                         z=7450,
                                                         zonename =  "Morban",
                                                         zoneid   =  zn2id["Morban"],
                                                      },

                                    }, -- 16
            ["The Dendrome"]     =  {  idx         =  nil,
                                       text        =  "Artifact Set Required: Snake Eyes, 10 Glowing Rootballs (attained from watching puppet shows in Hailol)",
                                       timestamp   =  os.time(),
                                       label			=  "Snake Eyes",
                                       category		=  "Puzzles",
                                       playerpos   =  {  y=0,
                                                         x=4410,
                                                         z=4240,
                                                         zonename =  "Morban",
                                                         zoneid   =  zn2id["Morban"],
                                                      },
                                    }, -- 17
         }

   self.db  =  t
   t        =  {}

   return self
end
