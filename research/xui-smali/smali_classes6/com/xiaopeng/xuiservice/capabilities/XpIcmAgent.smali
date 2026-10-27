.class public Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;
.super Lcom/xiaopeng/xuiservice/carcontrol/HalServiceBaseCarListener;
.source "XpIcmAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent$EventCallbackHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final MSG_ICMAGENT_EVENT:I = 0x0

.field private static final MSG_ICMAGENT_KEYEVENT:I = 0x1

.field public static final SYNCMODE_ALARMMODE:Ljava/lang/String; = "AlarmMode"

.field public static final TAG:Ljava/lang/String; = "XpIcmAgent"

.field private static volatile mAgent:Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;

.field private static mCduReady:I

.field private static mIcmReady:I

.field private static time12_24:Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

.field private final mHandler:Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

.field private mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

.field private mIcmManager:Landroid/car/hardware/icm/CarIcmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const/4 v0, 0x0

    sput v0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mIcmReady:I

    .line 43
    sput v0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mCduReady:I

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mAgent:Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/HalServiceBaseCarListener;-><init>(Landroid/content/Context;)V

    .line 53
    const-string v0, "XpIcmAgent"

    const-string v1, "XpIcmAgent"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent$EventCallbackHandler;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent$EventCallbackHandler;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mHandler:Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_12_24"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->time12_24:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->init()V

    .line 58
    return-void
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 34
    sput-object p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->time12_24:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->sendTimeFormatSync()V

    return-void
.end method

