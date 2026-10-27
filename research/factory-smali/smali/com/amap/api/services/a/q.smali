.class public Lcom/amap/api/services/a/q;
.super Landroid/os/Handler;
.source "MessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/a/q$j;,
        Lcom/amap/api/services/a/q$k;,
        Lcom/amap/api/services/a/q$l;,
        Lcom/amap/api/services/a/q$c;,
        Lcom/amap/api/services/a/q$d;,
        Lcom/amap/api/services/a/q$f;,
        Lcom/amap/api/services/a/q$i;,
        Lcom/amap/api/services/a/q$e;,
        Lcom/amap/api/services/a/q$h;,
        Lcom/amap/api/services/a/q$g;,
        Lcom/amap/api/services/a/q$b;,
        Lcom/amap/api/services/a/q$a;
    }
.end annotation


# static fields
.field private static a:Lcom/amap/api/services/a/q;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 196
    return-void
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 199
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 201
    return-void
.end method

.method public static declared-synchronized a()Lcom/amap/api/services/a/q;
    .locals 3

    const-class v0, Lcom/amap/api/services/a/q;

    monitor-enter v0

    .line 184
    :try_start_0
    sget-object v1, Lcom/amap/api/services/a/q;->a:Lcom/amap/api/services/a/q;

    if-nez v1, :cond_2

    .line 185
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 186
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    new-instance v1, Lcom/amap/api/services/a/q;

    invoke-direct {v1}, Lcom/amap/api/services/a/q;-><init>()V

    sput-object v1, Lcom/amap/api/services/a/q;->a:Lcom/amap/api/services/a/q;

    goto :goto_1

    .line 187
    :cond_1
    :goto_0
    new-instance v1, Lcom/amap/api/services/a/q;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amap/api/services/a/q;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/amap/api/services/a/q;->a:Lcom/amap/api/services/a/q;

    .line 192
    :cond_2
    :goto_1
    sget-object v1, Lcom/amap/api/services/a/q;->a:Lcom/amap/api/services/a/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 183
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Landroid/os/Message;)V
    .locals 4

    .line 257
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 258
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;

    .line 259
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 260
    const-string v3, "shareurlkey"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 261
    if-nez v1, :cond_0

    .line 262
    return-void

    .line 264
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 276
    :pswitch_0
    invoke-interface {v1, v2, v0}, Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;->onWalkRouteShareUrlSearched(Ljava/lang/String;I)V

    .line 277
    goto :goto_0

    .line 272
    :pswitch_1
    nop

    .line 273
    invoke-interface {v1, v2, v0}, Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;->onDrivingRouteShareUrlSearched(Ljava/lang/String;I)V

    .line 274
    goto :goto_0

    .line 269
    :pswitch_2
    invoke-interface {v1, v2, v0}, Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;->onBusRouteShareUrlSearched(Ljava/lang/String;I)V

    .line 270
    goto :goto_0

    .line 282
    :pswitch_3
    invoke-interface {v1, v2, v0}, Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;->onNaviShareUrlSearched(Ljava/lang/String;I)V

    goto :goto_0

    .line 279
    :pswitch_4
    invoke-interface {v1, v2, v0}, Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;->onLocationShareUrlSearched(Ljava/lang/String;I)V

    .line 280
    goto :goto_0

    .line 266
    :pswitch_5
    invoke-interface {v1, v2, v0}, Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;->onPoiShareUrlSearched(Ljava/lang/String;I)V

    .line 267
    nop

    .line 285
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x44c
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Landroid/os/Message;)V
    .locals 3

    .line 288
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 289
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 292
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;

    .line 293
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-interface {v1, v2}, Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;->onNearbyInfoUploaded(I)V

    .line 294
    goto :goto_0

    .line 295
    :cond_1
    return-void

    .line 290
    :cond_2
    :goto_1
    return-void
.end method

.method private c(Landroid/os/Message;)V
    .locals 5

    .line 298
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/q$f;

    .line 299
    if-nez v0, :cond_0

    .line 300
    return-void

    .line 302
    :cond_0
    iget-object v1, v0, Lcom/amap/api/services/a/q$f;->a:Ljava/util/List;

    .line 303
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 306
    :cond_1
    const/4 v2, 0x0

    .line 307
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_2

    .line 308
    iget-object v2, v0, Lcom/amap/api/services/a/q$f;->b:Lcom/amap/api/services/nearby/NearbySearchResult;

    .line 309
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;

    .line 310
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-interface {v1, v2, v3}, Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;->onNearbyInfoSearched(Lcom/amap/api/services/nearby/NearbySearchResult;I)V

    .line 311
    goto :goto_0

    .line 313
    :cond_3
    return-void

    .line 304
    :cond_4
    :goto_1
    return-void
