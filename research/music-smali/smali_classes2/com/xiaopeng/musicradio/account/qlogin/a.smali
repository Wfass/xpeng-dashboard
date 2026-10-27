.class public Lcom/xiaopeng/musicradio/account/qlogin/a;
.super Ljava/lang/Object;
.source "BizHelper.java"


# direct methods
.method public static a(Ljava/lang/String;IZLbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/account/qlogin/bean/QrCodeBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/account/qlogin/bean/QrCodeBean;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 23
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "qrCodeType"

    .line 24
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    .line 27
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string p2, "useUniversal"

    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/common/a;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Z

    .line 30
    invoke-virtual {p0, v0, p1}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p0

    check-cast p0, Lbks;

    new-instance p1, Lbkt;

    invoke-direct {p1, p3}, Lbkt;-><init>(Lbkv;)V

    .line 31
    invoke-virtual {p0, p1}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "authCode"

    .line 36
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "qrCodeType"

    .line 37
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {p2}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/common/a;->d()Ljava/lang/String;

    move-result-object p0

    .line 39
    invoke-static {p0}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Z

    .line 40
    invoke-virtual {p0, v0, p1}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p0

    check-cast p0, Lbks;

    new-instance p1, Lbkt;

    invoke-direct {p1, p3}, Lbkt;-><init>(Lbkv;)V

    .line 41
    invoke-virtual {p0, p1}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p0

    return-object p0
.end method

.method public static a(ILbkv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/account/qlogin/bean/LogoutBean;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-static {p0}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/common/a;->e()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lbkn;->b(Ljava/lang/String;)Lcom/lzy/okgo/request/PostRequest;

    move-result-object p0

    new-instance v0, Lbkt;

    invoke-direct {v0, p1}, Lbkt;-><init>(Lbkv;)V

    .line 46
    invoke-virtual {p0, v0}, Lcom/lzy/okgo/request/PostRequest;->execute(Lcom/lzy/okgo/callback/Callback;)V

    return-void
.end method
