local srcery = {}

local colors = {
    wheat     = '#bfbf97', 
    yellow    = '#e3c78a',
    orange    = '#de935f',
    coral     = '#f09479',
    bright_green      = '#85dc85',
    green     = '#8cc85f',
    emerald   = '#36c692',
    blue      = '#80a0ff',
    sky       = '#74b2ff',
    turquoise = '#79dac8',
    purple    = '#ae81ff',
    cranberry = '#e2637f',
    violet    = '#d183e8',
    crimson   = '#ff5189',
    red       = '#ff5454',
    black          = '#080808',
    white          = '#c6c6c6',
    bright_black   = '#323437',
    xgray2        = '#121212',
    xgray3        = '#1c1c1c',
    xgray5        = '#303030',
    xgray6        = '#626262',
}
srcery.normal = {
    a = { bg = colors.xgray5, fg = colors.white, gui = "bold", },
    b = { bg = colors.xgray3, fg  = colors.white, },
    c = { bg = colors.xgray3, fg = colors.white }
}

srcery.insert = {
    a = { bg = colors.white, fg = colors.black, gui = "bold", },
    b = { bg = colors.xgray3, fg  = colors.white, },

    c = { bg = colors.xgray3, fg = colors.white }
}

srcery.visual = {
    a = { bg = colors.blue, fg = colors.black, gui = "bold", },
    b = { bg = colors.xgray3, fg  = colors.white, },
    c = { bg = colors.xgray3, fg = colors.white }
}

srcery.replace = {
    a = { bg = colors.crimson, fg = colors.black, gui = "bold", },
    b = { bg = colors.xgray3, fg  = colors.white, },
    c = { bg = colors.xgray3, fg = colors.white }
}

srcery.command = {
    a = { bg = colors.wheat, fg = colors.black, gui = "bold", },
    b = { bg = colors.xgray3, fg  = colors.white, },
    c = { bg = colors.xgray3, fg = colors.white }
}

srcery.terminal = {
    a = { bg = colors.emerald, fg = colors.black, gui = "bold", },
    b = { bg = colors.xgray3, fg  = colors.white, },
    c = { bg = colors.xgray3, fg = colors.white }
}

srcery.inactive = {
    a = { bg = colors.xgray2, fg = colors.xgray6, gui = "bold", },
    b = { bg = colors.xgray2, fg  = colors.xgray6, },
    c = { bg = colors.xgray2, fg = colors.xgray6 }
}


require('lualine').setup{
    options = {
        theme = srcery,
        section_separators = {'', ''},
        component_separators = {'', ''},
        icons_enabled = true,
    },
    sections = {
        lualine_a = { {'mode', upper = true} },
        lualine_b = { {'branch', icon = ''} },
        lualine_c = { {'filename', file_status = true} },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location'  },
    },
    inactive_sections = {
        lualine_a = {  },
        lualine_b = {  },
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {  },
        lualine_z = {   }
    },
}
