.class public Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "PhoneNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;",
        ">;"
    }
.end annotation


# static fields
.field public static final BY_WHO_BLUETOOTH_PHONE:Ljava/lang/String; = "\u84dd\u7259\u7535\u8bdd"

.field public static final CALL_VIEW_PAGE_ID:Ljava/lang/String; = "XPPlugin_BlueToothCallApp://BlueToothCallView?from=speech"

.field private static final CHUNKSIZE:I = 0x40000

.field private static final COMMAND_SPLIT:Ljava/lang/String; = "#"

.field public static final INTENT_IN_COMING_PHONE:Ljava/lang/String; = "\u6765\u7535\u8bdd"

.field public static final SEARCH_KEY:Ljava/lang/String; = "\u8054\u7cfb\u4eba"

.field private static final SET_EXIT_CALL_TIMEOUT:J = 0x96L

.field public static final SKILL_NAME:Ljava/lang/String; = "\u79bb\u7ebf\u6765\u7535\u8bdd"

.field private static final STOP_DIALOG_OPT_FORCE:I = 0x0

.field public static final TASK_PHONE:Ljava/lang/String; = "\u6765\u7535\u8bdd"

.field public static final TRIGGER_ID:I = 0x2711

.field private static volatile curNotifyType:I = 0x0

.field private static volatile curTriggerID:I = -0x1

.field private static volatile ifOnThePhone:Z = false


# instance fields
.field private final SLOT_ENABLE_TTS:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private volatile deviceId:Ljava/lang/String;

.field private volatile duiWidget:Ljava/lang/String;

.field private mBinder:Landroid/os/IBinder;

.field private mRawQuery:Ljava/lang/String;

.field private mSoundArea:I

.field private phoneBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile syncResultCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    const-string v0, "PhoneNode"

    .line 48
    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->TAG:Ljava/lang/String;

    const-string v0, "enable_tts"

    .line 53
    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->SLOT_ENABLE_TTS:Ljava/lang/String;

    .line 59
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mBinder:Landroid/os/IBinder;

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->syncResultCode:I

    .line 76
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getSpeechState()Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->setCanExitFlag(Z)V

    return-void
.end method

