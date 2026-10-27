.class public Lbdc;
.super Ljava/lang/Object;
.source "MusicContinuePlayModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbdc$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lbdc;
    .locals 1

    .line 30
    invoke-static {}, Lbdc$a;->a()Lbdc;

    move-result-object v0

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 0

    .line 92
    invoke-static {p1}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/common/a;->X()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(I)Ljava/lang/String;
    .locals 0

    .line 96
    invoke-static {p1}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/common/a;->Y()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(I)Ljava/lang/String;
    .locals 0

    .line 100
    invoke-static {p1}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/common/a;->Z()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(IILbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "pageSize"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-direct {p0, p1}, Lbdc;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Z

    .line 45
    invoke-virtual {p1, v0, p2}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p3}, Lbkt;-><init>(Lbkv;)V

    .line 46
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public a(ILjava/lang/String;IILbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "II",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "id"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "page"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "pageSize"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-direct {p0, p1}, Lbdc;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Z

    .line 75
    invoke-virtual {p1, v0, p2}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p5}, Lbkt;-><init>(Lbkv;)V

    .line 76
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public a(ILjava/lang/String;II)Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "II)",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v6, Lbdc$1;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lbdc$1;-><init>(Lbdc;ILjava/lang/String;II)V

    return-object v6
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean;Lbkv;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean;",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    .line 80
    invoke-direct {p0, v0}, Lbdc;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbkn;->b(Ljava/lang/String;)Lcom/lzy/okgo/request/PostRequest;

    move-result-object v0

    .line 81
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Z

    const-string v2, "data"

    invoke-virtual {v0, v2, p1, v1}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    new-instance v0, Lbkt;

    invoke-direct {v0, p2}, Lbkt;-><init>(Lbkv;)V

    .line 82
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/request/PostRequest;->execute(Lcom/lzy/okgo/callback/Callback;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/NeteasePlayListUploadBean;Lbkv;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/NeteasePlayListUploadBean;",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 86
    invoke-direct {p0, v0}, Lbdc;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbkn;->b(Ljava/lang/String;)Lcom/lzy/okgo/request/PostRequest;

    move-result-object v0

    .line 87
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Z

    const-string v2, "data"

    invoke-virtual {v0, v2, p1, v1}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    new-instance v0, Lbkt;

    invoke-direct {v0, p2}, Lbkt;-><init>(Lbkv;)V

    .line 88
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/request/PostRequest;->execute(Lcom/lzy/okgo/callback/Callback;)V

    return-void
.end method
