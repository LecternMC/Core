# Lectern Core

This is the core module for the Lectern module collection. Lectern modules
depend on this core module, which in turn depends on the Lantern standard
library. Both Lantern and Lectern core should be [bundled] in every Lectern
module's data pack ZIP.

## Features

Lectern core increments a scoreboard value every tick, wrapping once it reaches
16. Additionally, it provides a scoreboard objective for tick assignments,
allowing Lectern modules to be assigned to different parts of a given 0.8s
cycle.

The core module does *not* provide a tick hook; instead, it expects modules to
use `schedule` to align the first tick to their tick assignment, and thereafter
`schedule` themselves to run every 16 ticks.

Note that due to the lack of `schedule cancel`, one must instead indefinitely
delay a scheduled function if "canceling" behavior is needed. The recommended
delay to repeatedly apply is 72000 ticks, which minimizes the overhead of a
"canceled" function without resulting in permanent phantom `schedule` entries
caused by a data pack being uninstalled.

## License

Lectern is licensed under the [MIT license].

### Contribution

Unless you explicitly state otherwise, any contributions intentionally submitted
for inclusion in Lectern by you shall be licensed as MIT, without any additional
terms or conditions.

[bundled]: https://lanternmc.com/docs/05-02-bundling/
[MIT license]: https://github.com/lecternmc/core/blob/master/LICENSE
