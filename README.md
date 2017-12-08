# CountryLibAutomator
Swift script to generate Country enumerator with emoji and local language country name

## How to use it?

Just download [`Country.swift`](https://github.com/munirwanis/CountryLibAutomator/blob/master/CountryLibAutomator/Country.swift) file to start using!

See for yourself:

```swift
let brazil = Country.br

print(brazil.englishName) // Brazil
print(brazil.nativeName) // Brasil
print(brazil.iPhoneLanguageName) // Brazil
print(brazil.flag) // 🇧🇷
print(brazil.phoneCode.first!) // +55
print(brazil.spokenLanguages.first!) // pt
```

And [thanks to user Kametrixom on StackOverflow](https://stackoverflow.com/questions/24007461/how-to-enumerate-an-enum-with-string-type/32429125#32429125) you can use it on a Picker View.

```swift
for country in Country.cases() {
    print("\(country.flag) \(country.englishName) \(country.phoneCode.first!)")
}

//🇦🇩 Andorra +376
//🇦🇪 United Arab Emirates +971
//🇦🇫 Afghanistan +93
//🇦🇬 Antigua and Barbuda +1268
//🇦🇮 Anguilla +1264
//🇦🇱 Albania +355
//🇦🇲 Armenia +374
//🇦🇴 Angola +244
//🇦🇶 Antarctica +672
//🇦🇷 Argentina +54
//🇦🇸 American Samoa +1684
//🇦🇹 Austria +43
//🇦🇺 Australia +61
//🇦🇼 Aruba +297
//🇦🇽 Åland +358
//🇦🇿 Azerbaijan +994
//🇧🇦 Bosnia and Herzegovina +387
//🇧🇧 Barbados +1246
//🇧🇩 Bangladesh +880
//🇧🇪 Belgium +32
//🇧🇫 Burkina Faso +226
//🇧🇬 Bulgaria +359
//🇧🇭 Bahrain +973
//🇧🇮 Burundi +257
//🇧🇯 Benin +229
//🇧🇱 Saint Barthélemy +590
//🇧🇲 Bermuda +1441
//🇧🇳 Brunei +673
//🇧🇴 Bolivia +591
//🇧🇶 Bonaire +5997
//🇧🇷 Brazil +55
//🇧🇸 Bahamas +1242
//🇧🇹 Bhutan +975
//🇧🇻 Bouvet Island +47
//🇧🇼 Botswana +267
//🇧🇾 Belarus +375
//🇧🇿 Belize +501
//🇨🇦 Canada +1
//.......
```

## Why?

I didn't want to use libs just to show country flags.
