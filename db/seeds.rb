# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create([
    {name: 'Oh Baby.', price: $140, description: 'The Oh Baby basket includes all of our seasonal favorites for the perfect gender neutral gift. With heirloom elements like the knit booties and hypoallergenic bear, it’s the perfect cozy basket. This gift includes, 1 Alpaca Bear - ethically made & naturally hypoallergenic (color will vary) 1 Set of Knit Booties with lambs wool lining, size 0-6 months, 1 Board Book - selection of Chicago ABC’s, The Snowy Day or Little Penguins, 1 Pom Pom Basket', picture1: 'https://res.cloudinary.com/dq5gq02uo/image/upload/v1611873964/HAPPY_CABBAGE_NEW_BABY_GIFT_ipfwaz.jpg', category: 'new baby, children'},
    {name: 'Mother Lover.', price: $150, description: 'As two new mothers we felt really strongly about having a gift tailored for a new Mama. We love the products made by MOTHER MOTHER out of LA, for this gift we feature three of them along with one of our personal favorite books and a relaxing lavender eye pillow. This gift is perfect for an expecting or new mama. This gift includes, 1 MOTHER MOTHER Bath Soak, 1 Sustainably Sourced Sea Sponge, 1 bottle of MOTHER MOTHER All Over Oil, 1 MOTHER MOTHER Calm Aromatherapy Inhaler, 1 Lavender Eye Pillow, 1 copy of Brave New Mama by Vicki Rivard, 1 Handmade Moroccan Market Tote', picture1: 'https://res.cloudinary.com/dq5gq02uo/image/upload/v1611874208/HAPPY_CABBAGE_MOTHER_LOVER_GIFT_zfviia.jpg', category: 'new baby, wellness'}
])

User.create([
    {first_name: 'Mekenzie', last_name: 'Hayford', email: 'mekenzie.hayford@gmail.com', username: 'mekahay', password: 'underwear'}
])