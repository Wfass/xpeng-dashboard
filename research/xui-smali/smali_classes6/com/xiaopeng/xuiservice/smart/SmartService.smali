.class public Lcom/xiaopeng/xuiservice/smart/SmartService;
.super Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;
.source "SmartService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/XUIServiceBase;
.implements Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartHalListener;
.implements Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartCommonHalListener;
.implements Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffectListener;


# static fields
.field public static final ALARM_LEVEL_MAX:I = 0x2

.field public static final ALARM_LEVEL_MID:I = 0x1

.field public static final ALARM_LEVEL_MIN:I = 0x0

.field private static final ALARM_VOLUME_MAX:I = 0x1e

.field private static final ALARM_VOLUME_MID:I = 0x14

.field private static final ALARM_VOLUME_MIN:I = 0xa

.field public static final DBG:Z = true

.field public static final TAG:Ljava/lang/String; = "SMART.SERVICE.SmartService"

.field private static final hasLluService:Z

.field private static mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

.field private final smartCommonEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
            "Lcom/xiaopeng/xuimanager/smart/ISmartCommonEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final smartEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
            "Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    const-string v0, "persist.sys.smartlluservice"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    sput-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartService;->hasLluService:Z

    .line 44
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->hasLluService:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 85
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;-><init>()V

    .line 49
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartService$1;

    const-string v1, "SMART.SERVICE.SmartService"

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartService$1;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->smartEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    .line 70
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartService$2;

    const-string v1, "SMART.SERVICE.SmartService"

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartService$2;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->smartCommonEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    .line 86
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mContext:Landroid/content/Context;

    .line 87
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->getInstance()Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    .line 88
    invoke-static {}, Lcom/xiaopeng/xuimanager/utils/WorkHandler;->getInstance()Lcom/xiaopeng/xuimanager/utils/WorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartService$h6ZgAeG8NBG7lXDiWsnrWFACRt8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartService$h6ZgAeG8NBG7lXDiWsnrWFACRt8;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/utils/WorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 93
    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;
    .locals 1

    .line 31
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/smart/SmartService;)Lcom/xiaopeng/xuiservice/smart/SmartHalService;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartService;

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    return-object v0
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xuiservice/smart/SmartService;)V
    .locals 2

    .line 89
    const-string v0, "SMART.SERVICE.SmartService"

    const-string v1, "init smart hal begin"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->init()V

    .line 91
    const-string v0, "SMART.SERVICE.SmartService"

    const-string v1, "init smart hal end"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 130
    return-void
.end method

