return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        require('telescope').setup {
            defaults = {
                theme = "dropdown",
                layout_config = {
                    vertical = { width = 0.8 }
                }
            },
            pickers = {
                git_commits = {
                    theme = "dropdown",
                    prompt_prefix = " 🔍",
                },
                git_files = {
                    theme = "dropdown",
                    prompt_prefix = " 🔍"
                },
                find_files = {
                    theme = "dropdown",
                    prompt_prefix = " 🔍"
                },
                colorscheme = {
                    theme = "dropdown",
                    prompt_prefix = "🔍"
                },
            },
            extensions = {
                file_browser = {
                    theme = "ivy",
                }
            }
        }

        local builtin = require('telescope.builtin')

        vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
        vim.keymap.set('n', '<C-p>', builtin.git_files, {})
        vim.keymap.set("n", "<leader>c", builtin.colorscheme, {})
        vim.keymap.set("n", "<leader>ss", builtin.planets, {})
        vim.keymap.set("n", "<leader>gcm", builtin.git_commits, {})
        vim.keymap.set('n', '<leader>Fw', function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set('n', '<leader>fw', function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set('n', '<leader>ps', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
        vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
    end
}