.method private disableWakeup()V
    .locals 7

    const-string v0, "PhoneNode"

    const-string v1, "os5 disableWakeup"

    .line 620
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 621
    sget v1, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    if-eqz v1, :cond_0

    const-string v1, "have been disabled"

    .line 622
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 625
    sput v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    .line 627
    invoke-static {}, Lcom/xiaopeng/speech/config/CarSpeechConfigFacade;->isOverseasCarType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 628
    sget v0, Lcom/xiaopeng/speech/protocol/R$string;->phonenode_disable_speech_calling_ex:I

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 630
    :cond_1
    sget v0, Lcom/xiaopeng/speech/protocol/R$string;->during_call_disable:I

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    .line 632
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mBinder:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v6, 0x2

    const-string/jumbo v4, "\u84dd\u7259\u7535\u8bdd"

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private enableWakeup()V
    .locals 5

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableWakeup, curNotifyType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneNode"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "os4 or os5 enable"

    .line 601
    invoke-static {v1, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    sget v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    if-nez v0, :cond_0

    const-string v0, "no disable info"

    .line 603
    invoke-static {v1, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 605
    :cond_0
    sget v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    const-string/jumbo v2, "\u84dd\u7259\u7535\u8bdd"

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    const-string v0, "clear toast disable info."

    .line 606
    invoke-static {v1, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 607
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->enableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;I)V

    goto :goto_0

    .line 610
    :cond_1
    sget v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    if-ne v0, v4, :cond_2

    const-string v0, "clear info_flow disable info"

    .line 611
    invoke-static {v1, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 612
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v4, v2, v4}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->enableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;I)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 616
    sput v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    return-void
.end method

.method static synthetic lambda$syncContactList$0(Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;)Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;
    .locals 2

    .line 766
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;-><init>()V

    .line 767
    invoke-virtual {p0}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->setName(Ljava/lang/String;)V

    .line 768
    invoke-virtual {p0}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->setId(Ljava/lang/String;)V

    .line 769
    invoke-virtual {p0}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->getNumber()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->setNumber(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized callEnd()V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "PhoneNode"

    const-string v1, "callEnd"

    .line 504
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 505
    sput-boolean v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->ifOnThePhone:Z

    .line 506
    invoke-virtual {p0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->leaveTrigger()V

    .line 507
    sput v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    .line 508
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mBinder:Landroid/os/IBinder;

    const-string/jumbo v3, "\u84dd\u7259\u7535\u8bdd"

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->enableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;I)V

    .line 511
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mBinder:Landroid/os/IBinder;

    const-string/jumbo v3, "\u84dd\u7259\u7535\u8bdd"

    invoke-virtual {v1, v2, v5, v3, v5}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->enableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;I)V

    .line 515
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getSpeechState()Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->setCanExitFlag(Z)V

    .line 516
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->setPhoneCallStatusWithBinder(Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized callOffhook()V
    .locals 8

    monitor-enter p0

    const/4 v0, 0x1

    .line 469
    :try_start_0
    sput-boolean v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->ifOnThePhone:Z

    const-string v1, "callOffhook"

    .line 470
    invoke-static {v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->leaveTrigger()V

    .line 474
    sget v1, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    const-string v1, "PhoneNode"

    const-string v3, "update disable info type from %s to info_flow"

    new-array v4, v0, [Ljava/lang/Object;

    .line 475
    sget v5, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v3, v4}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->enableWakeup()V

    .line 477
    sput v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    :goto_0
    move v1, v0

    goto :goto_1

    .line 479
    :cond_0
    sget v1, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const-string v1, "PhoneNode"

    const-string v4, "update disable info type from %s to toast"

    new-array v5, v0, [Ljava/lang/Object;

    .line 480
    sget v6, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v1, v4, v5}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->enableWakeup()V

    .line 482
    sput v3, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 486
    invoke-static {}, Lcom/xiaopeng/speech/config/CarSpeechConfigFacade;->isOverseasCarType()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/xiaopeng/speech/protocol/R$string;->phonenode_disable_speech_calling_ex:I

    .line 487
    invoke-static {v1}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    sget v1, Lcom/xiaopeng/speech/protocol/R$string;->during_call_disable:I

    .line 488
    invoke-static {v1}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    move-object v6, v1

    .line 489
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mBinder:Landroid/os/IBinder;

    const/4 v4, 0x1

    const-string/jumbo v5, "\u84dd\u7259\u7535\u8bdd"

    sget v7, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    :cond_3
    const-string v1, "PhoneNode"

    const-string v3, "cur notify type is %s don\'t need to disable again"

    new-array v4, v0, [Ljava/lang/Object;

    .line 492
    sget v5, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v3, v4}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    :goto_3
    invoke-virtual {p0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->stopSpeechDialog()V

    .line 495
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getSpeechState()Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->setCanExitFlag(Z)V

    .line 496
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->setPhoneCallStatusWithBinder(Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cleanContacts()V
    .locals 4

    .line 208
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v0

    const-string v1, "sys.\u8054\u7cfb\u4eba"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/speech/proxy/AgentProxy;->updateVocab(Ljava/lang/String;[Ljava/lang/String;Z)V

    return-void
.end method

.method public declared-synchronized disableMainWakeup()V
    .locals 2

    monitor-enter p0

    .line 584
    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->disableWakeup()V

    const-string v0, "PhoneNode"

    const-string v1, "stopRecord-------"

    .line 585
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->setPhoneCallStatusWithBinder(Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public divideArray([BI)[[B
    .locals 9

    if-eqz p1, :cond_3

    .line 158
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 161
    :cond_0
    array-length v0, p1

    int-to-double v1, v0

    int-to-double v3, p2

    div-double/2addr v1, v3

    .line 162
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput p2, v2, v3

    const/4 v3, 0x0

    aput v1, v2, v3

    .line 163
    const-class v4, B

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v1, :cond_2

    add-int v6, v5, p2

    if-le v6, v0, :cond_1

    .line 167
    aget-object v7, v2, v4

    array-length v8, p1

    sub-int/2addr v8, v5

    invoke-static {p1, v5, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 169
    :cond_1
    aget-object v7, v2, v4

    invoke-static {p1, v5, v7, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_0

    :cond_2
    return-object v2

    :cond_3
    :goto_2
    const/4 p1, 0x0

    .line 159
    check-cast p1, [[B

    return-object p1
.end method

.method public declared-synchronized enableMainWakeup()V
    .locals 2

    monitor-enter p0

    .line 567
    :try_start_0
    sget-boolean v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->ifOnThePhone:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneNode"

    const-string v1, "on the phone, can not enable wakeup."

    .line 568
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    monitor-exit p0

    return-void

    .line 571
    :cond_0
    :try_start_1
    sget v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curTriggerID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const-string v0, "PhoneNode"

    const-string v1, "in trigger dialog, can not enable wakeup."

    .line 572
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 573
    monitor-exit p0

    return-void

    .line 575
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->enableWakeup()V

    const-string v0, "PhoneNode"

    const-string v1, "startRecord----------"

    .line 576
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->setPhoneCallStatusWithBinder(Landroid/os/IBinder;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 578
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public incomingCallRing(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I
    .locals 8

    .line 378
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "incomingCallRing, trigger data: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 381
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getSpeechState()Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->isMicrophoneMute()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v0, p3

    .line 386
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget v1, Lcom/xiaopeng/speech/protocol/R$string;->call_incoming:I

    invoke-static {v1}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 390
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget p2, Lcom/xiaopeng/speech/protocol/R$string;->call_incoming:I

    invoke-static {p2}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    const/4 p1, -0x1

    if-eqz v0, :cond_2

    .line 393
    sget p2, Lcom/xiaopeng/speech/protocol/R$string;->call_incoming_mic_disable:I

    invoke-static {p2}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    return p1

    .line 397
    :cond_2
    sget p2, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    const/4 v0, 0x2

    const-string v1, "PhoneNode"

    if-eq p2, v0, :cond_4

    .line 398
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear disable info, type: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget v2, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->enableWakeup()V

    .line 401
    invoke-static {}, Lcom/xiaopeng/speech/config/CarSpeechConfigFacade;->isOverseasCarType()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 402
    sget p2, Lcom/xiaopeng/speech/protocol/R$string;->phonenode_disable_speech_calling_ex:I

    invoke-static {p2}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 404
    :cond_3
    sget p2, Lcom/xiaopeng/speech/protocol/R$string;->during_call_disable:I

    invoke-static {p2}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    move-object v6, p2

    .line 406
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mBinder:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v7, 0x2

    const-string/jumbo v5, "\u84dd\u7259\u7535\u8bdd"

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    .line 409
    sput v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    goto :goto_2

    :cond_4
    const-string p2, "cur notify type is already toast"

    .line 411
    invoke-static {v1, p2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    :goto_2
    invoke-static {}, Lcom/xiaopeng/speech/config/CarSpeechConfigFacade;->isOverseasCarType()Z

    move-result p2

    const/4 v0, 0x1

    const/16 v2, 0x2711

    if-nez p2, :cond_5

    .line 415
    :try_start_1
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object p1

    new-array p2, v0, [I

    aput p3, p2, p3

    invoke-virtual {p1, v2, p2, p4}, Lcom/xiaopeng/speech/proxy/AgentProxy;->newTriggerDialog(I[ILjava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 420
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "trigger dialog result code: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, p2, v0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->setPhoneCallStatusWithBinder(Landroid/os/IBinder;I)V

    if-nez p1, :cond_5

    .line 423
    sput v2, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curTriggerID:I

    goto :goto_3

    :catch_1
    move-exception p1

    .line 417
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 418
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 426
    :cond_5
    :goto_3
    sput v2, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curTriggerID:I

    .line 427
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, p2, v0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->setPhoneCallStatusWithBinder(Landroid/os/IBinder;I)V

    return p1
.end method

.method public declared-synchronized incomingCallRing(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 435
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->incomingCallRing(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public incomingCallRing(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11

    const-string/jumbo v0, "\u6765\u7535\u53f7\u7801"

    const-string v1, "tts"

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incomingCallRing, enable tts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 295
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/speech/SpeechClient;->getSpeechState()Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->isMicrophoneMute()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v3, v2

    .line 300
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 301
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/xiaopeng/speech/protocol/R$string;->call_incoming:I

    invoke-static {v5}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    const-string v4, ""

    .line 303
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 304
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/xiaopeng/speech/protocol/R$string;->call_incoming:I

    invoke-static {v5}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    if-eqz v3, :cond_2

    .line 307
    sget v3, Lcom/xiaopeng/speech/protocol/R$string;->call_incoming_mic_disable:I

    invoke-static {v3}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 311
    :cond_2
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    .line 313
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    const/4 v3, 0x1

    .line 316
    :try_start_2
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "isLocalSkill"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "\u6765\u7535\u4eba"

    .line 317
    invoke-virtual {v5, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 318
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 319
    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "command"

    const-string v0, "command://phone.in.accept#command://phone.in.reject"

    .line 320
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "enable_tts"

    .line 321
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 322
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 324
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 327
    :goto_3
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/SpeechClient;->getSpeechState()Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->setCanExitFlag(Z)V

    .line 329
    sget p1, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    const/4 p2, 0x2

    const-string p3, "PhoneNode"

    if-eq p1, p2, :cond_4

    .line 330
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clear disable info, type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->enableWakeup()V

    .line 333
    invoke-static {}, Lcom/xiaopeng/speech/config/CarSpeechConfigFacade;->isOverseasCarType()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 334
    sget p1, Lcom/xiaopeng/speech/protocol/R$string;->phonenode_disable_speech_calling_ex:I

    invoke-static {p1}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 336
    :cond_3
    sget p1, Lcom/xiaopeng/speech/protocol/R$string;->during_call_disable:I

    invoke-static {p1}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_4
    move-object v9, p1

    .line 338
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v5

    iget-object v6, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mBinder:Landroid/os/IBinder;

    const/4 v7, 0x1

    const/4 v10, 0x2

    const-string/jumbo v8, "\u84dd\u7259\u7535\u8bdd"

    invoke-virtual/range {v5 .. v10}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    .line 341
    sput p2, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    goto :goto_5

    :cond_4
    const-string p1, "cur notify type is already toast"

    .line 343
    invoke-static {p3, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    :goto_5
    invoke-static {}, Lcom/xiaopeng/speech/config/CarSpeechConfigFacade;->isOverseasCarType()Z

    move-result p1

    const/16 p2, 0x2711

    if-nez p1, :cond_6

    .line 346
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_3
    const-string v0, "triggerID"

    const/16 v5, 0x2714

    .line 348
    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 349
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 350
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "soundArea"

    .line 351
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "repeatNum"

    const/4 v1, 0x3

    .line 353
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 354
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v0

    new-array v1, v3, [I

    aput v2, v1, v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, v1, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy;->newTriggerDialog(I[ILjava/lang/String;)I

    move-result p1

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trigger dialog result code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    iget-object p3, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, p3, v3}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->setPhoneCallStatusWithBinder(Landroid/os/IBinder;I)V

    if-nez p1, :cond_5

    .line 358
    sput p2, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curTriggerID:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_5
    return-void

    :catch_3
    move-exception p1

    .line 362
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 365
    :cond_6
    sput p2, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curTriggerID:I

    .line 366
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, p1, v3}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->setPhoneCallStatusWithBinder(Landroid/os/IBinder;I)V

    return-void
.end method

.method public isEnglish(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^[a-zA-Z]*"

    .line 154
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isFastWakeup()Z
    .locals 1

    .line 595
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->isDefaultEnableWakeup()Z

    move-result v0

    return v0
.end method

.method public leaveTrigger()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 552
    sget v1, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curTriggerID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "PhoneNode"

    const-string v2, "leave trigger, curTriggerID: %s"

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 554
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/speech/config/CarSpeechConfigFacade;->isOverseasCarType()Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v0

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/proxy/AgentProxy;->leaveTriggerWithID(I)V

    :cond_0
    const/4 v0, -0x1

    .line 557
    sput v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curTriggerID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 559
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 926
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 928
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 929
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onCallback()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCallbackSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 916
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 918
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 919
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onCallbackSupport()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onInAccept(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 873
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/SpeechClient;->getSpeechState()Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->setCanExitFlag(Z)V

    .line 874
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 876
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 877
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onInAccept()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onInReject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 884
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/SpeechClient;->getSpeechState()Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->setCanExitFlag(Z)V

    .line 885
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 887
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 888
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onInReject()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onListDisappear(Ljava/lang/String;)V
    .locals 3

    .line 1012
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "listType"

    .line 1013
    sget-object v2, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;->CONTACT_LIST:Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1014
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "extra"

    .line 1015
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1017
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "soundArea"

    .line 1018
    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mSoundArea:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "speechInfo"

    .line 1019
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1020
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object p1

    const-string v1, "list.disappear"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/xiaopeng/speech/proxy/AgentProxy;->sendUIEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1022
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onOut(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 p1, 0x0

    .line 811
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "phone"

    .line 812
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 813
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 814
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;

    move-result-object p1

    goto :goto_1

    .line 816
    :cond_0
    new-instance p2, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;

    invoke-direct {p2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p1, "name"

    .line 817
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->setName(Ljava/lang/String;)V

    const-string p1, "number"

    .line 818
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->setNumber(Ljava/lang/String;)V

    const-string p1, "id"

    .line 819
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->setId(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object p1, p2

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    goto :goto_0

    :catch_1
    move-exception p2

    .line 822
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    if-nez p1, :cond_1

    const-string p1, "phoneBean == null"

    .line 825
    invoke-static {p0, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 828
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    .line 830
    :goto_2
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 831
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public onOutCustomerservice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 938
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "number"

    .line 939
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 941
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, ""

    .line 943
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 945
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 946
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onOutCustomerservice(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method public onOutHelp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 955
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "number"

    .line 956
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 958
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, ""

    .line 960
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 962
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 963
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onOutHelp(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method public onPhoneContactClose()V
    .locals 3

    .line 1000
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1002
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1003
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onPhoneContactClose()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPhoneSelectOut(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 840
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "select_num"

    .line 841
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 842
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->phoneBeanList:Ljava/util/List;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_0

    goto :goto_1

    :cond_0
    if-lez p1, :cond_2

    .line 847
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->phoneBeanList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p1, p2, :cond_1

    goto :goto_0

    .line 853
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->phoneBeanList:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;

    goto :goto_2

    .line 848
    :cond_2
    :goto_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/speech/SpeechClient;->getTTSEngine()Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    move-result-object p2

    sget v0, Lcom/xiaopeng/speech/protocol/R$string;->out_of_range:I

    .line 849
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 848
    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->speak(Ljava/lang/String;)Ljava/lang/String;

    .line 850
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "select_num is  == "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    const-string p1, "phoneBeanList == null"

    .line 843
    invoke-static {p0, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 856
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_4

    const-string p1, "phoneBean == null"

    .line 859
    invoke-static {p0, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 862
    :cond_4
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    const/4 v0, 0x0

    .line 864
    :goto_3
    array-length v1, p2

    if-ge v0, v1, :cond_5

    .line 865
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getTTSEngine()Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/xiaopeng/speech/protocol/R$string;->calling:I

    .line 867
    invoke-static {v3}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 866
    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->speak(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method public onQueryBluetooth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 980
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 982
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 983
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onQueryBluetooth()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onQueryContacts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 640
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;

    move-result-object p2

    .line 641
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 643
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 644
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onQueryContacts(Ljava/lang/String;Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onQueryDetailPhoneInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string p1, "content"

    const-string v0, "extra"

    const-string v1, "subTitle"

    .line 652
    :try_start_0
    iput-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->duiWidget:Ljava/lang/String;

    .line 653
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 654
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "soundArea"

    const/4 v5, 0x0

    .line 655
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mSoundArea:I

    if-eqz v3, :cond_0

    const-string v4, "raw_query"

    .line 657
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mRawQuery:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v3, ""

    .line 659
    iput-object v3, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mRawQuery:Ljava/lang/String;

    .line 661
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 663
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 665
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 666
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_4

    move v2, v5

    .line 667
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 668
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 670
    new-instance v6, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;

    invoke-direct {v6}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;-><init>()V

    const-string v7, "title"

    .line 671
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->setName(Ljava/lang/String;)V

    .line 673
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 674
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->setNumber(Ljava/lang/String;)V

    .line 676
    :cond_1
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v7, "id"

    .line 678
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->setId(Ljava/lang/String;)V

    .line 680
    :cond_2
    iget-object v4, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mRawQuery:Ljava/lang/String;

    invoke-virtual {v6, v4}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->setRawQuery(Ljava/lang/String;)V

    .line 681
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const-string p1, "PhoneNode"

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueryDetailPhoneInfo data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/speech/common/util/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 690
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 692
    :goto_2
    array-length p2, p1

    if-ge v5, p2, :cond_5

    .line 693
    aget-object p2, p1, v5

    check-cast p2, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {p2, v3}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onQueryDetailPhoneInfo(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 697
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_5
    return-void
.end method

.method public onQuerySyncBluetooth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 253
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/SpeechClient;->getQueryInjector()Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;

    move-result-object p1

    const-string p2, "phone.get.bluetooth.status"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;->queryData(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/common/bean/Value;

    move-result-object p1

    .line 254
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/speech/SpeechClient;->getQueryInjector()Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;

    move-result-object p2

    const-string v1, "phone.get.contact.sync.status"

    invoke-virtual {p2, v1, v0}, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;->queryData(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/common/bean/Value;

    move-result-object p2

    .line 256
    new-instance v0, Lcom/xiaopeng/speech/speechwidget/ListWidget;

    invoke-direct {v0}, Lcom/xiaopeng/speech/speechwidget/ListWidget;-><init>()V

    .line 257
    sget v1, Lcom/xiaopeng/speech/protocol/R$string;->title_contacts:I

    invoke-static {v1}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    const-string v1, "phone"

    .line 258
    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setExtraType(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 259
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->deviceId:Ljava/lang/String;

    const-string v2, "deviceId"

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    if-eqz p1, :cond_0

    .line 261
    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/bean/Value;->getBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "phone_bluetooth"

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    :cond_0
    if-eqz p2, :cond_1

    .line 264
    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/bean/Value;->getInteger()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "phone_sync"

    invoke-virtual {v0, p2, p1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 266
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/SpeechClient;->getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/speech/actorapi/ResultActor;

    const-string v1, "native://phone.query.bluetooth.sync"

    invoke-direct {p2, v1}, Lcom/xiaopeng/speech/actorapi/ResultActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/actorapi/ResultActor;->setResult(Lcom/xiaopeng/speech/speechwidget/SpeechWidget;)Lcom/xiaopeng/speech/actorapi/ResultActor;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    return-void
.end method

.method public onQuerySyncBluetooth(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1

    .line 271
    new-instance p1, Lcom/xiaopeng/speech/speechwidget/ListWidget;

    invoke-direct {p1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;-><init>()V

    .line 272
    sget p2, Lcom/xiaopeng/speech/protocol/R$string;->title_contacts:I

    invoke-static {p2}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    const-string p2, "phone"

    .line 273
    invoke-virtual {p1, p2}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setExtraType(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 274
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->deviceId:Ljava/lang/String;

    const-string v0, "deviceId"

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 275
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string p3, "phone_bluetooth"

    invoke-virtual {p1, p3, p2}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 276
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "phone_sync"

    invoke-virtual {p1, p3, p2}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 277
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/speech/SpeechClient;->getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;

    move-result-object p2

    new-instance p3, Lcom/xiaopeng/speech/actorapi/ResultActor;

    const-string p4, "native://phone.query.bluetooth.sync"

    invoke-direct {p3, p4}, Lcom/xiaopeng/speech/actorapi/ResultActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Lcom/xiaopeng/speech/actorapi/ResultActor;->setResult(Lcom/xiaopeng/speech/speechwidget/SpeechWidget;)Lcom/xiaopeng/speech/actorapi/ResultActor;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    return-void
.end method

.method public onRedial(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 906
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 908
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 909
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onRedial()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRedialSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 896
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 898
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 899
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onRedialSupport()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSettingOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 970
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 972
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 973
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onSettingOpen()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSyncContactResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 990
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 991
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->syncResultCode:I

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 993
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 994
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->syncResultCode:I

    invoke-interface {v0, v1}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onSyncContactResult(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public outgoingCallRing()V
    .locals 9

    const-string v0, "outgoingCallRing"

    .line 443
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    .line 444
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v0

    const-string v1, "scriptQuit"

    const-string/jumbo v2, "{\"data\":{\"domain\":\"phone\"}}"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/proxy/AgentProxy;->sendUIEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    sget v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    const-string v1, "PhoneNode"

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clear disable info, type: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->enableWakeup()V

    .line 449
    invoke-static {}, Lcom/xiaopeng/speech/config/CarSpeechConfigFacade;->isOverseasCarType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    sget v0, Lcom/xiaopeng/speech/protocol/R$string;->phonenode_disable_speech_calling_ex:I

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 452
    :cond_0
    sget v0, Lcom/xiaopeng/speech/protocol/R$string;->during_call_disable:I

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v7, v0

    .line 454
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mBinder:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v8, 0x2

    const-string/jumbo v6, "\u84dd\u7259\u7535\u8bdd"

    invoke-virtual/range {v3 .. v8}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    .line 457
    sput v2, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    goto :goto_1

    :cond_1
    const-string v0, "cur notify type is already toast"

    .line 459
    invoke-static {v1, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    :goto_1
    invoke-virtual {p0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->stopSpeechDialog()V

    .line 462
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->setPhoneCallStatusWithBinder(Landroid/os/IBinder;I)V

    return-void
.end method

.method public postContactsResult(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;",
            ">;Z)V"
        }
    .end annotation

    .line 733
    iput-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->phoneBeanList:Ljava/util/List;

    .line 734
    new-instance v0, Lcom/xiaopeng/speech/speechwidget/ListWidget;

    invoke-direct {v0}, Lcom/xiaopeng/speech/speechwidget/ListWidget;-><init>()V

    .line 735
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    const-string p1, "phone"

    .line 736
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setExtraType(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 737
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    const-string v1, "phone_bluetooth"

    invoke-virtual {v0, v1, p3}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 738
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;

    .line 739
    new-instance v1, Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    invoke-direct {v1}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;-><init>()V

    .line 740
    invoke-virtual {p3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    .line 741
    invoke-virtual {p3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->setSubTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    .line 742
    invoke-virtual {p3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->toJson()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    .line 743
    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addContentWidget(Lcom/xiaopeng/speech/speechwidget/ContentWidget;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    goto :goto_0

    .line 745
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/SpeechClient;->getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/speech/actorapi/ResultActor;

    const-string p3, "native://phone.query.contacts"

    invoke-direct {p2, p3}, Lcom/xiaopeng/speech/actorapi/ResultActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/actorapi/ResultActor;->setResult(Lcom/xiaopeng/speech/speechwidget/SpeechWidget;)Lcom/xiaopeng/speech/actorapi/ResultActor;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    return-void
.end method

.method public postContactsResult(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;",
            ">;Z)V"
        }
    .end annotation

    const-string/jumbo v0, "\u8054\u7cfb\u4eba"

    .line 722
    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->postContactsResult(Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method public postDetailPhoneInfoResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 755
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->syncContactList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public removeDuplicate(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 795
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 796
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-le v1, v0, :cond_1

    .line 797
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 798
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 799
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public replySupport(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 1

    .line 711
    new-instance v0, Lcom/xiaopeng/speech/speechwidget/SupportWidget;

    invoke-direct {v0}, Lcom/xiaopeng/speech/speechwidget/SupportWidget;-><init>()V

    .line 712
    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/speechwidget/SupportWidget;->setSupport(Z)Lcom/xiaopeng/speech/speechwidget/SupportWidget;

    .line 713
    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string p4, "phone_bluetooth"

    invoke-virtual {v0, p4, p2}, Lcom/xiaopeng/speech/speechwidget/SupportWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 714
    invoke-virtual {v0, p3}, Lcom/xiaopeng/speech/speechwidget/SupportWidget;->setTTS(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SupportWidget;

    .line 715
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/speech/SpeechClient;->getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;

    move-result-object p2

    new-instance p3, Lcom/xiaopeng/speech/actorapi/SupportActor;

    invoke-direct {p3, p1}, Lcom/xiaopeng/speech/actorapi/SupportActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/xiaopeng/speech/actorapi/SupportActor;->setResult(Lcom/xiaopeng/speech/speechwidget/SupportWidget;)Lcom/xiaopeng/speech/actorapi/SupportActor;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    return-void
.end method

.method public setBTStatus(Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 236
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "setBTStatus:%b"

    invoke-static {p0, v1, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    new-instance v0, Lcom/xiaopeng/speech/speechwidget/ListWidget;

    invoke-direct {v0}, Lcom/xiaopeng/speech/speechwidget/ListWidget;-><init>()V

    .line 245
    sget v1, Lcom/xiaopeng/speech/protocol/R$string;->title_contacts:I

    invoke-static {v1}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    const-string v1, "phone"

    .line 246
    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setExtraType(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 247
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "phone_bluetooth"

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 248
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/SpeechClient;->getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;

    move-result-object p1

    new-instance v1, Lcom/xiaopeng/speech/actorapi/ResultActor;

    const-string v2, "native://phone.query.bluetooth"

    invoke-direct {v1, v2}, Lcom/xiaopeng/speech/actorapi/ResultActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/actorapi/ResultActor;->setResult(Lcom/xiaopeng/speech/speechwidget/SpeechWidget;)Lcom/xiaopeng/speech/actorapi/ResultActor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    return-void
.end method

.method public setPhoneCallStatus(I)V
    .locals 1

    .line 537
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getSpeechState()Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->setPhoneCallStatus(I)V

    return-void
.end method

.method public setPhoneCallStatusWithBinder(Landroid/os/IBinder;I)V
    .locals 1

    .line 545
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getSpeechState()Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->setPhoneCallStatusWithBinder(Landroid/os/IBinder;I)V

    return-void
.end method

.method public stopSpeechDialog()V
    .locals 3

    const-string v0, "PhoneNode"

    const-string v1, "stopSpeechDialog"

    .line 523
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    sget v1, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curTriggerID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, "in trigger dialog, can not stop dialog."

    .line 525
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 528
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->stopDialogReason(Ljava/lang/String;)V

    return-void
.end method

.method public stopSpeechDialog(I)V
    .locals 2

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopDialog option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    sget v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curTriggerID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string p1, "PhoneNode"

    const-string v0, "in trigger dialog, can not stop dialog."

    .line 218
    invoke-static {p1, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 222
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->stopDialog()V

    goto :goto_0

    .line 224
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object p1

    const-string v0, "scriptQuit"

    const-string/jumbo v1, "{\"data\":{\"domain\":\"phone\"}}"

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/proxy/AgentProxy;->sendUIEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public subscribeMultiTask(Ljava/lang/String;)V
    .locals 2

    .line 1030
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->subscribeMultiTask(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public syncCallLogs(Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 182
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 183
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 184
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 186
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;

    .line 187
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "id"

    .line 188
    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "name"

    .line 189
    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "time"

    .line 190
    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;->getTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "call_count"

    .line 191
    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;->getCallCount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[0-9a-zA-Z]"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;->setName(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string p1, "data"

    .line 195
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "deveiceId"

    .line 196
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 198
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 200
    :goto_1
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    const-string v1, "sys.\u6700\u8fd1\u901a\u8bdd"

    invoke-virtual {p1, v1, p2, v0}, Lcom/xiaopeng/speech/proxy/AgentProxy;->uploadContacts(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public syncContactList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;",
            ">;)V"
        }
    .end annotation

    .line 765
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/speech/protocol/node/phone/-$$Lambda$PhoneNode$wEiU5WQE1SKW3oRpypJmYIujecs;->INSTANCE:Lcom/xiaopeng/speech/protocol/node/phone/-$$Lambda$PhoneNode$wEiU5WQE1SKW3oRpypJmYIujecs;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 771
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 773
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;-><init>()V

    .line 774
    sget-object v1, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;->CONTACT_LIST:Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setListType(Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;)V

    .line 775
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setContents(Ljava/util/List;)V

    .line 776
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTotalSize(I)V

    .line 777
    iget p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mSoundArea:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 778
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->getExtra()Lcom/google/gson/JsonObject;

    move-result-object p1

    if-nez p1, :cond_0

    .line 780
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    :cond_0
    const-string v1, "soundArea"

    .line 782
    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mSoundArea:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "reason"

    const-string v2, "vui"

    .line 784
    invoke-virtual {p1, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setExtra(Lcom/google/gson/JsonObject;)V

    .line 787
    :cond_1
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PhoneNode"

    .line 788
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncContactList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 789
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v0

    const-string v1, "list.upload"

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 791
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public syncContacts(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact;",
            ">;)V"
        }
    .end annotation

    const-string v0, "PhoneNode"

    const-string v1, "syncContacts"

    .line 85
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 86
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    invoke-static {}, Lcom/xiaopeng/speech/config/CarSpeechConfigFacade;->isOverseasCarType()Z

    move-result v1

    .line 89
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact;

    if-nez v1, :cond_0

    .line 91
    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[0-9a-zA-Z]"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact;->setName(Ljava/lang/String;)V

    .line 93
    :cond_0
    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "sys.\u8054\u7cfb\u4eba"

    invoke-virtual {p1, v2, v0, v1}, Lcom/xiaopeng/speech/proxy/AgentProxy;->updateVocab(Ljava/lang/String;[Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public syncContacts(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncContacts, deviceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneNode"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iput-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->deviceId:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 107
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 108
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 109
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 111
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;

    .line 112
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "id"

    .line 113
    invoke-virtual {v3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    invoke-virtual {v3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->getName()Ljava/lang/String;

    move-result-object v5

    .line 115
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "[0-9]"

    const-string v7, ""

    .line 116
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 117
    invoke-virtual {p0, v5}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->isEnglish(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 119
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 122
    :cond_0
    invoke-virtual {v3, v5}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->setName(Ljava/lang/String;)V

    const-string v5, "name"

    .line 123
    invoke-virtual {v3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const-string p1, "data"

    .line 126
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "deveiceId"

    .line 127
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 129
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 131
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uncompress source data size "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-static {p1}, Lcom/xiaopeng/speech/protocol/utils/DeflaterUtils;->compressForGzip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 136
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "compress data size\uff1a "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 p2, 0x40000

    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->divideArray([BI)[[B

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    .line 143
    :cond_2
    array-length v0, p2

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_4

    aget-object v3, p2, v2

    const-string v4, "divide data"

    .line 144
    invoke-static {v1, v4}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_3

    .line 146
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v4

    new-instance v5, Lcom/xiaopeng/speech/common/bean/SliceData;

    array-length v6, p1

    invoke-direct {v5, v3, v6}, Lcom/xiaopeng/speech/common/bean/SliceData;-><init>([BI)V

    const-string v3, "sys.\u8054\u7cfb\u4eba"

    const/4 v6, 0x1

    invoke-virtual {v4, v3, v5, v6}, Lcom/xiaopeng/speech/proxy/AgentProxy;->uploadContact(Ljava/lang/String;Lcom/xiaopeng/speech/common/bean/SliceData;I)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method
