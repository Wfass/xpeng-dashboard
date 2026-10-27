.class public Lcom/xiaopeng/musicradio/search/logic/b;
.super Ljava/lang/Object;
.source "XpSearchModelProxy.java"


# direct methods
.method public static a(ILjava/lang/String;IIILbkv;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "III",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;",
            ">;)V"
        }
    .end annotation

    .line 17
    new-instance v0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;-><init>()V

    .line 18
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->setAccountType(I)Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;

    move-result-object p0

    .line 19
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->setKeyword(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;

    move-result-object p0

    .line 20
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->setSearchType(I)Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;

    move-result-object p0

    .line 21
    invoke-virtual {p0, p3}, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->setPage(I)Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;

    move-result-object p0

    .line 22
    invoke-virtual {p0, p4}, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->setPageSize(I)Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;

    .line 23
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->getAccountType()I

    move-result v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->getKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->getSearchType()I

    move-result v3

    .line 24
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->getPage()I

    move-result v4

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->getPageSize()I

    move-result v5

    move-object v6, p5

    .line 23
    invoke-static/range {v1 .. v6}, Lboa;->a(ILjava/lang/String;IIILbkv;)V

    return-void
.end method