.end method

.method private d(Landroid/os/Message;)V
    .locals 3

    .line 316
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 317
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 320
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;

    .line 321
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-interface {v1, v2}, Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;->onUserInfoCleared(I)V

    .line 322
    goto :goto_0

    .line 324
    :cond_1
    return-void

    .line 318
    :cond_2
    :goto_1
    return-void
.end method

.method private e(Landroid/os/Message;)V
    .locals 5

    .line 327
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/q$b;

    .line 328
    if-nez v0, :cond_0

    .line 329
    return-void

    .line 331
    :cond_0
    iget-object v1, v0, Lcom/amap/api/services/a/q$b;->b:Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;

    .line 332
    if-nez v1, :cond_1

    .line 333
    return-void

    .line 334
    :cond_1
    const/4 v2, 0x0

    .line 335
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_2

    .line 336
    iget-object v2, v0, Lcom/amap/api/services/a/q$b;->a:Lcom/amap/api/services/busline/BusStationResult;

    .line 337
    :cond_2
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-interface {v1, v2, p1}, Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;->onBusStationSearched(Lcom/amap/api/services/busline/BusStationResult;I)V

    .line 339
    return-void
.end method

.method private f(Landroid/os/Message;)V
    .locals 3

    .line 343
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x258

    if-ne v0, v1, :cond_3

    .line 344
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/q$h;

    .line 345
    if-nez v0, :cond_0

    .line 346
    return-void

    .line 349
    :cond_0
    iget-object v1, v0, Lcom/amap/api/services/a/q$h;->b:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    .line 350
    if-nez v1, :cond_1

    .line 351
    return-void

    .line 353
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 354
    if-eqz p1, :cond_2

    .line 355
    const-string v2, "errorCode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 357
    iget-object v0, v0, Lcom/amap/api/services/a/q$h;->a:Lcom/amap/api/services/poisearch/PoiResult;

    invoke-interface {v1, v0, p1}, Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;->onPoiSearched(Lcom/amap/api/services/poisearch/PoiResult;I)V

    .line 359
    :cond_2
    goto :goto_0

    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x25a

    if-ne v0, v1, :cond_5

    .line 360
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/q$g;

    .line 361
    if-nez v0, :cond_4

    .line 362
    return-void

    .line 364
    :cond_4
    iget-object v1, v0, Lcom/amap/api/services/a/q$g;->b:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    .line 365
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 366
    if-eqz p1, :cond_5

    .line 367
    const-string v2, "errorCode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 368
    iget-object v0, v0, Lcom/amap/api/services/a/q$g;->a:Lcom/amap/api/services/core/PoiItem;

    invoke-interface {v1, v0, p1}, Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;->onPoiItemSearched(Lcom/amap/api/services/core/PoiItem;I)V

    .line 384
    :cond_5
    :goto_0
    return-void
.end method

.method private g(Landroid/os/Message;)V
    .locals 4

    .line 387
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/help/Inputtips$InputtipsListener;

    .line 388
    if-nez v0, :cond_0

    .line 389
    return-void

    .line 391
    :cond_0
    const/4 v1, 0x0

    .line 392
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_1

    .line 393
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 394
    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v1, p1}, Lcom/amap/api/services/help/Inputtips$InputtipsListener;->onGetInputtips(Ljava/util/List;I)V

    .line 395
    return-void
.end method

.method private h(Landroid/os/Message;)V
    .locals 2

    .line 399
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_2

    .line 400
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/q$i;

    .line 401
    if-nez v0, :cond_0

    .line 402
    return-void

    .line 404
    :cond_0
    iget-object v1, v0, Lcom/amap/api/services/a/q$i;->b:Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;

    .line 405
    if-nez v1, :cond_1

    .line 406
    return-void

    .line 408
    :cond_1
    nop

    .line 410
    iget-object v0, v0, Lcom/amap/api/services/a/q$i;->a:Lcom/amap/api/services/geocoder/RegeocodeResult;

    .line 411
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v0, p1}, Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;->onRegeocodeSearched(Lcom/amap/api/services/geocoder/RegeocodeResult;I)V

    .line 413
    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_5

    .line 414
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/q$e;

    .line 415
    if-nez v0, :cond_3

    .line 416
    return-void

    .line 418
    :cond_3
    iget-object v1, v0, Lcom/amap/api/services/a/q$e;->b:Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;

    .line 419
    if-nez v1, :cond_4

    .line 420
    return-void

    .line 422
    :cond_4
    nop

    .line 424
    iget-object v0, v0, Lcom/amap/api/services/a/q$e;->a:Lcom/amap/api/services/geocoder/GeocodeResult;

    .line 425
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v0, p1}, Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;->onGeocodeSearched(Lcom/amap/api/services/geocoder/GeocodeResult;I)V

    .line 427
    :cond_5
    :goto_0
    return-void
