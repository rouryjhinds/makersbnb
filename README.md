# makersbnb

We would like a web application that allows users to list spaces they have available, and to hire spaces for the night.

# Headline specifications
1. Any signed-up user can list a new space.
2. Users can list multiple spaces.
3. Users should be able to name their space, provide a short description of the space, and a price per night.
4. Users should be able to offer a range of dates where their space is available.
5. Any signed-up user can request to hire any space for one night, and this should be approved by the user that owns that space.
6. Nights for which a space has already been booked should not be available for users to book that space.
7. Until a user has confirmed a booking request, that space can still be booked for that night.

# User stories
As a user,
So that I use the platform,
I would like to list a new space

As an owner, 
So that I can have more than one space, 
I would like to list multiple spaces

As an owner, 
So that customers can see my space, 
I would like to provide information of the space

As an owner,
So that customers can see when the space is available, 
offer a range of dates

As a signed-up user, 
So that I can stay at the bnb, 
I would like to hire a space for one night

As an owner, 
So that the user can get confirmation, 
I would like to approve a new request for a space

As a user, 
So that I don't book a space that's unavailable, 
I would like to only see available dates (that are not confirmed)

# How to connect to the databases
1. Connect to psql

2. Create the database using the psql command CREATE DATABASE makers_bnb;

3. Connect to the database using the pqsl command \c makers_bnb; 

4. Run the sql query we have saved in the file 01_create_spaces_table.sql

5. Run the sql query we have saved in the file 02_create_bookings_table.sql


1. Connect to psql

2. Create the database using the psql command CREATE DATABASE makers_bnb_test;

3. Connect to the database using the pqsl command \c makers_bnb_test;

4. Run the sql query we have saved in the file 01_create_spaces_table.sql

5. Run the sql query we have saved in the file 02_create_bookings_table.sql