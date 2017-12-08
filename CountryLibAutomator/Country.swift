import Foundation

enum Country: String, EnumCollection {
    case ad
    case ae
    case af
    case ag
    case ai
    case al
    case am
    case ao
    case aq
    case ar
    case `as`
    case at
    case au
    case aw
    case ax
    case az
    case ba
    case bb
    case bd
    case be
    case bf
    case bg
    case bh
    case bi
    case bj
    case bl
    case bm
    case bn
    case bo
    case bq
    case br
    case bs
    case bt
    case bv
    case bw
    case by
    case bz
    case ca
    case cc
    case cd
    case cf
    case cg
    case ch
    case ci
    case ck
    case cl
    case cm
    case cn
    case co
    case cr
    case cu
    case cv
    case cw
    case cx
    case cy
    case cz
    case de
    case dj
    case dk
    case dm
    case `do`
    case dz
    case ec
    case ee
    case eg
    case eh
    case er
    case es
    case et
    case fi
    case fj
    case fk
    case fm
    case fo
    case fr
    case ga
    case gb
    case gd
    case ge
    case gf
    case gg
    case gh
    case gi
    case gl
    case gm
    case gn
    case gp
    case gq
    case gr
    case gs
    case gt
    case gu
    case gw
    case gy
    case hk
    case hm
    case hn
    case hr
    case ht
    case hu
    case id
    case ie
    case il
    case im
    case `in`
    case io
    case iq
    case ir
    case `is`
    case it
    case je
    case jm
    case jo
    case jp
    case ke
    case kg
    case kh
    case ki
    case km
    case kn
    case kp
    case kr
    case kw
    case ky
    case kz
    case la
    case lb
    case lc
    case li
    case lk
    case lr
    case ls
    case lt
    case lu
    case lv
    case ly
    case ma
    case mc
    case md
    case me
    case mf
    case mg
    case mh
    case mk
    case ml
    case mm
    case mn
    case mo
    case mp
    case mq
    case mr
    case ms
    case mt
    case mu
    case mv
    case mw
    case mx
    case my
    case mz
    case na
    case nc
    case ne
    case nf
    case ng
    case ni
    case nl
    case no
    case np
    case nr
    case nu
    case nz
    case om
    case pa
    case pe
    case pf
    case pg
    case ph
    case pk
    case pl
    case pm
    case pn
    case pr
    case ps
    case pt
    case pw
    case py
    case qa
    case re
    case ro
    case rs
    case ru
    case rw
    case sa
    case sb
    case sc
    case sd
    case se
    case sg
    case sh
    case si
    case sj
    case sk
    case sl
    case sm
    case sn
    case so
    case sr
    case ss
    case st
    case sv
    case sx
    case sy
    case sz
    case tc
    case td
    case tf
    case tg
    case th
    case tj
    case tk
    case tl
    case tm
    case tn
    case to
    case tr
    case tt
    case tv
    case tw
    case tz
    case ua
    case ug
    case um
    case us
    case uy
    case uz
    case va
    case vc
    case ve
    case vg
    case vi
    case vn
    case vu
    case wf
    case ws
    case xk
    case ye
    case yt
    case za
    case zm
    case zw

    var iPhoneLanguageName: String {
        let currentLocale = NSLocale.current as NSLocale
        let countryName = currentLocale.displayName(forKey: NSLocale.Key.countryCode, value: self.rawValue)!
        return countryName
    }
    
    var englishName: String {
        let countryInformation = getCountryInformation()
        return countryInformation.englishName
    }
    
    var nativeName: String {
        let countryInformation = getCountryInformation()
        return countryInformation.nativeName
    }
    
    var flag: String {
        let countryInformation = getCountryInformation()
        return countryInformation.flag
    }
    
    var phoneCode: [String] {
        let countryInformation = getCountryInformation()
        return countryInformation.phoneCode
    }
    
    var spokenLanguages: [String] {
        let countryInformation = getCountryInformation()
        return countryInformation.spokenLanguages
    }
    
