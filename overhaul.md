# OVERHAUL

## I know making one massive git commit is not a good idea, but we had to start from scratch due to many reasons.

### Changed User model in database to include password_digest for bcrypt hashing

### Created 'shared' folder for partials to encourage cleaner code

### Removed scaffolds from User and Stock models

### Added Email and Username regex to User model

### Created Registrations controller with new and create actions

### Created sign-up form with routing. Submit creates a POST request. 
- If successful, redirect to home screen with session cookie.
- If there is a session, Log Out button is shown.
- Log out button destroys the session by setting the user id to nil

### Sessions are working and user persists on the main screen. Persistence throughout the website in progress.