.method private doCarSettingCommand(Landroid/car/hardware/icm/CarIcmManager$CarCtl_msgData;)V
    .locals 7
    .param p1, "msgData"    # Landroid/car/hardware/icm/CarIcmManager$CarCtl_msgData;

    .line 370
    :try_start_0
    iget-object v0, p1, Landroid/car/hardware/icm/CarIcmManager$CarCtl_msgData;->msgCmd:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "setSweepWindStatus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "setBCMSeatBlowLevel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v3

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "setHvacFrontDefrostMode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "setHvacPowerMode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :sswitch_4
    const-string v2, "setIcmPosition"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xb

    goto :goto_0

    :sswitch_5
    const-string v2, "triggerVolumeDown"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xc

    goto :goto_0

    :sswitch_6
    const-string v2, "setBCMSeatHeatLevel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v5

    goto :goto_0

    :sswitch_7
    const-string v2, "setHvacTempDriverValue"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v4

    goto :goto_0

    :sswitch_8
    const-string v2, "setAirDistributionMode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_9
    const-string v2, "setHvacWindBlowMode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v6

    goto :goto_0

    :sswitch_a
    const-string v2, "setHvacWindSpeedLevel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_b
    const-string v2, "setHvacFanSpeedInc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_c
    const-string v2, "setHvacFanSpeedDec"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 473
    const-string v0, "XpIcmAgent"

    goto/16 :goto_3

    .line 465
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_6

    .line 466
    iget v0, p1, Landroid/car/hardware/icm/CarIcmManager$CarCtl_msgData;->param:F

    float-to-int v0, v0

    .line 467
    .local v0, "down":I
    const-string v1, "XpIcmAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "triggerVolumeDown : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mAudioManager:Landroid/media/AudioManager;

    const/16 v2, 0x200

    if-eq v0, v6, :cond_1

    move v4, v6

    nop

    :cond_1
    invoke-virtual {v1, v3, v6, v2, v4}, Landroid/media/AudioManager;->temporaryChangeVolumeDown(IIIZ)V

    .line 470
    .end local v0    # "down":I
    goto/16 :goto_2

    .line 458
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_6

    .line 459
    iget v0, p1, Landroid/car/hardware/icm/CarIcmManager$CarCtl_msgData;->param:F

    float-to-int v0, v0

    .line 460
    .local v0, "position":I
    const-string v1, "XpIcmAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIcmPosition try to set sound position as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mAudioManager:Landroid/media/AudioManager;

    const/16 v2, 0x63

    const-string v3, ""

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/media/AudioManager;->setStreamPosition(ILjava/lang/String;II)V

    .line 462
    .end local v0    # "position":I
    goto/16 :goto_2

    .line 450
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    if-eqz v0, :cond_6

    .line 451
    iget v0, p1, Landroid/car/hardware/icm/CarIcmManager$CarCtl_msgData;->param:F

    float-to-int v0, v0

    .line 452
    .local v0, "enable_mode":I
    const-string v1, "XpIcmAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doCarSettingCommand try to setHvacPowerMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    if-eqz v0, :cond_2

    if-ne v0, v6, :cond_3

    .line 454
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v1, v0}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacPowerMode(I)V

    .line 455
    .end local v0    # "enable_mode":I
    :cond_3
    goto/16 :goto_2

    .line 444
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    if-eqz v0, :cond_6

    .line 445
    const-string v0, "XpIcmAgent"

    const-string v1, "doCarSettingCommand try to setHvacFanSpeedDec "

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacFanSpeedDec()V

    goto/16 :goto_2

    .line 438
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    if-eqz v0, :cond_6

    .line 439
    const-string v0, "XpIcmAgent"

    const-string v1, "doCarSettingCommand try to setHvacFanSpeedInc "

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacFanSpeedInc()V

    goto/16 :goto_2

    .line 431
    :pswitch_5
    iget v0, p1, Landroid/car/hardware/icm/CarIcmManager$CarCtl_msgData;->param:F

    float-to-int v0, v0

    .line 432
    .local v0, "mode":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    if-eqz v1, :cond_6

    .line 433
    const-string v1, "XpIcmAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doCarSettingCommand try to setAirDistributionMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v1, v0}, Landroid/car/hardware/hvac/CarHvacManager;->setAirDistributionMode(I)V

    goto/16 :goto_2

    .line 424
    .end local v0    # "mode":I
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    if-eqz v0, :cond_6

    .line 425
    iget v0, p1, Landroid/car/hardware/icm/CarIcmManager$CarCtl_msgData;->param:F

    float-to-int v0, v0

    .line 426
    .local v0, "value":I
    const-string v1, "XpIcmAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doCarSettingCommand try to setHvacFrontDefrostMode to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v1, v0}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacFrontDefrostMode(I)V

    .line 428
    .end local v0    # "value":I
    goto/16 :goto_2

    .line 412
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    if-eqz v0, :cond_6

    .line 413
    iget v0, p1, Landroid/car/hardware/icm/CarIcmManager$CarCtl_msgData;->param:F

    float-to-int v0, v0

    .line 414
    .restart local v0    # "value":I
    const-string v1, "XpIcmAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doCarSettingCommand try to setSweepWindStatus to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    if-ne v0, v6, :cond_4

    .line 416
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v1, v0}, Landroid/car/hardware/hvac/CarHvacManager;->setSweepWindStatus(I)V

    goto :goto_1

    .line 417
    :cond_4
    if-nez v0, :cond_5

    .line 418
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v1, v5}, Landroid/car/hardware/hvac/CarHvacManager;->setEavDriverWindMode(I)V

    .line 419
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v1, v5}, Landroid/car/hardware/hvac/CarHvacManager;->setEavPsnWindMode(I)V

    .line 421
    .end local v0    # "value":I
    :cond_5
    :goto_1
    goto/16 :goto_2

    .line 404
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    if-eqz v0, :cond_6

    .line 405
    iget v0, p1, Landroid/car/hardware/icm/CarIcmManager$CarCtl_msgData;->param:F

    float-to-int v0, v0

    .line 406
    .restart local v0    # "value":I
    const-string v1, "XpIcmAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doCarSettingCommand try to setHvacWindSpeedLevel to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v1, v0}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacWindSpeedLevel(I)V

    .line 409
    .end local v0    # "value":I
    goto/16 :goto_2

    .line 396
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    if-eqz v0, :cond_6

    .line 397
    iget v0, p1, Landroid/car/hardware/icm/CarIcmManager$CarCtl_msgData;->param:F

    float-to-int v0, v0

    .line 398
    .local v0, "mode":I
    const-string v1, "XpIcmAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doCarSettingCommand try to setBcmSeatBlowLevel to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v1, v0}, Landroid/car/hardware/bcm/CarBcmManager;->setBcmSeatBlowLevel(I)V

    .line 401
    .end local v0    # "mode":I
    goto :goto_2

    .line 388
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    if-eqz v0, :cond_6

    .line 389
    iget v0, p1, Landroid/car/hardware/icm/CarIcmManager$CarCtl_msgData;->param:F

    float-to-int v0, v0

    .line 390
    .restart local v0    # "mode":I
    const-string v1, "XpIcmAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doCarSettingCommand try to setBcmSeatHeatLevel to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v1, v0}, Landroid/car/hardware/bcm/CarBcmManager;->setBcmSeatHeatLevel(I)V

    .line 393
    .end local v0    # "mode":I
    goto :goto_2

    .line 380
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    if-eqz v0, :cond_6

    .line 381
    iget v0, p1, Landroid/car/hardware/icm/CarIcmManager$CarCtl_msgData;->param:F

    float-to-int v0, v0

    .line 382
    .restart local v0    # "mode":I
    const-string v1, "XpIcmAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doCarSettingCommand try to setAirDistributionMode to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v1, v0}, Landroid/car/hardware/hvac/CarHvacManager;->setAirDistributionMode(I)V

    .line 385
    .end local v0    # "mode":I
    goto :goto_2

    .line 372
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    if-eqz v0, :cond_6

    .line 373
    iget v0, p1, Landroid/car/hardware/icm/CarIcmManager$CarCtl_msgData;->param:F

    .line 374
    .local v0, "value":F
    const-string v1, "XpIcmAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doCarSettingCommand try to setHvacTempDriverValue to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v1, v0}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacTempDriverValue(F)V

    .line 377
    .end local v0    # "value":F
    nop

    .line 478
    :cond_6
    :goto_2
    goto :goto_4

    .line 473
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCarSettingCommand NO SUCH msgCmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/car/hardware/icm/CarIcmManager$CarCtl_msgData;->msgCmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    return-void

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 479
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d79ea24 -> :sswitch_c
        -0x6d79d648 -> :sswitch_b
        -0x6a911489 -> :sswitch_a
        -0x65506911 -> :sswitch_9
        -0x42636011 -> :sswitch_8
        -0x33b675dd -> :sswitch_7
        0x17f1ea85 -> :sswitch_6
        0x230dceb4 -> :sswitch_5
        0x4c000b1a -> :sswitch_4
        0x4e30c736 -> :sswitch_3
        0x52c8628f -> :sswitch_2
        0x5f355203 -> :sswitch_1
        0x73a20564 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 61
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mAgent:Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;

    if-nez v0, :cond_1

    .line 62
    const-class v0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mAgent:Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;

    if-nez v1, :cond_0

    .line 64
    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mAgent:Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;

    .line 66
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 68
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mAgent:Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;

    return-object v0
