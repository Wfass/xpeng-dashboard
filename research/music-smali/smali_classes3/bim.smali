.class public Lbim;
.super Ljava/lang/Object;
.source "MusicRequestModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbim$b;,
        Lbim$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lbim;
    .locals 1

    .line 36
    invoke-static {}, Lbim$a;->a()Lbim;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;IIILbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "hash"

    .line 51
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v1, "quality"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    const-string p3, "2"

    goto :goto_0

    :cond_0
    const-string p3, "1"

    :goto_0
    const-string v1, "version"

    .line 53
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_1

    .line 54
    sget-object p2, Lcom/lzy/okgo/cache/CacheMode;->REQUEST_FAILED_READ_CACHE:Lcom/lzy/okgo/cache/CacheMode;

    goto :goto_1

    :cond_1
    sget-object p2, Lcom/lzy/okgo/cache/CacheMode;->NO_CACHE:Lcom/lzy/okgo/cache/CacheMode;

    .line 55
    :goto_1
    invoke-static {p4}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/common/a;->B()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p3

    const/4 p4, 0x0

    .line 56
    new-array p4, p4, [Z

    invoke-virtual {p3, v0, p4}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p4

    check-cast p4, Lbks;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "songid_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-virtual {p4, p1}, Lbks;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    .line 58
    invoke-virtual {p1, p2}, Lbks;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkw;

    invoke-direct {p2, p3}, Lbkw;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    .line 59
    invoke-virtual {p1, p2}, Lbks;->cachePolicy(Lcom/lzy/okgo/cache/policy/CachePolicy;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    const-wide/32 p2, 0x5265c00

    .line 60
    invoke-virtual {p1, p2, p3}, Lbks;->cacheTime(J)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p5}, Lbkt;-><init>(Lbkv;)V

    .line 61
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;ILbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/ListDetailBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/ListDetailBean;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "hashList"

    .line 67
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {p2}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/common/a;->I()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p1

    const/4 p2, 0x0

    .line 69
    new-array p2, p2, [Z

    invoke-virtual {p1, v0, p2}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p3}, Lbkt;-><init>(Lbkv;)V

    .line 70
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public a(ILbim$b;I)V
    .locals 3

    const-string v0, "MusicRequestModel"

    const-string v1, "getRadioData start"

    .line 123
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object v1

    new-instance v2, Lbim$1;

    invoke-direct {v2, p0, p2, p3}, Lbim$1;-><init>(Lbim;Lbim$b;I)V

    invoke-virtual {v1, p1, v0, v2}, Lbev;->a(ILjava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public b(Ljava/lang/String;ILbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/MusicLyricBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/music/MusicLyricBean;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "hash"

    .line 81
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {p2}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/common/a;->C()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p2

    const/4 v1, 0x0

    new-array v1, v1, [Z

    .line 83
    invoke-virtual {p2, v0, v1}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p2

    check-cast p2, Lbks;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMusicLyric_hash_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-virtual {p2, p1}, Lbks;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    sget-object p2, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    .line 85
    invoke-virtual {p1, p2}, Lbks;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p3}, Lbkt;-><init>(Lbkv;)V

    .line 86
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method
