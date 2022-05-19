import UIKit
import Foundation

let json1 = """
    {
    "last_modified": 1645005564,
        "response": {
            "playlist": {
                "content_id": 39596,
                "images": {
                    "image_50x50": [
                        "https://images.hungama.com/c/1/968/fa0/82474726/82474726_50x50.jpg",
                        "https://images.hungama.com/c/1/af3/52a/80914913/80914913_50x50.jpg",
                        "https://images.hungama.com/c/1/c99/644/80628834/80628834_50x50.jpg",
                        "https://images.hungama.com/c/1/abf/8d9/81443662/81443662_50x50.jpg",
                        "https://images.hungama.com/c/1/c65/822/80965350/80965350_50x50.jpg",
                        "https://images.hungama.com/c/1/861/4a3/81464558/81464558_50x50.jpg"
                    ],
                    "image_500x500": [
                        "https://images.hungama.com/c/1/968/fa0/82474726/82474726_500x500.jpg",
                        "https://images.hungama.com/c/1/af3/52a/80914913/80914913_500x500.jpg",
                        "https://images.hungama.com/c/1/c99/644/80628834/80628834_500x500.jpg",
                        "https://images.hungama.com/c/1/abf/8d9/81443662/81443662_500x500.jpg",
                        "https://images.hungama.com/c/1/c65/822/80965350/80965350_500x500.jpg",
                        "https://images.hungama.com/c/1/861/4a3/81464558/81464558_500x500.jpg"
                    ],
                    "image_200x200": [
                        "https://images.hungama.com/c/1/968/fa0/82474726/82474726_200x200.jpg",
                        "https://images.hungama.com/c/1/af3/52a/80914913/80914913_200x200.jpg",
                        "https://images.hungama.com/c/1/c99/644/80628834/80628834_200x200.jpg",
                        "https://images.hungama.com/c/1/abf/8d9/81443662/81443662_200x200.jpg",
                        "https://images.hungama.com/c/1/c65/822/80965350/80965350_200x200.jpg",
                        "https://images.hungama.com/c/1/861/4a3/81464558/81464558_200x200.jpg"
                    ],
                    "image_800x800": [
                        "https://images.hungama.com/c/1/968/fa0/82474726/82474726_800x800.jpg",
                        "https://images.hungama.com/c/1/af3/52a/80914913/80914913_800x800.jpg",
                        "https://images.hungama.com/c/1/c99/644/80628834/80628834_800x800.jpg",
                        "https://images.hungama.com/c/1/abf/8d9/81443662/81443662_800x800.jpg",
                        "https://images.hungama.com/c/1/c65/822/80965350/80965350_800x800.jpg",
                        "https://images.hungama.com/c/1/861/4a3/81464558/81464558_800x800.jpg"
                    ],
                    "image_100x100": [
                        "https://images.hungama.com/c/1/968/fa0/82474726/82474726_100x100.jpg",
                        "https://images.hungama.com/c/1/af3/52a/80914913/80914913_100x100.jpg",
                        "https://images.hungama.com/c/1/c99/644/80628834/80628834_100x100.jpg",
                        "https://images.hungama.com/c/1/abf/8d9/81443662/81443662_100x100.jpg",
                        "https://images.hungama.com/c/1/c65/822/80965350/80965350_100x100.jpg",
                        "https://images.hungama.com/c/1/861/4a3/81464558/81464558_100x100.jpg"
                    ]
                },
                "title": "Love Hurts",
                "release_year": 2019,
                "music_tracks_count": 76,
                "comments_count": 0,
                "fav_count": 0,
                "plays_count": 92990289,
                "playlist_artwork": "https://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/9ebf22624c2c7922cda661e876c8847f_500x500.jpg",
                "artist": [
                    {
                        "artist_id": "91609",
                        "artist_name": "Arijit Singh",
                        "image": {
                            "image_100x100": [
                                "https://images.hungama.com/a/1/194/2c7/91609/91609_100x100.jpg"
                            ],
                            "image_50x50": [
                                "https://images.hungama.com/a/1/194/2c7/91609/91609_50x50.jpg"
                            ],
                            "image_200x200": [
                                "https://images.hungama.com/a/1/194/2c7/91609/91609_200x200.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "193623365",
                        "artist_name": "Akull",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "1736678",
                        "artist_name": "Manas Kumar",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "6998420",
                        "artist_name": "Mellow D",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "86940076",
                        "artist_name": "Dhruv Yogi",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "40531",
                        "artist_name": "Vineet Singh",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "2765",
                        "artist_name": "Himesh Reshammiya",
                        "image": {
                            "image_200x200": [
                                "https://images.hungama.com/a/1/370/bfb/2765/2765_200x200.jpg"
                            ],
                            "image_50x50": [
                                "https://images.hungama.com/a/1/370/bfb/2765/2765_50x50.jpg"
                            ],
                            "image_100x100": [
                                "https://images.hungama.com/a/1/370/bfb/2765/2765_100x100.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "95001",
                        "artist_name": "Rochak Kohli",
                        "image": {
                            "image_200x200": [
                                "https://images.hungama.com/a/1/c05/fe7/95001/95001_200x200.jpg"
                            ],
                            "image_50x50": [
                                "https://images.hungama.com/a/1/c05/fe7/95001/95001_50x50.jpg"
                            ],
                            "image_100x100": [
                                "https://images.hungama.com/a/1/c05/fe7/95001/95001_100x100.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "6166021",
                        "artist_name": "Jubin Nautiyal",
                        "image": {
                            "image_50x50": [
                                "https://images.hungama.com/a/1/046/daa/6166021/6166021_50x50.jpg"
                            ],
                            "image_200x200": [
                                "https://images.hungama.com/a/1/046/daa/6166021/6166021_200x200.jpg"
                            ],
                            "image_100x100": [
                                "https://images.hungama.com/a/1/046/daa/6166021/6166021_100x100.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "7069",
                        "artist_name": "Shreya Ghoshal",
                        "image": {
                            "image_50x50": [
                                "https://images.hungama.com/a/1/831/875/7069/7069_50x50.jpg"
                            ],
                            "image_100x100": [
                                "https://images.hungama.com/a/1/831/875/7069/7069_100x100.jpg"
                            ],
                            "image_200x200": [
                                "https://images.hungama.com/a/1/831/875/7069/7069_200x200.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "81131402",
                        "artist_name": "Stebin Ben",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "87518",
                        "artist_name": "Mame Khan",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "45852",
                        "artist_name": "Altamash Faridi",
                        "image": {
                            "image_200x200": [
                                "https://images.hungama.com/a/1/40a/862/45852/45852_200x200.jpg"
                            ],
                            "image_50x50": [
                                "https://images.hungama.com/a/1/40a/862/45852/45852_50x50.jpg"
                            ],
                            "image_100x100": [
                                "https://images.hungama.com/a/1/40a/862/45852/45852_100x100.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "81568264",
                        "artist_name": "Yunan",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "274982262",
                        "artist_name": "Ysoblue",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "272855121",
                        "artist_name": "DAKU",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "8550",
                        "artist_name": "Pritam Chakraborty",
                        "image": {
                            "image_100x100": [
                                "https://images.hungama.com/a/1/e99/211/8550/8550_100x100.jpg"
                            ],
                            "image_50x50": [
                                "https://images.hungama.com/a/1/e99/211/8550/8550_50x50.jpg"
                            ],
                            "image_200x200": [
                                "https://images.hungama.com/a/1/e99/211/8550/8550_200x200.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "6468751",
                        "artist_name": "B Praak",
                        "image": {
                            "image_50x50": [
                                "https://images.hungama.com/a/1/794/0e3/6468751/6468751_50x50.jpg"
                            ],
                            "image_100x100": [
                                "https://images.hungama.com/a/1/794/0e3/6468751/6468751_100x100.jpg"
                            ],
                            "image_200x200": [
                                "https://images.hungama.com/a/1/794/0e3/6468751/6468751_200x200.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "179776399",
                        "artist_name": "Dino James",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "1873843",
                        "artist_name": "Priya Saraiya",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "5570",
                        "artist_name": "Rahul Vaidya",
                        "image": {
                            "image_50x50": [
                                "https://images.hungama.com/a/1/eab/9c5/5570/5570_50x50.jpg"
                            ],
                            "image_100x100": [
                                "https://images.hungama.com/a/1/eab/9c5/5570/5570_100x100.jpg"
                            ],
                            "image_200x200": [
                                "https://images.hungama.com/a/1/eab/9c5/5570/5570_200x200.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "5914290",
                        "artist_name": "Guru Randhawa",
                        "image": {
                            "image_100x100": [
                                "https://images.hungama.com/a/1/cf2/520/5914290/5914290_100x100.jpg"
                            ],
                            "image_200x200": [
                                "https://images.hungama.com/a/1/cf2/520/5914290/5914290_200x200.jpg"
                            ],
                            "image_50x50": [
                                "https://images.hungama.com/a/1/cf2/520/5914290/5914290_50x50.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "45939826",
                        "artist_name": "Darshan Raval",
                        "image": {
                            "image_100x100": [
                                "https://images.hungama.com/a/1/f88/d90/45939826/45939826_100x100.jpg"
                            ],
                            "image_200x200": [
                                "https://images.hungama.com/a/1/f88/d90/45939826/45939826_200x200.jpg"
                            ],
                            "image_50x50": [
                                "https://images.hungama.com/a/1/f88/d90/45939826/45939826_50x50.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "93490",
                        "artist_name": "Jatinder Shah",
                        "image": {
                            "image_100x100": [
                                "https://images.hungama.com/a/1/7de/9dd/93490/93490_100x100.jpg"
                            ],
                            "image_50x50": [
                                "https://images.hungama.com/a/1/7de/9dd/93490/93490_50x50.jpg"
                            ],
                            "image_200x200": [
                                "https://images.hungama.com/a/1/7de/9dd/93490/93490_200x200.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "6438745",
                        "artist_name": "Maninder Kailey",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "5825884",
                        "artist_name": "Vishal Mishra",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "101136",
                        "artist_name": "Kaushal Kishore",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "155056329",
                        "artist_name": "Yasser Desai",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "145401975",
                        "artist_name": "Nilesh Ahuja",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "19301",
                        "artist_name": "Armaan Malik",
                        "image": {
                            "image_50x50": [
                                "https://images.hungama.com/a/1/8ea/405/19301/19301_50x50.jpg"
                            ],
                            "image_100x100": [
                                "https://images.hungama.com/a/1/8ea/405/19301/19301_100x100.jpg"
                            ],
                            "image_200x200": [
                                "https://images.hungama.com/a/1/8ea/405/19301/19301_200x200.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "119085",
                        "artist_name": "Arjun Kanungo",
                        "image": {
                            "image_50x50": [
                                "https://images.hungama.com/a/1/543/95c/119085/119085_50x50.jpg"
                            ],
                            "image_100x100": [
                                "https://images.hungama.com/a/1/543/95c/119085/119085_100x100.jpg"
                            ],
                            "image_200x200": [
                                "https://images.hungama.com/a/1/543/95c/119085/119085_200x200.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "4217",
                        "artist_name": "Master Saleem",
                        "image": {
                            "image_100x100": [
                                "https://images.hungama.com/a/1/819/6e8/4217/4217_100x100.jpg"
                            ],
                            "image_50x50": [
                                "https://images.hungama.com/a/1/819/6e8/4217/4217_50x50.jpg"
                            ],
                            "image_200x200": [
                                "https://images.hungama.com/a/1/819/6e8/4217/4217_200x200.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "175720558",
                        "artist_name": "Sachet Tandon",
                        "image": {
                            "image_100x100": [
                                "https://images.hungama.com/a/1/93e/85e/175720558/175720558_100x100.jpg"
                            ],
                            "image_200x200": [
                                "https://images.hungama.com/a/1/93e/85e/175720558/175720558_200x200.jpg"
                            ],
                            "image_50x50": [
                                "https://images.hungama.com/a/1/93e/85e/175720558/175720558_50x50.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "253",
                        "artist_name": "Alka Yagnik",
                        "image": {
                            "image_200x200": [
                                "https://images.hungama.com/a/1/c24/cd7/253/253_200x200.jpg"
                            ],
                            "image_50x50": [
                                "https://images.hungama.com/a/1/c24/cd7/253/253_50x50.jpg"
                            ],
                            "image_100x100": [
                                "https://images.hungama.com/a/1/c24/cd7/253/253_100x100.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "93549065",
                        "artist_name": "Ashok Ojha",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "272414891",
                        "artist_name": "Salman Ali",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "106051",
                        "artist_name": "Khesari Lal Yadav",
                        "image": {
                            "image_100x100": [
                                "https://images.hungama.com/a/1/928/ea8/106051/106051_100x100.jpg"
                            ],
                            "image_200x200": [
                                "https://images.hungama.com/a/1/928/ea8/106051/106051_200x200.jpg"
                            ],
                            "image_50x50": [
                                "https://images.hungama.com/a/1/928/ea8/106051/106051_50x50.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "119086",
                        "artist_name": "Payal Dev",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "227",
                        "artist_name": "Akshay Kumar",
                        "image": {
                            "image_200x200": [
                                "https://images.hungama.com/a/1/705/f21/227/227_200x200.jpg"
                            ],
                            "image_100x100": [
                                "https://images.hungama.com/a/1/705/f21/227/227_100x100.jpg"
                            ],
                            "image_50x50": [
                                "https://images.hungama.com/a/1/705/f21/227/227_50x50.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "272664799",
                        "artist_name": "Nupur Sanon",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "4041606",
                        "artist_name": "Ammy Virk",
                        "image": {
                            "image_100x100": [
                                "https://images.hungama.com/a/1/8d0/9c1/4041606/4041606_100x100.jpg"
                            ],
                            "image_200x200": [
                                "https://images.hungama.com/a/1/8d0/9c1/4041606/4041606_200x200.jpg"
                            ],
                            "image_50x50": [
                                "https://images.hungama.com/a/1/8d0/9c1/4041606/4041606_50x50.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "4041236",
                        "artist_name": "Jaani",
                        "image": {
                            "image_50x50": [
                                "https://images.hungama.com/a/1/19d/a4b/4041236/4041236_50x50.jpg"
                            ],
                            "image_200x200": [
                                "https://images.hungama.com/a/1/19d/a4b/4041236/4041236_200x200.jpg"
                            ],
                            "image_100x100": [
                                "https://images.hungama.com/a/1/19d/a4b/4041236/4041236_100x100.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "275807890",
                        "artist_name": "Saaj Bhatt",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "256530894",
                        "artist_name": "Amjad Nadeem Aamir",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "92149",
                        "artist_name": "Tony Kakkar",
                        "image": {
                            "image_200x200": [
                                "https://images.hungama.com/a/1/5f1/e34/92149/92149_200x200.jpg"
                            ],
                            "image_50x50": [
                                "https://images.hungama.com/a/1/5f1/e34/92149/92149_50x50.jpg"
                            ],
                            "image_100x100": [
                                "https://images.hungama.com/a/1/5f1/e34/92149/92149_100x100.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "109952",
                        "artist_name": "Akhil Sachdeva",
                        "image": {
                            "image_200x200": [
                                "https://images.hungama.com/a/1/75c/a63/109952/109952_200x200.jpg"
                            ],
                            "image_100x100": [
                                "https://images.hungama.com/a/1/75c/a63/109952/109952_100x100.jpg"
                            ],
                            "image_50x50": [
                                "https://images.hungama.com/a/1/75c/a63/109952/109952_50x50.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "105059",
                        "artist_name": "Asees Kaur",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "136506822",
                        "artist_name": "Devenderpal Singh",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "272726931",
                        "artist_name": "Mohd Danish",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "79036052",
                        "artist_name": "Pawandeep Rajan",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "273209094",
                        "artist_name": "Arunita Kanjilal",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "54125784",
                        "artist_name": "Zara Khan",
                        "image": {
                            "image_50x50": [
                                "https://images.hungama.com/a/1/4d7/eda/54125784/54125784_50x50.jpg"
                            ],
                            "image_200x200": [
                                "https://images.hungama.com/a/1/4d7/eda/54125784/54125784_200x200.jpg"
                            ],
                            "image_100x100": [
                                "https://images.hungama.com/a/1/4d7/eda/54125784/54125784_100x100.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "77151282",
                        "artist_name": "Tanishk Bagchi",
                        "image": {
                            "image_100x100": [
                                "https://images.hungama.com/a/1/fff/d4f/77151282/77151282_100x100.jpg"
                            ],
                            "image_200x200": [
                                "https://images.hungama.com/a/1/fff/d4f/77151282/77151282_200x200.jpg"
                            ],
                            "image_50x50": [
                                "https://images.hungama.com/a/1/fff/d4f/77151282/77151282_50x50.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "41053",
                        "artist_name": "Shomu Seal",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "4753880",
                        "artist_name": "Raju Sardar",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "36321081",
                        "artist_name": "Manish Joshi",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "4754467",
                        "artist_name": "Rahul Jain",
                        "image": {
                            "image_100x100": [
                                "https://images.hungama.com/a/1/ff4/9b1/4754467/4754467_100x100..jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "275119081",
                        "artist_name": "Rohit Koul",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "272862609",
                        "artist_name": "Raghav Chaitanya",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "2674319",
                        "artist_name": "Anurag Saikia",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "35165189",
                        "artist_name": "Kunaal Vermaa",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "7888",
                        "artist_name": "Tulsi Kumar",
                        "image": {
                            "image_100x100": [
                                "https://images.hungama.com/a/1/112/e9d/7888/7888_100x100.jpg"
                            ],
                            "image_50x50": [
                                "https://images.hungama.com/a/1/112/e9d/7888/7888_50x50.jpg"
                            ],
                            "image_200x200": [
                                "https://images.hungama.com/a/1/112/e9d/7888/7888_200x200.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "4699",
                        "artist_name": "Naveen Kumar",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "4157",
                        "artist_name": "Manoj Muntashir",
                        "image": {
                            "image_100x100": [
                                "https://images.hungama.com/a/1/b83/730/4157/4157_100x100.jpg"
                            ],
                            "image_200x200": [
                                "https://images.hungama.com/a/1/b83/730/4157/4157_200x200.jpg"
                            ],
                            "image_50x50": [
                                "https://images.hungama.com/a/1/b83/730/4157/4157_50x50.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "1730016",
                        "artist_name": "Gourov Dasgupta",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "274421968",
                        "artist_name": "Parampara Tandon",
                        "image": {
                            "image_50x50": [
                                "https://images.hungama.com/a/1/28f/4ab/274421968/274421968_50x50.jpg"
                            ],
                            "image_200x200": [
                                "https://images.hungama.com/a/1/28f/4ab/274421968/274421968_200x200.jpg"
                            ],
                            "image_100x100": [
                                "https://images.hungama.com/a/1/28f/4ab/274421968/274421968_100x100.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "266738606",
                        "artist_name": "Prem & Hardeep",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "37495",
                        "artist_name": "Mohammed Irfan",
                        "image": {
                            "image_100x100": [
                                "https://images.hungama.com/a/1/817/a5a/37495/37495_100x100.jpg"
                            ],
                            "image_200x200": [
                                "https://images.hungama.com/a/1/817/a5a/37495/37495_200x200.jpg"
                            ],
                            "image_50x50": [
                                "https://images.hungama.com/a/1/817/a5a/37495/37495_50x50.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "274565361",
                        "artist_name": "Prem & Hardeep & Mohammed Irfan",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "86841516",
                        "artist_name": "Jeet Gannguli",
                        "image": {
                            "image_100x100": [
                                "https://images.hungama.com/a/1/c57/478/86841516/86841516_100x100.jpg"
                            ],
                            "image_200x200": [
                                "https://images.hungama.com/a/1/c57/478/86841516/86841516_200x200.jpg"
                            ],
                            "image_50x50": [
                                "https://images.hungama.com/a/1/c57/478/86841516/86841516_50x50.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "4320673",
                        "artist_name": "Amaal Mallik",
                        "image": {
                            "image_200x200": [
                                "https://images.hungama.com/a/1/951/df7/4320673/4320673_200x200.jpg"
                            ],
                            "image_100x100": [
                                "https://images.hungama.com/a/1/951/df7/4320673/4320673_100x100.jpg"
                            ],
                            "image_50x50": [
                                "https://images.hungama.com/a/1/951/df7/4320673/4320673_50x50.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "2675788",
                        "artist_name": "Gaurav Vaswani",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "173581274",
                        "artist_name": "Yash Anand",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "197644255",
                        "artist_name": "Sasmit Rudra",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "239336884",
                        "artist_name": "Roland Fernandes",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "197644253",
                        "artist_name": "Bhushan Chitnis",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "3114",
                        "artist_name": "Jeetu",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "189640752",
                        "artist_name": "Ajay Jayanthi",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "15298",
                        "artist_name": "Neha Kakkar",
                        "image": {
                            "image_100x100": [
                                "https://images.hungama.com/a/1/71e/10d/15298/15298_100x100.jpg"
                            ],
                            "image_200x200": [
                                "https://images.hungama.com/a/1/71e/10d/15298/15298_200x200.jpg"
                            ],
                            "image_50x50": [
                                "https://images.hungama.com/a/1/71e/10d/15298/15298_50x50.jpg"
                            ]
                        }
                    },
                    {
                        "artist_id": "1308182",
                        "artist_name": "Abhay Jodhpurkar",
                        "image": {
                            "image_50x50": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ],
                            "image_200x200": [
                                "http://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/2382200896a5a881321eafcfa33032bf.jpg"
                            ]
                        }
                    }
                ],
                "user_fav": 0
            },
            "musiclisting": {
            "track": [
                            {
                                "content_id": 82474727,
                                "title": "Dhokha (Feat. Khushalii Kumar)",
                                "album_id": 82474726,
                                "album_name": "Dhokha (Feat. Khushalii Kumar)",
                                "artist": "Arijit Singh",
                                "singers": "Arijit Singh",
                                "images": {
                                    "image_50x50": [
                                        "https://images.hungama.com/c/1/968/fa0/82474726/82474726_50x50.jpg"
                                    ],
                                    "image_500x500": [
                                        "https://images.hungama.com/c/1/968/fa0/82474726/82474726_500x500.jpg"
                                    ],
                                    "image_200x200": [
                                        "https://images.hungama.com/c/1/968/fa0/82474726/82474726_200x200.jpg"
                                    ],
                                    "image_800x800": [
                                        "https://images.hungama.com/c/1/968/fa0/82474726/82474726_800x800.jpg"
                                    ],
                                    "image_100x100": [
                                        "https://images.hungama.com/c/1/968/fa0/82474726/82474726_100x100.jpg"
                                    ]
                                },
                                "video_id": 0
                            },
                            {
                                "content_id": 80914914,
                                "title": "Yaad Na Aaye",
                                "album_id": 80914913,
                                "album_name": "Yaad Na Aaye",
                                "artist": "Akull,Manas Kumar,Mellow D,Dhruv Yogi",
                                "singers": "Akull,Manas Kumar,Mellow D,Dhruv Yogi",
                                "images": {
                                    "image_50x50": [
                                        "https://images.hungama.com/c/1/af3/52a/80914913/80914913_50x50.jpg"
                                    ],
                                    "image_800x800": [
                                        "https://images.hungama.com/c/1/af3/52a/80914913/80914913_800x800.jpg"
                                    ],
                                    "image_500x500": [
                                        "https://images.hungama.com/c/1/af3/52a/80914913/80914913_500x500.jpg"
                                    ],
                                    "image_200x200": [
                                        "https://images.hungama.com/c/1/af3/52a/80914913/80914913_200x200.jpg"
                                    ],
                                    "image_100x100": [
                                        "https://images.hungama.com/c/1/af3/52a/80914913/80914913_100x100.jpg"
                                    ]
                                },
                                "video_id": 0
                            },
                            
                            {
                                                "content_id": 80628836,
                                                "title": "Duaa Hai",
                                                "album_id": 80628834,
                                                "album_name": "Duaa Hai",
                                                "artist": "Vineet Singh,Himesh Reshammiya",
                                                "singers": "Vineet Singh,Himesh Reshammiya",
                                                "images": {
                                                    "image_100x100": [
                                                        "https://images.hungama.com/c/1/c99/644/80628834/80628834_100x100.jpg"
                                                    ],
                                                    "image_50x50": [
                                                        "https://images.hungama.com/c/1/c99/644/80628834/80628834_50x50.jpg"
                                                    ],
                                                    "image_500x500": [
                                                        "https://images.hungama.com/c/1/c99/644/80628834/80628834_500x500.jpg"
                                                    ],
                                                    "image_200x200": [
                                                        "https://images.hungama.com/c/1/c99/644/80628834/80628834_200x200.jpg"
                                                    ],
                                                    "image_800x800": [
                                                        "https://images.hungama.com/c/1/c99/644/80628834/80628834_800x800.jpg"
                                                    ]
                                                },
                                                "video_id": 0
                                            },
                                            {
                                                "content_id": 81443663,
                                                "title": "O Aasman Wale",
                                                "album_id": 81443662,
                                                "album_name": "O Aasman Wale",
                                                "artist": "Rochak Kohli,Jubin Nautiyal",
                                                "singers": "Rochak Kohli,Jubin Nautiyal",
                                                "images": {
                                                    "image_50x50": [
                                                        "https://images.hungama.com/c/1/abf/8d9/81443662/81443662_50x50.jpg"
                                                    ],
                                                    "image_100x100": [
                                                        "https://images.hungama.com/c/1/abf/8d9/81443662/81443662_100x100.jpg"
                                                    ],
                                                    "image_200x200": [
                                                        "https://images.hungama.com/c/1/abf/8d9/81443662/81443662_200x200.jpg"
                                                    ],
                                                    "image_800x800": [
                                                        "https://images.hungama.com/c/1/abf/8d9/81443662/81443662_800x800.jpg"
                                                    ],
                                                    "image_500x500": [
                                                        "https://images.hungama.com/c/1/abf/8d9/81443662/81443662_500x500.jpg"
                                                    ]
                                                },
                                                "video_id": 0
                                            },
                                    {
                                                        "content_id": 80965351,
                                                        "title": "Uff",
                                                        "album_id": 80965350,
                                                        "album_name": "Uff",
                                                        "artist": "Shreya Ghoshal",
                                                        "singers": "Shreya Ghoshal",
                                                        "images": {
                                                            "image_800x800": [
                                                                "https://images.hungama.com/c/1/c65/822/80965350/80965350_800x800.jpg"
                                                            ],
                                                            "image_50x50": [
                                                                "https://images.hungama.com/c/1/c65/822/80965350/80965350_50x50.jpg"
                                                            ],
                                                            "image_100x100": [
                                                                "https://images.hungama.com/c/1/c65/822/80965350/80965350_100x100.jpg"
                                                            ],
                                                            "image_500x500": [
                                                                "https://images.hungama.com/c/1/c65/822/80965350/80965350_500x500.jpg"
                                                            ],
                                                            "image_200x200": [
                                                                "https://images.hungama.com/c/1/c65/822/80965350/80965350_200x200.jpg"
                                                            ]
                                                        },
                                                        "video_id": 0
                                                    },
                                                    {
                                                        "content_id": 81464559,
                                                        "title": "Humnava",
                                                        "album_id": 81464558,
                                                        "album_name": "Humnava",
                                                        "artist": "Stebin Ben",
                                                        "singers": "Stebin Ben",
                                                        "images": {
                                                            "image_500x500": [
                                                                "https://images.hungama.com/c/1/861/4a3/81464558/81464558_500x500.jpg"
                                                            ],
                                                            "image_200x200": [
                                                                "https://images.hungama.com/c/1/861/4a3/81464558/81464558_200x200.jpg"
                                                            ],
                                                            "image_800x800": [
                                                                "https://images.hungama.com/c/1/861/4a3/81464558/81464558_800x800.jpg"
                                                            ],
                                                            "image_50x50": [
                                                                "https://images.hungama.com/c/1/861/4a3/81464558/81464558_50x50.jpg"
                                                            ],
                                                            "image_100x100": [
                                                                "https://images.hungama.com/c/1/861/4a3/81464558/81464558_100x100.jpg"
                                                            ]
                                                        },
                                                        "video_id": 0
                                                    },
                                                    {
                                                        "content_id": 81826501,
                                                        "title": "Dil Pe Zakhm",
                                                        "album_id": 81826495,
                                                        "album_name": "Dil Pe Zakhm",
                                                        "artist": "Rochak Kohli,Jubin Nautiyal",
                                                        "singers": "Rochak Kohli,Jubin Nautiyal",
                                                        "images": {
                                                            "image_100x100": [
                                                                "https://images.hungama.com/c/1/bcc/5be/81826495/81826495_100x100.jpg"
                                                            ],
                                                            "image_50x50": [
                                                                "https://images.hungama.com/c/1/bcc/5be/81826495/81826495_50x50.jpg"
                                                            ],
                                                            "image_200x200": [
                                                                "https://images.hungama.com/c/1/bcc/5be/81826495/81826495_200x200.jpg"
                                                            ],
                                                            "image_800x800": [
                                                                "https://images.hungama.com/c/1/bcc/5be/81826495/81826495_800x800.jpg"
                                                            ],
                                                            "image_500x500": [
                                                                "https://images.hungama.com/c/1/bcc/5be/81826495/81826495_500x500.jpg"
                                                            ]
                                                        },
                                                        "video_id": 0
                                                    },
                                                    {
                                                        "content_id": 81659836,
                                                        "title": "Darare Dil",
                                                        "album_id": 81659835,
                                                        "album_name": "Darare Dil",
                                                        "artist": "Mame Khan",
                                                        "singers": "Mame Khan",
                                                        "images": {
                                                            "image_800x800": [
                                                                "https://images.hungama.com/c/1/925/ac4/81659835/81659835_800x800.jpg"
                                                            ],
                                                            "image_50x50": [
                                                                "https://images.hungama.com/c/1/925/ac4/81659835/81659835_50x50.jpg"
                                                            ],
                                                            "image_200x200": [
                                                                "https://images.hungama.com/c/1/925/ac4/81659835/81659835_200x200.jpg"
                                                            ],
                                                            "image_500x500": [
                                                                "https://images.hungama.com/c/1/925/ac4/81659835/81659835_500x500.jpg",
                                                                "https://images.hungama.com/c/1/925/ac4/81659835/81659835_500x500.jpg"
                                                            ],
                                                            "image_100x100": [
                                                                "https://images.hungama.com/c/1/925/ac4/81659835/81659835_100x100.jpg"
                                                            ]
                                                        },
                                                        "video_id": 0
                                                    },
                                            {
                                                                "content_id": 81307801,
                                                                "title": "Tere Dard Mein",
                                                                "album_id": 81307751,
                                                                "album_name": "Tere Dard Mein",
                                                                "artist": "Altamash Faridi",
                                                                "singers": "Altamash Faridi",
                                                                "images": {
                                                                    "image_50x50": [
                                                                        "https://images.hungama.com/c/1/b52/270/81307751/81307751_50x50.jpg"
                                                                    ],
                                                                    "image_200x200": [
                                                                        "https://images.hungama.com/c/1/b52/270/81307751/81307751_200x200.jpg"
                                                                    ],
                                                                    "image_800x800": [
                                                                        "https://images.hungama.com/c/1/b52/270/81307751/81307751_800x800.jpg"
                                                                    ],
                                                                    "image_100x100": [
                                                                        "https://images.hungama.com/c/1/b52/270/81307751/81307751_100x100.jpg"
                                                                    ],
                                                                    "image_500x500": [
                                                                        "https://images.hungama.com/c/1/b52/270/81307751/81307751_500x500.jpg"
                                                                    ]
                                                                },
                                                                "video_id": 0
                                                            },
                                                            {
                                                                "content_id": 81786486,
                                                                "title": "Numaish",
                                                                "album_id": 81786485,
                                                                "album_name": "Numaish",
                                                                "artist": "Altamash Faridi",
                                                                "singers": "Altamash Faridi",
                                                                "images": {
                                                                    "image_800x800": [
                                                                        "https://images.hungama.com/c/1/b15/cfb/81786485/81786485_800x800.jpg"
                                                                    ],
                                                                    "image_50x50": [
                                                                        "https://images.hungama.com/c/1/b15/cfb/81786485/81786485_50x50.jpg"
                                                                    ],
                                                                    "image_200x200": [
                                                                        "https://images.hungama.com/c/1/b15/cfb/81786485/81786485_200x200.jpg"
                                                                    ],
                                                                    "image_500x500": [
                                                                        "https://images.hungama.com/c/1/b15/cfb/81786485/81786485_500x500.jpg"
                                                                    ],
                                                                    "image_100x100": [
                                                                        "https://images.hungama.com/c/1/b15/cfb/81786485/81786485_100x100.jpg"
                                                                    ]
                                                                },
                                                                "video_id": 0
                                                            },
                                                            {
                                                                "content_id": 81286642,
                                                                "title": "Meri Gali",
                                                                "album_id": 81286640,
                                                                "album_name": "Meri Gali",
                                                                "artist": "Yunan,Ysoblue",
                                                                "singers": "Yunan,Ysoblue",
                                                                "images": {
                                                                    "image_200x200": [
                                                                        "https://images.hungama.com/c/1/3d8/072/81286640/81286640_200x200.jpg"
                                                                    ],
                                                                    "image_500x500": [
                                                                        "https://images.hungama.com/c/1/3d8/072/81286640/81286640_500x500.jpg"
                                                                    ],
                                                                    "image_800x800": [
                                                                        "https://images.hungama.com/c/1/3d8/072/81286640/81286640_800x800.jpg"
                                                                    ],
                                                                    "image_50x50": [
                                                                        "https://images.hungama.com/c/1/3d8/072/81286640/81286640_50x50.jpg"
                                                                    ],
                                                                    "image_100x100": [
                                                                        "https://images.hungama.com/c/1/3d8/072/81286640/81286640_100x100.jpg"
                                                                    ]
                                                                },
                                                                "video_id": 0
                                                            },
                                                            {
                                                                "content_id": 81662485,
                                                                "title": "Adhura",
                                                                "album_id": 81662484,
                                                                "album_name": "Adhura",
                                                                "artist": "DAKU",
                                                                "singers": "DAKU",
                                                                "images": {
                                                                    "image_200x200": [
                                                                        "https://images.hungama.com/c/1/b96/ffc/81662484/81662484_200x200.jpg"
                                                                    ],
                                                                    "image_500x500": [
                                                                        "https://images.hungama.com/c/1/b96/ffc/81662484/81662484_500x500.jpg"
                                                                    ],
                                                                    "image_50x50": [
                                                                        "https://images.hungama.com/c/1/b96/ffc/81662484/81662484_50x50.jpg"
                                                                    ],
                                                                    "image_800x800": [
                                                                        "https://images.hungama.com/c/1/b96/ffc/81662484/81662484_800x800.jpg"
                                                                    ],
                                                                    "image_100x100": [
                                                                        "https://images.hungama.com/c/1/b96/ffc/81662484/81662484_100x100.jpg"
                                                                    ]
                                                                },
                                                                "video_id": 0
                                                            },
                                                    {
                                                                        "content_id": 78570535,
                                                                        "title": "Hoye Ishq Na (From Tadap)",
                                                                        "album_id": 78570534,
                                                                        "album_name": "Hoye Ishq Na (From Tadap)",
                                                                        "artist": "Pritam Chakraborty,B Praak,Dino James",
                                                                        "singers": "Pritam Chakraborty,B Praak,Dino James",
                                                                        "images": {
                                                                            "image_800x800": [
                                                                                "https://images.hungama.com/c/1/213/9b8/78570534/78570534_800x800.jpg"
                                                                            ],
                                                                            "image_50x50": [
                                                                                "https://images.hungama.com/c/1/213/9b8/78570534/78570534_50x50.jpg"
                                                                            ],
                                                                            "image_100x100": [
                                                                                "https://images.hungama.com/c/1/213/9b8/78570534/78570534_100x100.jpg"
                                                                            ],
                                                                            "image_200x200": [
                                                                                "https://images.hungama.com/c/1/213/9b8/78570534/78570534_200x200.jpg"
                                                                            ],
                                                                            "image_500x500": [
                                                                                "https://images.hungama.com/c/1/213/9b8/78570534/78570534_500x500.jpg"
                                                                            ]
                                                                        },
                                                                        "video_id": 0
                                                                    },
                            {
                                                "content_id": 78319908,
                                                "title": "Kalle Kalle (From Chandigarh Kare Aashiqui)",
                                                "album_id": 78319907,
                                                "album_name": "Kalle Kalle (From Chandigarh Kare Aashiqui)",
                                                "artist": "Priya Saraiya",
                                                "singers": "Priya Saraiya",
                                                "images": {
                                                    "image_100x100": [
                                                        "https://images.hungama.com/c/1/ba7/15d/78319907/78319907_100x100.jpg"
                                                    ],
                                                    "image_50x50": [
                                                        "https://images.hungama.com/c/1/ba7/15d/78319907/78319907_50x50.jpg"
                                                    ],
                                                    "image_500x500": [
                                                        "https://images.hungama.com/c/1/ba7/15d/78319907/78319907_500x500.jpg"
                                                    ],
                                                    "image_200x200": [
                                                        "https://images.hungama.com/c/1/ba7/15d/78319907/78319907_200x200.jpg"
                                                    ],
                                                    "image_800x800": [
                                                        "https://images.hungama.com/c/1/ba7/15d/78319907/78319907_800x800.jpg"
                                                    ]
                                                },
                                                "video_id": 0
                                            },
                                            {
                                                "content_id": 78241744,
                                                "title": "Aankh Hai Bhari Bhari Aur Tum 2.0",
                                                "album_id": 78241743,
                                                "album_name": "Aankh Hai Bhari Bhari Aur Tum 2.0",
                                                "artist": "Rahul Vaidya",
                                                "singers": "Rahul Vaidya",
                                                "images": {
                                                    "image_500x500": [
                                                        "https://images.hungama.com/c/1/f8f/df5/78241743/78241743_500x500.jpg"
                                                    ],
                                                    "image_100x100": [
                                                        "https://images.hungama.com/c/1/f8f/df5/78241743/78241743_100x100.jpg"
                                                    ],
                                                    "image_50x50": [
                                                        "https://images.hungama.com/c/1/f8f/df5/78241743/78241743_50x50.jpg"
                                                    ],
                                                    "image_800x800": [
                                                        "https://images.hungama.com/c/1/f8f/df5/78241743/78241743_800x800.jpg"
                                                    ],
                                                    "image_200x200": [
                                                        "https://images.hungama.com/c/1/f8f/df5/78241743/78241743_200x200.jpg"
                                                    ]
                                                },
                                                "video_id": 0
                                            },
                                            {
                                                "content_id": 76651111,
                                                "title": "Aise Na Chhoro",
                                                "album_id": 76651093,
                                                "album_name": "Aise Na Chhoro",
                                                "artist": "Guru Randhawa",
                                                "singers": "Guru Randhawa",
                                                "images": {
                                                    "image_500x500": [
                                                        "https://images.hungama.com/c/1/f14/bd4/76651093/76651093_500x500.jpg"
                                                    ],
                                                    "image_50x50": [
                                                        "https://images.hungama.com/c/1/f14/bd4/76651093/76651093_50x50.jpg"
                                                    ],
                                                    "image_800x800": [
                                                        "https://images.hungama.com/c/1/f14/bd4/76651093/76651093_800x800.jpg"
                                                    ],
                                                    "image_100x100": [
                                                        "https://images.hungama.com/c/1/f14/bd4/76651093/76651093_100x100.jpg"
                                                    ],
                                                    "image_200x200": [
                                                        "https://images.hungama.com/c/1/f14/bd4/76651093/76651093_200x200.jpg"
                                                    ]
                                                },
                                                "video_id": 0
                                            },
                                            {
                                                "content_id": 76553160,
                                                "title": "Duniya Chhor Doon",
                                                "album_id": 76553157,
                                                "album_name": "Duniya Chhor Doon",
                                                "artist": "Darshan Raval",
                                                "singers": "Darshan Raval",
                                                "images": {
                                                    "image_50x50": [
                                                        "https://images.hungama.com/c/1/78b/7c9/76553157/76553157_50x50.jpg"
                                                    ],
                                                    "image_800x800": [
                                                        "https://images.hungama.com/c/1/78b/7c9/76553157/76553157_800x800.jpg"
                                                    ],
                                                    "image_500x500": [
                                                        "https://images.hungama.com/c/1/78b/7c9/76553157/76553157_500x500.jpg"
                                                    ],
                                                    "image_100x100": [
                                                        "https://images.hungama.com/c/1/78b/7c9/76553157/76553157_100x100.jpg"
                                                    ],
                                                    "image_200x200": [
                                                        "https://images.hungama.com/c/1/78b/7c9/76553157/76553157_200x200.jpg"
                                                    ]
                                                },
                                                "video_id": 0
                                            },
                                                {
                                                "content_id": 76206112,
                                                "title": "Jodaa",
                                                "album_id": 76206111,
                                                "album_name": "Jodaa",
                                                "artist": "Afsana Khan,Jatinder Shah,Maninder Kailey",
                                                "singers": "Afsana Khan,Jatinder Shah,Maninder Kailey",
                                                "images": {
                                                    "image_200x200": [
                                                        "https://images.hungama.com/c/1/b83/b68/76206111/76206111_200x200.jpg"
                                                    ],
                                                    "image_100x100": [
                                                        "https://images.hungama.com/c/1/b83/b68/76206111/76206111_100x100.jpg"
                                                    ],
                                                    "image_500x500": [
                                                        "https://images.hungama.com/c/1/b83/b68/76206111/76206111_500x500.jpg"
                                                    ],
                                                    "image_800x800": [
                                                        "https://images.hungama.com/c/1/b83/b68/76206111/76206111_800x800.jpg"
                                                    ],
                                                    "image_50x50": [
                                                        "https://images.hungama.com/c/1/b83/b68/76206111/76206111_50x50.jpg"
                                                    ]
                                                },
                                                "video_id": 0
                                            },
                                            {
                                                "content_id": 79094621,
                                                "title": "CHALE BHI JAO",
                                                "album_id": 79094618,
                                                "album_name": "CHALE BHI JAO",
                                                "artist": "Vishal Mishra,Kaushal Kishore",
                                                "singers": "Vishal Mishra,Kaushal Kishore",
                                                "images": {
                                                    "image_100x100": [
                                                        "https://images.hungama.com/c/1/e24/cec/79094618/79094618_100x100.jpg"
                                                    ],
                                                    "image_800x800": [
                                                        "https://images.hungama.com/c/1/e24/cec/79094618/79094618_800x800.jpg"
                                                    ],
                                                    "image_50x50": [
                                                        "https://images.hungama.com/c/1/e24/cec/79094618/79094618_50x50.jpg"
                                                    ],
                                                    "image_500x500": [
                                                        "https://images.hungama.com/c/1/e24/cec/79094618/79094618_500x500.jpg"
                                                    ],
                                                    "image_200x200": [
                                                        "https://images.hungama.com/c/1/e24/cec/79094618/79094618_200x200.jpg"
                                                    ]
                                                },
                                                "video_id": 0
                                            },
                                            {
                                                "content_id": 74465098,
                                                "title": "Main Bhi Barbaad",
                                                "album_id": 74465093,
                                                "album_name": "Main Bhi Barbaad",
                                                "artist": "Yasser Desai",
                                                "singers": "Yasser Desai",
                                                "images": {
                                                    "image_800x800": [
                                                        "https://images.hungama.com/c/1/14a/476/74465093/74465093_800x800.jpg"
                                                    ],
                                                    "image_100x100": [
                                                        "https://images.hungama.com/c/1/14a/476/74465093/74465093_100x100.jpg"
                                                    ],
                                                    "image_500x500": [
                                                        "https://images.hungama.com/c/1/14a/476/74465093/74465093_500x500.jpg"
                                                    ],
                                                    "image_200x200": [
                                                        "https://images.hungama.com/c/1/14a/476/74465093/74465093_200x200.jpg"
                                                    ],
                                                    "image_50x50": [
                                                        "https://images.hungama.com/c/1/14a/476/74465093/74465093_50x50.jpg"
                                                    ]
                                                },
                                                "video_id": 0
                                            },
                                            {
                                                "content_id": 75318654,
                                                "title": "Mehendi Lagi",
                                                "album_id": 75318652,
                                                "album_name": "Mehendi Lagi",
                                                "artist": "Stebin Ben,Nilesh Ahuja",
                                                "singers": "Stebin Ben,Nilesh Ahuja",
                                                "images": {
                                                    "image_50x50": [
                                                        "https://images.hungama.com/c/1/b5d/459/75318652/75318652_50x50.jpg"
                                                    ],
                                                    "image_100x100": [
                                                        "https://images.hungama.com/c/1/b5d/459/75318652/75318652_100x100.jpg"
                                                    ],
                                                    "image_200x200": [
                                                        "https://images.hungama.com/c/1/b5d/459/75318652/75318652_200x200.jpg"
                                                    ],
                                                    "image_500x500": [
                                                        "https://images.hungama.com/c/1/b5d/459/75318652/75318652_500x500.jpg"
                                                    ],
                                                    "image_800x800": [
                                                        "https://images.hungama.com/c/1/b5d/459/75318652/75318652_800x800.jpg"
                                                    ]
                                                },
                                                "video_id": 0
                                            },
                                            {
                                                "content_id": 74992007,
                                                "title": "Barsaat",
                                                "album_id": 74991987,
                                                "album_name": "Barsaat",
                                                "artist": "Armaan Malik",
                                                "singers": "Armaan Malik",
                                                "images": {
                                                    "image_200x200": [
                                                        "https://images.hungama.com/c/1/1fb/239/74991987/74991987_200x200.jpg"
                                                    ],
                                                    "image_800x800": [
                                                        "https://images.hungama.com/c/1/1fb/239/74991987/74991987_800x800.jpg"
                                                    ],
                                                    "image_50x50": [
                                                        "https://images.hungama.com/c/1/1fb/239/74991987/74991987_50x50.jpg"
                                                    ],
                                                    "image_100x100": [
                                                        "https://images.hungama.com/c/1/1fb/239/74991987/74991987_100x100.jpg"
                                                    ],
                                                    "image_500x500": [
                                                        "https://images.hungama.com/c/1/1fb/239/74991987/74991987_500x500.jpg"
                                                    ]
                                                },
                                                "video_id": 0
                                            },
                                            {
                                                "content_id": 73320224,
                                                "title": "Dil Kisi Se",
                                                "album_id": 73320223,
                                                "album_name": "Dil Kisi Se",
                                                "artist": "Arjun Kanungo",
                                                "singers": "Arjun Kanungo",
                                                "images": {
                                                    "image_50x50": [
                                                        "https://images.hungama.com/c/1/59d/b37/73320223/73320223_50x50.jpg"
                                                    ],
                                                    "image_800x800": [
                                                        "https://images.hungama.com/c/1/59d/b37/73320223/73320223_800x800.jpg"
                                                    ],
                                                    "image_200x200": [
                                                        "https://images.hungama.com/c/1/59d/b37/73320223/73320223_200x200.jpg"
                                                    ],
                                                    "image_500x500": [
                                                        "https://images.hungama.com/c/1/59d/b37/73320223/73320223_500x500.jpg"
                                                    ],
                                                    "image_100x100": [
                                                        "https://images.hungama.com/c/1/59d/b37/73320223/73320223_100x100.jpg"
                                                    ]
                                                },
                                                "video_id": 0
                                            },
                                            {
                                                "content_id": 74742567,
                                                "title": "Akhiyan Udeek Diyan (From Shiddat)",
                                                "album_id": 74742564,
                                                "album_name": "Akhiyan Udeek Diyan (From Shiddat)",
                                                "artist": "Master Saleem",
                                                "singers": "Master Saleem",
                                                "images": {
                                                    "image_200x200": [
                                                        "https://images.hungama.com/c/1/ad6/eec/74742564/74742564_200x200.jpg"
                                                    ],
                                                    "image_800x800": [
                                                        "https://images.hungama.com/c/1/ad6/eec/74742564/74742564_800x800.jpg"
                                                    ],
                                                    "image_50x50": [
                                                        "https://images.hungama.com/c/1/ad6/eec/74742564/74742564_50x50.jpg"
                                                    ],
                                                    "image_100x100": [
                                                        "https://images.hungama.com/c/1/ad6/eec/74742564/74742564_100x100.jpg"
                                                    ],
                                                    "image_500x500": [
                                                        "https://images.hungama.com/c/1/ad6/eec/74742564/74742564_500x500.jpg"
                                                    ]
                                                },
                                                "video_id": 0
                                            },
                                            {
                                                "content_id": 73160793,
                                                "title": "Ishq Mein",
                                                "album_id": 73160789,
                                                "album_name": "Ishq Mein",
                                                "artist": "Sachet Tandon",
                                                "singers": "Sachet Tandon",
                                                "images": {
                                                    "image_800x800": [
                                                        "https://images.hungama.com/c/1/554/b91/73160789/73160789_800x800.jpg"
                                                    ],
                                                    "image_100x100": [
                                                        "https://images.hungama.com/c/1/554/b91/73160789/73160789_100x100.jpg"
                                                    ],
                                                    "image_200x200": [
                                                        "https://images.hungama.com/c/1/554/b91/73160789/73160789_200x200.jpg"
                                                    ],
                                                    "image_50x50": [
                                                        "https://images.hungama.com/c/1/554/b91/73160789/73160789_50x50.jpg"
                                                    ],
                                                    "image_500x500": [
                                                        "https://images.hungama.com/c/1/554/b91/73160789/73160789_500x500.jpg"
                                                    ]
                                                },
                                                "video_id": 0
                                            },
                                            {
                                                "content_id": 70441563,
                                                "title": "Mujhko Mana Lena",
                                                "album_id": 70441562,
                                                "album_name": "Mujhko Mana Lena",
                                                "artist": "Alka Yagnik,Ashok Ojha",
                                                "singers": "Alka Yagnik,Ashok Ojha",
                                                "images": {
                                                    "image_200x200": [
                                                        "https://images.hungama.com/c/1/1b1/750/70441562/70441562_200x200.jpg"
                                                    ],
                                                    "image_800x800": [
                                                        "https://images.hungama.com/c/1/1b1/750/70441562/70441562_800x800.jpg"
                                                    ],
                                                    "image_50x50": [
                                                        "https://images.hungama.com/c/1/1b1/750/70441562/70441562_50x50.jpg"
                                                    ],
                                                    "image_500x500": [
                                                        "https://images.hungama.com/c/1/1b1/750/70441562/70441562_500x500.jpg"
                                                    ],
                                                    "image_100x100": [
                                                        "https://images.hungama.com/c/1/1b1/750/70441562/70441562_100x100.jpg"
                                                    ]
                                                },
                                                "video_id": 0
                                            },
                                            {
                                                "content_id": 69191230,
                                                "title": "Pyarr Tumse",
                                                "album_id": 69191229,
                                                "album_name": "Pyarr Tumse",
                                                "artist": "Salman Ali,Himesh Reshammiya",
                                                "singers": "Salman Ali,Himesh Reshammiya",
                                                "images": {
                                                    "image_200x200": [
                                                        "https://images.hungama.com/c/1/775/a8f/69191229/69191229_200x200.jpg"
                                                    ],
                                                    "image_100x100": [
                                                        "https://images.hungama.com/c/1/775/a8f/69191229/69191229_100x100.jpg"
                                                    ],
                                                    "image_500x500": [
                                                        "https://images.hungama.com/c/1/775/a8f/69191229/69191229_500x500.jpg"
                                                    ],
                                                    "image_800x800": [
                                                        "https://images.hungama.com/c/1/775/a8f/69191229/69191229_800x800.jpg"
                                                    ],
                                                    "image_50x50": [
                                                        "https://images.hungama.com/c/1/775/a8f/69191229/69191229_50x50.jpg"
                                                    ]
                                                },
                                                "video_id": 0
                                            },
                                            {
                                                "content_id": 73407887,
                                                "title": "Tere Mere Darmiyan",
                                                "album_id": 73406937,
                                                "album_name": "Tere Mere Darmiyan",
                                                "artist": "Khesari Lal Yadav",
                                                "singers": "Khesari Lal Yadav",
                                                "images": {
                                                    "image_50x50": [
                                                        "https://images.hungama.com/c/1/984/1ca/73406937/73406937_50x50.jpg"
                                                    ],
                                                    "image_100x100": [
                                                        "https://images.hungama.com/c/1/984/1ca/73406937/73406937_100x100.jpg"
                                                    ],
                                                    "image_800x800": [
                                                        "https://images.hungama.com/c/1/984/1ca/73406937/73406937_800x800.jpg"
                                                    ],
                                                    "image_500x500": [
                                                        "https://images.hungama.com/c/1/984/1ca/73406937/73406937_500x500.jpg"
                                                    ],
                                                    "image_200x200": [
                                                        "https://images.hungama.com/c/1/984/1ca/73406937/73406937_200x200.jpg"
                                                    ]
                                                },
                                                "video_id": 0
                                            },
                                            {
                                                "content_id": 71650848,
                                                "title": "Bewafa Tera Muskurana",
                                                "album_id": 71650847,
                                                "album_name": "Bewafa Tera Muskurana",
                                                "artist": "Jubin Nautiyal",
                                                "singers": "Jubin Nautiyal",
                                                "images": {
                                                    "image_200x200": [
                                                        "https://images.hungama.com/c/1/16e/e78/71650847/71650847_200x200.jpg"
                                                    ],
                                                    "image_50x50": [
                                                        "https://images.hungama.com/c/1/16e/e78/71650847/71650847_50x50.jpg"
                                                    ],
                                                    "image_800x800": [
                                                        "https://images.hungama.com/c/1/16e/e78/71650847/71650847_800x800.jpg"
                                                    ],
                                                    "image_100x100": [
                                                        "https://images.hungama.com/c/1/16e/e78/71650847/71650847_100x100.jpg"
                                                    ],
                                                    "image_500x500": [
                                                        "https://images.hungama.com/c/1/16e/e78/71650847/71650847_500x500.jpg"
                                                    ]
                                                },
                                                "video_id": 0
                                            },
                                            {
                                                "content_id": 53887703,
                                                "title": "Sach Keh Raha Hai",
                                                "album_id": 53887702,
                                                "album_name": "Sach Keh Raha Hai",
                                                "artist": "B Praak",
                                                "singers": "B Praak",
                                                "images": {
                                                    "image_800x800": [
                                                        "https://images.hungama.com/c/1/7b2/904/53887702/53887702_800x800.jpg"
                                                    ],
                                                    "image_500x500": [
                                                        "https://images.hungama.com/c/1/7b2/904/53887702/53887702_500x500.jpg"
                                                    ],
                                                    "image_200x200": [
                                                        "https://images.hungama.com/c/1/7b2/904/53887702/53887702_200x200.jpg"
                                                    ],
                                                    "image_100x100": [
                                                        "https://images.hungama.com/c/1/7b2/904/53887702/53887702_100x100.jpg"
                                                    ],
                                                    "image_50x50": [
                                                        "https://images.hungama.com/c/1/7b2/904/53887702/53887702_50x50.jpg"
                                                    ]
                                                },
                                                "video_id": 0
                                            },
                                            {
                                                "content_id": 69313416,
                                                "title": "Terre Pyaar Mein",
                                                "album_id": 69313415,
                                                "album_name": "Terre Pyaar Mein",
                                                "artist": "Himesh Reshammiya",
                                                "singers": "Himesh Reshammiya",
                                                "images": {
                                                    "image_50x50": [
                                                        "https://images.hungama.com/c/1/a83/9b1/69313415/69313415_50x50.jpg"
                                                    ],
                                                    "image_800x800": [
                                                        "https://images.hungama.com/c/1/a83/9b1/69313415/69313415_800x800.jpg"
                                                    ],
                                                    "image_100x100": [
                                                        "https://images.hungama.com/c/1/a83/9b1/69313415/69313415_100x100.jpg"
                                                    ],
                                                    "image_200x200": [
                                                        "https://images.hungama.com/c/1/a83/9b1/69313415/69313415_200x200.jpg"
                                                    ],
                                                    "image_500x500": [
                                                        "https://images.hungama.com/c/1/a83/9b1/69313415/69313415_500x500.jpg"
                                                    ]
                                                },
                                                "video_id": 0
                                            },
                                            {
                                                "content_id": 70438510,
                                                "title": "Dil Lauta Do",
                                                "album_id": 70438509,
                                                "album_name": "Dil Lauta Do",
                                                "artist": "Jubin Nautiyal,Payal Dev",
                                                "singers": "Jubin Nautiyal,Payal Dev",
                                                "images": {
                                                    "image_800x800": [
                                                        "https://images.hungama.com/c/1/d2b/b92/70438509/70438509_800x800.jpg"
                                                    ],
                                                    "image_500x500": [
                                                        "https://images.hungama.com/c/1/d2b/b92/70438509/70438509_500x500.jpg"
                                                    ],
                                                    "image_200x200": [
                                                        "https://images.hungama.com/c/1/d2b/b92/70438509/70438509_200x200.jpg"
                                                    ],
                                                    "image_50x50": [
                                                        "https://images.hungama.com/c/1/d2b/b92/70438509/70438509_50x50.jpg"
                                                    ],
                                                    "image_100x100": [
                                                        "https://images.hungama.com/c/1/d2b/b92/70438509/70438509_100x100.jpg"
                                                    ]
                                                },
                                                "video_id": 0
                                            },
                                            {
                                                                "content_id": 68698593,
                                                                "title": "Filhaal2 Mohabbat",
                                                                "album_id": 68698587,
                                                                "album_name": "Filhaal2 Mohabbat",
                                                                "artist": "B Praak,Akshay Kumar,Nupur Sanon,Ammy Virk,Jaani",
                                                                "singers": "B Praak,Akshay Kumar,Nupur Sanon,Ammy Virk,Jaani",
                                                                "images": {
                                                                    "image_50x50": [
                                                                        "https://images.hungama.com/c/1/c42/f74/68698587/68698587_50x50.jpg"
                                                                    ],
                                                                    "image_500x500": [
                                                                        "https://images.hungama.com/c/1/c42/f74/68698587/68698587_500x500.jpg"
                                                                    ],
                                                                    "image_100x100": [
                                                                        "https://images.hungama.com/c/1/c42/f74/68698587/68698587_100x100.jpg"
                                                                    ],
                                                                    "image_800x800": [
                                                                        "https://images.hungama.com/c/1/c42/f74/68698587/68698587_800x800.jpg"
                                                                    ],
                                                                    "image_200x200": [
                                                                        "https://images.hungama.com/c/1/c42/f74/68698587/68698587_200x200.jpg"
                                                                    ]
                                                                },
                                                                "video_id": 0
                                                            },
                                                            {
                                                                "content_id": 72293338,
                                                                "title": "Meri Mohabbat",
                                                                "album_id": 72293337,
                                                                "album_name": "Meri Mohabbat",
                                                                "artist": "Saaj Bhatt,Amjad Nadeem Aamir",
                                                                "singers": "Saaj Bhatt,Amjad Nadeem Aamir",
                                                                "images": {
                                                                    "image_50x50": [
                                                                        "https://images.hungama.com/c/1/02c/378/72293337/72293337_50x50.jpg"
                                                                    ],
                                                                    "image_100x100": [
                                                                        "https://images.hungama.com/c/1/02c/378/72293337/72293337_100x100.jpg"
                                                                    ],
                                                                    "image_200x200": [
                                                                        "https://images.hungama.com/c/1/02c/378/72293337/72293337_200x200.jpg"
                                                                    ],
                                                                    "image_500x500": [
                                                                        "https://images.hungama.com/c/1/02c/378/72293337/72293337_500x500.jpg"
                                                                    ],
                                                                    "image_800x800": [
                                                                        "https://images.hungama.com/c/1/02c/378/72293337/72293337_800x800.jpg"
                                                                    ]
                                                                },
                                                                "video_id": 0
                                                            },
                                                            {
                                                                "content_id": 72414444,
                                                                "title": "Baarish",
                                                                "album_id": 72410957,
                                                                "album_name": "Baarish",
                                                                "artist": "Altamash Faridi",
                                                                "singers": "Altamash Faridi",
                                                                "images": {
                                                                    "image_100x100": [
                                                                        "https://images.hungama.com/c/1/1ca/324/72410957/72410957_100x100.jpg"
                                                                    ],
                                                                    "image_200x200": [
                                                                        "https://images.hungama.com/c/1/1ca/324/72410957/72410957_200x200.jpg"
                                                                    ],
                                                                    "image_500x500": [
                                                                        "https://images.hungama.com/c/1/1ca/324/72410957/72410957_500x500.jpg"
                                                                    ],
                                                                    "image_50x50": [
                                                                        "https://images.hungama.com/c/1/1ca/324/72410957/72410957_50x50.jpg"
                                                                    ],
                                                                    "image_800x800": [
                                                                        "https://images.hungama.com/c/1/1ca/324/72410957/72410957_800x800.jpg"
                                                                    ]
                                                                },
                                                                "video_id": 0
                                                            },
                                                            {
                                                                "content_id": 71375462,
                                                                "title": "Saath Kya Nibhaoge",
                                                                "album_id": 71375461,
                                                                "album_name": "Saath Kya Nibhaoge",
                                                                "artist": "Tony Kakkar,Altaaf Raja",
                                                                "singers": "Tony Kakkar,Altaaf Raja",
                                                                "images": {
                                                                    "image_800x800": [
                                                                        "https://images.hungama.com/c/1/fb8/3d4/71375461/71375461_800x800.jpg"
                                                                    ],
                                                                    "image_100x100": [
                                                                        "https://images.hungama.com/c/1/fb8/3d4/71375461/71375461_100x100.jpg"
                                                                    ],
                                                                    "image_500x500": [
                                                                        "https://images.hungama.com/c/1/fb8/3d4/71375461/71375461_500x500.jpg"
                                                                    ],
                                                                    "image_200x200": [
                                                                        "https://images.hungama.com/c/1/fb8/3d4/71375461/71375461_200x200.jpg"
                                                                    ],
                                                                    "image_50x50": [
                                                                        "https://images.hungama.com/c/1/fb8/3d4/71375461/71375461_50x50.jpg"
                                                                    ]
                                                                },
                                                                "video_id": 0
                                                            },
                                                            {
                                                                "content_id": 68303468,
                                                                "title": "Yaaron Rab Se Dua Karo",
                                                                "album_id": 68303467,
                                                                "album_name": "Yaaron Rab Se Dua Karo",
                                                                "artist": "Akhil Sachdeva",
                                                                "singers": "Akhil Sachdeva",
                                                                "images": {
                                                                    "image_50x50": [
                                                                        "https://images.hungama.com/c/1/183/d0f/68303467/68303467_50x50.jpg"
                                                                    ],
                                                                    "image_500x500": [
                                                                        "https://images.hungama.com/c/1/183/d0f/68303467/68303467_500x500.jpg"
                                                                    ],
                                                                    "image_100x100": [
                                                                        "https://images.hungama.com/c/1/183/d0f/68303467/68303467_100x100.jpg"
                                                                    ],
                                                                    "image_200x200": [
                                                                        "https://images.hungama.com/c/1/183/d0f/68303467/68303467_200x200.jpg"
                                                                    ],
                                                                    "image_800x800": [
                                                                        "https://images.hungama.com/c/1/183/d0f/68303467/68303467_800x800.jpg"
                                                                    ]
                                                                },
                                                                "video_id": 0
                                                            },
                                                            {
                                                                "content_id": 66869523,
                                                                "title": "Bedardi Se Pyaar Ka",
                                                                "album_id": 66869522,
                                                                "album_name": "Bedardi Se Pyaar Ka",
                                                                "artist": "Jubin Nautiyal",
                                                                "singers": "Jubin Nautiyal",
                                                                "images": {
                                                                    "image_50x50": [
                                                                        "https://images.hungama.com/c/1/5a8/572/66869522/66869522_50x50.jpg"
                                                                    ],
                                                                    "image_100x100": [
                                                                        "https://images.hungama.com/c/1/5a8/572/66869522/66869522_100x100.jpg"
                                                                    ],
                                                                    "image_200x200": [
                                                                        "https://images.hungama.com/c/1/5a8/572/66869522/66869522_200x200.jpg"
                                                                    ],
                                                                    "image_500x500": [
                                                                        "https://images.hungama.com/c/1/5a8/572/66869522/66869522_500x500.jpg"
                                                                    ],
                                                                    "image_800x800": [
                                                                        "https://images.hungama.com/c/1/5a8/572/66869522/66869522_800x800.jpg"
                                                                    ]
                                                                },
                                                                "video_id": 0
                                                            },
                                                            {
                                                                                "content_id": 68462240,
                                                                                "title": "Lakeeran (From Haseen Dillruba)",
                                                                                "album_id": 68462239,
                                                                                "album_name": "Lakeeran (From Haseen Dillruba)",
                                                                                "artist": "Asees Kaur,Devenderpal Singh",
                                                                                "singers": "Asees Kaur,Devenderpal Singh",
                                                                                "images": {
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/876/e02/68462239/68462239_200x200.jpg"
                                                                                    ],
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/876/e02/68462239/68462239_100x100.jpg"
                                                                                    ],
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/876/e02/68462239/68462239_50x50.jpg"
                                                                                    ],
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/876/e02/68462239/68462239_800x800.jpg"
                                                                                    ],
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/876/e02/68462239/68462239_500x500.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 69278673,
                                                                                "title": "Dagaa",
                                                                                "album_id": 69278672,
                                                                                "album_name": "Dagaa",
                                                                                "artist": "Mohd Danish,Himesh Reshammiya",
                                                                                "singers": "Mohd Danish,Himesh Reshammiya",
                                                                                "images": {
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/e78/2b9/69278672/69278672_800x800.jpg"
                                                                                    ],
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/e78/2b9/69278672/69278672_50x50.jpg"
                                                                                    ],
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/e78/2b9/69278672/69278672_100x100.jpg"
                                                                                    ],
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/e78/2b9/69278672/69278672_500x500.jpg"
                                                                                    ],
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/e78/2b9/69278672/69278672_200x200.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 67481516,
                                                                                "title": "Tere Bagairr",
                                                                                "album_id": 67481514,
                                                                                "album_name": "Tere Bagairr",
                                                                                "artist": "Pawandeep Rajan,Arunita Kanjilal",
                                                                                "singers": "Pawandeep Rajan,Arunita Kanjilal",
                                                                                "images": {
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/a4c/7c9/67481514/67481514_500x500.jpg"
                                                                                    ],
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/a4c/7c9/67481514/67481514_800x800.jpg"
                                                                                    ],
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/a4c/7c9/67481514/67481514_100x100.jpg"
                                                                                    ],
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/a4c/7c9/67481514/67481514_200x200.jpg"
                                                                                    ],
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/a4c/7c9/67481514/67481514_50x50.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 67814643,
                                                                                "title": "Rihaee",
                                                                                "album_id": 67814640,
                                                                                "album_name": "Rihaee",
                                                                                "artist": "Yasser Desai",
                                                                                "singers": "Yasser Desai",
                                                                                "images": {
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/6cc/01e/67814640/67814640_200x200.jpg"
                                                                                    ],
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/6cc/01e/67814640/67814640_800x800.jpg"
                                                                                    ],
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/6cc/01e/67814640/67814640_500x500.jpg"
                                                                                    ],
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/6cc/01e/67814640/67814640_50x50.jpg"
                                                                                    ],
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/6cc/01e/67814640/67814640_100x100.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 66538105,
                                                                                "title": "Bedard",
                                                                                "album_id": 66538104,
                                                                                "album_name": "Bedard",
                                                                                "artist": "Stebin Ben",
                                                                                "singers": "Stebin Ben",
                                                                                "images": {
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/68b/dec/66538104/66538104_800x800.jpg"
                                                                                    ],
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/68b/dec/66538104/66538104_100x100.jpg"
                                                                                    ],
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/68b/dec/66538104/66538104_500x500.jpg"
                                                                                    ],
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/68b/dec/66538104/66538104_200x200.jpg"
                                                                                    ],
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/68b/dec/66538104/66538104_50x50.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 66469688,
                                                                                "title": "Tum Bewafa Ho",
                                                                                "album_id": 66469687,
                                                                                "album_name": "Tum Bewafa Ho",
                                                                                "artist": "Payal Dev,Stebin Ben",
                                                                                "singers": "Payal Dev,Stebin Ben",
                                                                                "images": {
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/27e/852/66469687/66469687_800x800.jpg"
                                                                                    ],
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/27e/852/66469687/66469687_200x200.jpg"
                                                                                    ],
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/27e/852/66469687/66469687_500x500.jpg"
                                                                                    ],
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/27e/852/66469687/66469687_100x100.jpg"
                                                                                    ],
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/27e/852/66469687/66469687_50x50.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 65924386,
                                                                                "title": "Dil Nahin Todna (From Sardar Ka Grandson)",
                                                                                "album_id": 65924385,
                                                                                "album_name": "Dil Nahin Todna (From Sardar Ka Grandson)",
                                                                                "artist": "Zara Khan,Tanishk Bagchi",
                                                                                "singers": "Zara Khan,Tanishk Bagchi",
                                                                                "images": {
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/946/152/65924385/65924385_500x500.jpg"
                                                                                    ],
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/946/152/65924385/65924385_50x50.jpg"
                                                                                    ],
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/946/152/65924385/65924385_100x100.jpg"
                                                                                    ],
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/946/152/65924385/65924385_800x800.jpg"
                                                                                    ],
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/946/152/65924385/65924385_200x200.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 64936903,
                                                                                "title": "Tu Bhi Sataya Jayega",
                                                                                "album_id": 64936902,
                                                                                "album_name": "Tu Bhi Sataya Jayega",
                                                                                "artist": "Vishal Mishra,Shomu Seal,Raju Sardar,Kaushal Kishore",
                                                                                "singers": "Vishal Mishra,Shomu Seal,Raju Sardar,Kaushal Kishore",
                                                                                "images": {
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/1a0/8aa/64936902/64936902_800x800.jpg"
                                                                                    ],
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/1a0/8aa/64936902/64936902_500x500.jpg"
                                                                                    ],
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/1a0/8aa/64936902/64936902_50x50.jpg"
                                                                                    ],
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/1a0/8aa/64936902/64936902_100x100.jpg"
                                                                                    ],
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/1a0/8aa/64936902/64936902_200x200.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 66198372,
                                                                                "title": "Naiyo Lagna",
                                                                                "album_id": 66198371,
                                                                                "album_name": "Naiyo Lagna",
                                                                                "artist": "Manish Joshi,Samika Mital",
                                                                                "singers": "Manish Joshi,Samika Mital",
                                                                                "images": {
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/14f/2c1/66198371/66198371_800x800.jpg"
                                                                                    ],
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/14f/2c1/66198371/66198371_500x500.jpg"
                                                                                    ],
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/14f/2c1/66198371/66198371_100x100.jpg"
                                                                                    ],
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/14f/2c1/66198371/66198371_200x200.jpg"
                                                                                    ],
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/14f/2c1/66198371/66198371_50x50.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 65960154,
                                                                                "title": "Dil Ko Mere",
                                                                                "album_id": 65960152,
                                                                                "album_name": "Dil Ko Mere",
                                                                                "artist": "Rahul Jain",
                                                                                "singers": "Rahul Jain",
                                                                                "images": {
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/d1b/700/65960152/65960152_800x800.jpg"
                                                                                    ],
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/d1b/700/65960152/65960152_500x500.jpg"
                                                                                    ],
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/d1b/700/65960152/65960152_100x100.jpg"
                                                                                    ],
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/d1b/700/65960152/65960152_200x200.jpg"
                                                                                    ],
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/d1b/700/65960152/65960152_50x50.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 66836857,
                                                                                "title": "Zeher",
                                                                                "album_id": 66836730,
                                                                                "album_name": "Zeher",
                                                                                "artist": "Rohit Koul,Shefali Chourasia",
                                                                                "singers": "Rohit Koul,Shefali Chourasia",
                                                                                "images": {
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/ea8/4c3/66836730/66836730_50x50.jpg"
                                                                                    ],
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/ea8/4c3/66836730/66836730_200x200.jpg"
                                                                                    ],
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/ea8/4c3/66836730/66836730_100x100.jpg"
                                                                                    ],
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/ea8/4c3/66836730/66836730_500x500.jpg"
                                                                                    ],
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/ea8/4c3/66836730/66836730_800x800.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 64809399,
                                                                                "title": "Saazish",
                                                                                "album_id": 64809398,
                                                                                "album_name": "Saazish",
                                                                                "artist": "Afsana Khan",
                                                                                "singers": "Afsana Khan",
                                                                                "images": {
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/6bb/a2c/64809398/64809398_50x50.jpg"
                                                                                    ],
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/6bb/a2c/64809398/64809398_800x800.jpg"
                                                                                    ],
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/6bb/a2c/64809398/64809398_100x100.jpg"
                                                                                    ],
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/6bb/a2c/64809398/64809398_200x200.jpg"
                                                                                    ],
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/6bb/a2c/64809398/64809398_500x500.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 64822934,
                                                                                "title": "Wafa Na Raas Aayee",
                                                                                "album_id": 64822932,
                                                                                "album_name": "Wafa Na Raas Aayee",
                                                                                "artist": "Jubin Nautiyal",
                                                                                "singers": "Jubin Nautiyal",
                                                                                "images": {
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/c5d/2e9/64822932/64822932_500x500.jpg"
                                                                                    ],
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/c5d/2e9/64822932/64822932_200x200.jpg"
                                                                                    ],
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/c5d/2e9/64822932/64822932_800x800.jpg"
                                                                                    ],
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/c5d/2e9/64822932/64822932_100x100.jpg"
                                                                                    ],
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/c5d/2e9/64822932/64822932_50x50.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 64394047,
                                                                                "title": "Galat",
                                                                                "album_id": 64394046,
                                                                                "album_name": "Galat",
                                                                                "artist": "Asees Kaur,Raj Fatehpur",
                                                                                "singers": "Asees Kaur,Raj Fatehpur",
                                                                                "images": {
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/f17/5aa/64394046/64394046_200x200.jpg"
                                                                                    ],
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/f17/5aa/64394046/64394046_100x100.jpg"
                                                                                    ],
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/f17/5aa/64394046/64394046_50x50.jpg"
                                                                                    ],
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/f17/5aa/64394046/64394046_500x500.jpg"
                                                                                    ],
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/f17/5aa/64394046/64394046_800x800.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 64281545,
                                                                                "title": "Tujhe Bhoolna Toh Chaaha",
                                                                                "album_id": 64281544,
                                                                                "album_name": "Tujhe Bhoolna Toh Chaaha",
                                                                                "artist": "Jubin Nautiyal",
                                                                                "singers": "Jubin Nautiyal",
                                                                                "images": {
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/c36/c71/64281544/64281544_800x800.jpg"
                                                                                    ],
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/c36/c71/64281544/64281544_50x50.jpg"
                                                                                    ],
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/c36/c71/64281544/64281544_500x500.jpg"
                                                                                    ],
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/c36/c71/64281544/64281544_200x200.jpg"
                                                                                    ],
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/c36/c71/64281544/64281544_100x100.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 63169926,
                                                                                "title": "Dooriyan",
                                                                                "album_id": 63169925,
                                                                                "album_name": "Dooriyan",
                                                                                "artist": "Raghav Chaitanya,Anurag Saikia,Kunaal Vermaa",
                                                                                "singers": "Raghav Chaitanya,Anurag Saikia,Kunaal Vermaa",
                                                                                "images": {
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/d83/f2d/63169925/63169925_200x200.jpg"
                                                                                    ],
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/d83/f2d/63169925/63169925_500x500.jpg"
                                                                                    ],
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/d83/f2d/63169925/63169925_800x800.jpg"
                                                                                    ],
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/d83/f2d/63169925/63169925_100x100.jpg"
                                                                                    ],
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/d83/f2d/63169925/63169925_50x50.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 60471277,
                                                                                "title": "Bewafa Tera Masoom Chehra",
                                                                                "album_id": 60471268,
                                                                                "album_name": "Bewafa Tera Masoom Chehra",
                                                                                "artist": "Jubin Nautiyal",
                                                                                "singers": "Jubin Nautiyal",
                                                                                "images": {
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/b62/03b/60471268/60471268_800x800.jpg"
                                                                                    ],
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/b62/03b/60471268/60471268_500x500.jpg"
                                                                                    ],
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/b62/03b/60471268/60471268_100x100.jpg"
                                                                                    ],
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/b62/03b/60471268/60471268_200x200.jpg"
                                                                                    ],
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/b62/03b/60471268/60471268_50x50.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 63819856,
                                                                                "title": "Faaslo Pe",
                                                                                "album_id": 63819855,
                                                                                "album_name": "Faaslo Pe",
                                                                                "artist": "Yasser Desai",
                                                                                "singers": "Yasser Desai",
                                                                                "images": {
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/0cc/af5/63819855/63819855_800x800.jpg"
                                                                                    ],
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/0cc/af5/63819855/63819855_500x500.jpg"
                                                                                    ],
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/0cc/af5/63819855/63819855_100x100.jpg"
                                                                                    ],
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/0cc/af5/63819855/63819855_200x200.jpg"
                                                                                    ],
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/0cc/af5/63819855/63819855_50x50.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 61592024,
                                                                                "title": "Pehle Pyaar Ka Pehla Gham (Feat. Khushali Kumar)",
                                                                                "album_id": 61592012,
                                                                                "album_name": "Pehle Pyaar Ka Pehla Gham (Feat. Khushali Kumar)",
                                                                                "artist": "Tulsi Kumar,Jubin Nautiyal",
                                                                                "singers": "Tulsi Kumar,Jubin Nautiyal",
                                                                                "images": {
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/c08/f4b/61592012/61592012_200x200.jpg"
                                                                                    ],
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/c08/f4b/61592012/61592012_100x100.jpg"
                                                                                    ],
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/c08/f4b/61592012/61592012_500x500.jpg"
                                                                                    ],
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/c08/f4b/61592012/61592012_50x50.jpg"
                                                                                    ],
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/c08/f4b/61592012/61592012_800x800.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 60634656,
                                                                                "title": "Woh Chaand Kahan Se Laogi",
                                                                                "album_id": 60634655,
                                                                                "album_name": "Woh Chaand Kahan Se Laogi",
                                                                                "artist": "Vishal Mishra,Naveen Kumar,Shomu Seal,Manoj Muntashir",
                                                                                "singers": "Vishal Mishra,Naveen Kumar,Shomu Seal,Manoj Muntashir",
                                                                                "images": {
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/433/270/60634655/60634655_500x500.jpg"
                                                                                    ],
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/433/270/60634655/60634655_100x100.jpg"
                                                                                    ],
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/433/270/60634655/60634655_50x50.jpg"
                                                                                    ],
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/433/270/60634655/60634655_200x200.jpg"
                                                                                    ],
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/433/270/60634655/60634655_800x800.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 63766965,
                                                                                "title": "Saiyyonee",
                                                                                "album_id": 63766963,
                                                                                "album_name": "Saiyyonee",
                                                                                "artist": "Gourov Dasgupta,Yasser Desai,Rashmeet Kaur",
                                                                                "singers": "Gourov Dasgupta,Yasser Desai,Rashmeet Kaur",
                                                                                "images": {
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/5a4/5ee/63766963/63766963_500x500.jpg"
                                                                                    ],
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/5a4/5ee/63766963/63766963_800x800.jpg"
                                                                                    ],
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/5a4/5ee/63766963/63766963_50x50.jpg"
                                                                                    ],
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/5a4/5ee/63766963/63766963_200x200.jpg"
                                                                                    ],
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/5a4/5ee/63766963/63766963_100x100.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 61993731,
                                                                                "title": "Chhor Denge (Feat. Nora Fatehi)",
                                                                                "album_id": 61993730,
                                                                                "album_name": "Chhor Denge (Feat. Nora Fatehi)",
                                                                                "artist": "Parampara Tandon",
                                                                                "singers": "Parampara Tandon",
                                                                                "images": {
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/907/53d/61993730/61993730_200x200.jpg"
                                                                                    ],
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/907/53d/61993730/61993730_100x100.jpg"
                                                                                    ],
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/907/53d/61993730/61993730_500x500.jpg"
                                                                                    ],
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/907/53d/61993730/61993730_50x50.jpg"
                                                                                    ],
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/907/53d/61993730/61993730_800x800.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 63318399,
                                                                                "title": "Belafz Baatein",
                                                                                "album_id": 63318398,
                                                                                "album_name": "Belafz Baatein",
                                                                                "artist": "Prem & Hardeep,Mohammed Irfan,Prem & Hardeep & Mohammed Irfan",
                                                                                "singers": "Prem & Hardeep,Mohammed Irfan,Prem & Hardeep & Mohammed Irfan",
                                                                                "images": {
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/2c0/a73/63318398/63318398_200x200.jpg"
                                                                                    ],
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/2c0/a73/63318398/63318398_100x100.jpg"
                                                                                    ],
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/2c0/a73/63318398/63318398_50x50.jpg"
                                                                                    ],
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/2c0/a73/63318398/63318398_500x500.jpg"
                                                                                    ],
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/2c0/a73/63318398/63318398_800x800.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 63977708,
                                                                                "title": "Jaane De (From Koi Jaane Na)",
                                                                                "album_id": 63977707,
                                                                                "album_name": "Jaane De (From Koi Jaane Na)",
                                                                                "artist": "B Praak",
                                                                                "singers": "B Praak",
                                                                                "images": {
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/677/d03/63977707/63977707_100x100.jpg"
                                                                                    ],
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/677/d03/63977707/63977707_50x50.jpg"
                                                                                    ],
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/677/d03/63977707/63977707_200x200.jpg"
                                                                                    ],
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/677/d03/63977707/63977707_800x800.jpg"
                                                                                    ],
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/677/d03/63977707/63977707_500x500.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 64124637,
                                                                                "title": "Tauba Tauba",
                                                                                "album_id": 64124636,
                                                                                "album_name": "Tauba Tauba",
                                                                                "artist": "Anand Raaj Anand",
                                                                                "singers": "Anand Raaj Anand",
                                                                                "images": {
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/41e/eb9/64124636/64124636_800x800.jpg"
                                                                                    ],
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/41e/eb9/64124636/64124636_500x500.jpg"
                                                                                    ],
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/41e/eb9/64124636/64124636_200x200.jpg"
                                                                                    ],
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/41e/eb9/64124636/64124636_100x100.jpg"
                                                                                    ],
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/41e/eb9/64124636/64124636_50x50.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 61766070,
                                                                                "title": "Naina Tu Behna Tu",
                                                                                "album_id": 61766069,
                                                                                "album_name": "Naina Tu Behna Tu",
                                                                                "artist": "Stebin Ben,Jeet Gannguli",
                                                                                "singers": "Stebin Ben,Jeet Gannguli",
                                                                                "images": {
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/451/d24/61766069/61766069_800x800.jpg"
                                                                                    ],
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/451/d24/61766069/61766069_50x50.jpg"
                                                                                    ],
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/451/d24/61766069/61766069_500x500.jpg"
                                                                                    ],
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/451/d24/61766069/61766069_200x200.jpg"
                                                                                    ],
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/451/d24/61766069/61766069_100x100.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 53946490,
                                                                                "title": "Meri Aashiqui",
                                                                                "album_id": 53946489,
                                                                                "album_name": "Meri Aashiqui",
                                                                                "artist": "Jubin Nautiyal",
                                                                                "singers": "Jubin Nautiyal",
                                                                                "images": {
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/c89/de0/53946489/53946489_800x800.jpg"
                                                                                    ],
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/c89/de0/53946489/53946489_50x50.jpg"
                                                                                    ],
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/c89/de0/53946489/53946489_100x100.jpg"
                                                                                    ],
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/c89/de0/53946489/53946489_500x500.jpg"
                                                                                    ],
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/c89/de0/53946489/53946489_200x200.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 59804902,
                                                                                "title": "Tu Mera Nahi",
                                                                                "album_id": 59804901,
                                                                                "album_name": "Tu Mera Nahi",
                                                                                "artist": "Amaal Mallik",
                                                                                "singers": "Amaal Mallik",
                                                                                "images": {
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/1db/5c6/59804901/59804901_200x200.jpg"
                                                                                    ],
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/1db/5c6/59804901/59804901_100x100.jpg"
                                                                                    ],
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/1db/5c6/59804901/59804901_50x50.jpg"
                                                                                    ],
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/1db/5c6/59804901/59804901_500x500.jpg"
                                                                                    ],
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/1db/5c6/59804901/59804901_800x800.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 52954379,
                                                                                "title": "Aaj Bhi",
                                                                                "album_id": 52954378,
                                                                                "album_name": "Aaj Bhi",
                                                                                "artist": "Vishal Mishra,Gaurav Vaswani,Manas Kumar,Kaushal Kishore,Yash Anand",
                                                                                "singers": "Vishal Mishra,Gaurav Vaswani,Manas Kumar,Kaushal Kishore,Yash Anand",
                                                                                "images": {
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/9af/1f5/52954378/52954378_100x100.jpg"
                                                                                    ],
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/9af/1f5/52954378/52954378_800x800.jpg"
                                                                                    ],
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/9af/1f5/52954378/52954378_500x500.jpg"
                                                                                    ],
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/9af/1f5/52954378/52954378_200x200.jpg"
                                                                                    ],
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/9af/1f5/52954378/52954378_50x50.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 50052902,
                                                                                "title": "Filhall",
                                                                                "album_id": 50052752,
                                                                                "album_name": "Filhall",
                                                                                "artist": "B Praak",
                                                                                "singers": "B Praak",
                                                                                "images": {
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/da9/063/50052902/50052902_50x50.jpg"
                                                                                    ],
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/da9/063/50052902/50052902_100x100.jpg"
                                                                                    ],
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/da9/063/50052902/50052902_200x200.jpg"
                                                                                    ],
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/da9/063/50052902/50052902_500x500.jpg"
                                                                                    ],
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/da9/063/50052902/50052902_800x800.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 49075853,
                                                                                "title": "Pachtaoge (From Jaani Ve)",
                                                                                "album_id": 49075852,
                                                                                "album_name": "Pachtaoge (From Jaani Ve)",
                                                                                "artist": "Arijit Singh,B Praak",
                                                                                "singers": "Arijit Singh,B Praak",
                                                                                "images": {
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/3c3/755/49075852/49075852_100x100.jpg"
                                                                                    ],
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/3c3/755/49075852/49075852_800x800.jpg"
                                                                                    ],
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/3c3/755/49075852/49075852_500x500.jpg"
                                                                                    ],
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/3c3/755/49075852/49075852_50x50.jpg"
                                                                                    ],
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/3c3/755/49075852/49075852_200x200.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 31574854,
                                                                                "title": "Tera Zikr",
                                                                                "album_id": 31574855,
                                                                                "album_name": "Tera Zikr",
                                                                                "artist": "Darshan Raval",
                                                                                "singers": "Darshan Raval",
                                                                                "images": {
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/f30/2ad/31574855/31574855_800x800.jpg"
                                                                                    ],
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/f30/2ad/31574855/31574855_50x50.jpg"
                                                                                    ],
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/f30/2ad/31574855/31574855_200x200.jpg"
                                                                                    ],
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/f30/2ad/31574855/31574855_100x100.jpg"
                                                                                    ],
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/f30/2ad/31574855/31574855_500x500.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 59772545,
                                                                                "title": "Waada Hai",
                                                                                "album_id": 59772543,
                                                                                "album_name": "Waada Hai",
                                                                                "artist": "Arjun Kanungo,Sasmit Rudra,Roland Fernandes,Bhushan Chitnis,Jeetu,Ajay Jayanthi,Manoj Muntashir",
                                                                                "singers": "Arjun Kanungo,Sasmit Rudra,Roland Fernandes,Bhushan Chitnis,Jeetu,Ajay Jayanthi,Manoj Muntashir",
                                                                                "images": {
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/054/625/59772543/59772543_500x500.jpg"
                                                                                    ],
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/054/625/59772543/59772543_100x100.jpg"
                                                                                    ],
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/054/625/59772543/59772543_800x800.jpg"
                                                                                    ],
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/054/625/59772543/59772543_50x50.jpg"
                                                                                    ],
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/054/625/59772543/59772543_200x200.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 52828068,
                                                                                "title": "Jinke Liye (From Jaani Ve)",
                                                                                "album_id": 52828067,
                                                                                "album_name": "Jinke Liye (From Jaani Ve)",
                                                                                "artist": "Neha Kakkar",
                                                                                "singers": "Neha Kakkar",
                                                                                "images": {
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/1a6/cae/52828067/52828067_100x100.jpg"
                                                                                    ],
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/1a6/cae/52828067/52828067_200x200.jpg"
                                                                                    ],
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/1a6/cae/52828067/52828067_500x500.jpg"
                                                                                    ],
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/1a6/cae/52828067/52828067_50x50.jpg"
                                                                                    ],
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/1a6/cae/52828067/52828067_800x800.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 59113295,
                                                                                "title": "Ae Mere Dil",
                                                                                "album_id": 59113294,
                                                                                "album_name": "Ae Mere Dil",
                                                                                "artist": "Jeet Gannguli,Abhay Jodhpurkar,Manoj Muntashir",
                                                                                "singers": "Jeet Gannguli,Abhay Jodhpurkar,Manoj Muntashir",
                                                                                "images": {
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/211/b20/59113294/59113294_200x200.jpg"
                                                                                    ],
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/211/b20/59113294/59113294_500x500.jpg"
                                                                                    ],
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/211/b20/59113294/59113294_100x100.jpg"
                                                                                    ],
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/211/b20/59113294/59113294_800x800.jpg"
                                                                                    ],
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/211/b20/59113294/59113294_50x50.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 54811256,
                                                                                "title": "Dil Tod Ke",
                                                                                "album_id": 54811255,
                                                                                "album_name": "Dil Tod Ke",
                                                                                "artist": "B Praak",
                                                                                "singers": "B Praak",
                                                                                "images": {
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/ec9/1b4/54811255/54811255_500x500.jpg"
                                                                                    ],
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/ec9/1b4/54811255/54811255_100x100.jpg"
                                                                                    ],
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/ec9/1b4/54811255/54811255_200x200.jpg"
                                                                                    ],
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/ec9/1b4/54811255/54811255_50x50.jpg"
                                                                                    ],
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/ec9/1b4/54811255/54811255_800x800.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 53456510,
                                                                                "title": "O Jaanwaale",
                                                                                "album_id": 53456509,
                                                                                "album_name": "O Jaanwaale",
                                                                                "artist": "Akhil Sachdeva",
                                                                                "singers": "Akhil Sachdeva",
                                                                                "images": {
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/830/ca4/53456509/53456509_100x100.jpg"
                                                                                    ],
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/830/ca4/53456509/53456509_500x500.jpg"
                                                                                    ],
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/830/ca4/53456509/53456509_800x800.jpg"
                                                                                    ],
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/830/ca4/53456509/53456509_200x200.jpg"
                                                                                    ],
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/830/ca4/53456509/53456509_50x50.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            },
                                                                            {
                                                                                "content_id": 61491417,
                                                                                "title": "Tanha Hoon",
                                                                                "album_id": 61491416,
                                                                                "album_name": "Tanha Hoon",
                                                                                "artist": "Yasser Desai",
                                                                                "singers": "Yasser Desai",
                                                                                "images": {
                                                                                    "image_200x200": [
                                                                                        "https://images.hungama.com/c/1/175/5fb/61491416/61491416_200x200.jpg"
                                                                                    ],
                                                                                    "image_500x500": [
                                                                                        "https://images.hungama.com/c/1/175/5fb/61491416/61491416_500x500.jpg"
                                                                                    ],
                                                                                    "image_100x100": [
                                                                                        "https://images.hungama.com/c/1/175/5fb/61491416/61491416_100x100.jpg"
                                                                                    ],
                                                                                    "image_800x800": [
                                                                                        "https://images.hungama.com/c/1/175/5fb/61491416/61491416_800x800.jpg"
                                                                                    ],
                                                                                    "image_50x50": [
                                                                                        "https://images.hungama.com/c/1/175/5fb/61491416/61491416_50x50.jpg"
                                                                                    ]
                                                                                },
                                                                                "video_id": 0
                                                                            }
                        ]}
        },
        "status_code": 200
    }
    """

