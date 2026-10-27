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

.field private static volatile curNotifyType:I

.field private static volatile curTriggerID:I

.field private static volatile ifOnThePhone:Z


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
    .locals 1

    .line 67
    const/4 v0, -0x1

    sput v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curTriggerID:I

    .line 68
    const/4 v0, 0x0

    sput v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    .line 69
    sput-boolean v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->ifOnThePhone:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    .line 48
    const-string v0, "PhoneNode"

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->TAG:Ljava/lang/String;

    .line 53
    const-string v0, "enable_tts"

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->SLOT_ENABLE_TTS:Ljava/lang/String;

    .line 59
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mBinder:Landroid/os/IBinder;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->syncResultCode:I

    .line 76
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getSpeechState()Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->setCanExitFlag(Z)V

    .line 77
    return-void
.end method

.method private disableWakeup()V
    .locals 7

    .line 620
    const-string v0, "PhoneNode"

    const-string v1, "os5 disableWakeup"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 621
    sget v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    if-eqz v0, :cond_0

    .line 622
    const-string v0, "PhoneNode"

    const-string v1, "have been disabled"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 623
    return-void

    .line 625
    :cond_0
    const/4 v0, 0x2

    sput v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    .line 627
    invoke-static {}, Lcom/xiaopeng/speech/config/CarSpeechConfigFacade;->isOverseasCarType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 628
    sget v0, Lcom/xiaopeng/speech/protocol/R$string;->phonenode_disable_speech_calling_ex:I

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v5, "msg":Ljava/lang/String;
    :goto_0
    move-object v5, v0

    goto :goto_1

    .end local v5    # "msg":Ljava/lang/String;
    :cond_1
    sget v0, Lcom/xiaopeng/speech/protocol/R$string;->during_call_disable:I

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 632
    .restart local v5    # "msg":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mBinder:Landroid/os/IBinder;

    const/4 v3, 0x1

    const-string v4, "\u84dd\u7259\u7535\u8bdd"

    const/4 v6, 0x2

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    .line 636
    return-void
.end method

.method private enableWakeup()V
    .locals 5

    .line 599
    const-string v0, "PhoneNode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableWakeup, curNotifyType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 601
    const-string v0, "PhoneNode"

    const-string v1, "os4 or os5 enable"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    sget v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    if-nez v0, :cond_0

    .line 603
    const-string v0, "PhoneNode"

    const-string v1, "no disable info"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    return-void

    .line 605
    :cond_0
    sget v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 606
    const-string v0, "PhoneNode"

    const-string v3, "clear toast disable info."

    invoke-static {v0, v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 607
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mBinder:Landroid/os/IBinder;

    const-string v4, "\u84dd\u7259\u7535\u8bdd"

    invoke-virtual {v0, v3, v2, v4, v1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->enableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;I)V

    goto :goto_0

    .line 610
    :cond_1
    sget v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    if-ne v0, v2, :cond_2

    .line 611
    const-string v0, "PhoneNode"

    const-string v1, "clear info_flow disable info"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 612
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mBinder:Landroid/os/IBinder;

    const-string v3, "\u84dd\u7259\u7535\u8bdd"

    invoke-virtual {v0, v1, v2, v3, v2}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->enableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;I)V

    .line 616
    :cond_2
    :goto_0
    const/4 v0, 0x0

    sput v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    .line 617
    return-void
.end method

.method static synthetic lambda$syncContactList$0(Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;)Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;
    .locals 2
    .param p0, "phoneInfo"    # Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;

    .line 766
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;-><init>()V

    .line 767
    .local v0, "bean":Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;
    invoke-virtual {p0}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->setName(Ljava/lang/String;)V

    .line 768
    invoke-virtual {p0}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->setId(Ljava/lang/String;)V

    .line 769
    invoke-virtual {p0}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->setNumber(Ljava/lang/String;)V

    .line 770
    return-object v0
.end method


# virtual methods
.method public declared-synchronized callEnd()V
    .locals 6

    monitor-enter p0

    .line 504
    :try_start_0
    const-string v0, "PhoneNode"

    const-string v1, "callEnd"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    const/4 v0, 0x0

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

    const-string v3, "\u84dd\u7259\u7535\u8bdd"

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->enableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;I)V

    .line 511
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mBinder:Landroid/os/IBinder;

    const-string v3, "\u84dd\u7259\u7535\u8bdd"

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

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;
    throw v0
.end method

