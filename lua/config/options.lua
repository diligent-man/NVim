local options = {
    -- Ruler
    ruler = true,                               -- Show the line and column number of the cursor position
    rulerformat = "%20(r%l%V:c%c%V - %p%%%)",           -- configured according to https://neovim.io/doc/user/options.html#'statusline'


    -- Tab / Indentation
    autoindent = true,                          -- autoindent in next line
    expandtab = true,                           -- spaces in lieu of tab for indentation
    shiftwidth = 4,                             -- the number of spaces inserted for each indentation
    softtabstop = 4,
    smartindent = true,
    tabstop = 4,                                -- insert 2 spaces for a tab
    wrap = false,


    -- Search
    incsearch = true,                           -- increase searching speed
    ignorecase = false,                         -- case sensitive
    smartcase = true,                           -- override ignorecase for regex search
    hlsearch = true,                            -- highlight all matches


    -- Appearance
    number = true,                              -- show line number on the left
    numberwidth = 1,                            -- auto increase width when necessary
    relativenumber = false,
    termguicolors = true,                       -- use 24-bit RGB color in the TUI
    -- colorcolumn = "100",
    -- signcolumn = "yes",
    -- cmdheight = 1,
    -- scrolloff = 10,
    -- completeopt = "menuone,noinsert,noselect",
    

    -- Behaviour
    autochdir = true,                           -- change dir to current opened file
    autoread = true,                            -- read file when changed outside of Vim
    autowriteall = true,                        -- auto write in all situations (https://neovim.io/doc/user/options.html#'autowriteall')
                                                -- not need confirm = true
    backspace = {"indent", "eol", "start"},     -- https://neovim.io/doc/user/options.html#'backspace'
    backup = false,                             -- creates a backup file
    cdhome = false,                             -- equi to autochdir = true
    cursorline = false,                         -- highlight the current line
    fileencoding = "UTF-8",                     -- the encoding written to a file
    foldnestmax = 20,                           -- max depth of indented block
    mouse = "a",                                -- allow the mouse to be used in neovim
                                                -- https://neovim.io/doc/user/options.html#'mouse'
    mousehide = true,                           -- hide mouse when typing
    showmode = on,                              -- If in Insert, Replace or Visual mode put a message on the last line
    showtabline = 2,                            -- always show tabs
    splitbelow = true,                          -- force all horizontal splits to go below current window
    splitright = true,                          -- force all vertical splits to go to the right of current window
    swapfile = false,                           -- creates a swapfile
    undolevels = 10000,
    updatetime = 300,                           -- faster completion (4000ms default)
    undofile = false,
    iskeyword = "-",                             -- hyphenated words recognized by searches
    

    -- GUI
    guicursor = "n-v-c:block,i-ci-ve:block,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff100-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175",
    guifont = "monospace:h17",               -- the font used in graphical neovim applications
    

    -- cursorlineopt = {},                      -- option for cursor line  
    -- diff = ???                               -- show differences b/t files
    -- cmdheight = 2,                           -- more space in the neovim command line for displaying messages
    -- completeopt = { "menuone", "noselect" }, -- mostly just for cmp
    -- conceallevel = 0,                        -- so that `` is visible in markdown files
    -- pumheight = 10,                          -- pop up menu height
    -- timeoutlen = 300,                        -- time to wait for a mapped sequence to complete (in milliseconds)
    -- signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
    -- wrap = true,                             -- display lines as one long line
    -- linebreak = true,                        -- companion to wrap, don't split words
    -- scrolloff = 8,                           -- minimal number of screen lines to keep above and below the cursor
    -- sidescrolloff = 8,                       -- minimal number of screen columns either side of cursor if wrap is `false`
    -- whichwrap = "bs<>[]hl",                  -- which "horizontal" keys are allowed to travel to prev/next line
}

-- loop through above dict and assign to vim options
for key, value in pairs(options) do
    vim.opt[key] = value
end

-- vim.opt.shortmess = "ilmnrx"                        -- flags to shorten vim messages, see :help 'shortmess'
vim.opt.shortmess:append "c"                           -- don't give |ins-completion-menu| messages
vim.opt.formatoptions:remove({ "c", "r", "o" })        -- don't insert the current comment leader automatically for auto-wrapping comments using 'textwidth', hitting <Enter> in insert mode, or hitting 'o' or 'O' in normal mode.
-- vim.opt.runtimepath:remove("/usr/share/vim/vimfiles")  -- separate vim plugins from neovim in case vim still in use