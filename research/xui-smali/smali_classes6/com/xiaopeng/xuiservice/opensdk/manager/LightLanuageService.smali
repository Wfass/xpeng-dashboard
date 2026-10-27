.class public Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;
.super Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;
.source "LightLanuageService.java"


# static fields
.field private static final MODULE_NAME:Ljava/lang/String; = "LightLanuage"

.field private static final TAG:Ljava/lang/String; = "LightLanuageService"

.field private static instance:Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;

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
.field private mListener:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventListener;

.field private mManager:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;

    .line 40
    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->mUidMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;-><init>()V

    .line 44
    new-instance v0, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService$1;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->mListener:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventListener;

    .line 91
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    if-nez v0, :cond_0

    .line 93
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService$2;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/XUIManager;->createXUIManager(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    .line 111
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->connect()V

    .line 113
    :cond_0
    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;
    .locals 1

    .line 34
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;)Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;
    .param p1, "x1"    # Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->mManager:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    return-object p1
.end method

.method static synthetic access$200()Lcom/xiaopeng/xuimanager/XUIManager;
    .locals 1

    .line 34
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;
    .locals 2

    .line 116
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;

    if-nez v0, :cond_1

    .line 117
    const-class v0, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;

    monitor-enter v0

    .line 118
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;

    if-nez v1, :cond_0

    .line 119
    new-instance v1, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;

    .line 121
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 124
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;

    return-object v0
.end method

.method private getLightEffectEnable()I
    .locals 4

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->mManager:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->getLightEffectEnable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LightLanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLightEffectEnable failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, -0x1

    return v0
.end method

.method private getRunningEffect([Ljava/lang/String;)V
    .locals 4
    .param p1, "results"    # [Ljava/lang/String;

    .line 304
    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    .line 305
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->mManager:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->getRunningEffect()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LightLanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRunningEffect failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 309
    :cond_0
    :goto_0
    nop

    .line 310
    :goto_1
    return-void
.end method

.method private handleIoControl(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6d523998

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const v1, -0x6917dbcd

    if-eq v0, v1, :cond_2

    const v1, -0x48e8460c

    if-eq v0, v1, :cond_1

    const v1, 0x45aff9e5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "playEffect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "getLightEffectEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_2
    const-string v0, "stopEffect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    const-string v0, "setLightEffectEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 210
    return v2

    .line 207
    :pswitch_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->stopEffect()I

    move-result v0

    return v0

    .line 205
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->playEffect([Ljava/lang/String;)I

    move-result v0

    return v0

    .line 203
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->setLightEffectEnable([Ljava/lang/String;)I

    move-result v0

    return v0

    .line 201
    :pswitch_3
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->getLightEffectEnable()I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
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

    .line 214
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x5f431386

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const v1, -0x2d0bd0f6

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "showLightEffect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_1
    const-string v0, "getRunningEffect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 219
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->getRunningEffect([Ljava/lang/String;)V

    goto :goto_2

    .line 216
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->showLightEffect([Ljava/lang/String;)V

    .line 217
    nop

    .line 223
    :goto_2
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private playEffect([Ljava/lang/String;)I
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .line 270
    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->mManager:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->playEffect(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LightLanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playEffect failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 275
    :cond_0
    nop

    .line 277
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private setLightEffectEnable([Ljava/lang/String;)I
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .line 256
    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->mManager:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->setLightEffectEnable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    return v1

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LightLanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLightEffectEnable failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 263
    :cond_0
    nop

    .line 265
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private showLightEffect([Ljava/lang/String;)V
    .locals 4
    .param p1, "results"    # [Ljava/lang/String;

    .line 294
    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    .line 295
    const/4 v0, 0x0

    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->mManager:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->getLightEffect()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->toJson(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LightLanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showLightEffect failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 299
    :cond_0
    :goto_0
    nop

    .line 300
    :goto_1
    return-void
.end method

.method private stopEffect()I
    .locals 4

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->mManager:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->stopEffect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    const/4 v0, 0x0

    return v0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LightLanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopEffect failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
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

    .line 227
    .local p1, "collection":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 230
    .local v0, "objs":Lorg/json/JSONArray;
    if-eqz p1, :cond_0

    .line 231
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 233
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 238
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "LightLanuageService"

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

    .line 239
    :cond_0
    nop

    .line 241
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

    .line 151
    :try_start_0
    const-string v0, "LightLanuageService"

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

    .line 154
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->mManager:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->mManager:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->mListener:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->registerListener(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :cond_0
    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 160
    :goto_0
    :try_start_2
    sput-object p1, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    .line 150
    .end local p1    # "listener":Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;
    throw p1
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 196
    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 179
    const-string v0, "LightLanuage"

    return-object v0
.end method

.method public init()V
    .locals 0

    .line 129
    return-void
.end method

.method public ioControl(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .line 133
    const-string v0, "LightLanuageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ioControl, cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->arrayToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->mUidMap:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->handleIoControl(Ljava/lang/String;[Ljava/lang/String;)I

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

    .line 143
    const-string v0, "LightLanuageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ioControlWithPocket, cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->arrayToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->mUidMap:Ljava/util/Map;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->handleIoControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onClientDied(I)V
    .locals 4
    .param p1, "pid"    # I

    .line 184
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->mUidMap:Ljava/util/Map;

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

    .line 185
    .local v1, "uid":I
    sget-object v2, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->mUidMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 186
    const-string v0, "LightLanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClientDied, pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", stopEffect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->stopEffect()I

    .line 189
    goto :goto_1

    .line 191
    .end local v1    # "uid":I
    :cond_0
    goto :goto_0

    .line 192
    :cond_1
    :goto_1
    return-void
.end method

.method public declared-synchronized removeListener()V
    .locals 2

    monitor-enter p0

    .line 165
    :try_start_0
    const-string v0, "LightLanuageService"

    const-string v1, "removeListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->mManager:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->mManager:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->mListener:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->unregisterListener(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    :cond_0
    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 175
    :goto_0
    monitor-exit p0

    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;
    throw v0
.end method
