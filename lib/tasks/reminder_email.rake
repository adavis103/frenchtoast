namespace :reminder_email do
     desc "Sends daily notifications to admins and users"
     task :send => :environment do
       appts = Appointment.where(date: Date.today)
       appts.each do |appt|
          if(Date.parse(appt.date) < Date.today)
               UserMailer.reminder_email(appt.owner_email, appt.date, appt.time).deliver!   
          end
      end
     end
end
