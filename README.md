#bridges: connecting underserved youth with mentors
##by Lilly Chou

##Purpose
bridges is a platform that bridges the underserved youth and higher education by connecting youth of diverse backgrounds with mentorships around the Bay Area.

##Features
- Mentorships have the ability to create a profile for their organization.
- Mentorships have the ability to set specific social backgrounds that the organization serves (e.g. gender, age, race / ethnicity, etc.).
- Mentorships have the ability to upload applications to their mentorships.
- Mentees have the ability to create a profile as users searching for mentorships.
- Mentees have the ability to search and filter mentorships that fits user's specific needs.
- Mentees have the ability to star/favorite specfic mentorships. 
- Mentees and mentorshps have the ability to start chats with each other.

##Control Flow
- Users are initially presented with the login screen where they can choose to sign up or sign in as the mentorship or mentee.
- If the user chooses to sign up as a mentorship, they will be taken to a create profile page where they can input organization's description, target communities, application process and contact information.
- If the user chooses to sign up as a mentee, they will be taken to a create profile pages where they can input their academic status, communities they identify with and contact information.
- Once signed in as a mentorship, user is taken to the dashboard where they see a list of students who have starred the organization and their contact information. Tapping on individual student will take you to that student's profile. You can initiate a chat to outreach to that specific student.
- Once signed in as a mentee, user is taken to the dashboard where they see a list of organizations. Students can filter the list they see by starred and other mentorship criteria. Tapping on a mentorship will take you to their profile page where the students will see the organization's profile, application process and can initiate a chat to inquire about the mentorship.
- On the dashboards of both mentorship and mentee users, there are tabs on the bottom where they can tap "chat" to see all messages, "profile" to see their own profile, "dashboard" to take them back to dashboard, and "settings" to configure settings for the user. 

##Implementation
###Model
- Mentorship.Swift
- Mentee.Swift

### View
- LoginView
- SignUpView
- CreateMentorshipProfileView
- CreateMenteeProfileView
- EditMentorshipProfileView
- EditMenteeProfileView
- DashboardView
- ChatView
- SettingsView

###Controller
- LoginViewController
- SignUpViewController
- CreateMentorshipProfileViewController
- CreateMenteeProfileViewController
- EditMentorshipProfileViewController
- EditMenteeProfileViewController
- DashboardViewController
- ChatViewController
- SettingsViewController
