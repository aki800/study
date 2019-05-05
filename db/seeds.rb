study, exercise, health, hobby = Category.create([{name: "勉強"}, {name: "運動"}, {name: "健康"}, {name: "趣味/創作活動"}])



examination, certification, language, learning, business, other_study = study.children.create([{name: "受験勉強"}, {name: "資格勉強"}, {name: "語学勉強"}, {name: "学問"}, {name: "ビジネス"}, {name: "その他の勉強"}])

muscle, yoga, walking_running, gymnastic, sport,other_exercise = exercise.children.create([{name: "筋トレ"}, {name: "ヨガ"}, {name: "ウォーキング/ランニング"}, {name: "体操"}, {name: "スポーツ"}, {name: "その他の運動"}])

diet, sleep, meal, morning_activity, rehabilitation, beauty, other_health = health.children.create([{name: "ダイエット"}, {name: "睡眠"}, {name: "食事"}, {name: "朝活"}, {name: "リハビリ"}, {name: "美容"}, {name: "その他の健康"}])

book, music_instrument, painting, writing, game, other_hobby = hobby.children.create([{name: "読書"}, {name: "楽器演奏"}, {name: "絵を描く"}, {name: "執筆"}, {name: "その他の趣味/創作活動"}])



high_school_exam, university_exam, other_examination = examination.children.create([{name: "高校受験"}, {name: "大学受験"}, {name: "その他の受験"}])

toeic, toefl, english_proficiency_test, bookkeeping, other_certification = certification.children.create([{name: "TOEIC"}, {name: "TOEFL"}, {name: "英検"}, {name: "簿記"}, {name: "その他の資格"}])


english, chinese, korean, german, french, spanish, russian, other_language = language.children.create([{name: "英語"}, {name: "中国語"}, {name: "韓国語"}, {name: "ドイツ語"}, {name: "フランス語"}, {name: "スペイン語"}, {name: "ロシア語"}, {name: "その他の言語"}])

low_politic_faculty, economy_commerce_faculty, society_media_faculty, international_faculty, literature_humanity_mentality_faculty, foreign_language_faculty, education_welfare_faculty, life_faculty, art_aesthrtic_faculty, health_sport_faculty, science_engineering_faculty, plant_animal_faculty, medicine_faculty, nursing_faculty, other_learning = learning.children.create([{name: "法律/政治"}, {name: "経済/商学"}, {name: "社会/メディア"}, {name: "文学/人文/心理"}, {name: "外国語"}, {name: "教育/福祉"}, {name: "家政/生活"}, {name: "芸術/美学"}, {name: "健康/スポーツ"}, {name: "理/工"}, {name: "農/獣/畜産/水産"}, {name: "医/歯/薬"}, {name: "看護/保険/衛星"}, {name: "その他の学問"}])

soccer, basketball, baseball, golf, tennis, volleyball, other_sport = sport.children.create([{name: "サッカー"}, {name: "バスケットボール"}, {name: "野球"}, {name: "ゴルフ"}, {name: "テニス"}, {name: "バレーボール"}, {name: "その他のスポーツ"}])

programming, communication, self_development, news, employment, other_business = business.children.create([{name: "プログラミング"}, {name: "コミュニケーション"}, {name: "自己啓発"}, {name: "時事"}, {name: "就職/転職"}, {name: "その他のビジネス"}])

literary_work, manual, business_book, technical_book, other_book = ([{name: "文芸書"}, {name: "実用書"}, {name: "ビジネス書"}, {name: "その他の本"}])

piano, guitar, violin, dram, flute, sax, other_musinc_instument = music_instrument.children.create([{name: "ピアノ"}, {name: "ギター"}, {name: "バイオリン"}, {name: "ドラム"}, {name: "フルート"}, {name: "サックス"}, {name: "その他の楽器"}])

picture, illustration, cartoon, other_painting = painting.children.create([{name: "絵画"}, {name: "イラスト"}, {name: "漫画"}, {name: "その他の絵"}])

literary_work_writing, manual_writing, business_book_writing, technical_book_writing, blog_writing, other_writing = writing.children.create([{name: "文芸書執筆"}, {name: "実用書執筆"}, {name: "ビジネス書執筆"}, {name: "専門書執筆"}, {name: "ブログ執筆"}, {name: "その他の執筆"}])
