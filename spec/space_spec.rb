require 'space'

describe 'Space' do
  describe '.create' do
    it 'can add a new space in the database' do
      connection = PG.connect(dbname: 'makers_bnb_test')
      space = Space.create(name: "bungaloo", description: "cozy", price: 100)

      expect(space).to be_a Space
      expect(space.name).to eq 'bungaloo'
      expect(space.description).to eq 'cozy'
      expect(space.price).to eq(100)
    end
  end

  describe '.all' do
    it 'returns all spaces in the database' do
      connection = PG.connect(dbname: 'makers_bnb_test')
      space = Space.create(name: "bungaloo", description: "cozy", price: 100)
      Space.create(name: "house", description: "nice", price: 200)
      Space.create(name: "mansion", description: "big", price: 300)

      spaces = Space.all

      expect(spaces.length).to eq 3
      expect(spaces.first).to be_a Space
      expect(spaces.first.name).to eq 'bungaloo'
    end
  end

  describe '.find' do
    it 'returns requested Space object' do
      space = Space.create(name: "bungaloo", description: "cozy", price: 100)

      result = Space.find(id: space.id)

      expect(result).to be_a Space
      expect(result.id).to eq space.id
      expect(result.name).to eq 'bungaloo'
      expect(result.description).to eq 'cozy'
      expect(result.price).to eq 100
    end
  end
end
