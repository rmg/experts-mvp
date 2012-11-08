## Experts MVP
&copy; 2012 Ryan Graham. All rights reserved.

This is a minimum viable product level implementation of an in/out board
as one might want in an office environment. Realisitically, everyone is
on some sort of IM service that provides the same information.

The demo us running at [experts-mvp.herokuapp.com](http://experts-mvp.herokuapp.com/).

### Features & Limitations

Given the MVP nature, this app is incredibly minimal. It's a basic Rails app,
generated using rails_app_composer, with a status field added to the users
and a listing of all users and their statuses.

Users can set their status to 1 of 3 predefined statuses: `lunch`, `away`, and
`here`. Users must manually set their status to `away` before leaving, otherwise
their coworkers will likely get confused. Likewise, users must also manually set
their status to `here` each morning. This would probably get annoying, so it would
probably be the next feature added after MVP deployment.

### Future

Groups would be easy to add. Make a model and table with a name field, add a
`belongs_to` to the `User` model and the appropriate column to the table, then
change the `@users` list on the main page to a `Group` collection, then for
each group, show a count or aggregated status field based on the statuses of
the users in that group. There are all sorts of optimizations one could do later,
but really the users/groups list in such a scheme would remain small until such
time that this app would be useless anyway.
