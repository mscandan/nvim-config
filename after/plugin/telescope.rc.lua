local telescope_status_ok, telescope = pcall(require, 'telescope')
if not telescope_status_ok then
  return
end

local actions_status_ok, actions = pcall(require, 'telescope.actions')
if not actions_status_ok then
  return
end

telescope.setup{
  defaults={
    mappings={
      n={
        ["q"] = actions.close
      },
    },
  }
}

