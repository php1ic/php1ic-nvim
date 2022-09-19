-- This file is called after the default init.lua
--
-- General options
require("php1ic.set")
-- Any and all key remaps
require("php1ic.remap")
-- Packages that will be used
-- N.B. This is just installing packages and their dependencies.
-- Setup for each package is in indivdual files within the /after/plugin folder
require("php1ic.packer")

