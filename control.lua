local UNLOCK_TECHS = {
  -- Quality / Seltenheit
  "quality-module",
  "quality-module-2",
  "quality-module-3",
  "epic-quality",
  "legendary-quality",

  -- Recycler
  "recycling",
}

local function unlock_selected_techs(force)
  for _, tech_name in ipairs(UNLOCK_TECHS) do
    local tech = force.technologies[tech_name]
    if tech then
      tech.researched = true
    end
  end
end

script.on_init(function()
  for _, force in pairs(game.forces) do
    unlock_selected_techs(force)
  end
end)

script.on_configuration_changed(function()
  for _, force in pairs(game.forces) do
    unlock_selected_techs(force)
  end
end)

-- Multiplayer teams and scripts can create forces after initialization.
script.on_event(defines.events.on_force_created, function(event)
  unlock_selected_techs(event.force)
end)
