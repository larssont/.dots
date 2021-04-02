local srcery = {}

local colors = {
    black          = '#1C1B19',
    red            = '#EF2F27',
    green          = '#519F50',
    yellow         = '#FBB829',
    blue           = '#2C78BF',
    magenta        = '#E02C6D',
    cyan           = '#0AAEB3',
    white          = '#D0BFA1',
    bright_black   = '#918175',
    bright_red     = '#F75341',
    bright_green   = '#98BC37',
    bright_yellow  = '#FED06E',
    bright_blue    = '#68A8E4',
    bright_magenta = '#FF5C8F',
    bright_cyan    = '#53FDE9',
    bright_white   = '#FCE8C3',
    orange        = '#FF5F00',
    bright_orange = '#FF8700',
    hard_black    = '#121212',
    xgray1        = '#262626',
    xgray2        = '#303030',
    xgray3        = '#3A3A3A',
    xgray4        = '#444444',
    xgray5        = '#4E4E4E',
    xgray6        = '#585858',
}

srcery.normal = {
    a = { bg = colors.xgray5, fg = colors.bright_white, gui = "bold", },
    b = { bg = colors.xgray3, fg  = colors.bright_white, },
    c = { bg = colors.xgray2, fg = colors.bright_white }
}

srcery.insert = {
    a = { bg = colors.bright_white, fg = colors.black, gui = "bold", },
    b = { bg = colors.bright_black, fg = colors.black, },
    c = { bg = colors.xgray2, fg = colors.bright_white }
}

srcery.visual = {
    a = { bg = colors.cyan, fg = colors.black, gui = "bold", },
    b = { bg = colors.xgray5, fg = colors.bright_white, },
    c = { bg = colors.xgray2, fg = colors.bright_white },
}

srcery.replace = {
    a = { bg = colors.bright_red, fg = colors.bright_white, gui = "bold", },
    b = { bg = colors.bright_black, fg = colors.black, },
    c = { bg = colors.xgray2, fg = colors.bright_white },
}

srcery.command = {
    a = { bg = colors.yellow, fg = colors.black, gui = "bold", },
    b = { bg = colors.xgray5, fg = colors.bright_white, },
    c = { bg = colors.xgray2, fg = colors.bright_white },
}

srcery.terminal = {
    a = { bg = colors.green, fg = colors.black, gui = "bold", },
    b = { bg = colors.xgray5, fg = colors.bright_white, },
    c = { bg = colors.xgray2, fg = colors.bright_white },
}

srcery.inactive = {
    a = { bg = colors.xgray2, fg = colors.bright_black, gui = "bold", },
    b = { bg = colors.xgray2, fg = colors.bright_black, },
    c = { bg = colors.xgray2, fg = colors.xgray6 },
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