.method public declared-synchronized callOffhook()V
    .locals 9

    monitor-enter p0

    .line 469
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->ifOnThePhone:Z

    .line 470
    const-string v1, "callOffhook"

    invoke-static {v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->leaveTrigger()V

    .line 473
    const/4 v1, 0x0

    .line 474
    .local v1, "needDisableWakeUp":Z
    sget v2, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    const/4 v3, 0x0

    if-eq v2, v0, :cond_0

    .line 475
    const-string v2, "PhoneNode"

    const-string v4, "update disable info type from %s to info_flow"

    new-array v5, v0, [Ljava/lang/Object;

    sget v6, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2, v4, v5}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->enableWakeup()V

    .line 477
    sput v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    .line 478
    const/4 v1, 0x1

    goto :goto_0

    .line 479
    :cond_0
    sget v2, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    .line 480
    const-string v2, "PhoneNode"

    const-string v5, "update disable info type from %s to toast"

    new-array v6, v0, [Ljava/lang/Object;

    sget v7, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v2, v5, v6}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->enableWakeup()V

    .line 482
    sput v4, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    .line 483
    const/4 v1, 0x1

    .line 485
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 486
    invoke-static {}, Lcom/xiaopeng/speech/config/CarSpeechConfigFacade;->isOverseasCarType()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/xiaopeng/speech/protocol/R$string;->phonenode_disable_speech_calling_ex:I

    .line 487
    invoke-static {v2}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    sget v2, Lcom/xiaopeng/speech/protocol/R$string;->during_call_disable:I

    .line 488
    invoke-static {v2}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v7, v2

    .line 489
    .local v7, "msg":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mBinder:Landroid/os/IBinder;

    const/4 v5, 0x1

    const-string v6, "\u84dd\u7259\u7535\u8bdd"

    sget v8, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    invoke-virtual/range {v3 .. v8}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    .line 491
    .end local v7    # "msg":Ljava/lang/String;
    goto :goto_2

    .line 492
    :cond_3
    const-string v2, "PhoneNode"

    const-string v4, "cur notify type is %s don\'t need to disable again"

    new-array v5, v0, [Ljava/lang/Object;

    sget v6, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2, v4, v5}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    :goto_2
    invoke-virtual {p0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->stopSpeechDialog()V

    .line 495
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/speech/SpeechClient;->getSpeechState()Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->setCanExitFlag(Z)V

    .line 496
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->setPhoneCallStatusWithBinder(Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    monitor-exit p0

    return-void

    .line 468
    .end local v1    # "needDisableWakeUp":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;
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

    .line 209
    return-void
.end method

.method public declared-synchronized disableMainWakeup()V
    .locals 2

    monitor-enter p0

    .line 584
    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->disableWakeup()V

    .line 585
    const-string v0, "PhoneNode"

    const-string v1, "stopRecord-------"

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

    .line 583
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;
    throw v0
.end method

.method public divideArray([BI)[[B
    .locals 8
    .param p1, "source"    # [B
    .param p2, "chunkSize"    # I

    .line 158
    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 161
    :cond_0
    array-length v0, p1

    .line 162
    .local v0, "totalLength":I
    int-to-double v1, v0

    int-to-double v3, p2

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 163
    .local v1, "arraySize":I
    filled-new-array {v1, p2}, [I

    move-result-object v2

    const-class v3, B

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    .line 164
    .local v2, "ret":[[B
    const/4 v3, 0x0

    .line 165
    .local v3, "start":I
    const/4 v4, 0x0

    move v5, v3

    move v3, v4

    .local v3, "i":I
    .local v5, "start":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 166
    add-int v6, v5, p2

    if-le v6, v0, :cond_1

    .line 167
    aget-object v6, v2, v3

    array-length v7, p1

    sub-int/2addr v7, v5

    invoke-static {p1, v5, v6, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 169
    :cond_1
    aget-object v6, v2, v3

    invoke-static {p1, v5, v6, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    :goto_1
    add-int/2addr v5, p2

    .line 165
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 173
    .end local v3    # "i":I
    :cond_2
    return-object v2

    .line 159
    .end local v0    # "totalLength":I
    .end local v1    # "arraySize":I
    .end local v2    # "ret":[[B
    .end local v5    # "start":I
    :cond_3
    :goto_2
    const/4 v0, 0x0

    check-cast v0, [[B

    return-object v0
.end method

.method public declared-synchronized enableMainWakeup()V
    .locals 2

    monitor-enter p0

    .line 567
    :try_start_0
    sget-boolean v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->ifOnThePhone:Z

    if-eqz v0, :cond_0

    .line 568
    const-string v0, "PhoneNode"

    const-string v1, "on the phone, can not enable wakeup."

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

    .line 572
    const-string v0, "PhoneNode"

    const-string v1, "in trigger dialog, can not enable wakeup."

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

    .line 576
    const-string v0, "PhoneNode"

    const-string v1, "startRecord----------"

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

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;
    throw v0
.end method

.method public incomingCallRing(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I
    .locals 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "enableTts"    # Z
    .param p4, "triggerData"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 378
    move-object/from16 v2, p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incomingCallRing, trigger data: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    .line 379
    const/4 v3, 0x0

    move v4, v3

    .line 381
    .local v4, "isMicOpen":Z
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getSpeechState()Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->isMicrophoneMute()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    .end local v4    # "isMicOpen":Z
    .local v0, "isMicOpen":Z
    goto :goto_0

    .line 382
    .end local v0    # "isMicOpen":Z
    .restart local v4    # "isMicOpen":Z
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 385
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    move v4, v0

    const-string v0, ""

    .line 386
    .local v0, "tts":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 387
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/xiaopeng/speech/protocol/R$string;->call_incoming:I

    invoke-static {v7}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 389
    :cond_0
    move-object/from16 v6, p2

    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 390
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, p1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/xiaopeng/speech/protocol/R$string;->call_incoming:I

    invoke-static {v8}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 392
    :cond_1
    move-object/from16 v7, p1

    .end local v0    # "tts":Ljava/lang/String;
    .local v5, "tts":Ljava/lang/String;
    :goto_2
    move-object v5, v0

    if-eqz v4, :cond_2

    .line 393
    sget v0, Lcom/xiaopeng/speech/protocol/R$string;->call_incoming_mic_disable:I

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 394
    .end local v5    # "tts":Ljava/lang/String;
    .restart local v0    # "tts":Ljava/lang/String;
    const/4 v3, -0x1

    return v3

    .line 396
    .end local v0    # "tts":Ljava/lang/String;
    .restart local v5    # "tts":Ljava/lang/String;
    :cond_2
    const/4 v8, -0x1

    .line 397
    .local v8, "resultCode":I
    sget v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    const/4 v9, 0x2

    if-eq v0, v9, :cond_4

    .line 398
    const-string v0, "PhoneNode"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "clear disable info, type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v11, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->enableWakeup()V

    .line 401
    invoke-static {}, Lcom/xiaopeng/speech/config/CarSpeechConfigFacade;->isOverseasCarType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 402
    sget v0, Lcom/xiaopeng/speech/protocol/R$string;->phonenode_disable_speech_calling_ex:I

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v14, "msg":Ljava/lang/String;
    :goto_3
    move-object v14, v0

    goto :goto_4

    .end local v14    # "msg":Ljava/lang/String;
    :cond_3
    sget v0, Lcom/xiaopeng/speech/protocol/R$string;->during_call_disable:I

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 406
    .restart local v14    # "msg":Ljava/lang/String;
    :goto_4
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v10

    iget-object v11, v1, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mBinder:Landroid/os/IBinder;

    const/4 v12, 0x1

    const-string v13, "\u84dd\u7259\u7535\u8bdd"

    const/4 v15, 0x2

    invoke-virtual/range {v10 .. v15}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    .line 409
    sput v9, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    .line 410
    .end local v14    # "msg":Ljava/lang/String;
    goto :goto_5

    .line 411
    :cond_4
    const-string v0, "PhoneNode"

    const-string v9, "cur notify type is already toast"

    invoke-static {v0, v9}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    :goto_5
    invoke-static {}, Lcom/xiaopeng/speech/config/CarSpeechConfigFacade;->isOverseasCarType()Z

    move-result v0

    const/4 v9, 0x1

    const/16 v10, 0x2711

    if-nez v0, :cond_5

    .line 415
    :try_start_1
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v0

    new-array v11, v9, [I

    aput v3, v11, v3

    invoke-virtual {v0, v10, v11, v2}, Lcom/xiaopeng/speech/proxy/AgentProxy;->newTriggerDialog(I[ILjava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move v8, v0

    .line 419
    nop

    .line 420
    const-string v0, "PhoneNode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "trigger dialog result code: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    iget-object v0, v1, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v1, v0, v9}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->setPhoneCallStatusWithBinder(Landroid/os/IBinder;I)V

    .line 422
    if-nez v8, :cond_5

    .line 423
    sput v10, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curTriggerID:I

    goto :goto_6

    .line 416
    :catch_1
    move-exception v0

    .line 417
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 418
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 426
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5
    :goto_6
    sput v10, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curTriggerID:I

    .line 427
    iget-object v0, v1, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v1, v0, v9}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->setPhoneCallStatusWithBinder(Landroid/os/IBinder;I)V

    .line 428
    return v8
.end method

.method public declared-synchronized incomingCallRing(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    monitor-enter p0

    .line 435
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->incomingCallRing(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    monitor-exit p0

    return-void

    .line 434
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "number":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;
    throw p1
.end method

.method public incomingCallRing(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 21
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "enableTts"    # Z

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 288
    move/from16 v4, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "incomingCallRing, enable tts: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    .line 289
    const-string v5, "\u79bb\u7ebf\u6765\u7535\u8bdd"

    .line 290
    .local v5, "skill":Ljava/lang/String;
    const-string v6, "\u6765\u7535\u8bdd"

    .line 291
    .local v6, "task":Ljava/lang/String;
    const-string v7, "\u6765\u7535\u8bdd"

    .line 292
    .local v7, "intent":Ljava/lang/String;
    const-string v8, ""

    .line 293
    .local v8, "slots":Ljava/lang/String;
    const/4 v9, 0x0

    move v10, v9

    .line 295
    .local v10, "isMicOpen":Z
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getSpeechState()Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->isMicrophoneMute()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .end local v10    # "isMicOpen":Z
    .local v0, "isMicOpen":Z
    goto :goto_0

    .line 296
    .end local v0    # "isMicOpen":Z
    .restart local v10    # "isMicOpen":Z
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 299
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    move v10, v0

    const-string v0, ""

    .line 300
    .local v0, "tts":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 301
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v12, Lcom/xiaopeng/speech/protocol/R$string;->call_incoming:I

    invoke-static {v12}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 304
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v12, Lcom/xiaopeng/speech/protocol/R$string;->call_incoming:I

    invoke-static {v12}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    :cond_1
    if-eqz v10, :cond_2

    .line 307
    sget v11, Lcom/xiaopeng/speech/protocol/R$string;->call_incoming_mic_disable:I

    invoke-static {v11}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 311
    .end local v0    # "tts":Ljava/lang/String;
    .local v11, "tts":Ljava/lang/String;
    :cond_2
    move-object v11, v0

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v12, "tts"

    invoke-virtual {v0, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v12, "\u6765\u7535\u53f7\u7801"

    invoke-virtual {v0, v12, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v0

    .line 314
    goto :goto_1

    .line 312
    :catch_1
    move-exception v0

    .line 313
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 316
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    const/4 v12, 0x1

    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v13, "isLocalSkill"

    invoke-virtual {v0, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v13, "\u6765\u7535\u4eba"

    .line 317
    invoke-virtual {v0, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v13, "\u6765\u7535\u53f7\u7801"

    .line 318
    invoke-virtual {v0, v13, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v13, "tts"

    .line 319
    invoke-virtual {v0, v13, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v13, "command"

    const-string v14, "command://phone.in.accept#command://phone.in.reject"

    .line 320
    invoke-virtual {v0, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v13, "enable_tts"

    .line 321
    invoke-virtual {v0, v13, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v8, v0

    .line 325
    goto :goto_2

    .line 323
    :catch_2
    move-exception v0

    .line 324
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 327
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getSpeechState()Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->setCanExitFlag(Z)V

    .line 329
    sget v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    const/4 v13, 0x2

    if-eq v0, v13, :cond_4

    .line 330
    const-string v0, "PhoneNode"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "clear disable info, type: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v15, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->enableWakeup()V

    .line 333
    invoke-static {}, Lcom/xiaopeng/speech/config/CarSpeechConfigFacade;->isOverseasCarType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 334
    sget v0, Lcom/xiaopeng/speech/protocol/R$string;->phonenode_disable_speech_calling_ex:I

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v18, "msg":Ljava/lang/String;
    :goto_3
    move-object/from16 v18, v0

    goto :goto_4

    .end local v18    # "msg":Ljava/lang/String;
    :cond_3
    sget v0, Lcom/xiaopeng/speech/protocol/R$string;->during_call_disable:I

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 338
    .restart local v18    # "msg":Ljava/lang/String;
    :goto_4
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v14

    iget-object v15, v1, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mBinder:Landroid/os/IBinder;

    const/16 v16, 0x1

    const-string v17, "\u84dd\u7259\u7535\u8bdd"

    const/16 v19, 0x2

    invoke-virtual/range {v14 .. v19}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    .line 341
    sput v13, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    .line 342
    .end local v18    # "msg":Ljava/lang/String;
    goto :goto_5

    .line 343
    :cond_4
    const-string v0, "PhoneNode"

    const-string v13, "cur notify type is already toast"

    invoke-static {v0, v13}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    :goto_5
    invoke-static {}, Lcom/xiaopeng/speech/config/CarSpeechConfigFacade;->isOverseasCarType()Z

    move-result v0

    if-nez v0, :cond_6

    .line 346
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v14, v0

    .line 348
    .local v14, "data":Lorg/json/JSONObject;
    :try_start_3
    const-string v0, "triggerID"

    const/16 v15, 0x2714

    invoke-virtual {v14, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 349
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 350
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    const-string v15, "soundArea"

    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v14, v15, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    const-string v13, "tts"

    invoke-virtual {v14, v13, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 353
    const-string v13, "repeatNum"

    const/4 v15, 0x3

    invoke-virtual {v14, v13, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 354
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v13

    invoke-virtual {v13}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v13

    new-array v15, v12, [I

    aput v9, v15, v9

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v12, 0x2711

    invoke-virtual {v13, v12, v15, v9}, Lcom/xiaopeng/speech/proxy/AgentProxy;->newTriggerDialog(I[ILjava/lang/String;)I

    move-result v9

    .line 355
    .local v9, "resultCode":I
    const-string v12, "PhoneNode"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "trigger dialog result code: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    iget-object v12, v1, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mBinder:Landroid/os/IBinder;

    const/4 v13, 0x1

    invoke-virtual {v1, v12, v13}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->setPhoneCallStatusWithBinder(Landroid/os/IBinder;I)V

    .line 357
    if-nez v9, :cond_5

    .line 358
    const/16 v12, 0x2711

    sput v12, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curTriggerID:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 360
    :cond_5
    return-void

    .line 361
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "resultCode":I
    :catch_3
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 365
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v14    # "data":Lorg/json/JSONObject;
    :cond_6
    const/16 v9, 0x2711

    sput v9, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curTriggerID:I

    .line 366
    iget-object v0, v1, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mBinder:Landroid/os/IBinder;

    const/4 v9, 0x1

    invoke-virtual {v1, v0, v9}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->setPhoneCallStatusWithBinder(Landroid/os/IBinder;I)V

    .line 367
    return-void
.end method

.method public isEnglish(Ljava/lang/String;)Z
    .locals 1
    .param p1, "charaString"    # Ljava/lang/String;

    .line 154
    const-string v0, "^[a-zA-Z]*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
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
    .locals 5

    .line 552
    const-string v0, "PhoneNode"

    const-string v1, "leave trigger, curTriggerID: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curTriggerID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

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

    .line 557
    :cond_0
    const/4 v0, -0x1

    sput v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curTriggerID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    goto :goto_0

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 561
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://phone.callback"
    .end annotation

    .line 926
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 927
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 928
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 929
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onCallback()V

    .line 928
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 932
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onCallbackSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "native://phone.callback.support"
    .end annotation

    .line 916
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 917
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 918
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 919
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onCallbackSupport()V

    .line 918
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 922
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onInAccept(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://phone.in.accept"
    .end annotation

    .line 873
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getSpeechState()Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->setCanExitFlag(Z)V

    .line 874
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 875
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 876
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 877
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onInAccept()V

    .line 876
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 880
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onInReject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://phone.in.reject"
    .end annotation

    .line 884
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getSpeechState()Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->setCanExitFlag(Z)V

    .line 885
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 886
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 887
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 888
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onInReject()V

    .line 887
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 891
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onListDisappear(Ljava/lang/String;)V
    .locals 5
    .param p1, "extra"    # Ljava/lang/String;

    .line 1012
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1013
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "listType"

    sget-object v2, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;->CONTACT_LIST:Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1014
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1015
    const-string v1, "extra"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1017
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1018
    .local v1, "speechInfoObj":Lorg/json/JSONObject;
    const-string v2, "soundArea"

    iget v3, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mSoundArea:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1019
    const-string v2, "speechInfo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1020
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v2

    const-string v3, "list.disappear"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/speech/proxy/AgentProxy;->sendUIEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1023
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "speechInfoObj":Lorg/json/JSONObject;
    goto :goto_0

    .line 1021
    :catch_0
    move-exception v0

    .line 1022
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/String;)V

    .line 1024
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onOut(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://phone.out"
    .end annotation

    .line 809
    const/4 v0, 0x0

    .line 811
    .local v0, "phoneBean":Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 812
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "phone"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 813
    .local v2, "phoneJson":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 814
    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 816
    :cond_0
    new-instance v3, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;

    invoke-direct {v3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;-><init>()V

    move-object v0, v3

    .line 817
    const-string v3, "name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->setName(Ljava/lang/String;)V

    .line 818
    const-string v3, "number"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->setNumber(Ljava/lang/String;)V

    .line 819
    const-string v3, "id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->setId(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "phoneJson":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 821
    :catch_0
    move-exception v1

    .line 822
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 824
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    if-nez v0, :cond_1

    .line 825
    const-string v1, "phoneBean == null"

    invoke-static {p0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 826
    return-void

    .line 828
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 829
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 830
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 831
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 834
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public onOutCustomerservice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://phone.out.customerservice"
    .end annotation

    .line 936
    const-string v0, ""

    .line 938
    .local v0, "number":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 939
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "number"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 942
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 940
    :catch_0
    move-exception v1

    .line 941
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 943
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 944
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 945
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 946
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onOutCustomerservice(Ljava/lang/String;)V

    .line 945
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 949
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public onOutHelp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://phone.out.help"
    .end annotation

    .line 953
    const-string v0, ""

    .line 955
    .local v0, "number":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 956
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "number"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 959
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 957
    :catch_0
    move-exception v1

    .line 958
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 960
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 961
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 962
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 963
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onOutHelp(Ljava/lang/String;)V

    .line 962
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 966
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public onPhoneContactClose()V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://phone.contact.close"
    .end annotation

    .line 1000
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1001
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1002
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1003
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onPhoneContactClose()V

    .line 1002
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1006
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onPhoneSelectOut(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://phone.select"
    .end annotation

    .line 838
    const/4 v0, 0x0

    .line 840
    .local v0, "phoneBean":Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 841
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "select_num"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 842
    .local v2, "select_num":I
    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->phoneBeanList:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->phoneBeanList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_1

    .line 847
    :cond_0
    if-lez v2, :cond_2

    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->phoneBeanList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v2, v3, :cond_1

    goto :goto_0

    .line 853
    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->phoneBeanList:Ljava/util/List;

    add-int/lit8 v4, v2, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;

    move-object v0, v3

    .line 857
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "select_num":I
    goto :goto_2

    .line 848
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "select_num":I
    :cond_2
    :goto_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/speech/SpeechClient;->getTTSEngine()Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    move-result-object v3

    sget v4, Lcom/xiaopeng/speech/protocol/R$string;->out_of_range:I

    .line 849
    invoke-static {v4}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 848
    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->speak(Ljava/lang/String;)Ljava/lang/String;

    .line 850
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select_num is  == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 851
    return-void

    .line 843
    :cond_3
    :goto_1
    const-string v3, "phoneBeanList == null"

    invoke-static {p0, v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    return-void

    .line 855
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "select_num":I
    :catch_0
    move-exception v1

    .line 856
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 858
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_2
    if-nez v0, :cond_4

    .line 859
    const-string v1, "phoneBean == null"

    invoke-static {p0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 860
    return-void

    .line 862
    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 863
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_5

    .line 864
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v3, v1

    if-ge v2, v3, :cond_5

    .line 865
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/speech/SpeechClient;->getTTSEngine()Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/xiaopeng/speech/protocol/R$string;->calling:I

    .line 867
    invoke-static {v5}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 866
    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->speak(Ljava/lang/String;)Ljava/lang/String;

    .line 864
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 870
    .end local v2    # "i":I
    :cond_5
    return-void
.end method

.method public onQueryBluetooth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "native://phone.query.bluetooth"
    .end annotation

    .line 980
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 981
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 982
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 983
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onQueryBluetooth()V

    .line 982
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 986
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onQueryContacts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "native://phone.query.contacts"
    .end annotation

    .line 640
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;

    move-result-object v0

    .line 641
    .local v0, "phoneBean":Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 642
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 643
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 644
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v3, p1, v0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onQueryContacts(Ljava/lang/String;Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;)V

    .line 643
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 647
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public onQueryDetailPhoneInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "native://phone.query.detail.phone"
    .end annotation

    .line 652
    :try_start_0
    iput-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->duiWidget:Ljava/lang/String;

    .line 653
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 654
    .local v0, "widgetObj":Lorg/json/JSONObject;
    const-string v1, "extra"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 655
    .local v1, "extra":Lorg/json/JSONObject;
    const-string v2, "soundArea"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mSoundArea:I

    .line 656
    if-eqz v1, :cond_0

    .line 657
    const-string v2, "raw_query"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mRawQuery:Ljava/lang/String;

    goto :goto_0

    .line 659
    :cond_0
    const-string v2, ""

    iput-object v2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mRawQuery:Ljava/lang/String;

    .line 661
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 663
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;>;"
    const-string v4, "content"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 665
    const-string v4, "content"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 666
    .local v4, "content":Lorg/json/JSONArray;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 667
    move v5, v3

    .local v5, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 668
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 669
    .local v6, "phone":Lorg/json/JSONObject;
    if-eqz v6, :cond_3

    .line 670
    new-instance v7, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;

    invoke-direct {v7}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;-><init>()V

    .line 671
    .local v7, "info":Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;
    const-string v8, "title"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->setName(Ljava/lang/String;)V

    .line 673
    const-string v8, "subTitle"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "subTitle"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 674
    const-string v8, "subTitle"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->setNumber(Ljava/lang/String;)V

    .line 676
    :cond_1
    const-string v8, "extra"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 677
    .local v8, "extraObj":Lorg/json/JSONObject;
    if-eqz v8, :cond_2

    .line 678
    const-string v9, "id"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->setId(Ljava/lang/String;)V

    .line 680
    :cond_2
    iget-object v9, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mRawQuery:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->setRawQuery(Ljava/lang/String;)V

    .line 681
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    .end local v6    # "phone":Lorg/json/JSONObject;
    .end local v7    # "info":Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;
    .end local v8    # "extraObj":Lorg/json/JSONObject;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 688
    .end local v4    # "content":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :cond_4
    const-string v4, "PhoneNode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onQueryDetailPhoneInfo data = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/speech/common/util/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 690
    iget-object v4, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v4

    .line 691
    .local v4, "listenerList":[Ljava/lang/Object;
    if-eqz v4, :cond_5

    .line 692
    nop

    .local v3, "i":I
    :goto_2
    array-length v5, v4

    if-ge v3, v5, :cond_5

    .line 693
    aget-object v5, v4, v3

    check-cast v5, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v5, v2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onQueryDetailPhoneInfo(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 698
    .end local v0    # "widgetObj":Lorg/json/JSONObject;
    .end local v1    # "extra":Lorg/json/JSONObject;
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;>;"
    .end local v3    # "i":I
    .end local v4    # "listenerList":[Ljava/lang/Object;
    :cond_5
    goto :goto_3

    .line 696
    :catch_0
    move-exception v0

    .line 697
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 700
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_3
    return-void
.end method

.method public onQuerySyncBluetooth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "native://phone.query.bluetooth.sync"
    .end annotation

    .line 253
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getQueryInjector()Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;

    move-result-object v0

    const-string v1, "phone.get.bluetooth.status"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;->queryData(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/common/bean/Value;

    move-result-object v0

    .line 254
    .local v0, "bluetoothValue":Lcom/xiaopeng/speech/common/bean/Value;
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getQueryInjector()Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;

    move-result-object v1

    const-string v3, "phone.get.contact.sync.status"

    invoke-virtual {v1, v3, v2}, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;->queryData(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/common/bean/Value;

    move-result-object v1

    .line 256
    .local v1, "syncValue":Lcom/xiaopeng/speech/common/bean/Value;
    new-instance v2, Lcom/xiaopeng/speech/speechwidget/ListWidget;

    invoke-direct {v2}, Lcom/xiaopeng/speech/speechwidget/ListWidget;-><init>()V

    .line 257
    .local v2, "listWidget":Lcom/xiaopeng/speech/speechwidget/ListWidget;
    sget v3, Lcom/xiaopeng/speech/protocol/R$string;->title_contacts:I

    invoke-static {v3}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 258
    const-string v3, "phone"

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setExtraType(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 259
    const-string v3, "deviceId"

    iget-object v4, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->deviceId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 260
    if-eqz v0, :cond_0

    .line 261
    const-string v3, "phone_bluetooth"

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/bean/Value;->getBoolean()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 263
    :cond_0
    if-eqz v1, :cond_1

    .line 264
    const-string v3, "phone_sync"

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/bean/Value;->getInteger()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 266
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/speech/SpeechClient;->getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;

    move-result-object v3

    new-instance v4, Lcom/xiaopeng/speech/actorapi/ResultActor;

    const-string v5, "native://phone.query.bluetooth.sync"

    invoke-direct {v4, v5}, Lcom/xiaopeng/speech/actorapi/ResultActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/xiaopeng/speech/actorapi/ResultActor;->setResult(Lcom/xiaopeng/speech/speechwidget/SpeechWidget;)Lcom/xiaopeng/speech/actorapi/ResultActor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    .line 267
    return-void
.end method

.method public onQuerySyncBluetooth(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "bluetoothStatus"    # Z
    .param p4, "syncStatus"    # I

    .line 271
    new-instance v0, Lcom/xiaopeng/speech/speechwidget/ListWidget;

    invoke-direct {v0}, Lcom/xiaopeng/speech/speechwidget/ListWidget;-><init>()V

    .line 272
    .local v0, "listWidget":Lcom/xiaopeng/speech/speechwidget/ListWidget;
    sget v1, Lcom/xiaopeng/speech/protocol/R$string;->title_contacts:I

    invoke-static {v1}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 273
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setExtraType(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 274
    const-string v1, "deviceId"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 275
    const-string v1, "phone_bluetooth"

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 276
    const-string v1, "phone_sync"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 277
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/speech/actorapi/ResultActor;

    const-string v3, "native://phone.query.bluetooth.sync"

    invoke-direct {v2, v3}, Lcom/xiaopeng/speech/actorapi/ResultActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/xiaopeng/speech/actorapi/ResultActor;->setResult(Lcom/xiaopeng/speech/speechwidget/SpeechWidget;)Lcom/xiaopeng/speech/actorapi/ResultActor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    .line 278
    return-void
.end method

.method public onRedial(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://phone.redial"
    .end annotation

    .line 906
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 907
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 908
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 909
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onRedial()V

    .line 908
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 912
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onRedialSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "native://phone.redial.support"
    .end annotation

    .line 896
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 897
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 898
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 899
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onRedialSupport()V

    .line 898
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 902
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onSettingOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 970
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 971
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 972
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 973
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onSettingOpen()V

    .line 972
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 976
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onSyncContactResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://phone.contact.sync.result"
    .end annotation

    .line 990
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 991
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->syncResultCode:I

    .line 992
    if-eqz v0, :cond_0

    .line 993
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 994
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    iget v3, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->syncResultCode:I

    invoke-interface {v2, v3}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onSyncContactResult(I)V

    .line 993
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 997
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public outgoingCallRing()V
    .locals 8

    .line 443
    const-string v0, "outgoingCallRing"

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    .line 444
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v0

    const-string v1, "scriptQuit"

    const-string v2, "{\"data\":{\"domain\":\"phone\"}}"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/proxy/AgentProxy;->sendUIEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    sget v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 446
    const-string v0, "PhoneNode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clear disable info, type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

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

    .line 452
    .local v6, "msg":Ljava/lang/String;
    :goto_0
    move-object v6, v0

    goto :goto_1

    .end local v6    # "msg":Ljava/lang/String;
    :cond_0
    sget v0, Lcom/xiaopeng/speech/protocol/R$string;->during_call_disable:I

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 454
    .restart local v6    # "msg":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mBinder:Landroid/os/IBinder;

    const/4 v4, 0x1

    const-string v5, "\u84dd\u7259\u7535\u8bdd"

    const/4 v7, 0x2

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    .line 457
    sput v1, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curNotifyType:I

    .line 458
    .end local v6    # "msg":Ljava/lang/String;
    goto :goto_2

    .line 459
    :cond_1
    const-string v0, "PhoneNode"

    const-string v2, "cur notify type is already toast"

    invoke-static {v0, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    :goto_2
    invoke-virtual {p0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->stopSpeechDialog()V

    .line 462
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->setPhoneCallStatusWithBinder(Landroid/os/IBinder;I)V

    .line 463
    return-void
.end method

.method public postContactsResult(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 6
    .param p1, "searchKey"    # Ljava/lang/String;
    .param p3, "isBtConnected"    # Z
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
    .local p2, "phoneBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;>;"
    iput-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->phoneBeanList:Ljava/util/List;

    .line 734
    new-instance v0, Lcom/xiaopeng/speech/speechwidget/ListWidget;

    invoke-direct {v0}, Lcom/xiaopeng/speech/speechwidget/ListWidget;-><init>()V

    .line 735
    .local v0, "listWidget":Lcom/xiaopeng/speech/speechwidget/ListWidget;
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 736
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setExtraType(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 737
    const-string v1, "phone_bluetooth"

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 738
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;

    .line 739
    .local v2, "phoneBean":Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;
    new-instance v3, Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    invoke-direct {v3}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;-><init>()V

    .line 740
    .local v3, "contentWidget":Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    .line 741
    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->setSubTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    .line 742
    const-string v4, "phone"

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->toJson()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    .line 743
    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addContentWidget(Lcom/xiaopeng/speech/speechwidget/ContentWidget;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 744
    .end local v2    # "phoneBean":Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;
    .end local v3    # "contentWidget":Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    goto :goto_0

    .line 745
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/speech/actorapi/ResultActor;

    const-string v3, "native://phone.query.contacts"

    invoke-direct {v2, v3}, Lcom/xiaopeng/speech/actorapi/ResultActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/xiaopeng/speech/actorapi/ResultActor;->setResult(Lcom/xiaopeng/speech/speechwidget/SpeechWidget;)Lcom/xiaopeng/speech/actorapi/ResultActor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    .line 746
    return-void
.end method

.method public postContactsResult(Ljava/util/List;Z)V
    .locals 1
    .param p2, "isBtConnected"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;",
            ">;Z)V"
        }
    .end annotation

    .line 722
    .local p1, "phoneBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;>;"
    const-string v0, "\u8054\u7cfb\u4eba"

    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->postContactsResult(Ljava/lang/String;Ljava/util/List;Z)V

    .line 723
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

    .line 754
    .local p1, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;>;"
    if-eqz p1, :cond_0

    .line 755
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->syncContactList(Ljava/util/List;)V

    .line 757
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

    .line 795
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 796
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
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

    .line 796
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 795
    .end local v1    # "j":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 804
    .end local v0    # "i":I
    :cond_2
    return-object p1
.end method

.method public replySupport(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "isSupport"    # Z
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "isBtConnected"    # Z

    .line 711
    new-instance v0, Lcom/xiaopeng/speech/speechwidget/SupportWidget;

    invoke-direct {v0}, Lcom/xiaopeng/speech/speechwidget/SupportWidget;-><init>()V

    .line 712
    .local v0, "supportWidget":Lcom/xiaopeng/speech/speechwidget/SupportWidget;
    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/speechwidget/SupportWidget;->setSupport(Z)Lcom/xiaopeng/speech/speechwidget/SupportWidget;

    .line 713
    const-string v1, "phone_bluetooth"

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/speechwidget/SupportWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 714
    invoke-virtual {v0, p3}, Lcom/xiaopeng/speech/speechwidget/SupportWidget;->setTTS(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SupportWidget;

    .line 715
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/speech/actorapi/SupportActor;

    invoke-direct {v2, p1}, Lcom/xiaopeng/speech/actorapi/SupportActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/xiaopeng/speech/actorapi/SupportActor;->setResult(Lcom/xiaopeng/speech/speechwidget/SupportWidget;)Lcom/xiaopeng/speech/actorapi/SupportActor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    .line 716
    return-void
.end method

.method public setBTStatus(Z)V
    .locals 4
    .param p1, "isConnected"    # Z

    .line 236
    const-string v0, "setBTStatus:%b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    new-instance v0, Lcom/xiaopeng/speech/speechwidget/ListWidget;

    invoke-direct {v0}, Lcom/xiaopeng/speech/speechwidget/ListWidget;-><init>()V

    .line 245
    .local v0, "listWidget":Lcom/xiaopeng/speech/speechwidget/ListWidget;
    sget v1, Lcom/xiaopeng/speech/protocol/R$string;->title_contacts:I

    invoke-static {v1}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 246
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setExtraType(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 247
    const-string v1, "phone_bluetooth"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 248
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/speech/actorapi/ResultActor;

    const-string v3, "native://phone.query.bluetooth"

    invoke-direct {v2, v3}, Lcom/xiaopeng/speech/actorapi/ResultActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/xiaopeng/speech/actorapi/ResultActor;->setResult(Lcom/xiaopeng/speech/speechwidget/SpeechWidget;)Lcom/xiaopeng/speech/actorapi/ResultActor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    .line 249
    return-void
.end method

.method public setPhoneCallStatus(I)V
    .locals 1
    .param p1, "callStatus"    # I

    .line 537
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getSpeechState()Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->setPhoneCallStatus(I)V

    .line 538
    return-void
.end method

.method public setPhoneCallStatusWithBinder(Landroid/os/IBinder;I)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "callStatus"    # I

    .line 545
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getSpeechState()Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->setPhoneCallStatusWithBinder(Landroid/os/IBinder;I)V

    .line 546
    return-void
.end method

.method public stopSpeechDialog()V
    .locals 2

    .line 523
    const-string v0, "PhoneNode"

    const-string v1, "stopSpeechDialog"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    sget v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curTriggerID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 525
    const-string v0, "PhoneNode"

    const-string v1, "in trigger dialog, can not stop dialog."

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 526
    return-void

    .line 528
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    const-string v1, "PhoneNode"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->stopDialogReason(Ljava/lang/String;)V

    .line 529
    return-void
.end method

.method public stopSpeechDialog(I)V
    .locals 3
    .param p1, "stopOption"    # I

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopDialog option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    sget v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->curTriggerID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 218
    const-string v0, "PhoneNode"

    const-string v1, "in trigger dialog, can not stop dialog."

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    return-void

    .line 221
    :cond_0
    if-nez p1, :cond_1

    .line 222
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->stopDialog()V

    goto :goto_0

    .line 224
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v0

    const-string v1, "scriptQuit"

    const-string v2, "{\"data\":{\"domain\":\"phone\"}}"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/proxy/AgentProxy;->sendUIEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :goto_0
    return-void
.end method

.method public subscribeMultiTask(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1030
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->subscribeMultiTask(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1031
    return-void
.end method

.method public syncCallLogs(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .param p2, "deviceId"    # Ljava/lang/String;
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

    .line 182
    .local p1, "callLogs":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 183
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 184
    .local v0, "eventData":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 186
    .local v1, "contacts":Lorg/json/JSONArray;
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;

    .line 187
    .local v3, "phoneInfo":Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 188
    .local v4, "phoneObj":Lorg/json/JSONObject;
    const-string v5, "id"

    invoke-virtual {v3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    const-string v5, "name"

    invoke-virtual {v3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    const-string v5, "time"

    invoke-virtual {v3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;->getTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    const-string v5, "call_count"

    invoke-virtual {v3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;->getCallCount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    invoke-virtual {v3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "[0-9a-zA-Z]"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;->setName(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 194
    .end local v3    # "phoneInfo":Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;
    .end local v4    # "phoneObj":Lorg/json/JSONObject;
    goto :goto_0

    .line 195
    :cond_0
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    const-string v2, "deveiceId"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    goto :goto_1

    .line 197
    :catch_0
    move-exception v2

    .line 198
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 200
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v2

    const-string v3, "sys.\u6700\u8fd1\u901a\u8bdd"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/xiaopeng/speech/proxy/AgentProxy;->uploadContacts(Ljava/lang/String;Ljava/lang/String;I)V

    .line 202
    .end local v0    # "eventData":Lorg/json/JSONObject;
    .end local v1    # "contacts":Lorg/json/JSONArray;
    :cond_1
    return-void
.end method

.method public syncContactList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;",
            ">;)V"
        }
    .end annotation

    .line 765
    .local p1, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/protocol/node/phone/-$$Lambda$PhoneNode$L_Rpx4x45_s7oSm2RX9z9Gf9RA0;->INSTANCE:Lcom/xiaopeng/speech/protocol/node/phone/-$$Lambda$PhoneNode$L_Rpx4x45_s7oSm2RX9z9Gf9RA0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 771
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 773
    .local v0, "phoneBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;>;"
    new-instance v1, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;

    invoke-direct {v1}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;-><init>()V

    .line 774
    .local v1, "listWidget":Lcom/xiaopeng/speech/protocol/bean/XpListWidget;, "Lcom/xiaopeng/speech/protocol/bean/XpListWidget<Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;>;"
    sget-object v2, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;->CONTACT_LIST:Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setListType(Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;)V

    .line 775
    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setContents(Ljava/util/List;)V

    .line 776
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTotalSize(I)V

    .line 777
    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mSoundArea:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 778
    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->getExtra()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 779
    .local v2, "object":Lcom/google/gson/JsonObject;
    if-nez v2, :cond_0

    .line 780
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    move-object v2, v3

    .line 782
    :cond_0
    const-string v3, "soundArea"

    iget v4, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->mSoundArea:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 784
    const-string v3, "reason"

    const-string v4, "vui"

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setExtra(Lcom/google/gson/JsonObject;)V

    .line 787
    .end local v2    # "object":Lcom/google/gson/JsonObject;
    :cond_1
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 788
    .local v2, "widgetInfo":Ljava/lang/String;
    const-string v3, "PhoneNode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncContactList:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 789
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v3

    const-string v4, "list.upload"

    invoke-virtual {v3, v4, v2}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    .end local v0    # "phoneBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;>;"
    .end local v1    # "listWidget":Lcom/xiaopeng/speech/protocol/bean/XpListWidget;, "Lcom/xiaopeng/speech/protocol/bean/XpListWidget<Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;>;"
    .end local v2    # "widgetInfo":Ljava/lang/String;
    goto :goto_0

    .line 790
    :catch_0
    move-exception v0

    .line 791
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 793
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public syncContacts(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact;>;"
    const-string v0, "PhoneNode"

    const-string v1, "syncContacts"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v0, "contacts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/xiaopeng/speech/config/CarSpeechConfigFacade;->isOverseasCarType()Z

    move-result v1

    .line 89
    .local v1, "isOverseasCarType":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact;

    .line 90
    .local v3, "item":Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact;
    if-nez v1, :cond_0

    .line 91
    invoke-virtual {v3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[0-9a-zA-Z]"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact;->setName(Ljava/lang/String;)V

    .line 93
    :cond_0
    invoke-virtual {v3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .end local v3    # "item":Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact;
    goto :goto_0

    .line 95
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v2

    const-string v3, "sys.\u8054\u7cfb\u4eba"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/xiaopeng/speech/proxy/AgentProxy;->updateVocab(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 97
    .end local v0    # "contacts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "isOverseasCarType":Z
    :cond_2
    return-void
.end method

.method public syncContacts(Ljava/util/List;Ljava/lang/String;)V
    .locals 13
    .param p2, "deviceId"    # Ljava/lang/String;
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
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;>;"
    const-string v0, "PhoneNode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncContacts, deviceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iput-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->deviceId:Ljava/lang/String;

    .line 107
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 108
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 109
    .local v0, "eventData":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 111
    .local v1, "contacts":Lorg/json/JSONArray;
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;

    .line 112
    .local v3, "phoneInfo":Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 113
    .local v4, "phoneObj":Lorg/json/JSONObject;
    const-string v5, "id"

    invoke-virtual {v3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    invoke-virtual {v3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->getName()Ljava/lang/String;

    move-result-object v5

    .line 115
    .local v5, "strName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 116
    const-string v6, "[0-9]"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 117
    invoke-virtual {p0, v5}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->isEnglish(Ljava/lang/String;)Z

    move-result v6

    .line 118
    .local v6, "isWord":Z
    if-eqz v6, :cond_0

    .line 119
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 122
    .end local v6    # "isWord":Z
    :cond_0
    invoke-virtual {v3, v5}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->setName(Ljava/lang/String;)V

    .line 123
    const-string v6, "name"

    invoke-virtual {v3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 125
    .end local v3    # "phoneInfo":Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;
    .end local v4    # "phoneObj":Lorg/json/JSONObject;
    .end local v5    # "strName":Ljava/lang/String;
    goto :goto_0

    .line 126
    :cond_1
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v2, "deveiceId"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    goto :goto_1

    .line 128
    :catch_0
    move-exception v2

    .line 129
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 131
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "unzipEventData":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 133
    .local v3, "bis":[B
    const-string v4, "PhoneNode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uncompress source data size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/utils/DeflaterUtils;->compressForGzip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, "zipEventData":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 136
    const-string v5, "PhoneNode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "compress data size\uff1a "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    const/high16 v5, 0x40000

    invoke-virtual {p0, v3, v5}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->divideArray([BI)[[B

    move-result-object v5

    .line 140
    .local v5, "divideData":[[B
    if-nez v5, :cond_2

    .line 141
    return-void

    .line 143
    :cond_2
    array-length v6, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    .line 144
    .local v8, "item":[B
    const-string v9, "PhoneNode"

    const-string v10, "divide data"

    invoke-static {v9, v10}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    if-eqz v8, :cond_3

    .line 146
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v9

    invoke-virtual {v9}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v9

    const-string v10, "sys.\u8054\u7cfb\u4eba"

    new-instance v11, Lcom/xiaopeng/speech/common/bean/SliceData;

    array-length v12, v3

    invoke-direct {v11, v8, v12}, Lcom/xiaopeng/speech/common/bean/SliceData;-><init>([BI)V

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Lcom/xiaopeng/speech/proxy/AgentProxy;->uploadContact(Ljava/lang/String;Lcom/xiaopeng/speech/common/bean/SliceData;I)V

    .line 143
    .end local v8    # "item":[B
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 151
    .end local v0    # "eventData":Lorg/json/JSONObject;
    .end local v1    # "contacts":Lorg/json/JSONArray;
    .end local v2    # "unzipEventData":Ljava/lang/String;
    .end local v3    # "bis":[B
    .end local v4    # "zipEventData":Ljava/lang/String;
    .end local v5    # "divideData":[[B
    :cond_4
    return-void
.end method
