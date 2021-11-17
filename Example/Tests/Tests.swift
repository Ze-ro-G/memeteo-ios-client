import XCTest
import MemeteoClient

class Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        
        MemeteoClient.shared.configure(WithBaseURL: "http://api.openweathermap.org/data/2.5/", ApiKey: "5aa8d384afe4769c566762d5e85249ba")

    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testOpenWeatherMapAPI(){
        
        MemeteoClient.shared.weatherService?.fetchWeather(city: "Paris", completion: { weather, error in
            if error == nil{
                XCTAssert(true, "SUCCES : Fetch weather from city")

            }
            else {
                XCTFail("Error : Failed to laod Weather from OPENWatherMap")
            }
        })
        
        MemeteoClient.shared.weatherService?.fetchLocationForecast(city: "Paris", completion: { weather, error in
            if error == nil{
                XCTAssert(true, "SUCCES : Fetch forecast from city")

            }
            else {
                XCTFail("Error : Failed to laod Weather from OPENWatherMap")
            }
        })
        
       // etc ...
    }
    
    
    
}

