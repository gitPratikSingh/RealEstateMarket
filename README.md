# README
 
## How to Test This Application
The following is an enumerated list of each requirement layed out in the document, and a mechanism to test it. For the graders convenience, the application comes pre-seeded with a number of useful models, which we will reference over the course of this guide. They can be found in the /db/seeds.rb file.

### How to Test Admins

### How to Test Realtors

### How To Test House Hunters
* Log in with email and password.
1. Log in as user3@user.com with password '123456'.
Success: you are now logged in as user3@user.com.

* Edit their own profile.
1. While logged in as user3@user.com, click Edit_profile at the top of the screen.
2. Enter your Current password into the Current password field. 
3. Change another field's value
4. Click Update.
5. Once on the home screen again, click Edit profile.
Success: You see whatever change you made persisted.

* Search available houses using filters, such as price, square footage range, location.
1. While logged in as user3@user.com and viewing as a house hunter, click View All Houses. This will show you all the pre-seeded houses, plus the ones you may have added. To view as a house_hunter, click Go To Your House Hunter Profile.
2. Go back to your home page, and then click Search Houses.
3. The following success criteria will change if you have added or removed any houses.
4. List Price Low = 1 and List Price High = 300000. All other fields empty. Hit Search.
Success: only see houses with list prices between 1 and 300000. 12345 Home Way should be there if you didn't delete it.
5. Square Footage Low = 5000 and Square Footage High = 8000. All other fields empty. Hit Search.
Success: only see houses with square footages between 5000 and 8000. 7777 Lucky Ct should be there if you didn't delete it.
6. Location = 12345. All Other fields empty. Hit Search.
Success: only see houses which start with 12345. 12345 Home Way should be there if you didn't delete it.
7. Year Built Low = 1600 and Year Built High = 2000. All other fields blank. Hit Search.
Success: only see houses built between 1600 and 2000. 12345 Home Way and 7777 Lucky Ct  should be there if you didn't delete them.
8. Number of Floors Low = 1 and Number of Floors High = 2. 12345 Home Way should be there if you didn't delete it.

* Select houses they are interested in and add them to the house hunter’s interest list.
1. While logged in as user3@user.com and viewing as a house hunter, click View All Houses. This will show you all the pre-seeded houses, plus the ones you may have added.
2. Click Show on a house of your choosing.
3. Click Add To Interest List when the house appears.
4. Verify you travel to a screen which says "Added to Interest List!" and has the location of your house on it.
5. Hit Back to Root.
6. Click View My House Interest List.
Success: See the house you added to your interest list on your interest list.

* View information on all real estate companies
1. While logged in as user3@user.com and viewing as a house hunter, click View All Real Estate Companies.
Success: You can see all real estate companies and their information.

* View information on all houses (except the “potential buyers” attribute)
1. While logged in as user3@user.com and viewing as a house hunter, click View All Houses. This will show you all the pre-seeded houses, plus the ones you may have added.
Success: You can see all real estate companies and their information (but not the Potential Buyers attribute).

* Submit an inquiry for a house they are interested in.
1. While logged in as user3@user.com and viewing as a house hunter, click View All Houses. This will show you all the pre-seeded houses, plus the ones you may have added.
2. Click Show on the House of your choice.
3. Click Submit Inquiry.
4. View screen confirming successful creation of inquiry.
5. Hit back. Click View My Inquiries.
Success: Observe your inquiry is present, and none that you did not submit are present.

* Edit or delete an inquiry they previously submitted.
1. While logged in as user3@user.com and viewing as a house hunter, click View My Inquiries. This will show the inquiry you made in the last test case.
2. Click Edit on the inquiry.
3. Change a field. Hit Submit.
4. See screen with updated field. Hit Back.
5. Click View My Inquiries. 
Success: see field is still changed.
6. Click Destroy on one of your inquiries. Click Ok/Yes when prompted.
7. Success: see that your inquiry is GONE.

