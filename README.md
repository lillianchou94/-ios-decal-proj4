#bridges: connecting underserved youth with mentors by Lilly Chou

##Purpose
bridges is a platform that bridges the underserved youth and higher
education by connecting youth of diverse backgrounds with mentorships around the
Bay Area.

##Features 
- Mentees have the ability to create a profile as users searching for mentorships.
- Mentees have the ability to search mentorships that fits user's
specific needs. 
- Mentees have the ability to star/favorite specific mentorships.

##Control Flow  
- Users are initially presented with the login screen where they
can choose to sign up or sign in as the mentee.  
- If the user sign up or signed
in, user is taken to the dashboard where they see a list of organizations.
Students can star and browse mentorships.
Tapping on a mentorship will take you to their profile page where the students
will see the organization's profile.
- On the dashboard, there are tabs on the bottom where they can tap "dashboard" to take them back to
dashboard, and "settings" to configure settings for the user.

##Implementation 
###Model 
- Mentorship.Swift 
- User.Swift

###View 
- SignInView
- DashboardTableVie
- SettingsView
- DetailView

###Controller 
- SignInViewController 
- DashboardTableViewController 
- SettingsViewController
- DetailViewController
- MentorshipCell
