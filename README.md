---

## Starting Resque

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

Start the server
```
$ rails s
```

Controller Actions:
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

---

## Heroku Add-ons:
 1. SendGrid
 2. Redis Cloud