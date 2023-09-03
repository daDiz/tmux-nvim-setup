-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/haosha/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/haosha/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/haosha/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/haosha/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/haosha/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["FixCursorHold.nvim"] = {
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/FixCursorHold.nvim",
    url = "https://github.com/antoinemadec/FixCursorHold.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["accelerated-jk.nvim"] = {
    config = { "\27LJ\2\nÎ\1\0\0\6\0\v\0\0226\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0004\5\0\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\t\0'\4\n\0004\5\0\0B\0\5\1K\0\1\0\30<Plug>(accelerated_jk_gk)\6k\30<Plug>(accelerated_jk_gj)\6j\6n\20nvim_set_keymap\bapi\bvim\nsetup\19accelerated-jk\frequire\0" },
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/accelerated-jk.nvim",
    url = "https://github.com/rainbowhxch/accelerated-jk.nvim"
  },
  ["buffer_manager.nvim"] = {
    config = { "\27LJ\2\nK\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\22toggle_quick_menu\22buffer_manager.ui\frequire—\1\1\0\6\0\n\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0003\4\b\0005\5\t\0B\0\5\1K\0\1\0\1\0\1\tdesc\26toggle buffer manager\0\15<leader>mm\6n\bset\vkeymap\bvim\nsetup\19buffer_manager\frequire\0" },
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/buffer_manager.nvim",
    url = "https://github.com/j-morano/buffer_manager.nvim"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["code_runner.nvim"] = {
    config = { "\27LJ\2\nÔ\a\0\0\6\0#\0E6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\3=\3\t\2B\0\2\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0'\3\14\0'\4\15\0005\5\16\0B\0\5\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0'\3\17\0'\4\18\0005\5\19\0B\0\5\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0'\3\20\0'\4\21\0005\5\22\0B\0\5\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0'\3\23\0'\4\24\0005\5\25\0B\0\5\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0'\3\26\0'\4\27\0005\5\28\0B\0\5\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0'\3\29\0'\4\30\0005\5\31\0B\0\5\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0'\3 \0'\4!\0005\5\"\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\1\20:CRProjects<CR>\16<leader>crp\1\0\2\fnoremap\2\vsilent\1\20:CRFiletype<CR>\16<leader>crf\1\0\3\vsilent\1\fnoremap\2\tdesc\17Close runner\18:RunClose<CR>\15<leader>rc\1\0\3\vsilent\1\fnoremap\2\tdesc\28Run the current project\20:RunProject<CR>\15<leader>rp\1\0\3\vsilent\1\fnoremap\2\tdesc/Run the current file and show in a new tab\21:RunFile tab<CR>\15<leader>rt\1\0\3\vsilent\1\fnoremap\2\tdesc\25Run the current file\17:RunFile<CR>\15<leader>rf\1\0\3\vsilent\1\fnoremap\2\tdesc\28Runs based on file type\17:RunCode<CR>\14<leader>r\6n\bset\vkeymap\bvim\rfiletype\1\0\0\trust\1\4\0\0\15cd $dir &&\23rustc $fileName &&\29$dir/$fileNameWithoutExt\tjava\1\0\2\vpython\15python3 -u\15typescript\rdeno run\1\4\0\0\15cd $dir &&\23javac $fileName &&\29java $fileNameWithoutExt\nsetup\16code_runner\frequire\0" },
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/code_runner.nvim",
    url = "https://github.com/CRAG666/code_runner.nvim"
  },
  ["flash.nvim"] = {
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/flash.nvim",
    url = "https://github.com/folke/flash.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  fzf = {
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["glow.nvim"] = {
    config = { "\27LJ\2\n2\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\tglow\frequire\0" },
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/glow.nvim",
    url = "https://github.com/ellisonleao/glow.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["mini.bufremove"] = {
    config = { "\27LJ\2\n±\1\0\0\6\0\n\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\1K\0\1\0\1\0\1\tdesc\18delete buffer(<cmd>lua MiniBufremove.delete()<cr>\14<leader>q\6n\bset\vkeymap\bvim\nsetup\19mini.bufremove\frequire\0" },
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/mini.bufremove",
    url = "https://github.com/echasnovski/mini.bufremove"
  },
  ["neoconf.nvim"] = {
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/neoconf.nvim",
    url = "https://github.com/folke/neoconf.nvim"
  },
  ["neodev.nvim"] = {
    config = { "\27LJ\2\nq\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\flibrary\1\0\0\fplugins\1\0\1\ntypes\2\1\2\0\0\fneotest\nsetup\vneodev\frequire\0" },
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/neodev.nvim",
    url = "https://github.com/folke/neodev.nvim"
  },
  neotest = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\2\0B\0\1\1K\0\1\0\brun\fneotest\frequire[\0\0\5\0\a\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\2\0006\2\3\0009\2\4\0029\2\5\2'\4\6\0B\2\2\0A\0\0\1K\0\1\0\6%\vexpand\afn\bvim\brun\fneotest\frequireK\0\0\3\0\4\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\rstrategy\bdap\brun\fneotest\frequire<\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0B\0\1\1K\0\1\0\tstop\brun\fneotest\frequire>\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0B\0\1\1K\0\1\0\vattach\brun\fneotest\frequireG\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0B\0\1\1K\0\1\0\vtoggle\17output_panel\fneotest\frequireç\4\1\0\b\0\31\1A6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\a\0004\3\3\0006\4\0\0'\6\3\0B\4\2\0025\6\5\0005\a\4\0=\a\6\6B\4\2\0?\4\0\0=\3\b\2B\0\2\0016\0\t\0009\0\n\0009\0\v\0'\2\f\0'\3\r\0003\4\14\0005\5\15\0B\0\5\0016\0\t\0009\0\n\0009\0\v\0'\2\f\0'\3\16\0003\4\17\0005\5\18\0B\0\5\0016\0\t\0009\0\n\0009\0\v\0'\2\f\0'\3\19\0003\4\20\0005\5\21\0B\0\5\0016\0\t\0009\0\n\0009\0\v\0'\2\f\0'\3\22\0003\4\23\0005\5\24\0B\0\5\0016\0\t\0009\0\n\0009\0\v\0'\2\f\0'\3\25\0003\4\26\0005\5\27\0B\0\5\0016\0\t\0009\0\n\0009\0\v\0'\2\f\0'\3\28\0003\4\29\0005\5\30\0B\0\5\1K\0\1\0\1\0\1\tdesc\24Toggle output panel\0\15<leader>to\1\0\1\tdesc\31Attach to the nearest test\0\15<leader>ta\1\0\1\tdesc\26Stop the nearest test\0\15<leader>ts\1\0\1\tdesc\27Debug the nearest test\0\15<leader>td\1\0\1\tdesc\25Run the current file\0\15<leader>tf\1\0\1\tdesc\25Run the nearest test\0\15<leader>tr\6n\bset\vkeymap\bvim\radapters\1\0\0\bdap\1\0\0\1\0\1\15justMyCode\1\19neotest-python\nsetup\fneotest\frequire\3€€À™\4\0" },
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/neotest",
    url = "https://github.com/nvim-neotest/neotest"
  },
  ["neotest-python"] = {
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/neotest-python",
    url = "https://github.com/nvim-neotest/neotest-python"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-bqf"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/opt/nvim-bqf",
    url = "https://github.com/kevinhwang91/nvim-bqf"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-comment"] = {
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/nvim-comment",
    url = "https://github.com/terrortylor/nvim-comment"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-python"] = {
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/nvim-dap-python",
    url = "https://github.com/mfussenegger/nvim-dap-python"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/nvim-dap-virtual-text",
    url = "https://github.com/theHamsta/nvim-dap-virtual-text"
  },
  ["nvim-lastplace"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-lastplace\frequire\0" },
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/nvim-lastplace",
    url = "https://github.com/ethanholz/nvim-lastplace"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-terminal"] = {
    config = { "\27LJ\2\nž\a\0\0\6\0\31\0B6\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\3\0'\2\4\0B\0\2\0029\0\5\0B\0\1\0016\0\0\0009\0\6\0009\0\a\0'\2\b\0'\3\t\0'\4\n\0005\5\v\0B\0\5\0016\0\0\0009\0\6\0009\0\a\0'\2\b\0'\3\f\0'\4\r\0005\5\14\0B\0\5\0016\0\0\0009\0\6\0009\0\a\0'\2\b\0'\3\15\0'\4\16\0005\5\17\0B\0\5\0016\0\0\0009\0\6\0009\0\a\0'\2\b\0'\3\18\0'\4\19\0005\5\20\0B\0\5\0016\0\0\0009\0\6\0009\0\a\0'\2\b\0'\3\21\0'\4\22\0005\5\23\0B\0\5\0016\0\0\0009\0\6\0009\0\a\0'\2\b\0'\3\24\0'\4\25\0005\5\26\0B\0\5\0016\0\0\0009\0\6\0009\0\a\0'\2\27\0'\3\28\0'\4\29\0005\5\30\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\tdesc\25escape terminal mode\15<C-\\><C-n>\n<Esc>\6t\1\0\3\fnoremap\2\vsilent\2\tdesc\22toggle terminal 5*:lua NTGlobal[\"terminal\"]:open(5)<cr>\14<leader>5\1\0\3\fnoremap\2\vsilent\2\tdesc\22toggle terminal 4*:lua NTGlobal[\"terminal\"]:open(4)<cr>\14<leader>4\1\0\3\fnoremap\2\vsilent\2\tdesc\22toggle terminal 3*:lua NTGlobal[\"terminal\"]:open(3)<cr>\14<leader>3\1\0\3\fnoremap\2\vsilent\2\tdesc\22toggle terminal 2*:lua NTGlobal[\"terminal\"]:open(2)<cr>\14<leader>2\1\0\3\fnoremap\2\vsilent\2\tdesc\22toggle terminal 1*:lua NTGlobal[\"terminal\"]:open(1)<cr>\14<leader>1\1\0\3\fnoremap\2\vsilent\2\tdesc\20toggle terminal+:lua NTGlobal[\"terminal\"]:toggle()<cr>\14<leader>;\6n\bset\vkeymap\nsetup\18nvim-terminal\frequire\vhidden\6o\bvim\0" },
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/nvim-terminal",
    url = "https://github.com/s1n7ax/nvim-terminal"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["persistence.nvim"] = {
    config = { "\27LJ\2\nä\2\0\0\6\0\r\0\0306\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0004\5\0\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\t\0'\4\n\0004\5\0\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\v\0'\4\f\0004\5\0\0B\0\5\1K\0\1\0/<cmd>lua require(\"persistence\").stop()<cr>\15<leader>qd><cmd>lua require(\"persistence\").load({ last = true })<cr>\15<leader>ql/<cmd>lua require(\"persistence\").load()<cr>\15<leader>qs\6n\20nvim_set_keymap\bapi\bvim\nsetup\16persistence\frequire\0" },
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/persistence.nvim",
    url = "https://github.com/folke/persistence.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope-dap.nvim"] = {
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/telescope-dap.nvim",
    url = "https://github.com/nvim-telescope/telescope-dap.nvim"
  },
  ["telescope-menufacture"] = {
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/telescope-menufacture",
    url = "https://github.com/molecule-man/telescope-menufacture"
  },
  ["telescope-recent-files"] = {
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/telescope-recent-files",
    url = "https://github.com/smartpde/telescope-recent-files"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vtoggle\ftrouble\frequireN\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\26workspace_diagnostics\topen\ftrouble\frequireM\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\25document_diagnostics\topen\ftrouble\frequireA\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\rquickfix\topen\ftrouble\frequire@\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\floclist\topen\ftrouble\frequireG\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\19lsp_references\topen\ftrouble\frequire´\3\1\0\6\0\22\00016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0003\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0003\4\b\0005\5\t\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\n\0003\4\v\0005\5\f\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\r\0003\4\14\0005\5\15\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\16\0003\4\17\0005\5\18\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\19\0003\4\20\0005\5\21\0B\0\5\1K\0\1\0\1\0\1\tdesc\23open lsp reference\0\agR\1\0\1\tdesc\17open loclist\0\15<leader>xl\1\0\1\tdesc\18open quickfix\0\15<leader>xq\1\0\1\tdesc\25document diagnostics\0\15<leader>xd\1\0\1\tdesc\26workspace diagnostics\0\15<leader>xw\1\0\1\tdesc\19toggle trouble\0\15<leader>xx\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-choosewin"] = {
    config = { "\27LJ\2\nn\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\1\tdesc\16pick window\23<cmd>ChooseWin<cr>\15<leader>pw\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/vim-choosewin",
    url = "https://github.com/t9md/vim-choosewin"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-tmux-navigator"] = {
    config = { "\27LJ\2\nì\3\0\0\6\0\19\0)6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\r\0'\4\14\0005\5\15\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\16\0'\4\17\0005\5\18\0B\0\5\1K\0\1\0\1\0\1\tdesc\28move to previous window\"<C-U>TmuxNavigatePrevious<cr>\bc-/\1\0\1\tdesc\25move to window right\31<C-U>TmuxNavigateRight<cr>\n<c-r>\1\0\1\tdesc\22move to window up\28<C-U>TmuxNavigateUp<cr>\n<c-k>\1\0\1\tdesc\24move to window down\30<C-U>TmuxNavigateDown<cr>\n<c-j>\1\0\1\tdesc\24move to window left\30<C-U>TmuxNavigateLeft<cr>\n<c-l>\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\np\0\0\3\0\a\0\0146\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0)\1,\1=\1\3\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0B\0\1\1K\0\1\0\nsetup\14which-key\frequire\15timeoutlen\ftimeout\6o\bvim\0" },
    loaded = true,
    path = "/Users/haosha/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: vim-tmux-navigator
time([[Config for vim-tmux-navigator]], true)
try_loadstring("\27LJ\2\nì\3\0\0\6\0\19\0)6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\r\0'\4\14\0005\5\15\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\16\0'\4\17\0005\5\18\0B\0\5\1K\0\1\0\1\0\1\tdesc\28move to previous window\"<C-U>TmuxNavigatePrevious<cr>\bc-/\1\0\1\tdesc\25move to window right\31<C-U>TmuxNavigateRight<cr>\n<c-r>\1\0\1\tdesc\22move to window up\28<C-U>TmuxNavigateUp<cr>\n<c-k>\1\0\1\tdesc\24move to window down\30<C-U>TmuxNavigateDown<cr>\n<c-j>\1\0\1\tdesc\24move to window left\30<C-U>TmuxNavigateLeft<cr>\n<c-l>\6n\bset\vkeymap\bvim\0", "config", "vim-tmux-navigator")
time([[Config for vim-tmux-navigator]], false)
-- Config for: nvim-lastplace
time([[Config for nvim-lastplace]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-lastplace\frequire\0", "config", "nvim-lastplace")
time([[Config for nvim-lastplace]], false)
-- Config for: persistence.nvim
time([[Config for persistence.nvim]], true)
try_loadstring("\27LJ\2\nä\2\0\0\6\0\r\0\0306\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0004\5\0\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\t\0'\4\n\0004\5\0\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\v\0'\4\f\0004\5\0\0B\0\5\1K\0\1\0/<cmd>lua require(\"persistence\").stop()<cr>\15<leader>qd><cmd>lua require(\"persistence\").load({ last = true })<cr>\15<leader>ql/<cmd>lua require(\"persistence\").load()<cr>\15<leader>qs\6n\20nvim_set_keymap\bapi\bvim\nsetup\16persistence\frequire\0", "config", "persistence.nvim")
time([[Config for persistence.nvim]], false)
-- Config for: nvim-terminal
time([[Config for nvim-terminal]], true)
try_loadstring("\27LJ\2\nž\a\0\0\6\0\31\0B6\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\3\0'\2\4\0B\0\2\0029\0\5\0B\0\1\0016\0\0\0009\0\6\0009\0\a\0'\2\b\0'\3\t\0'\4\n\0005\5\v\0B\0\5\0016\0\0\0009\0\6\0009\0\a\0'\2\b\0'\3\f\0'\4\r\0005\5\14\0B\0\5\0016\0\0\0009\0\6\0009\0\a\0'\2\b\0'\3\15\0'\4\16\0005\5\17\0B\0\5\0016\0\0\0009\0\6\0009\0\a\0'\2\b\0'\3\18\0'\4\19\0005\5\20\0B\0\5\0016\0\0\0009\0\6\0009\0\a\0'\2\b\0'\3\21\0'\4\22\0005\5\23\0B\0\5\0016\0\0\0009\0\6\0009\0\a\0'\2\b\0'\3\24\0'\4\25\0005\5\26\0B\0\5\0016\0\0\0009\0\6\0009\0\a\0'\2\27\0'\3\28\0'\4\29\0005\5\30\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\tdesc\25escape terminal mode\15<C-\\><C-n>\n<Esc>\6t\1\0\3\fnoremap\2\vsilent\2\tdesc\22toggle terminal 5*:lua NTGlobal[\"terminal\"]:open(5)<cr>\14<leader>5\1\0\3\fnoremap\2\vsilent\2\tdesc\22toggle terminal 4*:lua NTGlobal[\"terminal\"]:open(4)<cr>\14<leader>4\1\0\3\fnoremap\2\vsilent\2\tdesc\22toggle terminal 3*:lua NTGlobal[\"terminal\"]:open(3)<cr>\14<leader>3\1\0\3\fnoremap\2\vsilent\2\tdesc\22toggle terminal 2*:lua NTGlobal[\"terminal\"]:open(2)<cr>\14<leader>2\1\0\3\fnoremap\2\vsilent\2\tdesc\22toggle terminal 1*:lua NTGlobal[\"terminal\"]:open(1)<cr>\14<leader>1\1\0\3\fnoremap\2\vsilent\2\tdesc\20toggle terminal+:lua NTGlobal[\"terminal\"]:toggle()<cr>\14<leader>;\6n\bset\vkeymap\nsetup\18nvim-terminal\frequire\vhidden\6o\bvim\0", "config", "nvim-terminal")
time([[Config for nvim-terminal]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: vim-choosewin
time([[Config for vim-choosewin]], true)
try_loadstring("\27LJ\2\nn\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\1\tdesc\16pick window\23<cmd>ChooseWin<cr>\15<leader>pw\6n\bset\vkeymap\bvim\0", "config", "vim-choosewin")
time([[Config for vim-choosewin]], false)
-- Config for: buffer_manager.nvim
time([[Config for buffer_manager.nvim]], true)
try_loadstring("\27LJ\2\nK\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\22toggle_quick_menu\22buffer_manager.ui\frequire—\1\1\0\6\0\n\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0003\4\b\0005\5\t\0B\0\5\1K\0\1\0\1\0\1\tdesc\26toggle buffer manager\0\15<leader>mm\6n\bset\vkeymap\bvim\nsetup\19buffer_manager\frequire\0", "config", "buffer_manager.nvim")
time([[Config for buffer_manager.nvim]], false)
-- Config for: neodev.nvim
time([[Config for neodev.nvim]], true)
try_loadstring("\27LJ\2\nq\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\flibrary\1\0\0\fplugins\1\0\1\ntypes\2\1\2\0\0\fneotest\nsetup\vneodev\frequire\0", "config", "neodev.nvim")
time([[Config for neodev.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vtoggle\ftrouble\frequireN\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\26workspace_diagnostics\topen\ftrouble\frequireM\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\25document_diagnostics\topen\ftrouble\frequireA\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\rquickfix\topen\ftrouble\frequire@\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\floclist\topen\ftrouble\frequireG\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\19lsp_references\topen\ftrouble\frequire´\3\1\0\6\0\22\00016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0003\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0003\4\b\0005\5\t\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\n\0003\4\v\0005\5\f\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\r\0003\4\14\0005\5\15\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\16\0003\4\17\0005\5\18\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\19\0003\4\20\0005\5\21\0B\0\5\1K\0\1\0\1\0\1\tdesc\23open lsp reference\0\agR\1\0\1\tdesc\17open loclist\0\15<leader>xl\1\0\1\tdesc\18open quickfix\0\15<leader>xq\1\0\1\tdesc\25document diagnostics\0\15<leader>xd\1\0\1\tdesc\26workspace diagnostics\0\15<leader>xw\1\0\1\tdesc\19toggle trouble\0\15<leader>xx\6n\bset\vkeymap\bvim\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: mini.bufremove
time([[Config for mini.bufremove]], true)
try_loadstring("\27LJ\2\n±\1\0\0\6\0\n\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\1K\0\1\0\1\0\1\tdesc\18delete buffer(<cmd>lua MiniBufremove.delete()<cr>\14<leader>q\6n\bset\vkeymap\bvim\nsetup\19mini.bufremove\frequire\0", "config", "mini.bufremove")
time([[Config for mini.bufremove]], false)
-- Config for: neotest
time([[Config for neotest]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\2\0B\0\1\1K\0\1\0\brun\fneotest\frequire[\0\0\5\0\a\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\2\0006\2\3\0009\2\4\0029\2\5\2'\4\6\0B\2\2\0A\0\0\1K\0\1\0\6%\vexpand\afn\bvim\brun\fneotest\frequireK\0\0\3\0\4\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\rstrategy\bdap\brun\fneotest\frequire<\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0B\0\1\1K\0\1\0\tstop\brun\fneotest\frequire>\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0B\0\1\1K\0\1\0\vattach\brun\fneotest\frequireG\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0B\0\1\1K\0\1\0\vtoggle\17output_panel\fneotest\frequireç\4\1\0\b\0\31\1A6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\a\0004\3\3\0006\4\0\0'\6\3\0B\4\2\0025\6\5\0005\a\4\0=\a\6\6B\4\2\0?\4\0\0=\3\b\2B\0\2\0016\0\t\0009\0\n\0009\0\v\0'\2\f\0'\3\r\0003\4\14\0005\5\15\0B\0\5\0016\0\t\0009\0\n\0009\0\v\0'\2\f\0'\3\16\0003\4\17\0005\5\18\0B\0\5\0016\0\t\0009\0\n\0009\0\v\0'\2\f\0'\3\19\0003\4\20\0005\5\21\0B\0\5\0016\0\t\0009\0\n\0009\0\v\0'\2\f\0'\3\22\0003\4\23\0005\5\24\0B\0\5\0016\0\t\0009\0\n\0009\0\v\0'\2\f\0'\3\25\0003\4\26\0005\5\27\0B\0\5\0016\0\t\0009\0\n\0009\0\v\0'\2\f\0'\3\28\0003\4\29\0005\5\30\0B\0\5\1K\0\1\0\1\0\1\tdesc\24Toggle output panel\0\15<leader>to\1\0\1\tdesc\31Attach to the nearest test\0\15<leader>ta\1\0\1\tdesc\26Stop the nearest test\0\15<leader>ts\1\0\1\tdesc\27Debug the nearest test\0\15<leader>td\1\0\1\tdesc\25Run the current file\0\15<leader>tf\1\0\1\tdesc\25Run the nearest test\0\15<leader>tr\6n\bset\vkeymap\bvim\radapters\1\0\0\bdap\1\0\0\1\0\1\15justMyCode\1\19neotest-python\nsetup\fneotest\frequire\3€€À™\4\0", "config", "neotest")
time([[Config for neotest]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\np\0\0\3\0\a\0\0146\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0)\1,\1=\1\3\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0B\0\1\1K\0\1\0\nsetup\14which-key\frequire\15timeoutlen\ftimeout\6o\bvim\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: code_runner.nvim
time([[Config for code_runner.nvim]], true)
try_loadstring("\27LJ\2\nÔ\a\0\0\6\0#\0E6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\3=\3\t\2B\0\2\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0'\3\14\0'\4\15\0005\5\16\0B\0\5\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0'\3\17\0'\4\18\0005\5\19\0B\0\5\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0'\3\20\0'\4\21\0005\5\22\0B\0\5\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0'\3\23\0'\4\24\0005\5\25\0B\0\5\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0'\3\26\0'\4\27\0005\5\28\0B\0\5\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0'\3\29\0'\4\30\0005\5\31\0B\0\5\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0'\3 \0'\4!\0005\5\"\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\1\20:CRProjects<CR>\16<leader>crp\1\0\2\fnoremap\2\vsilent\1\20:CRFiletype<CR>\16<leader>crf\1\0\3\vsilent\1\fnoremap\2\tdesc\17Close runner\18:RunClose<CR>\15<leader>rc\1\0\3\vsilent\1\fnoremap\2\tdesc\28Run the current project\20:RunProject<CR>\15<leader>rp\1\0\3\vsilent\1\fnoremap\2\tdesc/Run the current file and show in a new tab\21:RunFile tab<CR>\15<leader>rt\1\0\3\vsilent\1\fnoremap\2\tdesc\25Run the current file\17:RunFile<CR>\15<leader>rf\1\0\3\vsilent\1\fnoremap\2\tdesc\28Runs based on file type\17:RunCode<CR>\14<leader>r\6n\bset\vkeymap\bvim\rfiletype\1\0\0\trust\1\4\0\0\15cd $dir &&\23rustc $fileName &&\29$dir/$fileNameWithoutExt\tjava\1\0\2\vpython\15python3 -u\15typescript\rdeno run\1\4\0\0\15cd $dir &&\23javac $fileName &&\29java $fileNameWithoutExt\nsetup\16code_runner\frequire\0", "config", "code_runner.nvim")
time([[Config for code_runner.nvim]], false)
-- Config for: accelerated-jk.nvim
time([[Config for accelerated-jk.nvim]], true)
try_loadstring("\27LJ\2\nÎ\1\0\0\6\0\v\0\0226\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0004\5\0\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\t\0'\4\n\0004\5\0\0B\0\5\1K\0\1\0\30<Plug>(accelerated_jk_gk)\6k\30<Plug>(accelerated_jk_gj)\6j\6n\20nvim_set_keymap\bapi\bvim\nsetup\19accelerated-jk\frequire\0", "config", "accelerated-jk.nvim")
time([[Config for accelerated-jk.nvim]], false)
-- Config for: glow.nvim
time([[Config for glow.nvim]], true)
try_loadstring("\27LJ\2\n2\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\tglow\frequire\0", "config", "glow.nvim")
time([[Config for glow.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType qf ++once lua require("packer.load")({'nvim-bqf'}, { ft = "qf" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
