//
//  APIGallerySearchResponse.swift
//  tcat
//
//  Created by Dídac Serrano i Segarra on 28/5/23.
//

import Foundation

struct APIGalleryImage: Codable {
    
    let id: String
    let title: String
    let link: String
    let ups: Int
    let score: Int
}

/*
{
    "id": "Bu6wWPJ",
    "title": "Baby bule can fly yet, lots of stray cats around, any suggestions?",
    "description": null,
    "datetime": 1685215608,
    "cover": "xFRF13T",
    "cover_width": 3468,
    "cover_height": 4624,
    "account_url": "gardenvarietyopossm",
    "account_id": 62459825,
    "privacy": "hidden",
    "layout": "blog",
    "views": 165,
    "link": "https://imgur.com/a/Bu6wWPJ",
    "ups": 19,
    "downs": 0,
    "points": 19,
    "score": 19,
    "is_album": true,
    "vote": null,
    "favorite": false,
    "nsfw": false,
    "section": "",
    "comment_count": 4,
    "favorite_count": 0,
    "topic": null,
    "topic_id": null,
    "images_count": 1,
    "in_gallery": true,
    "is_ad": false,
    "tags": [
        {
            "name": "birds",
            "display_name": "birds",
            "followers": 23450,
            "total_items": 21971,
            "following": false,
            "is_whitelisted": false,
            "background_hash": "Z7iodQm",
            "thumbnail_hash": null,
            "accent": "225956",
            "background_is_animated": false,
            "thumbnail_is_animated": false,
            "is_promoted": false,
            "description": "Jan. 5 is National Bird Day! ",
            "logo_hash": null,
            "logo_destination_url": null,
            "description_annotations": {}
        },
        {
            "name": "cats",
            "display_name": "Cats",
            "followers": 213105,
            "total_items": 135458,
            "following": false,
            "is_whitelisted": false,
            "background_hash": "xeEIpAn",
            "thumbnail_hash": null,
            "accent": "BF63A7",
            "background_is_animated": false,
            "thumbnail_is_animated": false,
            "is_promoted": false,
            "description": "Our feline friends",
            "logo_hash": null,
            "logo_destination_url": null,
            "description_annotations": {}
        },
        {
            "name": "wildlife",
            "display_name": "wildlife",
            "followers": 7263,
            "total_items": 8497,
            "following": false,
            "is_whitelisted": false,
            "background_hash": "zIGIQFa",
            "thumbnail_hash": null,
            "accent": "50535A",
            "background_is_animated": false,
            "thumbnail_is_animated": false,
            "is_promoted": false,
            "description": "",
            "logo_hash": null,
            "logo_destination_url": null,
            "description_annotations": {}
        }
    ],
    "ad_type": 0,
    "ad_url": "",
    "in_most_viral": false,
    "include_album_ads": false,
    "images": [
        {
            "id": "xFRF13T",
            "title": null,
            "description": null,
            "datetime": 1685215588,
            "type": "image/jpeg",
            "animated": false,
            "width": 3468,
            "height": 4624,
            "size": 1049446,
            "views": 70,
            "bandwidth": 73461220,
            "vote": null,
            "favorite": false,
            "nsfw": null,
            "section": null,
            "account_url": null,
            "account_id": null,
            "is_ad": false,
            "in_most_viral": false,
            "has_sound": false,
            "tags": [],
            "ad_type": 0,
            "ad_url": "",
            "edited": "0",
            "in_gallery": false,
            "link": "https://i.imgur.com/xFRF13T.jpg",
            "comment_count": null,
            "favorite_count": null,
            "ups": null,
            "downs": null,
            "points": null,
            "score": null
        }
    ],
    "ad_config": {
        "safeFlags": [
            "album",
            "in_gallery",
            "sixth_mod_safe",
            "gallery"
        ],
        "highRiskFlags": [],
        "unsafeFlags": [],
        "wallUnsafeFlags": [],
        "showsAds": true,
        "showAdLevel": 2,
        "safe_flags": [
            "album",
            "in_gallery",
            "sixth_mod_safe",
            "gallery"
        ],
        "high_risk_flags": [],
        "unsafe_flags": [],
        "wall_unsafe_flags": [],
        "show_ads": true,
        "show_ad_level": 2,
        "nsfw_score": 0
    }
}
*/
