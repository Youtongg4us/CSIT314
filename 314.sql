drop table IF EXISTS Comment;
drop table IF EXISTS Rating;
drop table IF EXISTS newfavoriteslist;
drop table IF EXISTS oldfavoriteslist;
drop table IF EXISTS properties;
drop table IF EXISTS users;
drop table IF EXISTS Profile;
CREATE TABLE Profile(
    ProfileId INT AUTO_INCREMENT PRIMARY KEY ,
    ProfileName VARCHAR(255) NOT NULL
);


#用于存储所有用户的信息，包括系统管理员、房地产经纪人、卖家和买家等。
CREATE TABLE Users (
    UserId INT AUTO_INCREMENT PRIMARY KEY ,
    Username VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    Email VARCHAR(255),
    UserTypeId INT,
    UserStatus ENUM('valid', 'invalid') DEFAULT 'Valid' NOT NULL,
    FOREIGN KEY (UserTypeId) REFERENCES Profile(ProfileId)
);
INSERT INTO Profile (ProfileId,ProfileName)
VALUES
    (1,'admin'),
    (2,'agent'),
    (3,'seller'),
    (4,'buyer');


INSERT INTO Users (Username, Password, Email, UserTypeId, UserStatus) VALUES
('Alice', CONCAT('password', FLOOR(RAND()*10000)), 'alice@example.com', 1, 'valid'),
('Bob', CONCAT('password', FLOOR(RAND()*10000)), 'bob@example.com', 1, 'valid'),
('Carol', CONCAT('password', FLOOR(RAND()*10000)), 'carol@example.com', 1, 'valid'),
('David', CONCAT('password', FLOOR(RAND()*10000)), 'david@example.com', 1, 'valid'),
('Eve', CONCAT('password', FLOOR(RAND()*10000)), 'eve@example.com', 1, 'valid'),
('Frank', CONCAT('password', FLOOR(RAND()*10000)), 'frank@example.com', 1, 'valid'),
('Grace', CONCAT('password', FLOOR(RAND()*10000)), 'grace@example.com', 1, 'valid'),
('Hank', CONCAT('password', FLOOR(RAND()*10000)), 'hank@example.com', 1, 'valid'),
('Ivy', CONCAT('password', FLOOR(RAND()*10000)), 'ivy@example.com', 1, 'valid'),
('John', CONCAT('password', FLOOR(RAND()*10000)), 'john@example.com', 1, 'valid'),
-- 继续添加更多名字直到100个
('Kate', CONCAT('password', FLOOR(RAND()*10000)), 'kate@example.com', 1, 'valid'),
('Leo', CONCAT('password', FLOOR(RAND()*10000)), 'leo@example.com', 1, 'valid'),
('Mia', CONCAT('password', FLOOR(RAND()*10000)), 'mia@example.com', 1, 'valid'),
('Nick', CONCAT('password', FLOOR(RAND()*10000)), 'nick@example.com', 1, 'valid'),
('Olivia', CONCAT('password', FLOOR(RAND()*10000)), 'olivia@example.com', 1, 'valid'),
('Paul', CONCAT('password', FLOOR(RAND()*10000)), 'paul@example.com', 1, 'valid'),
('Quinn', CONCAT('password', FLOOR(RAND()*10000)), 'quinn@example.com', 1, 'valid'),
('Rachel', CONCAT('password', FLOOR(RAND()*10000)), 'rachel@example.com', 1, 'valid'),
('Steve', CONCAT('password', FLOOR(RAND()*10000)), 'steve@example.com', 1, 'valid'),
('Tina', CONCAT('password', FLOOR(RAND()*10000)), 'tina@example.com', 1, 'valid'),

('Alice1', CONCAT('password', FLOOR(RAND()*10000)), 'alice1@example.com', 1, 'valid'),
('Bob1', CONCAT('password', FLOOR(RAND()*10000)), 'bob1@example.com', 1, 'valid'),
('Carol1', CONCAT('password', FLOOR(RAND()*10000)), 'carol1@example.com', 1, 'valid'),
('David1', CONCAT('password', FLOOR(RAND()*10000)), 'david1@example.com', 1, 'valid'),
('Eve1', CONCAT('password', FLOOR(RAND()*10000)), 'eve1@example.com', 1, 'valid'),
('Frank1', CONCAT('password', FLOOR(RAND()*10000)), 'frank1@example.com', 2, 'valid'),
('Grace1', CONCAT('password', FLOOR(RAND()*10000)), 'grace1@example.com', 2, 'valid'),
('Hank1', CONCAT('password', FLOOR(RAND()*10000)), 'hank1@example.com', 2, 'valid'),
('Ivy1', CONCAT('password', FLOOR(RAND()*10000)), 'ivy1@example.com', 2, 'valid'),
('John1', CONCAT('password', FLOOR(RAND()*10000)), 'john1@example.com', 2, 'valid'),
-- 继续添加更多名字直到100个
('Kate1', CONCAT('password', FLOOR(RAND()*10000)), 'kate1@example.com', 2, 'valid'),
('Leo1', CONCAT('password', FLOOR(RAND()*10000)), 'leo1@example.com', 2, 'valid'),
('Mia1', CONCAT('password', FLOOR(RAND()*10000)), 'mia1@example.com', 2, 'valid'),
('Nick1', CONCAT('password', FLOOR(RAND()*10000)), 'nick1@example.com', 2, 'valid'),
('Olivia1', CONCAT('password', FLOOR(RAND()*10000)), 'olivia1@example.com', 2, 'valid'),
('Paul1', CONCAT('password', FLOOR(RAND()*10000)), 'paul1@example.com', 2, 'valid'),
('Quinn1', CONCAT('password', FLOOR(RAND()*10000)), 'quinn1@example.com', 2, 'valid'),
('Rachel1', CONCAT('password', FLOOR(RAND()*10000)), 'rachel1@example.com', 2, 'valid'),
('Steve1', CONCAT('password', FLOOR(RAND()*10000)), 'steve1@example.com', 2, 'valid'),
('Tina1', CONCAT('password', FLOOR(RAND()*10000)), 'tina1@example.com', 2, 'valid'),

