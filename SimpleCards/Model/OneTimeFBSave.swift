//
//  OneTimeFBSave.swift
//  SimpleCards
//
//  Created by Buse Karabıyık on 3.09.2023.
//

import Foundation
import FirebaseCore
import FirebaseFirestore

struct OneTimeFBSave  {
    
    var strings : [String] = []
    let totalCategory = 8
    let db = Firestore.firestore()
    
    
    let restaurantStr = """
                [
                {
                  "english": "Appetizer",
                  "turkish": "Aperatif"
                },
                {
                  "english": "Menu",
                  "turkish": "Menü"
                },
                {
                  "english": "Waiter/Waitress",
                  "turkish": "Garson / Garson Bayan"
                },
                {
                  "english": "Chef",
                  "turkish": "Şef"
                },
                {
                  "english": "Reservation",
                  "turkish": "Rezervasyon"
                },
                {
                  "english": "Tablecloth",
                  "turkish": "Masa Örtüsü"
                },
                {
                  "english": "Napkin",
                  "turkish": "Peçete"
                },
                {
                  "english": "Plate",
                  "turkish": "Tabak"
                },
                {
                  "english": "Fork",
                  "turkish": "Çatal"
                },
                {
                  "english": "Knife",
                  "turkish": "Bıçak"
                },
                {
                  "english": "Spoon",
                  "turkish": "Kaşık"
                },
                {
                  "english": "Glass",
                  "turkish": "Bardak"
                },
                {
                  "english": "Wine",
                  "turkish": "Şarap"
                },
                {
                  "english": "Dessert",
                  "turkish": "Tatlı"
                },
                {
                  "english": "Check/Bill",
                  "turkish": "Hesap"
                },
                {
                  "english": "Tip",
                  "turkish": "Bahşiş"
                },
                {
                  "english": "Special",
                  "turkish": "Özel"
                },
                {
                  "english": "Buffet",
                  "turkish": "Büfe"
                },
                {
                  "english": "Host/Hostess",
                  "turkish": "Mekan Sahibi"
                },
                {
                  "english": "Dishwasher",
                  "turkish": "Bulaşık Makinesi"
                }
                ]
        """
    
        let hospitalStr = """
                [
                  {
                    "english": "Hospital",
                    "turkish": "Hastane"
                  },
                  {
                    "english": "Doctor",
                    "turkish": "Doktor"
                  },
                  {
                    "english": "Nurse",
                    "turkish": "Hemşire"
                  },
                  {
                    "english": "Patient",
                    "turkish": "Hasta"
                  },
                  {
                    "english": "Surgery",
                    "turkish": "Ameliyat"
                  },
                  {
                    "english": "Emergency",
                    "turkish": "Acil"
                  },
                  {
                    "english": "Ambulance",
                    "turkish": "Ambulans"
                  },
                  {
                    "english": "Prescription",
                    "turkish": "Reçete"
                  },
                  {
                    "english": "X-ray",
                    "turkish": "Röntgen"
                  },
                  {
                    "english": "Medication",
                    "turkish": "İlaç"
                  },
                  {
                    "english": "Diagnosis",
                    "turkish": "Teşhis"
                  },
                  {
                    "english": "Medical Records",
                    "turkish": "Tıbbi Kayıtlar"
                  },
                  {
                    "english": "Laboratory",
                    "turkish": "Laboratuvar"
                  },
                  {
                    "english": "Operating Room",
                    "turkish": "Ameliyat Odası"
                  },
                  {
                    "english": "Blood Pressure",
                    "turkish": "Kan Basıncı"
                  },
                  {
                    "english": "IV (Intravenous)",
                    "turkish": "IV (Damar İçi)"
                  },
                  {
                    "english": "MRI (Magnetic Resonance Imaging)",
                    "turkish": "MRG (Manyetik Rezonans Görüntüleme)"
                  },
                  {
                    "english": "Vaccine",
                    "turkish": "Aşı"
                  },
                  {
                    "english": "Rehabilitation",
                    "turkish": "Rehabilitasyon"
                  },
                  {
                    "english": "Wheelchair",
                    "turkish": "Tekerlekli Sandalye"
                  }
                ]
        
        """
    
        let clothesStr = """
                [
                  {
                    "english": "Shirt",
                    "turkish": "Gömlek"
                  },
                  {
                    "english": "Pants",
                    "turkish": "Pantolon"
                  },
                  {
                    "english": "Dress",
                    "turkish": "Elbise"
                  },
                  {
                    "english": "Shoes",
                    "turkish": "Ayakkabı"
                  },
                  {
                    "english": "Hat",
                    "turkish": "Şapka"
                  },
                  {
                    "english": "Jacket",
                    "turkish": "Ceket"
                  },
                  {
                    "english": "Socks",
                    "turkish": "Çorap"
                  },
                  {
                    "english": "Sweater",
                    "turkish": "Kazak"
                  },
                  {
                    "english": "Skirt",
                    "turkish": "Etek"
                  },
                  {
                    "english": "T-shirt",
                    "turkish": "Tişört"
                  },
                  {
                    "english": "Jeans",
                    "turkish": "Kot"
                  },
                  {
                    "english": "Coat",
                    "turkish": "Palto"
                  },
                  {
                    "english": "Blouse",
                    "turkish": "Bluz"
                  },
                  {
                    "english": "Tie",
                    "turkish": "Kravat"
                  },
                  {
                    "english": "Scarf",
                    "turkish": "Şal"
                  },
                  {
                    "english": "Gloves",
                    "turkish": "Eldiven"
                  },
                  {
                    "english": "Boots",
                    "turkish": "Botlar"
                  },
                  {
                    "english": "Belt",
                    "turkish": "Kemer"
                  },
                  {
                    "english": "Underwear",
                    "turkish": "İç Çamaşırı"
                  },
                  {
                    "english": "Pajamas",
                    "turkish": "Pijama"
                  }
                ]
        
        """
    
       let relationshipStr = """
               [
                 {
                   "english": "Love",
                   "turkish": "Aşk"
                 },
                 {
                   "english": "Friendship",
                   "turkish": "Arkadaşlık"
                 },
                 {
                   "english": "Romance",
                   "turkish": "Romantizm"
                 },
                 {
                   "english": "Partner",
                   "turkish": "Partner"
                 },
                 {
                   "english": "Companion",
                   "turkish": "Refakatçi"
                 },
                 {
                   "english": "Significant other",
                   "turkish": "Özel kişi"
                 },
                 {
                   "english": "Marriage",
                   "turkish": "Evlilik"
                 },
                 {
                   "english": "Dating",
                   "turkish": "Arkadaşlık ilişkisi"
                 },
                 {
                   "english": "Courtship",
                   "turkish": "Evlenme"
                 },
                 {
                   "english": "Intimacy",
                   "turkish": "Yakınlık"
                 },
                 {
                   "english": "Affection",
                   "turkish": "Sevgi"
                 },
                 {
                   "english": "Connection",
                   "turkish": "Bağlantı"
                 },
                 {
                   "english": "Commitment",
                   "turkish": "Taahhüt"
                 },
                 {
                   "english": "Trust",
                   "turkish": "Güven"
                 },
                 {
                   "english": "Communication",
                   "turkish": "İletişim"
                 },
                 {
                   "english": "Compatibility",
                   "turkish": "Uyumluluk"
                 },
                 {
                   "english": "Support",
                   "turkish": "Destek"
                 },
                 {
                   "english": "Understanding",
                   "turkish": "Anlayış"
                 },
                 {
                   "english": "Respect",
                   "turkish": "Saygı"
                 },
                 {
                   "english": "Loyalty",
                   "turkish": "Sadakat"
                 },
                 {
                   "english": "Passion",
                   "turkish": "Tutku"
                 },
                 {
                   "english": "Devotion",
                   "turkish": "Fedakarlık"
                 },
                 {
                   "english": "Breakup",
                   "turkish": "Ayrılma"
                 },
                 {
                   "english": "Separation",
                   "turkish": "Ayrılma"
                 },
                 {
                   "english": "Divorce",
                   "turkish": "Boşanma"
                 },
                 {
                   "english": "Reconciliation",
                   "turkish": "Barışma"
                 },
                 {
                   "english": "Jealousy",
                   "turkish": "Kıskançlık"
                 },
                 {
                   "english": "Infidelity",
                   "turkish": "Sadakatsizlik"
                 },
                 {
                   "english": "Heartbreak",
                   "turkish": "Kalp kırıklığı"
                 },
                 {
                   "english": "Compromise",
                   "turkish": "Uzlaşma"
                 },
                 {
                   "english": "Soulmate",
                   "turkish": "Ruh eşi"
                 },
                 {
                   "english": "Family",
                   "turkish": "Aile"
                 },
                 {
                   "english": "Sibling",
                   "turkish": "Kardeş"
                 },
                 {
                   "english": "Parent",
                   "turkish": "Ebeveyn"
                 },
                 {
                   "english": "Child",
                   "turkish": "Çocuk"
                 },
                 {
                   "english": "In-law",
                   "turkish": "Evlilik yoluyla aileye giren kimse"
                 },
                 {
                   "english": "Kinship",
                   "turkish": "Akrabalık"
                 },
                 {
                   "english": "Generosity",
                   "turkish": "Cömertlik"
                 },
                 {
                   "english": "Empathy",
                   "turkish": "Empati"
                 },
                 {
                   "english": "Forgiveness",
                   "turkish": "Affetme"
                 },
                 {
                   "english": "Trustworthiness",
                   "turkish": "Güvenilirlik"
                 },
                 {
                   "english": "Conflict",
                   "turkish": "Çatışma"
                 },
                 {
                   "english": "Emotion",
                   "turkish": "Duygu"
                 },
                 {
                   "english": "Honesty",
                   "turkish": "Dürüstlük"
                 },
                 {
                   "english": "Caring",
                   "turkish": "İlgilenme"
                 },
                 {
                   "english": "Bond",
                   "turkish": "Bağ"
                 },
                 {
                   "english": "Tenderness",
                   "turkish": "Şefkat"
                 },
                 {
                   "english": "Hug",
                   "turkish": "Sarılma"
                 },
                 {
                   "english": "Kiss",
                   "turkish": "Öpücük"
                 },
                 {
                   "english": "Supportive",
                   "turkish": "Destekleyici"
                 },
                 {
                   "english": "Apology",
                   "turkish": "Özür"
                 },
                 {
                   "english": "Gratitude",
                   "turkish": "Minnettarlık"
                 },
                 {
                   "english": "Rejection",
                   "turkish": "Reddetme"
                 },
                 {
                   "english": "Flirting",
                   "turkish": "Flört"
                 },
                 {
                   "english": "Courtship",
                   "turkish": "Evlenme teklifi"
                 },
                 {
                   "english": "Engagement",
                   "turkish": "Nişan"
                 },
                 {
                   "english": "Wedding",
                   "turkish": "Düğün"
                 },
                 {
                   "english": "Anniversary",
                   "turkish": "Yıldönümü"
                 },
                 {
                   "english": "Jealousy",
                   "turkish": "Kıskançlık"
                 },
                 {
                   "english": "Bitterness",
                   "turkish": "Acı"
                 },
                 {
                   "english": "Resentment",
                   "turkish": "Nefret"
                 },
                 {
                   "english": "Complication",
                   "turkish": "Karmaşıklık"
                 },
                 {
                   "english": "Betrayal",
                   "turkish": "İhanet"
                 },
                 {
                   "english": "Vulnerability",
                   "turkish": "Savunmasızlık"
                 },
                 {
                   "english": "Communication",
                   "turkish": "İletişim"
                 },
                 {
                   "english": "Listening",
                   "turkish": "Dinleme"
                 },
                 {
                   "english": "Empowerment",
                   "turkish": "Güçlendirme"
                 },
                 {
                   "english": "Solace",
                   "turkish": "Teselli"
                 },
                 {
                   "english": "Togetherness",
                   "turkish": "Birlikte olma"
                 },
                 {
                   "english": "Growth",
                   "turkish": "Büyüme"
                 },
                 {
                   "english": "Encouragement",
                   "turkish": "Teşvik"
                 },
                 {
                   "english": "Patience",
                   "turkish": "Sabır"
                 },
                 {
                   "english": "Attachment",
                   "turkish": "Bağlanma"
                 },
                 {
                   "english": "Tolerance",
                   "turkish": "Hoşgörü"
                 },
                 {
                   "english": "Connection",
                   "turkish": "Bağlantı"
                 },
                 {
                   "english": "Quality time",
                   "turkish": "Kalite zamanı"
                 },
                 {
                   "english": "Sacrifice",
                   "turkish": "Fedakarlık"
                 },
                 {
                   "english": "Admiration",
                   "turkish": "Hayranlık"
                 },
                 {
                   "english": "Trust building",
                   "turkish": "Güven inşa etme"
                 },
                 {
                   "english": "Relationship counseling",
                   "turkish": "İlişki danışmanlığı"
                 }
               ]
       
       """
    
