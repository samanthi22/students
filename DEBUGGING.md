debugging instead of ```<%= @student %>```

use ```<%= debug(@student) %>```

debugging in controller 

in app/controllers/award_controller.rb

```ruby
def show
    raise @award.to_yaml
end
```

yaml - Yet Another Markup Language

log directory - development.log

logger.info 'Send this message to log'

last sentence in log is the HTTP response | 200 OK

```rails console``` - irb

Objects

$ rails console --sandbox
> s=Student.find(2)

> s.name
> quit or exit

> s.middle_name = 'Nancy'
> s.save

helper methods

> helper.number_to_human_size 1092582135

routing

> app.url_for :action=>"index", :controller=>"courses"

> app.url_for :action=>"new", :controller=>"courses"

debug RESTful routing

> include Rails.application.routes.url_helpers

> new_course_path

app object parameters

> app.controller.params


