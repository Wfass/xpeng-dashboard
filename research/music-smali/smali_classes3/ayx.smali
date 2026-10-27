.class public Layx;
.super Ljava/lang/Object;
.source "BizHelper.java"


# direct methods
.method public static a(IIILbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "page"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "pageSize"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {p2}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/common/a;->w()Ljava/lang/String;

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

.method public static a(Ljava/lang/String;IILbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 107
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "page"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "pageSize"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 111
    invoke-static {}, Lcom/xiaopeng/musicradio/common/m;->a()Lcom/xiaopeng/musicradio/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/common/a;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object v1

    new-array p2, p2, [Z

    .line 112
    invoke-virtual {v1, v0, p2}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p2

    check-cast p2, Lbks;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCustomCollectSongList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 113
    invoke-virtual {p2, p0}, Lbks;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p0

    check-cast p0, Lbks;

    sget-object p1, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    .line 114
    invoke-virtual {p0, p1}, Lbks;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p0

    check-cast p0, Lbks;

    const-wide/32 p1, 0x240c8400

    .line 115
    invoke-virtual {p0, p1, p2}, Lbks;->cacheTime(J)Lcom/lzy/okgo/request/base/Request;

    move-result-object p0

    check-cast p0, Lbks;

    new-instance p1, Lbkt;

    invoke-direct {p1, p3}, Lbkt;-><init>(Lbkv;)V

    .line 116
    invoke-virtual {p0, p1}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "https://xmart.xiaopeng.com/media/v3/music/collects/songList"

    .line 118
    invoke-static {p0}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p0

    new-array p1, p2, [Z

    .line 119
    invoke-virtual {p0, v0, p1}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p0

    check-cast p0, Lbks;

    new-instance p1, Lbkt;

    invoke-direct {p1, p3}, Lbkt;-><init>(Lbkv;)V

    .line 120
    invoke-virtual {p0, p1}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p0

    return-object p0
.end method

.method public static a(III)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Layx$1;

    invoke-direct {v0, p0, p1, p2}, Layx$1;-><init>(III)V

    return-object v0
.end method

.method public static a(ILbkv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean;",
            ">;)V"
        }
    .end annotation

    .line 101
    invoke-static {p0}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/common/a;->z()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p0

    new-instance v0, Lbkt;

    invoke-direct {v0, p1}, Lbkt;-><init>(Lbkv;)V

    .line 102
    invoke-virtual {p0, v0}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public static b(IIILbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "page"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "pageSize"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {p2}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/common/a;->y()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Z

    .line 71
    invoke-virtual {p0, v0, p1}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p0

    check-cast p0, Lbks;

    new-instance p1, Lbkt;

    invoke-direct {p1, p3}, Lbkt;-><init>(Lbkv;)V

    .line 72
    invoke-virtual {p0, p1}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p0

    return-object p0
.end method

.method public static b(III)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Layx$2;

    invoke-direct {v0, p0, p1, p2}, Layx$2;-><init>(III)V

    return-object v0
.end method

.method public static c(IIILbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 93
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "page"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "pageSize"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {p2}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/common/a;->x()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Z

    .line 96
    invoke-virtual {p0, v0, p1}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p0

    check-cast p0, Lbks;

    new-instance p1, Lbkt;

    invoke-direct {p1, p3}, Lbkt;-><init>(Lbkv;)V

    .line 97
    invoke-virtual {p0, p1}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p0

    return-object p0
.end method

.method public static c(III)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Layx$3;

    invoke-direct {v0, p0, p1, p2}, Layx$3;-><init>(III)V

    return-object v0
.end method
