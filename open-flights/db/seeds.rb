# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

airlines = Airline.create([
    {
        name: 'United Airlines',
        image_url: 'https://open-flights.s3.amazonaws.com/United-Airlines.png'
    },
    {
        name: 'Delta Air Lines',
        image_url: 'https://open-flights.s3.amazonaws.com/Delta.png'
    },
    {
        name: 'American Airlines',
        image_url: 'https://open-flights.s3.amazonaws.com/American-Airlines.png'
    },
    {
        name: 'Alaska Airlines',
        image_url: 'https://open-flights.s3.amazonaws.com/Alaska-Airlines.png'
    },
    {
        name: 'Southwest Airlines',
        image_url: 'https://open-flights.s3.amazonaws.com/Southwest-Airlines.png'
    },
    {
        name: 'Virgin America',
        image_url: 'https://open-flights.s3.amazonaws.com/Virgin-America.png'
    },
    {
        name: 'SkyWest Airlines',
        image_url: 'https://open-flights.s3.amazonaws.com/Skywest.png'
    },
    {
        name: 'JetBlue',
        image_url: 'https://open-flights.s3.amazonaws.com/JetBlue.png'
    }
])

review = Review.create([
    {
        title: 'Excellent flight experience',
        description: 'The flight was smooth, comfortable, and the crew was friendly.',
        score: 5,
        airline: airlines.first,
    },
    {
        title: 'Service was good',
        description: 'The flight attendants were attentive and helpful.',
        score: 4,
        airline: airlines.second,
    },
    {
        title: 'Great value for money',
        description: 'The flight was affordable and the service was excellent.',
        score: 5,
        airline: airlines.third,
    },
    {
        title: 'Bad airline',
        description: 'The flight was cancelled and the crew was unfriendly.',
        score: 1,
        airline: airlines.fourth,
    },
    {
        title: 'Didn\'t enjoy it',
        description: 'The flight was too long and the crew was rude.',
        score: 2,
        airline: airlines.third,
    }
])