('Alice2', CONCAT('password', FLOOR(RAND()*10000)), 'alice2@example.com', 2, 'valid'),
('Bob2',CONCAT('password', FLOOR(RAND()*10000)), 'bob2@example.com', 2, 'valid'),
('Carol2', CONCAT('password', FLOOR(RAND()*10000)), 'carol2@example.com', 2, 'valid'),
('David2', CONCAT('password', FLOOR(RAND()*10000)), 'david2@example.com', 2, 'valid'),
('Eve2', CONCAT('password', FLOOR(RAND()*10000)), 'eve2@example.com', 2, 'valid'),
('Frank2', CONCAT('password', FLOOR(RAND()*10000)), 'frank2@example.com', 2, 'valid'),
('Grace2', CONCAT('password', FLOOR(RAND()*10000)), 'grace2@example.com', 2, 'valid'),
('Hank2', CONCAT('password', FLOOR(RAND()*10000)), 'hank2@example.com', 2, 'valid'),
('Ivy2', CONCAT('password', FLOOR(RAND()*10000)), 'ivy2@example.com', 2, 'valid'),
('John2', CONCAT('password', FLOOR(RAND()*10000)), 'john2@example.com', 2, 'valid'),
-- 继续添加更多名字直到100个
('Kate2', CONCAT('password', FLOOR(RAND()*10000)), 'kate2@example.com', 3, 'valid'),
('Leo2', CONCAT('password', FLOOR(RAND()*10000)), 'leo2@example.com', 3, 'valid'),
('Mia2', CONCAT('password', FLOOR(RAND()*10000)), 'mia2@example.com', 3, 'valid'),
('Nick2', CONCAT('password', FLOOR(RAND()*10000)), 'nick2@example.com', 3, 'valid'),
('Olivia2', CONCAT('password', FLOOR(RAND()*10000)), 'olivia2@example.com', 3, 'valid'),
('Paul2', CONCAT('password', FLOOR(RAND()*10000)), 'paul2@example.com', 3, 'valid'),
('Quinn2', CONCAT('password', FLOOR(RAND()*10000)), 'quinn2@example.com', 3, 'valid'),
('Rachel2', CONCAT('password', FLOOR(RAND()*10000)), 'rachel2@example.com',3, 'valid'),
('Steve2', CONCAT('password', FLOOR(RAND()*10000)), 'steve2@example.com', 3, 'valid'),
('Tina2', CONCAT('password', FLOOR(RAND()*10000)), 'tina2@example.com', 3, 'valid'),

('Alice3', CONCAT('password', FLOOR(RAND()*10000)), 'alice3@example.com', 3, 'valid'),
('Bob3',CONCAT('password', FLOOR(RAND()*10000)), 'bob3@example.com', 3, 'valid'),
('Carol3', CONCAT('password', FLOOR(RAND()*10000)), 'carol3@example.com', 3, 'valid'),
('David3', CONCAT('password', FLOOR(RAND()*10000)), 'david3@example.com', 3, 'valid'),
('Eve3', CONCAT('password', FLOOR(RAND()*10000)), 'eve3@example.com', 3, 'valid'),
('Frank3', CONCAT('password', FLOOR(RAND()*10000)), 'frank3@example.com', 3, 'valid'),
('Grace3', CONCAT('password', FLOOR(RAND()*10000)), 'grace3@example.com', 3, 'valid'),
('Hank3', CONCAT('password', FLOOR(RAND()*10000)), 'hank3@example.com', 3, 'valid'),
('Ivy3', CONCAT('password', FLOOR(RAND()*10000)), 'ivy3@example.com', 3, 'valid'),
('John3', CONCAT('password', FLOOR(RAND()*10000)), 'john3@example.com', 3, 'valid'),
-- 继续添加更多名字直到100个
('Kate3', CONCAT('password', FLOOR(RAND()*10000)), 'kate3@example.com', 3, 'valid'),
('Leo3', CONCAT('password', FLOOR(RAND()*10000)), 'leo3@example.com', 3, 'valid'),
('Mia3', CONCAT('password', FLOOR(RAND()*10000)), 'mia3@example.com', 3, 'valid'),
('Nick3', CONCAT('password', FLOOR(RAND()*10000)), 'nick3@example.com', 3, 'valid'),
('Olivia3', CONCAT('password', FLOOR(RAND()*10000)), 'olivia3@example.com', 3, 'valid'),
('Paul3', CONCAT('password', FLOOR(RAND()*10000)), 'paul3@example.com', 4, 'valid'),
('Quinn3', CONCAT('password', FLOOR(RAND()*10000)), 'quinn3@example.com', 4, 'valid'),
('Rachel3', CONCAT('password', FLOOR(RAND()*10000)), 'rachel3@example.com', 4, 'valid'),
('Steve3', CONCAT('password', FLOOR(RAND()*10000)), 'steve3@example.com', 4, 'valid'),
('Tina3', CONCAT('password', FLOOR(RAND()*10000)), 'tina3@example.com',4, 'valid'),

