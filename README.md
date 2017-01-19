### Starting Resque

Terminal Window 1:

```
$ redis-server
```

Terminal Window 2:

```
$ TERM_CHILD=1 QUEUES=* rake resque:work
```

Terminal Window 3:

```
$rails c
Loading development environment (Rails 4.1.4)
> Resque.enqueue(SleepingJob)
=> true
```

### Heroku Add-ons:
 1. SendGrid
 2. Redis Cloud