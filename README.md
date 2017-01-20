## Local Set-up

```
$ git clone https://github.com/wmantegna/rails-background-job-test.git
$ cd rails-background-job-test
$ cp .env.example .env
```

### Starting Resque

Terminal Window 1:
```
$ redis-server
```

Terminal Window 2:
```
$ TERM_CHILD=1 QUEUES=* rake resque:work
```

---

## Triggering background tasks

#### Console
```
$ rails c
Loading development environment (Rails 4.1.4)
> Resque.enqueue(SleepingJob)
=> true
```


#### Server
```
$ rails s
```

---

## Setting up Heroku:

```
$ heroku create
$ heroku addons:create rediscloud
$ git push heroku master
$ heroku run rake db:migrate 
$ heroku scale web=1 resque=1

```


## Controller Actions:
```
def send_emails
  UserMailer.test_mail('wmantegna@gmail.com').deliver_later
  redirect_to root_path
end
def enqueue_tasks
  Resque.enqueue(SleepingJob)
  redirect_to root_path
end
```