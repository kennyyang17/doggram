#Users
User.delete_all
Picture.delete_all
Tag.delete_all
Comment.delete_all
PictureTag.delete_all

10.times do
  User.create(
    username: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Name.name
  )
end

 #Tags
["Happy", "Funny", "Art", "Lovely"].each do |tag_name|
  Tag.create(name: tag_name)
end

 #Dogs

picture1 = Picture.create(image_url: "https://i.kinja-img.com/gawker-media/image/upload/s--WFkXeene--/c_scale,f_auto,fl_progressive,q_80,w_800/ol9ceoqxidudap8owlwn.jpg", title: "Cute Puppy", user_id: 2)
picture2 = Picture.create(image_url: "https://cdn.shopify.com/s/files/1/1324/6367/collections/Why_all_dogs_love_us_close_up_large.jpg?v=1487160259", title: "Dog With Flower", user_id: 1)
picture3 = Picture.create(image_url: "http://www.slate.com/content/dam/slate/articles/health_and_science/Science/2017/08/170803_MEDEX_SickDog.jpg.CROP.promo-xlarge2.jpg", title: "Pug", user_id: 9)
picture4 = Picture.create(image_url: "https://www.petmd.com/sites/default/files/salmonella-infection-dogs.jpg", title: "Happy Dog", user_id: 4)

#Comments

comment1 = Comment.create(content: "Amazing!", picture_id: 1, user_id: 1)
comment2 = Comment.create(content: "Wow!", picture_id: 2, user_id: 2)
comment3 = Comment.create(content: "I love this photo!", picture_id: 3, user_id: 3)

#Picture tags

picture_tag1 = PictureTag.create(picture_id: 1, tag_id: 1)
picture_tag2 = PictureTag.create(picture_id: 1, tag_id: 2)
picture_tag3 = PictureTag.create(picture_id: 2, tag_id: 3)
picture_tag4 = PictureTag.create(picture_id: 3, tag_id: 4)
