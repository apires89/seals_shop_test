# db/seeds.rb
puts 'Cleaning database...'
Seal.destroy_all
Category.destroy_all

puts 'Creating categories...'
baby = Category.create!(name: 'baby')
cute = Category.create!(name: 'cute')
fat = Category.create!(name: 'fat')

puts 'Creating seals...'
Seal.create!(sku: 'fat-seal', name: 'Sludge', category: fat, photo_url: 'https://newsinfo.inquirer.net/wp-content/blogs.dir/10/files/2018/10/20181020-03-seal.jpg')
Seal.create!(sku: 'cute-s', name: 'Casper', category: cute, photo_url: 'https://www.azernews.az/media/2018/02/23/caspan_seal.jpg')
Seal.create!(sku: 'baby-s',   name: 'Victoria',      category: baby, photo_url: 'https://i.redd.it/orplt26x3un01.png')
puts 'Finished!'
