sections = %w[Breakfast Lunch Dinner Drinks]

sections.each do |section|
  rand(5..10).times do
    item = Menu.new(name: Faker::Lorem.sentence, descriptions: Faker::Lorem.paragraph, price: Faker::Number.decimal(3), section: section, img_url: "http://lorempixel.com/280/320/food/#{Faker::Lorem.word}")
    item.save!
  end
end