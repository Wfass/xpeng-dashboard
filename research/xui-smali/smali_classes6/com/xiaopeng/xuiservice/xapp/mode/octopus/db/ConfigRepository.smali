.class public Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;
.super Ljava/lang/Object;
.source "ConfigRepository.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigRepository"

.field private static volatile mInstance:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKeyConfigDao:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "ConfigRepository"

    const-string v1, "create database begin"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;->mContext:Landroid/content/Context;

    .line 17
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase;->getDatabase(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase;

    move-result-object v0

    .line 18
    .local v0, "configDatabase":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase;
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase;->keyConfigDao()Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;->mKeyConfigDao:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao;

    .line 19
    const-string v1, "ConfigRepository"

    const-string v2, "create database end"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;)Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;

    .line 8
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;->mKeyConfigDao:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 24
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;->mInstance:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;

    if-nez v0, :cond_1

    .line 25
    const-class v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;->mInstance:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;->mInstance:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;

    .line 29
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 31
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;->mInstance:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;

    return-object v0
.end method


# virtual methods
.method public getConfigs(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigLoaderCallback;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigLoaderCallback;

    .line 57
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase;->databaseWriteExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository$3;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigLoaderCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method

.method public getPkgConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;",
            ">;"
        }
    .end annotation

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public saveConfig(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;)V
    .locals 2
    .param p1, "config"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;

    .line 48
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase;->databaseWriteExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository$2;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 54
    return-void
.end method

.method public saveConfigs(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;",
            ">;)V"
        }
    .end annotation

    .line 39
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;>;"
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase;->databaseWriteExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method
