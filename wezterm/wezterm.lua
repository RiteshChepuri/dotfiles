local wezterm = require("wezterm")

local config = wezterm.config_builder()

local general = require("config.general")
general.apply(config)

local keys = require("config.keys")
keys.apply(config)

return config