('Alice4', CONCAT('password', FLOOR(RAND()*10000)), 'alice4@example.com', 4, 'valid'),
('Bob4',CONCAT('password', FLOOR(RAND()*10000)), 'bob4@example.com', 4, 'valid'),
('Carol4', CONCAT('password', FLOOR(RAND()*10000)), 'carol4@example.com', 4, 'valid'),
('David4', CONCAT('password', FLOOR(RAND()*10000)), 'david4@example.com', 4, 'valid'),
('Eve4', CONCAT('password', FLOOR(RAND()*10000)), 'eve4@example.com', 4, 'valid'),
('Frank4', CONCAT('password', FLOOR(RAND()*10000)), 'frank4@example.com', 4, 'valid'),
('Grace4', CONCAT('password', FLOOR(RAND()*10000)), 'grace4@example.com', 4, 'valid'),
('Hank4', CONCAT('password', FLOOR(RAND()*10000)), 'hank4@example.com', 4, 'valid'),
('Ivy4', CONCAT('password', FLOOR(RAND()*10000)), 'ivy4@example.com', 4, 'valid'),
('John4', CONCAT('password', FLOOR(RAND()*10000)), 'john4@example.com',4, 'valid'),
-- 继续添加更多名字直到100个
('Kate4', CONCAT('password', FLOOR(RAND()*10000)), 'kate4@example.com', 4, 'valid'),
('Leo4', CONCAT('password', FLOOR(RAND()*10000)), 'leo4@example.com', 4, 'valid'),
('Mia4', CONCAT('password', FLOOR(RAND()*10000)), 'mia4@example.com', 4, 'valid'),
('Nick4', CONCAT('password', FLOOR(RAND()*10000)), 'nick4@example.com', 4, 'valid'),
('Olivia4', CONCAT('password', FLOOR(RAND()*10000)), 'olivia4@example.com', 4, 'valid'),
('Paul4', CONCAT('password', FLOOR(RAND()*10000)), 'paul4@example.com', 4, 'valid'),
('Quinn4', CONCAT('password', FLOOR(RAND()*10000)), 'quinn4@example.com', 4, 'valid'),
('Rachel4', CONCAT('password', FLOOR(RAND()*10000)), 'rachel4@example.com', 4, 'valid'),
('Steve4', CONCAT('password', FLOOR(RAND()*10000)), 'steve4@example.com', 4, 'valid'),
('Tina4', CONCAT('password', FLOOR(RAND()*10000)), 'tina4@example.com', 4, 'valid')
;


