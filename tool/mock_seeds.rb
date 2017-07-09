require 'date'

def mock
  location = lambda { ["東京都 港区"].sample }
  icon = lambda {
    [
      "a",
      "b",
    ].sample
  }
<<MOCK
F(gender: "#{["男性", "女性"].sample}",
  locationName: "#{location.call}",
  works: [
      W(employerName: "#{["株式会社コロプラ", "ヤフー株式会社"].sample}", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
  ],
  educations: [
    F.Eduction(name: "#{["厚木高等学校", "綾瀬高等学校", "生田高等学校"].sample}"),
  ],
  id: "??????????",
  birthday: "#{Random.rand(Date.parse("1970/01/01") .. Date.parse("2000/01/01")).strftime('%m/%d/%Y')}",
  hometownName: "#{location.call}",
  name: "#{["松永 利恵", '嶋村　勝哉', '平野　さき', '丸　麻子', '田崎　愛衣', '倉持　歩夢', '宮岸　裕人','片田　奨平'].sample}",
  iconUrl: "#{icon.call}")
MOCK
end

def mock_all gender, location, work, birthday, hometown, name
<<MOCK
F(gender: "#{gender}",
  locationName: "#{location}",
  works: [
      W(employerName: "#{work[:name]}", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
  ],
  id: "??????????",
  birthday: "#{birthday}",
  hometownName: "#{hometown}",
  name: "#{name}")
MOCK
end

mocks = 100.times.map {|m| mock()}

puts <<MOCK
struct Mock {
    typealias Friend = GraphMe
    static func friends() -> [Friend] {
        typealias F = Friend
        typealias W = F.Work
        typealias E = F.Education
        return [
          #{mocks.join(',')}
          ]
       }
    }
}
MOCK

