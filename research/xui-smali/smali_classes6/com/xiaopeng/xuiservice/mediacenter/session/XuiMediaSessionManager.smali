.class public Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;
.super Ljava/lang/Object;
.source "XuiMediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$SessionCallbackHander;,
        Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$TargetChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MCService-XuiMediaSessionManager"

.field private static mInstance:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;


# instance fields
.field private enterBtMedia:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBTStateChangeListener:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$BTStateChangeListener;

.field private mBluetoothMediaController:Landroid/media/session/MediaController;

.field private mDeviceStatusListener:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager$DeviceStatusListener;

.field private mGlobalActiveControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalTargetController:Landroid/media/session/MediaController;

.field private mHeadsetDeviceConnected:Z

.field private mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private mPrimaryMediaController:Landroid/media/session/MediaController;

.field private mSubMediaController:Landroid/media/session/MediaController;

.field private mSubScreenId:I

.field private mSubScreenUidList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSubScreenUidListCallback:Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$SubScreenUidListCallback;

.field private mSystemTargetController:Landroid/media/session/MediaController;

.field private mTargetChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$TargetChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetControllers:[Landroid/media/session/MediaController;

.field private sessionCallback:Ljava/lang/Object;

.field private sessionCallbackHander:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$SessionCallbackHander;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mHeadsetDeviceConnected:Z

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mTargetChangedListeners:Ljava/util/List;

    .line 51
    const/4 v1, 0x1

    iput v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mSubScreenId:I

    .line 52
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->enterBtMedia:Z

    .line 225
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$1;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mDeviceStatusListener:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager$DeviceStatusListener;

    .line 396
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$3;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mSubScreenUidListCallback:Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$SubScreenUidListCallback;

    .line 426
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$SessionCallbackHander;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$SessionCallbackHander;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->sessionCallbackHander:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$SessionCallbackHander;

    .line 498
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$4;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mBTStateChangeListener:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$BTStateChangeListener;

    .line 55
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "media_session"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 57
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mAudioManager:Landroid/media/AudioManager;

    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/media/session/MediaController;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mTargetControllers:[Landroid/media/session/MediaController;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    .line 36
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mHeadsetDeviceConnected:Z

    return v0
.end method

.method static synthetic access$002(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;
    .param p1, "x1"    # Z

    .line 36
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mHeadsetDeviceConnected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;
    .param p1, "x1"    # Z

    .line 36
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->refreshTargetOnHeadsetConnected(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;[Landroid/media/session/MediaController;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;
    .param p1, "x1"    # [Landroid/media/session/MediaController;

    .line 36
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->notifyTargetChangedInner([Landroid/media/session/MediaController;)V

    return-void
.end method

.method static synthetic access$302(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;
    .param p1, "x1"    # Ljava/util/List;

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mSubScreenUidList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->updateScreenMedia()V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;Landroid/media/session/MediaController;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;
    .param p1, "x1"    # Landroid/media/session/MediaController;

    .line 36
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->onSystemTargetChanged(Landroid/media/session/MediaController;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    .line 36
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->enterBtMedia:Z

    return v0
.end method

.method static synthetic access$702(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;
    .param p1, "x1"    # Z

    .line 36
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->enterBtMedia:Z

    return p1
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->refreshTargetControllerByBtAudioSelected()V

    return-void
.end method

.method private getBluetoothMediaController()Landroid/media/session/MediaController;
    .locals 5

    .line 376
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mBluetoothMediaController:Landroid/media/session/MediaController;

    if-nez v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 379
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    const-string v1, "MCService-XuiMediaSessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBluetoothMediaController list:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->getControllerListString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 381
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController;

    .line 382
    .local v2, "controller":Landroid/media/session/MediaController;
    const-string v3, "com.xiaopeng.musicradio"

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 383
    iput-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mBluetoothMediaController:Landroid/media/session/MediaController;

    .line 384
    goto :goto_1

    .line 386
    .end local v2    # "controller":Landroid/media/session/MediaController;
    :cond_0
    goto :goto_0

    .line 389
    .end local v0    # "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mBluetoothMediaController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method private getControllerArrayString([Landroid/media/session/MediaController;)Ljava/lang/String;
    .locals 4
    .param p1, "controllers"    # [Landroid/media/session/MediaController;

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screenId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 273
    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :cond_0
    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getControllerListString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 260
    .local p1, "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController;

    .line 262
    .local v2, "controller":Landroid/media/session/MediaController;
    const-string/jumbo v3, "||"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .end local v2    # "controller":Landroid/media/session/MediaController;
    goto :goto_0

    .line 265
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getFilterPackages(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List;"
        }
    .end annotation

    .line 290
    .local p1, "jsonStringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v0, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 294
    .local v2, "value":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 295
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "packageName"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_1

    .line 296
    :catch_0
    move-exception v3

    .line 297
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 299
    .end local v2    # "value":Ljava/lang/String;
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_1
    goto :goto_0

    .line 301
    :cond_0
    return-object v0
.end method

.method private getGlobalTarget()Landroid/media/session/MediaController;
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mGlobalActiveControllers:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mGlobalActiveControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mGlobalActiveControllers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    return-object v0

    .line 308
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;
    .locals 2

    .line 62
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    if-nez v0, :cond_1

    .line 63
    const-class v0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    .line 67
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 69
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    return-object v0
.end method

.method private isMediaSessionPackage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mGlobalActiveControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController;

    .line 282
    .local v1, "mediaController":Landroid/media/session/MediaController;
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    const/4 v0, 0x1

    return v0

    .line 285
    .end local v1    # "mediaController":Landroid/media/session/MediaController;
    :cond_0
    goto :goto_0

    .line 286
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isSameController(Landroid/media/session/MediaController;Landroid/media/session/MediaController;)Z
    .locals 1
    .param p1, "a"    # Landroid/media/session/MediaController;
    .param p2, "b"    # Landroid/media/session/MediaController;

    .line 133
    if-nez p1, :cond_0

    .line 134
    const/4 v0, 0x0

    return v0

    .line 136
    :cond_0
    invoke-virtual {p1, p2}, Landroid/media/session/MediaController;->controlsSameSession(Landroid/media/session/MediaController;)Z

    move-result v0

    return v0
.end method

.method private notifyTargetChanged([Landroid/media/session/MediaController;)V
    .locals 2
    .param p1, "targetControllers"    # [Landroid/media/session/MediaController;

    .line 312
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$2;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;[Landroid/media/session/MediaController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 318
    return-void
.end method

.method private notifyTargetChangedInner([Landroid/media/session/MediaController;)V
    .locals 3
    .param p1, "targetControllers"    # [Landroid/media/session/MediaController;

    .line 321
    const-string v0, "MCService-XuiMediaSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyTargetChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->getControllerArrayString([Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mTargetChangedListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mTargetChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mTargetChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$TargetChangedListener;

    .line 324
    .local v1, "listener":Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$TargetChangedListener;
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$TargetChangedListener;->OnTargetChanged([Landroid/media/session/MediaController;)V

    .line 325
    .end local v1    # "listener":Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$TargetChangedListener;
    goto :goto_0

    .line 327
    :cond_0
    return-void
.end method

.method private onGlobalTargetChanged(Landroid/media/session/MediaController;)V
    .locals 4
    .param p1, "target"    # Landroid/media/session/MediaController;

    .line 342
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mGlobalTargetController:Landroid/media/session/MediaController;

    .line 343
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasMultiScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mTargetControllers:[Landroid/media/session/MediaController;

    aput-object p1, v0, v1

    goto :goto_0

    .line 345
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mHeadsetDeviceConnected:Z

    if-nez v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mTargetControllers:[Landroid/media/session/MediaController;

    aput-object p1, v0, v1

    .line 347
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mTargetControllers:[Landroid/media/session/MediaController;

    iget v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mSubScreenId:I

    aput-object p1, v0, v1

    goto :goto_0

    .line 349
    :cond_1
    const/4 v0, 0x0

    .line 350
    .local v0, "targetUid":I
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mSubScreenUidList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 351
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mSubMediaController:Landroid/media/session/MediaController;

    .line 352
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mTargetControllers:[Landroid/media/session/MediaController;

    iget v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mSubScreenId:I

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mSubMediaController:Landroid/media/session/MediaController;

    aput-object v3, v1, v2

    goto :goto_0

    .line 354
    :cond_2
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mPrimaryMediaController:Landroid/media/session/MediaController;

    .line 355
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mTargetControllers:[Landroid/media/session/MediaController;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mPrimaryMediaController:Landroid/media/session/MediaController;

    aput-object v3, v2, v1

    .line 358
    .end local v0    # "targetUid":I
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mTargetControllers:[Landroid/media/session/MediaController;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->notifyTargetChanged([Landroid/media/session/MediaController;)V

    .line 359
    return-void
.end method

.method private onMediaKeyEventSessionChangedListenerRegister()Z
    .locals 8

    .line 147
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.media.session.MediaSessionManager$OnMediaKeyEventSessionChangedListener"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 148
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v1, v4, v0

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->sessionCallbackHander:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$SessionCallbackHander;

    invoke-static {v2, v4, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->sessionCallback:Ljava/lang/Object;

    .line 151
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "addOnMediaKeyEventSessionChangedListener"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/util/concurrent/Executor;

    aput-object v7, v6, v0

    aput-object v1, v6, v3

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 154
    .local v2, "method":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    new-array v5, v5, [Ljava/lang/Object;

    .line 155
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    aput-object v6, v5, v0

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->sessionCallback:Ljava/lang/Object;

    aput-object v6, v5, v3

    .line 154
    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v4, "MCService-XuiMediaSessionManager"

    const-string v5, "onMediaKeyEventSessionChangedListenerRegister end"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    return v3

    .line 159
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MCService-XuiMediaSessionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMediaKeyEventSessionChangedListenerRegister e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",cause="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return v0
.end method

.method private onSystemTargetChanged(Landroid/media/session/MediaController;)V
    .locals 2
    .param p1, "target"    # Landroid/media/session/MediaController;

    .line 330
    if-eqz p1, :cond_1

    .line 331
    const-string v0, "com.xiaopeng.musicradio"

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mBluetoothMediaController:Landroid/media/session/MediaController;

    goto :goto_0

    .line 333
    :cond_0
    const-string v0, "com.android.bluetooth"

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->getBluetoothMediaController()Landroid/media/session/MediaController;

    move-result-object p1

    .line 337
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mSystemTargetController:Landroid/media/session/MediaController;

    .line 338
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->onGlobalTargetChanged(Landroid/media/session/MediaController;)V

    .line 339
    return-void
.end method

.method private refreshTargetControllerByBtAudioSelected()V
    .locals 2

    .line 362
    const-string v0, "MCService-XuiMediaSessionManager"

    const-string v1, "refreshTargetControllerByBtAudioSelected"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mGlobalTargetController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mGlobalTargetController:Landroid/media/session/MediaController;

    .line 364
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaopeng.musicradio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mGlobalTargetController:Landroid/media/session/MediaController;

    .line 365
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.bluetooth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 366
    :cond_0
    const-string v0, "MCService-XuiMediaSessionManager"

    const-string v1, "refreshTargetControllerByBtAudioSelected begin"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->getBluetoothMediaController()Landroid/media/session/MediaController;

    .line 368
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mBluetoothMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1

    .line 369
    const-string v0, "MCService-XuiMediaSessionManager"

    const-string v1, "refreshTargetControllerByBtAudioSelected end"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mBluetoothMediaController:Landroid/media/session/MediaController;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->onGlobalTargetChanged(Landroid/media/session/MediaController;)V

    .line 373
    :cond_1
    return-void
.end method

.method private refreshTargetOnHeadsetConnected(Z)V
    .locals 5
    .param p1, "connected"    # Z

    .line 238
    const-string v0, "MCService-XuiMediaSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshTargetOnHeadsetConnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mGlobalTargetController:Landroid/media/session/MediaController;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "targetUid":I
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mSubScreenUidList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 242
    iput-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mPrimaryMediaController:Landroid/media/session/MediaController;

    .line 243
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mGlobalTargetController:Landroid/media/session/MediaController;

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mSubMediaController:Landroid/media/session/MediaController;

    .line 244
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mTargetControllers:[Landroid/media/session/MediaController;

    aput-object v3, v2, v1

    .line 245
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mTargetControllers:[Landroid/media/session/MediaController;

    iget v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mSubScreenId:I

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mGlobalTargetController:Landroid/media/session/MediaController;

    aput-object v3, v1, v2

    goto :goto_0

    .line 247
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mGlobalTargetController:Landroid/media/session/MediaController;

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mPrimaryMediaController:Landroid/media/session/MediaController;

    .line 248
    iput-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mSubMediaController:Landroid/media/session/MediaController;

    .line 249
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mTargetControllers:[Landroid/media/session/MediaController;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mGlobalTargetController:Landroid/media/session/MediaController;

    aput-object v4, v2, v1

    .line 250
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mTargetControllers:[Landroid/media/session/MediaController;

    iget v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mSubScreenId:I

    aput-object v3, v1, v2

    .line 252
    .end local v0    # "targetUid":I
    :goto_0
    goto :goto_1

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mTargetControllers:[Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mGlobalTargetController:Landroid/media/session/MediaController;

    aput-object v2, v0, v1

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mTargetControllers:[Landroid/media/session/MediaController;

    iget v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mSubScreenId:I

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mGlobalTargetController:Landroid/media/session/MediaController;

    aput-object v2, v0, v1

    .line 256
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mTargetControllers:[Landroid/media/session/MediaController;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->notifyTargetChanged([Landroid/media/session/MediaController;)V

    .line 257
    return-void
.end method

.method private registerBtStatusEvent()V
    .locals 2

    .line 80
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mBTStateChangeListener:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$BTStateChangeListener;

    .line 81
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->addBTStateChangedListener(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$BTStateChangeListener;)V

    .line 82
    return-void
.end method

.method private registerHeadsetConnectEvent()V
    .locals 2

    .line 219
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasMultiScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->isDeviceConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mHeadsetDeviceConnected:Z

    .line 221
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mDeviceStatusListener:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager$DeviceStatusListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->registerListener(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager$DeviceStatusListener;)V

    .line 223
    :cond_0
    return-void
.end method

.method private registerMediaSessionEvent()V
    .locals 4

    .line 193
    const-string v0, "MCService-XuiMediaSessionManager"

    const-string v1, "registerMediaSessionEvent begin"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    if-eqz v0, :cond_1

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "callbackDone":Z
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->onMediaKeyEventSessionChangedListenerRegister()Z

    move-result v0

    .line 197
    if-nez v0, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->sessionCallbackAgentRegister()Z

    move-result v0

    .line 201
    :cond_0
    const-string v1, "MCService-XuiMediaSessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerMediaSessionCallback,callbackDone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .end local v0    # "callbackDone":Z
    :cond_1
    return-void
.end method

.method private registerScreenPackageEvent()V
    .locals 2

    .line 206
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasMultiScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getSubScreenDeviceId()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mSubScreenId:I

    .line 208
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getSubScreenUidList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mSubScreenUidList:Ljava/util/List;

    .line 209
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mSubScreenUidListCallback:Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$SubScreenUidListCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->addSubScreenUidListCallback(Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$SubScreenUidListCallback;)V

    .line 211
    :cond_0
    return-void
.end method

.method private sessionCallbackAgentRegister()Z
    .locals 12

    .line 169
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.xiaopeng.media.MediaSessionCallbackAgent$Callback"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 170
    .local v1, "agentCallbackClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "com.xiaopeng.media.MediaSessionCallbackAgent"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 171
    .local v2, "agentClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v1, v5, v0

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->sessionCallbackHander:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$SessionCallbackHander;

    invoke-static {v3, v5, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->sessionCallback:Ljava/lang/Object;

    .line 174
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 175
    .local v3, "agentInstance":Ljava/lang/Object;
    const-string v5, "setCallback"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object v1, v6, v0

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 176
    .local v5, "agentSetCallbackMethod":Ljava/lang/reflect/Method;
    new-array v6, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->sessionCallback:Ljava/lang/Object;

    aput-object v7, v6, v0

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v6, "android.media.session.MediaSessionManager$Callback"

    .line 178
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 179
    .local v6, "originSessionCallbackClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "setXuiCallback"

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Class;

    aput-object v6, v10, v0

    const-class v11, Landroid/os/Handler;

    aput-object v11, v10, v4

    invoke-virtual {v7, v8, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 182
    .local v7, "method":Ljava/lang/reflect/Method;
    iget-object v8, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v0

    .line 183
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getHandler()Landroid/os/Handler;

    move-result-object v10

    aput-object v10, v9, v4

    .line 182
    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v8, "MCService-XuiMediaSessionManager"

    const-string v9, "sessionCallbackAgentRegister end"

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    return v4

    .line 186
    .end local v1    # "agentCallbackClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "agentClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "agentInstance":Ljava/lang/Object;
    .end local v5    # "agentSetCallbackMethod":Ljava/lang/reflect/Method;
    .end local v6    # "originSessionCallbackClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MCService-XuiMediaSessionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sessionCallbackAgentRegister e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",cause="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return v0
.end method

.method private showMediaChangedToast(II)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "resId"    # I

    .line 214
    const-string v0, "MCService-XuiMediaSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showMediaChangedToast displayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p2, v1, p1}, Lcom/xiaopeng/xuiservice/utils/ToastUtil;->showToast(Landroid/content/Context;III)V

    .line 216
    return-void
.end method

.method private updateScreenMedia()V
    .locals 4

    .line 409
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mPrimaryMediaController:Landroid/media/session/MediaController;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 410
    const/4 v0, 0x0

    .line 411
    .local v0, "uid":I
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mSubScreenUidList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 412
    const/4 v2, 0x0

    const v3, 0x7f0e0072

    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->showMediaChangedToast(II)V

    .line 413
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->refreshTargetOnHeadsetConnected(Z)V

    .line 416
    .end local v0    # "uid":I
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mSubMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1

    .line 417
    const/4 v0, 0x0

    .line 418
    .restart local v0    # "uid":I
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mSubScreenUidList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 419
    iget v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mSubScreenId:I

    const v3, 0x7f0e0071

    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->showMediaChangedToast(II)V

    .line 420
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->refreshTargetOnHeadsetConnected(Z)V

    .line 423
    .end local v0    # "uid":I
    :cond_1
    return-void
.end method

.method private updateSessionTargetByNeed(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mSystemTargetController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mSystemTargetController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mGlobalTargetController:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mSystemTargetController:Landroid/media/session/MediaController;

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->isSameController(Landroid/media/session/MediaController;Landroid/media/session/MediaController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->enterBtMedia:Z

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    const-string v0, "MCService-XuiMediaSessionManager"

    const-string v1, "trigger the refresh systemController"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mSystemTargetController:Landroid/media/session/MediaController;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->onGlobalTargetChanged(Landroid/media/session/MediaController;)V

    .line 129
    :cond_1
    return-void
.end method


# virtual methods
.method public getTargetController(Ljava/lang/String;)Landroid/media/session/MediaController;
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mGlobalActiveControllers:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mGlobalActiveControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mGlobalActiveControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController;

    .line 107
    .local v1, "controller":Landroid/media/session/MediaController;
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    return-object v1

    .line 110
    .end local v1    # "controller":Landroid/media/session/MediaController;
    :cond_0
    goto :goto_0

    .line 112
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTargetControllers()[Landroid/media/session/MediaController;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mTargetControllers:[Landroid/media/session/MediaController;

    return-object v0
.end method

.method public init()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->registerMediaSessionEvent()V

    .line 74
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->registerHeadsetConnectEvent()V

    .line 75
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->registerScreenPackageEvent()V

    .line 76
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->registerBtStatusEvent()V

    .line 77
    return-void
.end method

.method public onAudioSessionStart(ILjava/lang/String;)V
    .locals 3
    .param p1, "usage"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 116
    const-string v0, "MCService-XuiMediaSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioSessionStart pkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " &usage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 118
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->updateSessionTargetByNeed(Ljava/lang/String;)V

    .line 120
    :cond_0
    return-void
.end method

.method public registerTargetChangedListener(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$TargetChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$TargetChangedListener;

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mTargetChangedListeners:Ljava/util/List;

    monitor-enter v0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mTargetChangedListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mTargetChangedListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    monitor-exit v0

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSDPosition(ILjava/lang/String;)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 141
    return-void
.end method

.method public unregisterTargetChangedListener(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$TargetChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$TargetChangedListener;

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mTargetChangedListeners:Ljava/util/List;

    monitor-enter v0

    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mTargetChangedListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->mTargetChangedListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 97
    :cond_0
    monitor-exit v0

    .line 98
    return-void

    .line 97
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
