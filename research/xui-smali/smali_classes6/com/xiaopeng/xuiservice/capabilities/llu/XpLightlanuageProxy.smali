.class public Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;
.super Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;
.source "XpLightlanuageProxy.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/XUIServiceBase;
.implements Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy$InstanceHolder;
    }
.end annotation


# static fields
.field private static final DANCE_INFO:Ljava/lang/String; = "/system/etc/xuiservice/dance/LocalDance_Info.json"

.field private static final DEFAULT_DANCE_PATH:Ljava/lang/String; = "/system/etc/xuiservice/dance"

.field private static final EFFECT_ENABLE:Ljava/lang/String; = "LangLightEffectEnable"

.field private static final EFFECT_MCU:Ljava/lang/String; = "LIGHT_EFFECT"

.field private static final EFFECT_RHYTHM:Ljava/lang/String; = "LangLightMusicEffect"

.field private static final EFFECT_SAYHI:Ljava/lang/String; = "isSayHiEnable"

.field private static final MCU_SHOWOFF:I = 0xa

.field private static final NEW_PATH:Ljava/lang/String; = "/data/xuiservice/llu/"

.field private static final OLD_PATH:Ljava/lang/String; = "/data/xuiservice/rsc/llu/"

.field private static final SYS_EFFECT_PATH:Ljava/lang/String; = "/system/etc/xuiservice/llu"

.field private static final TAG:Ljava/lang/String; = "XpLightlanuageProxy"

.field private static final USER_EFFECT_PATH:Ljava/lang/String; = "/data/xuiservice/llu"

.field private static mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

.field private static mContext:Landroid/content/Context;

.field private static final mLock:Ljava/lang/Object;

.field private static mRhythmStatus:Z

.field private static mSayhiName:Ljava/lang/String;

.field private static mService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;


# instance fields
.field private final listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
            "Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioConfig:Landroid/media/audioConfig/AudioConfig;

.field private mAudioManager:Landroid/media/AudioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mLock:Ljava/lang/Object;

    .line 84
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mRhythmStatus:Z

    .line 85
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mSayhiName:Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 873
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;-><init>()V

    .line 70
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy$1;

    const-string v1, "XpLightlanuageProxy"

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy$1;-><init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    .line 874
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mContext:Landroid/content/Context;

    .line 875
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    .line 876
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mAudioManager:Landroid/media/AudioManager;

    .line 877
    new-instance v0, Landroid/media/audioConfig/AudioConfig;

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/audioConfig/AudioConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    .line 878
    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;
    .locals 1

    .line 54
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    return-object v0
.end method

.method private addOperationListener()V
    .locals 3

    .line 843
    const-string v0, "XpLightlanuageProxy"

    const-string v1, "addOperationListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    .line 848
    .local v0, "operationHalService":Lcom/xiaopeng/xuiservice/operation/OperationHalService;
    const-string v1, "/data/xuiservice/llu"

    const v2, 0xf69b5

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->setDownloadPath(ILjava/lang/String;)V

    .line 851
    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy$2;-><init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->addEventListener(Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;)V

    .line 871
    return-void
.end method