CREATE TABLE Properties (
    PropertyId INT AUTO_INCREMENT PRIMARY KEY ,
    Title VARCHAR(255) NOT NULL,
    Description TEXT,
    BedNum INT,
    BathNum INT,
    Size INT,
    Price FLOAT NOT NULL,
    Status ENUM('available', 'sold') NOT NULL,
    Views INT DEFAULT 0,
    Shortlisted INT DEFAULT 0,
    AgentId INT,
    SellerId INT,
    FOREIGN KEY (AgentId) REFERENCES Users(UserId),
    FOREIGN KEY (SellerId) REFERENCES Users(UserId)
);
INSERT INTO Properties
(Title, Description, BedNum, BathNum, Size, Price, Status, AgentId, SellerId)
VALUES
('Cozy Cottage', 'A cozy two-bedroom cottage in the countryside.', 2, 1, 1400, 185000, 'available', 26, 51),
('Urban Studio', 'Efficient and modern studio in the heart of the city.', 1, 1, 600, 220000, 'available', 27, 52),
('Family Home', 'Spacious four-bedroom family home with a large backyard.', 4, 2, 2400, 450000, 'available', 28, 53),
('Downtown Loft', 'Chic loft in a vibrant downtown neighborhood.', 1, 2, 1000, 300000, 'available', 29, 54),
('Country Villa', 'Beautiful villa with stunning views of the countryside.', 5, 4, 3200, 800000, 'available', 30, 55),
('Suburban House', 'Three-bedroom house in a quiet suburban area.', 3, 2, 1800, 350000, 'available', 31, 56),
('Lakefront Cottage', 'Cozy cottage with direct lake access and great views.', 2, 2, 1500, 275000, 'available', 32, 57),
('Modern Condo', 'Sleek, modern condo with all the latest amenities.', 2, 2, 1200, 310000, 'available', 33, 58),
('Historic Farmhouse', 'Fully renovated farmhouse with lots of charm.', 4, 3, 2600, 520000, 'available', 34, 59),
('City Apartment', 'Luxury apartment with panoramic city views.', 3, 2, 1600, 680000, 'available', 35, 60),
('Beachfront Bungalow', 'Charming bungalow right on the beach.', 3, 3, 2000, 950000, 'available', 36, 61),
('Townhouse', 'Conveniently located townhouse with modern upgrades.', 3, 2, 1700, 420000, 'available', 37, 62),
('Mountain Retreat', 'Rustic retreat in the mountains with amazing scenery.', 4, 3, 2300, 465000, 'available', 38, 63),
('City Penthouse', 'Top-floor penthouse with extensive city views.', 2, 2, 1800, 1100000, 'available', 39, 64),
('Suburban Villa', 'Luxurious villa in a prestigious suburban neighborhood.', 5, 4, 3500, 1250000, 'available', 40, 65),
('Compact City Home', 'Small but well-located home perfect for city living.', 2, 1, 900, 210000, 'available', 41, 66),
('Luxury Estate', 'Stunning estate with impeccable design and private grounds.', 6, 5, 5000, 3000000, 'available', 42, 67),
('Colonial House', 'Well-preserved colonial house with authentic charm.', 3, 3, 2500, 685000, 'available', 43, 68),
('High-Rise Apartment', 'High-rise apartment with skyline views in a prime location.', 3, 2, 1500, 720000, 'available', 44, 69),
('Spacious Condo', 'Large condo with open floor plan and modern amenities.', 3, 2, 1650, 480000, 'available', 45, 70);
INSERT INTO Properties
(Title, Description, BedNum, BathNum, Size, Price, Status, AgentId, SellerId)
VALUES
('Riverside Condo', 'Elegant condo with views of the river and city skyline.', 2, 2, 1300, 410000, 'available', 46, 71),
('Urban Brownstone', 'Charming brownstone with modern interiors and historic facade.', 4, 3, 2200, 890000, 'available', 47, 72),
('Countryside Estate', 'Expansive estate with acres of land and private lakes.', 5, 4, 4500, 2300000, 'available', 48, 73),
('Modern Townhome', 'Stylish townhome with eco-friendly features and smart home technology.', 3, 3, 1850, 650000, 'available', 49, 74),
('Executive Suite', 'High-end apartment in a downtown high-rise, fully furnished.', 1, 1, 1100, 340000, 'available', 50, 75),
('Rustic Cabin', 'Secluded cabin in the woods, perfect for weekend getaways.', 2, 1, 800, 175000, 'available', 26, 51),
('Luxury Loft', 'Spacious loft with an open floor plan and industrial finishes.', 1, 2, 1600, 720000, 'available', 27, 52),
('Suburban Ranch', 'Comfortable ranch-style home with large yard and pool.', 3, 2, 2100, 460000, 'available', 28, 53),
('Penthouse Suite', 'Exclusive penthouse with rooftop terrace and luxury finishes.', 4, 4, 3200, 1450000, 'available', 29, 54),
('Victorian Home', 'Well-maintained Victorian home with original woodwork.', 5, 3, 3000, 970000, 'available', 30, 55),
('Coastal Retreat', 'Beautiful home with direct beach access and modern amenities.', 4, 4, 2500, 1250000, 'available', 31, 56),
('Downtown Duplex', 'Duplex with separate entrances, great for rental or multigenerational living.', 4, 3, 2300, 800000, 'available', 32, 57),
('Studio Apartment', 'Compact studio apartment, ideal for students or young professionals.', 1, 1, 500, 200000, 'available', 33, 58),
('Detached Garage Home', 'Home with a large detached garage, ideal for workshops or car enthusiasts.', 3, 2, 1800, 420000, 'available', 34, 59),
('Golf Course Villa', 'Luxurious villa overlooking a prestigious golf course.', 4, 3, 3000, 950000, 'available', 35, 60),
('Mountain Chalet', 'Charming chalet in the mountains with ski-in, ski-out access.', 3, 2, 1700, 675000, 'available', 36, 61),
('Island Getaway', 'Private island home with panoramic ocean views.', 5, 4, 3500, 3000000, 'available', 37, 62),
('Heritage Townhouse', 'Historic townhouse in the heart of the city, recently renovated.', 2, 2, 1500, 550000, 'available', 38, 63),
('Eco-Friendly Home', 'Modern home with sustainable materials and solar panels.', 3, 2, 2000, 500000, 'available', 39, 64),
('Upscale Apartment', 'Apartment in a desirable area with top-of-the-line amenities.', 3, 2, 1400, 750000, 'available', 40, 65);
INSERT INTO Properties
(Title, Description, BedNum, BathNum, Size, Price, Status, AgentId, SellerId)
VALUES
('Art Deco Apartment', 'Chic art deco style apartment in a historic neighborhood.', 2, 2, 1200, 425000, 'available', 41, 66),
('Minimalist Home', 'Minimalist home with clean lines and open space.', 3, 2, 1900, 380000, 'available', 42, 67),
('Country Bungalow', 'Quaint bungalow nestled in a peaceful country setting.', 2, 1, 1100, 270000, 'available', 43, 68),
('Luxury Townhouse', 'Multi-level townhouse with high-end finishes.', 4, 3, 2500, 950000, 'available', 44, 69),
('Modernist Villa', 'Architect-designed modernist villa with private pool.', 4, 4, 3500, 1400000, 'available', 45, 70),
('Classic Colonial', 'A large colonial house with timeless elegance.', 4, 3, 3000, 720000, 'available', 46, 71),
('Ski Resort Condo', 'Condo at a popular ski resort with stunning mountain views.', 2, 2, 1500, 685000, 'available', 47, 72),
('Retro Style Loft', 'Open plan loft with retro interiors and vibrant colors.', 1, 1, 900, 360000, 'available', 48, 73),
('Suburban Bungalow', 'Newly renovated bungalow in a friendly suburban community.', 3, 2, 1400, 460000, 'available', 49, 74),
('Industrial Chic Condo', 'Condo with industrial design elements and modern upgrades.', 2, 2, 1300, 510000, 'available', 50, 75),
('Ranch Style Home', 'Spacious ranch style home with a modern kitchen and large lot.', 3, 2, 2200, 475000, 'sold', 26, 51),
('Modern Cottage', 'Modern cottage with eco-friendly features and a cozy feel.', 2, 1, 800, 335000, 'sold', 27, 52),
('Upscale Studio', 'High-end studio with smart home features in a central location.', 1, 1, 700, 410000, 'sold', 28, 53),
('Contemporary Flat', 'Flat with contemporary design, smart appliances, and city views.', 2, 2, 1100, 640000, 'sold', 29, 54),
('Oceanfront Villa', 'Stunning villa with direct ocean access and luxurious interiors.', 5, 4, 4000, 2500000, 'sold', 30, 55),
('Historic Manor', 'Manor house with rich history and beautifully preserved features.', 6, 4, 5000, 1750000, 'sold', 31, 56),
('City Center Studio', 'Compact studio perfect for urban living, located in the city center.', 1, 1, 500, 225000, 'sold', 32, 57),
('Suburban Craftsman', 'Craftsman style home with custom woodwork and a large porch.', 3, 2, 2000, 610000, 'sold', 33, 58),
('Mountain View Retreat', 'Retreat home with panoramic mountain views and natural surroundings.', 4, 3, 2800, 890000, 'sold', 34, 59),
('Futuristic Pod Home', 'Ultra-modern pod home with state-of-the-art technology.', 1, 1, 950, 550000, 'sold', 35, 60);
INSERT INTO Properties
(Title, Description, BedNum, BathNum, Size, Price, Status, AgentId, SellerId)
VALUES
('Harbor View Loft', 'Loft with stunning harbor views and modern aesthetics.', 2, 2, 1300, 720000, 'sold', 36, 61),
('Traditional Mansion', 'Majestic mansion with timeless design and expansive gardens.', 5, 5, 5000, 2400000, 'sold', 37, 62),
('City Edge Studio', 'Compact studio located at the edge of the city, ideal for first-time buyers.', 1, 1, 550, 230000, 'sold', 38, 63),
('Farmhouse Revival', 'Beautifully restored farmhouse offering a mix of rustic charm and modern comforts.', 4, 3, 2700, 875000, 'sold', 39, 64),
('Urban Retreat', 'A unique retreat in the urban jungle with a private rooftop garden.', 2, 2, 1500, 650000, 'sold', 40, 65),
('Waterfront Bungalow', 'Charming waterfront bungalow with a private dock and boat access.', 3, 2, 1900, 980000, 'sold', 41, 66),
('Minimalistic Studio', 'Ultra-modern studio with minimalistic design and high-end finishes.', 1, 1, 800, 480000, 'sold', 42, 67),
('Chateau Chic', 'Chic chateau-style property with vineyard views and elegant interiors.', 4, 4, 3500, 1350000, 'sold', 43, 68),
('Cottage Core', 'Quintessential cottage with an enchanted garden and homey feel.', 3, 2, 1600, 460000, 'sold', 44, 69),
('Boutique Townhome', 'Fashionably designed boutique townhome in a sought-after neighborhood.', 3, 3, 2200, 860000, 'sold', 45, 70),
('Lake View Estate', 'Grand estate with sweeping views of the lake and bespoke design.', 4, 4, 3200, 1250000, 'sold', 46, 71),
('Mountain Lodge', 'Cozy mountain lodge with direct access to trails and panoramic views.', 4, 3, 3000, 950000, 'sold', 47, 72),
('Skyline Condo', 'High-rise condo with dramatic skyline views and luxurious amenities.', 2, 2, 1200, 790000, 'sold', 48, 73),
('Heritage Apartment', 'Apartment set in a heritage building with beautifully restored features.', 2, 1, 1000, 550000, 'sold', 49, 74),
('Architect’s Loft', 'Stunning architect-designed loft with custom finishes and open layout.', 1, 2, 1500, 690000, 'sold', 50, 75),
('Garden Flat', 'Flat with a large garden and contemporary styling in a quiet suburb.', 3, 2, 1400, 420000, 'sold', 26, 51),
('Desert Villa', 'Modern villa in the desert with privacy, scenery, and sustainable design.', 3, 3, 2500, 750000, 'sold', 27, 52),
('Metro Penthouse', 'Penthouse in the metropolitan heart with exclusive amenities.', 3, 3, 2000, 1200000, 'sold', 28, 53),
('Suburban Homestead', 'Expansive homestead with ample land and farmhouse charm.', 5, 4, 4500, 1350000, 'sold', 29, 54),
('Artistic Studio', 'Studio space designed for artists, with north-facing light and spacious interiors.', 1, 1, 1100, 310000, 'sold', 30, 55);
INSERT INTO Properties
(Title, Description, BedNum, BathNum, Size, Price, Status, AgentId, SellerId)
VALUES
('Suburban Colonial', 'Spacious colonial in a serene suburban neighborhood.', 4, 3, 3000, 900000, 'sold', 31, 56),
('Rooftop Studio', 'Studio with a private rooftop terrace overlooking the city.', 1, 1, 700, 450000, 'sold', 32, 57),
('Estate with Orchard', 'Large estate with a private orchard and luxurious amenities.', 5, 5, 4500, 2200000, 'sold', 33, 58),
('Central City Condo', 'Condo in the heart of the city with excellent transit links.', 2, 2, 1100, 670000, 'sold', 34, 59),
('Lakefront Mansion', 'Stunning mansion with expansive lakefront views and a boathouse.', 6, 4, 5500, 2900000, 'sold', 35, 60),
('Quaint Townhouse', 'Charming townhouse with updated interiors in a historic district.', 3, 2, 1600, 480000, 'sold', 36, 61),
('Modern Bungalow', 'Recently updated bungalow with a minimalist design and smart home technology.', 3, 2, 1800, 750000, 'sold', 37, 62),
('Cliffside Retreat', 'Private retreat perched on a cliff with panoramic ocean views.', 4, 3, 3500, 1850000, 'sold', 38, 63),
('High-Tech Loft', 'Loft with high-tech amenities and a central location.', 2, 2, 1500, 810000, 'sold', 39, 64),
('Forest Hideaway', 'Secluded home surrounded by forest, offering complete privacy.', 3, 2, 2000, 550000, 'sold', 40, 65),
('Vintage Apartment', 'Apartment with vintage charms and modern conveniences.', 2, 1, 1000, 430000, 'sold', 41, 66),
('Ocean Edge Villa', 'Luxurious villa at the edge of the ocean with stunning sunset views.', 4, 4, 3800, 3200000, 'sold', 42, 67),
('Downtown Micro Loft', 'Small but well-designed micro loft in the downtown area.', 1, 1, 600, 300000, 'sold', 43, 68),
('Country Manor', 'A large manor house with extensive grounds in the countryside.', 5, 4, 5000, 2300000, 'sold', 44, 69),
('Industrial Apartment', 'Apartment with industrial design elements located in a converted factory.', 3, 3, 2500, 980000, 'sold', 45, 70),
('Hilltop House', 'House located on a hilltop with breathtaking city views.', 4, 3, 2800, 840000, 'sold', 46, 71),
('City View Penthouse', 'Penthouse with expansive city views and top-of-the-line amenities.', 3, 3, 2400, 1400000, 'sold', 47, 72),
('Sleek Modern Home', 'Sleek modern home with clean lines and an open floor plan.', 4, 3, 3200, 1200000, 'sold', 48, 73),
('Countryside Cottage', 'Cozy cottage in the countryside with a large garden and privacy.', 3, 2, 1800, 460000, 'sold', 49, 74),
('Prime Location Studio', 'Efficient studio located in a prime urban area with easy access to amenities.', 1, 1, 500, 350000, 'sold', 50, 75);

