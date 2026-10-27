.class public Lcom/xiaopeng/aicabin/CarClient;
.super Ljava/lang/Object;
.source "CarClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CarClient"

.field private static volatile sInstance:Lcom/xiaopeng/aicabin/CarClient;


# instance fields
.field private final mCar:Landroid/car/Car;

.field private volatile mIsCarReady:Z

.field private final mWorkHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/xiaopeng/aicabin/CarClient;->mIsCarReady:Z

    .line 5
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "car-client-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 7
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaopeng/aicabin/CarClient;->mWorkHandler:Landroid/os/Handler;

    .line 8
    invoke-static {}, Lcom/xiaopeng/aicabin/utils/ClassUtil;->getApplicationByReflect()Landroid/app/Application;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/aicabin/CarClient$a;

    invoke-direct {v2, p0}, Lcom/xiaopeng/aicabin/CarClient$a;-><init>(Lcom/xiaopeng/aicabin/CarClient;)V

    const-wide/16 v3, 0x2710

    invoke-static {v0, v1, v3, v4, v2}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/os/Handler;JLandroid/car/Car$CarServiceLifecycleListener;)Landroid/car/Car;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/aicabin/CarClient;->mCar:Landroid/car/Car;

    return-void
.end method

.method public static synthetic access$002(Lcom/xiaopeng/aicabin/CarClient;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaopeng/aicabin/CarClient;->mIsCarReady:Z

    return p1
.end method

.method public static getInstance()Landroid/car/Car;
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaopeng/aicabin/CarClient;->sInstance:Lcom/xiaopeng/aicabin/CarClient;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/xiaopeng/aicabin/CarClient;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/xiaopeng/aicabin/CarClient;->sInstance:Lcom/xiaopeng/aicabin/CarClient;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/xiaopeng/aicabin/CarClient;

    invoke-direct {v1}, Lcom/xiaopeng/aicabin/CarClient;-><init>()V

    sput-object v1, Lcom/xiaopeng/aicabin/CarClient;->sInstance:Lcom/xiaopeng/aicabin/CarClient;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/aicabin/CarClient;->sInstance:Lcom/xiaopeng/aicabin/CarClient;

    iget-object v0, v0, Lcom/xiaopeng/aicabin/CarClient;->mCar:Landroid/car/Car;

    return-object v0
.end method


# virtual methods
.method public isCarReady()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaopeng/aicabin/CarClient;->mIsCarReady:Z

    return v0
.end method
