import Vapor

extension Request {
    var baseURL: String {
        var host = http.headers["Host"].first ?? ""
        host = host.finished(with: "/")
        let scheme = http.remotePeer.scheme ?? "http"
        return "\(scheme)://\(host)todos/"
    }
}