CREATE TABLE NewFavoritesList (
    BuyerFavoritesListID INT AUTO_INCREMENT PRIMARY KEY,
    UserId INT,
    PropertyId INT,
    FOREIGN KEY (UserId) REFERENCES Users(UserId),
    FOREIGN KEY (PropertyId) REFERENCES Properties(PropertyId)
);
INSERT INTO NewFavoritesList (UserId, PropertyId)
VALUES
(76, FLOOR(RAND() * 50 + 1)),
(77, FLOOR(RAND() * 50 + 1)),
(78, FLOOR(RAND() * 50 + 1)),
(79, FLOOR(RAND() * 50 + 1)),
(80, FLOOR(RAND() * 50 + 1)),
(81, FLOOR(RAND() * 50 + 1)),
(82, FLOOR(RAND() * 50 + 1)),
(83, FLOOR(RAND() * 50 + 1)),
(84, FLOOR(RAND() * 50 + 1)),
(85, FLOOR(RAND() * 50 + 1)),
(86, FLOOR(RAND() * 50 + 1)),
(87, FLOOR(RAND() * 50 + 1)),
(88, FLOOR(RAND() * 50 + 1)),
(89, FLOOR(RAND() * 50 + 1)),
(90, FLOOR(RAND() * 50 + 1)),
(91, FLOOR(RAND() * 50 + 1)),
(92, FLOOR(RAND() * 50 + 1)),
(93, FLOOR(RAND() * 50 + 1)),
(94, FLOOR(RAND() * 50 + 1)),
(95, FLOOR(RAND() * 50 + 1)),
(96, FLOOR(RAND() * 50 + 1)),
(97, FLOOR(RAND() * 50 + 1)),
(98, FLOOR(RAND() * 50 + 1)),
(99, FLOOR(RAND() * 50 + 1)),
(100, FLOOR(RAND() * 50 + 1)),
(76, FLOOR(RAND() * 50 + 1)),
(77, FLOOR(RAND() * 50 + 1)),
(78, FLOOR(RAND() * 50 + 1)),
(79, FLOOR(RAND() * 50 + 1)),
(80, FLOOR(RAND() * 50 + 1)),
(81, FLOOR(RAND() * 50 + 1)),
(82, FLOOR(RAND() * 50 + 1)),
(83, FLOOR(RAND() * 50 + 1)),
(84, FLOOR(RAND() * 50 + 1)),
(85, FLOOR(RAND() * 50 + 1)),
(86, FLOOR(RAND() * 50 + 1)),
(87, FLOOR(RAND() * 50 + 1)),
(88, FLOOR(RAND() * 50 + 1)),
(89, FLOOR(RAND() * 50 + 1)),
(90, FLOOR(RAND() * 50 + 1)),
(91, FLOOR(RAND() * 50 + 1)),
(92, FLOOR(RAND() * 50 + 1)),
(93, FLOOR(RAND() * 50 + 1)),
(94, FLOOR(RAND() * 50 + 1)),
(95, FLOOR(RAND() * 50 + 1)),
(96, FLOOR(RAND() * 50 + 1)),
(97, FLOOR(RAND() * 50 + 1)),
(98, FLOOR(RAND() * 50 + 1)),
(99, FLOOR(RAND() * 50 + 1)),
(100, FLOOR(RAND() * 50 + 1)),
(76, FLOOR(RAND() * 50 + 1)),
(77, FLOOR(RAND() * 50 + 1)),
(78, FLOOR(RAND() * 50 + 1)),
(79, FLOOR(RAND() * 50 + 1)),
(80, FLOOR(RAND() * 50 + 1)),
(81, FLOOR(RAND() * 50 + 1)),
(82, FLOOR(RAND() * 50 + 1)),
(83, FLOOR(RAND() * 50 + 1)),
(84, FLOOR(RAND() * 50 + 1)),
(85, FLOOR(RAND() * 50 + 1)),
(86, FLOOR(RAND() * 50 + 1)),
(87, FLOOR(RAND() * 50 + 1)),
(88, FLOOR(RAND() * 50 + 1)),
(89, FLOOR(RAND() * 50 + 1)),
(90, FLOOR(RAND() * 50 + 1)),
(91, FLOOR(RAND() * 50 + 1)),
(92, FLOOR(RAND() * 50 + 1)),
(93, FLOOR(RAND() * 50 + 1)),
(94, FLOOR(RAND() * 50 + 1)),
(95, FLOOR(RAND() * 50 + 1)),
(96, FLOOR(RAND() * 50 + 1)),
(97, FLOOR(RAND() * 50 + 1)),
(98, FLOOR(RAND() * 50 + 1)),
(99, FLOOR(RAND() * 50 + 1)),
(100, FLOOR(RAND() * 50 + 1)),
(76, FLOOR(RAND() * 50 + 1)),
(77, FLOOR(RAND() * 50 + 1)),
(78, FLOOR(RAND() * 50 + 1)),
(79, FLOOR(RAND() * 50 + 1)),
(80, FLOOR(RAND() * 50 + 1)),
(81, FLOOR(RAND() * 50 + 1)),
(82, FLOOR(RAND() * 50 + 1)),
(83, FLOOR(RAND() * 50 + 1)),
(84, FLOOR(RAND() * 50 + 1)),
(85, FLOOR(RAND() * 50 + 1)),
(86, FLOOR(RAND() * 50 + 1)),
(87, FLOOR(RAND() * 50 + 1)),
(88, FLOOR(RAND() * 50 + 1)),
(89, FLOOR(RAND() * 50 + 1)),
(90, FLOOR(RAND() * 50 + 1)),
(91, FLOOR(RAND() * 50 + 1)),
(92, FLOOR(RAND() * 50 + 1)),
(93, FLOOR(RAND() * 50 + 1)),
(94, FLOOR(RAND() * 50 + 1)),
(95, FLOOR(RAND() * 50 + 1)),
(96, FLOOR(RAND() * 50 + 1)),
(97, FLOOR(RAND() * 50 + 1)),
(98, FLOOR(RAND() * 50 + 1)),
(99, FLOOR(RAND() * 50 + 1)),
(100, FLOOR(RAND() * 50 + 1));

