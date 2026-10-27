.class public Lcom/xiaopeng/musicradio/search/logic/SearchResultLogic;
.super Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;
.source "SearchResultLogic.java"


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    name = "logic://musicradio.search.query_search_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic<",
        "Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;",
        "Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/search/logic/SearchResultLogic;Lcom/xiaopeng/aicabin/logic/ILogicCallback;Ljava/lang/Object;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/search/logic/SearchResultLogic;->callbackSuccess(Lcom/xiaopeng/aicabin/logic/ILogicCallback;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/search/logic/SearchResultLogic;Lcom/xiaopeng/aicabin/logic/ILogicCallback;ILjava/lang/String;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/search/logic/SearchResultLogic;->callbackError(Lcom/xiaopeng/aicabin/logic/ILogicCallback;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doAsync(Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
    .locals 6

    .line 22
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->getAccountType()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->getSearchType()I

    move-result v2

    .line 23
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->getPage()I

    move-result v3

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->getPageSize()I

    move-result v4

    new-instance v5, Lcom/xiaopeng/musicradio/search/logic/SearchResultLogic$1;

    invoke-direct {v5, p0, p2}, Lcom/xiaopeng/musicradio/search/logic/SearchResultLogic$1;-><init>(Lcom/xiaopeng/musicradio/search/logic/SearchResultLogic;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V

    .line 22
    invoke-static/range {v0 .. v5}, Lboa;->a(ILjava/lang/String;IIILbkv;)V

    return-void
.end method

.method protected bridge synthetic doAsync(Ljava/lang/Object;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/search/logic/SearchResultLogic;->doAsync(Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V

    return-void
.end method
