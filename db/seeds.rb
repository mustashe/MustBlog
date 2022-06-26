30.times do 
    title = Faker::Games::Dota.quote
    body = Faker::Lorem.paragraph(sentence_count: 4, supplemental: true, random_sentences_to_add: 4)
    Question.create title: title, body: body
end