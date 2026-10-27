.class public Lcom/xiaopeng/xuiservice/smart/SmartAvasService;
.super Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
.source "SmartAvasService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/SmartAvasService$InstanceHolder;
    }
.end annotation


# static fields
.field private static final AVAS_FILE_PATH:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/"

.field private static final AVAS_SOUND_EFFECT_A:I = 0x1

.field private static final AVAS_SOUND_EFFECT_B:I = 0x2

.field private static final AVAS_SOUND_EFFECT_C:I = 0x3

.field private static final SAYHI_EFFECT_NUM:I = 0x3

.field private static final STR_GEAR_AVH_ENABLE:Ljava/lang/String; = "avasGearAvhSayhiEnable"

.field private static final STR_LLU_ENABLE:Ljava/lang/String; = "LangLightEffectEnable"

.field private static final STR_SAYHI_ENABLE:Ljava/lang/String; = "isSayHiEnable"

.field private static final XKEY_SHOW_OFF:I = 0x2

.field private static final XP_XKEY_INTENT:Ljava/lang/String; = "com.xiaopeng.intent.action.xkey"

.field private static avasSayhiEnable:Z

.field private static avasSayhiEnableDefault:Z

.field private static ig_status_on:Z

.field private static lluEnable:Z

.field private static sayhiEnable:Z


# instance fields
.field private SayHiName:Ljava/lang/String;

.field private curAvhStatus:I

.field private curGear:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCarAvasManager:Landroid/car/hardware/avas/CarAvasManager;

.field private mCarEspEventCallback:Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;

.field private mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

.field private mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

.field private mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

.field private mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSoundPool:Landroid/media/SoundPool;

.field private soundData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->ig_status_on:Z

    .line 43
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "LangLightEffectEnable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->lluEnable:Z

    .line 44
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "isSayHiEnable"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->sayhiEnable:Z

    .line 45
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->avasSayhiDefault()Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->avasSayhiEnableDefault:Z

    .line 46
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->getSayHiAvasEnable()Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->avasSayhiEnable:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->curGear:I

    .line 39
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->curAvhStatus:I

    .line 59
    const-string v0, "CDU_avas_sayhi_mode_"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->SayHiName:Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService$1;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAvasService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getAvasSupportType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 78
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->mAudioManager:Landroid/media/AudioManager;

    .line 80
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/smart/SmartAvasService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/smart/SmartAvasService$1;

    .line 30
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 30
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->avasSayhiEnableDefault:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 30
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->avasSayhiEnable:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 30
    sput-boolean p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->avasSayhiEnable:Z

    return p0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 30
    sput-boolean p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->ig_status_on:Z

    return p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/smart/SmartAvasService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAvasService;
    .param p1, "x1"    # I

    .line 30
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->handleCarGearLevelChanged(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/smart/SmartAvasService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAvasService;
    .param p1, "x1"    # I

    .line 30
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->handleCarAvhStatusChanged(I)V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 30
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->lluEnable:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 30
    sput-boolean p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->lluEnable:Z

    return p0
.end method

.method static synthetic access$600()Z
    .locals 1

    .line 30
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->sayhiEnable:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 30
    sput-boolean p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->sayhiEnable:Z

    return p0
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 30
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->getSayHiAvasEnable()Z

    move-result v0

    return v0
.end method

.method private checkAvasAutoPlayStatus()Z
    .locals 3

    .line 318
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAvasAutoPlayStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->lluEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->sayhiEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->ig_status_on:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v0, "LLU"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->lluEnable:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->sayhiEnable:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->ig_status_on:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->avasSayhiEnable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/smart/SmartAvasService;
    .locals 1

    .line 221
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService$InstanceHolder;->access$800()Lcom/xiaopeng/xuiservice/smart/SmartAvasService;

    move-result-object v0

    return-object v0
.end method

.method private static getSayHiAvasEnable()Z
    .locals 4

    .line 225
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->avasSayhiEnableDefault:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 226
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "avasGearAvhSayhiEnable"

    sget-boolean v3, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->avasSayhiEnableDefault:Z

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1
.end method

.method private handleCarAvhStatusChanged(I)V
    .locals 3
    .param p1, "avhStatus"    # I

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCarAvhStatusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->curAvhStatus:I

    if-eq v0, p1, :cond_2

    .line 278
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->curGear:I

    if-ne v1, v0, :cond_0

    .line 279
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->checkAvasAutoPlayStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->playAvasSayHiSound()V

    goto :goto_0

    .line 281
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 283
    :cond_1
    nop

    .line 286
    :goto_0
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->curAvhStatus:I

    .line 288
    :cond_2
    return-void
.end method

.method private handleCarGearLevelChanged(I)V
    .locals 1
    .param p1, "level"    # I

    .line 291
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->curGear:I

    if-eq v0, p1, :cond_0

    .line 292
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->curGear:I

    .line 293
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->checkAvasAutoPlayStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->playAvasSayHiSound()V

    .line 296
    :cond_0
    return-void
.end method

.method private registerContentReceiver()V
    .locals 5

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->TAG:Ljava/lang/String;

    const-string v1, "##registerContentReceiver"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "LangLightEffectEnable"

    .line 179
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/SmartAvasService$5;

    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService$5;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAvasService;Landroid/os/Handler;)V

    .line 178
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isSayHiEnable"

    .line 189
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/SmartAvasService$6;

    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService$6;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAvasService;Landroid/os/Handler;)V

    .line 188
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "avasGearAvhSayhiEnable"

    .line 199
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/SmartAvasService$7;

    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService$7;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAvasService;Landroid/os/Handler;)V

    .line 198
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 207
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->TAG:Ljava/lang/String;

    const-string v1, "registerReceiver"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 262
    .local v0, "mIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.xiaopeng.intent.action.xkey"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 264
    return-void