struct overall: Codable{

let last_modified: Int?
var response: response?
let status_code: Int?

}

struct response: Codable{
    var playlist: playlist?
    var musiclisting: musiclisting?
}

struct playlist: Codable{
    let content_id: Int?
    var images: images?
    let title: String?
    let release_year: Int?
    let music_tracks_count: Int?
    let comment_count: Int?
    let fav_count: Int?
    let plays_count: Int?
    var playlist_artwork: URL?
    var artist: [artist]?
    let user_fav: Int?
}

struct images: Codable {
    let image_500x500: [URL]?
    let image_100x100: [URL]?
    let image_50x50: [URL]?
    let image_200x200: [URL]?
    let image_800x800: [URL]?
}

struct artist: Codable {
    var artist_id: String?
    var artist_name: String?
    var images: images?
}

struct musiclisting: Codable{
    var track: [track]
}

struct track: Codable{
    let content_id: Int?
    let title: String?
    let album_id: Int?
    let album_name:String?
    let artist: String?
    let singers:String?
    //var images: images?
    let video_id: Int?

}

struct videolisting: Codable{
    var track: [track]?

}

let products = try! JSONDecoder().decode(overall.self, from: json1.data(using: .utf8)!)
var tracks: [track] = []

products.response?.musiclisting?.track.forEach({ (track) in
    tracks.append(track)
})
print(tracks[0].title)

