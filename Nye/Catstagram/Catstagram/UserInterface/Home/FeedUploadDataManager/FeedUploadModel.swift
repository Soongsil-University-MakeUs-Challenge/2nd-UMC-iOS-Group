//
//  FeedUploadModel.swift
//  Catstagram
//
//  Created by csh on 2022/05/23.
//

struct FeedUploadModel : Decodable {
    var isSuccess : Bool
    var code : Int
    var message : String
    var result : FeedUploadResult?
}

struct FeedUploadResult : Decodable {
    var postIdx : Int?
}
