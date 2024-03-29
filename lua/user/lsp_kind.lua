local M = {}

M.mason = {
  package_pending = " ",
  package_installed = " ",
  package_uninstalled = " ﮊ",
}

M.cmp_kind = {
  Class = " ",
  Color = " ",
  Constant = "",
  Constructor = " ",
  Default = " ",
  Enum = "練",
  EnumMember = " ",
  Event = " ",
  Field = "ﰠ ",
  File = " ",
  Folder = " ",
  Function = " ",
  Interface = " ",
  Keyword = " ",
  Method = "",
  Module = "",
  Operator = " ",
  Property = " ",
  Reference = "",
  Snippet = "", -- ""," "," "
  Struct = "פּ ",
  Text = " ",
  TypeParameter = "  ",
  Unit = "塞",
  Value = " ",
  Variable = "",
  TabNine = "", 
  Codeium = "",
}

M.icons = {
  error = " ",
  warn = " ",
  info = "",
  hint = " ",
  code_action = "",
  code_lens_action = "",
  test = "",
  docs = "",
  clock = " ",
  calendar = " ",
  buffer = " ",
  settings = " ",
  ls_inactive = "轢",
  ls_active = "歷",
  question = " ",
  screen = "冷",
  dart = " ",
  config = " ",
  git = " ",
  magic = " ",
  exit = " ",
  repo = "",
  term = " ",
}

M.nvim_tree_icons = {
  default = "",
  symlink = "",
  git = {
    unmerged = "",
    added = "",
    deleted = "",
    modified = "",
    renamed = "",
    untracked = "",
    ignored = "",
    unstaged = "",
    staged = "",
    conflict = "",
  },
  folder = {
    arrow_closed = "",
    arrow_open = "",
    default = "",
    open = "",
    empty = "",
    empty_open = "",
    symlink = "",
    symlink_open = "",
  },
}

M.symbols_outline = {
  File = "",
  Module = "",
  Namespace = "",
  Package = "",
  Class = "",
  Method = "ƒ",
  Property = "",
  Field = "",
  Constructor = "",
  Enum = "練",
  Interface = "ﰮ",
  Function = "",
  Variable = "",
  Constant = "",
  String = "𝓐",
  Number = "#",
  Boolean = "⊨",
  Array = "",
  Object = "⦿",
  Key = "",
  Null = "NULL",
  EnumMember = "",
  Struct = "פּ",
  Event = "",
  Operator = "",
  TypeParameter = "𝙏",
}

M.todo_comments = {
  FIX = "律",
  TODO = "璘",
  HACK = " ",
  WARN = "裂",
  PERF = "龍",
  NOTE = " ",
  ERROR = " ",
  REFS = "",
  SHIELD = "",
}

M.numbers = {
  " ",
  " ",
  " ",
  " ",
  " ",
  " ",
  " ",
  " ",
  " ",
  " ",
}

M.file_icons = {
  Brown = { "" },
  Aqua = { "" },
  LightBlue = { "", "" },
  Blue = { "", "", "", "", "", "", "", "", "", "", "", "", "" },
  DarkBlue = { "", "" },
  Purple = { "", "", "", "", "" },
  Red = { "", "", "", "", "", "" },
  Beige = { "", "", "" },
  Yellow = { "", "", "λ", "", "" },
  Orange = { "", "" },
  DarkOrange = { "", "", "", "", "" },
  Pink = { "", "" },
  Salmon = { "" },
  Green = { "", "", "", "", "", "" },
  LightGreen = { "", "", "", "﵂" },
  White = { "", "", "", "", "", "" },
}

return M

