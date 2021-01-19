require 'pg'
def setup_test_database
  p "Setting up test database..."
  connection = PG.connect(dbname: 'makers_bnb_test')
  # Clear the makersbnb table
  connection.exec("TRUNCATE spaces, bookings;")
end