    private func getCountryInformation() -> (englishName: String, nativeName: String, flag: String, phoneCode: [String], spokenLanguages: [String]) {
        switch self {
        case .ad: return ("Andorra", "Andorra", "🇦🇩", ["+376"], ["ca"])
        case .ae: return ("United Arab Emirates", "دولة الإمارات العربية المتحدة", "🇦🇪", ["+971"], ["ar"])
        case .af: return ("Afghanistan", "افغانستان", "🇦🇫", ["+93"], ["ps", "uz", "tk"])
        case .ag: return ("Antigua and Barbuda", "Antigua and Barbuda", "🇦🇬", ["+1268"], ["en"])
        case .ai: return ("Anguilla", "Anguilla", "🇦🇮", ["+1264"], ["en"])
        case .al: return ("Albania", "Shqipëria", "🇦🇱", ["+355"], ["sq"])
        case .am: return ("Armenia", "Հայաստան", "🇦🇲", ["+374"], ["hy", "ru"])
        case .ao: return ("Angola", "Angola", "🇦🇴", ["+244"], ["pt"])
        case .aq: return ("Antarctica", "Antarctica", "🇦🇶", ["+672"], [])
        case .ar: return ("Argentina", "Argentina", "🇦🇷", ["+54"], ["es", "gn"])
        case .as: return ("American Samoa", "American Samoa", "🇦🇸", ["+1684"], ["en", "sm"])
        case .at: return ("Austria", "Österreich", "🇦🇹", ["+43"], ["de"])
        case .au: return ("Australia", "Australia", "🇦🇺", ["+61"], ["en"])
        case .aw: return ("Aruba", "Aruba", "🇦🇼", ["+297"], ["nl", "pa"])
        case .ax: return ("Åland", "Åland", "🇦🇽", ["+358"], ["sv"])
        case .az: return ("Azerbaijan", "Azərbaycan", "🇦🇿", ["+994"], ["az"])
        case .ba: return ("Bosnia and Herzegovina", "Bosna i Hercegovina", "🇧🇦", ["+387"], ["bs", "hr", "sr"])
        case .bb: return ("Barbados", "Barbados", "🇧🇧", ["+1246"], ["en"])
        case .bd: return ("Bangladesh", "Bangladesh", "🇧🇩", ["+880"], ["bn"])
        case .be: return ("Belgium", "België", "🇧🇪", ["+32"], ["nl", "fr", "de"])
        case .bf: return ("Burkina Faso", "Burkina Faso", "🇧🇫", ["+226"], ["fr", "ff"])
        case .bg: return ("Bulgaria", "България", "🇧🇬", ["+359"], ["bg"])
        case .bh: return ("Bahrain", "‏البحرين", "🇧🇭", ["+973"], ["ar"])
        case .bi: return ("Burundi", "Burundi", "🇧🇮", ["+257"], ["fr", "rn"])
        case .bj: return ("Benin", "Bénin", "🇧🇯", ["+229"], ["fr"])
        case .bl: return ("Saint Barthélemy", "Saint-Barthélemy", "🇧🇱", ["+590"], ["fr"])
        case .bm: return ("Bermuda", "Bermuda", "🇧🇲", ["+1441"], ["en"])
        case .bn: return ("Brunei", "Negara Brunei Darussalam", "🇧🇳", ["+673"], ["ms"])
        case .bo: return ("Bolivia", "Bolivia", "🇧🇴", ["+591"], ["es", "ay", "qu"])
        case .bq: return ("Bonaire", "Bonaire", "🇧🇶", ["+5997"], ["nl"])
        case .br: return ("Brazil", "Brasil", "🇧🇷", ["+55"], ["pt"])
        case .bs: return ("Bahamas", "Bahamas", "🇧🇸", ["+1242"], ["en"])
        case .bt: return ("Bhutan", "ʼbrug-yul", "🇧🇹", ["+975"], ["dz"])
        case .bv: return ("Bouvet Island", "Bouvetøya", "🇧🇻", ["+47"], [])
        case .bw: return ("Botswana", "Botswana", "🇧🇼", ["+267"], ["en", "tn"])
        case .by: return ("Belarus", "Белару́сь", "🇧🇾", ["+375"], ["be", "ru"])
        case .bz: return ("Belize", "Belize", "🇧🇿", ["+501"], ["en", "es"])
        case .ca: return ("Canada", "Canada", "🇨🇦", ["+1"], ["en", "fr"])
        case .cc: return ("Cocos [Keeling] Islands", "Cocos (Keeling) Islands", "🇨🇨", ["+61"], ["en"])
        case .cd: return ("Democratic Republic of the Congo", "République démocratique du Congo", "🇨🇩", ["+243"], ["fr", "ln", "kg", "sw", "lu"])
        case .cf: return ("Central African Republic", "Ködörösêse tî Bêafrîka", "🇨🇫", ["+236"], ["fr", "sg"])
        case .cg: return ("Republic of the Congo", "République du Congo", "🇨🇬", ["+242"], ["fr", "ln"])
        case .ch: return ("Switzerland", "Schweiz", "🇨🇭", ["+41"], ["de", "fr", "it"])
        case .ci: return ("Ivory Coast", "Côte d'Ivoire", "🇨🇮", ["+225"], ["fr"])
        case .ck: return ("Cook Islands", "Cook Islands", "🇨🇰", ["+682"], ["en"])
        case .cl: return ("Chile", "Chile", "🇨🇱", ["+56"], ["es"])
        case .cm: return ("Cameroon", "Cameroon", "🇨🇲", ["+237"], ["en", "fr"])
        case .cn: return ("China", "中国", "🇨🇳", ["+86"], ["zh"])
        case .co: return ("Colombia", "Colombia", "🇨🇴", ["+57"], ["es"])
        case .cr: return ("Costa Rica", "Costa Rica", "🇨🇷", ["+506"], ["es"])
        case .cu: return ("Cuba", "Cuba", "🇨🇺", ["+53"], ["es"])
        case .cv: return ("Cape Verde", "Cabo Verde", "🇨🇻", ["+238"], ["pt"])
        case .cw: return ("Curacao", "Curaçao", "🇨🇼", ["+5999"], ["nl", "pa", "en"])
        case .cx: return ("Christmas Island", "Christmas Island", "🇨🇽", ["+61"], ["en"])
        case .cy: return ("Cyprus", "Κύπρος", "🇨🇾", ["+357"], ["el", "tr", "hy"])
        case .cz: return ("Czech Republic", "Česká republika", "🇨🇿", ["+420"], ["cs", "sk"])
        case .de: return ("Germany", "Deutschland", "🇩🇪", ["+49"], ["de"])
        case .dj: return ("Djibouti", "Djibouti", "🇩🇯", ["+253"], ["fr", "ar"])
        case .dk: return ("Denmark", "Danmark", "🇩🇰", ["+45"], ["da"])
        case .dm: return ("Dominica", "Dominica", "🇩🇲", ["+1767"], ["en"])
        case .do: return ("Dominican Republic", "República Dominicana", "🇩🇴", ["+1809", "+1829", "+1849"], ["es"])
        case .dz: return ("Algeria", "الجزائر", "🇩🇿", ["+213"], ["ar"])
        case .ec: return ("Ecuador", "Ecuador", "🇪🇨", ["+593"], ["es"])
        case .ee: return ("Estonia", "Eesti", "🇪🇪", ["+372"], ["et"])
        case .eg: return ("Egypt", "مصر‎", "🇪🇬", ["+20"], ["ar"])
        case .eh: return ("Western Sahara", "الصحراء الغربية", "🇪🇭", ["+212"], ["es"])
        case .er: return ("Eritrea", "ኤርትራ", "🇪🇷", ["+291"], ["ti", "ar", "en"])
        case .es: return ("Spain", "España", "🇪🇸", ["+34"], ["es", "eu", "ca", "gl", "oc"])
        case .et: return ("Ethiopia", "ኢትዮጵያ", "🇪🇹", ["+251"], ["am"])
        case .fi: return ("Finland", "Suomi", "🇫🇮", ["+358"], ["fi", "sv"])
        case .fj: return ("Fiji", "Fiji", "🇫🇯", ["+679"], ["en", "fj", "hi", "ur"])
        case .fk: return ("Falkland Islands", "Falkland Islands", "🇫🇰", ["+500"], ["en"])
        case .fm: return ("Micronesia", "Micronesia", "🇫🇲", ["+691"], ["en"])
        case .fo: return ("Faroe Islands", "Føroyar", "🇫🇴", ["+298"], ["fo"])
        case .fr: return ("France", "France", "🇫🇷", ["+33"], ["fr"])
        case .ga: return ("Gabon", "Gabon", "🇬🇦", ["+241"], ["fr"])
        case .gb: return ("United Kingdom", "United Kingdom", "🇬🇧", ["+44"], ["en"])
        case .gd: return ("Grenada", "Grenada", "🇬🇩", ["+1473"], ["en"])
        case .ge: return ("Georgia", "საქართველო", "🇬🇪", ["+995"], ["ka"])
        case .gf: return ("French Guiana", "Guyane française", "🇬🇫", ["+594"], ["fr"])
        case .gg: return ("Guernsey", "Guernsey", "🇬🇬", ["+44"], ["en", "fr"])
        case .gh: return ("Ghana", "Ghana", "🇬🇭", ["+233"], ["en"])
        case .gi: return ("Gibraltar", "Gibraltar", "🇬🇮", ["+350"], ["en"])
        case .gl: return ("Greenland", "Kalaallit Nunaat", "🇬🇱", ["+299"], ["kl"])
        case .gm: return ("Gambia", "Gambia", "🇬🇲", ["+220"], ["en"])
        case .gn: return ("Guinea", "Guinée", "🇬🇳", ["+224"], ["fr", "ff"])
        case .gp: return ("Guadeloupe", "Guadeloupe", "🇬🇵", ["+590"], ["fr"])
        case .gq: return ("Equatorial Guinea", "Guinea Ecuatorial", "🇬🇶", ["+240"], ["es", "fr"])
        case .gr: return ("Greece", "Ελλάδα", "🇬🇷", ["+30"], ["el"])
        case .gs: return ("South Georgia and the South Sandwich Islands", "South Georgia", "🇬🇸", ["+500"], ["en"])
        case .gt: return ("Guatemala", "Guatemala", "🇬🇹", ["+502"], ["es"])
        case .gu: return ("Guam", "Guam", "🇬🇺", ["+1671"], ["en", "ch", "es"])
        case .gw: return ("Guinea-Bissau", "Guiné-Bissau", "🇬🇼", ["+245"], ["pt"])
        case .gy: return ("Guyana", "Guyana", "🇬🇾", ["+592"], ["en"])
        case .hk: return ("Hong Kong", "香港", "🇭🇰", ["+852"], ["zh", "en"])
        case .hm: return ("Heard Island and McDonald Islands", "Heard Island and McDonald Islands", "🇭🇲", ["+61"], ["en"])
        case .hn: return ("Honduras", "Honduras", "🇭🇳", ["+504"], ["es"])
        case .hr: return ("Croatia", "Hrvatska", "🇭🇷", ["+385"], ["hr"])
        case .ht: return ("Haiti", "Haïti", "🇭🇹", ["+509"], ["fr", "ht"])
        case .hu: return ("Hungary", "Magyarország", "🇭🇺", ["+36"], ["hu"])
        case .id: return ("Indonesia", "Indonesia", "🇮🇩", ["+62"], ["id"])
        case .ie: return ("Ireland", "Éire", "🇮🇪", ["+353"], ["ga", "en"])
        case .il: return ("Israel", "יִשְׂרָאֵל", "🇮🇱", ["+972"], ["he", "ar"])
        case .im: return ("Isle of Man", "Isle of Man", "🇮🇲", ["+44"], ["en", "gv"])
        case .in: return ("India", "भारत", "🇮🇳", ["+91"], ["hi", "en"])
        case .io: return ("British Indian Ocean Territory", "British Indian Ocean Territory", "🇮🇴", ["+246"], ["en"])
        case .iq: return ("Iraq", "العراق", "🇮🇶", ["+964"], ["ar", "ku"])
        case .ir: return ("Iran", "ایران", "🇮🇷", ["+98"], ["fa"])
        case .is: return ("Iceland", "Ísland", "🇮🇸", ["+354"], ["is"])
        case .it: return ("Italy", "Italia", "🇮🇹", ["+39"], ["it"])
        case .je: return ("Jersey", "Jersey", "🇯🇪", ["+44"], ["en", "fr"])
        case .jm: return ("Jamaica", "Jamaica", "🇯🇲", ["+1876"], ["en"])
        case .jo: return ("Jordan", "الأردن", "🇯🇴", ["+962"], ["ar"])
        case .jp: return ("Japan", "日本", "🇯🇵", ["+81"], ["ja"])
        case .ke: return ("Kenya", "Kenya", "🇰🇪", ["+254"], ["en", "sw"])
        case .kg: return ("Kyrgyzstan", "Кыргызстан", "🇰🇬", ["+996"], ["ky", "ru"])
        case .kh: return ("Cambodia", "Kâmpŭchéa", "🇰🇭", ["+855"], ["km"])
        case .ki: return ("Kiribati", "Kiribati", "🇰🇮", ["+686"], ["en"])
        case .km: return ("Comoros", "Komori", "🇰🇲", ["+269"], ["ar", "fr"])
        case .kn: return ("Saint Kitts and Nevis", "Saint Kitts and Nevis", "🇰🇳", ["+1869"], ["en"])
        case .kp: return ("North Korea", "북한", "🇰🇵", ["+850"], ["ko"])
        case .kr: return ("South Korea", "대한민국", "🇰🇷", ["+82"], ["ko"])
        case .kw: return ("Kuwait", "الكويت", "🇰🇼", ["+965"], ["ar"])
        case .ky: return ("Cayman Islands", "Cayman Islands", "🇰🇾", ["+1345"], ["en"])
        case .kz: return ("Kazakhstan", "Қазақстан", "🇰🇿", ["+76", "+77"], ["kk", "ru"])
        case .la: return ("Laos", "ສປປລາວ", "🇱🇦", ["+856"], ["lo"])
        case .lb: return ("Lebanon", "لبنان", "🇱🇧", ["+961"], ["ar", "fr"])
        case .lc: return ("Saint Lucia", "Saint Lucia", "🇱🇨", ["+1758"], ["en"])
        case .li: return ("Liechtenstein", "Liechtenstein", "🇱🇮", ["+423"], ["de"])
        case .lk: return ("Sri Lanka", "śrī laṃkāva", "🇱🇰", ["+94"], ["si", "ta"])
        case .lr: return ("Liberia", "Liberia", "🇱🇷", ["+231"], ["en"])
        case .ls: return ("Lesotho", "Lesotho", "🇱🇸", ["+266"], ["en", "st"])
        case .lt: return ("Lithuania", "Lietuva", "🇱🇹", ["+370"], ["lt"])
        case .lu: return ("Luxembourg", "Luxembourg", "🇱🇺", ["+352"], ["fr", "de", "lb"])
        case .lv: return ("Latvia", "Latvija", "🇱🇻", ["+371"], ["lv"])
        case .ly: return ("Libya", "‏ليبيا", "🇱🇾", ["+218"], ["ar"])
        case .ma: return ("Morocco", "المغرب", "🇲🇦", ["+212"], ["ar"])
        case .mc: return ("Monaco", "Monaco", "🇲🇨", ["+377"], ["fr"])
        case .md: return ("Moldova", "Moldova", "🇲🇩", ["+373"], ["ro"])
        case .me: return ("Montenegro", "Црна Гора", "🇲🇪", ["+382"], ["sr", "bs", "sq", "hr"])
        case .mf: return ("Saint Martin", "Saint-Martin", "🇲🇫", ["+590"], ["en", "fr", "nl"])
        case .mg: return ("Madagascar", "Madagasikara", "🇲🇬", ["+261"], ["fr", "mg"])
        case .mh: return ("Marshall Islands", "M̧ajeļ", "🇲🇭", ["+692"], ["en", "mh"])
        case .mk: return ("Macedonia", "Македонија", "🇲🇰", ["+389"], ["mk"])
        case .ml: return ("Mali", "Mali", "🇲🇱", ["+223"], ["fr"])
        case .mm: return ("Myanmar [Burma]", "Myanma", "🇲🇲", ["+95"], ["my"])
        case .mn: return ("Mongolia", "Монгол улс", "🇲🇳", ["+976"], ["mn"])
        case .mo: return ("Macao", "澳門", "🇲🇴", ["+853"], ["zh", "pt"])
        case .mp: return ("Northern Mariana Islands", "Northern Mariana Islands", "🇲🇵", ["+1670"], ["en", "ch"])
        case .mq: return ("Martinique", "Martinique", "🇲🇶", ["+596"], ["fr"])
        case .mr: return ("Mauritania", "موريتانيا", "🇲🇷", ["+222"], ["ar"])
        case .ms: return ("Montserrat", "Montserrat", "🇲🇸", ["+1664"], ["en"])
        case .mt: return ("Malta", "Malta", "🇲🇹", ["+356"], ["mt", "en"])
        case .mu: return ("Mauritius", "Maurice", "🇲🇺", ["+230"], ["en"])
        case .mv: return ("Maldives", "Maldives", "🇲🇻", ["+960"], ["dv"])
        case .mw: return ("Malawi", "Malawi", "🇲🇼", ["+265"], ["en", "ny"])
        case .mx: return ("Mexico", "México", "🇲🇽", ["+52"], ["es"])
        case .my: return ("Malaysia", "Malaysia", "🇲🇾", ["+60"], [])
        case .mz: return ("Mozambique", "Moçambique", "🇲🇿", ["+258"], ["pt"])
        case .na: return ("Namibia", "Namibia", "🇳🇦", ["+264"], ["en", "af"])
        case .nc: return ("New Caledonia", "Nouvelle-Calédonie", "🇳🇨", ["+687"], ["fr"])
        case .ne: return ("Niger", "Niger", "🇳🇪", ["+227"], ["fr"])
        case .nf: return ("Norfolk Island", "Norfolk Island", "🇳🇫", ["+672"], ["en"])
        case .ng: return ("Nigeria", "Nigeria", "🇳🇬", ["+234"], ["en"])
        case .ni: return ("Nicaragua", "Nicaragua", "🇳🇮", ["+505"], ["es"])
        case .nl: return ("Netherlands", "Nederland", "🇳🇱", ["+31"], ["nl"])
        case .no: return ("Norway", "Norge", "🇳🇴", ["+47"], ["no", "nb", "nn"])
        case .np: return ("Nepal", "नपल", "🇳🇵", ["+977"], ["ne"])
        case .nr: return ("Nauru", "Nauru", "🇳🇷", ["+674"], ["en", "na"])
        case .nu: return ("Niue", "Niuē", "🇳🇺", ["+683"], ["en"])
        case .nz: return ("New Zealand", "New Zealand", "🇳🇿", ["+64"], ["en", "mi"])
        case .om: return ("Oman", "عمان", "🇴🇲", ["+968"], ["ar"])
        case .pa: return ("Panama", "Panamá", "🇵🇦", ["+507"], ["es"])
        case .pe: return ("Peru", "Perú", "🇵🇪", ["+51"], ["es"])
        case .pf: return ("French Polynesia", "Polynésie française", "🇵🇫", ["+689"], ["fr"])
        case .pg: return ("Papua New Guinea", "Papua Niugini", "🇵🇬", ["+675"], ["en"])
        case .ph: return ("Philippines", "Pilipinas", "🇵🇭", ["+63"], ["en"])
        case .pk: return ("Pakistan", "Pakistan", "🇵🇰", ["+92"], ["en", "ur"])
        case .pl: return ("Poland", "Polska", "🇵🇱", ["+48"], ["pl"])
        case .pm: return ("Saint Pierre and Miquelon", "Saint-Pierre-et-Miquelon", "🇵🇲", ["+508"], ["fr"])
        case .pn: return ("Pitcairn Islands", "Pitcairn Islands", "🇵🇳", ["+64"], ["en"])
        case .pr: return ("Puerto Rico", "Puerto Rico", "🇵🇷", ["+1787", "+1939"], ["es", "en"])
        case .ps: return ("Palestine", "فلسطين", "🇵🇸", ["+970"], ["ar"])
        case .pt: return ("Portugal", "Portugal", "🇵🇹", ["+351"], ["pt"])
        case .pw: return ("Palau", "Palau", "🇵🇼", ["+680"], ["en"])
        case .py: return ("Paraguay", "Paraguay", "🇵🇾", ["+595"], ["es", "gn"])
        case .qa: return ("Qatar", "قطر", "🇶🇦", ["+974"], ["ar"])
        case .re: return ("Réunion", "La Réunion", "🇷🇪", ["+262"], ["fr"])
        case .ro: return ("Romania", "România", "🇷🇴", ["+40"], ["ro"])
        case .rs: return ("Serbia", "Србија", "🇷🇸", ["+381"], ["sr"])
        case .ru: return ("Russia", "Россия", "🇷🇺", ["+7"], ["ru"])
        case .rw: return ("Rwanda", "Rwanda", "🇷🇼", ["+250"], ["rw", "en", "fr"])
        case .sa: return ("Saudi Arabia", "العربية السعودية", "🇸🇦", ["+966"], ["ar"])
        case .sb: return ("Solomon Islands", "Solomon Islands", "🇸🇧", ["+677"], ["en"])
        case .sc: return ("Seychelles", "Seychelles", "🇸🇨", ["+248"], ["fr", "en"])
        case .sd: return ("Sudan", "السودان", "🇸🇩", ["+249"], ["ar", "en"])
        case .se: return ("Sweden", "Sverige", "🇸🇪", ["+46"], ["sv"])
        case .sg: return ("Singapore", "Singapore", "🇸🇬", ["+65"], ["en", "ms", "ta", "zh"])
        case .sh: return ("Saint Helena", "Saint Helena", "🇸🇭", ["+290"], ["en"])
        case .si: return ("Slovenia", "Slovenija", "🇸🇮", ["+386"], ["sl"])
        case .sj: return ("Svalbard and Jan Mayen", "Svalbard og Jan Mayen", "🇸🇯", ["+4779"], ["no"])
        case .sk: return ("Slovakia", "Slovensko", "🇸🇰", ["+421"], ["sk"])
        case .sl: return ("Sierra Leone", "Sierra Leone", "🇸🇱", ["+232"], ["en"])
        case .sm: return ("San Marino", "San Marino", "🇸🇲", ["+378"], ["it"])
        case .sn: return ("Senegal", "Sénégal", "🇸🇳", ["+221"], ["fr"])
        case .so: return ("Somalia", "Soomaaliya", "🇸🇴", ["+252"], ["so", "ar"])
        case .sr: return ("Suriname", "Suriname", "🇸🇷", ["+597"], ["nl"])
        case .ss: return ("South Sudan", "South Sudan", "🇸🇸", ["+211"], ["en"])
        case .st: return ("São Tomé and Príncipe", "São Tomé e Príncipe", "🇸🇹", ["+239"], ["pt"])
        case .sv: return ("El Salvador", "El Salvador", "🇸🇻", ["+503"], ["es"])
        case .sx: return ("Sint Maarten", "Sint Maarten", "🇸🇽", ["+1721"], ["nl", "en"])
        case .sy: return ("Syria", "سوريا", "🇸🇾", ["+963"], ["ar"])
        case .sz: return ("Swaziland", "Swaziland", "🇸🇿", ["+268"], ["en", "ss"])
        case .tc: return ("Turks and Caicos Islands", "Turks and Caicos Islands", "🇹🇨", ["+1649"], ["en"])
        case .td: return ("Chad", "Tchad", "🇹🇩", ["+235"], ["fr", "ar"])
        case .tf: return ("French Southern Territories", "Territoire des Terres australes et antarctiques fr", "🇹🇫", ["+262"], ["fr"])
        case .tg: return ("Togo", "Togo", "🇹🇬", ["+228"], ["fr"])
        case .th: return ("Thailand", "ประเทศไทย", "🇹🇭", ["+66"], ["th"])
        case .tj: return ("Tajikistan", "Тоҷикистон", "🇹🇯", ["+992"], ["tg", "ru"])
        case .tk: return ("Tokelau", "Tokelau", "🇹🇰", ["+690"], ["en"])
        case .tl: return ("East Timor", "Timor-Leste", "🇹🇱", ["+670"], ["pt"])
        case .tm: return ("Turkmenistan", "Türkmenistan", "🇹🇲", ["+993"], ["tk", "ru"])
        case .tn: return ("Tunisia", "تونس", "🇹🇳", ["+216"], ["ar"])
        case .to: return ("Tonga", "Tonga", "🇹🇴", ["+676"], ["en", "to"])
        case .tr: return ("Turkey", "Türkiye", "🇹🇷", ["+90"], ["tr"])
        case .tt: return ("Trinidad and Tobago", "Trinidad and Tobago", "🇹🇹", ["+1868"], ["en"])
        case .tv: return ("Tuvalu", "Tuvalu", "🇹🇻", ["+688"], ["en"])
        case .tw: return ("Taiwan", "臺灣", "🇹🇼", ["+886"], ["zh"])
        case .tz: return ("Tanzania", "Tanzania", "🇹🇿", ["+255"], ["sw", "en"])
        case .ua: return ("Ukraine", "Україна", "🇺🇦", ["+380"], ["uk"])
        case .ug: return ("Uganda", "Uganda", "🇺🇬", ["+256"], ["en", "sw"])
        case .um: return ("U.S. Minor Outlying Islands", "United States Minor Outlying Islands", "🇺🇲", ["+1"], ["en"])
        case .us: return ("United States", "United States", "🇺🇸", ["+1"], ["en"])
        case .uy: return ("Uruguay", "Uruguay", "🇺🇾", ["+598"], ["es"])
        case .uz: return ("Uzbekistan", "O‘zbekiston", "🇺🇿", ["+998"], ["uz", "ru"])
        case .va: return ("Vatican City", "Vaticano", "🇻🇦", ["+39066", "+379"], ["it", "la"])
        case .vc: return ("Saint Vincent and the Grenadines", "Saint Vincent and the Grenadines", "🇻🇨", ["+1784"], ["en"])
        case .ve: return ("Venezuela", "Venezuela", "🇻🇪", ["+58"], ["es"])
        case .vg: return ("British Virgin Islands", "British Virgin Islands", "🇻🇬", ["+1284"], ["en"])
        case .vi: return ("U.S. Virgin Islands", "United States Virgin Islands", "🇻🇮", ["+1340"], ["en"])
        case .vn: return ("Vietnam", "Việt Nam", "🇻🇳", ["+84"], ["vi"])
        case .vu: return ("Vanuatu", "Vanuatu", "🇻🇺", ["+678"], ["bi", "en", "fr"])
        case .wf: return ("Wallis and Futuna", "Wallis et Futuna", "🇼🇫", ["+681"], ["fr"])
        case .ws: return ("Samoa", "Samoa", "🇼🇸", ["+685"], ["sm", "en"])
        case .xk: return ("Kosovo", "Republika e Kosovës", "🇽🇰", ["+377", "+381", "+386"], ["sq", "sr"])
        case .ye: return ("Yemen", "اليَمَن", "🇾🇪", ["+967"], ["ar"])
        case .yt: return ("Mayotte", "Mayotte", "🇾🇹", ["+262"], ["fr"])
        case .za: return ("South Africa", "South Africa", "🇿🇦", ["+27"], ["af", "en", "nr", "st", "ss", "tn", "ts", "ve", "xh", "zu"])
        case .zm: return ("Zambia", "Zambia", "🇿🇲", ["+260"], ["en"])
        case .zw: return ("Zimbabwe", "Zimbabwe", "🇿🇼", ["+263"], ["en", "sn", "nd"])
        }
    }
}

protocol EnumCollection : Hashable {}
extension EnumCollection {
    static func cases() -> AnySequence<Self> {
        typealias S = Self
        return AnySequence { () -> AnyIterator<S> in
            var raw = 0
            return AnyIterator {
                let current : Self = withUnsafePointer(to: &raw) { $0.withMemoryRebound(to: S.self, capacity: 1) { $0.pointee } }
                guard current.hashValue == raw else { return nil }
                raw += 1
                return current
            }
        }
    }
}
