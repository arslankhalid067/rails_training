class ApplicationController < ActionController::Base
    
    before_action do
        puts "Before Action"
    end

    after_action do
        puts "After Action"
    end
end
