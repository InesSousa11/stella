# Pico day tags + Google Calendar (how it works)

**Working now:** tag any day (office, WFH, day off, interview, first day, special occasion); saved in localStorage; Pico's mood and message follow the tag and weather; tag dots in weekly/monthly views.
**Demo:** "Preview sync" uses sample events and keyword rules. Your own tags always override calendar-derived ones.
**Needs backend:** real Google Calendar access = OAuth with `calendar.readonly` scope, server-side token storage, event fetch for the next ~14 days, then the same title→tag rules (interview, first day, WFH/remote, leave/OOO, wedding/dinner, office/stand-up). Office vs home can also be inferred from a recurring pattern (e.g. Tue/Thu in office) or event location.
