

class Document{
  String? doc_title;
  String?  doc_url;
  String? doc_date;
  int? page_num;
  Document(this.doc_title,this.doc_url,this.doc_date,this.page_num);
  static List<Document> doc_list=[
    Document(
      "Artificial Intelligence and its Role in Near Future",
      "https://arxiv.org/pdf/1804.01396.pdf","8-08-2015",11
    ),
    Document(
        "Evelyn-j-steward-the-blood-red-ruby",
        "https://arxiv.org/pdf/1804.01396.pdf","8-09-2011",10
    ),
    Document(
        "Games of Thrones:House of the Dragon",
        "https://arxiv.org/pdf/1804.01396.pdf","10-11-2001",12
    ),
    Document(
        "Harry Potter and the Socrerces Stone",
        "https://arxiv.org/pdf/1804.01396.pdf","18-09-2012",10
    ),
    Document(
        "Top Ten Business Hack",
        "https://arxiv.org/pdf/1804.01396.pdf","16-09-2011",10
    ),
  ];
}