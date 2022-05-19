import UIKit
import Foundation


let productsJson2 = """
                        [
                            {
                            "response":
                            {
                              "product": "Hungama",
                              "store": "India",
                              "section": "Top Charts",
                              "data": [
                            {
                                "bucket_id": "253",
                                "bucket_name": "Today’s Top Hits",
                                "bucket_auto_type": "1",
                                "content_type": "dailytopcharts",
                                "content_label": "Daily",
                                "user_recommendation": "0",
                                "specification": [{
                                    "is_weekly": "0",
                                    "is_shuffle": "0"
                                    }],
                                "content":[
                                                    {
                                                        "id": "38937",
                                                        "content_title": "Today's Top Hits - Hindi",
                                                        "typeid": "topcharts",
                                                        "lang": "Hindi",
                                                        "store_id": "1",
                                                        "image": "https://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/0656fa0f8496f162f6c3fd7da697d056.jpg",
                                                        "playcount": 22249333,
                                                        "fav_count": 1131044,
                                                        "tracks": [
                                                            {
                                                            "id": "62418416",
                                                            "title": "Thoda Thoda Pyaar",
                                                            "artist": "Stebin Ben,Nilesh Ahuja"
                                                            },
                                                            {
                                                            "id": "66196899",
                                                            "title": "Paani Paani",
                                                            "artist": "Badshah,Aastha Gill"
                                                            },
                                                            {
                                                            "id": "70437709",
                                                            "title": "Jannat Ve",
                                                            "artist": "Darshan Raval"
                                                            }
                                                        ],
                                                        "description": ""
                                                    },
                                                    {
                                                        "id": "38943",
                                                        "content_title": "Today's Top Hits - Retro Hindi",
                                                        "typeid": "topcharts",
                                                        "lang": "Hindi",
                                                        "store_id": "1",
                                                        "image": "https://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/23a686167168c37f441481768839b13a.jpg",
                                                        "playcount": 375541533,
                                                        "fav_count": 2228107,
                                                        "tracks": [
                                                            {
                                                            "id": "359466",
                                                            "title": "Humko Tumse Ho Gaya Hai Pyar",
                                                            "artist": "Kishore Kumar,Mohammed Rafi,Mukesh,Lata Mangeshkar"
                                                            },
                                                            {
                                                            "id": "1821652",
                                                            "title": "Tere Bina Zindagi Se",
                                                            "artist": "Lata Mangeshkar,Kishore Kumar"
                                                            },
                                                            {
                                                            "id": "1853809",
                                                            "title": "Lakdi Ki Kathi",
                                                            "artist": "Vanita Mishra,Gauri Bapat,Gurpreet Kaur"
                                                            }
                                                        ],
                                                        "description": ""
                                                    },
                                                    {
                                                        "id": "38938",
                                                        "content_title": "Today's Top Hits - International",
                                                        "typeid": "topcharts",
                                                        "lang": "English",
                                                        "store_id": "1",
                                                        "image": "https://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/bd2f61de30740f783867e00aa78dbae9.jpg",
                                                        "playcount": 4591572,
                                                        "fav_count": 369850,
                                                        "tracks": [
                                                            {
                                                            "id": "72772925",
                                                            "title": "Alexa x Amitabh - script_1_EN_variant_2",
                                                            "artist": "N/A"
                                                            },
                                                            {
                                                            "id": "69096288",
                                                            "title": "STAY",
                                                            "artist": "The Kid LAROI,Justin Bieber,Josh Gudwin,The Kid LAROI & Justin Bieber"
                                                            },
                                                            {
                                                            "id": "71275477",
                                                            "title": "STAY",
                                                            "artist": "The Kid LAROI,Justin Bieber,Josh Gudwin,The Kid LAROI & Justin Bieber"
                                                            }
                                                        ],
                                                        "description": ""
                                                    }
                                                    ]
                            },
                            {
                                "bucket_id": "332",
                                "bucket_name": "Top 50 - Romance",
                                "bucket_auto_type": "1",
                                "content_type": "dailytopcharts",
                                "content_label": "Daily",
                                "user_recommendation": "0",
                                "specification": [{
                                    "is_weekly": "0",
                                    "is_shuffle": "0",
                                    "bucket_logic": "curated"
                                    }],
                                "content":[
                                                {
                                                "id": "46601",
                                                "content_title": "Top 50 Romance - Hindi",
                                                "typeid": "topcharts",
                                                "lang": "Hindi",
                                                "store_id": "1",
                                                "image": "https://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/ec497a9460d448e18b738171449f70bf.jpg",
                                                "playcount": 98623,
                                                "fav_count": 16113,
                                                "tracks": [
                                                {
                                                "id": "72214826",
                                                "title": "Madhur Krishna",
                                                "artist": "Prajakta Shukre"
                                                },
                                                {
                                                "id": "77890033",
                                                "title": "Shambu Teri Maya",
                                                "artist": "Hansraj Raghuwanshi"
                                                },
                                                {
                                                "id": "72773704",
                                                "title": "Govind Bolo Hari Gopal Bolo",
                                                "artist": "Amit Mishra"
                                                }
                                                ],
                                                "description": ""
                                                },
                                                {
                                                "id": "46607",
                                                "content_title": "Top 50 Romance - Retro Hindi",
                                                "typeid": "topcharts",
                                                "lang": "Hindi",
                                                "store_id": "1",
                                                "image": "https://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2a839d4894218ea262d2d89ad568aa43.jpg",
                                                "playcount": 260751200,
                                                "fav_count": 1604220,
                                                "tracks": [
                                                {
                                                "id": "359466",
                                                "title": "Humko Tumse Ho Gaya Hai Pyar",
                                                "artist": "Kishore Kumar,Mohammed Rafi,Mukesh,Lata Mangeshkar"
                                                },
                                                {
                                                "id": "1821652",
                                                "title": "Tere Bina Zindagi Se",
                                                "artist": "Lata Mangeshkar,Kishore Kumar"
                                                },
                                                {
                                                "id": "1853809",
                                                "title": "Lakdi Ki Kathi",
                                                "artist": "Vanita Mishra,Gauri Bapat,Gurpreet Kaur"
                                                }
                                                ],
                                                "description": ""
                                                },
                                                {
                                                "id": "46860",
                                                "content_title": "Top 50 Romance - International",
                                                "typeid": "topcharts",
                                                "lang": "English",
                                                "store_id": "1",
                                                "image": "https://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/81458a2d4018ac23c8a8e6eb8b72f8e6.jpg",
                                                "playcount": 294724,
                                                "fav_count": 15385,
                                                "tracks": [
                                                {
                                                "id": "64376015",
                                                "title": "Astronaut in the Ocean",
                                                "artist": "Barlas & Mert,Yoelle,Barlas & Mert feat. Yoelle"
                                                },
                                                {
                                                "id": "64682226",
                                                "title": "Selfish Love",
                                                "artist": "DJ Snake,Selena Gomez,Tiësto,Kat Dahlia,Bart Schoudel,Marty Maro"
                                                },
                                                {
                                                "id": "61834996",
                                                "title": "Sugar & Brownies",
                                                "artist": "DHARIA"
                                                }
                                                ],
                                                "description": ""
                                                }
                                                ]
                                                                
                            },
                            {
                                "bucket_id": "334",
                                "bucket_name": "Top 50 - Pop",
                                "bucket_auto_type": "1",
                                "content_type": "dailytopcharts",
                                "content_label": "Daily",
                                "user_recommendation": "0",
                                "specification": [{
                                    "is_weekly": "0",
                                    "is_shuffle": "0",
                                    "bucket_logic": "curated"
                                    }],
                                "content":[
                                                    {
                                                    "id": "46850",
                                                    "content_title": "Top 50 Pop - Hindi",
                                                    "typeid": "topcharts",
                                                    "lang": "Hindi",
                                                    "store_id": "1",
                                                    "image": "https://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/f93233b88f74971457559d51bda8c890.jpg",
                                                    "playcount": 46106375,
                                                    "fav_count": 5072021,
                                                    "tracks": [
                                                    {
                                                    "id": "75154983",
                                                    "title": "Dil Galti Kar Baitha Hai (Feat. Mouni Roy)",
                                                    "artist": "Jubin Nautiyal"
                                                    },
                                                    {
                                                    "id": "76945766",
                                                    "title": "Jugnu",
                                                    "artist": "Badshah,Nikhita Gandhi"
                                                    },
                                                    {
                                                    "id": "78506606",
                                                    "title": "Pyaar Karte Ho Na",
                                                    "artist": "Javed-Mohsin,Stebin Ben,Shreya Ghoshal,Danish Sabri"
                                                    }
                                                    ],
                                                    "description": ""
                                                    },
                                                    {
                                                    "id": "46720",
                                                    "content_title": "Top 50 Pop - International",
                                                    "typeid": "topcharts",
                                                    "lang": "English",
                                                    "store_id": "1",
                                                    "image": "https://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/87abc320664df7ac2c4b29fb8b3515a1.jpg",
                                                    "playcount": 10218830,
                                                    "fav_count": 610474,
                                                    "tracks": [
                                                    {
                                                    "id": "53702028",
                                                    "title": "Party Mashup",
                                                    "artist": "DJ Raahul Pai,Ravi Sharma,Aditi Singh Sharma,Ajay Atul,Amit Trivedi,Anandji,Anusha Mani,Arijit Singh,Asees Kaur,Benny Dayal,Bhoomi Trivedi,Deane Sequeira,Dev Negi,Dhvani Bhanushali,Diljit Dosanjh,DIVINE,DJ Chetas,Dub Sharma,Herbie Sahara,Iulia Vantur,Jonita Gandhi,Jyoti Nooran,Kalyanji,Kishore Kumar,Lijo George,Lisa Mishra,Manj Musik,Meet Bros,Mika Singh,Monali Thakur,Naezy,Nakash Aziz,Navv Inder,Neeti Mohan,Neha Kakkar,Nikita Ahuja,Pawni Pandey,Payal Dev,Pravesh Mallick,Pritam,R. D. Burman,Raja Hasan,Raja Kumari,Ram Sampath,Ranveer Singh,RDB,Sez on the Beat,Sharvi Yadav,Shekhar Ravjiani,Sukhbir,Sunidhi Chauhan,Tanishk Bagchi,Vibha Saraf,Vikram Montrose,Vishal Dadlani,Vishal Mishra,Vishal-Shekhar,Yasser Desai"
                                                    },
                                                    {
                                                    "id": "72772925",
                                                    "title": "Alexa x Amitabh - script_1_EN_variant_2",
                                                    "artist": "N/A"
                                                    },
                                                    {
                                                    "id": "69096288",
                                                    "title": "STAY",
                                                    "artist": "The Kid LAROI,Justin Bieber,Josh Gudwin,The Kid LAROI & Justin Bieber"
                                                    }
                                                    ],
                                                    "description": ""
                                                    }
                                                    ]
                            },
                            {
                                    "bucket_id": "335",
                                    "bucket_name": "Top 50 - Party",
                                    "bucket_auto_type": "1",
                                    "content_type": "dailytopcharts",
                                    "content_label": "Daily",
                                    "user_recommendation": "0",
                                    "specification": [{
                                    "is_weekly": "0",
                                    "is_shuffle": "0",
                                    "bucket_logic": "curated"
                                    }],
                                    "content": [
                                                    {
                                                        "id": "46604",
                                                        "content_title": "Top 50 Party - Hindi",
                                                        "typeid": "topcharts",
                                                        "lang": "Hindi",
                                                        "store_id": "1",
                                                        "image": "https://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/ac27b8a3f837d19569ed3772cfe04248.jpg",
                                                        "playcount": 46433391,
                                                        "fav_count": 436346,
                                                        "tracks": [
                                                                    {
                                                                    "id": "50747966",
                                                                    "title": "Muqabla (From Street Dancer 3D)",
                                                                    "artist": "Yash Narvekar,Parampara Tandon"
                                                                    },
                                                                    {
                                                                    "id": "61224599",
                                                                    "title": "Jingle Bell",
                                                                    "artist": "Hommie Dilliwala,Yo Yo Honey Singh"
                                                                    },
                                                                    {
                                                                    "id": "57561007",
                                                                    "title": "Duniya Sharma Jaayegi (From Khaali Peeli)",
                                                                    "artist": "Nakash Aziz,Neeti Mohan"
                                                                    }
                                                        ],
                                                        "description": ""
                                                    },
                                                    {
                                                    "id": "46610",
                                                    "content_title": "Top 50 Party - Retro Hindi",
                                                    "typeid": "topcharts",
                                                    "lang": "Hindi",
                                                    "store_id": "1",
                                                    "image": "https://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/5302afe9b91ea32b16e2426c8a9a8a38.jpg",
                                                    "playcount": 255552504,
                                                    "fav_count": 1579319,
                                                    "tracks": [
                                                    {
                                                    "id": "359466",
                                                    "title": "Humko Tumse Ho Gaya Hai Pyar",
                                                    "artist": "Kishore Kumar,Mohammed Rafi,Mukesh,Lata Mangeshkar"
                                                    },
                                                    {
                                                    "id": "1821652",
                                                    "title": "Tere Bina Zindagi Se",
                                                    "artist": "Lata Mangeshkar,Kishore Kumar"
                                                    },
                                                    {
                                                    "id": "1853809",
                                                    "title": "Lakdi Ki Kathi",
                                                    "artist": "Vanita Mishra,Gauri Bapat,Gurpreet Kaur"
                                                    }
                                                    ],
                                                    "description": ""
                                                    },
                                                    {
                                                    "id": "46862",
                                                    "content_title": "Top 50 Party - International",
                                                    "typeid": "topcharts",
                                                    "lang": "English",
                                                    "store_id": "1",
                                                    "image": "https://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/82476541416928f10a9fabb43cb6bf8c.jpg",
                                                    "playcount": 498288,
                                                    "fav_count": 41446,
                                                    "tracks": [
                                                    {
                                                    "id": "64376015",
                                                    "title": "Astronaut in the Ocean",
                                                    "artist": "Barlas & Mert,Yoelle,Barlas & Mert feat. Yoelle"
                                                    },
                                                    {
                                                    "id": "64682226",
                                                    "title": "Selfish Love",
                                                    "artist": "DJ Snake,Selena Gomez,Tiësto,Kat Dahlia,Bart Schoudel,Marty Maro"
                                                    },
                                                    {
                                                    "id": "59097522",
                                                    "title": "One More Round (Free Fire Booyah Day Theme Song)",
                                                    "artist": "KSHMR,Jeremy Oceans"
                                                    }
                                                    ],
                                                    "description": ""
                                                    }
                                                ]
                                    
                            },
                            {
                            "bucket_id": "257",
                            "bucket_name": "Hot 100",
                            "bucket_auto_type": "1",
                            "content_type": "generaltopcharts",
                            "content_label": "General",
                            "user_recommendation": "0",
                            "specification": [{
                            "is_weekly": "0",
                            "is_shuffle": "0"
                            }],
                            "content": [
                            {
                            "id": "39019",
                            "content_title": "Hindi",
                            "typeid": "topcharts",
                            "lang": "Hindi",
                            "store_id": "1",
                            "image": "https://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/d56fa44b83d5a9f6eb2468b2bc78406f.jpg",
                            "playcount": 91664319,
                            "fav_count": 7782168,
                            "tracks": [
                            {
                            "id": "70541640",
                            "title": "Raataan Lambiyan (From Shershaah)",
                            "artist": "Tanishk Bagchi,Jubin Nautiyal,Asees Kaur"
                            },
                            {
                            "id": "62645337",
                            "title": "Lut Gaye (Feat. Emraan Hashmi)",
                            "artist": "Jubin Nautiyal"
                            },
                            {
                            "id": "62418416",
                            "title": "Thoda Thoda Pyaar",
                            "artist": "Stebin Ben,Nilesh Ahuja"
                            }
                            ],
                            "description": ""
                            },
                            {
                            "id": "39022",
                            "content_title": "Punjabi",
                            "typeid": "topcharts",
                            "lang": "Punjabi",
                            "store_id": "1",
                            "image": "https://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/661eb7097d36055d3d3a4d8c7e7cc70a.jpg",
                            "playcount": 497678,
                            "fav_count": 32592,
                            "tracks": [
                            {
                            "id": "62389221",
                            "title": "Zaroori",
                            "artist": "Jugraj Sandhu"
                            },
                            {
                            "id": "62276642",
                            "title": "Criminal Munda",
                            "artist": "Aarav"
                            },
                            {
                            "id": "62599674",
                            "title": "Nafrat",
                            "artist": "Jashan Grewal"
                            }
                            ],
                            "description": ""
                            },
                            {
                            "id": "39027",
                            "content_title": "Retro Hindi",
                            "typeid": "topcharts",
                            "lang": "Hindi",
                            "store_id": "1",
                            "image": "https://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/456686f7186a6bdf1a53ffa91c510556.jpg",
                            "playcount": 379426960,
                            "fav_count": 2218050,
                            "tracks": [
                            {
                            "id": "359466",
                            "title": "Humko Tumse Ho Gaya Hai Pyar",
                            "artist": "Kishore Kumar,Mohammed Rafi,Mukesh,Lata Mangeshkar"
                            },
                            {
                            "id": "1821652",
                            "title": "Tere Bina Zindagi Se",
                            "artist": "Lata Mangeshkar,Kishore Kumar"
                            },
                            {
                            "id": "1853809",
                            "title": "Lakdi Ki Kathi",
                            "artist": "Vanita Mishra,Gauri Bapat,Gurpreet Kaur"
                            }
                            ],
                            "description": ""
                            },
                            {
                            "id": "39021",
                            "content_title": "International",
                            "typeid": "topcharts",
                            "lang": "English",
                            "store_id": "1",
                            "image": "https://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/5d796bb136889d2c2e988b5aa30a0081.jpg",
                            "playcount": 786368,
                            "fav_count": 42782,
                            "tracks": [
                            {
                            "id": "72815095",
                            "title": "Million To One from the Amazon Original Movie Cinderella",
                            "artist": "Camila Cabello,Bart Schoudel"
                            },
                            {
                            "id": "61524769",
                            "title": "Master the Blaster (From Master)",
                            "artist": "Anirudh Ravichander,Bjorn Surrao"
                            },
                            {
                            "id": "62821135",
                            "title": "Khuda Aur Mohabbat (Original Score)",
                            "artist": "Rahat Fateh Ali Khan,Nish Asher"
                            }
                            ],
                            "description": ""
                            },
                            {
                            "id": "39028",
                            "content_title": "Bhojpuri",
                            "typeid": "topcharts",
                            "lang": "Bhojpuri",
                            "store_id": "1",
                            "image": "https://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/536d1c9e260accff8378440269cc91ea.jpg",
                            "playcount": 74607,
                            "fav_count": 8135,
                            "tracks": [
                            {
                            "id": "79117513",
                            "title": "Paani Paani - Bhojpuri",
                            "artist": "Badshah,Khesari Lal Yadav,Rini Chandra"
                            },
                            {
                            "id": "64647005",
                            "title": "Love Ke Liye Boyfriend Chahiye",
                            "artist": "Pramod Premi Yadav,Priyanka Singh"
                            },
                            {
                            "id": "61595111",
                            "title": "JUDAI MAAR DALI HAMKE",
                            "artist": "Kaif Khan"
                            }
                            ],
                            "description": ""
                            },
                            {
                            "id": "39023",
                            "content_title": "Telugu",
                            "typeid": "topcharts",
                            "lang": "Telugu",
                            "store_id": "1",
                            "image": "https://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/459caf19dd39226ff67485c28c82e77f.jpg",
                            "playcount": 7493482,
                            "fav_count": 323407,
                            "tracks": [
                            {
                            "id": "62762547",
                            "title": "Kanne Adhirindhi",
                            "artist": "Mangli"
                            },
                            {
                            "id": "61480961",
                            "title": "Oh Kshnam Navvune Visuru",
                            "artist": "Vijay Bulganin,Meghana"
                            },
                            {
                            "id": "61387671",
                            "title": "Master Coming",
                            "artist": "Anirudh Ravichander,Gaana Balachandar"
                            }
                            ],
                            "description": ""
                            },
                            {
                            "id": "39024",
                            "content_title": "Tamil",
                            "typeid": "topcharts",
                            "lang": "Tamil",
                            "store_id": "1",
                            "image": "https://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/6b37381dd5f8d9a14d7044e011001687.jpg",
                            "playcount": 2427476,
                            "fav_count": 280278,
                            "tracks": [
                            {
                            "id": "62605011",
                            "title": "Rendu Kaadhal (From Kaathuvaakula Rendu Kaadhal)",
                            "artist": "Anirudh Ravichander,Shakthisree Gopalan,Aishwarya Suresh Bindra"
                            },
                            {
                            "id": "61299402",
                            "title": "Mangalyam",
                            "artist": "Roshini JKV,Silambarasan TR,Thaman S"
                            },
                            {
                            "id": "62704620",
                            "title": "Kandaa Vara Sollunga",
                            "artist": "Kidakuzhi Mariyammal,Santhosh Narayanan"
                            }
                            ],
                            "description": ""
                            },
                            {
                            "id": "39025",
                            "content_title": "Kannada",
                            "typeid": "topcharts",
                            "lang": "Kannada",
                            "store_id": "1",
                            "image": "https://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/1e0886dd7b4845cc70ee562a593a802c.jpg",
                            "playcount": 2630858,
                            "fav_count": 263301,
                            "tracks": [
                            {
                            "id": "62761753",
                            "title": "Kannu Hodiyaka",
                            "artist": "Shreya Ghoshal"
                            },
                            {
                            "id": "62503419",
                            "title": "Pogaru -Title Track",
                            "artist": "Chandan Shetty,Shashank Sheshagiri,Aniruddha Sastry"
                            },
                            {
                            "id": "63070941",
                            "title": "Baby Dance Floor Ready",
                            "artist": "Nakash Aziz,Aishwarya Rangarajan"
                            }
                            ],
                            "description": ""
                            },
                            {
                            "id": "39026",
                            "content_title": "Malayalam",
                            "typeid": "topcharts",
                            "lang": "Malayalam",
                            "store_id": "1",
                            "image": "https://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/a4c6932837744aa92c1fb3eadef51138.jpg",
                            "playcount": 554510,
                            "fav_count": 78388,
                            "tracks": [
                            {
                            "id": "69253650",
                            "title": "Theerame",
                            "artist": "K. S. Chithra,Sooraj Santhosh"
                            },
                            {
                            "id": "62279559",
                            "title": "Ore Pakal",
                            "artist": "Zonobia Safar"
                            },
                            {
                            "id": "61569638",
                            "title": "Oru Thoomazhayil",
                            "artist": "Vineeth Sreenivasan"
                            }
                            ],
                            "description": ""
                            },
                            {
                            "id": "39029",
                            "content_title": "Bengali",
                            "typeid": "topcharts",
                            "lang": "Bengali",
                            "store_id": "1",
                            "image": "https://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/6befe108e1432df48abc3f9f94b7e2a1.jpg",
                            "playcount": 302730,
                            "fav_count": 41721,
                            "tracks": [
                            {
                            "id": "62176197",
                            "title": "Amar Chalaki",
                            "artist": "Anupam Roy"
                            },
                            {
                            "id": "61253206",
                            "title": "Taakey Olpo Kachhe Dakchhi",
                            "artist": "Mahtim Shakib"
                            },
                            {
                            "id": "61379838",
                            "title": "Tomar e Toh Kachhe",
                            "artist": "Anindya Chattopadhyay"
                            }
                            ],
                            "description": ""
                            }
                            ]
                            }

                        ],
                        "epoch": 1642656060,
                        "current_page": 1,
                        "total_page": 1
                        },
                        "status_code": 200
                        }
                        ]
                    """

struct overall: Codable{
    var response: response?
    let status_code: Int?
}
struct response: Codable{
    let product: String?
    let store: String?
    let section: String?
    var data: [data]?
    let epoch: Int?
    let current_page: Int?
    let total_page: Int?
    }
struct data : Codable{
    let bucket_id: String?
    let bucket_name: String?
    let bucket_auto_type: String?
    let content_type: String?
    let content_label: String?
    let user_recommendation:String?
    var specification: [specification]?
    var content: [content]?
}
struct specification : Codable{
    let is_weekly: String?
    let is_shuffle: String?
    let bucket_logic: String?
}
struct content : Codable{
    let id: String?
    let content_title: String?
    let typeid: String?
    let lang: String?
    let store_id: String?
    let image: URL?
    let playcount: Int?
    let fav_count: Int?
    var tracks: [tracks]?
    let description: String?
}
struct tracks : Codable{
    let id: String?
    let title: String?
    let artist: String?
}

let products = try! JSONDecoder().decode([overall].self, from: productsJson2.data(using: .utf8)!)
print(products)
