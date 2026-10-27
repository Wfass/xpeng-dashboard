.class public Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "SyncStatePresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lawz;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Z

.field private c:Z

.field private d:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;

.field private e:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    .line 61
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->e:I

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->e:I

    return p0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .line 91
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->c:Z

    if-eqz p1, :cond_0

    .line 92
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 93
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->c:Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->e()V

    return-void
.end method

.method private c()V
    .locals 4

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 321
    new-instance v1, Lcom/xiaopeng/musicradio/bean/mine/ResultState;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;-><init>()V

    const/4 v2, 0x1

    .line 322
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->setState(I)V

    .line 323
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->setType(I)V

    .line 324
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    new-instance v1, Lcom/xiaopeng/musicradio/bean/mine/ResultState;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;-><init>()V

    .line 326
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->setState(I)V

    const/4 v3, 0x2

    .line 327
    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->setType(I)V

    .line 328
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    new-instance v1, Lcom/xiaopeng/musicradio/bean/mine/ResultState;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;-><init>()V

    .line 330
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->setState(I)V

    const/4 v2, 0x3

    .line 331
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->setType(I)V

    .line 332
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lawz;

    invoke-interface {v1, v0}, Lawz;->onSyncState(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->h()V

    return-void
.end method

.method private d()V
    .locals 4

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 340
    new-instance v1, Lcom/xiaopeng/musicradio/bean/mine/ResultState;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;-><init>()V

    const/4 v2, 0x2

    .line 341
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->setState(I)V

    const/4 v3, 0x1

    .line 342
    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->setType(I)V

    .line 343
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    new-instance v1, Lcom/xiaopeng/musicradio/bean/mine/ResultState;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;-><init>()V

    .line 345
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->setState(I)V

    .line 346
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->setType(I)V

    .line 347
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    new-instance v1, Lcom/xiaopeng/musicradio/bean/mine/ResultState;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;-><init>()V

    .line 349
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->setState(I)V

    const/4 v2, 0x3

    .line 350
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->setType(I)V

    .line 351
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lawz;

    invoke-interface {v1, v0}, Lawz;->onSyncState(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->c()V

    return-void
.end method

.method private e()V
    .locals 4

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 359
    new-instance v1, Lcom/xiaopeng/musicradio/bean/mine/ResultState;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;-><init>()V

    const/4 v2, -0x1

    .line 360
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->setState(I)V

    const/4 v3, 0x1

    .line 361
    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->setType(I)V

    .line 362
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    new-instance v1, Lcom/xiaopeng/musicradio/bean/mine/ResultState;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;-><init>()V

    .line 364
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->setState(I)V

    const/4 v3, 0x2

    .line 365
    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->setType(I)V

    .line 366
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    new-instance v1, Lcom/xiaopeng/musicradio/bean/mine/ResultState;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;-><init>()V

    .line 368
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->setState(I)V

    const/4 v2, 0x3

    .line 369
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->setType(I)V

    .line 370
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lawz;

    invoke-interface {v1, v0}, Lawz;->onSyncState(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->d()V

    return-void
.end method

.method private f()V
    .locals 4

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 378
    new-instance v1, Lcom/xiaopeng/musicradio/bean/mine/ResultState;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;-><init>()V

    const/4 v2, 0x1

    .line 379
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->setState(I)V

    const/4 v3, 0x5

    .line 380
    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->setType(I)V

    .line 381
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    new-instance v1, Lcom/xiaopeng/musicradio/bean/mine/ResultState;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;-><init>()V

    .line 383
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->setState(I)V

    const/4 v2, 0x6

    .line 384
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->setType(I)V

    .line 385
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 387
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lawz;

    invoke-interface {v1, v0}, Lawz;->onSyncState(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->f()V

    return-void
.end method

.method private g()V
    .locals 4

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 393
    new-instance v1, Lcom/xiaopeng/musicradio/bean/mine/ResultState;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;-><init>()V

    const/4 v2, 0x2

    .line 394
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->setState(I)V

    const/4 v3, 0x5

    .line 395
    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->setType(I)V

    .line 396
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    new-instance v1, Lcom/xiaopeng/musicradio/bean/mine/ResultState;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;-><init>()V

    .line 398
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->setState(I)V

    const/4 v2, 0x6

    .line 399
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->setType(I)V

    .line 400
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lawz;

    invoke-interface {v1, v0}, Lawz;->onSyncState(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->g()V

    return-void
.end method

.method private h()V
    .locals 4

    .line 407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 408
    new-instance v1, Lcom/xiaopeng/musicradio/bean/mine/ResultState;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;-><init>()V

    const/4 v2, -0x1

    .line 409
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->setState(I)V

    const/4 v3, 0x5

    .line 410
    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->setType(I)V

    .line 411
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    new-instance v1, Lcom/xiaopeng/musicradio/bean/mine/ResultState;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;-><init>()V

    .line 413
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->setState(I)V

    const/4 v2, 0x6

    .line 414
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->setType(I)V

    .line 415
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lawz;

    invoke-interface {v1, v0}, Lawz;->onSyncState(Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(JI)V
    .locals 7

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startCheck, xpUid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",effectiveTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VipBuyViewPresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->d:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;-><init>(Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;JILcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$1;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->d:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;

    .line 105
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->d:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->a(Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;)V

    :cond_0
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 111
    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->a(Ljava/lang/String;)V

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->d:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;

    if-eqz p1, :cond_1

    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "stopCheck, currentTask:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->d:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",from="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VipBuyViewPresenter"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->d:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->b(Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;)V

    const/4 p1, 0x0

    .line 116
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->d:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;

    :cond_1
    return-void
.end method

.method public b(JI)V
    .locals 2

    .line 239
    iget v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->d(JI)V

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->c(JI)V

    :goto_0
    return-void
.end method

.method public c(JI)V
    .locals 2

    if-nez p3, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->c()V

    .line 253
    :cond_0
    invoke-static {}, Laya;->a()Laya;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$1;

    invoke-direct {v1, p0, p3}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$1;-><init>(Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;I)V

    invoke-virtual {v0, p1, p2, v1}, Laya;->b(JLbkv;)V

    return-void
.end method

.method public d(JI)V
    .locals 2

    if-nez p3, :cond_0

    .line 286
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->f()V

    .line 288
    :cond_0
    invoke-static {}, Laya;->a()Laya;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$2;

    invoke-direct {v1, p0, p3}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$2;-><init>(Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;I)V

    invoke-virtual {v0, p1, p2, v1}, Laya;->d(JLbkv;)V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 67
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 0

    .line 84
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    .line 85
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->d:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "detachView"

    .line 86
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onResume(Landroidx/lifecycle/n;)V

    .line 73
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->c:Z

    if-nez p1, :cond_0

    .line 74
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 75
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->c:Z

    :cond_0
    return-void
.end method