.end method

.method private i(Landroid/os/Message;)V
    .locals 2

    .line 430
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;

    .line 431
    if-nez v0, :cond_0

    .line 432
    return-void

    .line 433
    :cond_0
    nop

    .line 434
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "result"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amap/api/services/district/DistrictResult;

    .line 435
    invoke-interface {v0, p1}, Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;->onDistrictSearched(Lcom/amap/api/services/district/DistrictResult;)V

    .line 436
    return-void
.end method

.method private j(Landroid/os/Message;)V
    .locals 5

    .line 439
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/q$a;

    .line 440
    if-nez v0, :cond_0

    .line 441
    return-void

    .line 443
    :cond_0
    iget-object v1, v0, Lcom/amap/api/services/a/q$a;->b:Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;

    .line 444
    if-nez v1, :cond_1

    .line 445
    return-void

    .line 447
    :cond_1
    const/4 v2, 0x0

    .line 448
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_2

    .line 449
    iget-object v2, v0, Lcom/amap/api/services/a/q$a;->a:Lcom/amap/api/services/busline/BusLineResult;

    .line 450
    :cond_2
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-interface {v1, v2, p1}, Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;->onBusLineSearched(Lcom/amap/api/services/busline/BusLineResult;I)V

    .line 451
    return-void
.end method

.method private k(Landroid/os/Message;)V
    .locals 3

    .line 455
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

    .line 457
    if-nez v0, :cond_0

    .line 458
    return-void

    .line 460
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_2

    .line 461
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 462
    if-eqz v1, :cond_1

    .line 463
    const-string v2, "errorCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 464
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "result"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amap/api/services/route/BusRouteResult;

    .line 465
    invoke-interface {v0, p1, v1}, Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;->onBusRouteSearched(Lcom/amap/api/services/route/BusRouteResult;I)V

    .line 467
    :cond_1
    goto :goto_0

    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_4

    .line 468
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 469
    if-eqz v1, :cond_3

    .line 470
    const-string v2, "errorCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 471
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "result"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amap/api/services/route/DriveRouteResult;

    .line 473
    invoke-interface {v0, p1, v1}, Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;->onDriveRouteSearched(Lcom/amap/api/services/route/DriveRouteResult;I)V

    .line 475
    :cond_3
    goto :goto_0

    :cond_4
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x66

    if-ne v1, v2, :cond_6

    .line 476
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 477
    if-eqz v1, :cond_5

    .line 478
    const-string v2, "errorCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 479
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "result"

    .line 480
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amap/api/services/route/WalkRouteResult;

    .line 481
    invoke-interface {v0, p1, v1}, Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;->onWalkRouteSearched(Lcom/amap/api/services/route/WalkRouteResult;I)V

    .line 483
    :cond_5
    goto :goto_0

    :cond_6
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x67

    if-ne v1, v2, :cond_7

    .line 484
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 485
    if-eqz v1, :cond_7

    .line 486
    const-string v2, "errorCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 487
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "result"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amap/api/services/route/RideRouteResult;

    .line 488
    invoke-interface {v0, p1, v1}, Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;->onRideRouteSearched(Lcom/amap/api/services/route/RideRouteResult;I)V

    .line 491
    :cond_7
    :goto_0
    return-void
.end method

.method private l(Landroid/os/Message;)V
    .locals 2

    .line 495
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2bc

    if-ne v0, v1, :cond_1

    .line 496
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/q$d;

    .line 497
    if-nez v0, :cond_0

    .line 498
    return-void

    .line 500
    :cond_0
    iget-object v1, v0, Lcom/amap/api/services/a/q$d;->b:Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;

    .line 501
    iget-object v0, v0, Lcom/amap/api/services/a/q$d;->a:Lcom/amap/api/services/cloud/CloudResult;

    .line 502
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v0, p1}, Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;->onCloudSearched(Lcom/amap/api/services/cloud/CloudResult;I)V

    .line 503
    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2bd

    if-ne v0, v1, :cond_3

    .line 504
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/q$c;

    .line 505
    if-nez v0, :cond_2

    .line 506
    return-void

    .line 508
    :cond_2
    iget-object v1, v0, Lcom/amap/api/services/a/q$c;->b:Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;

    .line 509
    iget-object v0, v0, Lcom/amap/api/services/a/q$c;->a:Lcom/amap/api/services/cloud/CloudItemDetail;

    .line 510
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v0, p1}, Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;->onCloudItemDetailSearched(Lcom/amap/api/services/cloud/CloudItemDetail;I)V

    .line 512
    :cond_3
    :goto_0
    return-void
