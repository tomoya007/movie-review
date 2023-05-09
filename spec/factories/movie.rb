FactoryBot.define do
  factory :movie do
    sequence(:title) { |n| "タイトル#{n}" }
    image { File.open("public/uploads/user/avatar/1/20220528223801.jpg") }
    released_year { 2000 }
    screening_time { 1 }
    synposis { "いい映画です。" }
    word { "アクション" }
  end
end

