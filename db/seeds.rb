class Seed

  def self.begin
    seed = Seed.new
    seed.clear
    seed.generate_products
  end

  def generate_products
    20.times do |i|
      Product.create!(name: Faker::Lorem.word, price: rand(10...100), description: Faker::Lorem.sentence(5, false, 0).chop, image: Faker::LoremPixel.image)
    end

    p "Created #{Product.count} products"
  end

  def clear
    Product.destroy_all
  end
end

Seed.begin