INSERT INTO NewFavoritesList (UserId, PropertyId)
VALUES
(76, FLOOR(RAND() * 50 + 1)),
(77, FLOOR(RAND() * 50 + 1)),
(78, FLOOR(RAND() * 50 + 1)),
(79, FLOOR(RAND() * 50 + 1)),
(80, FLOOR(RAND() * 50 + 1)),
(81, FLOOR(RAND() * 50 + 1)),
(82, FLOOR(RAND() * 50 + 1)),
(83, FLOOR(RAND() * 50 + 1)),
(84, FLOOR(RAND() * 50 + 1)),
(85, FLOOR(RAND() * 50 + 1)),
(86, FLOOR(RAND() * 50 + 1)),
(87, FLOOR(RAND() * 50 + 1)),
(88, FLOOR(RAND() * 50 + 1)),
(89, FLOOR(RAND() * 50 + 1)),
(90, FLOOR(RAND() * 50 + 1)),
(91, FLOOR(RAND() * 50 + 1)),
(92, FLOOR(RAND() * 50 + 1)),
(93, FLOOR(RAND() * 50 + 1)),
(94, FLOOR(RAND() * 50 + 1)),
(95, FLOOR(RAND() * 50 + 1)),
(96, FLOOR(RAND() * 50 + 1)),
(97, FLOOR(RAND() * 50 + 1)),
(98, FLOOR(RAND() * 50 + 1)),
(99, FLOOR(RAND() * 50 + 1)),
(100, FLOOR(RAND() * 50 + 1)),
(76, FLOOR(RAND() * 50 + 1)),
(77, FLOOR(RAND() * 50 + 1)),
(78, FLOOR(RAND() * 50 + 1)),
(79, FLOOR(RAND() * 50 + 1)),
(80, FLOOR(RAND() * 50 + 1)),
(81, FLOOR(RAND() * 50 + 1)),
(82, FLOOR(RAND() * 50 + 1)),
(83, FLOOR(RAND() * 50 + 1)),
(84, FLOOR(RAND() * 50 + 1)),
(85, FLOOR(RAND() * 50 + 1)),
(86, FLOOR(RAND() * 50 + 1)),
(87, FLOOR(RAND() * 50 + 1)),
(88, FLOOR(RAND() * 50 + 1)),
(89, FLOOR(RAND() * 50 + 1)),
(90, FLOOR(RAND() * 50 + 1)),
(91, FLOOR(RAND() * 50 + 1)),
(92, FLOOR(RAND() * 50 + 1)),
(93, FLOOR(RAND() * 50 + 1)),
(94, FLOOR(RAND() * 50 + 1)),
(95, FLOOR(RAND() * 50 + 1)),
(96, FLOOR(RAND() * 50 + 1)),
(97, FLOOR(RAND() * 50 + 1)),
(98, FLOOR(RAND() * 50 + 1)),
(99, FLOOR(RAND() * 50 + 1)),
(100, FLOOR(RAND() * 50 + 1)),
(76, FLOOR(RAND() * 50 + 1)),
(77, FLOOR(RAND() * 50 + 1)),
(78, FLOOR(RAND() * 50 + 1)),
(79, FLOOR(RAND() * 50 + 1)),
(80, FLOOR(RAND() * 50 + 1)),
(81, FLOOR(RAND() * 50 + 1)),
(82, FLOOR(RAND() * 50 + 1)),
(83, FLOOR(RAND() * 50 + 1)),
(84, FLOOR(RAND() * 50 + 1)),
(85, FLOOR(RAND() * 50 + 1)),
(86, FLOOR(RAND() * 50 + 1)),
(87, FLOOR(RAND() * 50 + 1)),
(88, FLOOR(RAND() * 50 + 1)),
(89, FLOOR(RAND() * 50 + 1)),
(90, FLOOR(RAND() * 50 + 1)),
(91, FLOOR(RAND() * 50 + 1)),
(92, FLOOR(RAND() * 50 + 1)),
(93, FLOOR(RAND() * 50 + 1)),
(94, FLOOR(RAND() * 50 + 1)),
(95, FLOOR(RAND() * 50 + 1)),
(96, FLOOR(RAND() * 50 + 1)),
(97, FLOOR(RAND() * 50 + 1)),
(98, FLOOR(RAND() * 50 + 1)),
(99, FLOOR(RAND() * 50 + 1)),
(100, FLOOR(RAND() * 50 + 1)),
(76, FLOOR(RAND() * 50 + 1)),
(77, FLOOR(RAND() * 50 + 1)),
(78, FLOOR(RAND() * 50 + 1)),
(79, FLOOR(RAND() * 50 + 1)),
(80, FLOOR(RAND() * 50 + 1)),
(81, FLOOR(RAND() * 50 + 1)),
(82, FLOOR(RAND() * 50 + 1)),
(83, FLOOR(RAND() * 50 + 1)),
(84, FLOOR(RAND() * 50 + 1)),
(85, FLOOR(RAND() * 50 + 1)),
(86, FLOOR(RAND() * 50 + 1)),
(87, FLOOR(RAND() * 50 + 1)),
(88, FLOOR(RAND() * 50 + 1)),
(89, FLOOR(RAND() * 50 + 1)),
(90, FLOOR(RAND() * 50 + 1)),
(91, FLOOR(RAND() * 50 + 1)),
(92, FLOOR(RAND() * 50 + 1)),
(93, FLOOR(RAND() * 50 + 1)),
(94, FLOOR(RAND() * 50 + 1)),
(95, FLOOR(RAND() * 50 + 1)),
(96, FLOOR(RAND() * 50 + 1)),
(97, FLOOR(RAND() * 50 + 1)),
(98, FLOOR(RAND() * 50 + 1)),
(99, FLOOR(RAND() * 50 + 1)),
(100, FLOOR(RAND() * 50 + 1));

