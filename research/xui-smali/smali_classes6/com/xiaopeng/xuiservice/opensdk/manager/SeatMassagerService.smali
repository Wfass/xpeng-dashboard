.class public Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;
.super Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;
.source "SeatMassagerService.java"


# static fields
.field private static final MODULE_NAME:Ljava/lang/String; = "SeatMassager"

.field private static final TAG:Ljava/lang/String; = "SeatMassagerService"

.field private static instance:Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;

.field private static mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

.field private static mUidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;


# instance fields
.field private mListener:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventListener;

.field private mManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;

    .line 44
    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->mUidMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 206
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;-><init>()V

    .line 48
    new-instance v0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService$1;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->mListener:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventListener;

    .line 207
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    if-nez v0, :cond_0

    .line 209
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService$2;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/XUIManager;->createXUIManager(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    .line 227
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->connect()V

    .line 229
    :cond_0
    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;
    .locals 1

    .line 38
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;Ljava/util/Set;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;
    .param p1, "x1"    # Ljava/util/Set;

    .line 38
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->toJson(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;)Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;
    .param p1, "x1"    # Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->mManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    return-object p1
.end method

.method static synthetic access$300()Lcom/xiaopeng/xuimanager/XUIManager;
    .locals 1

    .line 38
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    return-object v0
.end method

.method private doVibrate([Ljava/lang/String;)I
    .locals 5
    .param p1, "params"    # [Ljava/lang/String;

    .line 506
    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->mManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->fromJsonObject(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    .line 508
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 507
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->doVibrate(Ljava/util/Set;Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doVibrate failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 513
    :cond_0
    nop

    .line 515
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private fromJson(Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 397
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 400
    .local v0, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 402
    .local v1, "objs":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 403
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 407
    .end local v1    # "objs":Lorg/json/JSONArray;
    .end local v2    # "i":I
    :cond_0
    goto :goto_1

    .line 405
    :catch_0
    move-exception v1

    .line 406
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SeatMassagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fromJson failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method private fromJsonObject(Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/xiaopeng/xuimanager/seatmassager/Seat;",
            ">;"
        }
    .end annotation

    .line 379
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 382
    .local v0, "seats":Ljava/util/Set;, "Ljava/util/Set<Lcom/xiaopeng/xuimanager/seatmassager/Seat;>;"
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 384
    .local v1, "objs":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 385
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 387
    .local v3, "obj":Lorg/json/JSONObject;
    new-instance v4, Lcom/xiaopeng/xuimanager/seatmassager/Seat;

    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "intensity"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/xiaopeng/xuimanager/seatmassager/Seat;-><init>(II)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    .end local v3    # "obj":Lorg/json/JSONObject;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 391
    .end local v1    # "objs":Lorg/json/JSONArray;
    .end local v2    # "i":I
    :cond_0
    goto :goto_1

    .line 389
    :catch_0
    move-exception v1

    .line 390
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SeatMassagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fromJsonObject failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;
    .locals 2

    .line 232
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;

    if-nez v0, :cond_1

    .line 233
    const-class v0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;

    monitor-enter v0

    .line 234
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;

    if-nez v1, :cond_0

    .line 235
    new-instance v1, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;

    .line 237
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 240
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;

    return-object v0
.end method

.method private getMassagerEffect([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;
    .param p2, "results"    # [Ljava/lang/String;

    .line 566
    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->mManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->getMassagerEffect(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMassagerEffect failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 573
    :cond_0
    :goto_0
    nop

    .line 574
    :goto_1
    return-void
.end method

.method private getMassagerIntensity([Ljava/lang/String;)I
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .line 470
    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->mManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->getMassagerIntensity(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMassagerIntensity failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 475
    :cond_0
    nop

    .line 477
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private getMassagerStatus([Ljava/lang/String;)I
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .line 482
    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->mManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->getMassagerStatus(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMassagerStatus failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 487
    :cond_0
    nop

    .line 489
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private getVibrateIntensity([Ljava/lang/String;)I
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .line 544
    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->mManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->getVibrateIntensity(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVibrateIntensity failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 549
    :cond_0
    nop

    .line 551
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private handleIoControl(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;

    .line 325
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "doVibrate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_1
    const-string v0, "setMassagerIntensity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "getMassagerStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "setVibrateIntensity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_4
    const-string v0, "startMassager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_5
    const-string v0, "setMassagerEffect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_6
    const-string v0, "stopVibrate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_7
    const-string v0, "stopMassager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_8
    const-string v0, "getMassagerIntensity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_9
    const-string v0, "getVibrateIntensity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 348
    return v1

    .line 345
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->getVibrateIntensity([Ljava/lang/String;)I

    move-result v0

    return v0

    .line 343
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->setVibrateIntensity([Ljava/lang/String;)I

    move-result v0

    return v0

    .line 341
    :pswitch_2
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->stopVibrate()I

    move-result v0

    return v0

    .line 339
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->doVibrate([Ljava/lang/String;)I

    move-result v0

    return v0

    .line 337
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->stopMassager([Ljava/lang/String;)I

    move-result v0

    return v0

    .line 335
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->getMassagerStatus([Ljava/lang/String;)I

    move-result v0

    return v0

    .line 333
    :pswitch_6
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->getMassagerIntensity([Ljava/lang/String;)I

    move-result v0

    return v0

    .line 331
    :pswitch_7
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->setMassagerIntensity([Ljava/lang/String;)I

    move-result v0

    return v0

    .line 329
    :pswitch_8
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->setMassagerEffect([Ljava/lang/String;)I

    move-result v0

    return v0

    .line 327
    :pswitch_9
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->startMassager([Ljava/lang/String;)I

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e8d2906 -> :sswitch_9
        -0x73bd750a -> :sswitch_8
        -0x3512a197 -> :sswitch_7
        -0x31ada0f3 -> :sswitch_6
        -0x298ea246 -> :sswitch_5
        0x186fbac9 -> :sswitch_4
        0x256f6c06 -> :sswitch_3
        0x27220c0f -> :sswitch_2
        0x67d8976a -> :sswitch_1
        0x737cde64 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private handleIoControlWithParcelable(Ljava/lang/String;Lcom/car/opensdk/pipebus/ParcelableData;Lcom/car/opensdk/pipebus/ParcelableData;)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "dataIn"    # Lcom/car/opensdk/pipebus/ParcelableData;
    .param p3, "dataOut"    # Lcom/car/opensdk/pipebus/ParcelableData;

    .line 370
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const v2, -0x3a9e657

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "loadVibrate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 375
    return v1

    .line 372
    :cond_2
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->loadVibrate(Lcom/car/opensdk/pipebus/ParcelableData;)I

    move-result v0

    return v0
.end method

.method private handleIoControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "results"    # [Ljava/lang/String;

    .line 352
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x760daeeb    # -5.833563E-33f

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const v1, 0xe7af5ae

    if-eq v0, v1, :cond_1

    const v1, 0x7e45e3e3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "showVibrateEffect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "getMassagerEffect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "showMassagerEffect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 360
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->showVibrateEffect([Ljava/lang/String;)V

    goto :goto_2

    .line 357
    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->getMassagerEffect([Ljava/lang/String;[Ljava/lang/String;)V

    .line 358
    goto :goto_2

    .line 354
    :pswitch_2
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->showMassagerEffect([Ljava/lang/String;)V

    .line 355
    nop

    .line 364
    :goto_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private loadVibrate(Lcom/car/opensdk/pipebus/ParcelableData;)I
    .locals 6
    .param p1, "param"    # Lcom/car/opensdk/pipebus/ParcelableData;

    .line 588
    if-eqz p1, :cond_0

    .line 589
    :try_start_0
    invoke-virtual {p1}, Lcom/car/opensdk/pipebus/ParcelableData;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object v0

    .line 590
    .local v0, "afd":[Landroid/os/Parcelable;
    invoke-virtual {p1}, Lcom/car/opensdk/pipebus/ParcelableData;->getStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, "effect":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-object v3, v0, v2

    instance-of v3, v3, Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 595
    const-string v3, "SeatMassagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadVibrate, effect="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->mManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    aget-object v4, v0, v2

    check-cast v4, Landroid/content/res/AssetFileDescriptor;

    aget-object v2, v1, v2

    invoke-virtual {v3, v4, v2}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->loadVibrateEffect(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 600
    .end local v0    # "afd":[Landroid/os/Parcelable;
    .end local v1    # "effect":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 601
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadVibrate failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 602
    :cond_0
    nop

    .line 604
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private setMassagerEffect([Ljava/lang/String;)I
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .line 444
    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->mManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->fromJson(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->setMassagerEffect(Ljava/util/Set;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMassagerEffect failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 449
    :cond_0
    nop

    .line 451
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private setMassagerIntensity([Ljava/lang/String;)I
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .line 456
    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->mManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    .line 458
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->fromJson(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 457
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->setMassagerIntensity(Ljava/util/Set;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMassagerIntensity failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 463
    :cond_0
    nop

    .line 465
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private setVibrateIntensity([Ljava/lang/String;)I
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .line 530
    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->mManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    .line 532
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->fromJson(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 531
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->setVibrateIntensity(Ljava/util/Set;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 535
    :catch_0
    move-exception v0

    .line 536
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVibrateIntensity failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 537
    :cond_0
    nop

    .line 539
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private showMassagerEffect([Ljava/lang/String;)V
    .locals 4
    .param p1, "results"    # [Ljava/lang/String;

    .line 556
    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    .line 557
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->mManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->showMassagerEffect()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->toJson(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showMassagerEffect failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 561
    :cond_0
    :goto_0
    nop

    .line 562
    :goto_1
    return-void
.end method

.method private showVibrateEffect([Ljava/lang/String;)V
    .locals 4
    .param p1, "results"    # [Ljava/lang/String;

    .line 578
    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    .line 579
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->mManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->showVibrateEffect()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->toJson(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showVibrateEffect failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 583
    :cond_0
    :goto_0
    nop

    .line 584
    :goto_1
    return-void
.end method

.method private startMassager([Ljava/lang/String;)I
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .line 432
    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->mManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->fromJsonObject(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->startMassager(Ljava/util/Set;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startMassager failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 437
    :cond_0
    nop

    .line 439
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private stopMassager([Ljava/lang/String;)I
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .line 494
    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->mManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->fromJson(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->stopMassager(Ljava/util/Set;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopMassager failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 499
    :cond_0
    nop

    .line 501
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private stopVibrate()I
    .locals 4

    .line 520
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->mManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->stopVibrate()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopVibrate failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, -0x1

    return v0
.end method

.method private toJson(Ljava/util/Set;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 413
    .local p1, "collection":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 416
    .local v0, "objs":Lorg/json/JSONArray;
    if-eqz p1, :cond_0

    .line 417
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 419
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 420
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 423
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 424
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SeatMassagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toJson failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 425
    :cond_0
    nop

    .line 427
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    monitor-enter p0

    .line 277
    :try_start_0
    const-string v0, "SeatMassagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addListener, listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->mManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->mManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->mListener:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->registerListener(Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    :cond_0
    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 286
    :goto_0
    :try_start_2
    sput-object p1, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 287
    monitor-exit p0

    return-void

    .line 276
    .end local p1    # "listener":Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;
    throw p1
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 322
    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 305
    const-string v0, "SeatMassager"

    return-object v0
.end method

.method public init()V
    .locals 0

    .line 245
    return-void
.end method

.method public ioControl(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .line 249
    const-string v0, "SeatMassagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ioControl, cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->arrayToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->mUidMap:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->handleIoControl(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public ioControlWithParcelable(Ljava/lang/String;Lcom/car/opensdk/pipebus/ParcelableData;Lcom/car/opensdk/pipebus/ParcelableData;II)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "dataIn"    # Lcom/car/opensdk/pipebus/ParcelableData;
    .param p3, "dataOut"    # Lcom/car/opensdk/pipebus/ParcelableData;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .line 269
    const-string v0, "SeatMassagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ioControlWithParcelable, cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->mUidMap:Ljava/util/Map;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->handleIoControlWithParcelable(Ljava/lang/String;Lcom/car/opensdk/pipebus/ParcelableData;Lcom/car/opensdk/pipebus/ParcelableData;)I

    move-result v0

    return v0
.end method

.method public ioControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "results"    # [Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .line 259
    const-string v0, "SeatMassagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ioControlWithPocket, cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->arrayToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->mUidMap:Ljava/util/Map;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->handleIoControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onClientDied(I)V
    .locals 4
    .param p1, "pid"    # I

    .line 310
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->mUidMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 311
    .local v1, "uid":I
    sget-object v2, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->mUidMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 312
    const-string v0, "SeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClientDied, pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", stopVibrate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->stopVibrate()I

    .line 315
    goto :goto_1

    .line 317
    .end local v1    # "uid":I
    :cond_0
    goto :goto_0

    .line 318
    :cond_1
    :goto_1
    return-void
.end method

.method public declared-synchronized removeListener()V
    .locals 2

    monitor-enter p0

    .line 291
    :try_start_0
    const-string v0, "SeatMassagerService"

    const-string v1, "removeListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->mManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->mManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->mListener:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->unregisterListener(Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    :cond_0
    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 301
    :goto_0
    monitor-exit p0

    return-void

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;
    throw v0
.end method