.end method


# virtual methods
.method public bridge synthetic debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 84
    const-string v0, "SmartAvasService"

    return-object v0
.end method

.method public getSayHiEffect()I
    .locals 3

    .line 238
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SayHiAvasType"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected initCarListener()V
    .locals 1

    .line 99
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService$2;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAvasService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 125
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService$3;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAvasService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 138
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService$4;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAvasService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->mCarEspEventCallback:Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->mCarEspEventCallback:Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->addEspManagerListener(Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;)V

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->addVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->addMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 156
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->registerReceiver()V

    .line 157
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->registerContentReceiver()V

    .line 158
    return-void
.end method

.method protected onCarManagerInited()V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->TAG:Ljava/lang/String;

    const-string v1, "onCarManagerInited"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string/jumbo v0, "xp_mcu"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    .line 164
    const-string/jumbo v0, "xp_avas"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/avas/CarAvasManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->mCarAvasManager:Landroid/car/hardware/avas/CarAvasManager;

    .line 165
    const-string/jumbo v0, "xp_vcu"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/vcu/CarVcuManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/mcu/CarMcuManager;->getIgStatusFromMcu()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->ig_status_on:Z

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getStallState()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->curGear:I

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "curGear="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->curGear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    goto :goto_1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->TAG:Ljava/lang/String;

    const-string v2, "initCarListener error"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method protected onInit()V
    .locals 0

    .line 212
    return-void
.end method

.method protected onRelease()V
    .locals 0

    .line 217
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->unregisterReceiver()V

    .line 218
    return-void
.end method

.method public playAvasSayHiSound()V
    .locals 5

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playAvasSayHiSound "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->getSayHiEffect()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getAvasSupportType()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->mCarAvasManager:Landroid/car/hardware/avas/CarAvasManager;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->getSayHiEffect()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v2}, Landroid/car/hardware/avas/CarAvasManager;->setAvasExternalSound(I)V

    .line 303
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->mCarAvasManager:Landroid/car/hardware/avas/CarAvasManager;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->mCarAvasManager:Landroid/car/hardware/avas/CarAvasManager;

    invoke-virtual {v0, v1}, Landroid/car/hardware/avas/CarAvasManager;->setExternalSoundModeCmd(I)V

    goto :goto_0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->SayHiName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->getSayHiEffect()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playSound /system/media/audio/xiaopeng/cdu/wav/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".wav"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->mAudioManager:Landroid/media/AudioManager;

    const/16 v2, 0x10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/system/media/audio/xiaopeng/cdu/wav/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".wav"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->playAvasSound(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    :goto_0
    goto :goto_1

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->handleException(Ljava/lang/Exception;)V

    .line 315
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setSayHiEffect(I)V
    .locals 2
    .param p1, "type"    # I

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->mCarAvasManager:Landroid/car/hardware/avas/CarAvasManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/avas/CarAvasManager;->setAvasFriendlySayHiSound(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->handleException(Ljava/lang/Exception;)V

    .line 256
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SayHiAvasType"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 257
    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->TAG:Ljava/lang/String;

    const-string v1, "unregisterReceiver."

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 269
    return-void
.end method
