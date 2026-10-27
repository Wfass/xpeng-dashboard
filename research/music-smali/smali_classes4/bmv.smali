.class public Lbmv;
.super Ljava/lang/Object;
.source "XpFMModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbmv$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lbmv;
    .locals 1

    .line 52
    invoke-static {}, Lbmv$a;->a()Lbmv;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(JIILjava/lang/String;Lbkv;Ljava/lang/String;)Lcom/lzy/okgo/adapter/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/lang/String;",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFmAlbumTracks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 92
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "id"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "page"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "pageSize"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sort"

    .line 95
    invoke-interface {v1, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p7, :cond_0

    .line 96
    sget-object p7, Lcom/xiaopeng/musicradio/common/d;->d:Ljava/lang/String;

    :cond_0
    invoke-static {p7}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Z

    .line 97
    invoke-virtual {p1, v1, p2}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    .line 98
    invoke-virtual {p1, v0}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p6}, Lbkt;-><init>(Lbkv;)V

    .line 99
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public a(JJIILbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJII",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 340
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "XpFMModel"

    const-string v3, "getHeadSpeachTracklist albumId=%d, tid=%d, page=%d"

    invoke-static {v1, v3, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 342
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    const-string v1, "page"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    const-string p6, "pageSize"

    invoke-interface {v0, p6, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 p5, -0x1

    cmp-long v1, p1, p5

    if-eqz v1, :cond_0

    cmp-long p5, p3, p5

    if-eqz p5, :cond_0

    .line 345
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const-string p4, "trackId"

    invoke-interface {v0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "albumId"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    :cond_0
    sget-object p1, Lcom/xiaopeng/musicradio/common/d;->l:Ljava/lang/String;

    invoke-static {p1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p1

    new-array p2, v2, [Z

    .line 350
    invoke-virtual {p1, v0, p2}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p7}, Lbkt;-><init>(Lbkv;)V

    .line 351
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public a(JJILjava/lang/String;Lbkv;Ljava/lang/String;)Lcom/lzy/okgo/adapter/Call;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Ljava/lang/String;",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;",
            ">;"
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFmAlbumSpecTracks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 117
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "albumId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p8, :cond_0

    .line 119
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "id"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "trackId"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "pageSize"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sort"

    .line 123
    invoke-interface {v1, p1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p8, :cond_1

    .line 124
    sget-object p8, Lcom/xiaopeng/musicradio/common/d;->e:Ljava/lang/String;

    :cond_1
    invoke-static {p8}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Z

    .line 125
    invoke-virtual {p1, v1, p2}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    .line 126
    invoke-virtual {p1, v0}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p7}, Lbkt;-><init>(Lbkv;)V

    .line 127
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public a(JJLbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean;",
            ">;"
        }
    .end annotation

    .line 237
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 238
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "id"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "albumId"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object p1, Lcom/xiaopeng/musicradio/common/d;->w:Ljava/lang/String;

    invoke-static {p1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Z

    .line 241
    invoke-virtual {p1, v0, p2}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p5}, Lbkt;-><init>(Lbkv;)V

    .line 242
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public a(JZIILbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZII",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean;",
            ">;"
        }
    .end annotation

    .line 277
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 278
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "categoryId"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "page"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    const-string v0, "pageSize"

    invoke-interface {p3, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object p5, Lcom/xiaopeng/musicradio/common/d;->i:Ljava/lang/String;

    .line 286
    invoke-static {p5}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p5

    const/4 v0, 0x0

    new-array v1, v0, [Z

    .line 287
    invoke-virtual {p5, p3, v1}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p3

    check-cast p3, Lbks;

    const/4 p5, 0x1

    if-ne p4, p5, :cond_0

    .line 289
    sget-object p4, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    invoke-virtual {p3, p4}, Lbks;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p4

    check-cast p4, Lbks;

    .line 290
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array p5, p5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p5, v0

    const-string p1, "getCategoryAlbumList_%d"

    invoke-static {v1, p1, p5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lbks;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 292
    :cond_0
    new-instance p1, Lbkt;

    invoke-direct {p1, p6}, Lbkt;-><init>(Lbkv;)V

    invoke-virtual {p3, p1}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public a(Lbkv;Z)Lcom/lzy/okgo/adapter/Call;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean;",
            ">;Z)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 404
    sget-object p2, Lcom/xiaopeng/musicradio/common/d;->r:Ljava/lang/String;

    invoke-static {p2}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p2

    new-instance v0, Lbkt;

    invoke-direct {v0, p1}, Lbkt;-><init>(Lbkv;)V

    .line 405
    invoke-virtual {p2, v0}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1

    .line 407
    :cond_0
    sget-object p2, Lcom/xiaopeng/musicradio/common/d;->r:Ljava/lang/String;

    invoke-static {p2}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p2

    const-string v0, "todayNewsChannels"

    .line 408
    invoke-virtual {p2, v0}, Lbks;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p2

    check-cast p2, Lbks;

    sget-object v0, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    .line 409
    invoke-virtual {p2, v0}, Lbks;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p2

    check-cast p2, Lbks;

    new-instance v0, Lbkt;

    invoke-direct {v0, p1}, Lbkt;-><init>(Lbkv;)V

    .line 410
    invoke-virtual {p2, v0}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;IILbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumSearchBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumSearchBean;",
            ">;"
        }
    .end annotation

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "keyword"

    .line 195
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "page"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "pageSize"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object p1, Lcom/xiaopeng/musicradio/common/d;->f:Ljava/lang/String;

    invoke-static {p1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Z

    .line 200
    invoke-virtual {p1, v0, p2}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p4}, Lbkt;-><init>(Lbkv;)V

    .line 201
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumDetailBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumDetailBean;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v1, Lcom/xiaopeng/musicradio/common/d;->c:Ljava/lang/String;

    invoke-static {v1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Z

    .line 71
    invoke-virtual {v1, v0, v2}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lbks;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFmAlbumDetails:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-virtual {v0, p1}, Lbks;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    sget-object v0, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    .line 73
    invoke-virtual {p1, v0}, Lbks;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance v0, Lbkt;

    invoke-direct {v0, p2}, Lbkt;-><init>(Lbkv;)V

    .line 74
    invoke-virtual {p1, v0}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public a(ZLbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3;",
            ">;"
        }
    .end annotation

    .line 369
    sget-object v0, Lcom/xiaopeng/musicradio/common/d;->q:Ljava/lang/String;

    invoke-static {v0}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 371
    sget-object p1, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    invoke-virtual {v0, p1}, Lbks;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    const-string v1, "getReadingCategoryV3"

    .line 372
    invoke-virtual {p1, v1}, Lbks;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 374
    :cond_0
    new-instance p1, Lbkt;

    invoke-direct {p1, p2}, Lbkt;-><init>(Lbkv;)V

    invoke-virtual {v0, p1}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public a(IIILbkv;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/ReadingHotRankListBean;",
            ">;)V"
        }
    .end annotation

    .line 448
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 449
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rankId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "page"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pageSize"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v1, Lcom/xiaopeng/musicradio/common/d;->u:Ljava/lang/String;

    invoke-static {v1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ranklist:page:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ":pagesize:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ":rankId:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 453
    invoke-virtual {v1, p1}, Lbks;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    const/4 p2, 0x0

    new-array p2, p2, [Z

    .line 454
    invoke-virtual {p1, v0, p2}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p4}, Lbkt;-><init>(Lbkv;)V

    .line 455
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public a(ILbkv;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;",
            ">;)V"
        }
    .end annotation

    .line 414
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 415
    invoke-static {}, Lbcl;->a()Lbcl;

    move-result-object v1

    invoke-virtual {v1}, Lbcl;->b()Ljava/lang/String;

    move-result-object v1

    .line 416
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "cityCode"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "page"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "pageSize"

    const-string v3, "20"

    .line 418
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v2, Lcom/xiaopeng/musicradio/common/d;->s:Ljava/lang/String;

    invoke-static {v2}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Z

    .line 420
    invoke-virtual {v2, v0, v3}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lbks;

    const-string v2, "getGuessLike"

    .line 421
    invoke-virtual {v0, v2}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lbks;

    sget-object v2, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    .line 422
    invoke-virtual {v0, v2}, Lbks;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lbks;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cityCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",page:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", pageSize:20"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 423
    invoke-virtual {v0, p1}, Lbks;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance v0, Lbkt;

    invoke-direct {v0, p2}, Lbkt;-><init>(Lbkv;)V

    .line 424
    invoke-virtual {p1, v0}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public a(Lbkv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean;",
            ">;)V"
        }
    .end annotation

    .line 440
    sget-object v0, Lcom/xiaopeng/musicradio/common/d;->t:Ljava/lang/String;

    invoke-static {v0}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object v0

    const-string v1, "hotrank"

    .line 441
    invoke-virtual {v0, v1}, Lbks;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lbks;

    sget-object v1, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    .line 442
    invoke-virtual {v0, v1}, Lbks;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lbks;

    new-instance v1, Lbkt;

    invoke-direct {v1, p1}, Lbkt;-><init>(Lbkv;)V

    .line 443
    invoke-virtual {v0, v1}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public a(Ljava/util/List;Lbkv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/ReadingTrackListBean;",
            ">;)V"
        }
    .end annotation

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 384
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 385
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 387
    :cond_0
    sget-object p1, Lcom/xiaopeng/musicradio/common/d;->m:Ljava/lang/String;

    invoke-static {p1}, Lbkn;->b(Ljava/lang/String;)Lcom/lzy/okgo/request/PostRequest;

    move-result-object p1

    const-string v1, "ids"

    .line 388
    invoke-virtual {p1, v1, v0}, Lcom/lzy/okgo/request/PostRequest;->addUrlParams(Ljava/lang/String;Ljava/util/List;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    new-instance v0, Lbkt;

    invoke-direct {v0, p2}, Lbkt;-><init>(Lbkv;)V

    .line 389
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/request/PostRequest;->execute(Lcom/lzy/okgo/callback/Callback;)V

    return-void
.end method

.method public a(Ljava/util/Map;Lbkv;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;",
            ">;)V"
        }
    .end annotation

    .line 459
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "submitPlayRecord key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XpFMModel"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 462
    :cond_0
    sget-object v0, Lcom/xiaopeng/musicradio/common/d;->v:Ljava/lang/String;

    invoke-static {v0}, Lbkn;->b(Ljava/lang/String;)Lcom/lzy/okgo/request/PostRequest;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Z

    .line 463
    invoke-virtual {v0, p1, v1}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    new-instance v0, Lbkt;

    invoke-direct {v0, p2}, Lbkt;-><init>(Lbkv;)V

    .line 464
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/request/PostRequest;->execute(Lcom/lzy/okgo/callback/Callback;)V

    return-void
.end method

.method public b(JJILjava/lang/String;Lbkv;Ljava/lang/String;)Lcom/lzy/okgo/adapter/Call;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Ljava/lang/String;",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFmAlbumSpecTracks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 145
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "albumId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p8, :cond_0

    .line 147
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "trackId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pageSize"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sort"

    .line 151
    invoke-interface {v1, v2, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p8, :cond_1

    .line 152
    sget-object p8, Lcom/xiaopeng/musicradio/common/d;->e:Ljava/lang/String;

    :cond_1
    invoke-static {p8}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p8

    const/4 v2, 0x0

    new-array v2, v2, [Z

    .line 153
    invoke-virtual {p8, v1, v2}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p8

    check-cast p8, Lbks;

    .line 154
    invoke-virtual {p8, v0}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p8

    check-cast p8, Lbks;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFmAlbumSpecTracksFirst"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-virtual {p8, p1}, Lbks;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    sget-object p2, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    .line 156
    invoke-virtual {p1, p2}, Lbks;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p7}, Lbkt;-><init>(Lbkv;)V

    .line 157
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public b(JJLbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/PlayTrackInfoBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/PlayTrackInfoBean;",
            ">;"
        }
    .end annotation

    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 247
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "id"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "albumId"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object p1, Lcom/xiaopeng/musicradio/common/d;->x:Ljava/lang/String;

    invoke-static {p1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Z

    .line 250
    invoke-virtual {p1, v0, p2}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p5}, Lbkt;-><init>(Lbkv;)V

    .line 251
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public b(ILbkv;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;",
            ">;)V"
        }
    .end annotation

    .line 428
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 429
    invoke-static {}, Lbcl;->a()Lbcl;

    move-result-object v1

    invoke-virtual {v1}, Lbcl;->b()Ljava/lang/String;

    move-result-object v1

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cityCode"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "page"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "pageSize"

    const-string v1, "20"

    .line 432
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object p1, Lcom/xiaopeng/musicradio/common/d;->s:Ljava/lang/String;

    invoke-static {p1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Z

    .line 434
    invoke-virtual {p1, v0, v1}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    const-string v0, "getGuessLike"

    .line 435
    invoke-virtual {p1, v0}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance v0, Lbkt;

    invoke-direct {v0, p2}, Lbkt;-><init>(Lbkv;)V

    .line 436
    invoke-virtual {p1, v0}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method
