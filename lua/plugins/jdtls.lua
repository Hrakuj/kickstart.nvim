return {
  'mfussenegger/nvim-jdtls',
  ft = { 'java' },
  config = function()
    local jdtls = require 'jdtls'
    jdtls.start_or_attach {
      cmd = { 'jdtls' },
      root_dir = require('lspconfig.util').root_pattern('pom.xml', 'gradle.build', '.git'),
      settings = {
        java = {
          eclipse = { downloadSources = true },
          configuration = { updateBuildConfiguration = 'interactive' },
          maven = { downloadSources = true },
        },
      },
    }
  end,
}
