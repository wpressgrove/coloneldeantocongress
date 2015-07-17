User.create({email: 'mike.hoffert@gmail.com', password: 'password', password_confirmation: 'password'}) rescue nil
Page.create({name: 'Home', body: '', required: true}) rescue nil
Page.create({name: 'About', body: '', required: true}) rescue nil
Event.create({title: 'Madison County Tea Party', location: 'Madison County Tea Party', time: '2015-07-17 17:00:00'}) rescue nil
Event.create({title: 'Meet with Lt. Col. Allen West', location: 'Veterans Conference Center, Huntsville, Texas', time: '2015-07-18 09:00:00', description: 'Sam Houston Tea Party'}) rescue nil
Event.create({title: 'MCTP meeting, Conroe', location: 'Needham Rd. Baptist Church, Conroe, Texas', time: '2015-07-20 18:00:00'}) rescue nil
Event.create({title: 'Trinity Tea Party', location: 'Martin Senior Ctr, Trinity, Texas', time: '2015-07-23 18:00:00'}) rescue nil
Event.create({title: 'MCTP meeting, Conroe', location: 'Needham Rd. Baptist Church, Conroe, Texas', time: '2015-08-03 18:00:00'}) rescue nil
Event.create({title: 'Leon County Tea Party', location: 'Hilltop Lakes, Texas', time: '2015-08-03 18:30:00'}) rescue nil
Event.create({title: 'MCTP meeting, Conroe', location: 'Needham Rd. Baptist Church, Conroe, Texas', time: '2015-08-17 18:00:00'}) rescue nil
Event.create({title: 'Madison County GOP meeting', location: 'County Courthouse Annex on the Square', time: '2015-08-20 19:00:00'}) rescue nil
Event.create({title: 'Madison County Tea Party Patriots', location: 'Kimbro Center, Madisonville, on Square', time: '2015-08-21 17:00:00'}) rescue nil