.method private checkFileExists(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private checkPlayCondition(Z)Z
    .locals 1
    .param p1, "hasDancing"    # Z

    .line 272
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->hasIgOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 273
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->getLightEffectEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 274
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->hasGearStatusEquals(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->hasExpand()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 275
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->hasRearFogLampStatusOff()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 276
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->hasTurnLampsStatusOff()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    .line 277
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->hasBtPhoneOnCallingStatus()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    if-eqz p1, :cond_2

    .line 278
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->hasAudioFocusAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 272
    :goto_0
    return v0
.end method

.method private checkRhythmCondition()Z
    .locals 1

    .line 259
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->getRhythmEffectEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->getLightEffectEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->hasAudioStatusReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 259
    :goto_0
    return v0
.end method

.method private checkSayhiCondition()Z
    .locals 1

    .line 265
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->getSayhiEffectEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->getLightEffectEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->hasRearFogLampStatusOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->hasTurnLampsStatusOff()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 265
    :goto_0
    return v0
.end method

.method private fixModuleData()V
    .locals 14

    .line 482
    const-string v0, "XpLightlanuageProxy"

    const-string v1, "fix module"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v0

    const v1, 0xf69b5

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getResourcesByType(I)Ljava/util/List;

    move-result-object v0

    .line 484
    .local v0, "lluList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 485
    return-void

    .line 487
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 488
    .local v3, "llu":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    const-string v4, "preset_resource"

    iget-object v5, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceFrom:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 504
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    iget-object v5, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->extraInfo:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 505
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .line 506
    .local v5, "updated":Z
    const/4 v6, 0x0

    .line 506
    .local v6, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 507
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 508
    .local v7, "jsonObject":Lorg/json/JSONObject;
    const-string v8, "content"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 509
    .local v8, "content":Lorg/json/JSONObject;
    const-string/jumbo v9, "videoPath"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 510
    .local v9, "videoPath":Ljava/lang/String;
    invoke-static {v9}, Lcom/xiaopeng/xuiservice/utils/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "/data/xuiservice/rsc/llu/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 511
    const-string v10, "/data/xuiservice/rsc/llu/"

    const-string v11, "/data/xuiservice/llu/"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 512
    .local v10, "newVideoPath":Ljava/lang/String;
    const-string/jumbo v11, "videoPath"

    invoke-virtual {v8, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 513
    const/4 v5, 0x1

    .line 514
    const-string v11, "XpLightlanuageProxy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "update preset videoPath from: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", to: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v8    # "content":Lorg/json/JSONObject;
    .end local v9    # "videoPath":Ljava/lang/String;
    .end local v10    # "newVideoPath":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 518
    .end local v6    # "i":I
    :cond_2
    if-eqz v5, :cond_3

    .line 519
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    .line 520
    .local v6, "newExtra":Ljava/lang/String;
    const-string v7, "XpLightlanuageProxy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update preset extra from: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->extraInfo:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", to: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iput-object v6, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->extraInfo:Ljava/lang/String;

    .line 524
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->saveResourceInfo(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "updated":Z
    .end local v6    # "newExtra":Ljava/lang/String;
    goto :goto_2

    .line 527
    :catch_0
    move-exception v4

    .line 528
    .local v4, "t":Ljava/lang/Throwable;
    const-string v5, "XpLightlanuageProxy"

    const-string v6, ""

    invoke-static {v5, v6, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 529
    .end local v3    # "llu":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_3
    :goto_2
    goto/16 :goto_6

    .line 534
    .restart local v3    # "llu":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    :cond_4
    const/4 v4, 0x0

    .line 536
    .local v4, "update":Z
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    iget-object v6, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->extraInfo:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 537
    .local v5, "jsonObject":Lorg/json/JSONObject;
    const-string v6, "moduleData"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_8

    .line 538
    const-string v6, "XpLightlanuageProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "find old data, no moduleData: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getRemoteResources(I)Ljava/util/List;

    move-result-object v6

    .line 541
    .local v6, "remoteResources":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/operation/OperationResource;>;"
    const/4 v7, 0x0

    .line 542
    .local v7, "find":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    invoke-static {v6}, Lcom/xiaopeng/xuiservice/utils/CollectionUtil;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 543
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 544
    .local v9, "remote":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    invoke-virtual {v9}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 545
    move-object v7, v9

    .line 546
    goto :goto_4

    .line 548
    .end local v9    # "remote":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    :cond_5
    goto :goto_3

    .line 551
    :cond_6
    :goto_4
    if-eqz v7, :cond_7

    .line 552
    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {v7}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getExtraData()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 553
    .local v8, "remoteExtra":Lorg/json/JSONObject;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 554
    .local v9, "moduleData":Lorg/json/JSONObject;
    const-string v10, "lightAndDanceAuthor"

    const-string v11, "lightAndDanceAuthor"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 555
    const-string v10, "lightAndDanceLength"

    const-string v11, "lightAndDanceLength"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 556
    const-string v10, "moduleData"

    invoke-virtual {v5, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 557
    const-string v10, "XpLightlanuageProxy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "find remote and expand moduleData: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const/4 v4, 0x1

    .line 559
    .end local v8    # "remoteExtra":Lorg/json/JSONObject;
    .end local v9    # "moduleData":Lorg/json/JSONObject;
    goto :goto_5

    .line 560
    :cond_7
    const-string v8, "XpLightlanuageProxy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "not find remote, llu="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    .end local v6    # "remoteResources":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/operation/OperationResource;>;"
    .end local v7    # "find":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    :cond_8
    :goto_5
    const-string v6, "legacyContent"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 566
    .local v6, "legacyContent":Lorg/json/JSONObject;
    if-eqz v6, :cond_9

    .line 568
    const-string/jumbo v7, "videoPath"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 569
    .local v7, "videoPath":Ljava/lang/String;
    invoke-static {v7}, Lcom/xiaopeng/xuiservice/utils/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "/data/xuiservice/rsc/llu/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 570
    const-string v8, "/data/xuiservice/rsc/llu/"

    const-string v9, "/data/xuiservice/llu/"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 571
    .local v8, "newVideoPath":Ljava/lang/String;
    const-string/jumbo v9, "videoPath"

    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 572
    const-string v9, "XpLightlanuageProxy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update legacyContent video path from: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", to: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const/4 v4, 0x1

    .line 577
    .end local v7    # "videoPath":Ljava/lang/String;
    .end local v8    # "newVideoPath":Ljava/lang/String;
    :cond_9
    if-eqz v4, :cond_a

    .line 578
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    .line 579
    .local v7, "newExtra":Ljava/lang/String;
    const-string v8, "XpLightlanuageProxy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update download extra from: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->extraInfo:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", to: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iput-object v7, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->extraInfo:Ljava/lang/String;

    .line 582
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->saveResourceInfo(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 588
    .end local v4    # "update":Z
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "legacyContent":Lorg/json/JSONObject;
    .end local v7    # "newExtra":Ljava/lang/String;
    :cond_a
    goto :goto_6

    .line 585
    :catch_1
    move-exception v4

    .line 587
    .local v4, "t":Ljava/lang/Throwable;
    const-string v5, "XpLightlanuageProxy"

    const-string v6, ""

    invoke-static {v5, v6, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 590
    .end local v3    # "llu":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    .end local v4    # "t":Ljava/lang/Throwable;
    :goto_6
    goto/16 :goto_0

    .line 591
    :cond_b
    return-void
.end method

.method private getAudioSource(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .line 141
    const-string v0, "/data/xuiservice/llu"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->getAllDirs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 142
    .local v0, "subdirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "/system/etc/xuiservice/dance"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 145
    .local v2, "path":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".mp3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "file":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->checkFileExists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    const-string v1, "XpLightlanuageProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAudioSource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-object v3

    .line 151
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "file":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 153
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;
    .locals 1

    .line 885
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy$InstanceHolder;->access$100()Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    move-result-object v0

    return-object v0
.end method

.method private getSayhiMode()Ljava/lang/String;
    .locals 4

    .line 282
    const-string v0, "%02d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->getMcuEffect(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasAudioFocusAvailable()Z
    .locals 3

    .line 237
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->requestAudioFocus()Z

    move-result v0

    .line 239
    .local v0, "res":Z
    const-string v1, "XpLightlanuageProxy"

    if-eqz v0, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    const-string v2, "can not play, audioFocus not available"

    :goto_0
    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return v0
.end method

.method private hasAudioStatusReady()Z
    .locals 5

    .line 246
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isKaraokeOn()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 248
    .local v1, "res":Z
    :goto_1
    const-string v2, "XpLightlanuageProxy"

    if-eqz v1, :cond_2

    const-string v3, ""

    goto :goto_2

    :cond_2
    const-string v3, "can not play, audio status not ready"

    :goto_2
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    return v1

    .line 251
    .end local v1    # "res":Z
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XpLightlanuageProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasAudioStatusReady failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private hasBtPhoneOnCallingStatus()Z
    .locals 5

    .line 223
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    invoke-virtual {v1}, Landroid/media/audioConfig/AudioConfig;->getBtCallOnFlag()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mAudioManager:Landroid/media/AudioManager;

    .line 224
    invoke-virtual {v1}, Landroid/media/AudioManager;->getCurrentAudioFocusPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.xiaopeng.btphone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 226
    .local v1, "res":Z
    :goto_1
    const-string v2, "XpLightlanuageProxy"

    if-eqz v1, :cond_2

    const-string v3, "can not play, BT phone on calling"

    goto :goto_2

    :cond_2
    const-string v3, ""

    :goto_2
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    return v1

    .line 229
    .end local v1    # "res":Z
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XpLightlanuageProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasBtPhoneOnCallingStatus failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private hasCarDrivingStatus()Z
    .locals 5

    .line 193
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v2, "xp_vcu"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/vcu/CarVcuManager;

    .line 194
    .local v1, "vcu":Landroid/car/hardware/vcu/CarVcuManager;
    invoke-virtual {v1}, Landroid/car/hardware/vcu/CarVcuManager;->getRawCarSpeed()F

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 196
    .local v2, "res":Z
    :goto_0
    const-string v3, "XpLightlanuageProxy"

    if-eqz v2, :cond_1

    const-string v4, "can not play, car speed is greater than 3km/h"

    goto :goto_1

    :cond_1
    const-string v4, ""

    :goto_1
    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    return v2

    .line 199
    .end local v1    # "vcu":Landroid/car/hardware/vcu/CarVcuManager;
    .end local v2    # "res":Z
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XpLightlanuageProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasCarDrivingStatus failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private hasGearStatusEquals(I)Z
    .locals 5
    .param p1, "level"    # I

    .line 158
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v2, "xp_vcu"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/vcu/CarVcuManager;

    .line 159
    .local v1, "vcu":Landroid/car/hardware/vcu/CarVcuManager;
    invoke-virtual {v1}, Landroid/car/hardware/vcu/CarVcuManager;->getDisplayGearLevel()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 161
    .local v2, "res":Z
    :goto_0
    if-nez v2, :cond_1

    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    .line 162
    const-string v3, "XpLightlanuageProxy"

    const-string v4, "can not play, current gear status is not P"

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_1
    return v2

    .line 166
    .end local v1    # "vcu":Landroid/car/hardware/vcu/CarVcuManager;
    .end local v2    # "res":Z
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XpLightlanuageProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasGearStatusEquals failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private hasIgOn()Z
    .locals 5

    .line 95
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v2, "xp_mcu"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/mcu/CarMcuManager;

    .line 96
    .local v1, "mcu":Landroid/car/hardware/mcu/CarMcuManager;
    invoke-virtual {v1}, Landroid/car/hardware/mcu/CarMcuManager;->getIgStatusFromMcu()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    move v2, v3

    .line 98
    .local v2, "res":Z
    const-string v3, "XpLightlanuageProxy"

    if-eqz v2, :cond_1

    const-string v4, ""

    goto :goto_1

    :cond_1
    const-string v4, "can not play, ig status off"

    :goto_1
    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    return v2

    .line 101
    .end local v1    # "mcu":Landroid/car/hardware/mcu/CarMcuManager;
    .end local v2    # "res":Z
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XpLightlanuageProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasIgOn failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private hasRearFogLampStatusOff()Z
    .locals 5

    .line 208
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v2, "xp_bcm"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/bcm/CarBcmManager;

    .line 209
    .local v1, "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    invoke-virtual {v1}, Landroid/car/hardware/bcm/CarBcmManager;->getRearFogLamp()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 211
    .local v2, "res":Z
    :goto_0
    const-string v3, "XpLightlanuageProxy"

    if-eqz v2, :cond_1

    const-string v4, ""

    goto :goto_1

    :cond_1
    const-string v4, "can not play, rearFogLamp is not turned off"

    :goto_1
    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    return v2

    .line 214
    .end local v1    # "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    .end local v2    # "res":Z
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XpLightlanuageProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasRearFogLampStatusOff failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private hasTurnLampsStatusOff()Z
    .locals 6

    .line 175
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v2, "xp_bcm"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/bcm/CarBcmManager;

    .line 176
    .local v1, "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    invoke-virtual {v1}, Landroid/car/hardware/bcm/CarBcmManager;->getLeftAndRightTurnLampsActiveStatus()[I

    move-result-object v2

    .line 178
    .local v2, "data":[I
    aget v3, v2, v0

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    aget v3, v2, v4

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    move v3, v4

    .line 181
    .local v3, "res":Z
    const-string v4, "XpLightlanuageProxy"

    if-eqz v3, :cond_1

    const-string v5, ""

    goto :goto_1

    :cond_1
    const-string v5, "can not play, turnLamp is not turned off"

    :goto_1
    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    return v3

    .line 184
    .end local v1    # "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    .end local v2    # "data":[I
    .end local v3    # "res":Z
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XpLightlanuageProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasTurnLampsStatusOff failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method public static synthetic lambda$4KExVZVeqDoKUdmDcEKVbsahUPE(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->fixModuleData()V

    return-void
.end method

.method public static synthetic lambda$k1LMnpJLlrYtcSsQvSbPW-daMgg(Ljava/io/File;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    return p0
.end method

.method private migrateOldLlu()V
    .locals 10

    .line 455
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/xuiservice/rsc/llu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 456
    .local v0, "oldFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 457
    const-string v1, "XpLightlanuageProxy"

    const-string v2, "migrateOldLlu copy /data/xuiservice/rsc/llu/ -> /data/xuiservice/llu/"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/llu/-$$Lambda$XpLightlanuageProxy$k1LMnpJLlrYtcSsQvSbPW-daMgg;->INSTANCE:Lcom/xiaopeng/xuiservice/capabilities/llu/-$$Lambda$XpLightlanuageProxy$k1LMnpJLlrYtcSsQvSbPW-daMgg;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 459
    .local v1, "oldDirs":[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 460
    const-string v2, "XpLightlanuageProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "find old dir count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 462
    .local v5, "oldDir":Ljava/io/File;
    const-string v6, "/data/xuiservice/llu/"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    invoke-interface {v6}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v6

    .line 463
    .local v6, "newDir":Ljava/io/File;
    const-string v7, "XpLightlanuageProxy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "migrateOldLlu copy llu "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-static {v5, v6}, Lcom/xiaopeng/xuiservice/utils/SafeCopyFileUtil;->safeCopyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 461
    .end local v5    # "oldDir":Ljava/io/File;
    .end local v6    # "newDir":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 467
    :cond_0
    const-string v2, "/data/xuiservice/rsc/llu/"

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 470
    .end local v1    # "oldDirs":[Ljava/io/File;
    :cond_1
    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/llu/-$$Lambda$XpLightlanuageProxy$4KExVZVeqDoKUdmDcEKVbsahUPE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/-$$Lambda$XpLightlanuageProxy$4KExVZVeqDoKUdmDcEKVbsahUPE;-><init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;)V

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 471
    return-void
.end method

.method private parseEffectInfo(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .line 113
    const/4 v0, 0x0

    .line 116
    .local v0, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "json"

    invoke-static {p1, v1}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->getAllFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 117
    .local v1, "jsonFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "mp4"

    invoke-static {p1, v2}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->getAllFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 119
    .local v2, "mediaFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v4, :cond_1

    .line 120
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 121
    .local v3, "content":Lorg/json/JSONObject;
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 123
    .local v6, "file":Ljava/lang/String;
    const-string v7, "effectName"

    const-string v8, "/"

    .line 124
    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v8, v4

    const-string v9, ".json"

    invoke-virtual {v6, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 123
    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string/jumbo v7, "videoPath"

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v4, :cond_0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    :cond_0
    const-string v5, ""

    :goto_0
    invoke-virtual {v3, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v5

    .line 129
    const-string v5, "id"

    const-string v7, "/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    const-string v5, "category"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 131
    const-string v4, "content"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v1    # "jsonFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "mediaFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "content":Lorg/json/JSONObject;
    .end local v6    # "file":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XpLightlanuageProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseEffectInfo failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 835
    return-void
.end method

.method public getDanceEffectRunnable()I
    .locals 6

    .line 755
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->hasGearStatusEquals(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->hasExpand()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    .line 756
    .local v1, "status1":I
    :goto_1
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->hasTurnLampsStatusOff()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->hasRearFogLampStatusOff()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    const/4 v3, 0x2

    .line 757
    .local v3, "status2":I
    :goto_2
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->hasBtPhoneOnCallingStatus()Z

    move-result v4

    if-nez v4, :cond_3

    move v0, v2

    nop

    .line 759
    .local v0, "status3":I
    :cond_3
    const-string v2, "XpLightlanuageProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get danceEffect runnable, status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    or-int v5, v1, v3

    or-int/2addr v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    or-int v2, v1, v3

    or-int/2addr v2, v0

    neg-int v2, v2

    return v2
.end method

.method public getLightEffect()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 595
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->getLightEffect()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLightEffectEnable()Z
    .locals 3

    .line 683
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "LangLightEffectEnable"

    .line 682
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 686
    .local v0, "enable":Z
    const-string v1, "XpLightlanuageProxy"

    if-eqz v0, :cond_1

    const-string v2, ""

    goto :goto_1

    :cond_1
    const-string v2, "can not play, lightEffect switch disabled"

    :goto_1
    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    return v0
.end method

.method public getLocalDanceEffectInfo()Ljava/lang/String;
    .locals 5

    .line 627
    const/4 v0, 0x0

    .line 630
    .local v0, "str":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "/system/etc/xuiservice/dance/LocalDance_Info.json"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    .line 632
    const-string v1, "XpLightlanuageProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLocalDanceEffectInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    goto :goto_0

    .line 633
    :catch_0
    move-exception v1

    .line 634
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XpLightlanuageProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLocalDanceEffectInfo failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public getMcuEffect(I)I
    .locals 3
    .param p1, "name"    # I

    .line 717
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LIGHT_EFFECT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 716
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRhythmEffect()Ljava/lang/String;
    .locals 2

    .line 733
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "LangLightMusicEffect"

    .line 732
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, "expomode_music1"

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getRhythmEffectEnable()Z
    .locals 2

    .line 668
    const-string v0, "XpLightlanuageProxy"

    sget-boolean v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mRhythmStatus:Z

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, "can not play, rhythmEffect switch disabled"

    :goto_0
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mRhythmStatus:Z

    return v0
.end method

.method public getRunningEffect()Ljava/lang/String;
    .locals 1

    .line 771
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->getRunningEffect()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSayhiEffectEnable()Z
    .locals 3

    .line 643
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isSayHiEnable"

    .line 642
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    .line 646
    .local v0, "res":Z
    const-string v1, "XpLightlanuageProxy"

    if-eqz v0, :cond_1

    const-string v2, ""

    goto :goto_1

    :cond_1
    const-string v2, "can not play, sayhi switch disabled"

    :goto_1
    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 839
    const-string v0, "XpLightlanuageProxy"

    return-object v0
.end method

.method public getUserEffectInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "subdir"    # Ljava/lang/String;

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/xuiservice/llu/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->parseEffectInfo(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 618
    .local v0, "obj":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 620
    .local v1, "str":Ljava/lang/String;
    :goto_0
    const-string v2, "XpLightlanuageProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUserEffectInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    return-object v1
.end method

.method public getUserEffectInfoList()Ljava/lang/String;
    .locals 5

    .line 600
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 601
    .local v0, "array":Lorg/json/JSONArray;
    const-string v1, "/data/xuiservice/llu"

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->getAllDirs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 603
    .local v1, "subdirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 604
    .local v3, "path":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->parseEffectInfo(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 605
    .local v4, "obj":Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    .line 606
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 608
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "obj":Lorg/json/JSONObject;
    :cond_0
    goto :goto_0

    .line 610
    :cond_1
    const-string v2, "XpLightlanuageProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUserEffectInfoList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public init()V
    .locals 2

    .line 818
    const-string v0, "XpLightlanuageProxy"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->loadLightEffect()V

    .line 821
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->addOperationListener()V

    .line 822
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->getLightEffectEnable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->setLightEffectEnable(Z)V

    .line 823
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->getRhythmEffect()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->setRhythmEffect(Ljava/lang/String;)V

    .line 824
    return-void
.end method

.method public isDanceEffectRunning()Z
    .locals 1

    .line 766
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->isDanceEffectRunning()Z

    move-result v0

    return v0
.end method

.method public loadLightEffect()V
    .locals 6

    .line 418
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 419
    :try_start_0
    const-string v1, "XpLightlanuageProxy"

    const-string v2, "load lightEffect"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->clearLightEffect()V

    .line 423
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->migrateOldLlu()V

    .line 425
    const-string v1, "/data/xuiservice/llu"

    const-string v2, "json"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->getAllFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 426
    .local v1, "userFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 427
    .local v3, "file":Ljava/lang/String;
    sget-object v4, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-virtual {v4, v3}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->loadLightEffect(Ljava/lang/String;)V

    .line 428
    .end local v3    # "file":Ljava/lang/String;
    goto :goto_0

    .line 430
    :cond_0
    const-string v2, "/system/etc/xuiservice/llu"

    const-string v3, "json"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->getAllFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 431
    .local v2, "sysFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 432
    .local v4, "file":Ljava/lang/String;
    sget-object v5, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-virtual {v5, v4}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->loadLightEffect(Ljava/lang/String;)V

    .line 433
    .end local v4    # "file":Ljava/lang/String;
    goto :goto_1

    .line 434
    .end local v1    # "userFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "sysFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    monitor-exit v0

    .line 435
    return-void

    .line 434
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onErrorEffect(Ljava/lang/String;I)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "errCode"    # I

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;

    .line 398
    .local v1, "l":Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;->onErrorEvent(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    goto :goto_1

    .line 399
    :catch_0
    move-exception v2

    .line 400
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "XpLightlanuageProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onErrorEffect failed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 403
    :cond_0
    return-void
.end method

.method public onFinishEffect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 385
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;

    .line 387
    .local v1, "l":Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;->onFinishEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    goto :goto_1

    .line 388
    :catch_0
    move-exception v2

    .line 389
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "XpLightlanuageProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFinishEffect failed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 392
    :cond_0
    return-void
.end method

.method public onStartEffect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;

    .line 365
    .local v1, "l":Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;->onStartEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    goto :goto_1

    .line 366
    :catch_0
    move-exception v2

    .line 367
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "XpLightlanuageProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStartEffect failed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 370
    :cond_0
    return-void
.end method

.method public onStopEffect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 374
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;

    .line 376
    .local v1, "l":Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;->onStopEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    goto :goto_1

    .line 377
    :catch_0
    move-exception v2

    .line 378
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "XpLightlanuageProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStopEffect failed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 381
    :cond_0
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "info":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v1

    const-string v2, "XpLightlanuageProxy"

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderEnter(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const/4 v1, 0x1

    .line 338
    .local v1, "ret":Z
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    .line 343
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v2

    const-string v3, "XpLightlanuageProxy"

    invoke-virtual {v2, v3, v0}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderLeave(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    nop

    .line 346
    return v1

    .line 343
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 339
    :catch_0
    move-exception v2

    .line 340
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "XpLightlanuageProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTransact failed, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v3

    const-string v4, "XpLightlanuageProxy"

    invoke-virtual {v3, v4, v0}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderLeave(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public onUpgradeEffect(II)V
    .locals 6
    .param p1, "name"    # I
    .param p2, "mode"    # I

    .line 407
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;

    .line 409
    .local v1, "l":Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;->onUpgradeEvent(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    goto :goto_1

    .line 410
    :catch_0
    move-exception v2

    .line 411
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "XpLightlanuageProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUpgradeEffect failed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 414
    :cond_0
    return-void
.end method

.method public playEffect(Ljava/lang/String;I)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "count"    # I

    .line 777
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->getAudioSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 778
    .local v0, "source":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->getRunningEffect()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 779
    const/4 v1, -0x1

    .local v1, "ret":I
    :goto_0
    goto :goto_2

    .line 780
    .end local v1    # "ret":I
    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->checkPlayCondition(Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 781
    const/4 v1, -0x2

    goto :goto_0

    .line 783
    :cond_2
    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-virtual {v2, p1, v0, p2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->playEffect(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, -0x3

    .line 786
    .restart local v1    # "ret":I
    :goto_2
    const-string v2, "XpLightlanuageProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "play "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    const-string v4, "dance"

    goto :goto_3

    :cond_4
    const-string v4, "light"

    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Effect, name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    return v1
.end method

.method public playRhythmEffect(F)Z
    .locals 1
    .param p1, "ratio"    # F

    .line 302
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->checkRhythmCondition()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->playEffect(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public playSayhiEffect()Z
    .locals 4

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android_avh_sayhi_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->getSayhiMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mSayhiName:Ljava/lang/String;

    .line 308
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->checkSayhiCondition()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mSayhiName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->playEffect(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public playSmartEffect(I)V
    .locals 0
    .param p1, "type"    # I

    .line 809
    return-void
.end method

.method public playXSayhiEffect()I
    .locals 4

    .line 316
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->getLightEffectEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    const v0, 0x7f0e006e

    return v0

    .line 320
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->hasCarDrivingStatus()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->hasTurnLampsStatusOff()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->hasRearFogLampStatusOff()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 324
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android_xsayhi_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->getSayhiMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "name":Ljava/lang/String;
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->playEffect(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 327
    const v1, 0x7f0e0070

    return v1

    .line 321
    .end local v0    # "name":Ljava/lang/String;
    :cond_2
    :goto_0
    const v0, 0x7f0e006f

    return v0
.end method

.method public registerListener(Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;

    .line 351
    const-string v0, "XpLightlanuageProxy"

    const-string v1, "registerListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->registerListener(Landroid/os/IInterface;)Z

    .line 353
    return-void
.end method

.method public release()V
    .locals 2

    .line 828
    const-string v0, "XpLightlanuageProxy"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->clear()V

    .line 830
    return-void
.end method

.method public setAiLightEffectListener(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$AvmListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$AvmListener;

    .line 299
    return-void
.end method

.method public setLightEffectEnable(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .line 693
    const-string v0, "XpLightlanuageProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set lightEffect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "enable"

    goto :goto_0

    :cond_0
    const-string v2, "disable, stop Effect"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    if-nez p1, :cond_1

    .line 696
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->stopEffect(Z)V

    .line 700
    :cond_1
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_llu"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/llu/CarLluManager;

    .line 702
    .local v0, "llu":Landroid/car/hardware/llu/CarLluManager;
    nop

    .line 703
    nop

    .line 702
    invoke-virtual {v0, p1}, Landroid/car/hardware/llu/CarLluManager;->setMcuLluEnableStatus(I)V

    .line 707
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "LangLightEffectEnable"

    .line 706
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    .end local v0    # "llu":Landroid/car/hardware/llu/CarLluManager;
    goto :goto_1

    .line 709
    :catch_0
    move-exception v0

    .line 710
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpLightlanuageProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLightEffectEnable failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setListener(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffectListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffectListener;

    .line 286
    const-string v0, "XpLightlanuageProxy"

    const-string v1, "setListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setLightEffectListener(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffectListener;)V

    .line 289
    return-void
.end method

.method public setMcuEffect(II)V
    .locals 3
    .param p1, "name"    # I
    .param p2, "mode"    # I

    .line 723
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setMcuEffect(II)V

    .line 726
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LIGHT_EFFECT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 725
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 728
    return-void
.end method

.method public setRhythmEffect(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 741
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 742
    const-string v0, "XpLightlanuageProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set rhythmEffect, name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setRhythmEffect(Ljava/lang/String;)V

    .line 747
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "LangLightMusicEffect"

    .line 746
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 750
    :cond_0
    return-void
.end method

.method public setRhythmEffectEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 675
    const-string v0, "XpLightlanuageProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set rhythmEffect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "enable"

    goto :goto_0

    :cond_0
    const-string v2, "disable"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    sput-boolean p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mRhythmStatus:Z

    .line 678
    return-void
.end method

.method public setSayhiEffectEnable(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android_avh_sayhi_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->getSayhiMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, "name":Ljava/lang/String;
    const-string v1, "XpLightlanuageProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set sayhiEffect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v3, "enable"

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disable, stop "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    if-nez p1, :cond_1

    .line 658
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->stopEffect(Ljava/lang/String;)V

    .line 662
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "isSayHiEnable"

    .line 661
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 664
    return-void
.end method

.method public stopEffect()V
    .locals 3

    .line 795
    const-string v0, "XpLightlanuageProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->isDanceEffectRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "dance"

    goto :goto_0

    :cond_0
    const-string v2, "light"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Effect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->stopEffect(Z)V

    .line 798
    return-void
.end method

.method public stopSayhiEffect()V
    .locals 2

    .line 312
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mSayhiName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->stopEffect(Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method public stopSmartEffect()V
    .locals 0

    .line 814
    return-void
.end method

.method public suspendEffect()V
    .locals 3

    .line 801
    const-string v0, "XpLightlanuageProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "suspend "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->isDanceEffectRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "dance"

    goto :goto_0

    :cond_0
    const-string v2, "light"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Effect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->stopEffect(Z)V

    .line 804
    return-void
.end method

.method public unregisterListener(Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;

    .line 357
    const-string v0, "XpLightlanuageProxy"

    const-string v1, "unregisterListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->unregisterListener(Landroid/os/IInterface;)Z

    .line 359
    return-void
.end method

.method public unsetListener(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffectListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffectListener;

    .line 292
    const-string v0, "XpLightlanuageProxy"

    const-string v1, "unsetListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->unsetLightEffectListener(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffectListener;)V

    .line 295
    return-void
.end method
