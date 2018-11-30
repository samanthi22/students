debugging instead of <%= @student %>

use <%= debug(@student) %>

debugging in controller 

in app/controllers/award_controller.rb

def show
    raise @award.to_yaml
end

