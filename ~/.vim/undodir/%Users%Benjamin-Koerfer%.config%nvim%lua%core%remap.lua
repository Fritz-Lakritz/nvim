Vim�UnDo� C�Q}��b�j��L!���EqSNӨ���7
�e"   -       .                           e�j�    _�                             ����                                                                                                                                                                                                                                                                                                                                                             e���     �         .       �         -    5��                          �                     �                          �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e���    �   .   /           �       0       .   vim.g.mapleader = " "   -vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)   %vim.keymap.set("i", "<C-c>", "<Esc>")   Ovim.keymap.set("n", "<leader>z", ":!zathura <C-r>=expand('%:r')<cr>.pdf &<cr>")       Uvim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })   Uvim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })       ,vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")   ,vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")       'vim.keymap.set("n", "<c-u>", "<c-u>zz")   'vim.keymap.set("n", "<c-d>", "<c-d>zz")   !vim.keymap.set("n", "n", "nzzzv")   !vim.keymap.set("n", "N", "Nzzzv")   !vim.keymap.set("n", "J", "mzJ`z")       *vim.keymap.set("x", "<leader>p", [["_dP]])       --test   -- LSP   Lvim.keymap.set("n", "<leader>dn", "<cmd>lua vim.diagnostic.goto_next()<cr>")   Lvim.keymap.set("n", "<leader>dp", "<cmd>lua vim.diagnostic.goto_prev()<cr>")   Kvim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>")   Fvim.keymap.set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<cr>")       	-- resize   7vim.keymap.set("n", "+", "<cmd>vertical resize +5<cr>")   7vim.keymap.set("n", "-", "<cmd>vertical resize -5<cr>")           &-- open inkscape currently not working   dvim.api.nvim_set_keymap('n', '<leader>is', [[:lua require'core.inkscape'.open_with_filename()<CR>]],   &    { noremap = true, silent = true })       -- auto correct   evim.api.nvim_set_keymap('i', '<C-s>', '<C-g>u<Esc>[s1z=`]a<C-g>u', { noremap = true, silent = true })           Qvim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })       	-- andere   5vim.keymap.set('n', '<leader><Tab>', '_i<Tab><Esc>$')   6vim.keymap.set('n', '<leader><S-Tab>', '_i<Bs><Esc>$')       ;vim.keymap.set('n', '<leader>t', '<cmd>UndotreeToggle<CR>')5��            -   ;   .               �      �      �    .                      �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e��     �                --test5��                          �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e��
    �   -               �               -   vim.g.mapleader = " "   -vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)   %vim.keymap.set("i", "<C-c>", "<Esc>")   Ovim.keymap.set("n", "<leader>z", ":!zathura <C-r>=expand('%:r')<cr>.pdf &<cr>")       Uvim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })   Uvim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })       ,vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")   ,vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")       'vim.keymap.set("n", "<c-u>", "<c-u>zz")   'vim.keymap.set("n", "<c-d>", "<c-d>zz")   !vim.keymap.set("n", "n", "nzzzv")   !vim.keymap.set("n", "N", "Nzzzv")   !vim.keymap.set("n", "J", "mzJ`z")       *vim.keymap.set("x", "<leader>p", [["_dP]])       -- LSP   Lvim.keymap.set("n", "<leader>dn", "<cmd>lua vim.diagnostic.goto_next()<cr>")   Lvim.keymap.set("n", "<leader>dp", "<cmd>lua vim.diagnostic.goto_prev()<cr>")   Kvim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>")   Fvim.keymap.set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<cr>")       	-- resize   7vim.keymap.set("n", "+", "<cmd>vertical resize +5<cr>")   7vim.keymap.set("n", "-", "<cmd>vertical resize -5<cr>")           &-- open inkscape currently not working   dvim.api.nvim_set_keymap('n', '<leader>is', [[:lua require'core.inkscape'.open_with_filename()<CR>]],   &    { noremap = true, silent = true })       -- auto correct   evim.api.nvim_set_keymap('i', '<C-s>', '<C-g>u<Esc>[s1z=`]a<C-g>u', { noremap = true, silent = true })           Qvim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })       	-- andere   5vim.keymap.set('n', '<leader><Tab>', '_i<Tab><Esc>$')   6vim.keymap.set('n', '<leader><S-Tab>', '_i<Bs><Esc>$')       ;vim.keymap.set('n', '<leader>t', '<cmd>UndotreeToggle<CR>')5��            ,   ;   -               �      �      �    -                      �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                            e�jm     �         -    �         -    5��                          �                     5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                            e�jo     �                test5��                          �                     5�_�      
          	           ����                                                                                                                                                                                                                                                                                                                                                 v        e�j�     �         -      -- LSP5��                          �                     5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                 v        e�j�     �         -      - LSP�         -    5��                         �                     5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                v       e�j�    �   -               �               -   vim.g.mapleader = " "   -vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)   %vim.keymap.set("i", "<C-c>", "<Esc>")   Ovim.keymap.set("n", "<leader>z", ":!zathura <C-r>=expand('%:r')<cr>.pdf &<cr>")       Uvim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })   Uvim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })       ,vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")   ,vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")       'vim.keymap.set("n", "<c-u>", "<c-u>zz")   'vim.keymap.set("n", "<c-d>", "<c-d>zz")   !vim.keymap.set("n", "n", "nzzzv")   !vim.keymap.set("n", "N", "Nzzzv")   !vim.keymap.set("n", "J", "mzJ`z")       *vim.keymap.set("x", "<leader>p", [["_dP]])       -- LSP   Lvim.keymap.set("n", "<leader>dn", "<cmd>lua vim.diagnostic.goto_next()<cr>")   Lvim.keymap.set("n", "<leader>dp", "<cmd>lua vim.diagnostic.goto_prev()<cr>")   Kvim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>")   Fvim.keymap.set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<cr>")       	-- resize   7vim.keymap.set("n", "+", "<cmd>vertical resize +5<cr>")   7vim.keymap.set("n", "-", "<cmd>vertical resize -5<cr>")           &-- open inkscape currently not working   dvim.api.nvim_set_keymap('n', '<leader>is', [[:lua require'core.inkscape'.open_with_filename()<CR>]],   &    { noremap = true, silent = true })       -- auto correct   evim.api.nvim_set_keymap('i', '<C-s>', '<C-g>u<Esc>[s1z=`]a<C-g>u', { noremap = true, silent = true })           Qvim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })       	-- andere   5vim.keymap.set('n', '<leader><Tab>', '_i<Tab><Esc>$')   6vim.keymap.set('n', '<leader><S-Tab>', '_i<Bs><Esc>$')       ;vim.keymap.set('n', '<leader>t', '<cmd>UndotreeToggle<CR>')5��            ,   ;   -               �      �      �    -                      �                     5�_�   
                       ����                                                                                                                                                                                                                                                                                                                                               v       e�j�     �         -      -- �         .      -- test5��                          �                     �                         �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 V        e�j�     �              5��                          �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 V        e�j�     �              5��                          �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 V        e�j�     �         ,      Lvim.keymap.set("n", "<leader>dn", "<cmd>lua vim.diagnostic.goto_next()<cr>")   Lvim.keymap.set("n", "<leader>dp", "<cmd>lua vim.diagnostic.goto_prev()<cr>")   Kvim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>")�         /    �                Lvim.keymap.set("n", "<leader>dn", "<cmd>lua vim.diagnostic.goto_next()<cr>")   Lvim.keymap.set("n", "<leader>dp", "<cmd>lua vim.diagnostic.goto_prev()<cr>")   Kvim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>")5��                        �      �       �      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 V        e�j�     �         ,      Lvim.keymap.set("n", "<leader>dn", "<cmd>lua vim.diagnostic.goto_next()<cr>")   Lvim.keymap.set("n", "<leader>dp", "<cmd>lua vim.diagnostic.goto_prev()<cr>")   Kvim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>")�         /    �                Lvim.keymap.set("n", "<leader>dn", "<cmd>lua vim.diagnostic.goto_next()<cr>")   Lvim.keymap.set("n", "<leader>dp", "<cmd>lua vim.diagnostic.goto_prev()<cr>")   Kvim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>")5��                        �      �       z      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 V        e�j�     �         ,      Lvim.keymap.set("n", "<leader>dn", "<cmd>lua vim.diagnostic.goto_next()<cr>")   Lvim.keymap.set("n", "<leader>dp", "<cmd>lua vim.diagnostic.goto_prev()<cr>")   Kvim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>")�         /    �                Lvim.keymap.set("n", "<leader>dn", "<cmd>lua vim.diagnostic.goto_next()<cr>")   Lvim.keymap.set("n", "<leader>dp", "<cmd>lua vim.diagnostic.goto_prev()<cr>")   Kvim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>")5��                        z      �       �      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 V        e�j�     �         ,      Lvim.keymap.set("n", "<leader>dn", "<cmd>lua vim.diagnostic.goto_next()<cr>")   Lvim.keymap.set("n", "<leader>dp", "<cmd>lua vim.diagnostic.goto_prev()<cr>")   Kvim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>")�         /    �                Lvim.keymap.set("n", "<leader>dn", "<cmd>lua vim.diagnostic.goto_next()<cr>")   Lvim.keymap.set("n", "<leader>dp", "<cmd>lua vim.diagnostic.goto_prev()<cr>")   Kvim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>")5��                        �      �       �      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 V        e�j�     �         ,      Lvim.keymap.set("n", "<leader>dn", "<cmd>lua vim.diagnostic.goto_next()<cr>")   Lvim.keymap.set("n", "<leader>dp", "<cmd>lua vim.diagnostic.goto_prev()<cr>")   Kvim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>")�         /    �                Lvim.keymap.set("n", "<leader>dn", "<cmd>lua vim.diagnostic.goto_next()<cr>")   Lvim.keymap.set("n", "<leader>dp", "<cmd>lua vim.diagnostic.goto_prev()<cr>")   Kvim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>")5��                        �      �       �      5�_�                             ����                                                                                                                                                                                                                                                                                                                                                 V        e�j�     �         ,      Lvim.keymap.set("n", "<leader>dn", "<cmd>lua vim.diagnostic.goto_next()<cr>")   Lvim.keymap.set("n", "<leader>dp", "<cmd>lua vim.diagnostic.goto_prev()<cr>")   Kvim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>")�         /    �                Lvim.keymap.set("n", "<leader>dn", "<cmd>lua vim.diagnostic.goto_next()<cr>")   Lvim.keymap.set("n", "<leader>dp", "<cmd>lua vim.diagnostic.goto_prev()<cr>")   Kvim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>")5��                        �      �       �      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 V        e�j�     �         ,    �         ,      -- LSP5��                          �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                               V       e�j�     �              �         ,    �         ,      -- test5��                          �                     �                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                               V       e�j�     �         -    �         -      -- test5��                          �                     5�_�                             ����                                                                                                                                                                                                                                                                                                                                               V       e�j�     �         .    �         .      -- test5��                          �                     5�_�   
                       ����                                                                                                                                                                                                                                                                                                                                                v       e�j�     �         -    �         -      --5��                         �                    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                v       e�j�     �         -    �         -    �         -      Pv----im.keymap.set("n", "<leader>dn", "<cmd>lua vim.diagnostic.goto_next()<cr>")5��                         �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                v       e�j�     �         -    �         -      Rv------im.keymap.set("n", "<leader>dn", "<cmd>lua vim.diagnostic.goto_next()<cr>")5��                         �                     5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                v        e�j�     �         -       LSP5��                          �                     5�_�                             ����                                                                                                                                                                                                                                                                                                                                                v        e�j�     �         -    �         -       --LSP5��                         �                     5�_�             	             ����                                                                                                                                                                                                                                                                                                                                                            e�j|     �         -    �         -      test5��                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                            e�j     �         .    �         .      test5��                          �                     5��