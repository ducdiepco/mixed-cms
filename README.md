# Mixed CMS

For deploy to production
```sh
bundle exec bin/rails assets:precompile
gcloud app deploy
```
Run migration on production
```sh
bundle exec rake appengine:exec -- bundle exec rake db:migrate
```

Generate a new cell for view
```sh
rails generate cell comment
```
