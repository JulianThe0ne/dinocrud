# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning the database'
Dinosaur.destroy_all

puts 'Creating Dinosaurs...'

Dinosaur.create(name: 'tyrannosaurus', group: 'carnivorous', japanese: 'ティラノサウルス')
Dinosaur.create(name: 'triceratops', group: 'herbivorous', japanese: 'トリケラトプス')
Dinosaur.create(name: 'spinosaurus', group: 'carnivorous', japanese: 'スピノサウルス')
Dinosaur.create(name: 'stegosaurus', group: 'herbivorous', japanese: 'ステゴサウルス')
Dinosaur.create(name: 'allosaurus', group: 'carnivorous', japanese: 'アロサウルス')
Dinosaur.create(name: 'Apatosaurus', group: 'herbivorous', japanese: 'アパトサウルス')
Dinosaur.create(name: 'brachiosaurus', group: 'herbivorous', japanese: 'ブラキオサウルス')
Dinosaur.create(name: 'tyrannosaurus rex', group: 'carnivorous', japanese: 'ティラノサウルス・レックス')
Dinosaur.create(name: 'velociraptor', group: 'carnivorous', japanese: 'ヴェロキラプトル')
Dinosaur.create(name: 'ankylosaurus', group: 'herbivorous', japanese: 'アンキロサウルス')

puts 'Finished'
