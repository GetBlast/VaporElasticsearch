/*
 These structs define all of the types that Elasticsearch can store,
 how they map to Swift types and allows the user to configure what
 the mapping should be like in their index.
 
 The list of types in Elasticsearch can be found at:
 https://www.elastic.co/guide/en/elasticsearch/reference/current/mapping-types.html
 */

public struct ESTypeInteger: ESType {
    static var typeKey = ESTypeMap.integer

    let type = "integer"
    
    var coerce: Bool? = true
    var boost: Float? = 1.0
    var docValues: Bool? = true
    var ignoreMalformed: Bool? = false
    var index: Bool? = true
    var nullValue: Int32? = nil
    var store: Bool? = false
    
    enum CodingKeys: String, CodingKey {
        case type
        case coerce
        case boost
        case docValues = "doc_values"
        case ignoreMalformed = "ignore_malformed"
        case index
        case nullValue = "null_value"
        case store
    }
}
