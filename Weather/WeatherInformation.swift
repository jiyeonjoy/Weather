//
//  WeatherInformation.swift
//  Weather
//
//  Created by Jiyeon Choi on 2022. 10. 26..
//

import Foundation

// Codable - json 으로 변경할 수 있는 프로토콜!
struct WeatherInformation: Codable {
  let weather: [Weather]
  let temp: Temp
  let name: String

  enum CodingKeys: String, CodingKey {
    case weather
    case temp = "main"
    case name
  }
}

struct Weather: Codable {
  let id: Int
  let main: String
  let description: String
  let icon: String
}

struct Temp: Codable {
  let temp: Double
  let feelsLike: Double
  let minTemp: Double
  let maxTemp: Double

    // 서버의 데이터 키값이 다른 경우 이렇게 설정해주면 됨!
  enum CodingKeys: String, CodingKey {
    case temp
    case feelsLike = "feels_like"
    case minTemp = "temp_min"
    case maxTemp = "temp_max"
  }
}
