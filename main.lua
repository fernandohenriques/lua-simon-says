-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

local title, subtitle = 'Simon', 'Says'

require('src.utils.hex2rgb')
require('src.makeRaibowTitle')

display.setDefault("background",hex2rgb('#1b1a1a'))

makeRaibowTitle(title, 97, 50)
makeRaibowTitle(subtitle, 112, 100)