      let travellingStr = """
                [
                  {
                    "english": "Adventure",
                    "turkish": "Macera"
                  },
                  {
                    "english": "Tourism",
                    "turkish": "Turizm"
                  },
                  {
                    "english": "Destination",
                    "turkish": "Hedef"
                  },
                  {
                    "english": "Itinerary",
                    "turkish": "Seyahat Programı"
                  },
                  {
                    "english": "Passport",
                    "turkish": "Pasaport"
                  },
                  {
                    "english": "Visa",
                    "turkish": "Vize"
                  },
                  {
                    "english": "Airport",
                    "turkish": "Havalimanı"
                  },
                  {
                    "english": "Hotel",
                    "turkish": "Otel"
                  },
                  {
                    "english": "Airlines",
                    "turkish": "Havayolları"
                  },
                  {
                    "english": "Luggage",
                    "turkish": "Bagaj"
                  },
                  {
                    "english": "Ticket",
                    "turkish": "Bilet"
                  },
                  {
                    "english": "Cruise",
                    "turkish": "Gemi Turu"
                  },
                  {
                    "english": "Hostel",
                    "turkish": "Pansiyon"
                  },
                  {
                    "english": "Car rental",
                    "turkish": "Araba Kiralama"
                  },
                  {
                    "english": "Backpack",
                    "turkish": "Sırt Çantası"
                  },
                  {
                    "english": "Hiking",
                    "turkish": "Yürüyüş"
                  },
                  {
                    "english": "Guidebook",
                    "turkish": "Rehber Kitabı"
                  },
                  {
                    "english": "Sightseeing",
                    "turkish": "Görülecek Yerler Gezisi"
                  },
                  {
                    "english": "Souvenir",
                    "turkish": "Hediyelik Eşya"
                  },
                  {
                    "english": "Currency exchange",
                    "turkish": "Döviz Bozdurma"
                  },
                  {
                    "english": "Adventurer",
                    "turkish": "Maceraperest"
                  },
                  {
                    "english": "Journey",
                    "turkish": "Yolculuk"
                  },
                  {
                    "english": "Resort",
                    "turkish": "Tatil Köyü"
                  },
                  {
                    "english": "Camping",
                    "turkish": "Kamp"
                  },
                  {
                    "english": "Culture shock",
                    "turkish": "Kültür Şoku"
                  },
                  {
                    "english": "Jet lag",
                    "turkish": "Jet Lag (no direct translation)"
                  },
                  {
                    "english": "Guide",
                    "turkish": "Rehber"
                  },
                  {
                    "english": "Boarding pass",
                    "turkish": "Biniş Kartı"
                  },
                  {
                    "english": "Travel insurance",
                    "turkish": "Seyahat Sigortası"
                  },
                  {
                    "english": "Road trip",
                    "turkish": "Yolculuk"
                  }
                ]
      """
    
    
    // created all data on spreadsheet, saved it as csv file, converted csv file to json using csv to json converter

    
     let houseStr = """
                [
                {
                "english": "Sofa",
                "turkish": "Koltuk"
                },
                {
                "english": "Coffee table",
                "turkish": "Sehpa"
                },
                {
                "english": "Television",
                "turkish": "Televizyon"
                },
                {
                "english": "Bookshelf",
                "turkish": "Kitaplık"
                },
                {
                "english": "Rug",
                "turkish": "Halı"
                },
                {
                "english": "Armchair",
                "turkish": "Koltuk"
                },
                {
                "english": "Entertainment center",
                "turkish": "Eğlence merkezi"
                },
                {
                "english": "End table",
                "turkish": "Yan sehpa"
                },
                {
                "english": "Fireplace",
                "turkish": "Şömine"
                },
                {
                "english": "Curtains",
                "turkish": "Perdeler"
                },
                {
                "english": "Refrigerator",
                "turkish": "Buzdolabı"
                },
                {
                "english": "Oven",
                "turkish": "Fırın"
                },
                {
                "english": "Microwave",
                "turkish": "Mikrodalga fırın"
                },
                {
                "english": "Sink",
                "turkish": "Lavabo"
                },
                {
                "english": "Dishwasher",
                "turkish": "Bulaşık makinesi"
                },
                {
                "english": "Cabinets",
                "turkish": "Dolaplar"
                },
                {
                "english": "Countertop",
                "turkish": "Tezgah"
                },
                {
                "english": "Stove",
                "turkish": "Ocak"
                },
                {
                "english": "Blender",
                "turkish": "Blender"
                },
                {
                "english": "Toaster",
                "turkish": "Tost makinesi"
                },
                {
                "english": "Bed",
                "turkish": "Yatak"
                },
                {
                "english": "Mattress",
                "turkish": "Yatak"
                },
                {
                "english": "Dresser",
                "turkish": "Şifonyer"
                },
                {
                "english": "Nightstand",
                "turkish": "Komodin"
                },
                {
                "english": "Wardrobe",
                "turkish": "Gardırop"
                },
                {
                "english": "Mirror",
                "turkish": "Ayna"
                },
                {
                "english": "Alarm clock",
                "turkish": "Çalar saat"
                },
                {
                "english": "Lamp",
                "turkish": "Lamba"
                },
                {
                "english": "Bedside table",
                "turkish": "Yatak başı masası"
                },
                {
                "english": "Closet",
                "turkish": "Dolap"
                },
                {
                "english": "Bathtub",
                "turkish": "Küvet"
                },
                {
                "english": "Shower",
                "turkish": "Duş"
                },
                {
                "english": "Toilet",
                "turkish": "Tuvalet"
                },
                {
                "english": "Sink",
                "turkish": "Lavabo"
                },
                {
                "english": "Towel rack",
                "turkish": "Havlu askısı"
                },
                {
                "english": "Vanity",
                "turkish": "Makyaj masası"
                },
                {
                "english": "Mirror",
                "turkish": "Ayna"
                },
                {
                "english": "Toilet paper holder",
                "turkish": "Tuvalet kağıdı tutacağı"
                },
                {
                "english": "Soap dispenser",
                "turkish": "Sabunluk"
                },
                {
                "english": "Shower curtain",
                "turkish": "Duş perdesi"
                },
                {
                "english": "Dining table",
                "turkish": "Yemek masası"
                },
                {
                "english": "Chairs",
                "turkish": "Sandalyeler"
                },
                {
                "english": "China cabinet",
                "turkish": "Çin dolabı"
                },
                {
                "english": "Place settings",
                "turkish": "Yer ayarları"
                },
                {
                "english": "Tablecloth",
                "turkish": "Masa örtüsü"
                },
                {
                "english": "Centerpiece",
                "turkish": "Merkez dekorasyon"
                },
                {
                "english": "Buffet",
                "turkish": "Büfe"
                },
                {
                "english": "Sideboard",
                "turkish": "Şifonyer"
                },
                {
                "english": "Wine glasses",
                "turkish": "Şarap bardakları"
                },
                {
                "english": "Chandelier",
                "turkish": "Avize"
                },
                {
                "english": "Desk",
                "turkish": "Masa"
                },
                {
                "english": "Computer",
                "turkish": "Bilgisayar"
                },
                {
                "english": "Chair",
                "turkish": "Sandalye"
                },
                {
                "english": "File cabinet",
                "turkish": "Dosya dolabı"
                },
                {
                "english": "Desk lamp",
                "turkish": "Masa lambası"
                },
                {
                "english": "Printer",
                "turkish": "Yazıcı"
                },
                {
                "english": "Shelves",
                "turkish": "Raflar"
                },
                {
                "english": "Calendar",
                "turkish": "Takvim"
                },
                {
                "english": "Office supplies",
                "turkish": "Ofis malzemeleri"
                },
                {
                "english": "Filing folders",
                "turkish": "Dosya klasörleri"
                },
                {
                "english": "Washing machine",
                "turkish": "Çamaşır makinesi"
                },
                {
                "english": "Dryer",
                "turkish": "Kurutma makinesi"
                },
                {
                "english": "Laundry basket",
                "turkish": "Çamaşır sepeti"
                },
                {
                "english": "Ironing board",
                "turkish": "Ütü masası"
                },
                {
                "english": "Detergent",
                "turkish": "Deterjan"
                },
                {
                "english": "Clothesline",
                "turkish": "Çamaşır ipi"
                },
                {
                "english": "Hangers",
                "turkish": "Askılar"
                },
                {
                "english": "Lint roller",
                "turkish": "Tüy toplayıcı"
                },
                {
                "english": "Laundry sink",
                "turkish": "Çamaşır lavabosu"
                },
                {
                "english": "Broom",
                "turkish": "Süpürge"
                },
                {
                "english": "Car",
                "turkish": "Araba"
                },
                {
                "english": "Tools",
                "turkish": "Araçlar"
                },
                {
                "english": "Workbench",
                "turkish": "Tezgah"
                },
                {
                "english": "Garage door",
                "turkish": "Garaj kapısı"
                },
                {
                "english": "Tool chest",
                "turkish": "Araç sandığı"
                },
                {
                "english": "Lawnmower",
                "turkish": "Çim biçme makinesi"
                },
                {
                "english": "Bicycle",
                "turkish": "Bisiklet"
                },
                {
                "english": "Shelving",
                "turkish": "Raf"
                },
                {
                "english": "Toolbox",
                "turkish": "Takım çantası"
                },
                {
                "english": "Ladder",
                "turkish": "Merdiven"
                },
                {
                "english": "Patio furniture",
                "turkish": "Veranda mobilyası"
                },
                {
                "english": "Grill",
                "turkish": "Barbekü"
                },
                {
                "english": "Umbrella",
                "turkish": "Şemsiye"
                },
                {
                "english": "Hammock",
                "turkish": "Hamak"
                },
                {
                "english": "Potted plants",
                "turkish": "Saksı çiçekleri"
                },
                {
                "english": "Garden hose",
                "turkish": "Bahçe hortumu"
                },
                {
                "english": "Outdoor lighting",
                "turkish": "Dış mekan aydınlatma"
                },
                {
                "english": "Lawn chair",
                "turkish": "Şezlong"
                },
                {
                "english": "Fire pit",
                "turkish": "Ateş çukuru"
                },
                {
                "english": "Decking",
                "turkish": "Decking (Ahşap zemin kaplaması)"
                },
                {
                "english": "Crib",
                "turkish": "Beşik"
                },
                {
                "english": "Changing table",
                "turkish": "Alt değiştirme masası"
                },
                {
                "english": "Toys",
                "turkish": "Oyuncaklar"
                },
                {
                "english": "Rocking chair",
                "turkish": "Sallanan sandalye"
                },
                {
                "english": "Mobile",
                "turkish": "Müzikli oyuncak"
                },
                {
                "english": "Children's books",
                "turkish": "Çocuk kitapları"
                },
                {
                "english": "Playpen",
                "turkish": "Oyun çadırı"
                },
                {
                "english": "Children's art",
                "turkish": "Çocuk sanatı"
                },
                {
                "english": "Nightlight",
                "turkish": "Gece lambası"
                },
                {
                "english": "Children's desk",
                "turkish": "Çocuk masası"
                }
                ]
        """
    
        let greetingsStr = """
                [
                  {
                    "english": "Hello",
                    "turkish": "Merhaba"
                  },
                  {
                    "english": "Hi",
                    "turkish": "Selam"
                  },
                  {
                    "english": "Hey there",
                    "turkish": "Selam"
                  },
                  {
                    "english": "Good morning",
                    "turkish": "Günaydın"
                  },
                  {
                    "english": "Good afternoon",
                    "turkish": "İyi günler"
                  },
                  {
                    "english": "Good evening",
                    "turkish": "İyi akşamlar"
                  },
                  {
                    "english": "How are you?",
                    "turkish": "Nasılsın(ız)?"
                  },
                  {
                    "english": "What's up?",
                    "turkish": "Ne var ne yok?"
                  },
                  {
                    "english": "How's it going?",
                    "turkish": "Nasıl gidiyor?"
                  },
                  {
                    "english": "How's everything?",
                    "turkish": "Her şey yolunda mı?"
                  },
                  {
                    "english": "Hi, how have you been?",
                    "turkish": "Selam, nasılsın? (informal)"
                  },
                  {
                    "english": "Nice to meet you!",
                    "turkish": "Tanıştığıma memnun oldum!"
                  },
                  {
                    "english": "Howdy",
                    "turkish": "Merhaba"
                  },
                  {
                    "english": "How's your day been?",
                    "turkish": "Günün nasıl geçti?"
                  },
                  {
                    "english": "Long time no see!",
                    "turkish": "Uzun zaman oldu görüşmeyeli!"
                  },
                  {
                    "english": "What's new?",
                    "turkish": "Ne var yeni?"
                  },
                  {
                    "english": "How's life treating you?",
                    "turkish": "Hayat nasıl gidiyor?"
                  },
                  {
                    "english": "How's your day going?",
                    "turkish": "Günün nasıl geçiyor?"
                  },
                  {
                    "english": "How's your weekend?",
                    "turkish": "Hafta sonun nasıl geçti?"
                  },
                  {
                    "english": "How's your family?",
                    "turkish": "Ailen nasıl?"
                  },
                  {
                    "english": "How's work/school?",
                    "turkish": "İş/okul nasıl?"
                  },
                  {
                    "english": "How's the weather today?",
                    "turkish": "Bugün hava nasıl?"
                  },
                  {
                    "english": "Wassup",
                    "turkish": "Naber?"
                  },
                  {
                    "english": "How's everything going?",
                    "turkish": "Her şey nasıl gidiyor?"
                  },
                  {
                    "english": "How's your day treating you?",
                    "turkish": "Gün seni nasıl karşılıyor?"
                  },
                  {
                    "english": "How's your week so far?",
                    "turkish": "Haftan şimdiye kadar nasıl geçti?"
                  },
                  {
                    "english": "How's your health?",
                    "turkish": "Sağlığın nasıl?"
                  },
                  {
                    "english": "How's your day shaping up?",
                    "turkish": "Günün nasıl şekilleniyor?"
                  },
                  {
                    "english": "How's your day unfolding?",
                    "turkish": "Günün nasıl gelişiyor?"
                  },
                  {
                    "english": "How's your day progressing?",
                    "turkish": "Günün nasıl ilerliyor?"
                  },
                  {
                    "english": "How's your day panning out?",
                    "turkish": "Günün nasıl sonuçlanıyor?"
                  },
                  {
                    "english": "How's your day developing?",
                    "turkish": "Günün nasıl gelişiyor?"
                  },
                  {
                    "english": "How's your day evolving?",
                    "turkish": "Günün nasıl evriliyor?"
                  },
                  {
                    "english": "How's your day transpiring?",
                    "turkish": "Günün nasıl geçiyor?"
                  },
                  {
                    "english": "How's the family?",
                    "turkish": "Ailen nasıl?"
                  },
                  {
                    "english": "How's your job/school going?",
                    "turkish": "İş/okul nasıl?"
                  }
                ]
        """
    