CREATE TABLE OldFavoritesList (
    BuyerFavoritesListID INT AUTO_INCREMENT PRIMARY KEY,
    UserId INT,
    PropertyId INT,
    FOREIGN KEY (UserId) REFERENCES Users(UserId),
    FOREIGN KEY (PropertyId) REFERENCES Properties(PropertyId)
);

INSERT INTO oldfavoriteslist (UserId, PropertyId)
VALUES
(76, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(77, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(78, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(79, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(80, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(81, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(82, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(83, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(84, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(85, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(86, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(87, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(88, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(89, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(90, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(91, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(92, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(93, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(94, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(95, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(96, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(97, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(98, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(99, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(100, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(76, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(77, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(78, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(79, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(80, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(81, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(82, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(83, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(84, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(85, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(86, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(87, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(88, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(89, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(90, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(91, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(92, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(93, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(94, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(95, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(96, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(97, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(98, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(99, FLOOR(51 + (RAND() * (100 - 51 + 1)))),
(100, FLOOR(51 + (RAND() * (100 - 51 + 1))));

CREATE TABLE Comment (
    CommentID INT AUTO_INCREMENT PRIMARY KEY,
    SenderId INT,
    ReceiverId INT,
    Comment TEXT,
    FOREIGN KEY (SenderId) REFERENCES Users(UserId),
    FOREIGN KEY (ReceiverId) REFERENCES Users(UserId)
);

CREATE TABLE Rating (
    RatingID INT AUTO_INCREMENT PRIMARY KEY,
    SenderId INT,
    ReceiverId INT,
    Rating INT,
    FOREIGN KEY (SenderId) REFERENCES Users(UserId),
    FOREIGN KEY (ReceiverId) REFERENCES Users(UserId)
);

INSERT INTO Comment (SenderId, ReceiverId, Comment)
VALUES
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Very professional and helpful.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Great service, highly recommended.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Could improve communication.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Went above and beyond.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Not very responsive.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Extremely knowledgeable.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Friendly and professional.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Needs to be more punctual.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Excellent advice and support.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Lacked detail in the contract discussions.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Very professional and helpful.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Great service, highly recommended.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Could improve communication.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Went above and beyond.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Not very responsive.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Extremely knowledgeable.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Friendly and professional.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Needs to be more punctual.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Excellent advice and support.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Lacked detail in the contract discussions.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Very professional and helpful.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Great service, highly recommended.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Could improve communication.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Went above and beyond.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Not very responsive.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Extremely knowledgeable.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Friendly and professional.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Needs to be more punctual.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Excellent advice and support.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Lacked detail in the contract discussions.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Very professional and helpful.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Great service, highly recommended.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Could improve communication.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Went above and beyond.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Not very responsive.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Extremely knowledgeable.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Friendly and professional.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Needs to be more punctual.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Excellent advice and support.'),
(ROUND(51 + RAND() * (100 - 51)), ROUND(26 + RAND() * (50 - 26)), 'Lacked detail in the contract discussions.')
;

INSERT INTO Rating (SenderId, ReceiverId, Rating)
VALUES
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1))),
(FLOOR(51 + RAND() * (100 - 51 + 1)), FLOOR(26 + RAND() * (50 - 26 + 1)), FLOOR(1 + RAND() * (5 - 1 + 1)))
;

UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 52;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 52;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 53;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 53;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 54;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 55;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 58;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 59;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 61;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 63;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 63;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 64;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 64;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 65;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 65;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 65;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 65;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 68;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 69;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 69;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 69;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 71;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 72;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 73;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 74;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 74;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 74;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 75;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 75;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 75;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 76;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 76;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 78;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 78;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 80;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 81;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 85;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 88;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 88;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 88;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 89;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 90;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 92;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 96;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 97;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 98;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 99;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 100;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 100;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 100;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 27;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 19;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 12;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 1;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 20;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 46;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 21;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 15;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 12;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 16;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 41;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 6;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 9;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 24;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 43;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 42;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 30;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 24;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 31;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 32;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 14;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 26;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 36;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 2;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 2;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 2;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 6;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 22;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 42;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 45;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 46;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 45;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 38;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 4;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 4;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 10;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 38;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 7;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 20;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 29;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 34;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 34;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 19;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 41;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 46;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 10;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 8;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 11;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 30;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 17;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 45;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 24;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 33;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 41;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 7;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 12;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 38;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 4;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 3;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 5;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 15;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 9;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 50;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 21;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 6;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 15;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 5;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 33;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 48;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 40;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 7;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 12;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 42;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 20;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 26;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 17;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 7;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 33;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 44;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 20;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 16;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 23;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 14;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 2;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 17;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 28;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 41;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 19;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 20;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 45;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 14;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 35;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 33;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 11;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 3;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 31;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 48;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 46;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 37;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 44;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 9;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 14;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 40;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 9;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 23;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 37;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 18;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 30;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 42;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 19;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 19;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 39;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 37;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 17;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 24;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 17;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 13;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 12;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 21;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 20;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 38;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 26;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 17;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 6;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 28;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 23;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 30;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 31;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 13;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 20;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 13;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 3;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 25;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 15;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 1;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 11;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 1;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 19;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 44;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 13;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 31;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 17;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 43;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 10;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 23;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 34;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 48;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 41;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 8;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 19;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 19;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 36;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 25;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 16;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 5;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 26;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 14;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 40;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 8;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 19;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 23;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 7;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 16;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 9;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 44;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 45;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 42;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 23;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 41;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 35;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 50;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 43;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 16;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 2;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 11;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 50;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 16;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 27;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 37;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 6;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 18;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 20;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 44;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 11;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 24;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 36;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 8;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 32;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 33;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 18;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 42;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 7;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 7;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 14;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 47;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 44;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 29;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 12;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 21;
UPDATE properties SET Shortlisted = Shortlisted + 1 WHERE PropertyId = 19;
