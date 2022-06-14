require 'pry'

def badge_maker(name = "Arel")
    "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
    attendees.map{|attendee| "Hello, my name is #{attendee}."}
end 

def assign_rooms(attendees)
    attendees.map.with_index(1) do |attendee, index|
        "Hello, #{attendee}! You'll be assigned to room #{index}!"
    end
end

def printer(attendees)
    batch_badge_creator(attendees).map do |attendee|
        puts attendee
    end
    assign_rooms(attendees).map do |attendee|
        puts attendee
    end     
end
