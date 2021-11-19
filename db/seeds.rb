#reset id in table to 1
Customer.destroy_all
Customer.reset_pk_sequence
Seat.destroy_all
Seat.reset_pk_sequence
Plane.destroy_all
Plane.reset_pk_sequence
Pilot.destroy_all
Pilot.reset_pk_sequence


puts " Seeding customers"

#There are 2 planes, each plane has 15 seats. So starting, there are 30 Customers
90.times do 
    Customer.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name
    )
end

#create planes
puts "seeding planes"

Plane.create(plane_number: 1, destination: "Cancun")
Plane.create(plane_number: 2, destination: "Aruba")
Plane.create(plane_number: 3, destination: "Hawaii")
Plane.create(plane_number: 4, destination: "Miami")
Plane.create(plane_number: 5, destination: "Los Angeles")
Plane.create(plane_number: 6, destination: "New York City")

puts "seeding seats"

#creating seats for plane 1
seat_num = 0
cus_id = 0
15.times do 
    Seat.create(
        seat_number: seat_num +=1,
        customer_id: cus_id +=1,
        plane_id: 1
        
    )
end

#this data is here to test customers that have many seats
# Seat.create(seat_number: 2, customer_id: 1, plane_id: 1)
# Seat.create(seat_number: 3, customer_id: 1, plane_id: 1)
# Seat.create(seat_number: 1, customer_id: 1, plane_id: 1)

#creating seats for plane 2
#seat_num is global variable
cus2_id = 15
seat_num2 = 0
15.times do 
    Seat.create(
        seat_number: seat_num2 +=1,
        customer_id: cus2_id +=1,
        plane_id: 2
        
    )
end

cus3_id = 30
seat_num3 = 0
15.times do 
    Seat.create(
        seat_number: seat_num2 +=1,
        customer_id: cus3_id +=1,
        plane_id: 3
        
    )
end

cus4_id = 45
seat_num4 = 0
15.times do 
    Seat.create(
        seat_number: seat_num4 +=1,
        customer_id: cus4_id +=1,
        plane_id: 4
        
    )
end

cus5_id = 60
seat_num5 = 0
15.times do 
    Seat.create(
        seat_number: seat_num5 +=1,
        customer_id: cus5_id +=1,
        plane_id: 5
        
    )
end

cus6_id = 75
seat_num6 = 0
15.times do 
    Seat.create(
        seat_number: seat_num6 +=1,
        customer_id: cus6_id +=1,
        plane_id: 6
        
    )
end

#creating Pilots

# 2.times do 
#     Pilot.create(first_name: Faker::Name.first_name,
#             last_name: Faker::Name.last_name

#         )
#     end

Pilot.create(first_name: "Spider",last_name: "Man",plane_id: 1)
Pilot.create(first_name: "John",last_name: "Wick",plane_id: 2)
Pilot.create(first_name: "Naruto",last_name: "Uzumaki",plane_id: 3)
Pilot.create(first_name: "Sasuke",last_name: "Uchiha",plane_id: 4)
Pilot.create(first_name: "Goku",last_name: "San",plane_id: 5)
Pilot.create(first_name: "Abraham",last_name: "Lincoln",plane_id: 6)



puts "✅ Done seeding!"