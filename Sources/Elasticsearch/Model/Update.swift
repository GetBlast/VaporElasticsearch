public struct UpdateDoc<T: Encodable> : Encodable {
    public let doc: T
    public let docAsUpsert: Bool
    public let retryOnConflict: Int?

    public enum CodingKeys: String, CodingKey {
        case doc = "doc"
        case docAsUpsert = "doc_as_upsert"
        case retryOnConflict = "retry_on_conflict"
    }
}

public struct UpdateScript : Encodable {
    public let script: Script
    public let retryOnConflict: Int?

    public enum CodingKeys: String, CodingKey {
        case script = "script"
        case retryOnConflict = "retry_on_conflict"
    }
}
