--[[

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
local c_opfl_tbl =
{
  ["A"] = 0,
  ["B"] = 11,
  ["C"] = 24,
  ["D"] = 32,
  ["E"] = 38,
  ["F"] = 47,
  ["G"] = 49,
  ["H"] = 51,
  ["I"] = 56,
  ["J"] = 62,
  ["K"] = 75,
  ["L"] = 80,
  ["M"] = 92,
  ["N"] = 98,
  ["O"] = 100,
}

-- List that maps Options to categories
local c_opcat_tbl =
{
  ["A"] = "Architect 24mm",
  ["B"] = "Street 28mm",
  ["C"] = "Street 35mm",
  ["D"] = "EyeView 42mm",
  ["E"] = "Nifty 50mm",
  ["F"] = "Narrow 64mm",
  ["G"] = "Portrait 70mm",
  ["H"] = "Portrait 75mm",
  ["I"] = "Portrait 85mm",
  ["J"] = "Portrait 100mm",
  ["K"] = "Sports 135mm",
  ["L"] = "Sports 150mm",
  ["M"] = "Sports 200mm",
  ["N"] = "Sports 225mm",
  ["O"] = "Sports 240mm",
}

-- Main Section
set_zoom_speed(70)
-- Display Option
print("Op |   FL    | Category")
print(" A | 23.89mm | Architect")
print(" B | 27.92mm | Street28 ")
print(" C | 34.68mm | Street35 ")
sleep(3600)
print(" D | 41.97mm | EyeView")
print(" E | 49.32mm | Nifty50")
print(" F | 63.76mm | Narrow64")
print(" G | 69.47mm | Portrait70")
sleep(3600)
print(" H | 73.52mm | Portrait75")
print(" I | 84.39mm | Portrait85")
print(" J | 98.69mm | Portrait100")
print(" K | 134.4mm | Sports135")
sleep(3600)
print(" L | 150.6mm | Sports150")
print(" M | 197.7mm | Sports200")
print(" N | 225.6mm | Sports225")
print(" O | 238.9mm | Sports240")
sleep(3600)
-- Prompt User to make a selection
i_fl_op=textbox("Std. Focal Lens Eqv.ELPH 190IS" , "Enter a letter" , "C" , 1)
-- Set zoom
set_zoom(c_opfl_tbl[i_fl_op])

-- Display selected option
print("\n\n\nEqv. Focal Length:")
print(c_opcat_tbl[i_fl_op])
sleep(600)

-- Done. Exit Alt to allow normal usage
exit_alt()