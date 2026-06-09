local map = function(keys, cmd, desc)
    vim.keymap.set("n", keys, cmd, { desc = desc })
end

-- Janelas
map("<leader>wv", "<C-w>v", "Split vertical")
map("<leader>ws", "<C-w>s", "Split horizontal")
map("<leader>wq", "<C-w>q", "Fechar janela")
map("<leader>wo", "<C-w>o", "Fechar outras janelas")
map("<leader>we", "<C-w>=", "Equalizar tamanhos")
map("<leader>wh", "<C-w>h", "Janela esquerda")
map("<leader>wj", "<C-w>j", "Janela abaixo")
map("<leader>wk", "<C-w>k", "Janela acima")
map("<leader>wl", "<C-w>l", "Janela direita")
map("<leader>wH", "<C-w>H", "Mover para esquerda")
map("<leader>wJ", "<C-w>J", "Mover para baixo")
map("<leader>wK", "<C-w>K", "Mover para cima")
map("<leader>wL", "<C-w>L", "Mover para direita")
map("<leader>w+", "<C-w>+", "Aumentar altura")
map("<leader>w-", "<C-w>-", "Diminuir altura")
map("<leader>w<", "<C-w><", "Diminuir largura")
map("<leader>w>", "<C-w>>", "Aumentar largura")

-- Navegação de janela com Ctrl (sem leader)
map("<C-h>", "<C-w>h", "Janela esquerda")
map("<C-j>", "<C-w>j", "Janela abaixo")
map("<C-k>", "<C-w>k", "Janela acima")
map("<C-l>", "<C-w>l", "Janela direita")

-- Buffers
map("<leader>bn", ":bnext<CR>", "Próximo buffer")
map("<leader>bp", ":bprev<CR>", "Buffer anterior")
map("<leader>bd", ":bdelete<CR>", "Fechar buffer")
map("<leader>bD", ":bdelete!<CR>", "Fechar buffer (forçar)")

-- Arquivo
map("<leader>fs", ":w<CR>", "Salvar arquivo")
vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<Esc>:w<CR>", { desc = "Salvar arquivo" })
vim.keymap.set({ "n", "i", "v" }, "<C-S-s>", "<Esc>:wa<CR>", { desc = "Salvar todos" })
map("<leader>fS", ":wa<CR>", "Salvar todos")
map("<leader>fq", ":wq<CR>", "Salvar e sair")

-- Quit
map("<leader>qq", ":qa<CR>", "Sair do Neovim")
map("<leader>qw", ":wqa<CR>", "Salvar tudo e sair")
map("<leader>qf", ":qa!<CR>", "Forçar sair")

-- UI / Toggles
map("<leader>un", ":set number!<CR>", "Toggle line numbers")
map("<leader>ur", ":set relativenumber!<CR>", "Toggle relative numbers")
map("<leader>uw", ":set wrap!<CR>", "Toggle word wrap")
map("<leader>us", ":set spell!<CR>", "Toggle spell check")
map("<leader>uh", ":set hlsearch!<CR>", "Toggle highlight search")

-- Search
map("<leader>sc", ":nohlsearch<CR>", "Limpar highlight")
map("<leader>sw", "/<C-r><C-w><CR>", "Buscar palavra sob cursor")

-- Quickfix / Diagnostics
map("<leader>xn", vim.diagnostic.goto_next, "Próximo diagnóstico")
map("<leader>xp", vim.diagnostic.goto_prev, "Diagnóstico anterior")
map("<leader>xq", vim.diagnostic.setqflist, "Diagnósticos no quickfix")
map("<leader>xl", ":lopen<CR>", "Abrir location list")

-- LSP
map("<leader>li", ":LspInfo<CR>", "LSP Info")
map("<leader>lr", ":LspRestart<CR>", "Reiniciar LSP")
map("<leader>lf", ":lua vim.lsp.buf.format()<CR>", "Formatar arquivo")

-- Mover linhas
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Mover linha pra baixo" })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Mover linha pra cima" })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Mover seleção pra baixo" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Mover seleção pra cima" })

-- Terminal
map("<leader>tf", ":ToggleTerm direction=float<CR>", "Terminal flutuante")
map("<leader>th", ":ToggleTerm direction=horizontal<CR>", "Terminal horizontal")
map("<leader>tv", ":ToggleTerm direction=vertical<CR>", "Terminal vertical")
