# gren-iso8601-time

Convert between
[ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
UTC timestamps and
[Time.Posix](https://packages.gren-lang.org/package/gren-lang/core/version/latest/module/Time#Posix)
values.

---

Please note that this package only supports timestamps in the
following format:

    "YYYY-MM-DDTHH:MM:SS.XXXZ"

These are ISO 8601 timestamps in Zulu time (i.e. UTC) and in
millisecond resolution.  As a result, the conversion functions
are bijections and inverses of each other, which I attach some
importance to.  In addition, the conversion between different time
zones is not nearly as trivial as it seems at first glance.  So I
leave that to others.  When system boundaries are being crossed,
time data should be normalized to UTC anyway.

If you cannot avoid processing ISO 8601 timestamps in other time
zones, JavaScript's
[Intl.DateTimeFormat](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/DateTimeFormat)
object may be of help.
