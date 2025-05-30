# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).


#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Tag.destroy_all
Post.destroy_all


Tag.create([
  { name: 'タグ1' },
  { name: 'タグ2' },
  { name: 'タグ3' },
  { name: 'タグ4' },
  { name: 'タグ5' }
])



Post.create!(number: '111', content: '10代男性でメガネをかけていないあなたは、アクティブなタイプです。')
Post.create!(number: '112', content: '10代男性でメガネをかけているあなたは、知的な印象を与えます。')
Post.create!(number: '122', content: '20代女性でメガネをかけているあなたは、落ち着きと元気さを兼ね備えています。')
Post.create!(number: '241', content: '40代女性でメガネをかけていないあなたは、冷静な判断力があります。')
