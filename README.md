# Removal Mugshot

For deploy to production
```sh
bundle exec bin/rails assets:precompile
gcloud app deploy
```
Run migration on production
```sh
bundle exec rake appengine:exec -- bundle exec rake db:migrate
```