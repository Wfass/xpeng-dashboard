.class public Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;
.super Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;
.source "ATLManager.java"


# static fields
.field private static final DBG:Z = true

.field private static final MODULE_NAME:Ljava/lang/String; = "AmbientLightManager"

.field private static final TAG:Ljava/lang/String; = "ATLManager"

.field private static instance:Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;

.field private static mListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

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
.field private mAmbientLightManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;

    .line 28
    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;->mListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;->mUidMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;-><init>()V

    .line 34
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager$1;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/XUIManager;->createXUIManager(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    .line 51
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->connect()V

    .line 53
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;)Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;
    .param p1, "x1"    # Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;->mAmbientLightManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    return-object p1
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuimanager/XUIManager;
    .locals 1

    .line 22
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;
    .locals 2

    .line 60
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;

    if-nez v0, :cond_1

    .line 61
    const-class v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;

    .line 65
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 67
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;

    return-object v0
.end method

.method private handleIoControl(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const v2, -0xc6d0329

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ambientRequest"

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

    .line 196
    return v1

    .line 193
    :cond_2
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;->requestPermission([Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private handleIoControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "results"    # [Ljava/lang/String;

    .line 207
    const-string v0, "ATLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " handleIoControlWithPocket "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7eec3d4a

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const v1, 0x316e3a4a

    if-eq v0, v1, :cond_1

    const v1, 0x66343656

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "stopPlay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "pausePlay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const-string v0, "startPlay"

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

    .line 220
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;->pauseScriptEffect([Ljava/lang/String;)V

    goto :goto_2

    .line 215
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;->stopScriptEffect([Ljava/lang/String;)V

    .line 217
    goto :goto_2

    .line 210
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;->startPlay([Ljava/lang/String;[Ljava/lang/String;)V

    .line 212
    nop

    .line 224
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

.method private pauseScriptEffect([Ljava/lang/String;)V
    .locals 4
    .param p1, "results"    # [Ljava/lang/String;

    .line 256
    const-string v0, "ATLManager"

    const-string v1, "pauseScriptEffect()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :try_start_0
    const-string v0, "0"

    .line 259
    .local v0, "res":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;->mAmbientLightManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->pausePlay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 260
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 261
    const/4 v1, 0x0

    aput-object v0, p1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .end local v0    # "res":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ATLManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " pauseScriptEffect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private requestPermission([Ljava/lang/String;)I
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .line 177
    const-string v0, "ATLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestPermission"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;->mAmbientLightManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    const-string v1, "1"

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->requestPermission(Z)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ATLManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestPermission failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 185
    :cond_0
    nop

    .line 187
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private startPlay([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;
    .param p2, "results"    # [Ljava/lang/String;

    .line 228
    const-string v0, "ATLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPlay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :try_start_0
    const-string v0, "0"

    .line 231
    .local v0, "res":Ljava/lang/String;
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;->mAmbientLightManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->startPlay([Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 234
    :cond_0
    if-eqz p2, :cond_1

    array-length v1, p2

    if-lez v1, :cond_1

    .line 235
    aput-object v0, p2, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v0    # "res":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ATLManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " startPlay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private stopScriptEffect([Ljava/lang/String;)V
    .locals 4
    .param p1, "results"    # [Ljava/lang/String;

    .line 243
    const-string v0, "ATLManager"

    const-string v1, "stopScriptEffect()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :try_start_0
    const-string v0, "0"

    .line 246
    .local v0, "res":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;->mAmbientLightManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->stopPlay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 247
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 248
    const/4 v1, 0x0

    aput-object v0, p1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v0    # "res":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ATLManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " stopScriptEffect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    monitor-enter p0

    .line 113
    :try_start_0
    const-string v0, "ATLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addListener, listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sput-object p1, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;->mListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 112
    .end local p1    # "listener":Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;
    throw p1
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 144
    const-string v0, "dump:ATLManager"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    if-nez p2, :cond_0

    .line 146
    const-string v0, "please input params!"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    return-void

    .line 149
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_4

    .line 150
    aget-object v2, p2, v1

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x364492

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "test"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v0

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_3
    const-string v0, "do test"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    return-void

    .line 162
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 133
    const-string v0, "AmbientLightManager"

    return-object v0
.end method

.method public init()V
    .locals 0

    .line 73
    return-void
.end method

.method public ioControl(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .line 84
    const-string v0, "ATLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ioControl, cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;->arrayToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;->mUidMap:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;->handleIoControl(Ljava/lang/String;[Ljava/lang/String;)I

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

    .line 100
    const-string v0, "ATLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ioControlWithPocket, cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;->arrayToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;->mUidMap:Ljava/util/Map;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;->handleIoControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onClientDied(I)V
    .locals 4
    .param p1, "pid"    # I

    .line 166
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;->mUidMap:Ljava/util/Map;

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

    .line 167
    .local v1, "uid":I
    sget-object v2, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;->mUidMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 168
    const-string v0, "ATLManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClientDied, pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", release requestPermission"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v0, "0"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;->requestPermission([Ljava/lang/String;)I

    .line 171
    goto :goto_1

    .line 173
    .end local v1    # "uid":I
    :cond_0
    goto :goto_0

    .line 174
    :cond_1
    :goto_1
    return-void
.end method

.method public declared-synchronized removeListener()V
    .locals 2

    monitor-enter p0

    .line 122
    :try_start_0
    const-string v0, "ATLManager"

    const-string v1, "removeListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;->mListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/opensdk/manager/ATLManager;
    throw v0
.end method
