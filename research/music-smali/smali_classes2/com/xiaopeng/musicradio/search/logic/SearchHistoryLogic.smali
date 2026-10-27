.class public Lcom/xiaopeng/musicradio/search/logic/SearchHistoryLogic;
.super Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;
.source "SearchHistoryLogic.java"


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    name = "logic://musicradio.search.search_history"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic<",
        "Lcom/xiaopeng/musicradio/bean/search/logic/SearchHistoryParams;",
        "Ljava/util/List<",
        "Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;-><init>()V

    return-void
.end method


# virtual methods
.method protected doSync(Lcom/xiaopeng/musicradio/bean/search/logic/SearchHistoryParams;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 2

    .line 23
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/logic/SearchHistoryParams;->getOpt()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Lbob;->a()Lbob;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/logic/SearchHistoryParams;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbob;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_1
    invoke-static {}, Lbob;->a()Lbob;

    move-result-object p1

    invoke-virtual {p1}, Lbob;->b()V

    .line 38
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/logic/SearchHistoryLogic;->buildCommonSuccessResp()Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1

    .line 34
    :cond_2
    invoke-static {}, Lbob;->a()Lbob;

    move-result-object p1

    invoke-virtual {p1}, Lbob;->c()Ljava/util/List;

    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/search/logic/SearchHistoryLogic;->buildSuccessResp(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doSync(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    .line 18
    check-cast p1, Lcom/xiaopeng/musicradio/bean/search/logic/SearchHistoryParams;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/search/logic/SearchHistoryLogic;->doSync(Lcom/xiaopeng/musicradio/bean/search/logic/SearchHistoryParams;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method
