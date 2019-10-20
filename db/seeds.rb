User.create!([
  {first_name: "Bailey", last_name: "Boone", email: "bnboone@cps.edu", encrypted_password: "$2a$11$BYi6sFpWa2mlSplSzzDfWuKm4FOX8GcjE6du/8iGixiQEqH.UFeHO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil}
])
Author.create!([
  {first_name: "Lorranine ", last_name: "Hansberry", bio: "Lorraine Vivian Hansberry (May 19,1930- January 12,1965) was a playwright and writer. Hansberry was the first African-American female author to have a play performed on Broadway. Her best known work, the play A Raisin in the Sun, highlights the lives of Black Americans living under racial segregation in Chicago."},
  {first_name: "Gwendolyn ", last_name: "Brooks", bio: "Gwendolyn Elizabeth Brooks (June 7,1917- December 3,2000) was an American poet, author, and teacher. Her work often dealt with the personal celebrations and struggles of ordinary people in her community. She won the Pulitzer Prize for Poetry on May 1, 1950, for Annie Allen, making her the first African American to receive the Pulitzer."},
  {first_name: "W.E.B.", last_name: "Dubois", bio: "William Edward Burghardt Du Bois (February 23,1868- August 27,1963)  was an American sociologist, historian, civil rights activist, Pan-Africanist, author, writer and editor."},
  {first_name: "Ralph ", last_name: "Ellison", bio: "Ralph Waldo Ellison (March 1, 1914- April 16, 1994) was an American novelist, literary critic, and scholar best known for his novel Invisible Man, which won the National Book Award in 1953. He also wrote Shadow and Act, a collection of political, social and critical essays, and Going to the Territory. "},
  {first_name: "Toni", last_name: "Morrison", bio: "Chloe Anthony Wofford Morrison (February 18, 1931- August 5, 2019), known as Toni Morrison, was an American novelist, essayist, book editor, and college professor. Her first novel, The Bluest Eye, was published in 1970. The critically acclaimed Song of Solomon brought her national attention and won the National Book Critics Circle Award."}
])
Book.create!([
  {title: "A Raisin in the Sun", summary: "A Raisin in the Sun is a play about an African-American family aspiring to move beyond segregation and disenfranchisement in 1950s Chicago. Despite its specific era, the work speaks universally to the desire to improve one's circumstances while disagreeing on the best way of achieving them.", genre: "Domestic Tragedy", publish_date: "2014-03-11", num_pages: 162, image_url: "https://images-na.ssl-images-amazon.com/images/I/81QIOqBDSAL.jpg ", author_id: 2},
  {title: "Annie Allen ", summary: "Annie Allen is a book of poetry by Gwendolyn Brooks that was published in 1949, and for which she received the Pulitzer Prize in 1950. This made her the first African American to ever receive a Pulitzer Prize. The work consists of three parts about an African-American girl, Annie, growing into womanhood.", genre: "Poetry", publish_date: "2019-10-09", num_pages: 60, image_url: "https://pbs.twimg.com/media/EFeTze4XYAA3TNE.jpg", author_id: 5}
])
Favorite.create!([
  {book_id: 2, user_id: 1}
])
Review.create!([
  {description: "very good", rating: 5, book_id: 1, user_id: 1},
  {description: "Loved it", rating: 5, book_id: 2, user_id: 1}
])
