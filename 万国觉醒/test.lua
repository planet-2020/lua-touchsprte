require('tsp')
require('AWZ')
require('ZZBase64')
require("yzm")
require('api')
require('token')


sz = require('sz')
__game = {}
__game.imei = sz.system.serialnumber();
__game.phone_name = getDeviceName()

function update_token(token,idfa,qq)
    local RokToken = llsGameToken();
    local info ={}
    info['token']=token
    info['idfa']=idfa
    info['qq']=qq
    info['s']='Rok.Token'
    _api_rok(info)
end


local a = {
{"A76bI3LDxC5uV0lLTHTkikhV7d1N3E2f",'[  {    "app_token" : "A76bI3LDxC5uV0lLTHTkikhV7d1N3E2f",    "user_password" : "",    "app_uid" : "7786529",    "player_id" : "DD9F9221BA3C9FBE12477446B051A04D",    "nickname" : "游客",    "user_type" : 2  }]',"1417096151-s80660"},
{"ysrVJr3ed2eMtZpghX4PSJ0J15bbrPDi",'[  {    "app_token" : "ysrVJr3ed2eMtZpghX4PSJ0J15bbrPDi",    "user_password" : "",    "app_uid" : "7786787",    "player_id" : "8DED825480636193FC1FE891096867EA",    "nickname" : "游客",    "user_type" : 2  }]',"1794545401-mw276922"},
{"1C7eTtRqErSaEVViXsw5dYc0ODFE4FZi",'[  {    "app_token" : "1C7eTtRqErSaEVViXsw5dYc0ODFE4FZi",    "user_password" : "",    "app_uid" : "7901504",    "player_id" : "48BC73682130ABC9700EBF83835B5755",    "nickname" : "游客",    "user_type" : 2  }]',"2950878744-fs87655761....."},
{"T7Y6tuAjyuBPTxuJQWmq9Po7XJDS4Yfq",'[  {    "app_token" : "T7Y6tuAjyuBPTxuJQWmq9Po7XJDS4Yfq",    "user_password" : "",    "app_uid" : "7901576",    "player_id" : "2213D701CE9D0A1166321E2B1E0EF730",    "nickname" : "游客",    "user_type" : 2  }]',"2951228593-fs87655761....."},
{"OdfLBpRnXXb4dpBZti0vMqB01wdYeCAn",'[  {    "app_token" : "OdfLBpRnXXb4dpBZti0vMqB01wdYeCAn",    "user_password" : "",    "app_uid" : "7901652",    "player_id" : "828BE52E7CDBE53EA98B9B388607D8C4",    "nickname" : "游客",    "user_type" : 2  }]',"2270580835-fs87655761....."},
{"3zxTGgtsjsVCz3xBEiMpPLDFkPIjF2z3",'[  {    "app_token" : "3zxTGgtsjsVCz3xBEiMpPLDFkPIjF2z3",    "user_password" : "",    "app_uid" : "7901851",    "player_id" : "87DA60F1E3F61454BECE8C40B0A3A971",    "nickname" : "游客",    "user_type" : 2  }]',"2950775886-fs87655761....."},
{"c8nKu5j0ORA1mxoNIhHVFd1s8LAEeG55",'[  {    "app_token" : "c8nKu5j0ORA1mxoNIhHVFd1s8LAEeG55",    "user_password" : "",    "app_uid" : "7902029",    "player_id" : "4FA79B84D0DB485C7FD1FD8626CDC256",    "nickname" : "游客",    "user_type" : 2  }]',"2951353058-fs87655761....."},
{"fDypcL12dZ84UF4NaRJDCWCYaF5CdVaj",'[  {    "app_token" : "fDypcL12dZ84UF4NaRJDCWCYaF5CdVaj",    "user_password" : "",    "app_uid" : "7902107",    "player_id" : "8C60E2925BFD5A5AB85C0395A71DB07E",    "nickname" : "游客",    "user_type" : 2  }]',"3128646256-8t8bj00vbp"},
{"JJCjQSjLnKhVijA33pCMXGUKDsqvvxJr",'[  {    "app_token" : "JJCjQSjLnKhVijA33pCMXGUKDsqvvxJr",    "user_password" : "",    "app_uid" : "7902173",    "player_id" : "F721773B2E8B335188AD8E4B762D8FBD",    "nickname" : "游客",    "user_type" : 2  }]',"2556640344-0l246jx2x60"},
{"5rdQX97PI9vFz3pgd972DMdx9CqGWhfp",'[  {    "app_token" : "5rdQX97PI9vFz3pgd972DMdx9CqGWhfp",    "user_password" : "",    "app_uid" : "7902256",    "player_id" : "AD76329675A4FBB7ED7A8BD519039DE2",    "nickname" : "游客",    "user_type" : 2  }]',"2959239916-vjx0n2l2p4"},
{"kWj9SX3osQu3UqvlBN5jyuWHvi2ViTlp",'[  {    "app_token" : "kWj9SX3osQu3UqvlBN5jyuWHvi2ViTlp",    "user_password" : "",    "app_uid" : "7902315",    "player_id" : "5DCD338EE9EEA93641880B1273C5E6D0",    "nickname" : "游客",    "user_type" : 2  }]',"2933147075-z48p00f646"},
{"0mq27xoYU7RoVSvLw53EhPBFB8YcYF2X",'[  {    "app_token" : "0mq27xoYU7RoVSvLw53EhPBFB8YcYF2X",    "user_password" : "",    "app_uid" : "7903015",    "player_id" : "C232851F2E26BE82168780CF6E1C9963",    "nickname" : "游客",    "user_type" : 2  }]',"2124609380-eee123123"},
{"D6hQWPrSRqEljfeZ9wNeVTly3sXcJl5E",'[  {    "app_token" : "D6hQWPrSRqEljfeZ9wNeVTly3sXcJl5E",    "user_password" : "",    "app_uid" : "7903124",    "player_id" : "FA251BD295FF01F51A53F78FD43CFF61",    "nickname" : "游客",    "user_type" : 2  }]',"211002514-qqqq4444"},
{"Rb6BsFvyDgcbgQMLBBiNJO6eitHPLuJN",'[  {    "app_token" : "Rb6BsFvyDgcbgQMLBBiNJO6eitHPLuJN",    "user_password" : "",    "app_uid" : "7903246",    "player_id" : "BD2919839A3FD26D3D4FE0939A92C59B",    "nickname" : "游客",    "user_type" : 2  }]',"3336480561-qqqq4444"},
{"DAeTi6DqmGJbN4Gh5icASNFHGwvSpLHs",'[  {    "app_token" : "DAeTi6DqmGJbN4Gh5icASNFHGwvSpLHs",    "user_password" : "",    "app_uid" : "7903337",    "player_id" : "C695BDEFB858AC695613642105203000",    "nickname" : "游客",    "user_type" : 2  }]',"702752443-qqqq4444"},
{"kQRRV98G1eVa8PdyKycZgvTMvOZQSju2",'[  {    "app_token" : "kQRRV98G1eVa8PdyKycZgvTMvOZQSju2",    "user_password" : "",    "app_uid" : "7903452",    "player_id" : "8E5711AF3AF921FD8255E8FFA6C8B0DF",    "nickname" : "游客",    "user_type" : 2  }]',"2845131975-qqqq4444"},
{"NP2L5xlu2YUL4fy8vrusBdN6KDZ0iV4M",'[  {    "app_token" : "NP2L5xlu2YUL4fy8vrusBdN6KDZ0iV4M",    "user_password" : "",    "app_uid" : "7903562",    "player_id" : "552F929DB85450ED102234E924F65DC7",    "third_party_token" : "9CA92787A79803DF199500CAFCB96039",    "user_type" : 7  },  {    "app_token" : "xXUsz5bXwaXFKswZArV0Uoy7KAnP7FDA",    "user_password" : "",    "app_uid" : "7903744",    "player_id" : "E738414E-150E-4D16-83D1-B7B1B770ECDC",    "nickname" : "游客",    "user_type" : 1  }]',"3477269684-qqqq4444"},
{"gd4OVV40isu8uw9sM40Btdm0rJx8e7Ju",'[  {    "app_token" : "gd4OVV40isu8uw9sM40Btdm0rJx8e7Ju",    "user_password" : "",    "app_uid" : "7903911",    "player_id" : "8DF0712316AAF1DDF1B86745B664000F",    "nickname" : "游客",    "user_type" : 2  }]',"206216221-qqqq4444"},
{"J99TIMbWXrC7GkJeScyjgfPqgh6xLHzb",'[  {    "app_token" : "J99TIMbWXrC7GkJeScyjgfPqgh6xLHzb",    "user_password" : "",    "app_uid" : "7904138",    "player_id" : "A8A36E20481C413E958481FDFAEE4FD1",    "third_party_token" : "D9A7EE6F7B6DA31212CB20DF0727F038",    "user_type" : 7  },  {    "app_token" : "TPjNOaJJiPkd8HnjFVZL2ljuKgYymlSf",    "user_password" : "",    "app_uid" : "7904279",    "player_id" : "347D1820-43D0-45A0-99CF-F8895C884BB0",    "nickname" : "游客",    "user_type" : 1  }]',"2068344064-qqqq4444"},
{"qaSgEveN3vxpYDyF9RCPRszkNNYArbdM",'[  {    "app_token" : "qaSgEveN3vxpYDyF9RCPRszkNNYArbdM",    "user_password" : "",    "app_uid" : "7904369",    "player_id" : "C1AFB5FC98335BAACD732C0D465EDC20",    "third_party_token" : "3E0624768E94838F472959FF8E19BC14",    "user_type" : 7  },  {    "app_token" : "C6qVK1wwcfGXkqiJhGvEg4k8sDYSe1gv",    "user_password" : "",    "app_uid" : "7904711",    "player_id" : "19097189-702D-4787-A9B9-B3C79978FDCD",    "nickname" : "游客",    "user_type" : 1  }]',"2791606298-qqqq8888"},
{"n2EpwmyPgM9cCepyCgyjYSJAVIvmbr4e",'[  {    "app_token" : "n2EpwmyPgM9cCepyCgyjYSJAVIvmbr4e",    "user_password" : "",    "app_uid" : "7904817",    "player_id" : "9492F6E8477031134320B1A421A117B4",    "nickname" : "游客",    "user_type" : 2  }]',"2815123326-qqqq4444"},
{"FWxnV0Ke6SFlxmMrCdDXcFGlWUgWJV8A",'[  {    "app_token" : "FWxnV0Ke6SFlxmMrCdDXcFGlWUgWJV8A",    "user_password" : "",    "app_uid" : "7904927",    "player_id" : "F9E22D0C551DFFF6059C050F1C9187EB",    "nickname" : "游客",    "user_type" : 2  }]',"2658505491-qqqq4444"},
{"kINcKxboecg157MXE8myncBuJcFPsQiy",'[  {    "app_token" : "kINcKxboecg157MXE8myncBuJcFPsQiy",    "user_password" : "",    "app_uid" : "7905033",    "player_id" : "A392A79D13704DF62696168369B8F232",    "nickname" : "游客",    "user_type" : 2  }]',"2781567646-qqqq4444"},
{"OjHDEPa1F1ESeIzOKbffIZ7jOhidFJ7d",'[  {    "app_token" : "OjHDEPa1F1ESeIzOKbffIZ7jOhidFJ7d",    "user_password" : "",    "app_uid" : "7905159",    "player_id" : "A4D904B80EDB57018E1C1CBF75122DAF",    "nickname" : "游客",    "user_type" : 2  }]',"3380901972-qqqq4444"},
{"QAfYPtq6FI6OHhn8murpPGcPhM0lFpmh",'[  {    "app_token" : "QAfYPtq6FI6OHhn8murpPGcPhM0lFpmh",    "user_password" : "",    "app_uid" : "7905263",    "player_id" : "C898BCCD6990B337942A1506415FCB70",    "nickname" : "游客",    "user_type" : 2  }]',"2243298147-qqqq4444"},
{"CiXfhzzRHfyrjXRAEz1D6MNfa8tsSZX5",'[  {    "app_token" : "CiXfhzzRHfyrjXRAEz1D6MNfa8tsSZX5",    "user_password" : "",    "app_uid" : "7905371",    "player_id" : "531F3645E3FEC2522C15366A7C311E20",    "nickname" : "游客",    "user_type" : 2  }]',"3056865622-qqqq8888"},
{"al1Mu0lAydsE63zYFgjFlyKvVkzsHfmq",'[  {    "app_token" : "al1Mu0lAydsE63zYFgjFlyKvVkzsHfmq",    "user_password" : "",    "app_uid" : "7905461",    "player_id" : "93FE250D7652C122AA3C63009244B8D4",    "third_party_token" : "9C174C10C453803DA17E42F3D22DFD3D",    "user_type" : 7  },  {    "app_token" : "rtVcemeJ1nOZr2UsO4Buyff7Ww5kQBqQ",    "user_password" : "",    "app_uid" : "7905668",    "player_id" : "C223F29A-9BB6-4A6C-8D11-0D23CA5BE503",    "nickname" : "游客",    "user_type" : 1  }]',"3614818570-qqqq8888"},
{"nNKIMOQkSzgTuR13YViavLheh7RuShdg",'[  {    "app_token" : "nNKIMOQkSzgTuR13YViavLheh7RuShdg",    "user_password" : "",    "app_uid" : "7905776",    "player_id" : "BD3FADD6C77B5B7B657DB5CAE8CE8866",    "nickname" : "游客",    "user_type" : 2  }]',"3523531613-qqqq1111"},
{"jtlbxNeudEtnIvhWjHVsvEBMMxnMGsum",'[  {    "app_token" : "jtlbxNeudEtnIvhWjHVsvEBMMxnMGsum",    "user_password" : "",    "app_uid" : "7905870",    "player_id" : "09DD437896D09873975BF531483F2423",    "nickname" : "游客",    "user_type" : 2  }]',"3276520856-qqqq1111"},
{"XEm7CXzfphPkjULfNPJfJazUrYfkMPcC",'[  {    "app_token" : "XEm7CXzfphPkjULfNPJfJazUrYfkMPcC",    "user_password" : "",    "app_uid" : "7906010",    "player_id" : "67F8ADEA5C47DD4853D7F0084A8F618E",    "nickname" : "游客",    "user_type" : 2  }]',"3011329167-qqqq1111"},
{"nDB9WYh8bOWmpoN1Wj1dO2RbzeztPOZd",'[  {    "app_token" : "nDB9WYh8bOWmpoN1Wj1dO2RbzeztPOZd",    "user_password" : "",    "app_uid" : "7906184",    "player_id" : "9376FEF4E2D8A6BF2AD24C8A6F162291",    "nickname" : "游客",    "user_type" : 2  }]',"2334338095-qqqq1111"},
{"Zwq17chI1AjKtWzHn9BkbNJqRflrLiDU",'[  {    "app_token" : "Zwq17chI1AjKtWzHn9BkbNJqRflrLiDU",    "user_password" : "",    "app_uid" : "7906333",    "player_id" : "78D409127B7C66949C9709EBC79C6E1C",    "nickname" : "游客",    "user_type" : 2  }]',"1840679964-qqqq1111"},
{"RVTRDeveLr6r1icCRRJNfRwGRRfv4tAb",'[  {    "app_token" : "RVTRDeveLr6r1icCRRJNfRwGRRfv4tAb",    "user_password" : "",    "app_uid" : "7906631",    "player_id" : "A73AE555C37F17920662A9971C618E12",    "nickname" : "游客",    "user_type" : 2  }]',"2598323295-qqqq1111"},
{"YV7F15uhTcp6SMFwWCPGghfLSN3Z1jYy",'[  {    "app_token" : "YV7F15uhTcp6SMFwWCPGghfLSN3Z1jYy",    "user_password" : "",    "app_uid" : "7906752",    "player_id" : "22CAF1106FFDDB5B5C56EC014C89C05E",    "nickname" : "游客",    "user_type" : 2  }]',"1538509788-qqqq1111"},
{"U07KnalklavHbACFvUvZPlL7WTriL13Z",'[  {    "app_token" : "U07KnalklavHbACFvUvZPlL7WTriL13Z",    "user_password" : "",    "app_uid" : "7906821",    "player_id" : "29C0A9F85FFAC2117088387781E326CE",    "nickname" : "游客",    "user_type" : 2  }]',"1706554331-qqqq4444"},
{"qXEQodoGfuizwv0fDMnYPvMpsh9gGtRk",'[  {    "app_token" : "qXEQodoGfuizwv0fDMnYPvMpsh9gGtRk",    "user_password" : "",    "app_uid" : "7906950",    "player_id" : "5E0B65134D6BDE9E91F0F1E0BA293726",    "nickname" : "游客",    "user_type" : 2  }]',"2665722207-qqqq3333"},
{"SUa9cuHEkHkYOv204islko6Qn1CKoozT",'[  {    "app_token" : "SUa9cuHEkHkYOv204islko6Qn1CKoozT",    "user_password" : "",    "app_uid" : "7907046",    "player_id" : "9EE9531796E85A013954854FDE3A4159",    "nickname" : "游客",    "user_type" : 2  }]',"2737809814-qqqq3333"},
{"n5kVOK9nfnpGQMiLMMn2NuyURUDaBOb5",'[  {    "app_token" : "n5kVOK9nfnpGQMiLMMn2NuyURUDaBOb5",    "user_password" : "",    "app_uid" : "7907469",    "player_id" : "CE59C3FD020F3EDDE2F314BF4E60EDA0",    "nickname" : "游客",    "user_type" : 2  }]',"2909716798-qqqq8888"},
{"NkbtIaNZ5Kx4b7VSmGzS0BxXJCKlkP8i",'[  {    "app_token" : "NkbtIaNZ5Kx4b7VSmGzS0BxXJCKlkP8i",    "user_password" : "",    "app_uid" : "7907590",    "player_id" : "8926FBD61EEADE2C243A2034ADB0740A",    "nickname" : "游客",    "user_type" : 2  }]',"3070455340-qqqq8888"},
{"ImlSWNbxMpbrDV7832w8bi9FqhnxPbxY",'[  {    "app_token" : "ImlSWNbxMpbrDV7832w8bi9FqhnxPbxY",    "user_password" : "",    "app_uid" : "7907690",    "player_id" : "21AF4FF9F09DB0C7E439B9D0BB3D9A36",    "nickname" : "游客",    "user_type" : 2  }]',"2724342647-qqqq3333"},
{"rpDrPODygtvjLPL44YUUtLSjo3KtUtmx",'[  {    "app_token" : "rpDrPODygtvjLPL44YUUtLSjo3KtUtmx",    "user_password" : "",    "app_uid" : "7907829",    "player_id" : "55E6E9F9633B37D0BC203D640AFDF49C",    "third_party_token" : "7E8D95612BE319DF3765ED20F2D6EA40",    "user_type" : 7  },  {    "app_token" : "chLKKhyl3atFbUdvvJHu28Wwntcjc2yH",    "user_password" : "",    "app_uid" : "7908022",    "player_id" : "151D3C8B-0CDF-46C2-B53E-3A074EA9BF3C",    "nickname" : "游客",    "user_type" : 1  }]',"2792668515-qqqq3333"},
{"x7tLAuHZS0oKwRb9nsdQmbGnyJgICtAE",'[  {    "app_token" : "x7tLAuHZS0oKwRb9nsdQmbGnyJgICtAE",    "user_password" : "",    "app_uid" : "7908117",    "player_id" : "8C143591DB6DEFC56A63AB6B646D3B83",    "nickname" : "游客",    "user_type" : 2  }]',"2787440294-qqqq3333"},
{"DdaRnSjaLwK7nvPX0QEcKS9Qqzs4rEnz",'[  {    "app_token" : "DdaRnSjaLwK7nvPX0QEcKS9Qqzs4rEnz",    "user_password" : "",    "app_uid" : "7908385",    "player_id" : "2056F1F09570BB2ECBD80186EA02FE44",    "nickname" : "游客",    "user_type" : 2  }]',"1876993914-qqqq8888"},
{"HYsTIu3lLLm0Jbs8u5sSttlC07Zo0rKQ",'[  {    "app_token" : "HYsTIu3lLLm0Jbs8u5sSttlC07Zo0rKQ",    "user_password" : "",    "app_uid" : "7908556",    "player_id" : "8FD4064ADE8084E3253D3BC21CF060E1",    "nickname" : "游客",    "user_type" : 2  }]',"3519961650-qqqq8888"},
{"246ggkmVMMWbqO5Yv7B2W5rxkbcyGeew",'[  {    "app_token" : "246ggkmVMMWbqO5Yv7B2W5rxkbcyGeew",    "user_password" : "",    "app_uid" : "7908658",    "player_id" : "32C255C6450504C858B7A79DF0DBB208",    "nickname" : "游客",    "user_type" : 2  }]',"2891674708-qqqq3333"},
{"8Hc6AR66BetZWDBARMKO10Pt3zGAdGAm",'[  {    "app_token" : "8Hc6AR66BetZWDBARMKO10Pt3zGAdGAm",    "user_password" : "",    "app_uid" : "7908741",    "player_id" : "F5EEE902F303808769FD40CB5830E694",    "nickname" : "游客",    "user_type" : 2  }]',"3609026464-qqqq8888"},
{"BbZt8UvOEFgOIizHbTkY7vhzXcPbyakQ",'[  {    "app_token" : "BbZt8UvOEFgOIizHbTkY7vhzXcPbyakQ",    "user_password" : "",    "app_uid" : "7908846",    "player_id" : "2494942FAE66496293BD4A9E60E5CCF3",    "nickname" : "游客",    "user_type" : 2  }]',"3613842661-qqqq8888"},
{"IfnwTDBrE5bbk2EgBdNfzxg9PQ9WnvO4",'[  {    "app_token" : "IfnwTDBrE5bbk2EgBdNfzxg9PQ9WnvO4",    "user_password" : "",    "app_uid" : "7909487",    "player_id" : "2C75DA748330D8C5FF5C22844FC83750",    "nickname" : "游客",    "user_type" : 2  }]',"3613570641-qqqq8888"},
{"046GfnWAHQrN1TK3A99yCfI5xbqJPvI3",'[  {    "app_token" : "046GfnWAHQrN1TK3A99yCfI5xbqJPvI3",    "user_password" : "",    "app_uid" : "7909587",    "player_id" : "8E9891BB7DC932A40488082A05D093CD",    "nickname" : "游客",    "user_type" : 2  }]',"3179546451-qqqq3333"},
{"vCIbK5ir2SyDNQWLlSkrynuh6IUgG5iD",'[  {    "app_token" : "vCIbK5ir2SyDNQWLlSkrynuh6IUgG5iD",    "user_password" : "",    "app_uid" : "7909739",    "player_id" : "138DB7CDE514094ECE8829AE2333A039",    "nickname" : "游客",    "user_type" : 2  }]',"3340475045-qqqq8888"},
{"B4jAUW7y2FTZdSCopQRmVMvMJ3lSZpfs",'[  {    "app_token" : "B4jAUW7y2FTZdSCopQRmVMvMJ3lSZpfs",    "user_password" : "",    "app_uid" : "7909849",    "player_id" : "9A6C3C101EA58826543D9A39771C0F63",    "nickname" : "游客",    "user_type" : 2  }]',"3418273750-3333eeeee"},
{"GFmaayVUhgJ1SUzKnyYh0IXYrj1cZJLX",'[  {    "app_token" : "GFmaayVUhgJ1SUzKnyYh0IXYrj1cZJLX",    "user_password" : "",    "app_uid" : "7909949",    "player_id" : "751276B128D07B5B738C354A82BC8D9A",    "nickname" : "游客",    "user_type" : 2  }]',"2568356652-qqqq4444"},
{"rtoebzk2T00XxS7c2LRkOCjtwspppqEE",'[  {    "app_token" : "rtoebzk2T00XxS7c2LRkOCjtwspppqEE",    "user_password" : "",    "app_uid" : "7910072",    "player_id" : "6DC6E9D22FA92B3DEB646A2B173960F6",    "nickname" : "游客",    "user_type" : 2  }]',"3495145835-wwww3333"},
{"YAXsuUdPwE1urnsuIvj9kJzjProFNbM7",'[  {    "app_token" : "YAXsuUdPwE1urnsuIvj9kJzjProFNbM7",    "user_password" : "",    "app_uid" : "7910181",    "player_id" : "1803C769C6322E702BE7A98CD337068D",    "nickname" : "游客",    "user_type" : 2  }]',"3446304960-qqqq8888"},
{"FsujNFp3U1BhBfQuokaP54Vt0KTz9iWD",'[  {    "app_token" : "FsujNFp3U1BhBfQuokaP54Vt0KTz9iWD",    "user_password" : "",    "app_uid" : "7910271",    "player_id" : "B8E89734D4520C638CDF41CE18AD3EA6",    "nickname" : "游客",    "user_type" : 2  }]',"3613174833-qqqq3333"},
{"PWrD2xHlkQw7RecxzLDs0kmXquj5HlVN",'[  {    "app_token" : "PWrD2xHlkQw7RecxzLDs0kmXquj5HlVN",    "user_password" : "",    "app_uid" : "7910433",    "player_id" : "04B50D13071BE10341150995D5CB5C96",    "nickname" : "游客",    "user_type" : 2  }]',"3435991549-qqqq8888"},
{"3pTNFAKQFM7LrEecddWXiXdLvFesh43M",'[  {    "app_token" : "3pTNFAKQFM7LrEecddWXiXdLvFesh43M",    "user_password" : "",    "app_uid" : "7910593",    "player_id" : "4BB5552FA2E2FDD825F744A1534B6E83",    "nickname" : "游客",    "user_type" : 2  }]',"2568043691-qqqq8888"},
{"0id7qv0xnb7dS6l049xcXJ36EarQd4nc",'[  {    "app_token" : "0id7qv0xnb7dS6l049xcXJ36EarQd4nc",    "user_password" : "",    "app_uid" : "7910747",    "player_id" : "8F38C2A177F7D98E9661E67E03B2C796",    "nickname" : "游客",    "user_type" : 2  }]',"2714204696-qqqq8888"},
{"ZSI2y6EpO2oGSAENqEgZSkJxJxGI0o57",'[  {    "app_token" : "ZSI2y6EpO2oGSAENqEgZSkJxJxGI0o57",    "user_password" : "",    "app_uid" : "7910851",    "player_id" : "357FCE287CC522F211AC63B66EF87C4C",    "nickname" : "游客",    "user_type" : 2  }]',"3615000878-qqqq8888"},
{"qenDKcCDkIgb1HuD3akAoJOUc9bbHxMN",'[  {    "app_token" : "qenDKcCDkIgb1HuD3akAoJOUc9bbHxMN",    "user_password" : "",    "app_uid" : "7910949",    "player_id" : "0B618683AF3EE4E77BF084107F03DE19",    "nickname" : "游客",    "user_type" : 2  }]',"2913169426-qqqq3333"},
{"HJusHAk4pdDCpcR3ZHqQb5w1qL6lTDEA",'[  {    "app_token" : "HJusHAk4pdDCpcR3ZHqQb5w1qL6lTDEA",    "user_password" : "",    "app_uid" : "7911124",    "player_id" : "48DCCE1052DF3106AFC063F2A82143DA",    "nickname" : "游客",    "user_type" : 2  }]',"166005808-qqqq4444"},
{"FDY8OEjMfPh6Ma39EdrdhhgvFbxWbkML",'[  {    "app_token" : "FDY8OEjMfPh6Ma39EdrdhhgvFbxWbkML",    "user_password" : "",    "app_uid" : "7911276",    "player_id" : "58AA8258DA30BA5A5205FD0C78E98EE4",    "nickname" : "游客",    "user_type" : 2  }]',"3605948151-qqqq3333"},
{"uin2klZcWtBh5yFpSEWb1zQB1mbqEQu8",'[  {    "app_token" : "uin2klZcWtBh5yFpSEWb1zQB1mbqEQu8",    "user_password" : "",    "app_uid" : "7911372",    "player_id" : "2A9C05AAC153856CDF2040C7331BC23E",    "nickname" : "游客",    "user_type" : 2  }]',"2870703006-wwww3333"},
{"EIBuYAVpX7xqTfrpoZFBL65gvuyrBiYt",'[  {    "app_token" : "EIBuYAVpX7xqTfrpoZFBL65gvuyrBiYt",    "user_password" : "",    "app_uid" : "7911484",    "player_id" : "8564984B15E51CE91BE790C2BD74EDAF",    "nickname" : "游客",    "user_type" : 2  }]',"2896809918-wwww3333"},
{"YIIulm5t3KL6qI70Qu5B0vBtpbFzkdwo",'[  {    "app_token" : "YIIulm5t3KL6qI70Qu5B0vBtpbFzkdwo",    "user_password" : "",    "app_uid" : "7911647",    "player_id" : "E10506AA8417B8C5A61B900A7C2B2E8B",    "nickname" : "游客",    "user_type" : 2  }]',"2753478533-qqqq8888"},
{"XuRHlDQzVZDWjqIQSQcxHnPPX2MSxrm7",'[  {    "app_token" : "XuRHlDQzVZDWjqIQSQcxHnPPX2MSxrm7",    "user_password" : "",    "app_uid" : "7911770",    "player_id" : "D5EFA5FC8C0CB70CDB7A54DB88D34D73",    "nickname" : "游客",    "user_type" : 2  }]',"2510458791-qqqq8888"},
{"nWuIZ47vzNtHaeXlrsayV53K8c7RMHWN",'[  {    "app_token" : "nWuIZ47vzNtHaeXlrsayV53K8c7RMHWN",    "user_password" : "",    "app_uid" : "7912114",    "player_id" : "38B5AA9E1400D158F5091C754A0D16F3",    "nickname" : "游客",    "user_type" : 2  }]',"2782685289-qqqq8888"},
{"jV69032E3Fv0P8Vp30fVv7fa5mPMT3Ld",'[  {    "app_token" : "jV69032E3Fv0P8Vp30fVv7fa5mPMT3Ld",    "user_password" : "",    "app_uid" : "7912322",    "player_id" : "A99CC18AF261D2E3B0BC07E2446804CB",    "nickname" : "游客",    "user_type" : 2  }]',"1563057099-qqqq3333"},
{"LKbcXd1rMZ6c3GEcj1tiui6qZdMqtuh8",'[  {    "app_token" : "LKbcXd1rMZ6c3GEcj1tiui6qZdMqtuh8",    "user_password" : "",    "app_uid" : "7912468",    "player_id" : "C41C0FC6E21E45B1576292DD40C13355",    "nickname" : "游客",    "user_type" : 2  }]',"1513466685-qqqq3333"},
{"zJtUgAYCXragYmRvcRslQ8bWCHPEZ9M0",'[  {    "app_token" : "zJtUgAYCXragYmRvcRslQ8bWCHPEZ9M0",    "user_password" : "",    "app_uid" : "7912617",    "player_id" : "FEE6577A0C4CBA7B0F6907205B7BCE35",    "nickname" : "游客",    "user_type" : 2  }]',"309947071-wwww3333"},
{"HV2gMvdIQXmP34IDyt4AtJtlcMT76vMD",'[  {    "app_token" : "HV2gMvdIQXmP34IDyt4AtJtlcMT76vMD",    "user_password" : "",    "app_uid" : "7912740",    "player_id" : "75083FFE460F9F84629B87C5391E23B8",    "nickname" : "游客",    "user_type" : 2  }]',"2982414403-wwww3333"},
{"K4I6j2toI0y2MuMz15ooyN5irHIfuKbP",'[  {    "app_token" : "K4I6j2toI0y2MuMz15ooyN5irHIfuKbP",    "user_password" : "",    "app_uid" : "7912828",    "player_id" : "592D5E0254D36CAF98E7D5C8F9B3958B",    "nickname" : "游客",    "user_type" : 2  }]',"3202776739-wwww3333"},
{"K2X7J47u0V8FtAu6ImFRjZ6bVLHri5jl",'[  {    "app_token" : "K2X7J47u0V8FtAu6ImFRjZ6bVLHri5jl",    "user_password" : "",    "app_uid" : "7912978",    "player_id" : "5FAFC83060F3193FF8384C8334B70825",    "nickname" : "游客",    "user_type" : 2  }]',"3200923120-wwww3333"},
{"AcKjX3ZmHZ3RXuFoQFgGFRgmKErRzQZx",'[  {    "app_token" : "AcKjX3ZmHZ3RXuFoQFgGFRgmKErRzQZx",    "user_password" : "",    "app_uid" : "7913058",    "player_id" : "FD6027FE7C66488ACECC818DECD643D9",    "third_party_token" : "405DF90EB18DD721DDE12B85B03A5B0B",    "user_type" : 7  },  {    "app_token" : "jhFBZ2UCCXsRGyBxW7wp7UhCUhg0exoH",    "user_password" : "",    "app_uid" : "7913224",    "player_id" : "8A5E97D4-BC9F-48F5-A001-1C17D7ACBA9E",    "nickname" : "游客",    "user_type" : 1  }]',"3310848580-wwww3333"},
{"J71NcGXSMoez8nJZd1oRFW7IImb0lUAG",'[  {    "app_token" : "J71NcGXSMoez8nJZd1oRFW7IImb0lUAG",    "user_password" : "",    "app_uid" : "7913310",    "player_id" : "18BDF6CC8A830E0D11B9C4FC065A8D99",    "nickname" : "游客",    "user_type" : 2  }]',"3422097156-wwww3333"},
{"SUBxygTpkQW2JIZZWG6VMapC3YrgAjss",'[  {    "app_token" : "SUBxygTpkQW2JIZZWG6VMapC3YrgAjss",    "user_password" : "",    "app_uid" : "7913423",    "player_id" : "9B1EE8A4AE414B40C18B5CFF89CB9086",    "nickname" : "游客",    "user_type" : 2  }]',"3420555760-wwww3333"},
{"4KTIEUlFLLUYSgYFIsOtQAT0N38FseR0",'[  {    "app_token" : "4KTIEUlFLLUYSgYFIsOtQAT0N38FseR0",    "user_password" : "",    "app_uid" : "7913573",    "player_id" : "E7161DC124A82FBEC4DF2E316E7FEBF4",    "third_party_token" : "9DBE2E3FAB2C1B2E931A9060D0AB6F35",    "user_type" : 7  },  {    "app_token" : "9A4Q8Co89oF7mD96Syon4VbdmUqidHN7",    "user_password" : "",    "app_uid" : "7915821",    "player_id" : "D48982D9-5B4D-422F-A6F8-A90C01A16BA7",    "nickname" : "游客",    "user_type" : 1  }]',"3613149811-qqqq8888"},
{"FUp35sCNyV23dJaVKifrHpyHwFvPHlHE",'[  {    "app_token" : "FUp35sCNyV23dJaVKifrHpyHwFvPHlHE",    "user_password" : "",    "app_uid" : "7916927",    "player_id" : "6AEE7193A9002238F1E38771D7BA2DCC",    "nickname" : "游客",    "user_type" : 2  }]',"2717375244-xy0666119"},
{"FW7WG8djLXwEvwzfePBi3TTkD6wGUCft",'[  {    "app_token" : "FW7WG8djLXwEvwzfePBi3TTkD6wGUCft",    "user_password" : "",    "app_uid" : "7917023",    "player_id" : "72B402F3BD8EF42E4D92198FE428607F",    "nickname" : "游客",    "user_type" : 2  }]',"3011892179-aq9594172"},
{"eFO5Iu8po44I9xOyJ8X3xGU5cbmDGz9F",'[  {    "app_token" : "eFO5Iu8po44I9xOyJ8X3xGU5cbmDGz9F",    "user_password" : "",    "app_uid" : "7917137",    "player_id" : "78A069462205A9D3B3686153B89E7D8D",    "nickname" : "游客",    "user_type" : 2  }]',"3012314914-ej4544039"},
{"u1sYgPey1jhwLkVjbZD0oKP3Li1ybxSa",'[  {    "app_token" : "u1sYgPey1jhwLkVjbZD0oKP3Li1ybxSa",    "user_password" : "",    "app_uid" : "7917258",    "player_id" : "AB6D0E43B9AE29E49A2264263C6355B1",    "nickname" : "游客",    "user_type" : 2  }]',"3012871931-ym4889325"},
{"FeI5tEWfX8tW2cf97fKhagKvmYE8iVHj",'[  {    "app_token" : "FeI5tEWfX8tW2cf97fKhagKvmYE8iVHj",    "user_password" : "",    "app_uid" : "7917354",    "player_id" : "0CE53781DB176F8CDB63A99FA8C4C54F",    "nickname" : "游客",    "user_type" : 2  }]',"3013914500-xuan3278"},
{"7vEixRJBERsX0pPwwGck19no2DW9OK3k",'[  {    "app_token" : "7vEixRJBERsX0pPwwGck19no2DW9OK3k",    "user_password" : "",    "app_uid" : "7917433",    "player_id" : "48D6F2B4418D6C48362EFE646057B1C6",    "nickname" : "游客",    "user_type" : 2  }]',"3014284996-adkhy33023"},
{"EirMiLGC8zsMfgFEIeNTVtvWqEv2IaWC",'[  {    "app_token" : "EirMiLGC8zsMfgFEIeNTVtvWqEv2IaWC",    "user_password" : "",    "app_uid" : "7917708",    "player_id" : "652C60C4ABD5442B6E55274FDB3761C1",    "nickname" : "游客",    "user_type" : 2  }]',"2867408116-mima0718"},
{"X92OlUdyx6QPKLYIGvw6zoK5NjRrNQtW",'[  {    "app_token" : "X92OlUdyx6QPKLYIGvw6zoK5NjRrNQtW",    "user_password" : "",    "app_uid" : "7917816",    "player_id" : "005837E72DD35C0978BDFCA8A8BED04A",    "nickname" : "游客",    "user_type" : 2  }]',"2867950784-jezj4157"},
{"eWCu5kZ1OA1nun66Rrg42lp50Pj62T7e",'[  {    "app_token" : "eWCu5kZ1OA1nun66Rrg42lp50Pj62T7e",    "user_password" : "",    "app_uid" : "7918074",    "player_id" : "365C6D4FE26E638EB55A6C5E523E84CF",    "nickname" : "游客",    "user_type" : 2  }]',"2868809526-123456789q"},
{"Of8g8q1gh9maRV3dot1LZHf6JyE8cmup",'[  {    "app_token" : "Of8g8q1gh9maRV3dot1LZHf6JyE8cmup",    "user_password" : "",    "app_uid" : "7918164",    "player_id" : "7E27CF4674F7D372E4225F37BD8FCEED",    "nickname" : "游客",    "user_type" : 2  }]',"2868853272-aaaa0713"},
{"zuQ14qkVKeu2P13kfaEus4D5o5XbEepR",'[  {    "app_token" : "zuQ14qkVKeu2P13kfaEus4D5o5XbEepR",    "user_password" : "",    "app_uid" : "7918251",    "player_id" : "BEC6326D1247A7E019F2840A975F5253",    "nickname" : "游客",    "user_type" : 2  }]',"2870766303-ch0496205"},
{"lhYcYTNuQ4i22x55fHfszONWRBP9JnOQ",'[  {    "app_token" : "lhYcYTNuQ4i22x55fHfszONWRBP9JnOQ",    "user_password" : "",    "app_uid" : "7918332",    "player_id" : "43C01871832E62723B814711E1B40B2A",    "nickname" : "游客",    "user_type" : 2  }]',"2872055206-aaaa0713"},
{"ChpXb9C5fftv4n0f2BHoj1JsfbulRYPf",'[  {    "app_token" : "ChpXb9C5fftv4n0f2BHoj1JsfbulRYPf",    "user_password" : "",    "app_uid" : "7918404",    "player_id" : "48A6C43587E109CF7D3490F0E0C92D9D",    "nickname" : "游客",    "user_type" : 2  }]',"2872396350-yj9565236"},
{"WSr5COGDuOEmkhL5rwsQqEM5qDFwcBS9",'[  {    "app_token" : "WSr5COGDuOEmkhL5rwsQqEM5qDFwcBS9",    "user_password" : "",    "app_uid" : "7918470",    "player_id" : "AB51864B0DBA9EC4DEC1E6D65343E58F",    "nickname" : "游客",    "user_type" : 2  }]',"2873711710-ds2799949"},
{"zCPFUxilWAlLWVAcFCaDHMcMwJ6PIkOC",'[  {    "app_token" : "zCPFUxilWAlLWVAcFCaDHMcMwJ6PIkOC",    "user_password" : "",    "app_uid" : "7918559",    "player_id" : "FB4ECD5313367F8803D36DDA4DE821DE",    "nickname" : "游客",    "user_type" : 2  }]',"2873802415-qk9525349"},
{"LmFE5LWtaGplDIziJaF9gzub902KevjF",'[  {    "app_token" : "LmFE5LWtaGplDIziJaF9gzub902KevjF",    "user_password" : "",    "app_uid" : "7918647",    "player_id" : "AAA0F4D0689E583C0E9AF5AE0A1E2FFF",    "nickname" : "游客",    "user_type" : 2  }]',"2874438905-evlr4233"},
{"n6wHM9PXbfOaatg1vGNpL1srfhglUN0f",'[  {    "app_token" : "n6wHM9PXbfOaatg1vGNpL1srfhglUN0f",    "user_password" : "",    "app_uid" : "7918740",    "player_id" : "EFAAE4DD3687329DD580848A7C69A558",    "nickname" : "游客",    "user_type" : 2  }]',"2874812878-dt7964546"},
{"JclIjQ2SKzFcZPMkxHfKkOYgLC56Z3K4",'[  {    "app_token" : "JclIjQ2SKzFcZPMkxHfKkOYgLC56Z3K4",    "user_password" : "",    "app_uid" : "7919032",    "player_id" : "B986A8FB32B70FA45573BB5DF7C1C487",    "nickname" : "游客",    "user_type" : 2  }]',"2703831860-aa9983623"},
{"jXlFw6AEjE8UATu6Dgae5rcNlIrKsgEh",'[  {    "app_token" : "jXlFw6AEjE8UATu6Dgae5rcNlIrKsgEh",    "user_password" : "",    "app_uid" : "7919107",    "player_id" : "C6A43C88A97258EF5E21519D28401CF8",    "nickname" : "游客",    "user_type" : 2  }]',"2703952199-yt5538606"},
{"EkSyRPwnJl4nLP3c1ZfE0qxgnXYcHUUh",'[  {    "app_token" : "EkSyRPwnJl4nLP3c1ZfE0qxgnXYcHUUh",    "user_password" : "",    "app_uid" : "7919183",    "player_id" : "A8C347C19DEFBE25F8375EAB08476506",    "nickname" : "游客",    "user_type" : 2  }]',"2703954374-rk4373571"},
{"Y316xrsbtRqmjy9j2AGgyqHGC2MY4QbR",'[  {    "app_token" : "Y316xrsbtRqmjy9j2AGgyqHGC2MY4QbR",    "user_password" : "",    "app_uid" : "7919442",    "player_id" : "4F9B6478F5BCD5794013180DADB1D108",    "nickname" : "游客",    "user_type" : 2  }]',"2704034318-hm4093485"},
{"DWeGjcyEDclLSk4mrPlIdJksAT5WMhda",'[  {    "app_token" : "DWeGjcyEDclLSk4mrPlIdJksAT5WMhda",    "user_password" : "",    "app_uid" : "7919506",    "player_id" : "083DE52CB3764B9C2E92307386555F04",    "nickname" : "游客",    "user_type" : 2  }]',"2704195841-vxbzj77115"},
{"52imHDsEiOEoTwTLK6U8OL55fP9ruEi4",'[  {    "app_token" : "52imHDsEiOEoTwTLK6U8OL55fP9ruEi4",    "user_password" : "",    "app_uid" : "7919609",    "player_id" : "DE35AD3E72E83149246724AAE0249A60",    "nickname" : "游客",    "user_type" : 2  }]',"2704258840-syjl2548"},

}

    
for k,v in ipairs( a )do
    log(v)
    update_token(v[1],v[2],v[3])
end
    
    
    
    
    
