require 'date'

# def mock
#   location = lambda { ["東京都 港区"].sample }
#
# <<MOCK
# F(gender: "#{["男性", "女性"].sample}",
#   locationName: "#{location.call}",
#   works: [
#       W(employerName: "#{["株式会社コロプラ", "ヤフー株式会社"].sample}", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
#   ],
#   educations: [
#     F.Eduction(name: "#{["厚木高等学校", "綾瀬高等学校", "生田高等学校"].sample}"),
#   ],
#   id: "??????????",
#   birthday: "#{Random.rand(Date.parse("1970/01/01") .. Date.parse("2000/01/01")).strftime('%m/%d/%Y')}",
#   hometownName: "#{location.call}",
#   name: "#{["松永 利恵", '嶋村　勝哉', '平野　さき', '丸　麻子', '田崎　愛衣', '倉持　歩夢', '宮岸　裕人','片田　奨平'].sample}",
#   iconUrl: "#{icon.call}")
# MOCK
# end

def mock_all gender, location, work, education, birthday, hometown, name
  icon = lambda {
    [
      "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail1.png",
      "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail2.png",
      "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail3.png",
      "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail4.png",
      "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail5.png",
      "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail6.png",
      "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail7.png",
      "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail8.png",
      "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail9.png",
      "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail10.png",
      "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail11.png",
      "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail12.png",
      "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail13.png",
      "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail14.png",
    ].sample
  }

<<MOCK
F(gender: "#{gender}",
  locationName: "#{location}",
  works: [
      W(employerName: "#{work}", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
  ],
  educations: [
    F.Eduction(name: "#{education}"),
  ],
  id: "??????????",
  birthday: "#{birthday}",
  hometownName: "#{hometown}",
  name: "#{name}",
  iconUrl: "#{icon.call}"
  )
MOCK
end


def mock
  location = lambda { ["東京都 港区"].sample }
  gender = ["男性", "女性"].sample
  work = ["株式会社コロプラ", "ヤフー株式会社"].sample
  education = ["厚木高等学校", "綾瀬高等学校", "生田高等学校"].sample
  birthday = Random.rand(Date.parse("1970/01/01") .. Date.parse("2000/01/01")).strftime('%m/%d/%Y')
  hometownName = location.call
  name = ["松永 利恵", '嶋村　勝哉', '平野　さき', '丸　麻子', '田崎　愛衣', '倉持　歩夢', '宮岸　裕人','片田　奨平'].sample

  mock_all(gender, location.call, work, education, birthday, hometownName, name)
end

location = lambda { ["東京都 港区"].sample }
gender = ["男性", "女性"].sample
work = ["株式会社コロプラ", "ヤフー株式会社"].sample
education = ["厚木高等学校", "綾瀬高等学校", "生田高等学校"].sample
birthday = Random.rand(Date.parse("1970/01/01") .. Date.parse("2000/01/01")).strftime('%m/%d/%Y')
hometownName = location.call
name = ["松永 利恵", '嶋村　勝哉', '平野　さき', '丸　麻子', '田崎　愛衣', '倉持　歩夢', '宮岸　裕人','片田　奨平'].sample

mocks = 80.times.map {|m| mock()} + [
  mock_all(gender, location.call, work, education, "04/20/1989", hometownName, name),
  mock_all(gender, location.call, work, education, "04/20/1987", hometownName, name),
  mock_all(gender, location.call, work, education, "04/20/1985", hometownName, name),
  mock_all(gender, location.call, work, education, "04/20/1984", hometownName, name),
  mock_all(gender, location.call, work, education, "04/20/1988", hometownName, name),
  mock_all(gender, location.call, work, education, "04/20/1984", hometownName, name),
]

puts <<MOCK
struct Mock {
    typealias Friend = GraphMe
    static func friends() -> [Friend] {
        typealias F = Friend
        typealias W = F.Work
        typealias E = F.Eduction
        return [
          #{mocks.join(',')}
          ]
       }
    }
}
MOCK

