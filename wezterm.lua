--local wezterm = require('wezterm')
--local config = wezterm.config_builder()
local Config = require('config')
--config.color_scheme = 'Kanagawa Dragon (Gogh)'

require('utils.backdrops')
   :set_files()
   -- :set_focus('#000000')
   :random()

require('events.right-status').setup()
require('events.left-status').setup()
require('events.tab-title').setup()
require('events.new-tab-button').setup()

-- and finally, return the configuration to wezterm
--return config

return Config:init()
   :append(require('config.appearance'))
   :append(require('config.bindings'))
   :append(require('config.domains'))
   :append(require('config.fonts'))
   :append(require('config.general'))
   :append(require('config.launch')).options
