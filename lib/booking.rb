require 'pg'

# require_relative 'space'

class Booking

  attr_reader :id, :start_date, :end_date, :spaces_id

  def initialize(id:, start_date:, end_date:, spaces_id:)
    @id = id
    @start_date = start_date
    @end_date = end_date
    @spaces_id = spaces_id
    @requested = true
  end

  def self.create(start_date:, end_date:, spaces_id:)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'makers_bnb_test')
    else
      connection = PG.connect(dbname: 'makers_bnb')
    end

    result = connection.exec("INSERT INTO bookings (start_date, end_date, spaces_id) VALUES('#{start_date}','#{end_date}', (select id from spaces where id='#{spaces_id}')) RETURNING id, start_date, end_date, spaces_id;")

    Booking.new(id: result[0]['id'], start_date: result[0]['start_date'], end_date: result[0]['end_date'], spaces_id: result[0]['spaces_id'])

  end

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'makers_bnb_test')
    else
      connection = PG.connect(dbname: 'makers_bnb')
    end

    result = connection.exec("SELECT * FROM bookings")
    result.map do |booking|
      Booking.new(id: booking['id'], start_date: booking['start_date'], end_date: booking['end_date'], spaces_id: booking['spaces_id'])
    end

  end

end