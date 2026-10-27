.class public Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;
.super Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;
.source "AmbientManagerService.java"


# static fields
.field private static final MODULE_NAME:Ljava/lang/String; = "Ambient"

.field private static final TAG:Ljava/lang/String; = "AmbientManagerService"

.field private static instance:Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;

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
.field private mListener:Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;

.field private mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;

    .line 47
    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->mUidMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 91
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;-><init>()V

    .line 51
    new-instance v0, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService$1;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->mListener:Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;

    .line 92
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    if-nez v0, :cond_0

    .line 94
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService$2;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;)V

    .line 93
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/XUIManager;->createXUIManager(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    .line 114
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->connect()V

    .line 116
    :cond_0
    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;
    .locals 1

    .line 41
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;Lcom/xiaopeng/xuimanager/ambient/AmbientManager;)Lcom/xiaopeng/xuimanager/ambient/AmbientManager;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;
    .param p1, "x1"    # Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    return-object p1
.end method

.method static synthetic access$200()Lcom/xiaopeng/xuimanager/XUIManager;
    .locals 1

    .line 41
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;
    .locals 2

    .line 119
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;

    if-nez v0, :cond_1

    .line 120
    const-class v0, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;

    monitor-enter v0

    .line 121
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;

    if-nez v1, :cond_0

    .line 122
    new-instance v1, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;

    .line 124
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 127
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;

    return-object v0
.end method

.method private handleIoControl(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6d2f6b15

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const v1, -0xc6d0329

    if-eq v0, v1, :cond_1

    const v1, 0x41986a9d

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ambientPlayEffect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "ambientRequest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_2
    const-string v0, "ambientStopEffect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 211
    return v2

    .line 208
    :pswitch_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->stopAmbientLightEffect()I

    move-result v0

    return v0

    .line 206
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->playAmbientLightEffect([Ljava/lang/String;)I

    move-result v0

    return v0

    .line 204
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->requestAmbientLightPermission([Ljava/lang/String;)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleIoControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "results"    # [Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x2af8f58d

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ambientShowEffects"

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

    goto :goto_2

    .line 217
    :cond_2
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->showAmbientLightEffects([Ljava/lang/String;)V

    .line 221
    :goto_2
    return v1
.end method

.method private playAmbientLightEffect([Ljava/lang/String;)I
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .line 238
    if-eqz p1, :cond_1

    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_1

    .line 239
    const-string v0, "0"

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    const-string v2, "all"

    aget-object v1, p1, v1

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->playAmbientLightEffect(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 242
    :cond_0
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 243
    .local v0, "gson":Lcom/google/gson/Gson;
    aget-object v1, p1, v1

    const-class v2, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect;

    .line 245
    .local v1, "effect":Lcom/xiaopeng/xuimanager/ambient/AmbientEffect;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    const-string v3, "all"

    invoke-virtual {v2, v3, v1}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->playAmbientLightEffect(Ljava/lang/String;Lcom/xiaopeng/xuimanager/ambient/AmbientEffect;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 248
    .end local v0    # "gson":Lcom/google/gson/Gson;
    .end local v1    # "effect":Lcom/xiaopeng/xuimanager/ambient/AmbientEffect;
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AmbientManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playAmbientLightEffect failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 250
    :cond_1
    nop

    .line 252
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private requestAmbientLightPermission([Ljava/lang/String;)I
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .line 226
    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    const-string v1, "1"

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->requestAmbientLightPermission(Z)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AmbientManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestAmbientLightPermission failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 231
    :cond_0
    nop

    .line 233
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private showAmbientLightEffects([Ljava/lang/String;)V
    .locals 4
    .param p1, "results"    # [Ljava/lang/String;

    .line 267
    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    .line 268
    const/4 v0, 0x0

    const-string v1, ","

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->showAmbientLightEffects()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AmbientManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showAmbientLightEffects failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 272
    :cond_0
    :goto_0
    nop

    .line 273
    :goto_1
    return-void
.end method

.method private stopAmbientLightEffect()I
    .locals 4

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->stopAmbientLightEffect()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AmbientManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopAmbientLightEffect failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    monitor-enter p0

    .line 154
    :try_start_0
    const-string v0, "AmbientManagerService"

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

    .line 157
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->mListener:Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->registerListener(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    :cond_0
    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 163
    :goto_0
    :try_start_2
    sput-object p1, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    .line 153
    .end local p1    # "listener":Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;
    throw p1
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 199
    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 182
    const-string v0, "Ambient"

    return-object v0
.end method

.method public init()V
    .locals 0

    .line 132
    return-void
.end method

.method public ioControl(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .line 136
    const-string v0, "AmbientManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ioControl, cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->arrayToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->mUidMap:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->handleIoControl(Ljava/lang/String;[Ljava/lang/String;)I

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

    .line 146
    const-string v0, "AmbientManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ioControlWithPocket, cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->arrayToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->mUidMap:Ljava/util/Map;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->handleIoControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onClientDied(I)V
    .locals 4
    .param p1, "pid"    # I

    .line 187
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->mUidMap:Ljava/util/Map;

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

    .line 188
    .local v1, "uid":I
    sget-object v2, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->mUidMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 189
    const-string v0, "AmbientManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClientDied, pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", releaseAmbientLightPermission"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v0, "0"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->requestAmbientLightPermission([Ljava/lang/String;)I

    .line 192
    goto :goto_1

    .line 194
    .end local v1    # "uid":I
    :cond_0
    goto :goto_0

    .line 195
    :cond_1
    :goto_1
    return-void
.end method

.method public declared-synchronized removeListener()V
    .locals 2

    monitor-enter p0

    .line 168
    :try_start_0
    const-string v0, "AmbientManagerService"

    const-string v1, "removeListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->mListener:Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->unregisterListener(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    :cond_0
    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 178
    :goto_0
    monitor-exit p0

    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;
    throw v0
.end method
