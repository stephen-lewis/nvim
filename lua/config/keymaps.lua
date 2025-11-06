-- Ok, I'm lazy
local k = vim.keymap

-- Helper messages, etc.
local disabled_msg = [[<cmd>echohl Error | echo "KEY DISABLED" | echohl None<CR>]]
local loud = { noremap = true, silent = false }
local opts = { noremap = true, silent = true }

-- Navigation
k.set('n', '<C-d>', '<C-d>zz')      -- page down, centre
k.set('n', '<C-u>', '<C-u>zz')      -- page up, centre

k.set('n', 'n', 'nzzzv', opts)      -- find and centre
k.set('n', 'N', 'Nzzzv', opts)      -- find and centre

k.set({ 'n', 'v' }, '<Up>', disabled_msg, loud)    -- disable the arrow keys
k.set({ 'n', 'v' }, '<Down>', disabled_msg, loud)
k.set({ 'n', 'v' }, '<Left>', disabled_msg, loud)
k.set({ 'n', 'v' }, '<Right>', disabled_msg, loud)

k.set({ 'n', 'v' }, '<Del>', disabled_msg, loud)   -- disable DEL
k.set({ 'n', 'v' }, '<BS>', disabled_msg, loud)    -- disable backspace

k.set('n', '<C-k>', '<cmd>wincmd k<CR>', opts)
k.set('n', '<C-j>', '<cmd>wincmd j<CR>', opts)
k.set('n', '<C-h>', '<cmd>wincmd h<CR>', opts)
k.set('n', '<C-l>', '<cmd>wincmd l<CR>', opts)

-- Clipboard, etc.
k.set('n', 'x', [["_x]], opts)                  -- don't put removed characters on the clipboard
k.set({ 'n', 'v' }, '<leader>d', [["_d]], opts) -- delete without cut
k.set('v', 'p', [["_dP]], opts)                 -- keep last yanked when pasting

-- Editing
k.set('v', '<', '<gv', opts)
k.set('v', '>', '>gv', opts)

-- Buffers
k.set('n', '<Tab>', '<cmd>bnext<CR>', opts)         -- next file
k.set('n', '<S-Tab>', '<cmd>bprevious<CR>', opts)   -- prev file
k.set('n', '<leader>n', '<cmd>enew<CR>', opts)      -- new file

-- Windows
k.set('n', '<leader>v', '<C-w>v', opts)     -- new split vertically
k.set('n', '<leader>h', '<C-w>s', opts)     -- new split horizontally
k.set('n', '<leader>c', '<cmd>close<CR>', opts) -- close window

-- Tabs
k.set('n', '<leader>tn', '<cmd>tabnew<CR>', opts)   -- new tab
k.set('n', '<leader>tc', '<cmd>tabclose<CR>', opts)   -- new tab
k.set('n', '<leader>tl', '<cmd>tabn<CR>', opts)   -- new tab
k.set('n', '<leader>th', '<cmd>tabp<CR>', opts)   -- new tab

-- Misc
k.set('n', '<leader>w', '<cmd>noautocmd w <CR>', opts)

-- Muscle memory issues.
k.set({ 'i', 'n', 'v' }, '<C-s>', '<cmd> w <CR>', opts)
