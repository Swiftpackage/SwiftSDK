//
//  SocialAPI .swift
//  LoginRadiusSwift SDK
//
//  Created by Megha Agarwal.
//  Copyright © 2023 LoginRadius Inc. All rights reserved.
//

import Foundation


public class SocialAPI {
    public static let shared = SocialAPI()
    
    public init() {}
    
   public func postMessage(withAccessToken access_token: String, to: String, subject: String, message: String, completionHandler: @escaping (LRAPIResponseHandler) ) {
        let queryParams = [
            "access_token": access_token,
            "to": to,
            "subject": subject,
            "message": message
        ]
        
        LoginRadiusREST.apiInstance.sendPOST(url: "api/v2/message", queryParams: queryParams, body: [:], completionHandler: completionHandler)
    }
    
   public func statusPosting(withAccessToken access_token: String, title: String, url: String, imageurl: String, status: String, caption: String, description: String, completionHandler: @escaping (LRAPIResponseHandler) ) {
        let queryParams = [
            "access_token": access_token,
            "title": title,
            "url": url,
            "imageurl": imageurl,
            "status": status,
            "caption": caption,
            "description": description
        ]
        
        LoginRadiusREST.apiInstance.sendPOST(url:"api/v2/status", queryParams: queryParams, body: [:], completionHandler: completionHandler)
    }
    
   public func getAlbum(withAccessToken access_token: String, completionHandler: @escaping (LRAPIResponseHandler) ) {
        let queryParams = [
            "access_token": access_token
        ]
        
        LoginRadiusREST.apiInstance.sendGET(url:"api/v2/album", queryParams: queryParams, completionHandler: completionHandler)
    }
    
   public func getAudio(withAccessToken access_token: String, completionHandler: @escaping (LRAPIResponseHandler) ) {
        let queryParams = [
            "access_token": access_token
        ]
        
        LoginRadiusREST.apiInstance.sendGET(url:"api/v2/audio", queryParams: queryParams, completionHandler: completionHandler)
    }
    
   public func getCheckIn(withAccessToken access_token: String, completionHandler: @escaping (LRAPIResponseHandler) ) {
        let queryParams = [
            "access_token": access_token
        ]
        
        LoginRadiusREST.apiInstance.sendGET(url:"api/v2/checkin", queryParams: queryParams, completionHandler: completionHandler)
    }
    
   public func getCompany(withAccessToken access_token: String, completionHandler: @escaping (LRAPIResponseHandler) ) {
        let queryParams = [
            "access_token": access_token
        ]
        
        LoginRadiusREST.apiInstance.sendGET(url:"api/v2/company", queryParams: queryParams, completionHandler: completionHandler)
    }
    
   public func getContact(withAccessToken access_token: String, nextcursor: String?, completionHandler: @escaping (LRAPIResponseHandler) ) {
        let next_cursor = nextcursor ?? ""
        let queryParams = [
            "access_token": access_token,
            "nextcursor": next_cursor
        ]
        
        LoginRadiusREST.apiInstance.sendGET(url:"api/v2/contact", queryParams: queryParams, completionHandler: completionHandler)
    }
    
   public func getEvent(withAccessToken access_token: String, completionHandler: @escaping (LRAPIResponseHandler) ) {
        let queryParams = [
            "access_token": access_token
        ]
        
        LoginRadiusREST.apiInstance.sendGET(url:"api/v2/event", queryParams: queryParams, completionHandler: completionHandler)
    }
    
   public func getFollowing(withAccessToken access_token: String, completionHandler: @escaping (LRAPIResponseHandler) ) {
        let queryParams = [
            "access_token": access_token
        ]
        
        LoginRadiusREST.apiInstance.sendGET(url:"api/v2/following", queryParams: queryParams, completionHandler: completionHandler)
    }
    
   public func getGroup(withAccessToken access_token: String, completionHandler: @escaping (LRAPIResponseHandler) ) {
        let queryParams = [
            "access_token": access_token
        ]
        
        LoginRadiusREST.apiInstance.sendGET(url:"api/v2/group", queryParams: queryParams, completionHandler: completionHandler)
    }
    
   public func getLike(withAccessToken access_token: String, completionHandler: @escaping (LRAPIResponseHandler) ) {
        let queryParams = [
            "access_token": access_token
        ]
        
        LoginRadiusREST.apiInstance.sendGET(url:"api/v2/like", queryParams: queryParams, completionHandler: completionHandler)
    }
    
    public func getMention(withAccessToken access_token: String, completionHandler: @escaping (LRAPIResponseHandler)) {
        let queryParams = [
            "access_token": access_token
        ]
        
        LoginRadiusREST.apiInstance.sendGET(url:"api/v2/mention", queryParams: queryParams, completionHandler: completionHandler)
    }
    
   public func getPage(withAccessToken access_token: String, pagename: String, completionHandler: @escaping (LRAPIResponseHandler) ) {
        let queryParams = [
            "access_token": access_token,
            "pagename": pagename
        ]
        
        LoginRadiusREST.apiInstance.sendGET(url:"api/v2/page", queryParams: queryParams, completionHandler: completionHandler)
    }
    
   public func getPhoto(withAccessToken access_token: String, albumid: String, completionHandler: @escaping (LRAPIResponseHandler) ) {
        let queryParams = [
            "access_token": access_token,
            "albumid": albumid
        ]
        
        LoginRadiusREST.apiInstance.sendGET(url:"api/v2/photo", queryParams: queryParams, completionHandler: completionHandler)
    }
    
   public func getPost(withAccessToken access_token: String, completionHandler: @escaping (LRAPIResponseHandler) ) {
        let queryParams = [
            "access_token": access_token
        ]
        
        LoginRadiusREST.apiInstance.sendGET(url:"api/v2/post", queryParams: queryParams, completionHandler: completionHandler)
    }
    
   public func getStatus(withAccessToken access_token: String, completionHandler: @escaping (LRAPIResponseHandler) ) {
        let queryParams = [
            "access_token": access_token
        ]
        
        LoginRadiusREST.apiInstance.sendGET(url:"api/v2/status", queryParams: queryParams, completionHandler: completionHandler)
    }
    
   public func getVideo(withAccessToken access_token: String, nextcursor: String?, completionHandler: @escaping (LRAPIResponseHandler) ) {
        let next_cursor = nextcursor ?? ""
        let queryParams = [
            "access_token": access_token,
            "nextcursor": next_cursor
        ]
        
        LoginRadiusREST.apiInstance.sendGET(url:"api/v2/video", queryParams: queryParams, completionHandler: completionHandler)
    }
}

