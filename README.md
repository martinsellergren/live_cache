A cache that comes in handy for an offline-first setup.

## Basic functionality
- Items are fetched async before upserted to the cache, through `addAndObserveOne`/`addAndObserveMany`.
- Added items are returned as a result stream.
- Modification is in-sync.
- Mods reflect in the result streams (and `effectiveState` getter).
- Mods that happen during item fetching are applied retroactively to fetched items.

## Set cache state manually
You may use the `rawState` getter/setter to e.g reset cache state to an earlier point in time.

Ephemeral modifications do not affect `rawState`, but are reflected in result streams/ `effectiveState` getter. This makes ephemeral modifications useful for transient post processing that is distinct from any state resetting mechanism.

## Finalizers
- Incoming finalizer is for expanding one item into many, useful when an item has nested items.
- Incoming finalizer is applied before inserting fetched items into the cache.
- Outgoing finalizer is for assembling complex item again by replacing its nested items with cache items.
- Outgoing finalizer is applied to result streams (and `effectiveState` getter).
- Make sure to both unnest (in incoming finalizer) and re-nest items (in outgoing finalizer), for data consistency.

Making use of finalizers are nice because:
 - You don't have to modify the nested items. Instead you just modify top-level items. Finalizers make sure that nested items are replaced with top-level items anyway.
 - Upon fetching items, any nested items are upserted to the cache, meaning result streams are updated with some latest state, without actually fetching those items specifically.