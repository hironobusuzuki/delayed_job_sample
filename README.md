```
https://github.com/collectiveidea/delayed_job/tree/v4.1.3
http://mgi.hatenablog.com/entry/2015/08/01/203244

$ bundle exec rails new --skip-bundle delayed_job_sample
$ vi Gemfile
gem 'delayed_job_active_record'
$ bundle install --path vendor/bundle
$ bundle exec rails generate delayed_job:active_record
$ bundle exec rails g model User name:string age:integer
$ bundle exec rake db:migrate
$ bundle exec rake db:seed
$ bundle exec rails g task sample
$ bundle exec rails jobs:work
$ bundle exec rake sample:sync
$ bundle exec rake sample:async

https://qiita.com/d-yokoi/items/be7cf4622c66cdcc04cb
$ sqlite3 db/development.sqlite3
> .tables;
> select * from delayed_jobs;
> .exit

$ bundle exec rails jobs:work
```
