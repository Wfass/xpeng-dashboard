.class public Laya;
.super Ljava/lang/Object;
.source "MineHttpModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laya$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Laya;
    .locals 1

    .line 27
    sget-object v0, Laya$a;->a:Laya;

    return-object v0
.end method


# virtual methods
.method public a(JLbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "uid"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x4

    .line 34
    invoke-static {p1}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/common/a;->V()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Z

    .line 35
    invoke-virtual {p1, v0, p2}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p3}, Lbkt;-><init>(Lbkv;)V

    .line 36
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public b(JLbkv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;",
            ">;)V"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/xiaopeng/musicradio/bean/mine/XpUid;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/mine/XpUid;-><init>()V

    .line 41
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/bean/mine/XpUid;->setUid(J)V

    const/4 p1, 0x4

    .line 42
    invoke-static {p1}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/common/a;->W()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbkn;->b(Ljava/lang/String;)Lcom/lzy/okgo/request/PostRequest;

    move-result-object p1

    .line 43
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/lzy/okgo/request/PostRequest;->upJson(Ljava/lang/String;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    new-instance p2, Lbkt;

    invoke-direct {p2, p3}, Lbkt;-><init>(Lbkv;)V

    .line 44
    invoke-virtual {p1, p2}, Lcom/lzy/okgo/request/PostRequest;->execute(Lcom/lzy/okgo/callback/Callback;)V

    return-void
.end method

.method public c(JLbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "uid"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object p1, Lcom/xiaopeng/musicradio/common/d;->y:Ljava/lang/String;

    invoke-static {p1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Z

    .line 53
    invoke-virtual {p1, v0, p2}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p3}, Lbkt;-><init>(Lbkv;)V

    .line 54
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public d(JLbkv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;",
            ">;)V"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/xiaopeng/musicradio/bean/mine/XpUid;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/mine/XpUid;-><init>()V

    .line 59
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/bean/mine/XpUid;->setUid(J)V

    .line 60
    sget-object p1, Lcom/xiaopeng/musicradio/common/d;->z:Ljava/lang/String;

    invoke-static {p1}, Lbkn;->b(Ljava/lang/String;)Lcom/lzy/okgo/request/PostRequest;

    move-result-object p1

    .line 61
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/lzy/okgo/request/PostRequest;->upJson(Ljava/lang/String;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    new-instance p2, Lbkt;

    invoke-direct {p2, p3}, Lbkt;-><init>(Lbkv;)V

    .line 62
    invoke-virtual {p1, p2}, Lcom/lzy/okgo/request/PostRequest;->execute(Lcom/lzy/okgo/callback/Callback;)V

    return-void
.end method
