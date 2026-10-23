# Factorio 2.1 notes

Tested with **Factorio 2.1.23**. Current fork version: **1.0.2**.

## Changes

- Handle on_force_created so new forces receive the same unlocks as existing forces.
- Fixed in-game changelog parsing; original entries are preserved in docs/UPSTREAM-CHANGELOG.txt.

## Tests

- Fresh forces had all six intended technologies researched and all four higher qualities unlocked.
- The recycler recipe was enabled without surface restrictions before blanket research.
- The tests passed in two connected-client rounds separated by restart/rejoin.

Tests cover fresh forces and the installed Space Age profile, not every custom progression mod.

Tests used private copies of saves and local host/client sessions. Raw player data and test hooks are not shipped.

The 1.0.2 patch changes changelog text and version metadata only; the feature tests above apply to the unchanged gameplay code.