.end method

.method private parseCarSettingAndCallBack(Ljava/lang/String;)V
    .locals 5
    .param p1, "json"    # Ljava/lang/String;

    .line 482
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 485
    .local v0, "mGson":Lcom/google/gson/Gson;
    :try_start_0
    const-class v1, Landroid/car/hardware/icm/CarIcmManager$CarControl_20;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/icm/CarIcmManager$CarControl_20;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    .local v1, "mCarControl":Landroid/car/hardware/icm/CarIcmManager$CarControl_20;
    nop

    .line 488
    nop

    .line 490
    if-nez v1, :cond_0

    .line 491
    return-void

    .line 492
    :cond_0
    iget-object v2, v1, Landroid/car/hardware/icm/CarIcmManager$CarControl_20;->msgData:Landroid/car/hardware/icm/CarIcmManager$CarCtl_msgData;

    .line 493
    .local v2, "mCarMsgData":Landroid/car/hardware/icm/CarIcmManager$CarCtl_msgData;
    if-nez v2, :cond_1

    .line 494
    return-void

    .line 496
    :cond_1
    iget-object v3, v2, Landroid/car/hardware/icm/CarIcmManager$CarCtl_msgData;->msgCmd:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 503
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->doCarSettingCommand(Landroid/car/hardware/icm/CarIcmManager$CarCtl_msgData;)V

    .line 504
    return-void

    .line 486
    .end local v1    # "mCarControl":Landroid/car/hardware/icm/CarIcmManager$CarControl_20;
    .end local v2    # "mCarMsgData":Landroid/car/hardware/icm/CarIcmManager$CarCtl_msgData;
    :catch_0
    move-exception v1

    .line 487
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XpIcmAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseCarSettingAndCallBack: json error!!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    return-void
.end method

