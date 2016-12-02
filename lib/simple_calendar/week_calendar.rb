module SimpleCalendar
   class WeekCalendar < SimpleCalendar::Calendar
=begin
     @@hours = ['8:00 am','9:00 am', '10:00 am', '11:00 am',
                '12:00 pm','1:00 pm','2:00 pm',
                '3:00 pm', '4:00 pm', '5:00 pm','6:00 pm']
=end
     @@hours = ['12:00 am','1:00 am','2:00 am',
                '3:00 am', '4:00 am', '5:00 am',
                '6:00 am', '7:00 am', '8:00 am',
                '9:00 am', '10:00 am', '11:00 am',
                '12:00 pm','1:00 pm','2:00 pm',
                '3:00 pm', '4:00 pm', '5:00 pm',
                '6:00 pm', '7:00 pm', '8:00 pm',
                '9:00 pm', '10:00 pm', '11:00 pm']  
     private
           
       def date_range
         
         starting = start_date.beginning_of_week(:sunday)
         ending = (starting + (number_of_weeks - 1).weeks).end_of_week(:sunday)
 
         (starting..ending).to_a
       end

       def number_of_weeks
         options.fetch(:number_of_weeks, 1)
       end
   end
 end
