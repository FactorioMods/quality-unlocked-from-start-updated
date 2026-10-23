# Factorio 2.1 compatibility and verified tests

Current release: **1.0.1**. Engine/API target: **Factorio 2.1.23**. Updated 2026-10-23.

## API and compatibility changes

- Handle on_force_created so teams created after initialization receive the same quality/recycling unlocks.
- Declare Factorio 2.1 compatibility; no confirmed additional runtime API rewrite was required.

The audit used the installed runtime/prototype schemas and reviewed removed members, read-only writes, changed signatures, defines and named table arguments. Indirect calls and optional branches require manual review; this is not a formal proof of every execution path.

## Mod-specific checks

Fresh multiplayer forces immediately had all six intended technologies researched, uncommon/rare/epic/legendary qualities unlocked and the recycler recipe enabled without surface restrictions. Assertions ran before research_all_technologies, in both connected-client rounds separated by save/server restart/rejoin. Version 1.0.0 failed the fresh-force test; 1.0.1 adds on_force_created.

## Shared save and multiplayer checks

The final enabled mod set passed isolated map creation, copied-save migration, bridge-free save/reload and 3,000-tick behavior/simulation checks. Matching clean release archives also passed a real localhost host/client join, 30 seconds of simulation, server save/restart, client rejoin and another 30 seconds plus save, without a detected desync. The direct multiplayer feature assertions above are separate from this earlier shared smoke coverage.

## Scope and limits

Covers fresh-force creation and default unlock state with Space Age, not a probabilistic production/recycling quality-distribution matrix or force-reset policy. WAN and long-duration stability were not tested.

Targeted API/interaction fixtures used temporary private hooks where needed. Those hooks, raw saves, profiles, credentials and logs are excluded from public source and release ZIPs. The current release ZIP is identified by the digest on its GitHub release asset. Runtime code and private fixtures are kept separate.
