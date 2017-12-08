#!/usr/bin/swift
//
//  main.swift
//  CountryLibAutomator
//
//  Created by Munir Wanis on 07/12/17.
//  Copyright © 2017 Munir Wanis. All rights reserved.
//

import Foundation

struct Countries: Decodable {
    var phone: String
    var name: String
    var native: String
    var emoji: String
    var languages: [String]
}

let fileToRead = "countries.json"
let fileToWrite = "Country.swift"

if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
    
    let fileURL = dir.appendingPathComponent(fileToRead)
    let fileURLToWrite = dir.appendingPathComponent(fileToWrite)
    
    //reading
    do {
        let json = try String(contentsOf: fileURL, encoding: .utf8).data(using: .utf8)
        let countriesUnsorted = try JSONDecoder().decode([String: Countries].self, from: json!)
        let countries = countriesUnsorted.sorted(by: { $0.key < $1.key })
        
        let tab = "    "
        
        // MARK: - Enum declaration
        var countriesEnum = "enum Country: String {\n"
        
        countries.forEach {
            countriesEnum.append("\(tab)case \($0.key.lowercased())\n")
        }
        
        countriesEnum.append("\n")
        
        // MARK: - Variable generation method
        
        countriesEnum.append("\(tab)var iPhoneLanguageName: String {\n")
        countriesEnum.append("\(tab)\(tab)let currentLocale = NSLocale.current as NSLocale\n")
        countriesEnum.append("\(tab)\(tab)let countryName = currentLocale.displayName(forKey: NSLocale.Key.countryCode, value: self.rawValue)!\n")
        countriesEnum.append("\(tab)\(tab)return countryName\n")
        countriesEnum.append("\(tab)}\n\n")
        
        countriesEnum.append("\(tab)var englishName: String {\n")
        countriesEnum.append("\(tab)\(tab)let countryInformation = getCountryInformation()\n")
        countriesEnum.append("\(tab)\(tab)return countryInformation.englishName\n")
        countriesEnum.append("\(tab)}\n\n")
        
        countriesEnum.append("\(tab)var nativeName: String {\n")
        countriesEnum.append("\(tab)\(tab)let countryInformation = getCountryInformation()\n")
        countriesEnum.append("\(tab)\(tab)return countryInformation.nativeName\n")
        countriesEnum.append("\(tab)}\n\n")
        
        countriesEnum.append("\(tab)var flag: String {\n")
        countriesEnum.append("\(tab)\(tab)let countryInformation = getCountryInformation()\n")
        countriesEnum.append("\(tab)\(tab)return countryInformation.flag\n")
        countriesEnum.append("\(tab)}\n\n")
        
        countriesEnum.append("\(tab)var phoneCode: [String] {\n")
        countriesEnum.append("\(tab)\(tab)let countryInformation = getCountryInformation()\n")
        countriesEnum.append("\(tab)\(tab)return countryInformation.phoneCode\n")
        countriesEnum.append("\(tab)}\n\n")
        
        countriesEnum.append("\(tab)var spokenLanguages: [String] {\n")
        countriesEnum.append("\(tab)\(tab)let countryInformation = getCountryInformation()\n")
        countriesEnum.append("\(tab)\(tab)return countryInformation.spokenLanguages\n")
        countriesEnum.append("\(tab)}\n\n")
        
        // MARK: - getCountryInformation() method
        
        countriesEnum.append("\(tab)private func getCountryInformation() -> (englishName: String, nativeName: String, flag: String, phoneCode: [String], spokenLanguages: [String]) {\n")
        countriesEnum.append("\(tab)\(tab)switch self {\n")
        
        countries.forEach {
            let phoneCodes = $0.value.phone.split(separator: ",").map { return "+\($0)" }
            countriesEnum.append("\(tab)\(tab)\(tab)case .\($0.key.lowercased()): return (\"\($0.value.name)\", \"\($0.value.native)\", \"\($0.value.emoji)\", \(phoneCodes), \($0.value.languages))\n")
        }
        
        countriesEnum.append("\(tab)\(tab)\(tab)default: return (\"\", \"\", \"\", [], [])\n")
        countriesEnum.append("\(tab)\(tab)}\n")
        countriesEnum.append("\(tab)}\n")
        
        countriesEnum.append("}")
        
        try countriesEnum.write(to: fileURLToWrite, atomically: false, encoding: .utf8)
    }
    catch {
        print("Deu merda.")
        print(error)
    }
}

