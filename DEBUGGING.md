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

use gem byebug gem

```ruby
<p id="notice"><%= notice %></p>
<%= debug @student %>
<p>
<strong>Given name: </strong>
<%= @student.given_name %>
</p>
```

in app/controllers/students_controller.rb

debugger (like in javascript console - breakpoint)

debugger (inspect variables (byebug) ```p @student```)

debugger (like in javascript console stops at point - then type ```next``` and that's right after the keyword debugger also can type ```list``` to see where you are in the context of your source code afterwards type ```quit``` to quit)

```ruby
  def create
    @student = Student.new(student_params)
    
    debugger
    
    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end
```

