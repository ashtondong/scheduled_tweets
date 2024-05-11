class RegistrationsController < ApplicationController
    def new
        # the @ symbol declares an instance variable that can be accessed outside of this method. As opposed to without the @ symbol which will get destroyed after the method terminates.
       @user = User.new
    end
end