.method public enableCarSpeedVolume(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 1022
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->enableCarSpeedVolume(Z)V

    .line 1023
    return-void
.end method

.method public getAlarmFromAzimuthOrIcm()Z
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->getAlarmFromAzimuthOrIcm()Z

    move-result v0

    return v0
.end method

.method public getAlarmVolume()I
    .locals 4

    .line 756
    const/4 v0, -0x1

    .line 757
    .local v0, "level":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 758
    .local v1, "audioManager":Landroid/media/AudioManager;
    if-eqz v1, :cond_2

    .line 760
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 761
    .local v2, "volume":I
    const/16 v3, 0x14

    if-le v2, v3, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :cond_0
    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 763
    .end local v2    # "volume":I
    :cond_2
    return v0
.end method

.method public getBootSoundEffect()I
    .locals 1

    .line 998
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->getBootSoundEffect()I

    move-result v0

    return v0
.end method

.method public getBossKeyForCustomer()I
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->getBossKeyForCustomer()I

    move-result v0

    return v0
.end method

.method public getFftLLUEnable()Z
    .locals 1

    .line 614
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    if-eqz v0, :cond_0

    .line 615
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->getRhythmEffectEnable()Z

    move-result v0

    return v0

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->getFftLLUEnable()Z

    move-result v0

    return v0
.end method

.method public getKeyBoardTouchPrompt()Z
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->getKeyBoardTouchPrompt()Z

    move-result v0

    return v0
.end method

.method public getLangLightEffectEnable()Z
    .locals 1

    .line 653
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    if-eqz v0, :cond_0

    .line 654
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->getLightEffectEnable()Z

    move-result v0

    return v0

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->getLangLightEffectEnable()Z

    move-result v0

    return v0
.end method

.method public getLangLightEffectNameList(I)Ljava/util/List;
    .locals 1
    .param p1, "effectType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 526
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    if-eqz v0, :cond_0

    .line 527
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->getLightEffect()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->getLangLightEffectNameList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLightEffect(I)I
    .locals 1
    .param p1, "effectName"    # I

    .line 888
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    if-eqz v0, :cond_0

    .line 889
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->getMcuEffect(I)I

    move-result v0

    return v0

    .line 892
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->getLightEffect(I)I

    move-result v0

    return v0
.end method

.method public getLluDownLoadEffectNameById(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 550
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    if-eqz v0, :cond_0

    .line 551
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->getUserEffectInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->getLluDownLoadEffectNameById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLluDownLoadEffectNameList()Ljava/lang/String;
    .locals 1

    .line 534
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    if-eqz v0, :cond_0

    .line 535
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->getUserEffectInfoList()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->getLluDownLoadEffectNameList()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLluLocalDanceNameList()Ljava/lang/String;
    .locals 1

    .line 542
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    if-eqz v0, :cond_0

    .line 543
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->getLocalDanceEffectInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->getLluLocalDanceNameList()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLluSleepMode()I
    .locals 1

    .line 498
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->hasLluService:Z

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->getLluSleepMode()I

    move-result v0

    return v0

    .line 502
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLluWakeWaitMode()I
    .locals 1

    .line 466
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->hasLluService:Z

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->getLluWakeWaitMode()I

    move-result v0

    return v0

    .line 470
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getRunnningLluEffectName()Ljava/lang/String;
    .locals 1

    .line 598
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    if-eqz v0, :cond_0

    .line 599
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->getRunningEffect()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->getRunnningLluEffectName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSayHiEffect()I
    .locals 1

    .line 971
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->getSayHiEffect()I

    move-result v0

    return v0
.end method

.method public getSayHiEnable()Z
    .locals 1

    .line 939
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    if-eqz v0, :cond_0

    .line 940
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->getSayhiEffectEnable()Z

    move-result v0

    return v0

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->getSayHiEnable()Z

    move-result v0

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 134
    const-string v0, "SmartService"

    return-object v0
.end method

.method public getSpeechStatus()Z
    .locals 1

    .line 1062
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->getSpeechStatus()Z

    move-result v0

    return v0
.end method

.method public getTouchRotationDirection()I
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->getTouchRotationDirection()I

    move-result v0

    return v0
.end method

.method public getVolumeDownInReverseMode()Z
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->getVolumeDownInReverseMode()Z

    move-result v0

    return v0
.end method

.method public getVolumeDownWithDoorOpen()Z
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->getVolumeDownWithDoorOpen()Z

    move-result v0

    return v0
.end method

.method public getXKeyForCustomer()I
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->getXKeyForCustomer()I

    move-result v0

    return v0
.end method

.method public init()V
    .locals 0

    .line 116
    return-void
.end method

.method public isLightDanceAvailable()I
    .locals 1

    .line 693
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    if-eqz v0, :cond_0

    .line 694
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->getDanceEffectRunnable()I

    move-result v0

    return v0

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->isLightDanceAvailable()I

    move-result v0

    return v0
.end method

.method public isLightDancing()Z
    .locals 1

    .line 739
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    if-eqz v0, :cond_0

    .line 740
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->isDanceEffectRunning()Z

    move-result v0

    return v0

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->isLightDancing()Z

    move-result v0

    return v0
.end method

.method public onError(II)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "operation"    # I

    .line 284
    return-void
.end method

.method public onErrorEffect(Ljava/lang/String;I)V
    .locals 6
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->smartEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;

    .line 263
    .local v1, "l":Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;->onLightEffectShowError(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    goto :goto_1

    .line 264
    :catch_0
    move-exception v2

    .line 265
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "SMART.SERVICE.SmartService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLightEffectShowError calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 268
    :cond_0
    return-void
.end method

.method public onFinishEffect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "effectType"    # Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->smartEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;

    .line 241
    .local v1, "l":Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;->onLightEffectShowFinishEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    goto :goto_1

    .line 242
    :catch_0
    move-exception v2

    .line 243
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "SMART.SERVICE.SmartService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLightEffectShowFinishEvent calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 246
    :cond_0
    return-void
.end method

.method public onLightEffectFinishEvent(II)V
    .locals 6
    .param p1, "effectName"    # I
    .param p2, "effectMode"    # I

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->smartEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;

    .line 186
    .local v1, "l":Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;->onLightEffectFinishEvent(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    goto :goto_1

    .line 187
    :catch_0
    move-exception v2

    .line 188
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "SMART.SERVICE.SmartService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLightEffectFinishEvent calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 191
    :cond_0
    return-void
.end method

.method public onLightEffectShowError(Ljava/lang/String;I)V
    .locals 6
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->smartEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;

    .line 274
    .local v1, "l":Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;->onLightEffectShowError(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    goto :goto_1

    .line 275
    :catch_0
    move-exception v2

    .line 276
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "SMART.SERVICE.SmartService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLightEffectShowError calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 279
    :cond_0
    return-void
.end method

.method public onLightEffectShowFinishEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "effectType"    # Ljava/lang/String;

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->smartEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;

    .line 252
    .local v1, "l":Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;->onLightEffectShowFinishEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    goto :goto_1

    .line 253
    :catch_0
    move-exception v2

    .line 254
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "SMART.SERVICE.SmartService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLightEffectShowFinishEvent calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 257
    :cond_0
    return-void
.end method

.method public onLightEffectShowStartEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "effectType"    # Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->smartEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;

    .line 208
    .local v1, "l":Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;->onLightEffectShowStartEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    goto :goto_1

    .line 209
    :catch_0
    move-exception v2

    .line 210
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "SMART.SERVICE.SmartService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLightEffectShowStartEvent calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 213
    :cond_0
    return-void
.end method

.method public onLightEffectShowStopEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "effectType"    # Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->smartEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;

    .line 230
    .local v1, "l":Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;->onLightEffectShowStopEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    goto :goto_1

    .line 231
    :catch_0
    move-exception v2

    .line 232
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "SMART.SERVICE.SmartService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLightEffectShowStopEvent calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 235
    :cond_0
    return-void
.end method

.method public onSmartCommonEvent(III)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "value1"    # I
    .param p3, "value2"    # I

    .line 288
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->smartCommonEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/smart/ISmartCommonEventListener;

    .line 290
    .local v1, "l":Lcom/xiaopeng/xuimanager/smart/ISmartCommonEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/xiaopeng/xuimanager/smart/ISmartCommonEventListener;->onSmartCommonEvent(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    goto :goto_1

    .line 291
    :catch_0
    move-exception v2

    .line 292
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "SMART.SERVICE.SmartService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSmartCommonEvent calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/smart/ISmartCommonEventListener;
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 295
    :cond_0
    return-void
.end method

.method public onSmartSpeechTtsEvent(ILjava/lang/String;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "ttsId"    # Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->smartCommonEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/smart/ISmartCommonEventListener;

    .line 301
    .local v1, "l":Lcom/xiaopeng/xuimanager/smart/ISmartCommonEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/smart/ISmartCommonEventListener;->onSmartSpeechTtsEvent(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    goto :goto_1

    .line 302
    :catch_0
    move-exception v2

    .line 303
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "SMART.SERVICE.SmartService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSmartSpeechTtsEvent calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/smart/ISmartCommonEventListener;
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 306
    :cond_0
    return-void
.end method

.method public onStartEffect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "effectType"    # Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->smartEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;

    .line 197
    .local v1, "l":Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;->onLightEffectShowStartEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    goto :goto_1

    .line 198
    :catch_0
    move-exception v2

    .line 199
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "SMART.SERVICE.SmartService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLightEffectShowStartEvent calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 202
    :cond_0
    return-void
.end method

.method public onStopEffect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "effectType"    # Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->smartEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;

    .line 219
    .local v1, "l":Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;->onLightEffectShowStopEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    goto :goto_1

    .line 220
    :catch_0
    move-exception v2

    .line 221
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "SMART.SERVICE.SmartService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLightEffectShowStopEvent calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 224
    :cond_0
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    const-string v0, "SmartService"

    .line 98
    .local v0, "module":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "info":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderEnter(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 v2, 0x1

    .line 103
    .local v2, "ret":Z
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 108
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderLeave(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    nop

    .line 111
    return v2

    .line 108
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 104
    :catch_0
    move-exception v3

    .line 105
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "SMART.SERVICE.SmartService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTransact e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderLeave(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method public onUpgradeEffect(II)V
    .locals 6
    .param p1, "effectName"    # I
    .param p2, "effectMode"    # I

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->smartEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;

    .line 175
    .local v1, "l":Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;->onLightEffectFinishEvent(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    goto :goto_1

    .line 176
    :catch_0
    move-exception v2

    .line 177
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "SMART.SERVICE.SmartService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLightEffectFinishEvent calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 180
    :cond_0
    return-void
.end method

.method public registerCommonListener(Lcom/xiaopeng/xuimanager/smart/ISmartCommonEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/smart/ISmartCommonEventListener;

    .line 157
    const-string v0, "SMART.SERVICE.SmartService"

    const-string v1, "registerCommonListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->smartCommonEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->registerListener(Landroid/os/IInterface;)Z

    .line 161
    return-void
.end method

.method public registerListener(Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;

    .line 140
    const-string v0, "SMART.SERVICE.SmartService"

    const-string v1, "registerListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->smartEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->registerListener(Landroid/os/IInterface;)Z

    .line 144
    return-void
.end method

.method public release()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->smartEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->clear()V

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->smartCommonEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->clear()V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->release()V

    .line 125
    :cond_0
    return-void
.end method

.method public setAlarmFromAzimuthOrIcm(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 371
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->setAlarmFromAzimuthOrIcm(Z)V

    .line 372
    return-void
.end method

.method public setAlarmVolume(I)V
    .locals 4
    .param p1, "type"    # I

    .line 776
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 777
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 779
    packed-switch p1, :pswitch_data_0

    .line 790
    const/16 v1, 0x14

    goto :goto_0

    .line 781
    :pswitch_0
    const/16 v1, 0x1e

    .line 782
    .local v1, "value":I
    goto :goto_0

    .line 784
    .end local v1    # "value":I
    :pswitch_1
    const/16 v1, 0x14

    .line 785
    .restart local v1    # "value":I
    goto :goto_0

    .line 787
    .end local v1    # "value":I
    :pswitch_2
    const/16 v1, 0xa

    .line 788
    .restart local v1    # "value":I
    nop

    .line 790
    :goto_0
    nop

    .line 793
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 796
    .end local v1    # "value":I
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->setAlarmVolume(I)V

    .line 797
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBootSoundEffect(I)V
    .locals 1
    .param p1, "type"    # I

    .line 1012
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->setBootSoundEffect(I)V

    .line 1013
    return-void
.end method

.method public setBossKeyForCustomer(I)V
    .locals 1
    .param p1, "keyFunc"    # I

    .line 429
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->setBossKeyForCustomer(I)V

    .line 430
    return-void
.end method

.method public setFftLLUEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 606
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    if-eqz v0, :cond_0

    .line 607
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->setRhythmEffectEnable(Z)V

    goto :goto_0

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->setFftLLUEnable(Z)V

    .line 611
    :goto_0
    return-void
.end method

.method public setKeyBoardTouchPrompt(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 393
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->setKeyBoardTouchPrompt(Z)V

    .line 394
    return-void
.end method

.method public setLangLightEffectEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 668
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    if-eqz v0, :cond_0

    .line 669
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->setLightEffectEnable(Z)V

    goto :goto_0

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->setLangLightEffectEnable(Z)V

    .line 673
    :goto_0
    return-void
.end method

.method public setLangLightEffectMode(Ljava/lang/String;I)V
    .locals 1
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "loop"    # I

    .line 565
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    if-eqz v0, :cond_0

    .line 566
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->playEffect(Ljava/lang/String;I)I

    goto :goto_0

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->startLangLightEffectShow(Ljava/lang/String;I)I

    .line 570
    :goto_0
    return-void
.end method

.method public setLangLightEffectWithMode(Ljava/lang/String;II)V
    .locals 5
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "loop"    # I

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%02d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, "name":Ljava/lang/String;
    sget-object v1, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    if-eqz v1, :cond_0

    .line 584
    sget-object v1, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    invoke-virtual {v1, v0, p3}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->playEffect(Ljava/lang/String;I)I

    goto :goto_0

    .line 586
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v1, v0, p3}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->startLangLightEffectShow(Ljava/lang/String;I)I

    .line 588
    :goto_0
    return-void
.end method

.method public setLangLightMusicEffect(Ljava/lang/String;)V
    .locals 1
    .param p1, "effectName"    # Ljava/lang/String;

    .line 851
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    if-eqz v0, :cond_0

    .line 852
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->setRhythmEffect(Ljava/lang/String;)V

    goto :goto_0

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->setLangLightMusicEffect(Ljava/lang/String;)V

    .line 856
    :goto_0
    return-void
.end method

.method public setLightEffect(II)V
    .locals 1
    .param p1, "effectName"    # I
    .param p2, "effectMode"    # I

    .line 912
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    if-eqz v0, :cond_0

    .line 913
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->setMcuEffect(II)V

    goto :goto_0

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->setLightEffect(II)V

    .line 917
    :goto_0
    return-void
.end method

.method public setLightEffectAndMusic(III)V
    .locals 2
    .param p1, "messageID"    # I
    .param p2, "effectName"    # I
    .param p3, "effectMusic"    # I

    .line 928
    const-string v0, "SMART.SERVICE.SmartService"

    const-string v1, "setLightEffectAndMusic not support"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    return-void
.end method

.method public setLluSleepMode(I)V
    .locals 1
    .param p1, "type"    # I

    .line 515
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->hasLluService:Z

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->setLluSleepMode(I)V

    .line 518
    :cond_0
    return-void
.end method

.method public setLluWakeWaitMode(I)V
    .locals 1
    .param p1, "type"    # I

    .line 483
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->hasLluService:Z

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->setLluWakeWaitMode(I)V

    .line 486
    :cond_0
    return-void
.end method

.method public setMusicDelayTimeForDebug(I)V
    .locals 2
    .param p1, "delayTime"    # I

    .line 840
    const-string v0, "SMART.SERVICE.SmartService"

    const-string v1, "setMusicDelayTimeForDebug not support"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    return-void
.end method

.method public setMusicSpectrumToLangLight(I)V
    .locals 2
    .param p1, "tickNum"    # I

    .line 683
    const-string v0, "SMART.SERVICE.SmartService"

    const-string v1, "setMusicSpectrumToLangLight not support"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    return-void
.end method

.method public setMusicStartTickNumForDebug(I)V
    .locals 2
    .param p1, "tickNum"    # I

    .line 818
    const-string v0, "SMART.SERVICE.SmartService"

    const-string v1, "setMusicStartTickNumForDebug not support"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    return-void
.end method

.method public setMusicStopTickNumForDebug(I)V
    .locals 2
    .param p1, "tickNum"    # I

    .line 829
    const-string v0, "SMART.SERVICE.SmartService"

    const-string v1, "setMusicStopTickNumForDebug not support"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    return-void
.end method

.method public setMusicTableForDebug(I)V
    .locals 2
    .param p1, "musicTable"    # I

    .line 807
    const-string v0, "SMART.SERVICE.SmartService"

    const-string v1, "setMusicTableForDebug not support"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    return-void
.end method

.method public setPause(Z)V
    .locals 2
    .param p1, "pause"    # Z

    .line 629
    const-string v0, "SMART.SERVICE.SmartService"

    const-string v1, "setPause not support"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    return-void
.end method

.method public setSayHiEffect(I)V
    .locals 1
    .param p1, "type"    # I

    .line 984
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->setSayHiEffect(I)V

    .line 985
    return-void
.end method

.method public setSayHiEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 954
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    if-eqz v0, :cond_0

    .line 955
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->setSayhiEffectEnable(Z)V

    goto :goto_0

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->setSayHiEnable(Z)V

    .line 959
    :goto_0
    return-void
.end method

.method public setSpeedVolumeMode(I)V
    .locals 1
    .param p1, "type"    # I

    .line 1032
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->setSpeedVolumeMode(I)V

    .line 1033
    return-void
.end method

.method public setTouchRotationDirection(I)V
    .locals 1
    .param p1, "rotationDirection"    # I

    .line 453
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->setTouchRotationDirection(I)V

    .line 454
    return-void
.end method

.method public setVolumeDownInReverseMode(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 349
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->setVolumeDownInReverseMode(Z)V

    .line 350
    return-void
.end method

.method public setVolumeDownWithDoorOpen(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 327
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->setVolumeDownWithDoorOpen(Z)V

    .line 328
    return-void
.end method

.method public setXKeyForCustomer(I)V
    .locals 1
    .param p1, "keyFunc"    # I

    .line 411
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->setXKeyForCustomer(I)V

    .line 412
    return-void
.end method

.method public speakByImportant(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 1072
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->speakByImportant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public speakByInstant(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isShutUp"    # Z

    .line 1082
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->speakByInstant(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public speakByNormal(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 1067
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->speakByNormal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public speakByUrgent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 1077
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->speakByUrgent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startAiLluMode(I)V
    .locals 1
    .param p1, "type"    # I

    .line 1041
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    if-eqz v0, :cond_0

    .line 1042
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->playSmartEffect(I)V

    goto :goto_0

    .line 1044
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->startAiLluMode(I)V

    .line 1046
    :goto_0
    return-void
.end method

.method public startLightDancing(Ljava/lang/String;I)I
    .locals 1
    .param p1, "file_name"    # Ljava/lang/String;
    .param p2, "loop"    # I

    .line 708
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    if-eqz v0, :cond_0

    .line 709
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->playEffect(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->startLangLightEffectShow(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public startMicRecordMode(I)I
    .locals 1
    .param p1, "status"    # I

    .line 1097
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->startMicRecordMode(I)I

    move-result v0

    return v0
.end method

.method public stopAiLluMode()V
    .locals 1

    .line 1053
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    if-eqz v0, :cond_0

    .line 1054
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->stopSmartEffect()V

    goto :goto_0

    .line 1056
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->stopAiLluMode()V

    .line 1058
    :goto_0
    return-void
.end method

.method public stopAllSpeech()V
    .locals 1

    .line 1092
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->stopAllSpeech()V

    .line 1093
    return-void
.end method

.method public stopLightDancing()I
    .locals 1

    .line 723
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    if-eqz v0, :cond_0

    .line 724
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->stopEffect()V

    .line 725
    const/4 v0, 0x0

    return v0

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->stopLightDancing()I

    move-result v0

    return v0
.end method

.method public stopLightEffectShow()V
    .locals 1

    .line 864
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    if-eqz v0, :cond_0

    .line 865
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->stopEffect()V

    goto :goto_0

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->stopLightEffectShow()V

    .line 869
    :goto_0
    return-void
.end method

.method public stopMicRecordMode()I
    .locals 1

    .line 1102
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->stopMicRecordMode()I

    move-result v0

    return v0
.end method

.method public stopSpeech(Ljava/lang/String;)V
    .locals 1
    .param p1, "ttsId"    # Ljava/lang/String;

    .line 1087
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->stopSpeech(Ljava/lang/String;)V

    .line 1088
    return-void
.end method

.method public unregisterCommonListener(Lcom/xiaopeng/xuimanager/smart/ISmartCommonEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/smart/ISmartCommonEventListener;

    .line 166
    const-string v0, "SMART.SERVICE.SmartService"

    const-string v1, "unregisterCommonListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->smartCommonEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->unregisterListener(Landroid/os/IInterface;)Z

    .line 169
    return-void
.end method

.method public unregisterListener(Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;

    .line 149
    const-string v0, "SMART.SERVICE.SmartService"

    const-string v1, "unregisterListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->smartEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->unregisterListener(Landroid/os/IInterface;)Z

    .line 152
    return-void
.end method

.method public updateEffectFiles(I)V
    .locals 1
    .param p1, "effectType"    # I

    .line 638
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    if-eqz v0, :cond_0

    .line 639
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mLluProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->loadLightEffect()V

    goto :goto_0

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService;->mSmartHal:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->updateEffectFiles(I)V

    .line 643
    :goto_0
    return-void
.end method
