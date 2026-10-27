.class public Lbev;
.super Ljava/lang/Object;
.source "XpMusciModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbev$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lbev;
    .locals 1

    .line 94
    invoke-static {}, Lbev$a;->a()Lbev;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(IILbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;"
        }
    .end annotation

    .line 640
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 641
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "page"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "pageSize"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "request Dolby select"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XpMusciModel"

    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "https://xmart.xiaopeng.com/media/v4/music/dolby/v2/unionSongs"

    .line 644
    invoke-static {p1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Z

    .line 645
    invoke-virtual {p1, v0, p2}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    const-string p2, "getNeteaseZoneDailyRecommend"

    .line 646
    invoke-virtual {p1, p2}, Lbks;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    sget-object p2, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    .line 647
    invoke-virtual {p1, p2}, Lbks;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p3}, Lbkt;-><init>(Lbkv;)V

    .line 648
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public a(ILbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;"
        }
    .end annotation

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNewSongIndex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    .line 366
    invoke-static {p1}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/common/a;->l()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p1

    .line 367
    invoke-virtual {p1, v0}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance v0, Lbkt;

    invoke-direct {v0, p2}, Lbkt;-><init>(Lbkv;)V

    .line 368
    invoke-virtual {p1, v0}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public a(ILjava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;",
            ">;"
        }
    .end annotation

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHotRadio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 314
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    .line 315
    invoke-static {p1}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/common/a;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object v0

    sget-object v1, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    .line 316
    invoke-virtual {v0, v1}, Lbks;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lbks;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HOT_RADIO_TAG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 317
    invoke-virtual {v0, p1}, Lbks;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    .line 318
    invoke-virtual {p1, p2}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p3}, Lbkt;-><init>(Lbkv;)V

    .line 319
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;ILbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean;",
            ">;"
        }
    .end annotation

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getKugooSingerList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 499
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    .line 500
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "areaCode"

    .line 501
    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "typeCode"

    .line 502
    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "page"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "pageSize"

    const-string v3, "30"

    .line 504
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p4, v3, :cond_0

    .line 507
    invoke-static {p1}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/common/a;->q()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object v3

    new-array v2, v2, [Z

    .line 508
    invoke-virtual {v3, v1, v2}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object v1

    check-cast v1, Lbks;

    sget-object v2, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    .line 509
    invoke-virtual {v1, v2}, Lbks;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object v1

    check-cast v1, Lbks;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KUGOU_SINGERLIST_TAG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 510
    invoke-virtual {v1, p1}, Lbks;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    .line 511
    invoke-virtual {p1, v0}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p5}, Lbkt;-><init>(Lbkv;)V

    .line 512
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1

    .line 514
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/common/a;->q()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p1

    new-array p2, v2, [Z

    .line 515
    invoke-virtual {p1, v1, p2}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    .line 516
    invoke-virtual {p1, v0}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p5}, Lbkt;-><init>(Lbkv;)V

    .line 517
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;",
            ">;"
        }
    .end annotation

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSingerList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 485
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    .line 486
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "areaCode"

    .line 487
    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "typeCode"

    .line 488
    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    invoke-static {p1}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/common/a;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Z

    .line 490
    invoke-virtual {v2, v1, v3}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object v1

    check-cast v1, Lbks;

    sget-object v2, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    .line 491
    invoke-virtual {v1, v2}, Lbks;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object v1

    check-cast v1, Lbks;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SINGERLIST_TAG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 492
    invoke-virtual {v1, p1}, Lbks;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    .line 493
    invoke-virtual {p1, v0}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p4}, Lbkt;-><init>(Lbkv;)V

    .line 494
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public a(IZLjava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/lang/String;",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 104
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    .line 105
    invoke-static {p1}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/common/a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p2

    .line 106
    invoke-virtual {p2, p3}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p2

    check-cast p2, Lbks;

    sget-object v0, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    .line 107
    invoke-virtual {p2, v0}, Lbks;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p2

    check-cast p2, Lbks;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 108
    invoke-virtual {p2, p1}, Lbks;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p4}, Lbkt;-><init>(Lbkv;)V

    .line 109
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1

    .line 111
    :cond_0
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    .line 112
    invoke-static {p1}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/common/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p1

    .line 113
    invoke-virtual {p1, p3}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p4}, Lbkt;-><init>(Lbkv;)V

    .line 114
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public a(Lbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult;",
            ">;"
        }
    .end annotation

    .line 537
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    const-string v1, "getCollectsCollectLabels"

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    .line 538
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    .line 539
    invoke-static {v0}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/common/a;->J()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object v2

    sget-object v3, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    .line 540
    invoke-virtual {v2, v3}, Lbks;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object v2

    check-cast v2, Lbks;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "COLLECTSCOLLECTLABELS_TAG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 541
    invoke-virtual {v2, v0}, Lbks;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lbks;

    .line 542
    invoke-virtual {v0, v1}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lbks;

    new-instance v1, Lbkt;

    invoke-direct {v1, p1}, Lbkt;-><init>(Lbkv;)V

    .line 543
    invoke-virtual {v0, v1}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;IIIILbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIII",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;"
        }
    .end annotation

    .line 260
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getRecommendRadioSongList"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 261
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    .line 262
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 264
    invoke-static {p5}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/common/a;->M()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq p5, v2, :cond_1

    if-ne p5, v1, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "radioName"

    invoke-interface {p4, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 266
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "radioId"

    invoke-interface {p4, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :goto_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "page"

    invoke-interface {p4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x32

    .line 271
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "pageSize"

    invoke-interface {p4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p5, v1, :cond_2

    const/16 p1, 0x14

    .line 273
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_2
    invoke-static {v0}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Z

    .line 277
    invoke-virtual {p1, p4, p2}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    .line 278
    invoke-virtual {p1, p3}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p6}, Lbkt;-><init>(Lbkv;)V

    .line 279
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;IIIILjava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/lang/String;",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;",
            ">;"
        }
    .end annotation

    .line 592
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getCategoryCollect"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 593
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    .line 595
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const-string p6, "categoryId"

    .line 596
    invoke-interface {p3, p6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p6

    const-string v0, "page"

    invoke-interface {p3, v0, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p6, 0x32

    .line 598
    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p6

    const-string v0, "pageSize"

    invoke-interface {p3, v0, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p6, 0x4

    if-ne p5, p6, :cond_0

    const/16 p6, 0x14

    .line 600
    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p6

    invoke-interface {p3, v0, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p6, 0x2

    if-ne p5, p6, :cond_1

    const-string p6, "labelName"

    .line 604
    invoke-interface {p3, p6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p6, 0x1

    const/4 v0, 0x0

    if-ne p4, p6, :cond_2

    .line 608
    invoke-static {p5}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p6

    invoke-virtual {p6}, Lcom/xiaopeng/musicradio/common/a;->m()Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p6

    new-array v0, v0, [Z

    .line 609
    invoke-virtual {p6, p3, v0}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p3

    check-cast p3, Lbks;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CATEGORYCOLLECT_TAG"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 610
    invoke-virtual {p3, p1}, Lbks;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    .line 611
    invoke-virtual {p1, p2}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    sget-object p2, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    .line 612
    invoke-virtual {p1, p2}, Lbks;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p7}, Lbkt;-><init>(Lbkv;)V

    .line 613
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1

    .line 615
    :cond_2
    invoke-static {p5}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/common/a;->m()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p1

    new-array p4, v0, [Z

    .line 616
    invoke-virtual {p1, p3, p4}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    .line 617
    invoke-virtual {p1, p2}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p7}, Lbkt;-><init>(Lbkv;)V

    .line 618
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;IIIIZLjava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIIZ",
            "Ljava/lang/String;",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCollectSongList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    .line 132
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    invoke-virtual {v0, p7}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "id"

    .line 134
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    const-string v1, "2"

    goto :goto_0

    :cond_0
    const-string v1, "1"

    :goto_0
    const-string v2, "version"

    .line 135
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "page"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    const-string v1, "pageSize"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p4, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    if-ne p3, v1, :cond_3

    if-eqz p6, :cond_3

    .line 139
    :cond_2
    invoke-static {p5}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/common/a;->v()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p2

    new-array p4, p4, [Z

    .line 140
    invoke-virtual {p2, v0, p4}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p2

    check-cast p2, Lbks;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "MUSICCOLLECTSONGLIST_TAG"

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-virtual {p2, p1}, Lbks;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    sget-object p2, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    .line 142
    invoke-virtual {p1, p2}, Lbks;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    const-wide/32 p2, 0x240c8400

    .line 143
    invoke-virtual {p1, p2, p3}, Lbks;->cacheTime(J)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    .line 144
    invoke-virtual {p1, p7}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p8}, Lbkt;-><init>(Lbkv;)V

    .line 145
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1

    .line 148
    :cond_3
    invoke-static {p5}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/common/a;->v()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p1

    new-array p2, p4, [Z

    .line 149
    invoke-virtual {p1, v0, p2}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    .line 150
    invoke-virtual {p1, p7}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p8}, Lbkt;-><init>(Lbkv;)V

    .line 151
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;IIIZLbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIZ",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;"
        }
    .end annotation

    const-string v6, "default"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    .line 120
    invoke-virtual/range {v0 .. v7}, Lbev;->a(Ljava/lang/String;IIIZLjava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;IIIZLjava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIZ",
            "Ljava/lang/String;",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;"
        }
    .end annotation

    .line 126
    invoke-static {p4}, Lcom/xiaopeng/musicradio/utils/ay;->a(I)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 127
    invoke-virtual/range {v0 .. v8}, Lbev;->a(Ljava/lang/String;IIIIZLjava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;IILbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicAlbumSongListBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicAlbumSongListBean;",
            ">;"
        }
    .end annotation

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUserFavouritesCollectsSonglist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    .line 341
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 342
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "id"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "type"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-static {p3}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/common/a;->t()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Z

    .line 345
    invoke-virtual {p1, v1, p2}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    .line 346
    invoke-virtual {p1, v0}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p4}, Lbkt;-><init>(Lbkv;)V

    .line 347
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;IIZLjava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/lang/String;",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;"
        }
    .end annotation

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAlbumsSongListHasPageForActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 203
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 205
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "albumId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lez p2, :cond_0

    .line 207
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "page"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p2, 0x0

    if-eqz p4, :cond_1

    .line 210
    invoke-static {p3}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p4

    invoke-virtual {p4}, Lcom/xiaopeng/musicradio/common/a;->s()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p4

    new-array p2, p2, [Z

    .line 211
    invoke-virtual {p4, v0, p2}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p2

    check-cast p2, Lbks;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ALBUMSSONGLIST_TAG"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 212
    invoke-virtual {p2, p1}, Lbks;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    sget-object p2, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    .line 213
    invoke-virtual {p1, p2}, Lbks;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    .line 214
    invoke-virtual {p1, p5}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p6}, Lbkt;-><init>(Lbkv;)V

    .line 215
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1

    .line 217
    :cond_1
    invoke-static {p3}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/common/a;->s()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p1

    new-array p2, p2, [Z

    .line 218
    invoke-virtual {p1, v0, p2}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    .line 219
    invoke-virtual {p1, p5}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p6}, Lbkt;-><init>(Lbkv;)V

    .line 220
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;IIZLjava/lang/String;Lbkv;I)Lcom/lzy/okgo/adapter/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/lang/String;",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;I)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;"
        }
    .end annotation

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getArtistSongListForActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 289
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    .line 290
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    .line 291
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "singerId"

    invoke-interface {p5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "page"

    invoke-interface {p5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "pageSize"

    invoke-interface {p5, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    if-eqz p4, :cond_0

    .line 296
    invoke-static {p7}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p4

    invoke-virtual {p4}, Lcom/xiaopeng/musicradio/common/a;->u()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p4

    new-array p3, p3, [Z

    .line 297
    invoke-virtual {p4, p5, p3}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p3

    check-cast p3, Lbks;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "ARTISTSONGLIST_TAG"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 298
    invoke-virtual {p3, p1}, Lbks;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    sget-object p2, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    .line 299
    invoke-virtual {p1, p2}, Lbks;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    .line 300
    invoke-virtual {p1, v1}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p6}, Lbkt;-><init>(Lbkv;)V

    .line 301
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1

    .line 304
    :cond_0
    invoke-static {p7}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/common/a;->u()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p1

    new-array p2, p3, [Z

    .line 305
    invoke-virtual {p1, p5, p2}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    .line 306
    invoke-virtual {p1, v1}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p6}, Lbkt;-><init>(Lbkv;)V

    .line 307
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Lbkv;I)Lcom/lzy/okgo/adapter/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;",
            ">;I)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;",
            ">;"
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAlbumList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 179
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "singerId"

    .line 181
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "page"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x32

    .line 183
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pageSize"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    if-ne p5, v1, :cond_0

    const/16 v1, 0x14

    .line 185
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_1

    .line 188
    invoke-static {p5}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/common/a;->H()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p2

    new-array v1, v2, [Z

    .line 189
    invoke-virtual {p2, v0, v1}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p2

    check-cast p2, Lbks;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-virtual {p2, p1}, Lbks;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    .line 191
    invoke-virtual {p1, p3}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    sget-object p2, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    .line 192
    invoke-virtual {p1, p2}, Lbks;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p4}, Lbkt;-><init>(Lbkv;)V

    .line 193
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1

    .line 195
    :cond_1
    invoke-static {p5}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/common/a;->H()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p1

    new-array p2, v2, [Z

    .line 196
    invoke-virtual {p1, v0, p2}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    .line 197
    invoke-virtual {p1, p3}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p4}, Lbkt;-><init>(Lbkv;)V

    .line 198
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;IZLjava/lang/String;Lbkv;I)Lcom/lzy/okgo/adapter/Call;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;I)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;"
        }
    .end annotation

    .line 283
    invoke-static {p6}, Lcom/xiaopeng/musicradio/utils/ay;->a(I)I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    .line 284
    invoke-virtual/range {v0 .. v7}, Lbev;->a(Ljava/lang/String;IIZLjava/lang/String;Lbkv;I)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicAlbumResult;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicAlbumResult;",
            ">;"
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 170
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "https://xmart.xiaopeng.com/media/music/albums/detail"

    .line 172
    invoke-static {p1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Z

    .line 173
    invoke-virtual {p1, v0, v1}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance v0, Lbkt;

    invoke-direct {v0, p2}, Lbkt;-><init>(Lbkv;)V

    .line 174
    invoke-virtual {p1, v0}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;",
            ">;"
        }
    .end annotation

    .line 240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "artistName"

    .line 241
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "songName"

    .line 242
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-static {p3}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/common/a;->A()Ljava/lang/String;

    move-result-object p3

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "matchNetMusic singer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", song:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", url:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XpMusciModel"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-static {p3}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p1

    sget-object p2, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    .line 247
    invoke-virtual {p1, p2}, Lbks;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    const/4 p2, 0x0

    new-array p2, p2, [Z

    .line 248
    invoke-virtual {p1, v0, p2}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p4}, Lbkt;-><init>(Lbkv;)V

    .line 249
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 767
    :cond_0
    invoke-static {p9}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p9

    if-nez p9, :cond_1

    return-void

    .line 771
    :cond_1
    invoke-virtual {p9}, Lcom/xiaopeng/musicradio/common/a;->N()Ljava/lang/String;

    move-result-object p9

    .line 772
    invoke-static {p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 776
    :cond_2
    invoke-static {p9}, Lbkn;->b(Ljava/lang/String;)Lcom/lzy/okgo/request/PostRequest;

    move-result-object p9

    const/4 v0, 0x0

    new-array v1, v0, [Z

    const-string v2, "type"

    const-string v3, "song"

    .line 777
    invoke-virtual {p9, v2, v3, v1}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p9

    check-cast p9, Lcom/lzy/okgo/request/PostRequest;

    new-array v1, v0, [Z

    const-string v2, "action"

    .line 778
    invoke-virtual {p9, v2, p1, v1}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    new-array p9, v0, [Z

    const-string v1, "bitrate"

    .line 779
    invoke-virtual {p1, v1, p2, p9}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/lang/String;I[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    new-array p2, v0, [Z

    const-string p9, "file"

    .line 780
    invoke-virtual {p1, p9, p3, p2}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/lang/String;I[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    new-array p2, v0, [Z

    const-string p3, "startLogTime"

    .line 781
    invoke-virtual {p1, p3, p4, p2}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    new-array p2, v0, [Z

    const-string p3, "id"

    .line 782
    invoke-virtual {p1, p3, p5, p2}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    new-array p2, v0, [Z

    const-string p3, "time"

    .line 783
    invoke-virtual {p1, p3, p6, p2}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    new-array p2, v0, [Z

    const-string p3, "end"

    .line 784
    invoke-virtual {p1, p3, p7, p2}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    new-array p2, v0, [Z

    const-string p3, "alg"

    .line 785
    invoke-virtual {p1, p3, p8, p2}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    .line 786
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/request/PostRequest;->retryCount(I)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    sget-object p2, Lcom/lzy/okgo/cache/CacheMode;->NO_CACHE:Lcom/lzy/okgo/cache/CacheMode;

    .line 787
    invoke-virtual {p1, p2}, Lcom/lzy/okgo/request/PostRequest;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    .line 788
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "reportMusicFlow: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lzy/okgo/request/PostRequest;->getParams()Lcom/lzy/okgo/model/HttpParams;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "XpMusciModel"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    new-instance p2, Lbkt;

    invoke-direct {p2}, Lbkt;-><init>()V

    invoke-virtual {p1, p2}, Lcom/lzy/okgo/request/PostRequest;->execute(Lcom/lzy/okgo/callback/Callback;)V

    return-void
.end method

.method public a(Ljava/lang/String;JILjava/lang/String;JIIJLjava/lang/String;II)V
    .locals 6

    .line 793
    invoke-static/range {p14 .. p14}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 797
    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/common/a;->N()Ljava/lang/String;

    move-result-object v0

    .line 799
    invoke-static {v0}, Lbkn;->b(Ljava/lang/String;)Lcom/lzy/okgo/request/PostRequest;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Z

    const-string v3, "hash"

    move-object v4, p1

    .line 800
    invoke-virtual {v0, v3, p1, v2}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lcom/lzy/okgo/request/PostRequest;

    new-array v2, v1, [Z

    const-string v3, "lvt"

    move-wide v4, p2

    .line 801
    invoke-virtual {v0, v3, p2, p3, v2}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/lang/String;J[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lcom/lzy/okgo/request/PostRequest;

    new-array v2, v1, [Z

    const-string v3, "mediaType"

    move v4, p4

    .line 802
    invoke-virtual {v0, v3, p4, v2}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/lang/String;I[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lcom/lzy/okgo/request/PostRequest;

    new-array v2, v1, [Z

    const-string v3, "path"

    move-object v4, p5

    .line 803
    invoke-virtual {v0, v3, p5, v2}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lcom/lzy/okgo/request/PostRequest;

    new-array v2, v1, [Z

    const-string v3, "playTime"

    move-wide v4, p6

    .line 804
    invoke-virtual {v0, v3, p6, p7, v2}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/lang/String;J[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lcom/lzy/okgo/request/PostRequest;

    new-array v2, v1, [Z

    const-string v3, "playType"

    move v4, p8

    .line 805
    invoke-virtual {v0, v3, p8, v2}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/lang/String;I[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lcom/lzy/okgo/request/PostRequest;

    new-array v2, v1, [Z

    const-string v3, "quality"

    move v4, p9

    .line 806
    invoke-virtual {v0, v3, p9, v2}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/lang/String;I[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lcom/lzy/okgo/request/PostRequest;

    new-array v2, v1, [Z

    const-string v3, "songPlayTime"

    move-wide/from16 v4, p10

    .line 807
    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/lang/String;J[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lcom/lzy/okgo/request/PostRequest;

    new-array v2, v1, [Z

    const-string v3, "sourceId"

    move-object/from16 v4, p12

    .line 808
    invoke-virtual {v0, v3, v4, v2}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lcom/lzy/okgo/request/PostRequest;

    new-array v2, v1, [Z

    const-string v3, "tryPlay"

    move/from16 v4, p13

    .line 809
    invoke-virtual {v0, v3, v4, v2}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/lang/String;I[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lcom/lzy/okgo/request/PostRequest;

    .line 810
    invoke-virtual {v0, v1}, Lcom/lzy/okgo/request/PostRequest;->retryCount(I)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lcom/lzy/okgo/request/PostRequest;

    sget-object v1, Lcom/lzy/okgo/cache/CacheMode;->NO_CACHE:Lcom/lzy/okgo/cache/CacheMode;

    .line 811
    invoke-virtual {v0, v1}, Lcom/lzy/okgo/request/PostRequest;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lcom/lzy/okgo/request/PostRequest;

    .line 812
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportKugouMusicFlow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/PostRequest;->getParams()Lcom/lzy/okgo/model/HttpParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XpMusciModel"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    new-instance v1, Lbkt;

    invoke-direct {v1}, Lbkt;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/request/PostRequest;->execute(Lcom/lzy/okgo/callback/Callback;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 4

    .line 821
    invoke-static {p7}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p7

    if-nez p7, :cond_0

    return-void

    .line 825
    :cond_0
    invoke-virtual {p7}, Lcom/xiaopeng/musicradio/common/a;->N()Ljava/lang/String;

    move-result-object p7

    .line 826
    invoke-static {p7}, Lbkn;->b(Ljava/lang/String;)Lcom/lzy/okgo/request/PostRequest;

    move-result-object p7

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v2, v1, [Z

    const-string v3, "mediaType"

    .line 827
    invoke-virtual {p7, v3, v0, v2}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/lang/String;I[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p7

    check-cast p7, Lcom/lzy/okgo/request/PostRequest;

    new-array v0, v1, [Z

    const-string v2, "songId"

    .line 828
    invoke-virtual {p7, v2, p1, v0}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    new-array p7, v1, [Z

    const-string v0, "hash"

    .line 829
    invoke-virtual {p1, v0, p2, p7}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    new-array p2, v1, [Z

    const-string p7, "playTime"

    .line 830
    invoke-virtual {p1, p7, p3, p2}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/lang/String;I[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    new-array p2, v1, [Z

    const-string p3, "playQuality"

    .line 831
    invoke-virtual {p1, p3, p4, p2}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/lang/String;I[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    new-array p2, v1, [Z

    const-string p3, "from"

    .line 832
    invoke-virtual {p1, p3, p5, p2}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/lang/String;I[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    new-array p2, v1, [Z

    const-string p3, "path"

    .line 833
    invoke-virtual {p1, p3, p6, p2}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    .line 834
    invoke-virtual {p1, v1}, Lcom/lzy/okgo/request/PostRequest;->retryCount(I)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    sget-object p2, Lcom/lzy/okgo/cache/CacheMode;->NO_CACHE:Lcom/lzy/okgo/cache/CacheMode;

    .line 835
    invoke-virtual {p1, p2}, Lcom/lzy/okgo/request/PostRequest;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    .line 836
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "reportMusicFlow: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lzy/okgo/request/PostRequest;->getParams()Lcom/lzy/okgo/model/HttpParams;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "XpMusciModel"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    new-instance p2, Lbkt;

    invoke-direct {p2}, Lbkt;-><init>()V

    invoke-virtual {p1, p2}, Lcom/lzy/okgo/request/PostRequest;->execute(Lcom/lzy/okgo/callback/Callback;)V

    return-void
.end method

.method public b(IILbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean;",
            ">;"
        }
    .end annotation

    .line 660
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 661
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "page"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "pageSize"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request Dolby select"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "XpMusciModel"

    invoke-static {v1, p2}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    const-string v1, "https://xmart.xiaopeng.com/media/v4/music/dolby/getDolbyResource"

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 665
    invoke-static {v1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object v1

    new-array p2, p2, [Z

    .line 666
    invoke-virtual {v1, v0, p2}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p2

    check-cast p2, Lbks;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNeteaseZoneDolbyAll"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 667
    invoke-virtual {p2, p1}, Lbks;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    sget-object p2, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    .line 668
    invoke-virtual {p1, p2}, Lbks;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p3}, Lbkt;-><init>(Lbkv;)V

    .line 669
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1

    .line 672
    :cond_0
    invoke-static {v1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p1

    new-array p2, p2, [Z

    .line 673
    invoke-virtual {p1, v0, p2}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p3}, Lbkt;-><init>(Lbkv;)V

    .line 674
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public b(ILbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean;",
            ">;"
        }
    .end annotation

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHotArtistsList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    .line 410
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v1

    invoke-virtual {v1}, Lbdu;->d()I

    move-result v1

    .line 411
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 412
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x64

    .line 413
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pageSize"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    invoke-static {v1}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/common/a;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Z

    .line 415
    invoke-virtual {v3, v2, v4}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object v2

    check-cast v2, Lbks;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HOTARTISTSLIST_TAG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 416
    invoke-virtual {v2, p1}, Lbks;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    .line 417
    invoke-virtual {p1, v0}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    sget-object v0, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    .line 418
    invoke-virtual {p1, v0}, Lbks;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance v0, Lbkt;

    invoke-direct {v0, p2}, Lbkt;-><init>(Lbkv;)V

    .line 419
    invoke-virtual {p1, v0}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public b(ILjava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;",
            ">;"
        }
    .end annotation

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHotSingerList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 438
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    .line 439
    invoke-static {p1}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/common/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object v0

    .line 440
    invoke-virtual {v0, p2}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p2

    check-cast p2, Lbks;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HOTSINGERLIST_TAG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 441
    invoke-virtual {p2, p1}, Lbks;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    sget-object p2, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    .line 442
    invoke-virtual {p1, p2}, Lbks;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p3}, Lbkt;-><init>(Lbkv;)V

    .line 443
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public b(IZLjava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/lang/String;",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;"
        }
    .end annotation

    .line 155
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 157
    invoke-static {p1}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/common/a;->k()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p2

    sget-object p3, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    .line 158
    invoke-virtual {p2, p3}, Lbks;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p2

    check-cast p2, Lbks;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DAILY_RECOMMEND_BANNER_TAG"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-virtual {p2, p1}, Lbks;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    const-string p2, "getDailyBanner"

    .line 160
    invoke-virtual {p1, p2}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p4}, Lbkt;-><init>(Lbkv;)V

    .line 161
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1

    .line 163
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/common/a;->k()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p1

    .line 164
    invoke-virtual {p1, p3}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p4}, Lbkt;-><init>(Lbkv;)V

    .line 165
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public b(Lbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult;",
            ">;"
        }
    .end annotation

    .line 547
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    const-string v1, "getNewSongLabels"

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    .line 548
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    .line 549
    invoke-static {v0}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/common/a;->K()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object v2

    sget-object v3, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    .line 550
    invoke-virtual {v2, v3}, Lbks;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object v2

    check-cast v2, Lbks;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NEW_SONG_LABELS_TAG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    invoke-virtual {v2, v0}, Lbks;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lbks;

    .line 552
    invoke-virtual {v0, v1}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lbks;

    new-instance v1, Lbkt;

    invoke-direct {v1, p1}, Lbkt;-><init>(Lbkv;)V

    .line 553
    invoke-virtual {v0, v1}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;IIIIZLjava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIIZ",
            "Ljava/lang/String;",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;"
        }
    .end annotation

    .line 380
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getRankMusicSongListForActivity"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 381
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object p6

    invoke-virtual {p6, p2}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    .line 382
    new-instance p6, Ljava/util/HashMap;

    invoke-direct {p6}, Ljava/util/HashMap;-><init>()V

    .line 383
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p7

    const-string v0, "rankId"

    invoke-interface {p6, v0, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p7

    const-string v0, "page"

    invoke-interface {p6, v0, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    const-string p7, "pageSize"

    invoke-interface {p6, p7, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p4, 0x0

    const/4 p7, 0x1

    if-ne p3, p7, :cond_0

    .line 387
    invoke-static {p5}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p7

    invoke-virtual {p7}, Lcom/xiaopeng/musicradio/common/a;->j()Ljava/lang/String;

    move-result-object p7

    invoke-static {p7}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p7

    new-array p4, p4, [Z

    .line 388
    invoke-virtual {p7, p6, p4}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p4

    check-cast p4, Lbks;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "RANK_MUSIC_SONG_LIST_FOR_ACTIVITY_TAG"

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 389
    invoke-virtual {p4, p1}, Lbks;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    sget-object p3, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    .line 390
    invoke-virtual {p1, p3}, Lbks;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    .line 391
    invoke-virtual {p1, p2}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p8}, Lbkt;-><init>(Lbkv;)V

    .line 392
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1

    .line 395
    :cond_0
    invoke-static {p5}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/common/a;->j()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p1

    new-array p3, p4, [Z

    .line 396
    invoke-virtual {p1, p6, p3}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    .line 397
    invoke-virtual {p1, p2}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p8}, Lbkt;-><init>(Lbkv;)V

    .line 398
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;IIIZLjava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIZ",
            "Ljava/lang/String;",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;"
        }
    .end annotation

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNewSongList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    .line 564
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    .line 565
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "categoryId"

    .line 566
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "page"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v2, "pageSize"

    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p3, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    if-eqz p5, :cond_0

    .line 571
    invoke-static {p4}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p5

    invoke-virtual {p5}, Lcom/xiaopeng/musicradio/common/a;->L()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p5

    new-array p3, p3, [Z

    .line 572
    invoke-virtual {p5, v0, p3}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p3

    check-cast p3, Lbks;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NEW_SONG_LIST_TAG"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 573
    invoke-virtual {p3, p1}, Lbks;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    sget-object p2, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    .line 574
    invoke-virtual {p1, p2}, Lbks;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    .line 575
    invoke-virtual {p1, p6}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p7}, Lbkt;-><init>(Lbkv;)V

    .line 576
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1

    .line 579
    :cond_0
    invoke-static {p4}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/common/a;->L()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p1

    new-array p2, p3, [Z

    .line 580
    invoke-virtual {p1, v0, p2}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    .line 581
    invoke-virtual {p1, v1}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p7}, Lbkt;-><init>(Lbkv;)V

    .line 582
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;IILbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;",
            ">;"
        }
    .end annotation

    .line 722
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "moduleId"

    .line 723
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "page"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v1, "pageSize"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request KugouZoneMore with Param "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "XpMusciModel"

    invoke-static {v1, p3}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 729
    invoke-static {v1}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/common/a;->T()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object v1

    new-array p3, p3, [Z

    .line 730
    invoke-virtual {v1, v0, p3}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p3

    check-cast p3, Lbks;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KUGOU_ZONE_RESULT_MORE_TAG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 731
    invoke-virtual {p3, p1}, Lbks;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    sget-object p2, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    .line 732
    invoke-virtual {p1, p2}, Lbks;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p4}, Lbkt;-><init>(Lbkv;)V

    .line 733
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1

    .line 736
    :cond_0
    invoke-static {v1}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/common/a;->T()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p1

    new-array p2, p3, [Z

    .line 737
    invoke-virtual {p1, v0, p2}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p4}, Lbkt;-><init>(Lbkv;)V

    .line 738
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;IIZLjava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/lang/String;",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;"
        }
    .end annotation

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNewSongList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object v3, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object v8, p5

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/16 v5, 0x1e

    move-object v2, p0

    move v6, p3

    move v7, p4

    move-object/from16 v9, p6

    .line 559
    invoke-virtual/range {v2 .. v9}, Lbev;->b(Ljava/lang/String;IIIZLjava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectDetailResult;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectDetailResult;",
            ">;"
        }
    .end annotation

    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 232
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "https://xmart.xiaopeng.com/media/music/collects/detail"

    .line 234
    invoke-static {p1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Z

    .line 235
    invoke-virtual {p1, v0, v1}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance v0, Lbkt;

    invoke-direct {v0, p2}, Lbkt;-><init>(Lbkv;)V

    .line 236
    invoke-virtual {p1, v0}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public c(ILbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult;",
            ">;"
        }
    .end annotation

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSingerIndex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 475
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    .line 476
    invoke-static {p1}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/common/a;->r()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object v1

    sget-object v2, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    .line 477
    invoke-virtual {v1, v2}, Lbks;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object v1

    check-cast v1, Lbks;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SINGERINDEX_TAG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 478
    invoke-virtual {v1, p1}, Lbks;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    .line 479
    invoke-virtual {p1, v0}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance v0, Lbkt;

    invoke-direct {v0, p2}, Lbkt;-><init>(Lbkv;)V

    .line 480
    invoke-virtual {p1, v0}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public c(ILjava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;",
            ">;"
        }
    .end annotation

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRandMusic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 448
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    .line 450
    invoke-static {p1}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/common/a;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object v0

    sget-object v1, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    .line 451
    invoke-virtual {v0, v1}, Lbks;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lbks;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RANDMUSIC_TAG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 452
    invoke-virtual {v0, p1}, Lbks;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    .line 453
    invoke-virtual {p1, p2}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p3}, Lbkt;-><init>(Lbkv;)V

    .line 454
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;IILbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;",
            ">;"
        }
    .end annotation

    .line 743
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "resourceId"

    .line 744
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "page"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v1, "pageSize"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request KugouZoneCategory with Param "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "XpMusciModel"

    invoke-static {v1, p3}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 750
    invoke-static {v1}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/common/a;->U()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object v1

    new-array p3, p3, [Z

    .line 751
    invoke-virtual {v1, v0, p3}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p3

    check-cast p3, Lbks;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KUGOU_ZONE_RESULT_CATEGORY_TAG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 752
    invoke-virtual {p3, p1}, Lbks;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    sget-object p2, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    .line 753
    invoke-virtual {p1, p2}, Lbks;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p4}, Lbkt;-><init>(Lbkv;)V

    .line 754
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1

    .line 756
    :cond_0
    invoke-static {v1}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/common/a;->U()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p1

    new-array p2, p3, [Z

    .line 757
    invoke-virtual {p1, v0, p2}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p4}, Lbkt;-><init>(Lbkv;)V

    .line 758
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean;",
            ">;"
        }
    .end annotation

    .line 690
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "zoneId"

    .line 691
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request KugouZone withID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XpMusciModel"

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 693
    invoke-static {v1}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/common/a;->S()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Z

    .line 694
    invoke-virtual {v1, v0, v2}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lbks;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KUGOU_ZONE_RESULT_TAG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 695
    invoke-virtual {v0, p1}, Lbks;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    sget-object v0, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    .line 696
    invoke-virtual {p1, v0}, Lbks;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance v0, Lbkt;

    invoke-direct {v0, p2}, Lbkt;-><init>(Lbkv;)V

    .line 697
    invoke-virtual {p1, v0}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public d(ILjava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;",
            ">;"
        }
    .end annotation

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getXpPlayMusic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 459
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    .line 460
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x32

    .line 461
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pageSize"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const/16 v1, 0x14

    .line 463
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/common/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Z

    .line 466
    invoke-virtual {v1, v0, v2}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lbks;

    sget-object v1, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    .line 467
    invoke-virtual {v0, v1}, Lbks;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lbks;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XPPLAYMUSIC_TAG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 468
    invoke-virtual {v0, p1}, Lbks;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    .line 469
    invoke-virtual {p1, p2}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    new-instance p2, Lbkt;

    invoke-direct {p2, p3}, Lbkt;-><init>(Lbkv;)V

    .line 470
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public d(ILbkv;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;",
            ">;)V"
        }
    .end annotation

    .line 522
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "configTypes"

    const-string v2, "3"

    .line 523
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "songQuality"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "https://xmart.xiaopeng.com/media/v2/users/info/saveConfig"

    .line 525
    invoke-static {p1}, Lbkn;->b(Ljava/lang/String;)Lcom/lzy/okgo/request/PostRequest;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Z

    .line 526
    invoke-virtual {p1, v0, v1}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    new-instance v0, Lbkt;

    invoke-direct {v0, p2}, Lbkt;-><init>(Lbkv;)V

    .line 527
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/request/PostRequest;->execute(Lcom/lzy/okgo/callback/Callback;)V

    return-void
.end method

.method public d(Ljava/lang/String;Lbkv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicAlbumSongListBean;",
            ">;)V"
        }
    .end annotation

    .line 706
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "hashList"

    .line 707
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x4

    .line 708
    invoke-static {p1}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/common/a;->P()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbkn;->b(Ljava/lang/String;)Lcom/lzy/okgo/request/PostRequest;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Z

    .line 709
    invoke-virtual {p1, v0, v1}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    new-instance v0, Lbkt;

    invoke-direct {v0, p2}, Lbkt;-><init>(Lbkv;)V

    .line 710
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/request/PostRequest;->execute(Lcom/lzy/okgo/callback/Callback;)V

    return-void
.end method

.method public e(ILbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean;",
            ">;"
        }
    .end annotation

    .line 685
    invoke-static {p1}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/common/a;->O()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p1

    new-instance v0, Lbkt;

    invoke-direct {v0, p2}, Lbkt;-><init>(Lbkv;)V

    .line 686
    invoke-virtual {p1, v0}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;Lbkv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult;",
            ">;)V"
        }
    .end annotation

    .line 714
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "hashList"

    .line 715
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x4

    .line 716
    invoke-static {p1}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/common/a;->Q()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbkn;->b(Ljava/lang/String;)Lcom/lzy/okgo/request/PostRequest;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Z

    .line 717
    invoke-virtual {p1, v0, v1}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    new-instance v0, Lbkt;

    invoke-direct {v0, p2}, Lbkt;-><init>(Lbkv;)V

    .line 718
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/request/PostRequest;->execute(Lcom/lzy/okgo/callback/Callback;)V

    return-void
.end method
