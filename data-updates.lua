-- Recycler-Rezept von planetaren Bedingungen befreien

local recipe = data.raw.recipe["recycler"]

if recipe then
  -- Manche Rezepte haben die Bedingungen in normal/expensive
  if recipe.normal then
    recipe.normal.surface_conditions = nil
  end
  if recipe.expensive then
    recipe.expensive.surface_conditions = nil
  end

  -- Und/oder direkt am Rezept
  recipe.surface_conditions = nil
end