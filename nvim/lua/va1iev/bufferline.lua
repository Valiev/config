local bufferline = require("bufferline")

bufferline.setup({
  options = {
    offsets = {
      {
        filetype = "NvimTree", text = "", padding = 1
      }
    }
  }
})
