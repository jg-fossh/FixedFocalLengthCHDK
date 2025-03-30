--[[
@title FixedLens_elph190_ixus180
@chdk_version 1.7
Rev 0.2

Copyright (c) 2025, Jose R Garcia (jg-fossh@protonmail.com).
All rights reserved.

| Meta      | Data       
| :-------- | :-----------
| _Project_ |
| _Version_ | 0.5
| _Author_  | Jose Garcia
| _License_ | GNU GPLv3

@chdk_version 1.7
@title FocalSteps
@description 
This script displays an input text box that accepts one character to provide the
user the capability to select between 15 different focal lengths.

--]]

-- List that maps Options to Zoom Steps
local c_flopt_tbl =
{
  ["A"] = 0,
  ["B"] = 2,
  ["C"] = 3,
  ["D"] = 5,
  ["E"] = 6,
  ["F"] = 7,
  ["G"] = 8,
  ["H"] = 9,
  ["I"] = 12,
  ["J"] = 13,
  ["K"] = 16,
  ["L"] = 18,
  ["M"] = 19,
  ["N"] = 20,
  ["O"] = 22,
}

-- List that maps Options to categories
local c_opcat_tbl =
{
  ["A"] = "Street 35mm",
  ["B"] = "EyeView 42mm",
  ["C"] = "Nifty 50mm",
  ["D"] = "Narrow 64mm",
  ["E"] = "Portrait 70mm",
  ["F"] = "Portrait 75mm",
  ["G"] = "Portrait 85mm",
  ["H"] = "Portrait 96mm",
  ["I"] = "Sports 135mm",
  ["J"] = "Sports 150mm",
  ["K"] = "Sports 210mm",
  ["L"] = "Sports 255mm",
  ["M"] = "Sports 280mm",
  ["N"] = "Wildlife 300mm",
  ["O"] = "Wildlife 360mm",
}

-- Main Section
set_zoom_speed(70)
-- Display Options
print("Op |   FL  | Category")
print(" A |  36mm | Street35")
print(" B |  43mm | EyeView ")
print(" C |  50mm | Nifty50 ")
sleep(3600)
print(" D |  61mm | Narrow64  ")
print(" E |  69mm | Portrait70")
print(" F |  76mm | Portrait75")
print(" G |  86mm | Portrait85")
sleep(3600)
print(" H |  96mm | Portrait96")
print(" I | 134mm | Sports135")
print(" J | 151mm | Sports150")
print(" K | 209mm | Sports210")
sleep(3600)
print(" L | 255mm | Sports255")
print(" M | 279mm | Sports280")
print(" N | 300mm | Nature300")
print(" O | 360mm | Nature360")
sleep(3600)

-- Prompt User to make a selection
i_fl_op=textbox("Std. Focal Lens Eqv." , "Enter a letter" , "C" , 1)
-- Set zoom
set_zoom(c_flopt_tbl[i_fl_op])

-- Display selected option
print("\n\n\nEqv. Focal Length:")
print(c_opcat_tbl[i_fl_op])
sleep(600)

-- Done. Exit Alt to allow normal usage
exit_alt()