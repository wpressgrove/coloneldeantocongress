User.create({email: 'mike.hoffert@gmail.com', password: 'password', password_confirmation: 'password'}) rescue nil
Page.create({name: 'Home', required: true}) rescue nil
