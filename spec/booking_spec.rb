require 'booking'

# require_relative 'space'

describe 'Booking' do
  # it 'is initially requested' do
  #   connection = PG.connect(dbname: 'makers_bnb_test')
  #   space_1 = Space.create(name: "bungaloo", description: "cozy", price: 100)
  #   booking_1 = Booking.create(start_date: "2021-01-14", end_date: "2021-02-17", spaces_id: "#{space_1.id}")
  #   expect(booking_1).to be_requested
  #   expect(booking_1.requested).to eq 'true'
  # end

  # it 'is initially unconfirmed' do
  #   connection = PG.connect(dbname: 'makers_bnb_test')
  #   space_1 = Space.create(name: "bungaloo", description: "cozy", price: 100)
  #   booking_1 = Booking.create(start_date: "2021-01-14", end_date: "2021-02-17", spaces_id: "#{space_1.id}
  #   expect(booking_1).to_not be_confirmed
  #   expect(booking_1.confirmed).to eq 'false'
  # end

  # it 'can be confirmed' do
  #   expect('the first row of database'.confirmed?).to eq 'true'
  # end

  describe '.create' do
    let(:space) { double :space }

    it 'sets the dates that a space is unavailable' do
      connection = PG.connect(dbname: 'makers_bnb_test')

      allow(space).to receive(:id).and_return(1)
      
      booking_1 = Booking.create(start_date: "2021-01-14", end_date: "2021-02-17", spaces_id: "#{space.id}")

      id_result = connection.query("SELECT * FROM bookings WHERE id = #{booking_1.id};")
      first_id_result = id_result.first

      expect(booking_1).to be_a Booking
      expect(booking_1.start_date).to eq "2021-01-14"
      expect(booking_1.end_date).to eq "2021-02-17"
      expect(booking_1.id).to eq first_id_result['id']
    end 
    
    # it 'takes in the id of the space and is set to spaces_id' do
    #   connection = PG.connect(dbname: 'makers_bnb_test')
    #   space_1 = Space.create(name: "bungaloo", description: "cozy", price: 100)
    #   booking_1 = Booking.create(start_date: "2021-01-14", end_date: "2021-02-17", spaces_id: "#{space_1.id}")
      
    #   id_result = connection.query("SELECT * FROM bookings WHERE id = #{booking_1.id};")
    #   first_id_result = id_result.first

    #   expect(booking_1.spaces_id).to eq space_1.id 
    # end
  end

  # describe '.all' do
  #   it 'returns all bookings' do
  #     connection = PG.connect(dbname: 'makers_bnb_test')

  #     space_1 = Space.create(name: "bungaloo", description: "cozy", price: 100)
  #     space_2 = Space.create(name: "cottage", description: "small", price: 200)


  #     booking_1 = Booking.create(start_date: "2021-01-14", end_date: "2021-02-17", spaces_id: "#{space_1.id}")
  #     Booking.create(start_date: "2021-02-14", end_date: "2021-03-17", spaces_id: "#{space_2.id}")
  #     Booking.create(start_date: "2021-03-14", end_date: "2021-04-17", spaces_id: "#{space_2.id}")
  #     bookings = Booking.all

  #     expect(bookings.length).to eq 3
  #     expect(bookings.first).to be_a Booking
  #     expect(bookings.first.id).to eq booking_1.id
  #     expect(bookings.first.start_date).to eq "2021-01-14"
  #     expect(bookings.first.end_date).to eq "2021-02-17"
  #     expect(bookings.first.spaces_id).to eq space_1.id
  #   end
  # end

  #   describe '.confirm_update' do
  #   it 'updates the booking confirmation to be true' do
  #     space_1 = Space.create(name: "bungaloo", description: "cozy", price: 100)
  #     booking_1 = Booking.create(start_date: "2021-01-14", end_date: "2021-02-17", spaces_id: "#{space_1.id}")
  #     confirmed_booking = Booking.confirm_update(id: bookmark_1.id, confirmed: 'true')

  #     expect(confirmed_booking).to be_a Booking
  #     expect(confirmed_booking.id).to eq booking_1.id
  #     expect(confirmed_booking.start_date).to eq '2021-01-14'
  #     expect(confirmed_booking.end_date).to eq "2021-02-17"
  #     expect(confirmed_booking.spaces_id).to eq space_1.id
  #     expect(confirmed_booking.requested).to eq 'true'
  #   end
  # end
end

# make a test that shows the booking table takes in the spaces id when we have Cintia's data e.g. expect(booking_1.spaces_id).to eq space.id 

# create a .all method spec
# create a .find method in spaces
# made mistake on our database