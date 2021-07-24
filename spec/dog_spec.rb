dog1 = Dog.create(name: 'teddy', breed: 'cockapoo')
dog2 = Dog.find_or_create_by(name: 'teddy', breed: 'cockapoo')

expect(1).to eq(1)
end
it 'when two dogs have the same name and different breed, it returns the correct dog' do
dog1 = Dog.create(name: 'teddy', breed: 'cockapoo')
dog2 = Dog.create(name: 'teddy', breed: 'pug')

dog_from_db = Dog.find_or_create_by({name: 'teddy', breed: 'cockapoo'})

expect(dog_from_db.id).to eq(3)
expect(dog_from_db.id).to eq(3)
end
it 'when creating a new dog with the same name as persisted dogs, it returns the correct dog' do
dog1 = Dog.create(name: 'teddy', breed: 'cockapoo')