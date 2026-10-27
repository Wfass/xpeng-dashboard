.class public Lcom/xiaopeng/xuiservice/smart/SmartEggService;
.super Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
.source "SmartEggService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/SmartEggService$InstanceHolder;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EGG_SURPRISE_IGON_COUNT:I = 0x2

.field private static final EGG_SURPRISE_PGEAR_COUNT:I = 0x3

.field private static final EGG_SURPRISE_TIME_DAY:I = 0x1

.field private static final EGG_SURPRISE_TIME_MONTH_12:I = 0xc

.field private static final EGG_SURPRISE_TIME_MONTH_3:I = 0x3

.field private static final EGG_SURPRISE_TIME_MONTH_6:I = 0x6

.field private static final EGG_SURPRISE_TIME_MONTH_9:I = 0x9

.field private static final LLU_EFFECT_SURPRISE_NORMAL:Ljava/lang/String; = "CDU_AI_surprise_normal"

.field private static final PATH_SURPRISE_SOUND:[Ljava/lang/String;

.field private static final XP_SMART_EGG_LLU_INTENT:Ljava/lang/String; = "com.xiaopeng.intent.action.smartegg.llu"


# instance fields
.field private carIgOnCount:I

.field private carPGearCount:I

.field private isCarIgOn:Z

.field private isDriverBeltBuck:Z

.field private isDriverOnSeat:Z

.field private isPGear:Z

.field private lastDay:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

.field private mCarSrsEventCallback:Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;

.field private mContextCarStatusEventListener:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextCarStatusEventListener;

.field private mContextInfoManager:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

.field private mNotificationHelper:Lcom/xiaopeng/xuiservice/smart/NotificationHelper;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSmartEventListener:Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListener;

.field private mSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

.field private mXUIConfig:Lcom/xiaopeng/xuiservice/XUIConfig;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private soundEffectStreamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-string v0, "/system/media/audio/xiaopeng/cdu/mp3/surprise_normal.mp3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->PATH_SURPRISE_SOUND:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mNotificationHelper:Lcom/xiaopeng/xuiservice/smart/NotificationHelper;

    .line 67
    const/4 v0, 0x3

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->soundEffectStreamType:I

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->isCarIgOn:Z

    .line 70
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->isPGear:Z

    .line 72
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->isDriverOnSeat:Z

    .line 73
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->isDriverBeltBuck:Z

    .line 74
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->carIgOnCount:I

    .line 75
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->carPGearCount:I

    .line 76
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->lastDay:I

    .line 78
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService$1;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    new-instance v0, Lcom/xiaopeng/xuiservice/XUIConfig;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/XUIConfig;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mXUIConfig:Lcom/xiaopeng/xuiservice/XUIConfig;

    .line 96
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/NotificationHelper;->getInstance()Lcom/xiaopeng/xuiservice/smart/NotificationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mNotificationHelper:Lcom/xiaopeng/xuiservice/smart/NotificationHelper;

    .line 97
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mAudioManager:Landroid/media/AudioManager;

    .line 98
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->registerReceiver()V

    .line 99
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/smart/SmartEggService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/smart/SmartEggService$1;

    .line 35
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    .line 35
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->isPGear:Z

    return v0
.end method

.method static synthetic access$002(Lcom/xiaopeng/xuiservice/smart/SmartEggService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartEggService;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->isPGear:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->handleSurprise()V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    .line 35
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->soundEffectStreamType:I

    return v0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)Lcom/xiaopeng/xuimanager/smart/SmartManager;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/xiaopeng/xuiservice/smart/SmartEggService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartEggService;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->isCarIgOn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->checkSameDay()V

    return-void
.end method

.method static synthetic access$408(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)I
    .locals 2
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    .line 35
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->carIgOnCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->carIgOnCount:I

    return v0
.end method

.method static synthetic access$508(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)I
    .locals 2
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    .line 35
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->carPGearCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->carPGearCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->showInfoFlowCard()V

    return-void
.end method

.method static synthetic access$702(Lcom/xiaopeng/xuiservice/smart/SmartEggService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartEggService;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->isDriverBeltBuck:Z

    return p1
.end method

.method static synthetic access$802(Lcom/xiaopeng/xuiservice/smart/SmartEggService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartEggService;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->isDriverOnSeat:Z

    return p1
.end method

.method private checkSameDay()V
    .locals 4

    .line 313
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 314
    .local v0, "calendar":Ljava/util/Calendar;
    iget v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->lastDay:I

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 315
    const/4 v1, 0x0

    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->carIgOnCount:I

    .line 316
    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->carPGearCount:I

    .line 317
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->lastDay:I

    .line 319
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/smart/SmartEggService;
    .locals 1

    .line 214
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartEggService$InstanceHolder;->access$900()Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    move-result-object v0

    return-object v0
.end method

.method private handleSurprise()V
    .locals 2

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mNotificationHelper:Lcom/xiaopeng/xuiservice/smart/NotificationHelper;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/NotificationHelper;->dismissEggInfoCard()V

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    const-string v1, "CDU_AI_surprise_normal"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->setLangLightEffectMode(Ljava/lang/String;)V

    .line 248
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->playSurpriseSound()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->handleException(Ljava/lang/Exception;)V

    .line 252
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private isSurpriseTime()Z
    .locals 5

    .line 304
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 305
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 306
    .local v1, "month":I
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 307
    .local v3, "day":I
    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    const/4 v4, 0x6

    if-eq v1, v4, :cond_0

    const/16 v4, 0x9

    if-eq v1, v4, :cond_0

    const/16 v4, 0xc

    if-ne v1, v4, :cond_1

    :cond_0
    if-ne v3, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private playSurpriseSound()V
    .locals 4

    .line 255
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->PATH_SURPRISE_SOUND:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 260
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 261
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/SmartEggService$5;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService$5;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 273
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/SmartEggService$6;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService$6;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 282
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/SmartEggService$7;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService$7;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 295
    :catch_0
    move-exception v1

    .line 296
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 297
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->TAG:Ljava/lang/String;

    const-string v2, "The sound file isn\'t exist"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :goto_1
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->TAG:Ljava/lang/String;

    const-string v1, "registerReceiver"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 332
    .local v0, "mIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.xiaopeng.intent.action.smartegg.llu"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 334
    return-void
.end method

.method private showInfoFlowCard()V
    .locals 2

    .line 322
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->isCarIgOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->isPGear:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->isDriverOnSeat:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->isDriverBeltBuck:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->carIgOnCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->carPGearCount:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 324
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->isSurpriseTime()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mXUIConfig:Lcom/xiaopeng/xuiservice/XUIConfig;

    const-string v0, "LLU"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mNotificationHelper:Lcom/xiaopeng/xuiservice/smart/NotificationHelper;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/NotificationHelper;->showEggInfoCard()V

    .line 327
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 103
    const-string v0, "SmartEggService"

    return-object v0
.end method

.method protected initCarListener()V
    .locals 1

    .line 161
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService$3;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mCarSrsEventCallback:Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;

    .line 181
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService$4;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mCarSrsEventCallback:Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->addSrsManagerListener(Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;)V

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->addBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V

    .line 206
    return-void
.end method

.method protected initXUIManager()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 109
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->getXuiManager()Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v0

    const-string v1, "smart"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/XUIManager;->getXUIServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/smart/SmartManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    .line 121
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->getXuiManager()Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v0

    const-string v1, "contextinfo"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/XUIManager;->getXUIServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mContextInfoManager:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    .line 123
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService$2;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mContextCarStatusEventListener:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextCarStatusEventListener;
    :try_end_0
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 148
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mContextInfoManager:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mContextCarStatusEventListener:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextCarStatusEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->registerListener(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextCarStatusEventListener;)V
    :try_end_1
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 151
    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->handleException(Ljava/lang/Exception;)V
    :try_end_2
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 155
    .end local v0    # "e":Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
    :goto_0
    goto :goto_1

    .line 153
    :catch_1
    move-exception v0

    .line 154
    .restart local v0    # "e":Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;->printStackTrace()V

    .line 156
    .end local v0    # "e":Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
    :goto_1
    return-void
.end method

.method protected needConnectXUI()Z
    .locals 1

    .line 348
    const/4 v0, 0x1

    return v0
.end method

.method protected onCarManagerInited()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->TAG:Ljava/lang/String;

    const-string v1, "onCarManagerInited"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method protected onInit()V
    .locals 0

    .line 220
    return-void
.end method

.method protected onRelease()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mCarSrsEventCallback:Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->removeSrsManagerListener(Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;)V

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->removeBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mSmartEventListener:Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListener;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mSmartEventListener:Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->unregisterListener(Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListener;)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mContextInfoManager:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mContextInfoManager:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mContextCarStatusEventListener:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextCarStatusEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->unregisterListener(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextCarStatusEventListener;)V
    :try_end_0
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_1
    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;->printStackTrace()V

    .line 236
    .end local v0    # "e":Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 241
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->unregisterReceiver()V

    .line 242
    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->TAG:Ljava/lang/String;

    const-string v1, "unregisterReceiver."

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 339
    return-void
.end method
