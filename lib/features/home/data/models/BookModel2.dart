import 'package:book_application/features/home/domain/entities/book_entity.dart';

import 'VolumeInfo.dart';
import 'SaleInfo.dart';
import 'AccessInfo.dart';
import 'SearchInfo.dart';

/// kind : "books#volume"
/// id : "mIxQAAAAMAAJ"
/// etag : "AnyFcYf2/G0"
/// selfLink : "https://www.googleapis.com/books/v1/volumes/mIxQAAAAMAAJ"
/// volumeInfo : {"title":"Understanding Programming Languages","authors":["M. Ben-Ari"],"publishedDate":"1996-03-26","description":"This book compares constructs from C with constructs from Ada in terms of levels of abstractions. Studying these languages provides a firm foundation for an extensive examination of object-oriented language support in C++ and Ada 95. It explains what alternatives are available to the language designer, how language constructs should be used in terms of safety and readability, how language constructs are implemented and which ones can be efficiently compiled and the role of language in expressing and enforcing abstractions. The final chapters introduce functional (ML) and logic (Prolog) programming languages to demonstrate that imperative languages are not conceptual necessities for programming.","industryIdentifiers":[{"type":"OTHER","identifier":"UOM:39015037286278"}],"readingModes":{"text":false,"image":false},"pageCount":384,"printType":"BOOK","categories":["Computers"],"maturityRating":"NOT_MATURE","allowAnonLogging":false,"contentVersion":"0.9.6.0.preview.0","panelizationSummary":{"containsEpubBubbles":false,"containsImageBubbles":false},"imageLinks":{"smallThumbnail":"http://books.google.com/books/content?id=mIxQAAAAMAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=mIxQAAAAMAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api"},"language":"en","previewLink":"http://books.google.com.eg/books?id=mIxQAAAAMAAJ&q=programming&dq=programming&hl=&cd=1&source=gbs_api","infoLink":"http://books.google.com.eg/books?id=mIxQAAAAMAAJ&dq=programming&hl=&source=gbs_api","canonicalVolumeLink":"https://books.google.com/books/about/Understanding_Programming_Languages.html?hl=&id=mIxQAAAAMAAJ"}
/// saleInfo : {"country":"EG","saleability":"NOT_FOR_SALE","isEbook":false}
/// accessInfo : {"country":"EG","viewability":"NO_PAGES","embeddable":false,"publicDomain":false,"textToSpeechPermission":"ALLOWED","epub":{"isAvailable":false},"pdf":{"isAvailable":false},"webReaderLink":"http://play.google.com/books/reader?id=mIxQAAAAMAAJ&hl=&source=gbs_api","accessViewStatus":"NONE","quoteSharingAllowed":false}
/// searchInfo : {"textSnippet":"This book compares constructs from C with constructs from Ada in terms of levels of abstractions."}

class BookModel2 extends BookEntity {
  BookModel2({
      this.kind, 
      this.id, 
      this.etag, 
      this.selfLink, 
      this.volumeInfo, 
      this.saleInfo, 
      this.accessInfo, 
      this.searchInfo,})
      : super(BookId: id!,
      categories: volumeInfo?.categories??[],
      previewLink: volumeInfo?.previewLink??'',
      img: volumeInfo?.imageLinks?.thumbnail??'',
      title: volumeInfo!.title!,
      outhName: volumeInfo.authors?.first ??'No Name',
      price: 0,
      rating: volumeInfo.averageRating);

  BookModel2.fromJson(dynamic json)
      : kind = json['kind'],
        id = json['id'],
        etag = json['etag'],
        selfLink = json['selfLink'],
        volumeInfo = json['volumeInfo'] != null ? VolumeInfo.fromJson(json['volumeInfo']) : null,
        saleInfo = json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null,
        accessInfo = json['accessInfo'] != null ? AccessInfo.fromJson(json['accessInfo']) : null,
        searchInfo = json['searchInfo'] != null ? SearchInfo.fromJson(json['searchInfo']) : null,
        super(
        categories: json['volumeInfo']['categories']??[],
        previewLink: json['volumeInfo']['previewLink']??'',
        BookId: json['id'] ?? 'Unknown ID',
        img: json['volumeInfo']?['imageLinks']?['thumbnail'] ?? '',
        title: json['volumeInfo']?['title'] ?? 'No Title',
        outhName: (json['volumeInfo']?['authors'] != null && (json['volumeInfo']['authors'] as List).isNotEmpty)
            ? json['volumeInfo']['authors'][0]
            : 'No Name',
        price: json['saleInfo']?['listPrice']?['amount'] ?? 0,
        rating: json['volumeInfo']?['averageRating'] ?? 0.0,
      );

  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['id'] = id;
    map['etag'] = etag;
    map['selfLink'] = selfLink;
    if (volumeInfo != null) {
      map['volumeInfo'] = volumeInfo?.toJson();
    }
    if (saleInfo != null) {
      map['saleInfo'] = saleInfo?.toJson();
    }
    if (accessInfo != null) {
      map['accessInfo'] = accessInfo?.toJson();
    }
    if (searchInfo != null) {
      map['searchInfo'] = searchInfo?.toJson();
    }
    return map;
  }

}