.method private parseSyncSignal(Ljava/lang/String;)V
    .locals 7
    .param p1, "json"    # Ljava/lang/String;

    .line 211
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 214
    .local v0, "mGson":Lcom/google/gson/Gson;
    :try_start_0
    const-class v1, Landroid/car/hardware/icm/CarIcmManager$SyncSinal;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/icm/CarIcmManager$SyncSinal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .local v1, "mSyncSinal":Landroid/car/hardware/icm/CarIcmManager$SyncSinal;
    nop

    .line 217
    nop

    .line 219
    iget-object v2, v1, Landroid/car/hardware/icm/CarIcmManager$SyncSinal;->SyncMode:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x4c48b774    # 5.2616656E7f

    const/4 v6, 0x0

    if-eq v4, v5, :cond_1

    const v5, 0x77c3c6f6

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "SysReady"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v6

    goto :goto_0

    :cond_1
    const-string v4, "AlarmMode"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    :cond_2
    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 226
    :pswitch_0
    iget v2, v1, Landroid/car/hardware/icm/CarIcmManager$SyncSinal;->SyncProgress:I

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_3

    .line 227
    const-string v2, "XpIcmAgent"

    const-string v3, "GOT Icm message: try to mute music vol"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mAudioManager:Landroid/media/AudioManager;

    const/16 v3, -0x64

    invoke-virtual {v2, v4, v3, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_1

    .line 229
    :cond_3
    iget v2, v1, Landroid/car/hardware/icm/CarIcmManager$SyncSinal;->SyncProgress:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_4

    .line 230
    const-string v2, "XpIcmAgent"

    const-string v3, "GOT Icm message: unmute music vol"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mAudioManager:Landroid/media/AudioManager;

    const/16 v3, 0x64

    invoke-virtual {v2, v4, v3, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_1

    .line 221
    :pswitch_1
    iget v2, v1, Landroid/car/hardware/icm/CarIcmManager$SyncSinal;->SyncProgress:I

    sput v2, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mIcmReady:I

    .line 222
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->sendSysReadySyncSignal()V

    .line 223
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->sendTimeFormatSync()V

    .line 224
    nop

    .line 237
    :cond_4
    :goto_1
    return-void

    .line 215
    .end local v1    # "mSyncSinal":Landroid/car/hardware/icm/CarIcmManager$SyncSinal;
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XpIcmAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseSyncSignal: json error!!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendKeyEventMsg(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mHandler:Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 175
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 176
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 177
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mHandler:Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->sendMessage(Landroid/os/Message;)Z

    .line 178
    return-void
.end method

.method private sendSysReadySyncSignal()V
    .locals 4

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    if-nez v0, :cond_0

    .line 241
    return-void

    .line 242
    :cond_0
    new-instance v0, Landroid/car/hardware/icm/CarIcmManager$SyncSinal;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroid/car/hardware/icm/CarIcmManager$SyncSinal;-><init>(Landroid/car/hardware/icm/CarIcmManager;)V

    .line 243
    .local v0, "mSync":Landroid/car/hardware/icm/CarIcmManager$SyncSinal;
    const-string v1, "SysReady"

    iput-object v1, v0, Landroid/car/hardware/icm/CarIcmManager$SyncSinal;->SyncMode:Ljava/lang/String;

    .line 244
    const/4 v1, 0x1

    iput v1, v0, Landroid/car/hardware/icm/CarIcmManager$SyncSinal;->SyncProgress:I

    .line 245
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 246
    .local v1, "mGson":Lcom/google/gson/Gson;
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, "syncSignal":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v3, v2}, Landroid/car/hardware/icm/CarIcmManager;->setIcmSyncSignal(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    goto :goto_0

    .line 249
    :catch_0
    move-exception v3

    .line 250
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 252
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private sendTimeFormatSync()V
    .locals 3

    .line 255
    const-string v0, "XpIcmAgent"

    const-string v1, "sendTimeFormatSync()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "timeFormat":I
    const-string v1, "12"

    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->time12_24:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    const/4 v0, 0x1

    .line 260
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v1, v0}, Landroid/car/hardware/icm/CarIcmManager;->setIcmTimeFormat(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    goto :goto_0

    .line 261
    :catch_0
    move-exception v1

    .line 262
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 264
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 511
    const-string v0, "*AmbientLight HAL*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 512
    return-void
.end method

.method public handleIGON()V
    .locals 4

    .line 109
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent$2;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    return-void
.end method

.method public handleIcmEvents(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 335
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21101611

    if-eq v0, v1, :cond_2

    const v1, 0x21101618

    if-eq v0, v1, :cond_1

    const v1, 0x2140160e

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 344
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->sendSysReadySyncSignal()V

    .line 345
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->sendTimeFormatSync()V

    goto :goto_0

    .line 337
    :cond_1
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->parseCarSettingAndCallBack(Ljava/lang/String;)V

    .line 338
    goto :goto_0

    .line 340
    :cond_2
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->parseSyncSignal(Ljava/lang/String;)V

    .line 341
    nop

    .line 366
    :cond_3
    :goto_0
    return-void
.end method

.method public handleKeyEvents(Landroid/car/hardware/CarPropertyValue;)V
    .locals 11
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, "direction":I
    const/4 v1, 0x0

    .line 270
    .local v1, "val":I
    const/4 v2, 0x0

    .line 271
    .local v2, "temp":I
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v3

    const v4, 0x2140221b

    const/4 v5, 0x1

    if-eq v3, v4, :cond_a

    const v4, 0x2141221f

    const/4 v6, 0x0

    if-eq v3, v4, :cond_5

    const v4, 0x21412221

    if-eq v3, v4, :cond_0

    goto/16 :goto_8

    .line 296
    :cond_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Integer;

    .line 297
    .local v3, "mValue":[Ljava/lang/Integer;
    const-string v4, "XpIcmAgent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ID_TEMP_ADJ_REQUEST  [0]:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v3, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " [1]:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v3, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    aget-object v4, v3, v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 299
    aget-object v4, v3, v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 300
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    if-eqz v4, :cond_c

    .line 301
    const/4 v4, 0x0

    .line 303
    .local v4, "level":F
    :try_start_0
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v5}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacTempDriverValue()F

    move-result v5

    .line 304
    .local v5, "temperature":F
    const/high16 v6, 0x41900000    # 18.0f

    const/high16 v7, 0x42000000    # 32.0f

    if-nez v0, :cond_2

    .line 305
    int-to-float v8, v1

    add-float/2addr v5, v8

    .line 306
    cmpl-float v8, v5, v7

    if-lez v8, :cond_1

    move v8, v7

    goto :goto_0

    :cond_1
    move v8, v5

    :goto_0
    move v4, v8

    goto :goto_2

    .line 308
    :cond_2
    int-to-float v8, v1

    sub-float v8, v5, v8

    cmpl-float v8, v8, v6

    if-lez v8, :cond_3

    int-to-float v8, v1

    sub-float v8, v5, v8

    goto :goto_1

    :cond_3
    move v8, v6

    :goto_1
    move v4, v8

    .line 310
    :goto_2
    const-string v8, "XpIcmAgent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "try to setHvacWindSpeedLevel to :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    cmpl-float v6, v4, v6

    if-ltz v6, :cond_4

    cmpg-float v6, v4, v7

    if-gtz v6, :cond_4

    .line 312
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v6, v4}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacTempDriverValue(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .end local v5    # "temperature":F
    :cond_4
    goto :goto_3

    .line 313
    :catch_0
    move-exception v5

    .line 314
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 316
    .end local v4    # "level":F
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_3
    goto/16 :goto_8

    .line 273
    .end local v3    # "mValue":[Ljava/lang/Integer;
    :cond_5
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Integer;

    .line 274
    .restart local v3    # "mValue":[Ljava/lang/Integer;
    const-string v4, "XpIcmAgent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ID_WIND_SPD_ADJ_REQUEST  [0]:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v3, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " [1]:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v3, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    aget-object v4, v3, v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 276
    aget-object v4, v3, v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 277
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    if-eqz v4, :cond_c

    .line 278
    move v4, v6

    .line 280
    .local v4, "windSpeed":I
    :try_start_1
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v5}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacWindSpeedLevel()I

    move-result v5

    move v2, v5

    .line 281
    const/4 v5, 0x7

    if-nez v0, :cond_7

    .line 282
    add-int/2addr v2, v1

    .line 283
    if-le v2, v5, :cond_6

    move v6, v5

    goto :goto_4

    :cond_6
    move v6, v2

    :goto_4
    move v4, v6

    goto :goto_5

    .line 285
    :cond_7
    if-le v2, v1, :cond_8

    sub-int v6, v2, v1

    nop

    :cond_8
    move v4, v6

    .line 287
    :goto_5
    const-string v6, "XpIcmAgent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "try to setHvacWindSpeedLevel to :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    if-ltz v4, :cond_9

    if-gt v4, v5, :cond_9

    .line 289
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v5, v4}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacWindSpeedLevel(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 292
    :cond_9
    goto :goto_6

    .line 290
    :catch_1
    move-exception v5

    .line 291
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 293
    .end local v4    # "windSpeed":I
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_6
    goto :goto_8

    .line 319
    .end local v3    # "mValue":[Ljava/lang/Integer;
    :cond_a
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 320
    .local v3, "mode":I
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    if-eqz v4, :cond_c

    .line 323
    if-lt v3, v5, :cond_b

    const/4 v4, 0x4

    if-gt v3, v4, :cond_b

    .line 324
    :try_start_2
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v4, v3}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacWindBlowMode(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    .line 325
    :catch_2
    move-exception v4

    .line 326
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .end local v3    # "mode":I
    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_8

    .line 327
    .restart local v3    # "mode":I
    :cond_b
    :goto_7
    nop

    .line 331
    .end local v3    # "mode":I
    :cond_c
    :goto_8
    return-void
.end method

.method protected initCarListener()V
    .locals 5

    .line 73
    const-string v0, "XpIcmAgent"

    const-string v1, "initCarListener()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mAudioManager:Landroid/media/AudioManager;

    .line 77
    :cond_0
    const-string v0, "time_12_24"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 78
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent$1;

    new-instance v4, Lcom/xiaopeng/xuiservice/utils/UiHandler;

    invoke-direct {v4}, Lcom/xiaopeng/xuiservice/utils/UiHandler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent$1;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;Landroid/os/Handler;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 87
    return-void
.end method

.method protected needConnectCar()Z
    .locals 1

    .line 516
    const/4 v0, 0x0

    return v0
.end method

.method protected needConnectXUI()Z
    .locals 1

    .line 521
    const/4 v0, 0x1

    return v0
.end method

.method protected onCarManagerInited()V
    .locals 2

    .line 91
    const-string v0, "XpIcmAgent"

    const-string v1, "onCarManagerInited"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string/jumbo v0, "xp_icm"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/icm/CarIcmManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    .line 93
    const-string v0, "hvac"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/hvac/CarHvacManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    .line 94
    const-string/jumbo v0, "xp_bcm"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    .line 96
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->sendSysReadySyncSignal()V

    .line 97
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->sendTimeFormatSync()V

    .line 99
    return-void
.end method

.method public onInit()V
    .locals 0

    .line 102
    return-void
.end method

.method public onRelease()V
    .locals 0

    .line 106
    return-void
.end method

.method public sendEventMsg(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mHandler:Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 168
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 169
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 170
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mHandler:Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->sendMessage(Landroid/os/Message;)Z

    .line 171
    return-void
.end method

.method public sendLyricsMessage([B)V
    .locals 1
    .param p1, "lyric"    # [B

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    if-nez v0, :cond_0

    .line 135
    return-void

    .line 138
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/icm/CarIcmManager;->sendLyricsMessage([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setCduReady(I)V
    .locals 3
    .param p1, "ready"    # I

    .line 118
    const-string v0, "XpIcmAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCduReady "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    sput p1, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mCduReady:I

    .line 120
    return-void
.end method

.method public setMusicInfo([B[B)V
    .locals 1
    .param p1, "basic"    # [B
    .param p2, "image"    # [B

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    if-nez v0, :cond_0

    .line 124
    return-void

    .line 127
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/icm/CarIcmManager;->setMusicInfo([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setNetRadioInfo([B[B)V
    .locals 1
    .param p1, "basic"    # [B
    .param p2, "image"    # [B

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    if-nez v0, :cond_0

    .line 146
    return-void

    .line 149
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/icm/CarIcmManager;->setNetRadioInfo([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setRadioInfo([B[B)V
    .locals 1
    .param p1, "basic"    # [B
    .param p2, "image"    # [B

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    if-nez v0, :cond_0

    .line 157
    return-void

    .line 160
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/icm/CarIcmManager;->setRadioInfo([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