.end method

.method private m(Landroid/os/Message;)V
    .locals 3

    .line 515
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x515

    if-ne v0, v1, :cond_3

    .line 516
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/q$l;

    .line 517
    if-nez v0, :cond_0

    .line 518
    return-void

    .line 520
    :cond_0
    iget-object v1, v0, Lcom/amap/api/services/a/q$l;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    .line 521
    if-nez v1, :cond_1

    .line 522
    return-void

    .line 524
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 525
    if-eqz p1, :cond_2

    .line 526
    const-string v2, "errorCode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 527
    iget-object v0, v0, Lcom/amap/api/services/a/q$l;->a:Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    invoke-interface {v1, v0, p1}, Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;->onWeatherLiveSearched(Lcom/amap/api/services/weather/LocalWeatherLiveResult;I)V

    .line 529
    :cond_2
    goto :goto_0

    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x516

    if-ne v0, v1, :cond_6

    .line 530
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/q$k;

    .line 531
    if-nez v0, :cond_4

    .line 532
    return-void

    .line 534
    :cond_4
    iget-object v1, v0, Lcom/amap/api/services/a/q$k;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    .line 535
    if-nez v1, :cond_5

    .line 536
    return-void

    .line 538
    :cond_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 539
    if-eqz p1, :cond_6

    .line 540
    const-string v2, "errorCode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 541
    iget-object v0, v0, Lcom/amap/api/services/a/q$k;->a:Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    invoke-interface {v1, v0, p1}, Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;->onWeatherForecastSearched(Lcom/amap/api/services/weather/LocalWeatherForecastResult;I)V

    .line 544
    :cond_6
    :goto_0
    return-void
.end method

.method private n(Landroid/os/Message;)V
    .locals 3

    .line 547
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/q$j;

    .line 548
    if-nez v0, :cond_0

    .line 549
    return-void

    .line 550
    :cond_0
    iget-object v1, v0, Lcom/amap/api/services/a/q$j;->b:Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;

    .line 551
    if-nez v1, :cond_1

    .line 552
    return-void

    .line 553
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 554
    if-eqz p1, :cond_2

    .line 555
    const-string v2, "errorCode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 556
    iget-object v0, v0, Lcom/amap/api/services/a/q$j;->a:Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;

    invoke-interface {v1, v0, p1}, Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;->onRoutePoiSearched(Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;I)V

    .line 558
    :cond_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 206
    :try_start_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 247
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->n(Landroid/os/Message;)V

    goto :goto_0

    .line 244
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->m(Landroid/os/Message;)V

    .line 245
    goto :goto_0

    .line 241
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->l(Landroid/os/Message;)V

    .line 242
    goto :goto_0

    .line 238
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->a(Landroid/os/Message;)V

    .line 239
    goto :goto_0

    .line 235
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->b(Landroid/os/Message;)V

    .line 236
    goto :goto_0

    .line 232
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->c(Landroid/os/Message;)V

    .line 233
    goto :goto_0

    .line 229
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->d(Landroid/os/Message;)V

    .line 230
    goto :goto_0

    .line 226
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->e(Landroid/os/Message;)V

    .line 227
    goto :goto_0

    .line 223
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->f(Landroid/os/Message;)V

    .line 224
    goto :goto_0

    .line 220
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->g(Landroid/os/Message;)V

    .line 221
    goto :goto_0

    .line 214
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->i(Landroid/os/Message;)V

    .line 215
    goto :goto_0

    .line 211
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->j(Landroid/os/Message;)V

    .line 212
    goto :goto_0

    .line 217
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->h(Landroid/os/Message;)V

    .line 218
    goto :goto_0

    .line 208
    :pswitch_d
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->k(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    nop

    .line 252
    :goto_0
    goto :goto_1

    .line 250
    :catch_0
    move-exception p1

    .line 251
    const-string v0, "MessageHandler"

    const-string v1, "handleMessage"

    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