        let topStr = """
                [
                  {
                    "english": "a",
                    "turkish": "bir"
                  },
                  {
                    "english": "ability",
                    "turkish": "yetenek"
                  },
                  {
                    "english": "able",
                    "turkish": "hünerli"
                  },
                  {
                    "english": "about",
                    "turkish": "hakkında"
                  },
                  {
                    "english": "above",
                    "turkish": "üstünde"
                  },
                  {
                    "english": "accept",
                    "turkish": "kabul etmek"
                  },
                  {
                    "english": "according",
                    "turkish": "binaen"
                  },
                  {
                    "english": "account",
                    "turkish": "hesap"
                  },
                  {
                    "english": "across",
                    "turkish": "karşısında"
                  },
                  {
                    "english": "act",
                    "turkish": "davranmak"
                  },
                  {
                    "english": "action",
                    "turkish": "aksiyon"
                  },
                  {
                    "english": "activity",
                    "turkish": "aktivite"
                  },
                  {
                    "english": "actually",
                    "turkish": "Aslında"
                  },
                  {
                    "english": "add",
                    "turkish": "eklemek"
                  },
                  {
                    "english": "address",
                    "turkish": "adres"
                  },
                  {
                    "english": "administration",
                    "turkish": "yönetim"
                  },
                  {
                    "english": "admit",
                    "turkish": "itiraf etmek"
                  },
                  {
                    "english": "adult",
                    "turkish": "yetişkin"
                  },
                  {
                    "english": "affect",
                    "turkish": "etkilemek"
                  },
                  {
                    "english": "after",
                    "turkish": "sonrasında"
                  },
                  {
                    "english": "again",
                    "turkish": "Tekrar"
                  },
                  {
                    "english": "against",
                    "turkish": "aykırı"
                  },
                  {
                    "english": "age",
                    "turkish": "yaş"
                  },
                  {
                    "english": "agency",
                    "turkish": "Ajans"
                  },
                  {
                    "english": "agent",
                    "turkish": "ajan"
                  },
                  {
                    "english": "ago",
                    "turkish": "evvel"
                  },
                  {
                    "english": "agree",
                    "turkish": "kabul etmek"
                  },
                  {
                    "english": "agreement",
                    "turkish": "anlaşma"
                  },
                  {
                    "english": "ahead",
                    "turkish": "ilerde"
                  },
                  {
                    "english": "air",
                    "turkish": "hava"
                  },
                  {
                    "english": "all",
                    "turkish": "Tümü"
                  },
                  {
                    "english": "allow",
                    "turkish": "izin vermek"
                  },
                  {
                    "english": "almost",
                    "turkish": "neredeyse"
                  },
                  {
                    "english": "alone",
                    "turkish": "yalnız"
                  },
                  {
                    "english": "along",
                    "turkish": "birlikte"
                  },
                  {
                    "english": "already",
                    "turkish": "çoktan"
                  },
                  {
                    "english": "also",
                    "turkish": "Ayrıca"
                  },
                  {
                    "english": "although",
                    "turkish": "rağmen"
                  },
                  {
                    "english": "always",
                    "turkish": "Her zaman"
                  },
                  {
                    "english": "American",
                    "turkish": "Amerikan"
                  },
                  {
                    "english": "among",
                    "turkish": "arasında"
                  },
                  {
                    "english": "amount",
                    "turkish": "miktar"
                  },
                  {
                    "english": "analysis",
                    "turkish": "analiz"
                  },
                  {
                    "english": "and",
                    "turkish": "Ve"
                  },
                  {
                    "english": "animal",
                    "turkish": "hayvan"
                  },
                  {
                    "english": "another",
                    "turkish": "bir diğer"
                  },
                  {
                    "english": "answer",
                    "turkish": "cevap"
                  },
                  {
                    "english": "any",
                    "turkish": "herhangi"
                  },
                  {
                    "english": "anyone",
                    "turkish": "herhangi biri"
                  },
                  {
                    "english": "anything",
                    "turkish": "herhangi bir şey"
                  },
                  {
                    "english": "appear",
                    "turkish": "belli olmak"
                  },
                  {
                    "english": "apply",
                    "turkish": "uygula"
                  },
                  {
                    "english": "approach",
                    "turkish": "yaklaşmak"
                  },
                  {
                    "english": "area",
                    "turkish": "alan"
                  },
                  {
                    "english": "argue",
                    "turkish": "tartışmak"
                  },
                  {
                    "english": "arm",
                    "turkish": "kol"
                  },
                  {
                    "english": "around",
                    "turkish": "etrafında"
                  },
                  {
                    "english": "arrive",
                    "turkish": "varmak"
                  },
                  {
                    "english": "art",
                    "turkish": "sanat"
                  },
                  {
                    "english": "article",
                    "turkish": "madde"
                  },
                  {
                    "english": "artist",
                    "turkish": "sanatçı"
                  },
                  {
                    "english": "as",
                    "turkish": "gibi"
                  },
                  {
                    "english": "ask",
                    "turkish": "sormak"
                  },
                  {
                    "english": "assume",
                    "turkish": "farz etmek"
                  },
                  {
                    "english": "at",
                    "turkish": "en"
                  },
                  {
                    "english": "attack",
                    "turkish": "saldırı"
                  },
                  {
                    "english": "attention",
                    "turkish": "dikkat"
                  },
                  {
                    "english": "attorney",
                    "turkish": "avukat"
                  },
                  {
                    "english": "audience",
                    "turkish": "kitle"
                  },
                  {
                    "english": "author",
                    "turkish": "yazar"
                  },
                  {
                    "english": "authority",
                    "turkish": "yetki"
                  },
                  {
                    "english": "available",
                    "turkish": "mevcut"
                  },
                  {
                    "english": "avoid",
                    "turkish": "kaçınmak"
                  },
                  {
                    "english": "away",
                    "turkish": "uzak"
                  },
                  {
                    "english": "baby",
                    "turkish": "Bebek"
                  },
                  {
                    "english": "back",
                    "turkish": "geri"
                  },
                  {
                    "english": "bad",
                    "turkish": "kötü"
                  },
                  {
                    "english": "bag",
                    "turkish": "çanta"
                  },
                  {
                    "english": "ball",
                    "turkish": "top"
                  },
                  {
                    "english": "bank",
                    "turkish": "banka"
                  },
                  {
                    "english": "bar",
                    "turkish": "çubuk"
                  },
                  {
                    "english": "base",
                    "turkish": "temel"
                  },
                  {
                    "english": "be",
                    "turkish": "olmak"
                  },
                  {
                    "english": "beat",
                    "turkish": "vurmak"
                  },
                  {
                    "english": "beautiful",
                    "turkish": "Güzel"
                  },
                  {
                    "english": "because",
                    "turkish": "Çünkü"
                  },
                  {
                    "english": "become",
                    "turkish": "haline gelmek"
                  },
                  {
                    "english": "bed",
                    "turkish": "yatak"
                  },
                  {
                    "english": "before",
                    "turkish": "önce"
                  },
                  {
                    "english": "begin",
                    "turkish": "başlamak"
                  },
                  {
                    "english": "behavior",
                    "turkish": "davranış"
                  },
                  {
                    "english": "behind",
                    "turkish": "arka"
                  },
                  {
                    "english": "believe",
                    "turkish": "inanmak"
                  },
                  {
                    "english": "benefit",
                    "turkish": "fayda"
                  },
                  {
                    "english": "best",
                    "turkish": "en iyi"
                  },
                  {
                    "english": "better",
                    "turkish": "daha iyi"
                  },
                  {
                    "english": "between",
                    "turkish": "arasında"
                  },
                  {
                    "english": "beyond",
                    "turkish": "öte"
                  },
                  {
                    "english": "big",
                    "turkish": "büyük"
                  },
                  {
                    "english": "bill",
                    "turkish": "fatura"
                  },
                  {
                    "english": "billion",
                    "turkish": "milyar"
                  },
                  {
                    "english": "bit",
                    "turkish": "biraz"
                  },
                  {
                    "english": "black",
                    "turkish": "siyah"
                  },
                  {
                    "english": "blood",
                    "turkish": "kan"
                  },
                  {
                    "english": "blue",
                    "turkish": "mavi"
                  },
                  {
                    "english": "board",
                    "turkish": "pano"
                  },
                  {
                    "english": "body",
                    "turkish": "vücut"
                  },
                  {
                    "english": "book",
                    "turkish": "kitap"
                  },
                  {
                    "english": "born",
                    "turkish": "doğmak"
                  },
                  {
                    "english": "both",
                    "turkish": "ikisi birden"
                  },
                  {
                    "english": "box",
                    "turkish": "kutu"
                  },
                  {
                    "english": "boy",
                    "turkish": "erkek çocuk"
                  },
                  {
                    "english": "break",
                    "turkish": "kırmak"
                  },
                  {
                    "english": "bring",
                    "turkish": "getirmek"
                  },
                  {
                    "english": "brother",
                    "turkish": "Erkek kardeş"
                  },
                  {
                    "english": "budget",
                    "turkish": "bütçe"
                  },
                  {
                    "english": "build",
                    "turkish": "inşa etmek"
                  },
                  {
                    "english": "building",
                    "turkish": "bina"
                  },
                  {
                    "english": "business",
                    "turkish": "işletme"
                  },
                  {
                    "english": "but",
                    "turkish": "Ancak"
                  },
                  {
                    "english": "buy",
                    "turkish": "satın almak"
                  },
                  {
                    "english": "by",
                    "turkish": "ile"
                  },
                  {
                    "english": "call",
                    "turkish": "Arama"
                  },
                  {
                    "english": "camera",
                    "turkish": "kamera"
                  },
                  {
                    "english": "campaign",
                    "turkish": "kampanya"
                  },
                  {
                    "english": "can",
                    "turkish": "olabilmek"
                  },
                  {
                    "english": "cancer",
                    "turkish": "kanser"
                  },
                  {
                    "english": "candidate",
                    "turkish": "aday"
                  },
                  {
                    "english": "capital",
                    "turkish": "başkent"
                  },
                  {
                    "english": "car",
                    "turkish": "araba"
                  },
                  {
                    "english": "card",
                    "turkish": "kart"
                  },
                  {
                    "english": "care",
                    "turkish": "bakım"
                  },
                  {
                    "english": "career",
                    "turkish": "kariyer"
                  },
                  {
                    "english": "carry",
                    "turkish": "taşımak"
                  },
                  {
                    "english": "case",
                    "turkish": "dava"
                  },
                  {
                    "english": "catch",
                    "turkish": "yakalamak"
                  },
                  {
                    "english": "cause",
                    "turkish": "neden"
                  },
                  {
                    "english": "cell",
                    "turkish": "hücre"
                  },
                  {
                    "english": "center",
                    "turkish": "merkez"
                  },
                  {
                    "english": "central",
                    "turkish": "merkezi"
                  },
                  {
                    "english": "century",
                    "turkish": "yüzyıl"
                  },
                  {
                    "english": "certain",
                    "turkish": "kesin"
                  },
                  {
                    "english": "certainly",
                    "turkish": "kesinlikle"
                  },
                  {
                    "english": "chair",
                    "turkish": "sandalye"
                  },
                  {
                    "english": "challenge",
                    "turkish": "meydan okumak"
                  },
                  {
                    "english": "chance",
                    "turkish": "şans"
                  },
                  {
                    "english": "change",
                    "turkish": "değiştirmek"
                  },
                  {
                    "english": "character",
                    "turkish": "karakter"
                  },
                  {
                    "english": "charge",
                    "turkish": "şarj"
                  },
                  {
                    "english": "check",
                    "turkish": "kontrol etmek"
                  },
                  {
                    "english": "child",
                    "turkish": "çocuk"
                  },
                  {
                    "english": "choice",
                    "turkish": "seçenek"
                  },
                  {
                    "english": "choose",
                    "turkish": "seçmek"
                  },
                  {
                    "english": "church",
                    "turkish": "kilise"
                  },
                  {
                    "english": "citizen",
                    "turkish": "vatandaş"
                  },
                  {
                    "english": "city",
                    "turkish": "şehir"
                  },
                  {
                    "english": "civil",
                    "turkish": "sivil"
                  },
                  {
                    "english": "claim",
                    "turkish": "iddia"
                  },
                  {
                    "english": "class",
                    "turkish": "sınıf"
                  },
                  {
                    "english": "clear",
                    "turkish": "temizlemek"
                  },
                  {
                    "english": "clearly",
                    "turkish": "Açıkça"
                  },
                  {
                    "english": "close",
                    "turkish": "kapalı"
                  },
                  {
                    "english": "coach",
                    "turkish": "koç"
                  },
                  {
                    "english": "cold",
                    "turkish": "soğuk"
                  },
                  {
                    "english": "collection",
                    "turkish": "Toplamak"
                  },
                  {
                    "english": "college",
                    "turkish": "kolej"
                  },
                  {
                    "english": "color",
                    "turkish": "renk"
                  },
                  {
                    "english": "come",
                    "turkish": "Gelmek"
                  },
                  {
                    "english": "commercial",
                    "turkish": "reklam"
                  },
                  {
                    "english": "common",
                    "turkish": "yaygın"
                  },
                  {
                    "english": "community",
                    "turkish": "toplum"
                  },
                  {
                    "english": "company",
                    "turkish": "şirket"
                  },
                  {
                    "english": "compare",
                    "turkish": "karşılaştırmak"
                  },
                  {
                    "english": "computer",
                    "turkish": "bilgisayar"
                  },
                  {
                    "english": "concern",
                    "turkish": "kaygı"
                  },
                  {
                    "english": "condition",
                    "turkish": "durum"
                  },
                  {
                    "english": "conference",
                    "turkish": "konferans"
                  },
                  {
                    "english": "Congress",
                    "turkish": "Kongre"
                  },
                  {
                    "english": "consider",
                    "turkish": "dikkate almak"
                  },
                  {
                    "english": "consumer",
                    "turkish": "tüketici"
                  },
                  {
                    "english": "contain",
                    "turkish": "içermek"
                  },
                  {
                    "english": "continue",
                    "turkish": "devam etmek"
                  },
                  {
                    "english": "control",
                    "turkish": "kontrol"
                  },
                  {
                    "english": "cost",
                    "turkish": "maliyet"
                  },
                  {
                    "english": "could",
                    "turkish": "abilir"
                  },
                  {
                    "english": "country",
                    "turkish": "ülke"
                  },
                  {
                    "english": "couple",
                    "turkish": "çift"
                  },
                  {
                    "english": "course",
                    "turkish": "kurs"
                  },
                  {
                    "english": "court",
                    "turkish": "mahkeme"
                  },
                  {
                    "english": "cover",
                    "turkish": "kapak"
                  },
                  {
                    "english": "create",
                    "turkish": "yaratmak"
                  },
                  {
                    "english": "crime",
                    "turkish": "suç"
                  },
                  {
                    "english": "cultural",
                    "turkish": "kültürel"
                  },
                  {
                    "english": "culture",
                    "turkish": "kültür"
                  },
                  {
                    "english": "cup",
                    "turkish": "bardak"
                  },
                  {
                    "english": "current",
                    "turkish": "akım"
                  },
                  {
                    "english": "customer",
                    "turkish": "müşteri"
                  },
                  {
                    "english": "cut",
                    "turkish": "kesmek"
                  },
                  {
                    "english": "dark",
                    "turkish": "karanlık"
                  },
                  {
                    "english": "data",
                    "turkish": "veri"
                  },
                  {
                    "english": "daughter",
                    "turkish": "kız çocuğu"
                  },
                  {
                    "english": "day",
                    "turkish": "gün"
                  },
                  {
                    "english": "dead",
                    "turkish": "ölü"
                  },
                  {
                    "english": "deal",
                    "turkish": "anlaşmak"
                  },
                  {
                    "english": "death",
                    "turkish": "ölüm"
                  },
                  {
                    "english": "debate",
                    "turkish": "çekişme"
                  },
                  {
                    "english": "decade",
                    "turkish": "on yıl"
                  },
                  {
                    "english": "decide",
                    "turkish": "karar vermek"
                  },
                  {
                    "english": "decision",
                    "turkish": "karar"
                  },
                  {
                    "english": "deep",
                    "turkish": "derin"
                  },
                  {
                    "english": "defense",
                    "turkish": "savunma"
                  },
                  {
                    "english": "degree",
                    "turkish": "derece"
                  },
                  {
                    "english": "Democrat",
                    "turkish": "Demokrat"
                  },
                  {
                    "english": "democratic",
                    "turkish": "demokratik"
                  },
                  {
                    "english": "describe",
                    "turkish": "betimlemek"
                  },
                  {
                    "english": "design",
                    "turkish": "tasarım"
                  },
                  {
                    "english": "despite",
                    "turkish": "aksine"
                  },
                  {
                    "english": "detail",
                    "turkish": "detay"
                  },
                  {
                    "english": "determine",
                    "turkish": "belirlemek"
                  },
                  {
                    "english": "develop",
                    "turkish": "geliştirmek"
                  },
                  {
                    "english": "development",
                    "turkish": "gelişim"
                  },
                  {
                    "english": "die",
                    "turkish": "ölmek"
                  },
                  {
                    "english": "difference",
                    "turkish": "fark"
                  },
                  {
                    "english": "different",
                    "turkish": "farklı"
                  },
                  {
                    "english": "difficult",
                    "turkish": "zor"
                  },
                  {
                    "english": "dinner",
                    "turkish": "akşam yemeği"
                  },
                  {
                    "english": "direction",
                    "turkish": "yön"
                  },
                  {
                    "english": "director",
                    "turkish": "müdür"
                  },
                  {
                    "english": "discover",
                    "turkish": "keşfetmek"
                  },
                  {
                    "english": "discuss",
                    "turkish": "tartışmak"
                  },
                  {
                    "english": "discussion",
                    "turkish": "tartışma"
                  },
                  {
                    "english": "disease",
                    "turkish": "hastalık"
                  },
                  {
                    "english": "do",
                    "turkish": "Yapmak"
                  },
                  {
                    "english": "doctor",
                    "turkish": "doktor"
                  },
                  {
                    "english": "dog",
                    "turkish": "köpek"
                  },
                  {
                    "english": "door",
                    "turkish": "kapı"
                  },
                  {
                    "english": "down",
                    "turkish": "aşağı"
                  },
                  {
                    "english": "draw",
                    "turkish": "çizmek"
                  },
                  {
                    "english": "dream",
                    "turkish": "rüya"
                  },
                  {
                    "english": "drive",
                    "turkish": "sürmek"
                  },
                  {
                    "english": "drop",
                    "turkish": "düşürmek"
                  },
                  {
                    "english": "drug",
                    "turkish": "ilaç"
                  },
                  {
                    "english": "during",
                    "turkish": "sırasında"
                  },
                  {
                    "english": "each",
                    "turkish": "her biri"
                  },
                  {
                    "english": "early",
                    "turkish": "erken"
                  },
                  {
                    "english": "east",
                    "turkish": "doğu"
                  },
                  {
                    "english": "easy",
                    "turkish": "kolay"
                  },
                  {
                    "english": "eat",
                    "turkish": "yemek yemek"
                  },
                  {
                    "english": "economic",
                    "turkish": "ekonomik"
                  },
                  {
                    "english": "economy",
                    "turkish": "ekonomi"
                  },
                  {
                    "english": "edge",
                    "turkish": "kenar"
                  },
                  {
                    "english": "education",
                    "turkish": "eğitim"
                  },
                  {
                    "english": "effect",
                    "turkish": "etki"
                  },
                  {
                    "english": "effort",
                    "turkish": "çaba"
                  },
                  {
                    "english": "eight",
                    "turkish": "sekiz"
                  },
                  {
                    "english": "either",
                    "turkish": "herhangi biri"
                  },
                  {
                    "english": "election",
                    "turkish": "seçim"
                  },
                  {
                    "english": "else",
                    "turkish": "başka"
                  },
                  {
                    "english": "employee",
                    "turkish": "çalışan"
                  },
                  {
                    "english": "end",
                    "turkish": "son"
                  },
                  {
                    "english": "energy",
                    "turkish": "enerji"
                  },
                  {
                    "english": "enjoy",
                    "turkish": "Eğlence"
                  },
                  {
                    "english": "enough",
                    "turkish": "yeterli"
                  },
                  {
                    "english": "enter",
                    "turkish": "girmek"
                  },
                  {
                    "english": "entire",
                    "turkish": "bütün"
                  },
                  {
                    "english": "environment",
                    "turkish": "çevre"
                  },
                  {
                    "english": "environmental",
                    "turkish": "çevresel"
                  },
                  {
                    "english": "especially",
                    "turkish": "özellikle"
                  },
                  {
                    "english": "establish",
                    "turkish": "kurmak"
                  },
                  {
                    "english": "even",
                    "turkish": "eşit"
                  },
                  {
                    "english": "evening",
                    "turkish": "akşam"
                  },
                  {
                    "english": "event",
                    "turkish": "etkinlik"
                  },
                  {
                    "english": "ever",
                    "turkish": "durmadan"
                  },
                  {
                    "english": "every",
                    "turkish": "Her"
                  },
                  {
                    "english": "everybody",
                    "turkish": "herkes"
                  },
                  {
                    "english": "everyone",
                    "turkish": "herkes"
                  },
                  {
                    "english": "everything",
                    "turkish": "her şey"
                  },
                  {
                    "english": "evidence",
                    "turkish": "kanıt"
                  },
                  {
                    "english": "exactly",
                    "turkish": "Kesinlikle"
                  },
                  {
                    "english": "example",
                    "turkish": "örnek"
                  },
                  {
                    "english": "executive",
                    "turkish": "yönetici"
                  },
                  {
                    "english": "exist",
                    "turkish": "var olmak"
                  },
                  {
                    "english": "expect",
                    "turkish": "beklemek"
                  },
                  {
                    "english": "experience",
                    "turkish": "deneyim"
                  },
                  {
                    "english": "expert",
                    "turkish": "uzman"
                  },
                  {
                    "english": "explain",
                    "turkish": "açıklamak"
                  },
                  {
                    "english": "eye",
                    "turkish": "göz"
                  },
                  {
                    "english": "face",
                    "turkish": "yüz"
                  },
                  {
                    "english": "fact",
                    "turkish": "hakikat"
                  },
                  {
                    "english": "factor",
                    "turkish": "faktör"
                  },
                  {
                    "english": "fail",
                    "turkish": "hata"
                  },
                  {
                    "english": "fall",
                    "turkish": "düşmek"
                  },
                  {
                    "english": "family",
                    "turkish": "aile"
                  },
                  {
                    "english": "far",
                    "turkish": "uzak"
                  },
                  {
                    "english": "fast",
                    "turkish": "hızlı"
                  },
                  {
                    "english": "father",
                    "turkish": "baba"
                  },
                  {
                    "english": "fear",
                    "turkish": "korku"
                  },
                  {
                    "english": "federal",
                    "turkish": "federal"
                  },
                  {
                    "english": "feel",
                    "turkish": "hissetmek"
                  },
                  {
                    "english": "feeling",
                    "turkish": "his"
                  },
                  {
                    "english": "few",
                    "turkish": "bir kaç"
                  },
                  {
                    "english": "field",
                    "turkish": "alan"
                  },
                  {
                    "english": "fight",
                    "turkish": "kavga"
                  },
                  {
                    "english": "figure",
                    "turkish": "figür"
                  },
                  {
                    "english": "fill",
                    "turkish": "doldurmak"
                  },
                  {
                    "english": "film",
                    "turkish": "film"
                  },
                  {
                    "english": "final",
                    "turkish": "son"
                  },
                  {
                    "english": "finally",
                    "turkish": "Sonunda"
                  },
                  {
                    "english": "financial",
                    "turkish": "parasal"
                  },
                  {
                    "english": "find",
                    "turkish": "bulmak"
                  },
                  {
                    "english": "fine",
                    "turkish": "iyi"
                  },
                  {
                    "english": "finger",
                    "turkish": "parmak"
                  },
                  {
                    "english": "finish",
                    "turkish": "sona ermek"
                  },
                  {
                    "english": "fire",
                    "turkish": "ateş"
                  },
                  {
                    "english": "firm",
                    "turkish": "firma"
                  },
                  {
                    "english": "first",
                    "turkish": "Birinci"
                  },
                  {
                    "english": "fish",
                    "turkish": "balık"
                  },
                  {
                    "english": "five",
                    "turkish": "beş"
                  },
                  {
                    "english": "floor",
                    "turkish": "zemin"
                  },
                  {
                    "english": "fly",
                    "turkish": "uçmak"
                  },
                  {
                    "english": "focus",
                    "turkish": "odak"
                  },
                  {
                    "english": "follow",
                    "turkish": "takip etmek"
                  },
                  {
                    "english": "food",
                    "turkish": "yiyecek"
                  },
                  {
                    "english": "foot",
                    "turkish": "ayak"
                  },
                  {
                    "english": "for",
                    "turkish": "için"
                  },
                  {
                    "english": "force",
                    "turkish": "güç"
                  },
                  {
                    "english": "foreign",
                    "turkish": "yabancı"
                  },
                  {
                    "english": "forget",
                    "turkish": "unutmak"
                  },
                  {
                    "english": "form",
                    "turkish": "biçim"
                  },
                  {
                    "english": "former",
                    "turkish": "önceki"
                  },
                  {
                    "english": "forward",
                    "turkish": "ileri"
                  },
                  {
                    "english": "four",
                    "turkish": "dört"
                  },
                  {
                    "english": "free",
                    "turkish": "özgür"
                  },
                  {
                    "english": "friend",
                    "turkish": "arkadaş"
                  },
                  {
                    "english": "from",
                    "turkish": "itibaren"
                  },
                  {
                    "english": "front",
                    "turkish": "ön"
                  },
                  {
                    "english": "full",
                    "turkish": "tam dolu"
                  },
                  {
                    "english": "fund",
                    "turkish": "fon, sermaye"
                  },
                  {
                    "english": "future",
                    "turkish": "gelecek"
                  },
                  {
                    "english": "game",
                    "turkish": "oyun"
                  },
                  {
                    "english": "garden",
                    "turkish": "bahçe"
                  },
                  {
                    "english": "gas",
                    "turkish": "gaz"
                  },
                  {
                    "english": "general",
                    "turkish": "genel"
                  },
                  {
                    "english": "generation",
                    "turkish": "nesil"
                  },
                  {
                    "english": "get",
                    "turkish": "elde etmek"
                  },
                  {
                    "english": "girl",
                    "turkish": "kız"
                  },
                  {
                    "english": "give",
                    "turkish": "vermek"
                  },
                  {
                    "english": "glass",
                    "turkish": "bardak"
                  },
                  {
                    "english": "go",
                    "turkish": "Gitmek"
                  },
                  {
                    "english": "goal",
                    "turkish": "amaç"
                  },
                  {
                    "english": "good",
                    "turkish": "iyi"
                  },
                  {
                    "english": "government",
                    "turkish": "devlet"
                  },
                  {
                    "english": "great",
                    "turkish": "Harika"
                  },
                  {
                    "english": "green",
                    "turkish": "yeşil"
                  },
                  {
                    "english": "ground",
                    "turkish": "zemin"
                  },
                  {
                    "english": "group",
                    "turkish": "grup"
                  },
                  {
                    "english": "grow",
                    "turkish": "büyümek"
                  },
                  {
                    "english": "growth",
                    "turkish": "büyüme"
                  },
                  {
                    "english": "guess",
                    "turkish": "tahmin etmek"
                  },
                  {
                    "english": "gun",
                    "turkish": "silah"
                  },
                  {
                    "english": "guy",
                    "turkish": "adam"
                  },
                  {
                    "english": "hair",
                    "turkish": "saç"
                  },
                  {
                    "english": "half",
                    "turkish": "yarım"
                  },
                  {
                    "english": "hand",
                    "turkish": "el"
                  },
                  {
                    "english": "hang",
                    "turkish": "asmak"
                  },
                  {
                    "english": "happen",
                    "turkish": "olmak"
                  },
                  {
                    "english": "happy",
                    "turkish": "mutlu"
                  },
                  {
                    "english": "hard",
                    "turkish": "zor"
                  },
                  {
                    "english": "have",
                    "turkish": "sahip olmak"
                  },
                  {
                    "english": "he",
                    "turkish": "O"
                  },
                  {
                    "english": "head",
                    "turkish": "KAFA"
                  },
                  {
                    "english": "health",
                    "turkish": "sağlık"
                  },
                  {
                    "english": "hear",
                    "turkish": "duymak"
                  },
                  {
                    "english": "heart",
                    "turkish": "kalp"
                  },
                  {
                    "english": "heat",
                    "turkish": "sıcaklık"
                  },
                  {
                    "english": "heavy",
                    "turkish": "ağır"
                  },
                  {
                    "english": "help",
                    "turkish": "yardım"
                  },
                  {
                    "english": "her",
                    "turkish": "o"
                  },
                  {
                    "english": "here",
                    "turkish": "Burada"
                  },
                  {
                    "english": "herself",
                    "turkish": "kendini"
                  },
                  {
                    "english": "high",
                    "turkish": "yüksek"
                  },
                  {
                    "english": "him",
                    "turkish": "o"
                  },
                  {
                    "english": "himself",
                    "turkish": "kendisi"
                  },
                  {
                    "english": "his",
                    "turkish": "onun"
                  },
                  {
                    "english": "history",
                    "turkish": "tarih"
                  },
                  {
                    "english": "hit",
                    "turkish": "vurmak"
                  },
                  {
                    "english": "hold",
                    "turkish": "tutmak"
                  },
                  {
                    "english": "home",
                    "turkish": "Ev"
                  },
                  {
                    "english": "hope",
                    "turkish": "umut"
                  },
                  {
                    "english": "hospital",
                    "turkish": "hastane"
                  },
                  {
                    "english": "hot",
                    "turkish": "sıcak"
                  },
                  {
                    "english": "hotel",
                    "turkish": "otel"
                  },
                  {
                    "english": "hour",
                    "turkish": "saat"
                  },
                  {
                    "english": "house",
                    "turkish": "ev"
                  },
                  {
                    "english": "how",
                    "turkish": "Nasıl"
                  },
                  {
                    "english": "however",
                    "turkish": "Yine de"
                  },
                  {
                    "english": "huge",
                    "turkish": "büyük"
                  },
                  {
                    "english": "human",
                    "turkish": "insan"
                  },
                  {
                    "english": "hundred",
                    "turkish": "yüz"
                  },
                  {
                    "english": "husband",
                    "turkish": "koca"
                  },
                  {
                    "english": "I",
                    "turkish": "BEN"
                  },
                  {
                    "english": "idea",
                    "turkish": "fikir"
                  },
                  {
                    "english": "identify",
                    "turkish": "tanımlamak"
                  },
                  {
                    "english": "if",
                    "turkish": "eğer"
                  },
                  {
                    "english": "image",
                    "turkish": "resim"
                  },
                  {
                    "english": "imagine",
                    "turkish": "hayal etmek"
                  },
                  {
                    "english": "impact",
                    "turkish": "darbe"
                  },
                  {
                    "english": "important",
                    "turkish": "önemli"
                  },
                  {
                    "english": "improve",
                    "turkish": "geliştirmek"
                  },
                  {
                    "english": "in",
                    "turkish": "içinde"
                  },
                  {
                    "english": "include",
                    "turkish": "katmak"
                  },
                  {
                    "english": "including",
                    "turkish": "içermek"
                  },
                  {
                    "english": "increase",
                    "turkish": "arttırmak"
                  },
                  {
                    "english": "indeed",
                    "turkish": "Aslında"
                  },
                  {
                    "english": "indicate",
                    "turkish": "belirtmek"
                  },
                  {
                    "english": "individual",
                    "turkish": "bireysel"
                  },
                  {
                    "english": "industry",
                    "turkish": "endüstri"
                  },
                  {
                    "english": "information",
                    "turkish": "bilgi"
                  },
                  {
                    "english": "inside",
                    "turkish": "içeri"
                  },
                  {
                    "english": "instead",
                    "turkish": "yerine"
                  },
                  {
                    "english": "institution",
                    "turkish": "kurum"
                  },
                  {
                    "english": "interest",
                    "turkish": "faiz"
                  },
                  {
                    "english": "interesting",
                    "turkish": "ilginç"
                  },
                  {
                    "english": "international",
                    "turkish": "uluslararası"
                  },
                  {
                    "english": "interview",
                    "turkish": "röportaj"
                  },
                  {
                    "english": "into",
                    "turkish": "içine"
                  },
                  {
                    "english": "investment",
                    "turkish": "yatırım"
                  },
                  {
                    "english": "involve",
                    "turkish": "içermek"
                  },
                  {
                    "english": "issue",
                    "turkish": "sorun"
                  },
                  {
                    "english": "it",
                    "turkish": "BT"
                  },
                  {
                    "english": "item",
                    "turkish": "öğe"
                  },
                  {
                    "english": "its",
                    "turkish": "onun"
                  },
                  {
                    "english": "itself",
                    "turkish": "kendisi"
                  },
                  {
                    "english": "job",
                    "turkish": "iş"
                  },
                  {
                    "english": "join",
                    "turkish": "katılmak"
                  },
                  {
                    "english": "just",
                    "turkish": "Sadece"
                  },
                  {
                    "english": "keep",
                    "turkish": "kale"
                  },
                  {
                    "english": "key",
                    "turkish": "anahtar"
                  },
                  {
                    "english": "kid",
                    "turkish": "çocuk"
                  },
                  {
                    "english": "kill",
                    "turkish": "öldürmek"
                  },
                  {
                    "english": "kind",
                    "turkish": "tür"
                  },
                  {
                    "english": "kitchen",
                    "turkish": "mutfak"
                  },
                  {
                    "english": "know",
                    "turkish": "Bilmek"
                  },
                  {
                    "english": "knowledge",
                    "turkish": "bilgi"
                  },
                  {
                    "english": "land",
                    "turkish": "kara"
                  },
                  {
                    "english": "language",
                    "turkish": "dil"
                  },
                  {
                    "english": "large",
                    "turkish": "büyük"
                  },
                  {
                    "english": "last",
                    "turkish": "son"
                  },
                  {
                    "english": "late",
                    "turkish": "geç"
                  },
                  {
                    "english": "later",
                    "turkish": "Daha sonra"
                  },
                  {
                    "english": "laugh",
                    "turkish": "gülmek"
                  },
                  {
                    "english": "law",
                    "turkish": "kanun"
                  },
                  {
                    "english": "lawyer",
                    "turkish": "avukat"
                  },
                  {
                    "english": "lay",
                    "turkish": "sermek"
                  },
                  {
                    "english": "lead",
                    "turkish": "yol göstermek"
                  },
                  {
                    "english": "leader",
                    "turkish": "Önder"
                  },
                  {
                    "english": "learn",
                    "turkish": "öğrenmek"
                  },
                  {
                    "english": "least",
                    "turkish": "en az"
                  },
                  {
                    "english": "leave",
                    "turkish": "ayrılmak"
                  },
                  {
                    "english": "left",
                    "turkish": "sol"
                  },
                  {
                    "english": "leg",
                    "turkish": "bacak"
                  },
                  {
                    "english": "legal",
                    "turkish": "yasal"
                  },
                  {
                    "english": "less",
                    "turkish": "az"
                  },
                  {
                    "english": "let",
                    "turkish": "izin vermek"
                  },
                  {
                    "english": "letter",
                    "turkish": "mektup"
                  },
                  {
                    "english": "level",
                    "turkish": "seviye"
                  },
                  {
                    "english": "lie",
                    "turkish": "yalan"
                  },
                  {
                    "english": "life",
                    "turkish": "hayat"
                  },
                  {
                    "english": "light",
                    "turkish": "ışık"
                  },
                  {
                    "english": "like",
                    "turkish": "beğenmek"
                  },
                  {
                    "english": "likely",
                    "turkish": "büyük ihtimalle"
                  },
                  {
                    "english": "line",
                    "turkish": "astar"
                  },
                  {
                    "english": "list",
                    "turkish": "liste"
                  },
                  {
                    "english": "listen",
                    "turkish": "Dinlemek"
                  },
                  {
                    "english": "little",
                    "turkish": "biraz"
                  },
                  {
                    "english": "live",
                    "turkish": "canlı"
                  },
                  {
                    "english": "local",
                    "turkish": "yerel"
                  },
                  {
                    "english": "long",
                    "turkish": "uzun"
                  },
                  {
                    "english": "look",
                    "turkish": "Bakmak"
                  },
                  {
                    "english": "lose",
                    "turkish": "kaybetmek"
                  },
                  {
                    "english": "loss",
                    "turkish": "kayıp"
                  },
                  {
                    "english": "lot",
                    "turkish": "pay"
                  },
                  {
                    "english": "love",
                    "turkish": "Aşk"
                  },
                  {
                    "english": "low",
                    "turkish": "Düşük"
                  },
                  {
                    "english": "machine",
                    "turkish": "makine"
                  },
                  {
                    "english": "magazine",
                    "turkish": "dergi"
                  },
                  {
                    "english": "main",
                    "turkish": "ana"
                  },
                  {
                    "english": "maintain",
                    "turkish": "sürdürmek"
                  },
                  {
                    "english": "major",
                    "turkish": "ana"
                  },
                  {
                    "english": "majority",
                    "turkish": "çoğunluk"
                  },
                  {
                    "english": "make",
                    "turkish": "yapmak"
                  },
                  {
                    "english": "man",
                    "turkish": "Adam"
                  },
                  {
                    "english": "manage",
                    "turkish": "üstesinden gelmek"
                  },
                  {
                    "english": "management",
                    "turkish": "yönetmek"
                  },
                  {
                    "english": "manager",
                    "turkish": "müdür"
                  },
                  {
                    "english": "many",
                    "turkish": "birçok"
                  },
                  {
                    "english": "market",
                    "turkish": "pazar"
                  },
                  {
                    "english": "marriage",
                    "turkish": "evlilik"
                  },
                  {
                    "english": "material",
                    "turkish": "malzeme"
                  },
                  {
                    "english": "matter",
                    "turkish": "konu"
                  },
                  {
                    "english": "may",
                    "turkish": "mayıs"
                  },
                  {
                    "english": "maybe",
                    "turkish": "Belki"
                  },
                  {
                    "english": "me",
                    "turkish": "Ben"
                  },
                  {
                    "english": "mean",
                    "turkish": "Anlam"
                  },
                  {
                    "english": "measure",
                    "turkish": "ölçüm"
                  },
                  {
                    "english": "media",
                    "turkish": "medya"
                  },
                  {
                    "english": "medical",
                    "turkish": "tıbbi"
                  },
                  {
                    "english": "meet",
                    "turkish": "tanışmak"
                  },
                  {
                    "english": "meeting",
                    "turkish": "toplantı"
                  },
                  {
                    "english": "member",
                    "turkish": "üye"
                  },
                  {
                    "english": "memory",
                    "turkish": "hafıza"
                  },
                  {
                    "english": "mention",
                    "turkish": "değinmek"
                  },
                  {
                    "english": "message",
                    "turkish": "İleti"
                  },
                  {
                    "english": "method",
                    "turkish": "yöntem"
                  },
                  {
                    "english": "middle",
                    "turkish": "orta"
                  },
                  {
                    "english": "might",
                    "turkish": "belki"
                  },
                  {
                    "english": "military",
                    "turkish": "askeri"
                  },
                  {
                    "english": "million",
                    "turkish": "milyon"
                  },
                  {
                    "english": "mind",
                    "turkish": "akıl"
                  },
                  {
                    "english": "minute",
                    "turkish": "dakika"
                  },
                  {
                    "english": "miss",
                    "turkish": "kayıp"
                  },
                  {
                    "english": "mission",
                    "turkish": "misyon"
                  },
                  {
                    "english": "model",
                    "turkish": "modeli"
                  },
                  {
                    "english": "modern",
                    "turkish": "modern"
                  },
                  {
                    "english": "moment",
                    "turkish": "an"
                  },
                  {
                    "english": "money",
                    "turkish": "para"
                  },
                  {
                    "english": "month",
                    "turkish": "ay"
                  },
                  {
                    "english": "more",
                    "turkish": "Daha"
                  },
                  {
                    "english": "morning",
                    "turkish": "Sabah"
                  },
                  {
                    "english": "most",
                    "turkish": "en"
                  },
                  {
                    "english": "mother",
                    "turkish": "anne"
                  },
                  {
                    "english": "mouth",
                    "turkish": "ağız"
                  },
                  {
                    "english": "move",
                    "turkish": "taşınmak"
                  },
                  {
                    "english": "movement",
                    "turkish": "hareket"
                  },
                  {
                    "english": "movie",
                    "turkish": "film"
                  },
                  {
                    "english": "Mr",
                    "turkish": "Bay"
                  },
                  {
                    "english": "Mrs",
                    "turkish": "Bayan"
                  },
                  {
                    "english": "much",
                    "turkish": "fazla"
                  },
                  {
                    "english": "music",
                    "turkish": "müzik"
                  },
                  {
                    "english": "must",
                    "turkish": "mutlak"
                  },
                  {
                    "english": "my",
                    "turkish": "Benim"
                  },
                  {
                    "english": "myself",
                    "turkish": "kendim"
                  },
                  {
                    "english": "name",
                    "turkish": "isim"
                  },
                  {
                    "english": "nation",
                    "turkish": "ulus"
                  },
                  {
                    "english": "national",
                    "turkish": "ulusal"
                  },
                  {
                    "english": "natural",
                    "turkish": "doğal"
                  },
                  {
                    "english": "nature",
                    "turkish": "doğa"
                  },
                  {
                    "english": "near",
                    "turkish": "yakın"
                  },
                  {
                    "english": "nearly",
                    "turkish": "neredeyse"
                  },
                  {
                    "english": "necessary",
                    "turkish": "gerekli"
                  },
                  {
                    "english": "need",
                    "turkish": "ihtiyaç"
                  },
                  {
                    "english": "network",
                    "turkish": "ağ"
                  },
                  {
                    "english": "never",
                    "turkish": "Asla"
                  },
                  {
                    "english": "new",
                    "turkish": "yeni"
                  },
                  {
                    "english": "news",
                    "turkish": "haberler"
                  },
                  {
                    "english": "newspaper",
                    "turkish": "gazete"
                  },
                  {
                    "english": "next",
                    "turkish": "Sonraki"
                  },
                  {
                    "english": "nice",
                    "turkish": "Güzel"
                  },
                  {
                    "english": "night",
                    "turkish": "gece"
                  },
                  {
                    "english": "no",
                    "turkish": "HAYIR"
                  },
                  {
                    "english": "none",
                    "turkish": "hiçbiri"
                  },
                  {
                    "english": "nor",
                    "turkish": "ne de"
                  },
                  {
                    "english": "north",
                    "turkish": "kuzey"
                  },
                  {
                    "english": "not",
                    "turkish": "Olumsuz"
                  },
                  {
                    "english": "note",
                    "turkish": "Not"
                  },
                  {
                    "english": "nothing",
                    "turkish": "Hiçbir şey"
                  },
                  {
                    "english": "notice",
                    "turkish": "fark etme"
                  },
                  {
                    "english": "now",
                    "turkish": "Şimdi"
                  },
                  {
                    "english": "n't",
                    "turkish": "değil"
                  },
                  {
                    "english": "number",
                    "turkish": "sayı"
                  },
                  {
                    "english": "occur",
                    "turkish": "meydana gelmek"
                  },
                  {
                    "english": "of",
                    "turkish": "ile ilgili"
                  },
                  {
                    "english": "off",
                    "turkish": "kapalı"
                  },
                  {
                    "english": "offer",
                    "turkish": "teklif"
                  },
                  {
                    "english": "office",
                    "turkish": "ofis"
                  },
                  {
                    "english": "officer",
                    "turkish": "subay"
                  },
                  {
                    "english": "official",
                    "turkish": "resmi"
                  },
                  {
                    "english": "often",
                    "turkish": "sıklıkla"
                  },
                  {
                    "english": "oh",
                    "turkish": "ah"
                  },
                  {
                    "english": "oil",
                    "turkish": "yağ"
                  },
                  {
                    "english": "ok",
                    "turkish": "Tamam"
                  },
                  {
                    "english": "old",
                    "turkish": "eskimiş"
                  },
                  {
                    "english": "on",
                    "turkish": "Açık"
                  },
                  {
                    "english": "once",
                    "turkish": "bir kere"
                  },
                  {
                    "english": "one",
                    "turkish": "bir"
                  },
                  {
                    "english": "only",
                    "turkish": "sadece"
                  },
                  {
                    "english": "onto",
                    "turkish": "üzerine"
                  },
                  {
                    "english": "open",
                    "turkish": "açık"
                  },
                  {
                    "english": "operation",
                    "turkish": "operasyon"
                  },
                  {
                    "english": "opportunity",
                    "turkish": "fırsat"
                  },
                  {
                    "english": "option",
                    "turkish": "seçenek"
                  },
                  {
                    "english": "or",
                    "turkish": "veya"
                  },
                  {
                    "english": "order",
                    "turkish": "emir"
                  },
                  {
                    "english": "organization",
                    "turkish": "organizasyon"
                  },
                  {
                    "english": "other",
                    "turkish": "diğer"
                  },
                  {
                    "english": "others",
                    "turkish": "diğerleri"
                  },
                  {
                    "english": "our",
                    "turkish": "bizim"
                  },
                  {
                    "english": "out",
                    "turkish": "dışarı"
                  },
                  {
                    "english": "outside",
                    "turkish": "dıştan"
                  },
                  {
                    "english": "over",
                    "turkish": "üzerinde"
                  },
                  {
                    "english": "own",
                    "turkish": "sahip olmak"
                  },
                  {
                    "english": "owner",
                    "turkish": "mal sahibi"
                  },
                  {
                    "english": "page",
                    "turkish": "sayfa"
                  },
                  {
                    "english": "pain",
                    "turkish": "ağrı"
                  },
                  {
                    "english": "painting",
                    "turkish": "tablo"
                  },
                  {
                    "english": "paper",
                    "turkish": "kağıt"
                  },
                  {
                    "english": "parent",
                    "turkish": "ebeveyn"
                  },
                  {
                    "english": "part",
                    "turkish": "parça"
                  },
                  {
                    "english": "participant",
                    "turkish": "katılımcı"
                  },
                  {
                    "english": "particular",
                    "turkish": "özel"
                  },
                  {
                    "english": "particularly",
                    "turkish": "özellikle"
                  },
                  {
                    "english": "partner",
                    "turkish": "ortak"
                  },
                  {
                    "english": "party",
                    "turkish": "Parti"
                  },
                  {
                    "english": "pass",
                    "turkish": "geçmek"
                  },
                  {
                    "english": "past",
                    "turkish": "geçmiş"
                  },
                  {
                    "english": "patient",
                    "turkish": "hasta"
                  },
                  {
                    "english": "pattern",
                    "turkish": "model"
                  },
                  {
                    "english": "pay",
                    "turkish": "ödemek"
                  },
                  {
                    "english": "peace",
                    "turkish": "barış"
                  },
                  {
                    "english": "people",
                    "turkish": "insanlar"
                  },
                  {
                    "english": "per",
                    "turkish": "başına"
                  },
                  {
                    "english": "perform",
                    "turkish": "rol yapmak"
                  },
                  {
                    "english": "performance",
                    "turkish": "verim"
                  },
                  {
                    "english": "perhaps",
                    "turkish": "belki"
                  },
                  {
                    "english": "period",
                    "turkish": "dönem"
                  },
                  {
                    "english": "person",
                    "turkish": "kişi"
                  },
                  {
                    "english": "personal",
                    "turkish": "kişisel"
                  },
                  {
                    "english": "phone",
                    "turkish": "telefon"
                  },
                  {
                    "english": "physical",
                    "turkish": "fiziksel"
                  },
                  {
                    "english": "pick",
                    "turkish": "seçmek"
                  },
                  {
                    "english": "picture",
                    "turkish": "resim"
                  },
                  {
                    "english": "piece",
                    "turkish": "parça"
                  },
                  {
                    "english": "place",
                    "turkish": "yer"
                  },
                  {
                    "english": "plan",
                    "turkish": "plan"
                  },
                  {
                    "english": "plant",
                    "turkish": "bitki"
                  },
                  {
                    "english": "play",
                    "turkish": "oynamak"
                  },
                  {
                    "english": "player",
                    "turkish": "oyuncu"
                  },
                  {
                    "english": "PM",
                    "turkish": "ÖĞLEDEN SONRA"
                  },
                  {
                    "english": "point",
                    "turkish": "nokta"
                  },
                  {
                    "english": "police",
                    "turkish": "polis"
                  },
                  {
                    "english": "policy",
                    "turkish": "politika"
                  },
                  {
                    "english": "political",
                    "turkish": "siyasi"
                  },
                  {
                    "english": "politics",
                    "turkish": "siyaset"
                  },
                  {
                    "english": "poor",
                    "turkish": "fakir"
                  },
                  {
                    "english": "popular",
                    "turkish": "popüler"
                  },
                  {
                    "english": "population",
                    "turkish": "nüfus"
                  },
                  {
                    "english": "position",
                    "turkish": "konum"
                  },
                  {
                    "english": "positive",
                    "turkish": "pozitif"
                  },
                  {
                    "english": "possible",
                    "turkish": "olası"
                  },
                  {
                    "english": "power",
                    "turkish": "güç"
                  },
                  {
                    "english": "practice",
                    "turkish": "pratik"
                  },
                  {
                    "english": "prepare",
                    "turkish": "hazırlanmak"
                  },
                  {
                    "english": "present",
                    "turkish": "Sunmak"
                  },
                  {
                    "english": "president",
                    "turkish": "başkan"
                  },
                  {
                    "english": "pressure",
                    "turkish": "basınç"
                  },
                  {
                    "english": "pretty",
                    "turkish": "tatlı"
                  },
                  {
                    "english": "prevent",
                    "turkish": "önlemek"
                  },
                  {
                    "english": "price",
                    "turkish": "fiyat"
                  },
                  {
                    "english": "private",
                    "turkish": "özel"
                  },
                  {
                    "english": "probably",
                    "turkish": "muhtemelen"
                  },
                  {
                    "english": "problem",
                    "turkish": "sorun"
                  },
                  {
                    "english": "process",
                    "turkish": "işlem"
                  },
                  {
                    "english": "produce",
                    "turkish": "üretmek"
                  },
                  {
                    "english": "product",
                    "turkish": "ürün"
                  },
                  {
                    "english": "production",
                    "turkish": "üretme"
                  },
                  {
                    "english": "professional",
                    "turkish": "profesyonel"
                  },
                  {
                    "english": "professor",
                    "turkish": "profesör"
                  },
                  {
                    "english": "program",
                    "turkish": "programı"
                  },
                  {
                    "english": "project",
                    "turkish": "proje"
                  },
                  {
                    "english": "property",
                    "turkish": "mülk"
                  },
                  {
                    "english": "protect",
                    "turkish": "korumak"
                  },
                  {
                    "english": "prove",
                    "turkish": "kanıtlamak"
                  },
                  {
                    "english": "provide",
                    "turkish": "sağlamak"
                  },
                  {
                    "english": "public",
                    "turkish": "halk"
                  },
                  {
                    "english": "pull",
                    "turkish": "çekmek"
                  },
                  {
                    "english": "purpose",
                    "turkish": "amaç"
                  },
                  {
                    "english": "push",
                    "turkish": "itmek"
                  },
                  {
                    "english": "put",
                    "turkish": "koymak"
                  },
                  {
                    "english": "quality",
                    "turkish": "kalite"
                  },
                  {
                    "english": "question",
                    "turkish": "soru"
                  },
                  {
                    "english": "quickly",
                    "turkish": "hızlıca"
                  },
                  {
                    "english": "quite",
                    "turkish": "epeyce"
                  },
                  {
                    "english": "race",
                    "turkish": "ırk"
                  },
                  {
                    "english": "radio",
                    "turkish": "radyo"
                  },
                  {
                    "english": "raise",
                    "turkish": "artırmak"
                  },
                  {
                    "english": "range",
                    "turkish": "menzil"
                  },
                  {
                    "english": "rate",
                    "turkish": "oran"
                  },
                  {
                    "english": "rather",
                    "turkish": "yerine"
                  },
                  {
                    "english": "reach",
                    "turkish": "ulaşmak"
                  },
                  {
                    "english": "read",
                    "turkish": "Okumak"
                  },
                  {
                    "english": "ready",
                    "turkish": "hazır"
                  },
                  {
                    "english": "real",
                    "turkish": "gerçek"
                  },
                  {
                    "english": "reality",
                    "turkish": "gerçeklik"
                  },
                  {
                    "english": "realize",
                    "turkish": "fark etmek"
                  },
                  {
                    "english": "really",
                    "turkish": "Gerçekten"
                  },
                  {
                    "english": "reason",
                    "turkish": "sebep"
                  },
                  {
                    "english": "receive",
                    "turkish": "almak"
                  },
                  {
                    "english": "recent",
                    "turkish": "son"
                  },
                  {
                    "english": "recently",
                    "turkish": "son zamanlarda"
                  },
                  {
                    "english": "recognize",
                    "turkish": "tanımak"
                  },
                  {
                    "english": "record",
                    "turkish": "kayıt"
                  },
                  {
                    "english": "red",
                    "turkish": "kırmızı"
                  },
                  {
                    "english": "reduce",
                    "turkish": "azaltmak"
                  },
                  {
                    "english": "reflect",
                    "turkish": "yansıtmak"
                  },
                  {
                    "english": "region",
                    "turkish": "bölge"
                  },
                  {
                    "english": "relate",
                    "turkish": "ilgili olmak"
                  },
                  {
                    "english": "relationship",
                    "turkish": "ilişki"
                  },
                  {
                    "english": "religious",
                    "turkish": "din"
                  },
                  {
                    "english": "remain",
                    "turkish": "geriye kalmak"
                  },
                  {
                    "english": "remember",
                    "turkish": "Unutma"
                  },
                  {
                    "english": "remove",
                    "turkish": "kaldırmak"
                  },
                  {
                    "english": "report",
                    "turkish": "rapor"
                  },
                  {
                    "english": "represent",
                    "turkish": "temsil etmek"
                  },
                  {
                    "english": "Republican",
                    "turkish": "Cumhuriyetçi"
                  },
                  {
                    "english": "require",
                    "turkish": "gerekmek"
                  },
                  {
                    "english": "research",
                    "turkish": "araştırma"
                  },
                  {
                    "english": "resource",
                    "turkish": "kaynak"
                  },
                  {
                    "english": "respond",
                    "turkish": "yanıtlamak"
                  },
                  {
                    "english": "response",
                    "turkish": "cevap"
                  },
                  {
                    "english": "responsibility",
                    "turkish": "sorumluluk"
                  },
                  {
                    "english": "rest",
                    "turkish": "dinlenmek"
                  },
                  {
                    "english": "result",
                    "turkish": "sonuç"
                  },
                  {
                    "english": "return",
                    "turkish": "geri dönmek"
                  },
                  {
                    "english": "reveal",
                    "turkish": "ortaya çıkarmak"
                  },
                  {
                    "english": "rich",
                    "turkish": "zengin"
                  },
                  {
                    "english": "right",
                    "turkish": "Sağ"
                  },
                  {
                    "english": "rise",
                    "turkish": "yükselmek"
                  },
                  {
                    "english": "risk",
                    "turkish": "risk"
                  },
                  {
                    "english": "road",
                    "turkish": "yol"
                  },
                  {
                    "english": "rock",
                    "turkish": "kaynak"
                  },
                  {
                    "english": "role",
                    "turkish": "rol"
                  },
                  {
                    "english": "room",
                    "turkish": "oda"
                  },
                  {
                    "english": "rule",
                    "turkish": "kural"
                  },
                  {
                    "english": "run",
                    "turkish": "koşmak"
                  },
                  {
                    "english": "safe",
                    "turkish": "güvenli"
                  },
                  {
                    "english": "same",
                    "turkish": "Aynı"
                  },
                  {
                    "english": "save",
                    "turkish": "kaydetmek"
                  },
                  {
                    "english": "say",
                    "turkish": "söylemek"
                  },
                  {
                    "english": "scene",
                    "turkish": "sahne"
                  },
                  {
                    "english": "school",
                    "turkish": "okul"
                  },
                  {
                    "english": "science",
                    "turkish": "bilim"
                  },
                  {
                    "english": "scientist",
                    "turkish": "bilim adamı"
                  },
                  {
                    "english": "score",
                    "turkish": "Gol"
                  },
                  {
                    "english": "sea",
                    "turkish": "deniz"
                  },
                  {
                    "english": "season",
                    "turkish": "mevsim"
                  },
                  {
                    "english": "seat",
                    "turkish": "koltuk"
                  },
                  {
                    "english": "second",
                    "turkish": "ikinci"
                  },
                  {
                    "english": "section",
                    "turkish": "bölüm"
                  },
                  {
                    "english": "security",
                    "turkish": "güvenlik"
                  },
                  {
                    "english": "see",
                    "turkish": "Görmek"
                  },
                  {
                    "english": "seek",
                    "turkish": "aramak"
                  },
                  {
                    "english": "seem",
                    "turkish": "gözükmek"
                  },
                  {
                    "english": "sell",
                    "turkish": "satmak"
                  },
                  {
                    "english": "send",
                    "turkish": "Göndermek"
                  },
                  {
                    "english": "senior",
                    "turkish": "kıdemli"
                  },
                  {
                    "english": "sense",
                    "turkish": "burun"
                  },
                  {
                    "english": "series",
                    "turkish": "seri"
                  },
                  {
                    "english": "serious",
                    "turkish": "cidden"
                  },
                  {
                    "english": "serve",
                    "turkish": "sert"
                  },
                  {
                    "english": "service",
                    "turkish": "hizmet"
                  },
                  {
                    "english": "set",
                    "turkish": "ayarlamak"
                  },
                  {
                    "english": "seven",
                    "turkish": "Yedi"
                  },
                  {
                    "english": "several",
                    "turkish": "birçok"
                  },
                  {
                    "english": "sex",
                    "turkish": "seks"
                  },
                  {
                    "english": "sexual",
                    "turkish": "cinsel"
                  },
                  {
                    "english": "shake",
                    "turkish": "sallamak"
                  },
                  {
                    "english": "share",
                    "turkish": "paylaşmak"
                  },
                  {
                    "english": "she",
                    "turkish": "o"
                  },
                  {
                    "english": "shoot",
                    "turkish": "film çekmek"
                  },
                  {
                    "english": "short",
                    "turkish": "kısa"
                  },
                  {
                    "english": "shot",
                    "turkish": "atış"
                  },
                  {
                    "english": "should",
                    "turkish": "meli"
                  },
                  {
                    "english": "shoulder",
                    "turkish": "omuz"
                  },
                  {
                    "english": "show",
                    "turkish": "göstermek"
                  },
                  {
                    "english": "side",
                    "turkish": "taraf"
                  },
                  {
                    "english": "sign",
                    "turkish": "imza"
                  },
                  {
                    "english": "significant",
                    "turkish": "önemli"
                  },
                  {
                    "english": "similar",
                    "turkish": "benzer"
                  },
                  {
                    "english": "simple",
                    "turkish": "basit"
                  },
                  {
                    "english": "simply",
                    "turkish": "basitçe"
                  },
                  {
                    "english": "since",
                    "turkish": "o zamandan beri"
                  },
                  {
                    "english": "sing",
                    "turkish": "şarkı söylemek"
                  },
                  {
                    "english": "single",
                    "turkish": "Bekar"
                  },
                  {
                    "english": "sister",
                    "turkish": "kız kardeş"
                  },
                  {
                    "english": "sit",
                    "turkish": "oturmak"
                  },
                  {
                    "english": "site",
                    "turkish": "alan"
                  },
                  {
                    "english": "situation",
                    "turkish": "durum"
                  },
                  {
                    "english": "six",
                    "turkish": "altı"
                  },
                  {
                    "english": "size",
                    "turkish": "boyut"
                  },
                  {
                    "english": "skill",
                    "turkish": "yetenek"
                  },
                  {
                    "english": "skin",
                    "turkish": "deri"
                  },
                  {
                    "english": "small",
                    "turkish": "küçük"
                  },
                  {
                    "english": "smile",
                    "turkish": "gülümsemek"
                  },
                  {
                    "english": "so",
                    "turkish": "Bu yüzden"
                  },
                  {
                    "english": "social",
                    "turkish": "sosyal"
                  },
                  {
                    "english": "society",
                    "turkish": "toplum"
                  },
                  {
                    "english": "soldier",
                    "turkish": "asker"
                  },
                  {
                    "english": "some",
                    "turkish": "bazı"
                  },
                  {
                    "english": "somebody",
                    "turkish": "birisi"
                  },
                  {
                    "english": "someone",
                    "turkish": "birisi"
                  },
                  {
                    "english": "something",
                    "turkish": "bir şey"
                  },
                  {
                    "english": "sometimes",
                    "turkish": "Bazen"
                  },
                  {
                    "english": "son",
                    "turkish": "oğul"
                  },
                  {
                    "english": "song",
                    "turkish": "şarkı"
                  },
                  {
                    "english": "soon",
                    "turkish": "yakında"
                  },
                  {
                    "english": "sort",
                    "turkish": "düzenlemek"
                  },
                  {
                    "english": "sound",
                    "turkish": "ses"
                  },
                  {
                    "english": "source",
                    "turkish": "kaynak"
                  },
                  {
                    "english": "south",
                    "turkish": "güney"
                  },
                  {
                    "english": "southern",
                    "turkish": "güney"
                  },
                  {
                    "english": "space",
                    "turkish": "uzay"
                  },
                  {
                    "english": "speak",
                    "turkish": "konuşmak"
                  },
                  {
                    "english": "special",
                    "turkish": "özel"
                  },
                  {
                    "english": "specific",
                    "turkish": "özel"
                  },
                  {
                    "english": "speech",
                    "turkish": "konuşma"
                  },
                  {
                    "english": "spend",
                    "turkish": "harcamak"
                  },
                  {
                    "english": "sport",
                    "turkish": "spor"
                  },
                  {
                    "english": "spring",
                    "turkish": "bahar"
                  },
                  {
                    "english": "staff",
                    "turkish": "kadro"
                  },
                  {
                    "english": "stage",
                    "turkish": "sahne"
                  },
                  {
                    "english": "stand",
                    "turkish": "durmak"
                  },
                  {
                    "english": "standard",
                    "turkish": "standart"
                  },
                  {
                    "english": "star",
                    "turkish": "yıldız"
                  },
                  {
                    "english": "start",
                    "turkish": "başlangıç"
                  },
                  {
                    "english": "state",
                    "turkish": "durum"
                  },
                  {
                    "english": "statement",
                    "turkish": "ifade"
                  },
                  {
                    "english": "station",
                    "turkish": "istasyon"
                  },
                  {
                    "english": "stay",
                    "turkish": "kalmak"
                  },
                  {
                    "english": "step",
                    "turkish": "adım"
                  },
                  {
                    "english": "still",
                    "turkish": "Hala"
                  },
                  {
                    "english": "stock",
                    "turkish": "stoklamak"
                  },
                  {
                    "english": "stop",
                    "turkish": "durmak"
                  },
                  {
                    "english": "store",
                    "turkish": "mağaza"
                  },
                  {
                    "english": "story",
                    "turkish": "hikaye"
                  },
                  {
                    "english": "strategy",
                    "turkish": "strateji"
                  },
                  {
                    "english": "street",
                    "turkish": "sokak"
                  },
                  {
                    "english": "strong",
                    "turkish": "güçlü"
                  },
                  {
                    "english": "structure",
                    "turkish": "yapı"
                  },
                  {
                    "english": "student",
                    "turkish": "öğrenci"
                  },
                  {
                    "english": "study",
                    "turkish": "çalışmak"
                  },
                  {
                    "english": "stuff",
                    "turkish": "şey"
                  },
                  {
                    "english": "style",
                    "turkish": "stil"
                  },
                  {
                    "english": "subject",
                    "turkish": "ders"
                  },
                  {
                    "english": "success",
                    "turkish": "başarı"
                  },
                  {
                    "english": "successful",
                    "turkish": "başarılı"
                  },
                  {
                    "english": "such",
                    "turkish": "çok"
                  },
                  {
                    "english": "suddenly",
                    "turkish": "Birden"
                  },
                  {
                    "english": "suffer",
                    "turkish": "acı çekmek"
                  },
                  {
                    "english": "suggest",
                    "turkish": "tavsiye etmek"
                  },
                  {
                    "english": "summer",
                    "turkish": "yaz"
                  },
                  {
                    "english": "support",
                    "turkish": "Destek"
                  },
                  {
                    "english": "sure",
                    "turkish": "Elbette"
                  },
                  {
                    "english": "surface",
                    "turkish": "yüzey"
                  },
                  {
                    "english": "system",
                    "turkish": "sistem"
                  },
                  {
                    "english": "table",
                    "turkish": "masa"
                  },
                  {
                    "english": "take",
                    "turkish": "almak"
                  },
                  {
                    "english": "talk",
                    "turkish": "konuşmak"
                  },
                  {
                    "english": "task",
                    "turkish": "görev"
                  },
                  {
                    "english": "tax",
                    "turkish": "vergi"
                  },
                  {
                    "english": "teach",
                    "turkish": "öğretmek"
                  },
                  {
                    "english": "teacher",
                    "turkish": "Öğretmen"
                  },
                  {
                    "english": "team",
                    "turkish": "takım"
                  },
                  {
                    "english": "technology",
                    "turkish": "teknoloji"
                  },
                  {
                    "english": "television",
                    "turkish": "televizyon"
                  },
                  {
                    "english": "tell",
                    "turkish": "söylemek"
                  },
                  {
                    "english": "ten",
                    "turkish": "on"
                  },
                  {
                    "english": "tend",
                    "turkish": "eğilimli olma"
                  },
                  {
                    "english": "term",
                    "turkish": "terim"
                  },
                  {
                    "english": "test",
                    "turkish": "Ölçek"
                  },
                  {
                    "english": "than",
                    "turkish": "hariç"
                  },
                  {
                    "english": "thank",
                    "turkish": "teşekkür etmek"
                  },
                  {
                    "english": "that",
                    "turkish": "O"
                  },
                  {
                    "english": "the",
                    "turkish": "the"
                  },
                  {
                    "english": "their",
                    "turkish": "onların"
                  },
                  {
                    "english": "them",
                    "turkish": "onlara"
                  },
                  {
                    "english": "themselves",
                    "turkish": "kendileri"
                  },
                  {
                    "english": "then",
                    "turkish": "Daha sonra"
                  },
                  {
                    "english": "theory",
                    "turkish": "teori"
                  },
                  {
                    "english": "there",
                    "turkish": "Orası"
                  },
                  {
                    "english": "these",
                    "turkish": "bunlar"
                  },
                  {
                    "english": "they",
                    "turkish": "Onlar"
                  },
                  {
                    "english": "thing",
                    "turkish": "şey"
                  },
                  {
                    "english": "think",
                    "turkish": "düşünmek"
                  },
                  {
                    "english": "third",
                    "turkish": "üçüncü"
                  },
                  {
                    "english": "this",
                    "turkish": "Bu"
                  },
                  {
                    "english": "those",
                    "turkish": "onlar"
                  },
                  {
                    "english": "though",
                    "turkish": "Yine de"
                  },
                  {
                    "english": "thought",
                    "turkish": "düşünce"
                  },
                  {
                    "english": "thousand",
                    "turkish": "bin"
                  },
                  {
                    "english": "threat",
                    "turkish": "tehdit"
                  },
                  {
                    "english": "three",
                    "turkish": "üç"
                  },
                  {
                    "english": "through",
                    "turkish": "başından sonuna kadar"
                  },
                  {
                    "english": "throughout",
                    "turkish": "boyunca"
                  },
                  {
                    "english": "throw",
                    "turkish": "fırlatmak"
                  },
                  {
                    "english": "thus",
                    "turkish": "Böylece"
                  },
                  {
                    "english": "time",
                    "turkish": "zaman"
                  },
                  {
                    "english": "to",
                    "turkish": "ile"
                  },
                  {
                    "english": "today",
                    "turkish": "Bugün"
                  },
                  {
                    "english": "together",
                    "turkish": "birlikte"
                  },
                  {
                    "english": "tonight",
                    "turkish": "bu akşam"
                  },
                  {
                    "english": "too",
                    "turkish": "fazla"
                  },
                  {
                    "english": "top",
                    "turkish": "tepe"
                  },
                  {
                    "english": "total",
                    "turkish": "Toplam"
                  },
                  {
                    "english": "tough",
                    "turkish": "zorlu"
                  },
                  {
                    "english": "toward",
                    "turkish": "karşı"
                  },
                  {
                    "english": "town",
                    "turkish": "şehir"
                  },
                  {
                    "english": "trade",
                    "turkish": "ticaret"
                  },
                  {
                    "english": "traditional",
                    "turkish": "geleneksel"
                  },
                  {
                    "english": "training",
                    "turkish": "eğitim"
                  },
                  {
                    "english": "travel",
                    "turkish": "seyahat"
                  },
                  {
                    "english": "treat",
                    "turkish": "davranmak"
                  },
                  {
                    "english": "treatment",
                    "turkish": "tedavi"
                  },
                  {
                    "english": "tree",
                    "turkish": "ağaç"
                  },
                  {
                    "english": "trial",
                    "turkish": "duruşma"
                  },
                  {
                    "english": "trip",
                    "turkish": "seyahat"
                  },
                  {
                    "english": "trouble",
                    "turkish": "bela"
                  },
                  {
                    "english": "TRUE",
                    "turkish": "doğru"
                  },
                  {
                    "english": "truth",
                    "turkish": "gerçek"
                  },
                  {
                    "english": "try",
                    "turkish": "denemek"
                  },
                  {
                    "english": "turn",
                    "turkish": "dönüş"
                  },
                  {
                    "english": "TV",
                    "turkish": "televizyon"
                  },
                  {
                    "english": "two",
                    "turkish": "iki"
                  },
                  {
                    "english": "type",
                    "turkish": "tip"
                  },
                  {
                    "english": "under",
                    "turkish": "altında"
                  },
                  {
                    "english": "understand",
                    "turkish": "anlamak"
                  },
                  {
                    "english": "unit",
                    "turkish": "birim"
                  },
                  {
                    "english": "until",
                    "turkish": "değin"
                  },
                  {
                    "english": "up",
                    "turkish": "yukarı"
                  },
                  {
                    "english": "upon",
                    "turkish": "üzerine"
                  },
                  {
                    "english": "us",
                    "turkish": "biz"
                  },
                  {
                    "english": "use",
                    "turkish": "kullanmak"
                  },
                  {
                    "english": "usually",
                    "turkish": "genellikle"
                  },
                  {
                    "english": "value",
                    "turkish": "değer"
                  },
                  {
                    "english": "various",
                    "turkish": "çeşitli"
                  },
                  {
                    "english": "very",
                    "turkish": "çok"
                  },
                  {
                    "english": "victim",
                    "turkish": "kurban"
                  },
                  {
                    "english": "view",
                    "turkish": "görüş"
                  },
                  {
                    "english": "violence",
                    "turkish": "şiddet"
                  },
                  {
                    "english": "visit",
                    "turkish": "ziyaret etmek"
                  },
                  {
                    "english": "voice",
                    "turkish": "ses"
                  },
                  {
                    "english": "vote",
                    "turkish": "oy"
                  },
                  {
                    "english": "wait",
                    "turkish": "Beklemek"
                  },
                  {
                    "english": "walk",
                    "turkish": "yürümek"
                  },
                  {
                    "english": "wall",
                    "turkish": "duvar"
                  },
                  {
                    "english": "want",
                    "turkish": "istek"
                  },
                  {
                    "english": "war",
                    "turkish": "savaş"
                  },
                  {
                    "english": "watch",
                    "turkish": "kol saati"
                  },
                  {
                    "english": "water",
                    "turkish": "su"
                  },
                  {
                    "english": "way",
                    "turkish": "yol"
                  },
                  {
                    "english": "we",
                    "turkish": "Biz"
                  },
                  {
                    "english": "weapon",
                    "turkish": "silah"
                  },
                  {
                    "english": "wear",
                    "turkish": "giymek"
                  },
                  {
                    "english": "week",
                    "turkish": "hafta"
                  },
                  {
                    "english": "weight",
                    "turkish": "ağırlık"
                  },
                  {
                    "english": "well",
                    "turkish": "Peki"
                  },
                  {
                    "english": "west",
                    "turkish": "batı"
                  },
                  {
                    "english": "western",
                    "turkish": "batılı"
                  },
                  {
                    "english": "what",
                    "turkish": "Ne"
                  },
                  {
                    "english": "whatever",
                    "turkish": "Her neyse"
                  },
                  {
                    "english": "when",
                    "turkish": "Ne zaman"
                  },
                  {
                    "english": "where",
                    "turkish": "Neresi"
                  },
                  {
                    "english": "whether",
                    "turkish": "ikisinden biri"
                  },
                  {
                    "english": "which",
                    "turkish": "Hangi"
                  },
                  {
                    "english": "while",
                    "turkish": "sırasında"
                  },
                  {
                    "english": "white",
                    "turkish": "beyaz"
                  },
                  {
                    "english": "who",
                    "turkish": "DSÖ"
                  },
                  {
                    "english": "whole",
                    "turkish": "tüm"
                  },
                  {
                    "english": "whom",
                    "turkish": "kime"
                  },
                  {
                    "english": "whose",
                    "turkish": "kimin"
                  },
                  {
                    "english": "why",
                    "turkish": "Neden"
                  },
                  {
                    "english": "wide",
                    "turkish": "geniş"
                  },
                  {
                    "english": "wife",
                    "turkish": "eş"
                  },
                  {
                    "english": "will",
                    "turkish": "irade"
                  },
                  {
                    "english": "win",
                    "turkish": "kazanç"
                  },
                  {
                    "english": "wind",
                    "turkish": "rüzgâr"
                  },
                  {
                    "english": "window",
                    "turkish": "pencere"
                  },
                  {
                    "english": "wish",
                    "turkish": "dilek"
                  },
                  {
                    "english": "with",
                    "turkish": "ile"
                  },
                  {
                    "english": "within",
                    "turkish": "içinde"
                  },
                  {
                    "english": "without",
                    "turkish": "olmadan"
                  },
                  {
                    "english": "woman",
                    "turkish": "kadın"
                  },
                  {
                    "english": "wonder",
                    "turkish": "merak etmek"
                  },
                  {
                    "english": "word",
                    "turkish": "kelime"
                  },
                  {
                    "english": "work",
                    "turkish": "iş"
                  },
                  {
                    "english": "worker",
                    "turkish": "çalışan"
                  },
                  {
                    "english": "world",
                    "turkish": "dünya"
                  },
                  {
                    "english": "worry",
                    "turkish": "endişelenmek"
                  },
                  {
                    "english": "would",
                    "turkish": "istemek"
                  },
                  {
                    "english": "write",
                    "turkish": "yazmak"
                  },
                  {
                    "english": "writer",
                    "turkish": "yazar"
                  },
                  {
                    "english": "wrong",
                    "turkish": "yanlış"
                  },
                  {
                    "english": "yard",
                    "turkish": "bahçe"
                  },
                  {
                    "english": "yeah",
                    "turkish": "Evet"
                  },
                  {
                    "english": "year",
                    "turkish": "yıl"
                  },
                  {
                    "english": "yes",
                    "turkish": "Evet"
                  },
                  {
                    "english": "yet",
                    "turkish": "henüz"
                  },
                  {
                    "english": "you",
                    "turkish": "Sen"
                  },
                  {
                    "english": "young",
                    "turkish": "genç"
                  },
                  {
                    "english": "your",
                    "turkish": "senin"
                  },
                  {
                    "english": "yourself",
                    "turkish": "kendin"
                  }
                ]
        """
    mutating func append() {
        strings.append(topStr)
        strings.append(greetingsStr)
        strings.append(houseStr)
        strings.append(travellingStr)
        strings.append(restaurantStr)
        strings.append(relationshipStr)
        strings.append(hospitalStr)
        strings.append(clothesStr)
        
    }
    
    let names = [ "topWords","greetings","house","travelling","restaurant","relationships","hospital","clothes"
    ]
    
    mutating func saveData() {
        append()
        
        for j in 0..<totalCategory {
            do {
                let json = try JSONSerialization.jsonObject(with:strings[j].data(using:.utf8)!, options: []) as! [[String: Any]]
                for i in 0...json.count - 1
                {
                  db.collection(names[j]).document().setData(json[i])
                }
            } catch  {
                print(error)
            }
        }
    }
        
    
}
