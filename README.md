# Quality Unlocked from Start: Updated

## Factorio 2.1 compatibility and validation

Current release **1.0.1** targets Factorio **2.1.23**. See [API fixes, this mod's verified tests and coverage limits](FACTORIO-2.1.md).

Factorio 2.1 update of Quality Unlocked from Start. Original author: Leo. 

Disable the original mod before enabling this fork. Entity, item, recipe and startup setting names are retained. Mod-private runtime state belongs to the old mod identity; per-player transient UI/distribution state is rebuilt.

Multiplayer feature checks: Fresh multiplayer forces immediately had all six intended technologies researched, uncommon/rare/epic/legendary qualities unlocked and the recycler recipe enabled without surface restrictions. Assertions ran before research_all_technologies, in both connected-client rounds separated by save/server restart/rejoin. Version 1.0.0 failed the fresh-force test; 1.0.1 adds on_force_created. See [methods and coverage limits](FACTORIO-2.1.md).

See [Factorio 2.1 changes and validation](FACTORIO-2.1.md) and [original credits and license](ATTRIBUTION.md).
