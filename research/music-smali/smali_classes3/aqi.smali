.class public Laqi;
.super Ljava/lang/Object;
.source "BizHelper.java"


# direct methods
.method public static a(Ljava/lang/String;JLbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/account/xmlylogin/bean/AuthCodeBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/account/xmlylogin/bean/AuthCodeBean;",
            ">;"
        }
    .end annotation

    .line 27
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "authCode"

    .line 28
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "uid"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "https://xmart.xiaopeng.com/media/v3/reading/login/qrCodeAuthPoll"

    .line 31
    invoke-static {p0}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Z

    .line 32
    invoke-virtual {p0, v0, p1}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p0

    check-cast p0, Lbks;

    new-instance p1, Lbkt;

    invoke-direct {p1, p3}, Lbkt;-><init>(Lbkv;)V

    .line 33
    invoke-virtual {p0, p1}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/account/xmlylogin/bean/QrCodeBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/account/xmlylogin/bean/QrCodeBean;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "qrCodeType"

    .line 20
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "https://xmart.xiaopeng.com/media/v3/reading/login/qrCode"

    .line 21
    invoke-static {p0}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Z

    .line 22
    invoke-virtual {p0, v0, v1}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p0

    check-cast p0, Lbks;

    new-instance v0, Lbkt;

    invoke-direct {v0, p1}, Lbkt;-><init>(Lbkv;)V

    .line 23
    invoke-virtual {p0, v0}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lbkv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/account/xmlylogin/bean/LogoutBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "https://xmart.xiaopeng.com/media/v3/reading/login/logout"

    .line 37
    invoke-static {v0}, Lbkn;->b(Ljava/lang/String;)Lcom/lzy/okgo/request/PostRequest;

    move-result-object v0

    new-instance v1, Lbkt;

    invoke-direct {v1, p0}, Lbkt;-><init>(Lbkv;)V

    .line 38
    invoke-virtual {v0, v1}, Lcom/lzy/okgo/request/PostRequest;->execute(Lcom/lzy/okgo/callback/Callback;)V

    return-void
.end method
