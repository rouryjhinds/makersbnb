require 'space'

describe Space do
  describe '.create' do
    it 'can add a new space in the database' do
      connection = PG.connect(dbname: 'makers_bnb_test')
      space = Space.create(id: 1, name: "bungaloo", description: "cozy", price: 100)

      expect(space).to be_a Space
      expect(space.name).to eq 'bungaloo'
      expect(space.description).to eq 'cozy'
      expect(space.price).to eq(100)
    end
  end

  describe '.all' do
    it 'returns all spaces in the database' do
      space = Space.all

      expect(space.length).to eq 3
      expect(space.first).to be_a Space
      expect(space.first.name).to eq 'bungaloo'
    end
  end
end
