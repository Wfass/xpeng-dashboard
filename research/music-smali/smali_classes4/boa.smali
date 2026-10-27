.class public Lboa;
.super Ljava/lang/Object;
.source "XpSearchModel.java"


# direct methods
.method public static a(ILjava/lang/String;IIILbkv;)V
    .locals 2
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

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "keyword"

    .line 25
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "type"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "page"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "pageSize"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {p0}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/common/a;->R()Ljava/lang/String;

    move-result-object p0

    .line 30
    invoke-static {p0}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Z

    .line 31
    invoke-virtual {p0, v0, p1}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p0

    check-cast p0, Lbks;

    new-instance p1, Lbkt;

    invoke-direct {p1, p5}, Lbkt;-><init>(Lbkv;)V

    .line 32
    invoke-virtual {p0, p1}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method
