import Testing
import Foundation
#if canImport(FoundationNetworking)
    import FoundationNetworking
#endif
import ServiceStack

final class JsonServiceClientTests : @unchecked Sendable {
    var client: JsonServiceClient!
    
    init() async throws {
        print("JsonServiceClientTests.init()")
        client = JsonServiceClient(baseUrl: "https://test.servicestack.net")
    }

    deinit {
        print("JsonServiceClientTests.deinit")
    }

    @Test func Can_POST_Test_HelloAllTypes_async() async throws {
        let request = createHelloAllTypes()

        let response = try await client.postAsync(request)
        self.assertHelloAllTypesResponse(response, expected: request)
    }

    @Test func test_Can_POST_Test_HelloAllTypes() {
        let request = createHelloAllTypes()

        do {
            let response = try client.post(request)

            assertHelloAllTypesResponse(response, expected: request)
        } catch let e as NSError {
            Issue.record("Error: \(e)")
        }
    }
    
    @Test func test_Can_encode_and_decode_AllTypes() {
        let request = createAllTypes()
        request.subType = nil
        request.dateTime = nil
        
        let json = toJsonData(request)!
        
        print(String(data: json, encoding: .utf8)!)
        
        let fromJson = fromJsonData(AllTypes.self, json)!
        
        assertAllTypes(fromJson, expected: request)
    }


    /*
     * TEST HELPERS
     */

    func createHelloAllTypes() -> HelloAllTypes {
        let dto = HelloAllTypes()
        dto.name = "name"
        dto.allTypes = createAllTypes()
        dto.allCollectionTypes = createAllCollectionTypes()
        return dto
    }

    func assertHelloAllTypesResponse(_ actual: HelloAllTypesResponse, expected: HelloAllTypes) {
        #expect(actual != nil)
        // assertAllTypes(actual.allTypes!, expected: expected.allTypes!)
        // assertAllCollectionTypes(actual.allCollectionTypes!, expected: expected.allCollectionTypes!)
    }

    func createAllTypes() -> AllTypes {
        let to = AllTypes()
        to.id = 1
        to.char = "c"
        to.byte = UInt8(65)
        to.short = Int16(3)
        to.int = 4
        to.long = Int(5)
        to.uShort = UInt16(6)
        to.uInt = UInt32(7)
        to.uLong = UInt64(8)
        to.float = 1.1 as Float
        to.double = 2.2
        to.decimal = 3.0
        to.string = "string"
        to.dateTime = Date(year: 2001, month: 1, day: 1)
        to.timeSpan = 1
        to.guid = "25892e1780f6415f9c657395632f0223"
        to.stringList = ["A", "B", "C"]
        to.stringArray = ["D", "E", "F"]
        to.stringMap = ["A": "D", "B": "E", "C": "F"]
        to.intStringMap = [1: "A", 2: "B", 3: "C"]

        let subType = SubType()
        subType.id = 1
        subType.name = "name"
        to.subType = subType

        return to
    }

    func createPoco(_ name: String? = "name") -> Poco {
        let to = Poco()
        to.name = name!
        return to
    }

    func createAllCollectionTypes() -> AllCollectionTypes {
        let to = AllCollectionTypes()
        to.intArray = [1, 2, 3]
        to.intList = [4, 5, 6]
        to.stringArray = ["A", "B", "C"]
        to.stringList = ["D", "E", "F"]
        to.byteArray = fromByteArray("QUJD") //base64(ABC)
        to.pocoArray.append(createPoco("pocoArray"))
        if to.pocoList == nil { to.pocoList = [] }
        to.pocoList!.append(createPoco("pocoList"))
        if to.pocoLookup == nil { to.pocoLookup = [:] }
        to.pocoLookup!["A"] = [createPoco("B"), createPoco("C")]
        to.pocoLookup!["D"] = [createPoco("E"), createPoco("F")]
        if to.pocoLookupMap == nil { to.pocoLookupMap = [:] }
        to.pocoLookupMap!["A"] = [["B": createPoco("C"), "D": createPoco("E")]]

        return to
    }

    func assertDictionary<K, V: Equatable>(_ actual: [K: V]?, expected: [K: V]?) {
        if actual == nil {
            #expect(expected == nil)
            return
        }
        
        #expect(actual!.count == expected!.count)
        for (k, v) in actual! {
            #expect(v == expected![k]!)
        }
    }

    func assertLookup<K, V: Equatable>(_ actual: [K: [V]]?, expected: [K: [V]]?) {
        if actual == nil {
            #expect(expected == nil)
            return
        }
        
        #expect(actual!.count == expected!.count)
        for (k, values) in actual! {
            #expect(values.count == expected![k]!.count)
            for i in 0 ..< values.count {
                #expect(values[i] == expected![k]![i])
            }
        }
    }

    //[String:[[String:Poco]]]
    func assertLookupMap<K, V: Equatable>(_ actual: [K: [[K: V]]]?, expected: [K: [[K: V]]]?) {
        if actual == nil {
            #expect(expected == nil)
            return
        }
        
        #expect(actual!.count == expected!.count)
        for (k, list) in actual! {
            list.enumerated().forEach { (i,values) in
                #expect(values.count == expected![k]![i].count)
                for (subK, _) in values {
                    #expect(values[subK] == expected![k]![i][subK])
                }
            }
        }
    }

    func assertAllTypes(_ actual: AllTypes, expected: AllTypes) {
        #expect(actual.id! == expected.id!)
        #expect(actual.byte! == expected.byte!)
        #expect(actual.short! == expected.short!)
        #expect(actual.int! == expected.int!)
        #expect(actual.long! == expected.long!)
        #expect(actual.uShort! == expected.uShort!)
        #expect(actual.uLong! == expected.uLong!)
        #expect(actual.float! == expected.float!)
        #expect(actual.double! == expected.double!)
        #expect(actual.decimal! == expected.decimal!)
        #expect(actual.string! == expected.string!)
        #expect(actual.timeSpan! == expected.timeSpan!)
        #expect(actual.guid! == expected.guid!)
        #expect(actual.char! == expected.char!)
        #expect(actual.stringList == expected.stringList)
        #expect(actual.stringArray == expected.stringArray)

        assertDictionary(actual.stringMap, expected: expected.stringMap)
        assertDictionary(actual.intStringMap, expected: expected.intStringMap)

        if expected.dateTime != nil {
            #expect(actual.dateTime! == expected.dateTime!)
        }

        if expected.subType != nil {
            #expect(actual.subType!.id! == expected.subType!.id!)
            #expect(actual.subType!.name! == expected.subType!.name!)
        }
    }

    func assertAllCollectionTypes(_ actual: AllCollectionTypes, expected: AllCollectionTypes) {
        #expect(actual.intArray == expected.intArray)
        #expect(actual.intList == expected.intList)
        #expect(actual.stringArray == expected.stringArray)
        #expect(actual.stringList == expected.stringList)
        #expect(actual.byteArray == expected.byteArray)
        #expect(actual.pocoArray == expected.pocoArray)
        #expect(actual.pocoList == expected.pocoList)
        assertLookup(actual.pocoLookup, expected: expected.pocoLookup)
        assertLookupMap(actual.pocoLookupMap, expected: expected.pocoLookupMap)
    }

}

 extension Poco: Equatable {}

 public func == (lhs: Poco, rhs: Poco) -> Bool {
    return lhs.name == rhs.name
 }
