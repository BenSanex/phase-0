# Introduction to Inheritance

# I worked on this challenge [by myself, with: ].


# Pseudocode
# - define a method tht adds a new student to an array of students.
# - define a method that removes a student from the array of students
# - define a method that calculates the current phase based on the start date, to calculate that, we deduct the start date from the current date and check the result in weeks.
# - define a method that checks if the cohort has graduated by checking if the start date and the current date is more than 18 weeks.



# Initial Solution
require 'date'

DATE = Date.new(2016,2,8)
TODAY = Date.new(2016,4,8)
class GlobalCohort
  
  
  attr_accessor :name,  :graduation_date, :immersive_start_date,  :p0_start_date
  
  def initialize(name,date)
    @name = name
    @p0_start_date = date
 
  end
  
  def p0_start_date
    @p0_start_date.strftime('%F')
  end
  
  def immersive_start_date
    (@p0_start_date + (9*7)).strftime('%F')
  end
  
  def graduation_date
    @p0_start_date + (18*7)
  end
  
   def currently_in_phase
    start_week = DATE.cweek
    today_week = TODAY.cweek
     if today_week - start_week < 9
       "Phase 0"
     elsif today_week - start_week < 13
       "Phase 1"
     elsif today_week - start_week < 16
       "phase 2"
     else 
       "Phase 3"
     end
   end
  
    def graduated?
     TODAY.cweek - DATE.cweek > 18 ? true : false
      
   end
     
end

class LocalCohort < GlobalCohort
  
  
  
  def initialize(city,students,email_list)

  
    @students = students
    @email_list = email_list
    @city = city
    
  end
  
  def add_student(name)
    @students << name
  end
  
  def remove_student(name)
    @students.delete(name)
  end
  
 end


# Refactored Solution


# Reflection

# What concepts did you review in this challenge?
# I reviewed class creation, which at a basic level was pretty easy for me.  Once we got into the second challenge which was also class based it was a different story.
# What is still confusing to you about Ruby?
# We tried to get into using dates and date objects.  It was slightly ridicuulous and was really hard to figure out what we were actually getting and what methods we wanted to use.  The output is a confusing mess.
# What are you going to study to get more prepared for Phase 1?
# I need to look more into some of the things we haven't used, and I want to figure out how to actually use the DateTime objects.