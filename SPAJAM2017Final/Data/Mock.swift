struct Mock {
    typealias Friend = GraphMe
    static func friends() -> [Friend] {
        typealias F = Friend
        typealias W = F.Work
        typealias E = F.Eduction
        return [
            F(gender: "男性",
              locationName: "東京都 港区",
              works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
              educations: [
                F.Eduction(name: "厚木高等学校")
                ],
              id: "??????????",
              birthday: "09/27/1970",
              hometownName: "東京都 港区",
              name: "丸　麻子",
              iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail3.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "綾瀬高等学校")
                ],
               id: "??????????",
               birthday: "09/02/1998",
               hometownName: "東京都 港区",
               name: "倉持　歩夢",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail3.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "生田高等学校")
                ],
               id: "??????????",
               birthday: "11/18/1996",
               hometownName: "東京都 港区",
               name: "倉持　歩夢",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail2.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "12/06/1998",
               hometownName: "東京都 港区",
               name: "田崎　愛衣",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail8.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "08/08/1998",
               hometownName: "東京都 港区",
               name: "嶋村　勝哉",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail2.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "生田高等学校")
                ],
               id: "??????????",
               birthday: "07/26/1988",
               hometownName: "東京都 港区",
               name: "丸　麻子",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail7.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "10/02/1977",
               hometownName: "東京都 港区",
               name: "平野　さき",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail2.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "生田高等学校")
                ],
               id: "??????????",
               birthday: "09/18/1971",
               hometownName: "東京都 港区",
               name: "平野　さき",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail7.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "生田高等学校")
                ],
               id: "??????????",
               birthday: "04/25/1986",
               hometownName: "東京都 港区",
               name: "松永 利恵",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail3.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "綾瀬高等学校")
                ],
               id: "??????????",
               birthday: "12/31/1981",
               hometownName: "東京都 港区",
               name: "嶋村　勝哉",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail3.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "生田高等学校")
                ],
               id: "??????????",
               birthday: "06/15/1977",
               hometownName: "東京都 港区",
               name: "平野　さき",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail4.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "生田高等学校")
                ],
               id: "??????????",
               birthday: "09/15/1977",
               hometownName: "東京都 港区",
               name: "田崎　愛衣",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail4.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "06/20/1982",
               hometownName: "東京都 港区",
               name: "田崎　愛衣",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail7.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "02/15/1977",
               hometownName: "東京都 港区",
               name: "倉持　歩夢",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail3.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "10/26/1996",
               hometownName: "東京都 港区",
               name: "田崎　愛衣",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail8.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "綾瀬高等学校")
                ],
               id: "??????????",
               birthday: "08/30/1991",
               hometownName: "東京都 港区",
               name: "嶋村　勝哉",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail5.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "綾瀬高等学校")
                ],
               id: "??????????",
               birthday: "04/11/1999",
               hometownName: "東京都 港区",
               name: "嶋村　勝哉",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail8.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "08/03/1977",
               hometownName: "東京都 港区",
               name: "田崎　愛衣",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail4.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "生田高等学校")
                ],
               id: "??????????",
               birthday: "05/21/1973",
               hometownName: "東京都 港区",
               name: "倉持　歩夢",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail3.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "綾瀬高等学校")
                ],
               id: "??????????",
               birthday: "10/09/1999",
               hometownName: "東京都 港区",
               name: "田崎　愛衣",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail5.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "綾瀬高等学校")
                ],
               id: "??????????",
               birthday: "10/01/1982",
               hometownName: "東京都 港区",
               name: "松永 利恵",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail1.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "綾瀬高等学校")
                ],
               id: "??????????",
               birthday: "09/30/1990",
               hometownName: "東京都 港区",
               name: "片田　奨平",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail2.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "生田高等学校")
                ],
               id: "??????????",
               birthday: "05/16/1985",
               hometownName: "東京都 港区",
               name: "丸　麻子",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail8.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "02/03/1975",
               hometownName: "東京都 港区",
               name: "田崎　愛衣",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail3.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "綾瀬高等学校")
                ],
               id: "??????????",
               birthday: "07/31/1980",
               hometownName: "東京都 港区",
               name: "片田　奨平",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail2.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "05/01/1998",
               hometownName: "東京都 港区",
               name: "田崎　愛衣",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail7.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "生田高等学校")
                ],
               id: "??????????",
               birthday: "10/18/1997",
               hometownName: "東京都 港区",
               name: "松永 利恵",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail5.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "生田高等学校")
                ],
               id: "??????????",
               birthday: "10/25/1993",
               hometownName: "東京都 港区",
               name: "片田　奨平",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail4.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "06/06/1990",
               hometownName: "東京都 港区",
               name: "平野　さき",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail6.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "09/16/1978",
               hometownName: "東京都 港区",
               name: "田崎　愛衣",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail4.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "生田高等学校")
                ],
               id: "??????????",
               birthday: "06/13/1999",
               hometownName: "東京都 港区",
               name: "片田　奨平",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail7.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "生田高等学校")
                ],
               id: "??????????",
               birthday: "02/06/1994",
               hometownName: "東京都 港区",
               name: "宮岸　裕人",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail6.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "生田高等学校")
                ],
               id: "??????????",
               birthday: "01/01/1979",
               hometownName: "東京都 港区",
               name: "嶋村　勝哉",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail8.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "綾瀬高等学校")
                ],
               id: "??????????",
               birthday: "12/31/1976",
               hometownName: "東京都 港区",
               name: "片田　奨平",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail4.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "生田高等学校")
                ],
               id: "??????????",
               birthday: "11/09/1989",
               hometownName: "東京都 港区",
               name: "田崎　愛衣",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail7.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "綾瀬高等学校")
                ],
               id: "??????????",
               birthday: "02/14/1998",
               hometownName: "東京都 港区",
               name: "倉持　歩夢",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail7.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "06/09/1987",
               hometownName: "東京都 港区",
               name: "平野　さき",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail1.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "生田高等学校")
                ],
               id: "??????????",
               birthday: "04/20/1981",
               hometownName: "東京都 港区",
               name: "宮岸　裕人",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail4.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "綾瀬高等学校")
                ],
               id: "??????????",
               birthday: "07/26/1986",
               hometownName: "東京都 港区",
               name: "丸　麻子",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail3.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "02/05/1974",
               hometownName: "東京都 港区",
               name: "丸　麻子",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail2.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "04/05/1976",
               hometownName: "東京都 港区",
               name: "倉持　歩夢",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail7.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "生田高等学校")
                ],
               id: "??????????",
               birthday: "01/16/1982",
               hometownName: "東京都 港区",
               name: "嶋村　勝哉",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail5.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "06/10/1982",
               hometownName: "東京都 港区",
               name: "丸　麻子",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail5.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "08/22/1993",
               hometownName: "東京都 港区",
               name: "倉持　歩夢",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail1.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "01/01/1987",
               hometownName: "東京都 港区",
               name: "片田　奨平",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail3.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "綾瀬高等学校")
                ],
               id: "??????????",
               birthday: "03/05/1996",
               hometownName: "東京都 港区",
               name: "倉持　歩夢",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail6.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "12/31/1985",
               hometownName: "東京都 港区",
               name: "田崎　愛衣",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail5.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "08/20/1990",
               hometownName: "東京都 港区",
               name: "片田　奨平",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail8.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "02/11/1998",
               hometownName: "東京都 港区",
               name: "丸　麻子",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail5.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "生田高等学校")
                ],
               id: "??????????",
               birthday: "10/17/1980",
               hometownName: "東京都 港区",
               name: "片田　奨平",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail3.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "05/08/1980",
               hometownName: "東京都 港区",
               name: "嶋村　勝哉",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail5.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "綾瀬高等学校")
                ],
               id: "??????????",
               birthday: "08/23/1993",
               hometownName: "東京都 港区",
               name: "片田　奨平",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail7.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "生田高等学校")
                ],
               id: "??????????",
               birthday: "07/09/1981",
               hometownName: "東京都 港区",
               name: "片田　奨平",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail4.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "綾瀬高等学校")
                ],
               id: "??????????",
               birthday: "08/15/1994",
               hometownName: "東京都 港区",
               name: "丸　麻子",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail5.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "綾瀬高等学校")
                ],
               id: "??????????",
               birthday: "03/28/1973",
               hometownName: "東京都 港区",
               name: "片田　奨平",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail2.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "生田高等学校")
                ],
               id: "??????????",
               birthday: "12/20/1993",
               hometownName: "東京都 港区",
               name: "倉持　歩夢",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail4.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "12/13/1979",
               hometownName: "東京都 港区",
               name: "松永 利恵",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail5.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "08/21/1992",
               hometownName: "東京都 港区",
               name: "田崎　愛衣",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail6.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "11/05/1979",
               hometownName: "東京都 港区",
               name: "平野　さき",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail5.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "05/04/1983",
               hometownName: "東京都 港区",
               name: "嶋村　勝哉",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail8.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "生田高等学校")
                ],
               id: "??????????",
               birthday: "07/08/1974",
               hometownName: "東京都 港区",
               name: "松永 利恵",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail4.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "綾瀬高等学校")
                ],
               id: "??????????",
               birthday: "08/12/1975",
               hometownName: "東京都 港区",
               name: "宮岸　裕人",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail6.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "生田高等学校")
                ],
               id: "??????????",
               birthday: "08/02/1989",
               hometownName: "東京都 港区",
               name: "松永 利恵",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail8.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "生田高等学校")
                ],
               id: "??????????",
               birthday: "07/20/1999",
               hometownName: "東京都 港区",
               name: "松永 利恵",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail8.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "12/29/1986",
               hometownName: "東京都 港区",
               name: "丸　麻子",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail2.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "10/23/1979",
               hometownName: "東京都 港区",
               name: "松永 利恵",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail4.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "03/21/1991",
               hometownName: "東京都 港区",
               name: "嶋村　勝哉",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail4.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "生田高等学校")
                ],
               id: "??????????",
               birthday: "03/14/1975",
               hometownName: "東京都 港区",
               name: "嶋村　勝哉",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail4.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "生田高等学校")
                ],
               id: "??????????",
               birthday: "07/17/1999",
               hometownName: "東京都 港区",
               name: "松永 利恵",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail2.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "02/26/1971",
               hometownName: "東京都 港区",
               name: "丸　麻子",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail4.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "08/22/1975",
               hometownName: "東京都 港区",
               name: "丸　麻子",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail4.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "生田高等学校")
                ],
               id: "??????????",
               birthday: "02/25/1985",
               hometownName: "東京都 港区",
               name: "平野　さき",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail5.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "生田高等学校")
                ],
               id: "??????????",
               birthday: "11/03/1986",
               hometownName: "東京都 港区",
               name: "嶋村　勝哉",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail1.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "生田高等学校")
                ],
               id: "??????????",
               birthday: "07/16/1996",
               hometownName: "東京都 港区",
               name: "丸　麻子",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail6.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "08/15/1978",
               hometownName: "東京都 港区",
               name: "松永 利恵",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail7.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "02/09/1994",
               hometownName: "東京都 港区",
               name: "片田　奨平",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail8.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "06/11/1998",
               hometownName: "東京都 港区",
               name: "丸　麻子",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail1.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "生田高等学校")
                ],
               id: "??????????",
               birthday: "06/18/1987",
               hometownName: "東京都 港区",
               name: "田崎　愛衣",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail3.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "生田高等学校")
                ],
               id: "??????????",
               birthday: "08/20/1980",
               hometownName: "東京都 港区",
               name: "松永 利恵",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail2.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "02/27/1988",
               hometownName: "東京都 港区",
               name: "田崎　愛衣",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail7.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "生田高等学校")
                ],
               id: "??????????",
               birthday: "08/16/1980",
               hometownName: "東京都 港区",
               name: "平野　さき",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail3.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "綾瀬高等学校")
                ],
               id: "??????????",
               birthday: "03/17/1996",
               hometownName: "東京都 港区",
               name: "松永 利恵",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail4.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "生田高等学校")
                ],
               id: "??????????",
               birthday: "07/10/1975",
               hometownName: "東京都 港区",
               name: "丸　麻子",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail8.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "生田高等学校")
                ],
               id: "??????????",
               birthday: "07/07/1991",
               hometownName: "東京都 港区",
               name: "田崎　愛衣",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail6.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "02/16/1987",
               hometownName: "東京都 港区",
               name: "平野　さき",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail2.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "綾瀬高等学校")
                ],
               id: "??????????",
               birthday: "08/08/1984",
               hometownName: "東京都 港区",
               name: "丸　麻子",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail7.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "綾瀬高等学校")
                ],
               id: "??????????",
               birthday: "03/18/1991",
               hometownName: "東京都 港区",
               name: "宮岸　裕人",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail5.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "12/02/1989",
               hometownName: "東京都 港区",
               name: "松永 利恵",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail2.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "02/18/1999",
               hometownName: "東京都 港区",
               name: "平野　さき",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail3.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "綾瀬高等学校")
                ],
               id: "??????????",
               birthday: "05/01/1977",
               hometownName: "東京都 港区",
               name: "嶋村　勝哉",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail1.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "生田高等学校")
                ],
               id: "??????????",
               birthday: "01/15/1988",
               hometownName: "東京都 港区",
               name: "松永 利恵",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail8.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "綾瀬高等学校")
                ],
               id: "??????????",
               birthday: "10/28/1998",
               hometownName: "東京都 港区",
               name: "平野　さき",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail4.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "10/31/1990",
               hometownName: "東京都 港区",
               name: "嶋村　勝哉",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail6.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "綾瀬高等学校")
                ],
               id: "??????????",
               birthday: "06/11/1975",
               hometownName: "東京都 港区",
               name: "平野　さき",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail6.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "生田高等学校")
                ],
               id: "??????????",
               birthday: "07/10/1992",
               hometownName: "東京都 港区",
               name: "松永 利恵",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail4.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "12/06/1973",
               hometownName: "東京都 港区",
               name: "丸　麻子",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail5.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "12/13/1998",
               hometownName: "東京都 港区",
               name: "松永 利恵",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail8.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "生田高等学校")
                ],
               id: "??????????",
               birthday: "01/04/1998",
               hometownName: "東京都 港区",
               name: "平野　さき",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail7.png"), F(gender: "男性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "株式会社コロプラ", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "綾瀬高等学校")
                ],
               id: "??????????",
               birthday: "06/17/1995",
               hometownName: "東京都 港区",
               name: "田崎　愛衣",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail3.png"), F(gender: "女性",
               locationName: "東京都 港区",
               works: [
                W(employerName: "ヤフー株式会社", startDate: "0000-00", id: "?????????", locationName: "東京都 ?区", positionName: "エンジニア")
                ],
               educations: [
                F.Eduction(name: "厚木高等学校")
                ],
               id: "??????????",
               birthday: "03/02/1972",
               hometownName: "東京都 港区",
               name: "田崎　愛衣",
               iconUrl: "https://github.com/tattn/SPAJAM2017-Final/raw/master/assets/thumbnail6.png")
            
        ]
    }
}
