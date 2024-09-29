-- Homepage: https://github.com/andreasvc/vim-256noir/
local colors = {
  normal_fg = '#bcbcbc',
  normal_bg = '#000000',
  keyword_fg = '#eeeeee',
  constant_fg = '#d0d0d0',
  string_fg = '#8a8a8a',
  comment_fg = '#585858',
  number_fg = '#ff0000',
  error_fg = '#eeeeee',
  error_bg = '#870000',
  error_msg_bg = '#af0000',
  search_fg = '#8a8a8a',
  search_bg = '#303030',
  inc_search_fg = '#eeeeee',
  inc_search_bg = '#8a8a8a',
  diff_change_fg = '#d70000',
  diff_change_bg = '#eeeeee',
  diff_text_fg = '#bcbcbc',
  diff_text_bg = '#ff0000',
  sign_col_fg = '#af0000',
  sign_col_bg = '#585858',
  spell_bad_bg = '#870000',
  spell_cap_bg = '#af0000',
  spell_rare_fg = '#af0000',
  wild_menu_fg = '#585858',
  wild_menu_bg = '#eeeeee',
  pmenu_fg = '#eeeeee',
  pmenu_bg = '#585858',
  match_paren_fg = '#000000',
  match_paren_bg = '#585858',
  cursor_line_bg = '#121212',
  status_line_fg = '#8a8a8a',
  status_line_bg = '#000000',
  status_line_nc_fg = '#303030',
  visual_fg = '#bcbcbc',
  visual_bg = '#000000',
}

local function set_highlight(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Set highlights
set_highlight('Normal', { fg = colors.normal_fg, bg = colors.normal_bg })
set_highlight('Keyword', { fg = colors.keyword_fg, bg = colors.normal_bg })
set_highlight('Constant', { fg = colors.constant_fg, bg = colors.normal_bg })
set_highlight('String', { fg = colors.string_fg, bg = colors.normal_bg })
set_highlight('Comment', { fg = colors.comment_fg, bg = colors.normal_bg })
set_highlight('Number', { fg = colors.number_fg, bg = colors.normal_bg })
set_highlight('Error', { fg = colors.error_fg, bg = colors.error_bg })
set_highlight('ErrorMsg', { fg = colors.error_fg, bg = colors.error_msg_bg })
set_highlight('Search', { fg = colors.search_fg, bg = colors.search_bg })
set_highlight('IncSearch', { fg = colors.inc_search_fg, bg = colors.inc_search_bg, reverse = true })
set_highlight('DiffChange', { fg = colors.diff_change_fg, bg = colors.diff_change_bg })
set_highlight('DiffText', { fg = colors.diff_text_fg, bg = colors.diff_text_bg, bold = true })
set_highlight('SignColumn', { fg = colors.sign_col_fg, bg = colors.normal_bg }) -- Match Normal background
set_highlight('Folded', { fg = colors.normal_fg, bg = colors.normal_bg }) -- Match background
set_highlight('VertSplit', { fg = colors.sign_col_fg, bg = colors.normal_bg }) -- Prevent gray blocks in splits
set_highlight('CursorLine', { bg = colors.cursor_line_bg }) -- Highlight line under cursor
set_highlight('CursorLineNr', { fg = colors.keyword_fg, bg = colors.cursor_line_bg }) -- Line number color
set_highlight('LineNr', { fg = colors.comment_fg, bg = colors.normal_bg }) -- Line numbers in the gutter
set_highlight('NonText', { fg = colors.comment_fg, bg = colors.normal_bg }) -- Non-text characters
set_highlight('WildMenu', { fg = colors.wild_menu_fg, bg = colors.wild_menu_bg })
set_highlight('Pmenu', { fg = colors.pmenu_fg, bg = colors.pmenu_bg })
set_highlight('PmenuThumb', { fg = '#080808', bg = colors.pmenu_bg })
set_highlight('SpecialKey', { fg = '#000000', bg = colors.pmenu_bg })
set_highlight('MatchParen', { fg = colors.match_paren_fg, bg = colors.match_paren_bg })
set_highlight('StatusLine', { fg = colors.status_line_fg, bg = colors.status_line_bg, bold = true, reverse = true })
set_highlight('StatusLineNC', { fg = colors.status_line_nc_fg, bg = colors.normal_bg, reverse = true })
set_highlight('Visual', { fg = colors.visual_fg, bg = colors.visual_bg, reverse = true })
set_highlight('TermCursor', { reverse = true })

-- Additional links for groups
local links = {
  Boolean = 'Normal',
  Delimiter = 'Normal',
  Identifier = 'Normal',
  Title = 'Normal',
  Debug = 'Normal',
  Exception = 'Normal',
  FoldColumn = 'Normal',
  Macro = 'Normal',
  ModeMsg = 'Normal',
  MoreMsg = 'Normal',
  Question = 'Normal',
  Conditional = 'Keyword',
  Statement = 'Keyword',
  Operator = 'Keyword',
  Structure = 'Keyword',
  Function = 'Keyword',
  Include = 'Keyword',
  Type = 'Keyword',
  Typedef = 'Keyword',
  Todo = 'Keyword',
  Label = 'Keyword',
  Define = 'Keyword',
  DiffAdd = 'Keyword',
  diffAdded = 'Keyword',
  diffCommon = 'Keyword',
  Directory = 'Keyword',
  PreCondit = 'Keyword',
  PreProc = 'Keyword',
  Repeat = 'Keyword',
  Special = 'Keyword',
  SpecialChar = 'Keyword',
  StorageClass = 'Keyword',
  SpecialComment = 'String',
  CursorLineNr = 'String',
  Character = 'Number',
  Float = 'Number',
  Tag = 'Number',
  Folded = 'Number',
  WarningMsg = 'Number',
  iCursor = 'SpecialKey',
  SpellLocal = 'SpellCap',
  LineNr = 'Comment',
  NonText = 'Comment',
  DiffDelete = 'Comment',
  diffRemoved = 'Comment',
  PmenuSbar = 'Visual',
  PmenuSel = 'Visual',
  VisualNOS = 'Visual',
  VertSplit = 'Visual',
  Cursor = 'StatusLine',
  Underlined = 'SpellRare',
  rstEmphasis = 'SpellRare',
}

for group, link in pairs(links) do
  vim.api.nvim_set_hl(0, group, { link = link })
end
