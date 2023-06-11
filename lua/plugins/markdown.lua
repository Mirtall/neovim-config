return {
    {
    "iamcco/markdown-preview.nvim",
    ft = { "markdown" },
    build = "cd app && yarn install"
},
  {
    "ellisonleao/glow.nvim",
    config = true,
    cmd = "Glow",
    ft =  { "markdown" },
}
}
