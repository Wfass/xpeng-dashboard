.class public Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/SelfCheckUtil;
.super Ljava/lang/Object;
.source "SelfCheckUtil.java"


# static fields
.field private static final KEY_SETTINGS_SYSTEM_CAR_CHECKED:Ljava/lang/String; = "info_car_check_enable"

.field private static final TAG:Ljava/lang/String; = "SelfCheckUtil"

.field private static final mContentObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/SelfCheckUtil$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/SelfCheckUtil$1;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/SelfCheckUtil;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSetting()V
    .locals 4

    const-string v0, "isSupportNewSelfCheckArch"

    .line 827
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 828
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "info_car_check_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSetting, value = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SelfCheckUtil"

    invoke-static {v3, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 832
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/SelfCheckUtil;->startCheck()V

    goto :goto_0

    .line 834
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/SelfCheckUtil;->stopCheck()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static getCheckResult(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "persist.sys.selftest.mock"

    const/4 v1, 0x0

    .line 61
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "persist.sys.selftest.ok"

    const/4 v1, 0x1

    .line 62
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/SelfCheckUtil;->mockResultData(Ljava/lang/String;Z)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "isSupportNewSelfCheckArch"

    .line 64
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    invoke-static {p0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/SelfCheckUtil;->getRealResultForNewArch(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;

    move-result-object p0

    return-object p0

    .line 67
    :cond_1
    invoke-static {p0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/SelfCheckUtil;->getRealResultForOldArch(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;

    move-result-object p0

    return-object p0
.end method

.method private static getCommonResult(Landroid/car/diagnostic/XpDiagnosticManager;Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "manager",
            "key"
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;-><init>()V

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 89
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x2

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "ID_VCU_GEAR_WARNING"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_1

    :sswitch_1
    const-string v4, "ID_BCM_LOWBEAM_FAIL"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_2
    const-string v4, "ID_BCM_HIGHTBEAM_FAIL"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_1

    :sswitch_3
    const-string v4, "ID_BCM_LTURNLAMP_FAIL"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_4
    const-string v4, "ID_ESP_ABS_FAULT"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_1

    :sswitch_5
    const-string v4, "ID_BCM_SYSERROR_WARN"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    goto :goto_1

    :sswitch_6
    const-string v4, "ID_BCM_RTURNLAMP_FAIL"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    move v4, v1

    :goto_1
    packed-switch v4, :pswitch_data_0

    const/4 p0, 0x0

    move-object v0, p0

    goto/16 :goto_9

    .line 128
    :pswitch_0
    invoke-virtual {p0}, Landroid/car/diagnostic/XpDiagnosticManager;->getBcmSystemFailureState()I

    move-result v1

    if-ne v1, v3, :cond_1

    move p0, v3

    goto :goto_2

    :cond_1
    move p0, v2

    .line 129
    :goto_2
    invoke-virtual {v0, p0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    const-string p0, "266_PEPS_SysErrorWarming"

    .line 130
    invoke-virtual {v0, p0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->addDetailResult(Ljava/lang/String;I)V

    goto/16 :goto_9

    .line 122
    :pswitch_1
    invoke-virtual {p0}, Landroid/car/diagnostic/XpDiagnosticManager;->getRightTurnLampFailureState()I

    move-result v1

    if-ne v1, v3, :cond_2

    move p0, v3

    goto :goto_3

    :cond_2
    move p0, v2

    .line 123
    :goto_3
    invoke-virtual {v0, p0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    const-string p0, "318_BCM_RTurnLampFailure"

    .line 124
    invoke-virtual {v0, p0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->addDetailResult(Ljava/lang/String;I)V

    goto/16 :goto_9

    .line 116
    :pswitch_2
    invoke-virtual {p0}, Landroid/car/diagnostic/XpDiagnosticManager;->getLeftTurnLampFailureState()I

    move-result v1

    if-ne v1, v3, :cond_3

    move p0, v3

    goto :goto_4

    :cond_3
    move p0, v2

    .line 117
    :goto_4
    invoke-virtual {v0, p0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    const-string p0, "318_BCM_LTurnLampFailure"

    .line 118
    invoke-virtual {v0, p0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->addDetailResult(Ljava/lang/String;I)V

    goto :goto_9

    .line 110
    :pswitch_3
    invoke-virtual {p0}, Landroid/car/diagnostic/XpDiagnosticManager;->getLowBeamFailureState()I

    move-result v1

    if-ne v1, v3, :cond_4

    move p0, v3

    goto :goto_5

    :cond_4
    move p0, v2

    .line 111
    :goto_5
    invoke-virtual {v0, p0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    const-string p0, "318_BCM_LowBeamFailure"

    .line 112
    invoke-virtual {v0, p0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->addDetailResult(Ljava/lang/String;I)V

    goto :goto_9

    .line 104
    :pswitch_4
    invoke-virtual {p0}, Landroid/car/diagnostic/XpDiagnosticManager;->getHighBeamFailureState()I

    move-result v1

    if-ne v1, v3, :cond_5

    move p0, v3

    goto :goto_6

    :cond_5
    move p0, v2

    .line 105
    :goto_6
    invoke-virtual {v0, p0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    const-string p0, "318_BCM_HighBeamOutputFailure"

    .line 106
    invoke-virtual {v0, p0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->addDetailResult(Ljava/lang/String;I)V

    goto :goto_9

    .line 98
    :pswitch_5
    invoke-virtual {p0}, Landroid/car/diagnostic/XpDiagnosticManager;->getGearWarningInfo()I

    move-result v1

    if-ne v1, v5, :cond_6

    move p0, v3

    goto :goto_7

    :cond_6
    move p0, v2

    .line 99
    :goto_7
    invoke-virtual {v0, p0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    const-string p0, "182_VCU_GearWarning"

    .line 100
    invoke-virtual {v0, p0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->addDetailResult(Ljava/lang/String;I)V

    goto :goto_9

    .line 92
    :pswitch_6
    invoke-virtual {p0}, Landroid/car/diagnostic/XpDiagnosticManager;->getAbsFailureState()I

    move-result v1

    if-ne v1, v3, :cond_7

    move p0, v3

    goto :goto_8

    :cond_7
    move p0, v2

    .line 93
    :goto_8
    invoke-virtual {v0, p0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    const-string p0, "1A7_ESP_ABSFault"

    .line 94
    invoke-virtual {v0, p0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->addDetailResult(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception p0

    .line 137
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setErrorCode(I)V

    .line 139
    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->addDetailResult(Ljava/lang/String;I)V

    .line 140
    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    :goto_9
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e8a77b3 -> :sswitch_6
        0x1567fff3 -> :sswitch_5
        0x32f92114 -> :sswitch_4
        0x4642ce93 -> :sswitch_3
        0x512c0d13 -> :sswitch_2
        0x5a8d88d1 -> :sswitch_1
        0x5aeb3b07 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getDetailResult(Ljava/lang/String;[I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;",
            ">;"
        }
    .end annotation

    .line 756
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 757
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "ID_TPMS_WARNING_TIRE_TEMPERATURE_ALL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v7, v2

    goto :goto_0

    :sswitch_1
    const-string v1, "ID_TPMS_TIRE_PRESSURE_SENSOR_STATUS_ALL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v7, v3

    goto :goto_0

    :sswitch_2
    const-string v1, "ID_HVAC_COMPRESSOR_ERROR_INFO"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v7, v4

    goto :goto_0

    :sswitch_3
    const-string v1, "ID_VCU_BATTERY_PTC_ERROR_INFO"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move v7, v5

    goto :goto_0

    :sswitch_4
    const-string v1, "ID_BCM_MSM_ERROR_INFO"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move v7, v6

    :goto_0
    const-string v1, " result size is wrong, size="

    const-string v8, " getDetailResult key="

    const-string v9, "SelfCheckUtil"

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_1

    .line 759
    :pswitch_0
    array-length v7, p1

    if-eq v7, v2, :cond_5

    .line 760
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 763
    :cond_5
    new-instance p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;

    aget v1, p1, v6

    const-string v2, "TPMS_W_TempFL"

    invoke-direct {p0, v2, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    new-instance p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;

    aget v1, p1, v5

    const-string v2, "TPMS_W_TempFR"

    invoke-direct {p0, v2, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    new-instance p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;

    aget v1, p1, v4

    const-string v2, "TPMS_W_TempRL"

    invoke-direct {p0, v2, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    new-instance p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;

    aget p1, p1, v3

    const-string v1, "TPMS_W_TempRR"

    invoke-direct {p0, v1, p1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 769
    :pswitch_1
    array-length v7, p1

    if-eq v7, v2, :cond_6

    .line 770
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 773
    :cond_6
    new-instance p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;

    aget v1, p1, v6

    const-string v2, "33A_TPMS_FL_SensorStatus"

    invoke-direct {p0, v2, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 774
    new-instance p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;

    aget v1, p1, v5

    const-string v2, "33A_TPMS_FR_SensorStatus"

    invoke-direct {p0, v2, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    new-instance p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;

    aget v1, p1, v4

    const-string v2, "33A_TPMS_RL_SensorStatus"

    invoke-direct {p0, v2, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 776
    new-instance p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;

    aget p1, p1, v3

    const-string v1, "33A_TPMS_RR_SensorStatus"

    invoke-direct {p0, v1, p1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 798
    :pswitch_2
    array-length v2, p1

    if-eq v2, v4, :cond_7

    .line 799
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 802
    :cond_7
    new-instance p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;

    aget v1, p1, v6

    const-string v2, "369_Ecomp_CompStt_Fault"

    invoke-direct {p0, v2, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 803
    new-instance p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;

    aget p1, p1, v5

    const-string v1, "369_Ecomp_FaultCause_SC"

    invoke-direct {p0, v1, p1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 806
    :pswitch_3
    array-length v2, p1

    if-eq v2, v4, :cond_8

    .line 807
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 810
    :cond_8
    new-instance p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;

    aget v1, p1, v6

    const-string v2, "36E_PTC025_InternalError"

    invoke-direct {p0, v2, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 811
    new-instance p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;

    aget p1, p1, v5

    const-string v1, "36E_PTC025_ElementError"

    invoke-direct {p0, v1, p1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 779
    :pswitch_4
    array-length v7, p1

    const/16 v10, 0xd

    if-eq v7, v10, :cond_9

    .line 780
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 783
    :cond_9
    new-instance p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;

    aget v1, p1, v6

    const-string v6, "380_MSM_TiltingForwardSW_Err"

    invoke-direct {p0, v6, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 784
    new-instance p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;

    aget v1, p1, v5

    const-string v5, "380_MSM_TiltingBackwardSW_Err"

    invoke-direct {p0, v5, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 785
    new-instance p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;

    aget v1, p1, v4

    const-string v4, "380_MSM_HorizonalForwardSW_Err"

    invoke-direct {p0, v4, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 786
    new-instance p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;

    aget v1, p1, v3

    const-string v3, "380_MSM_HorizonalBackwardSW_Err"

    invoke-direct {p0, v3, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 787
    new-instance p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;

    aget v1, p1, v2

    const-string v2, "380_MSM_VerticalUpwardSW_Err"

    invoke-direct {p0, v2, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 788
    new-instance p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;

    const/4 v1, 0x5

    aget v1, p1, v1

    const-string v2, "380_MSM_VerticalDownwardSW_Err"

    invoke-direct {p0, v2, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 789
    new-instance p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;

    const/4 v1, 0x6

    aget v1, p1, v1

    const-string v2, "380_MSM_HorizonalMotor_Err"

    invoke-direct {p0, v2, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    new-instance p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;

    const/4 v1, 0x7

    aget v1, p1, v1

    const-string v2, "380_MSM_VerticalMotor_Err"

    invoke-direct {p0, v2, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    new-instance p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;

    const/16 v1, 0x8

    aget v1, p1, v1

    const-string v2, "380_MSM_TiltingMotor_Err"

    invoke-direct {p0, v2, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 792
    new-instance p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;

    const/16 v1, 0x9

    aget v1, p1, v1

    const-string v2, "380_MSM_HorizonalHall_Err"

    invoke-direct {p0, v2, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 793
    new-instance p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;

    const/16 v1, 0xa

    aget v1, p1, v1

    const-string v2, "380_MSM_VerticalHall_Err"

    invoke-direct {p0, v2, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 794
    new-instance p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;

    const/16 v1, 0xb

    aget v1, p1, v1

    const-string v2, "380_MSM_TiltingHall_Err"

    invoke-direct {p0, v2, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 795
    new-instance p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;

    const/16 v1, 0xc

    aget p1, p1, v1

    const-string v1, "380_MSM_ECU_Err"

    invoke-direct {p0, v1, p1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x3e21356c -> :sswitch_4
        0x1fe2332 -> :sswitch_3
        0x27b4e8b4 -> :sswitch_2
        0x4111fa9d -> :sswitch_1
        0x5c0ecdfb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getRealResultForNewArch(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 352
    new-instance v2, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;

    invoke-direct {v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;-><init>()V

    .line 353
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    const-string/jumbo v3, "xp_diagnostic"

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/IDiagnosticController;

    const/4 v3, -0x1

    const-string v4, "SelfCheckUtil"

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-nez v0, :cond_0

    .line 355
    invoke-virtual {v2, v5}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setErrorCode(I)V

    .line 356
    invoke-virtual {v2, v6}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    .line 357
    invoke-virtual {v2, v1, v3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->addDetailResult(Ljava/lang/String;I)V

    const-string v0, "DiagnosticController is null"

    .line 358
    invoke-static {v4, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 361
    :cond_0
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IDiagnosticController;->getManager()Landroid/car/diagnostic/XpDiagnosticManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "XpDiagnosticManager is null"

    .line 363
    invoke-static {v4, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 366
    :cond_1
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/SelfCheckUtil;->getCommonResult(Landroid/car/diagnostic/XpDiagnosticManager;Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;

    move-result-object v7

    if-eqz v7, :cond_2

    return-object v7

    :cond_2
    const/4 v7, 0x1

    .line 373
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x5

    const/4 v10, 0x7

    const/16 v11, 0xa

    const/4 v12, 0x6

    const/16 v13, 0x9

    const/4 v14, 0x4

    const/4 v15, 0x3

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v8, "ID_VCU_BCRUISE_ERR"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x15

    goto/16 :goto_1

    :sswitch_1
    const-string v8, "ID_LLU_ERR_ST"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v14

    goto/16 :goto_1

    :sswitch_2
    const-string v8, "ID_SRR_FLFAIL_ST"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x29

    goto/16 :goto_1

    :sswitch_3
    const-string v8, "ID_IBT_FAILURE_LAMP"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x20

    goto/16 :goto_1

    :sswitch_4
    const-string v8, "ID_VCU_DEADBATTERY_FLAG"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x1a

    goto/16 :goto_1

    :sswitch_5
    const-string v8, "ID_SRR_RLFAIL_ST"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x2b

    goto/16 :goto_1

    :sswitch_6
    const-string v8, "ID_VCU_THERMORUNAWAY_ST"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x16

    goto/16 :goto_1

    :sswitch_7
    const-string v8, "ID_ATLS_ERR_ST"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v9

    goto/16 :goto_1

    :sswitch_8
    const-string v8, "ID_SCU_ALCCTRL_REMIND"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x2f

    goto/16 :goto_1

    :sswitch_9
    const-string v8, "ID_MSMP_HEATSYS_ERR"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v11

    goto/16 :goto_1

    :sswitch_a
    const-string v8, " ID_IPUR_FAILST"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x1b

    goto/16 :goto_1

    :sswitch_b
    const-string v8, "ID_SCU_ISLC_SW"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x2e

    goto/16 :goto_1

    :sswitch_c
    const-string v8, "ID_BCM_REARFOG_FAIL"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v6

    goto/16 :goto_1

    :sswitch_d
    const-string v8, "ID_ESP_APBERR_ST"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x1e

    goto/16 :goto_1

    :sswitch_e
    const-string v8, "ID_VCU_LIQUIDHIGHTEMP_ERR"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x13

    goto/16 :goto_1

    :sswitch_f
    const-string v8, "ID_VCU_OBCMSG_LOST"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x19

    goto/16 :goto_1

    :sswitch_10
    const-string v8, "ID_DHC_ERR"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string v8, "ID_MSMD_HEATSYS_ERR"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x8

    goto/16 :goto_1

    :sswitch_12
    const-string v8, "ID_CDC_DATAUPLOAD_ST"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x22

    goto/16 :goto_1

    :sswitch_13
    const-string v8, "ID_VCU_WATERSENSOR_ERR"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x14

    goto/16 :goto_1

    :sswitch_14
    const-string v8, "ID_MSMD_VENTILATIONMOTOR_ERR"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v10

    goto/16 :goto_1

    :sswitch_15
    const-string v8, "ID_SCU_LONGCTRL_REMIND"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x2d

    goto/16 :goto_1

    :sswitch_16
    const-string v8, "ID_VCU_EBS_ERR_DSP"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x12

    goto/16 :goto_1

    :sswitch_17
    const-string v8, "ID_VCU_CHGPORTHOT_DSP"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x18

    goto/16 :goto_1

    :sswitch_18
    const-string v8, "ID_ESP_AVH_FAULT"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x1f

    goto/16 :goto_1

    :sswitch_19
    const-string v8, "ID_ALS_ERROR_ST"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0xf

    goto/16 :goto_1

    :sswitch_1a
    const-string v8, "ID_SCU_RCTA_SW"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x27

    goto/16 :goto_1

    :sswitch_1b
    const-string v8, "ID_SCU_RCW_SW"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x28

    goto/16 :goto_1

    :sswitch_1c
    const-string v8, "ID_VCU_EVERRLAMP_DSP"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x11

    goto/16 :goto_1

    :sswitch_1d
    const-string v8, "ID_AVAS_FAUL"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0xb

    goto/16 :goto_1

    :sswitch_1e
    const-string v8, "ID_SCU_IHB_SW"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x24

    goto/16 :goto_1

    :sswitch_1f
    const-string v8, "ID_TPMS_ABNORMALPRWARN"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0xd

    goto/16 :goto_1

    :sswitch_20
    const-string v8, "ID_BCM_RDTROUTPUT_FAIL"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v7

    goto/16 :goto_1

    :sswitch_21
    const-string v8, "ID_XPU_XPU_FAIL_ST"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x23

    goto/16 :goto_1

    :sswitch_22
    const-string v8, "ID_SCU_ICM_APAERR_TIPS"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x30

    goto/16 :goto_1

    :sswitch_23
    const-string v8, "ID_SCU_DOW_SW"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x26

    goto/16 :goto_1

    :sswitch_24
    const-string v8, "ID_IPUF_FAULT"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x1c

    goto/16 :goto_1

    :sswitch_25
    const-string v8, "ID_SCU_BSD_SW"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x25

    goto/16 :goto_1

    :sswitch_26
    const-string v8, "ID_SRR_FRFAIL_ST"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x2a

    goto/16 :goto_1

    :sswitch_27
    const-string v8, "ID_EPS_WARN_LAMP"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x21

    goto/16 :goto_1

    :sswitch_28
    const-string v8, "ID_BCM_PARKINGLAMP_FAIL"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v15

    goto :goto_1

    :sswitch_29
    const-string v8, "ID_MSMD_ECU_ERR"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v12

    goto :goto_1

    :sswitch_2a
    const-string v8, "ID_SRR_RRFAIL_ST"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x2c

    goto :goto_1

    :sswitch_2b
    const-string v8, "ID_TPMS_SYSFAULTWARN"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0xc

    goto :goto_1

    :sswitch_2c
    const-string v8, "ID_BCM_LDTROUTPUT_FAIL"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v5

    goto :goto_1

    :sswitch_2d
    const-string v8, "ID_MSMP_ECU_ERR"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v13

    goto :goto_1

    :sswitch_2e
    const-string v8, "ID_ESP_ESP_FAULT"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x1d

    goto :goto_1

    :sswitch_2f
    const-string v8, "ID_VCU_POWERLIMITATION_DSP"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x17

    goto :goto_1

    :sswitch_30
    const-string v8, "ID_BCM_AIRBAG_FAULT_ST"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_3

    const/16 v8, 0xe

    goto :goto_1

    :cond_3
    :goto_0
    move v8, v3

    :goto_1
    const-string v16, "224_iBCM_RDTROutputStFailure"

    packed-switch v8, :pswitch_data_0

    move-object v0, v1

    goto/16 :goto_38

    :pswitch_0
    :try_start_1
    const-string v16, "2B8_SCU_ICM_APAErrorTips"

    .line 703
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getApaFailureState()I

    move-result v3

    if-ne v3, v5, :cond_4

    move v0, v7

    goto :goto_2

    :cond_4
    move v0, v6

    .line 704
    :goto_2
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_1
    const-string v16, "232_XPU_ALCCtrlRemind"

    .line 697
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getAlcCtrlRemindInfo()I

    move-result v3

    if-ne v3, v11, :cond_5

    move v0, v7

    goto :goto_3

    :cond_5
    move v0, v6

    .line 698
    :goto_3
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_2
    const-string v16, "232_XPU_ISLCSt"

    .line 690
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getIslcState()I

    move-result v3

    if-eq v3, v12, :cond_7

    if-ne v3, v10, :cond_6

    goto :goto_4

    :cond_6
    move v0, v6

    goto :goto_5

    :cond_7
    :goto_4
    move v0, v7

    .line 691
    :goto_5
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_3
    const-string v16, "232_XPU_LongCtrlRemind"

    .line 684
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getScuLongCtrlRemindInfo()I

    move-result v3

    if-ne v3, v13, :cond_8

    move v0, v7

    goto :goto_6

    :cond_8
    move v0, v6

    .line 685
    :goto_6
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_4
    const-string v16, "277_SRR_RRFailureSt"

    .line 676
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getRrSrrFailureState()I

    move-result v3

    if-ne v3, v5, :cond_9

    move v0, v7

    goto :goto_7

    :cond_9
    move v0, v6

    .line 677
    :goto_7
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_5
    const-string v16, "277_SRR_RLFailureSt"

    .line 670
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getRlSrrFailureState()I

    move-result v3

    if-ne v3, v5, :cond_a

    move v0, v7

    goto :goto_8

    :cond_a
    move v0, v6

    .line 671
    :goto_8
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_6
    const-string v16, "277_SRR_FRFailureSt"

    .line 664
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getFrSrrFailureState()I

    move-result v3

    if-ne v3, v5, :cond_b

    move v0, v7

    goto :goto_9

    :cond_b
    move v0, v6

    .line 665
    :goto_9
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_7
    const-string v16, "277_SRR_FLFailureSt"

    .line 658
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getFlSrrFailureState()I

    move-result v3

    if-ne v3, v5, :cond_c

    move v0, v7

    goto :goto_a

    :cond_c
    move v0, v6

    .line 659
    :goto_a
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_8
    const-string v16, "277_SRR_RCWSt"

    .line 652
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getRcwState()I

    move-result v3

    if-ne v3, v5, :cond_d

    move v0, v7

    goto :goto_b

    :cond_d
    move v0, v6

    .line 653
    :goto_b
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_9
    const-string v16, "277_SRR_RCTASt"

    .line 646
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getRctaState()I

    move-result v3

    if-ne v3, v5, :cond_e

    move v0, v7

    goto :goto_c

    :cond_e
    move v0, v6

    .line 647
    :goto_c
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_a
    const-string v16, "277_SRR_DOWSt"

    .line 640
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getDowState()I

    move-result v3

    if-ne v3, v5, :cond_f

    move v0, v7

    goto :goto_d

    :cond_f
    move v0, v6

    .line 641
    :goto_d
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_b
    const-string v16, "277_SRR_BSDSt"

    .line 634
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getBsdState()I

    move-result v3

    if-ne v3, v5, :cond_10

    move v0, v7

    goto :goto_e

    :cond_10
    move v0, v6

    .line 635
    :goto_e
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_c
    const-string v16, "229_XPU_IHBSt"

    .line 625
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getIhbState()I

    move-result v3

    if-eq v3, v14, :cond_12

    if-ne v3, v9, :cond_11

    goto :goto_f

    :cond_11
    move v0, v6

    goto :goto_10

    :cond_12
    :goto_f
    move v0, v7

    .line 626
    :goto_10
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_d
    const-string v16, "234_XPU_XPU_FailureSt"

    .line 619
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getXpuFailureState()I

    move-result v3

    if-ne v3, v7, :cond_13

    move v0, v7

    goto :goto_11

    :cond_13
    move v0, v6

    .line 620
    :goto_11
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_e
    const-string v16, "2A6_CDC_DataUpload_St"

    .line 612
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getCdcFailureState()I

    move-result v3

    if-ne v3, v7, :cond_14

    move v0, v7

    goto :goto_12

    :cond_14
    move v0, v6

    .line 613
    :goto_12
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_f
    const-string v16, "1B0_EPS_WarnLamp"

    .line 605
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getEpsFailureState()I

    move-result v3

    if-ne v3, v7, :cond_15

    move v0, v7

    goto :goto_13

    :cond_15
    move v0, v6

    .line 606
    :goto_13
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_10
    const-string v16, "18A_IBT_FailureLampReq"

    .line 598
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getIbtFailureState()I

    move-result v3

    if-ne v3, v7, :cond_16

    move v0, v7

    goto :goto_14

    :cond_16
    move v0, v6

    .line 599
    :goto_14
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_11
    const-string v16, "1A7_ESP_AVHFault"

    .line 590
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getAvhFailureState()I

    move-result v3

    if-ne v3, v7, :cond_17

    move v0, v7

    goto :goto_15

    :cond_17
    move v0, v6

    .line 591
    :goto_15
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_12
    const-string v16, "1B2_ESP_APBErrSt"

    .line 584
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getApbFailureState()I

    move-result v3

    if-ne v3, v7, :cond_18

    move v0, v7

    goto :goto_16

    :cond_18
    move v0, v6

    .line 585
    :goto_16
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_13
    const-string v16, "1A7_ESP_ESPFault"

    .line 578
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getEspFailureState()I

    move-result v3

    if-ne v3, v7, :cond_19

    move v0, v7

    goto :goto_17

    :cond_19
    move v0, v6

    .line 579
    :goto_17
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_14
    const-string v16, "IPUF_FailSt"

    .line 568
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getFrontIpuFailureState()I

    move-result v3

    if-eq v3, v7, :cond_1b

    if-eq v3, v5, :cond_1b

    if-ne v3, v15, :cond_1a

    goto :goto_18

    :cond_1a
    move v0, v6

    goto :goto_19

    :cond_1b
    :goto_18
    move v0, v7

    .line 569
    :goto_19
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_15
    const-string v16, "IPUR_FailSt"

    .line 559
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getRearIpuFailureState()I

    move-result v3

    if-eq v3, v7, :cond_1d

    if-eq v3, v5, :cond_1d

    if-ne v3, v15, :cond_1c

    goto :goto_1a

    :cond_1c
    move v0, v6

    goto :goto_1b

    :cond_1d
    :goto_1a
    move v0, v7

    .line 560
    :goto_1b
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_16
    const-string v16, "24A_VCU_DeadBatteryFlag"

    .line 551
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getBatteryDeadState()I

    move-result v3

    if-eqz v3, :cond_1e

    move v0, v7

    goto :goto_1c

    :cond_1e
    move v0, v6

    .line 552
    :goto_1c
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_17
    const-string v16, "24A_VCU_OBCMsgLost"

    .line 545
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getObcMsgLostState()I

    move-result v3

    if-eqz v3, :cond_1f

    move v0, v7

    goto :goto_1d

    :cond_1f
    move v0, v6

    .line 546
    :goto_1d
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_18
    const-string v16, "24A_VCU_ChgPortHot_Dsp"

    .line 539
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getChargePortHotState()I

    move-result v3

    if-eqz v3, :cond_20

    move v0, v7

    goto :goto_1e

    :cond_20
    move v0, v6

    .line 540
    :goto_1e
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_19
    const-string v16, "24A_VCU_PowerLimitationDisp"

    .line 533
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getPowerLimitationState()I

    move-result v3

    if-eqz v3, :cond_21

    move v0, v7

    goto :goto_1f

    :cond_21
    move v0, v6

    .line 534
    :goto_1f
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_1a
    const-string v16, "24A_VCU_ThermorunawaySt"

    .line 527
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getThermalRunawayState()I

    move-result v3

    if-eqz v3, :cond_22

    move v0, v7

    goto :goto_20

    :cond_22
    move v0, v6

    .line 528
    :goto_20
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_1b
    const-string v16, "24A_VCU_bCruiseErr_Dsp"

    .line 521
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getBCruiseFailureState()I

    move-result v3

    if-ne v3, v7, :cond_23

    move v0, v7

    goto :goto_21

    :cond_23
    move v0, v6

    .line 522
    :goto_21
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_1c
    const-string v16, "24A_VCU_WaterSensorErr"

    .line 515
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getWaterSensorFailureState()I

    move-result v3

    if-ne v3, v7, :cond_24

    move v0, v7

    goto :goto_22

    :cond_24
    move v0, v6

    .line 516
    :goto_22
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_1d
    const-string v16, "24A_VCU_LiquidLevelHighTempErr"

    .line 509
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getLiquidHighTempState()I

    move-result v3

    if-eqz v3, :cond_25

    move v0, v7

    goto :goto_23

    :cond_25
    move v0, v6

    .line 510
    :goto_23
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_1e
    const-string v16, "24A_VCU_EBS_Error_Dsp"

    .line 503
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getEbsFailureState()I

    move-result v3

    if-ne v3, v7, :cond_26

    move v0, v7

    goto :goto_24

    :cond_26
    move v0, v6

    .line 504
    :goto_24
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_1f
    const-string v16, "24A_VCU_EVErrLampDisp"

    .line 497
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getEvSysFailureState()I

    move-result v3

    if-ne v3, v7, :cond_27

    move v0, v7

    goto :goto_25

    :cond_27
    move v0, v6

    .line 498
    :goto_25
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_20
    const-string v16, "31C_DHC_Err"

    .line 489
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getDhcFailureState()I

    move-result v3

    if-ne v3, v7, :cond_28

    move v0, v7

    goto :goto_26

    :cond_28
    move v0, v6

    .line 490
    :goto_26
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_21
    const-string v16, "322_ALS_ErrorSt"

    .line 482
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getAlsFailureState()I

    move-result v3

    if-eqz v3, :cond_29

    move v0, v7

    goto :goto_27

    :cond_29
    move v0, v6

    .line 483
    :goto_27
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_22
    const-string v16, "180_SRS_AirbagFaultSt"

    .line 474
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getAirbagFailureState()I

    move-result v3

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetAirbagFailureState: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v3, v7, :cond_2a

    move v0, v7

    goto :goto_28

    :cond_2a
    move v0, v6

    .line 476
    :goto_28
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_23
    const-string v16, "3B4_TPMS_AbnormalPrWarn"

    .line 467
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getAbnormalTirePressureState()I

    move-result v3

    if-ne v3, v7, :cond_2b

    move v0, v7

    goto :goto_29

    :cond_2b
    move v0, v6

    .line 468
    :goto_29
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_24
    const-string v16, "3B4_TPMS_SysFaultWarn"

    .line 460
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getTpmsSysFailureState()I

    move-result v3

    if-ne v3, v7, :cond_2c

    move v0, v7

    goto :goto_2a

    :cond_2c
    move v0, v6

    .line 461
    :goto_2a
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_25
    const-string v16, "2D1_AVAS_FaultSt"

    .line 453
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getAvasFailureState()I

    move-result v3

    if-ne v3, v7, :cond_2d

    move v0, v7

    goto :goto_2b

    :cond_2d
    move v0, v6

    .line 454
    :goto_2b
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_26
    const-string v16, "31A_MSMP_HeatingSysErr"

    .line 445
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getPassengerMsmHeatSysFailureState()I

    move-result v3

    if-ne v3, v7, :cond_2e

    move v0, v7

    goto :goto_2c

    :cond_2e
    move v0, v6

    .line 446
    :goto_2c
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_27
    const-string v16, "31A_MSMP_ECUErr"

    .line 439
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getPassengerMsmFailureState()I

    move-result v3

    if-ne v3, v7, :cond_2f

    move v0, v7

    goto :goto_2d

    :cond_2f
    move v0, v6

    .line 440
    :goto_2d
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_28
    const-string v16, "318_MSMD_HeatingSysErr"

    .line 430
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getDriverMsmHeatSysFailureState()I

    move-result v3

    if-ne v3, v7, :cond_30

    move v0, v7

    goto :goto_2e

    :cond_30
    move v0, v6

    .line 431
    :goto_2e
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_29
    const-string v16, "318_MSMD_VentilationMotorErr"

    .line 424
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getDriverMsmVentilationMotorFailureState()I

    move-result v3

    if-ne v3, v7, :cond_31

    move v0, v7

    goto :goto_2f

    :cond_31
    move v0, v6

    .line 425
    :goto_2f
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_2a
    const-string v16, "318_MSMD_ECUErr"

    .line 418
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getDriverMsmFailureState()I

    move-result v3

    if-ne v3, v7, :cond_32

    move v0, v7

    goto :goto_30

    :cond_32
    move v0, v6

    .line 419
    :goto_30
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto/16 :goto_37

    :pswitch_2b
    const-string v16, "31D_ATLS_ErrSt"

    .line 410
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getAtlsFailureSate()I

    move-result v3

    if-ne v3, v7, :cond_33

    move v0, v7

    goto :goto_31

    :cond_33
    move v0, v6

    .line 411
    :goto_31
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto :goto_37

    :pswitch_2c
    const-string v16, "323_LLU_ErrorSt"

    .line 404
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getLluFailureState()I

    move-result v3

    if-ne v3, v7, :cond_34

    move v0, v7

    goto :goto_32

    :cond_34
    move v0, v6

    .line 405
    :goto_32
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto :goto_37

    :pswitch_2d
    const-string v16, "224_iBCM_ParkingLampOutputFailure"

    .line 396
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getParkingLampFailureState()I

    move-result v3

    if-ne v3, v7, :cond_35

    move v0, v7

    goto :goto_33

    :cond_35
    move v0, v6

    .line 397
    :goto_33
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto :goto_37

    .line 390
    :pswitch_2e
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getLeftDaytimeRunningLightFailureState()I

    move-result v3

    if-ne v3, v7, :cond_36

    move v0, v7

    goto :goto_34

    :cond_36
    move v0, v6

    .line 391
    :goto_34
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto :goto_37

    .line 384
    :pswitch_2f
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getRightDaytimeRunningLightFailureState()I

    move-result v3

    if-ne v3, v7, :cond_37

    move v0, v7

    goto :goto_35

    :cond_37
    move v0, v6

    .line 385
    :goto_35
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    goto :goto_37

    :pswitch_30
    const-string v16, "224_iBCM_RearFogFailure"

    .line 378
    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getRearFogLampFailureState()I

    move-result v3

    if-ne v3, v7, :cond_38

    move v0, v7

    goto :goto_36

    :cond_38
    move v0, v6

    .line 379
    :goto_36
    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    :goto_37
    move-object/from16 v0, v16

    .line 709
    :goto_38
    invoke-virtual {v2, v0, v3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->addDetailResult(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_39

    :catch_0
    move-exception v0

    .line 711
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " check error key="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 713
    invoke-virtual {v2, v7}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setErrorCode(I)V

    .line 714
    invoke-virtual {v2, v1, v3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->addDetailResult(Ljava/lang/String;I)V

    .line 715
    invoke-virtual {v2, v6}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    :goto_39
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4be18cd8 -> :sswitch_30
        -0x4a633e7a -> :sswitch_2f
        -0x34b3d9dc -> :sswitch_2e
        -0x330af755 -> :sswitch_2d
        -0x2efadf51 -> :sswitch_2c
        -0x2de4a6ac -> :sswitch_2b
        -0x2bd98eae -> :sswitch_2a
        -0x26402b61 -> :sswitch_29
        -0x224d2f1c -> :sswitch_28
        -0x1ff0f6aa -> :sswitch_27
        -0x1f0ec2ba -> :sswitch_26
        -0x1a5674d2 -> :sswitch_25
        -0x17733161 -> :sswitch_24
        -0x171c7e8b -> :sswitch_23
        -0x16234f46 -> :sswitch_22
        -0x141bf6c6 -> :sswitch_21
        -0x13d661cb -> :sswitch_20
        -0x13435a97 -> :sswitch_1f
        -0xf0073c2 -> :sswitch_1e
        -0xddf4f7a -> :sswitch_1d
        -0xab3e12d -> :sswitch_1c
        0x1e401b -> :sswitch_1b
        0x3720687 -> :sswitch_1a
        0x42c9d93 -> :sswitch_19
        0xaac16b5 -> :sswitch_18
        0x129d58a7 -> :sswitch_17
        0x1706de23 -> :sswitch_16
        0x1c921bff -> :sswitch_15
        0x1d41f8dc -> :sswitch_14
        0x1dc8675c -> :sswitch_13
        0x1e066554 -> :sswitch_12
        0x22754be5 -> :sswitch_11
        0x238f7221 -> :sswitch_10
        0x285a6877 -> :sswitch_f
        0x2904d333 -> :sswitch_e
        0x3252a08d -> :sswitch_d
        0x3ffafb9a -> :sswitch_c
        0x4237a7e4 -> :sswitch_b
        0x4302f396 -> :sswitch_a
        0x509999f1 -> :sswitch_9
        0x582cbdff -> :sswitch_8
        0x624e355c -> :sswitch_7
        0x62b3bd05 -> :sswitch_6
        0x64df6418 -> :sswitch_5
        0x65f3919d -> :sswitch_4
        0x6874e595 -> :sswitch_3
        0x71aa300c -> :sswitch_2
        0x732629e9 -> :sswitch_1
        0x7e289f02 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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

.method private static getRealResultForOldArch(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 147
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;-><init>()V

    .line 148
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v1

    const-string/jumbo v2, "xp_diagnostic"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/carmanager/controller/IDiagnosticController;

    const-string v2, "SelfCheckUtil"

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-nez v1, :cond_0

    .line 150
    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setErrorCode(I)V

    .line 151
    invoke-virtual {v0, v5}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    .line 152
    invoke-virtual {v0, p0, v3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->addDetailResult(Ljava/lang/String;I)V

    const-string p0, "DiagnosticController is null"

    .line 153
    invoke-static {v2, p0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 156
    :cond_0
    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IDiagnosticController;->getManager()Landroid/car/diagnostic/XpDiagnosticManager;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "XpDiagnosticManager is null"

    .line 158
    invoke-static {v2, p0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 161
    :cond_1
    invoke-static {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/SelfCheckUtil;->getCommonResult(Landroid/car/diagnostic/XpDiagnosticManager;Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;

    move-result-object v6

    if-eqz v6, :cond_2

    return-object v6

    :cond_2
    const/4 v6, 0x1

    new-array v7, v6, [I

    aput v3, v7, v5

    .line 167
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x3

    const/4 v10, 0x6

    const/4 v11, 0x7

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v8, "ID_VCU_AGS_ERROR"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v8, "ID_HVAC_PTC_ERROR"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_2
    const-string v8, "ID_CIU_DVR_STATUS"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_3
    const-string v8, "ID_TPMS_WARNING_TIRE_TEMPERATURE_ALL"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v3, v4

    goto/16 :goto_0

    :sswitch_4
    const-string v8, "ID_VCU_CCS_WORK_STATE"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v3, 0x5

    goto/16 :goto_0

    :sswitch_5
    const-string v8, "ID_SCU_ISLC_SW"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_6
    const-string v8, "ID_TPMS_TIRE_PRESSURE_SENSOR_STATUS_ALL"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v3, v9

    goto/16 :goto_0

    :sswitch_7
    const-string v8, "ID_HVAC_COMPRESSOR_ERROR_INFO"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_8
    const-string v8, "ID_VCU_DCDC_ERROR"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v3, v10

    goto/16 :goto_0

    :sswitch_9
    const-string v8, "ID_IPU_FAIL_ST"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string v8, "ID_CIU_SD_ST"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_b
    const-string v8, "ID_VCU_BATTERY_PTC_ERROR_INFO"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_c
    const-string v8, "ID_SCU_BSD_SW"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_d
    const-string v8, "ID_TPMS_SYSFAULTWARN"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v3, v6

    goto :goto_0

    :sswitch_e
    const-string v8, "ID_VCU_ELECTRIC_VACUUM_PUMP_ERROR"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v3, 0xa

    goto :goto_0

    :sswitch_f
    const-string v8, "ID_ESP_HDC_FAULT"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v3, v5

    goto :goto_0

    :sswitch_10
    const-string v8, "ID_BCM_MSM_ERROR_INFO"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v3, 0xd

    goto :goto_0

    :sswitch_11
    const-string v8, "ID_VCU_WARNING_BATTERY_OVERHEATING"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_12
    const-string v8, "ID_VCU_HVRLY_ADHESION_ST"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v3, 0xb

    goto :goto_0

    :sswitch_13
    const-string v8, "ID_VCU_ELECTRIC_MOTOR_SYSTEM_OVERHEATING"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v3, 0x8

    goto :goto_0

    :sswitch_14
    const-string v8, "ID_VCU_BATTERY_VOLTAGE_LOW"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v3, v11

    goto :goto_0

    :sswitch_15
    const-string v8, "ID_SCU_FCWAEB_SW"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v3, 0x11

    :cond_3
    :goto_0
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1e

    .line 326
    :pswitch_0
    invoke-virtual {v1}, Landroid/car/diagnostic/XpDiagnosticManager;->getBatteryPtcFailureStates()[I

    move-result-object v7

    .line 328
    array-length v1, v7

    move v3, v5

    :goto_1
    if-ge v3, v1, :cond_5

    aget v4, v7, v3

    if-eqz v4, :cond_4

    move v1, v6

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    move v1, v5

    .line 334
    :goto_2
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    .line 335
    invoke-static {p0, v7}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/SelfCheckUtil;->getDetailResult(Ljava/lang/String;[I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setDetailResult(Ljava/util/List;)V

    goto/16 :goto_1e

    .line 313
    :pswitch_1
    invoke-virtual {v1}, Landroid/car/diagnostic/XpDiagnosticManager;->getHvacCompressorFailureStates()[I

    move-result-object v7

    .line 315
    array-length v1, v7

    move v3, v5

    :goto_3
    if-ge v3, v1, :cond_7

    aget v4, v7, v3

    if-eqz v4, :cond_6

    move v1, v6

    goto :goto_4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    move v1, v5

    .line 321
    :goto_4
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    .line 322
    invoke-static {p0, v7}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/SelfCheckUtil;->getDetailResult(Ljava/lang/String;[I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setDetailResult(Ljava/util/List;)V

    goto/16 :goto_1e

    .line 307
    :pswitch_2
    invoke-virtual {v1}, Landroid/car/diagnostic/XpDiagnosticManager;->getHvacPtcFailureState()I

    move-result v1

    aput v1, v7, v5

    .line 308
    aget v1, v7, v5

    if-eqz v1, :cond_8

    move v1, v6

    goto :goto_5

    :cond_8
    move v1, v5

    :goto_5
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    const-string v1, "522_HVAC_HeaterErrorH"

    .line 309
    aget v3, v7, v5

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->addDetailResult(Ljava/lang/String;I)V

    goto/16 :goto_1e

    .line 301
    :pswitch_3
    invoke-virtual {v1}, Landroid/car/diagnostic/XpDiagnosticManager;->getBsdState()I

    move-result v1

    aput v1, v7, v5

    .line 302
    aget v1, v7, v5

    if-ne v1, v4, :cond_9

    move v1, v6

    goto :goto_6

    :cond_9
    move v1, v5

    :goto_6
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    const-string v1, "324_SCU_CDU_BSDSt"

    .line 303
    aget v3, v7, v5

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->addDetailResult(Ljava/lang/String;I)V

    goto/16 :goto_1e

    .line 294
    :pswitch_4
    invoke-virtual {v1}, Landroid/car/diagnostic/XpDiagnosticManager;->getAebState()I

    move-result v1

    aput v1, v7, v5

    .line 295
    aget v1, v7, v5

    if-eq v1, v4, :cond_b

    aget v1, v7, v5

    if-ne v1, v9, :cond_a

    goto :goto_7

    :cond_a
    move v1, v5

    goto :goto_8

    :cond_b
    :goto_7
    move v1, v6

    :goto_8
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    const-string v1, "324_SCU_CDU_AEBSt"

    .line 297
    aget v3, v7, v5

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->addDetailResult(Ljava/lang/String;I)V

    goto/16 :goto_1e

    .line 287
    :pswitch_5
    invoke-virtual {v1}, Landroid/car/diagnostic/XpDiagnosticManager;->getIslcState()I

    move-result v1

    aput v1, v7, v5

    .line 288
    aget v1, v7, v5

    if-eq v1, v10, :cond_d

    aget v1, v7, v5

    if-ne v1, v11, :cond_c

    goto :goto_9

    :cond_c
    move v1, v5

    goto :goto_a

    :cond_d
    :goto_9
    move v1, v6

    :goto_a
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    const-string v1, "324_SCU_CDU_SLASt"

    .line 290
    aget v3, v7, v5

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->addDetailResult(Ljava/lang/String;I)V

    goto/16 :goto_1e

    .line 281
    :pswitch_6
    invoke-virtual {v1}, Landroid/car/diagnostic/XpDiagnosticManager;->getCiuSdcardFailureState()I

    move-result v1

    aput v1, v7, v5

    .line 282
    aget v1, v7, v5

    if-eqz v1, :cond_e

    move v1, v6

    goto :goto_b

    :cond_e
    move v1, v5

    :goto_b
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    const-string v1, "311_CIU_CDU_SD_St"

    .line 283
    aget v3, v7, v5

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->addDetailResult(Ljava/lang/String;I)V

    goto/16 :goto_1e

    .line 275
    :pswitch_7
    invoke-virtual {v1}, Landroid/car/diagnostic/XpDiagnosticManager;->getDvrFailureState()I

    move-result v1

    aput v1, v7, v5

    .line 276
    aget v1, v7, v5

    if-eqz v1, :cond_f

    move v1, v6

    goto :goto_c

    :cond_f
    move v1, v5

    :goto_c
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    const-string v1, "311_CIU_CDU_DVR_St"

    .line 277
    aget v3, v7, v5

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->addDetailResult(Ljava/lang/String;I)V

    goto/16 :goto_1e

    .line 262
    :pswitch_8
    invoke-virtual {v1}, Landroid/car/diagnostic/XpDiagnosticManager;->getAllMsmModulesFailureStates()[I

    move-result-object v7

    .line 264
    array-length v1, v7

    move v3, v5

    :goto_d
    if-ge v3, v1, :cond_11

    aget v4, v7, v3

    if-eqz v4, :cond_10

    move v1, v6

    goto :goto_e

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_11
    move v1, v5

    .line 270
    :goto_e
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    .line 271
    invoke-static {p0, v7}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/SelfCheckUtil;->getDetailResult(Ljava/lang/String;[I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setDetailResult(Ljava/util/List;)V

    goto/16 :goto_1e

    .line 256
    :pswitch_9
    invoke-virtual {v1}, Landroid/car/diagnostic/XpDiagnosticManager;->getAgsFailureState()I

    move-result v1

    aput v1, v7, v5

    .line 257
    aget v1, v7, v5

    if-eqz v1, :cond_12

    move v1, v6

    goto :goto_f

    :cond_12
    move v1, v5

    :goto_f
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    const-string v1, "279_VCU_AGS_Error_Dsp"

    .line 258
    aget v3, v7, v5

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->addDetailResult(Ljava/lang/String;I)V

    goto/16 :goto_1e

    .line 250
    :pswitch_a
    invoke-virtual {v1}, Landroid/car/diagnostic/XpDiagnosticManager;->getHighVoltageRelayAdhesionState()I

    move-result v1

    aput v1, v7, v5

    .line 251
    aget v1, v7, v5

    if-eqz v1, :cond_13

    move v1, v6

    goto :goto_10

    :cond_13
    move v1, v5

    :goto_10
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    const-string v1, "182_VCU_HVRlyAdhesionSt_Dsp"

    .line 252
    aget v3, v7, v5

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->addDetailResult(Ljava/lang/String;I)V

    goto/16 :goto_1e

    .line 244
    :pswitch_b
    invoke-virtual {v1}, Landroid/car/diagnostic/XpDiagnosticManager;->getElectricVacuumPumpFailureState()I

    move-result v1

    aput v1, v7, v5

    .line 245
    aget v1, v7, v5

    if-eqz v1, :cond_14

    move v1, v6

    goto :goto_11

    :cond_14
    move v1, v5

    :goto_11
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    const-string v1, "182_VCU_EVacuumpumpErr_DSP"

    .line 246
    aget v3, v7, v5

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->addDetailResult(Ljava/lang/String;I)V

    goto/16 :goto_1e

    .line 238
    :pswitch_c
    invoke-virtual {v1}, Landroid/car/diagnostic/XpDiagnosticManager;->getRearIpuFailureState()I

    move-result v1

    aput v1, v7, v5

    .line 239
    aget v1, v7, v5

    if-eqz v1, :cond_15

    move v1, v6

    goto :goto_12

    :cond_15
    move v1, v5

    :goto_12
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    const-string v1, "172_IPU_FailSt"

    .line 240
    aget v3, v7, v5

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->addDetailResult(Ljava/lang/String;I)V

    goto/16 :goto_1e

    .line 232
    :pswitch_d
    invoke-virtual {v1}, Landroid/car/diagnostic/XpDiagnosticManager;->getElectricMotorSystemHotState()I

    move-result v1

    aput v1, v7, v5

    .line 233
    aget v1, v7, v5

    if-eqz v1, :cond_16

    move v1, v6

    goto :goto_13

    :cond_16
    move v1, v5

    :goto_13
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    const-string v1, "182_VCU_EMotorSysHot_Dsp"

    .line 234
    aget v3, v7, v5

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->addDetailResult(Ljava/lang/String;I)V

    goto/16 :goto_1e

    .line 226
    :pswitch_e
    invoke-virtual {v1}, Landroid/car/diagnostic/XpDiagnosticManager;->getBatteryVoltageLowState()I

    move-result v1

    aput v1, v7, v5

    .line 227
    aget v1, v7, v5

    if-eqz v1, :cond_17

    move v1, v6

    goto :goto_14

    :cond_17
    move v1, v5

    :goto_14
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    const-string v1, "279_VCU_BatteryVoltLow_Dsp"

    .line 228
    aget v3, v7, v5

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->addDetailResult(Ljava/lang/String;I)V

    goto/16 :goto_1e

    .line 220
    :pswitch_f
    invoke-virtual {v1}, Landroid/car/diagnostic/XpDiagnosticManager;->getDcdcFailureState()I

    move-result v1

    aput v1, v7, v5

    .line 221
    aget v1, v7, v5

    if-ne v1, v6, :cond_18

    move v1, v6

    goto :goto_15

    :cond_18
    move v1, v5

    :goto_15
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    const-string v1, "182_VCU_DCDCErr_Dsp"

    .line 222
    aget v3, v7, v5

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->addDetailResult(Ljava/lang/String;I)V

    goto/16 :goto_1e

    .line 214
    :pswitch_10
    invoke-virtual {v1}, Landroid/car/diagnostic/XpDiagnosticManager;->getCcsWorkState()I

    move-result v1

    aput v1, v7, v5

    .line 215
    aget v1, v7, v5

    if-ne v1, v4, :cond_19

    move v1, v6

    goto :goto_16

    :cond_19
    move v1, v5

    :goto_16
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    const-string v1, "39C_CCS_WorkSt"

    .line 216
    aget v3, v7, v5

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->addDetailResult(Ljava/lang/String;I)V

    goto/16 :goto_1e

    .line 208
    :pswitch_11
    invoke-virtual {v1}, Landroid/car/diagnostic/XpDiagnosticManager;->getBatteryOverheatingState()I

    move-result v1

    aput v1, v7, v5

    .line 209
    aget v1, v7, v5

    if-eqz v1, :cond_1a

    move v1, v6

    goto :goto_17

    :cond_1a
    move v1, v5

    :goto_17
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    const-string v1, "182_VCU_BatHot_Dsp"

    .line 210
    aget v3, v7, v5

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->addDetailResult(Ljava/lang/String;I)V

    goto/16 :goto_1e

    .line 195
    :pswitch_12
    invoke-virtual {v1}, Landroid/car/diagnostic/XpDiagnosticManager;->getAllTirePerssureSensorsFailureStates()[I

    move-result-object v7

    .line 197
    array-length v1, v7

    move v3, v5

    :goto_18
    if-ge v3, v1, :cond_1c

    aget v4, v7, v3

    if-ne v4, v6, :cond_1b

    move v1, v6

    goto :goto_19

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_1c
    move v1, v5

    .line 203
    :goto_19
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    .line 204
    invoke-static {p0, v7}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/SelfCheckUtil;->getDetailResult(Ljava/lang/String;[I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setDetailResult(Ljava/util/List;)V

    goto :goto_1e

    .line 182
    :pswitch_13
    invoke-virtual {v1}, Landroid/car/diagnostic/XpDiagnosticManager;->getAllTireTemperatureWarnings()[I

    move-result-object v7

    .line 184
    array-length v1, v7

    move v3, v5

    :goto_1a
    if-ge v3, v1, :cond_1e

    aget v4, v7, v3

    if-ne v4, v6, :cond_1d

    move v1, v6

    goto :goto_1b

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_1e
    move v1, v5

    .line 190
    :goto_1b
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    .line 191
    invoke-static {p0, v7}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/SelfCheckUtil;->getDetailResult(Ljava/lang/String;[I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setDetailResult(Ljava/util/List;)V

    goto :goto_1e

    .line 176
    :pswitch_14
    invoke-virtual {v1}, Landroid/car/diagnostic/XpDiagnosticManager;->getTpmsSysFailureState()I

    move-result v1

    aput v1, v7, v5

    .line 177
    aget v1, v7, v5

    if-ne v1, v6, :cond_1f

    move v1, v6

    goto :goto_1c

    :cond_1f
    move v1, v5

    :goto_1c
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    const-string v1, "TPMS_W_SystemFault"

    .line 178
    aget v3, v7, v5

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->addDetailResult(Ljava/lang/String;I)V

    goto :goto_1e

    .line 170
    :pswitch_15
    invoke-virtual {v1}, Landroid/car/diagnostic/XpDiagnosticManager;->getHdcFailureState()I

    move-result v1

    aput v1, v7, v5

    .line 171
    aget v1, v7, v5

    if-ne v1, v6, :cond_20

    move v1, v6

    goto :goto_1d

    :cond_20
    move v1, v5

    :goto_1d
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    const-string v1, "260_ESC_HDCFault"

    .line 172
    aget v3, v7, v5

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->addDetailResult(Ljava/lang/String;I)V

    .line 340
    :goto_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", result = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v3, v7, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1f

    :catch_0
    move-exception v1

    .line 342
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 343
    invoke-virtual {v0, v6}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setErrorCode(I)V

    .line 344
    aget v1, v7, v5

    invoke-virtual {v0, p0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->addDetailResult(Ljava/lang/String;I)V

    .line 345
    invoke-virtual {v0, v5}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    :goto_1f
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x66edf67f -> :sswitch_15
        -0x629ce33a -> :sswitch_14
        -0x59a75be1 -> :sswitch_13
        -0x4cb4fb3e -> :sswitch_12
        -0x4aee8fb2 -> :sswitch_11
        -0x3e21356c -> :sswitch_10
        -0x3dc93037 -> :sswitch_f
        -0x316e3f8c -> :sswitch_e
        -0x2de4a6ac -> :sswitch_d
        -0x1a5674d2 -> :sswitch_c
        0x1fe2332 -> :sswitch_b
        0xa077d5b -> :sswitch_a
        0x1b734ecd -> :sswitch_9
        0x26ce1ca2 -> :sswitch_8
        0x27b4e8b4 -> :sswitch_7
        0x4111fa9d -> :sswitch_6
        0x4237a7e4 -> :sswitch_5
        0x4f716d0a -> :sswitch_4
        0x5c0ecdfb -> :sswitch_3
        0x5f4f0045 -> :sswitch_2
        0x66cd783d -> :sswitch_1
        0x7e692fbb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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

.method static synthetic lambda$receiveGerrt$2()V
    .locals 1

    .line 748
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->isCarServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->receiveGreet()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$startCheck$0()V
    .locals 3

    .line 722
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->isCarServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/service/ISelfCheckViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ISelfCheckViewModel;

    .line 724
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v1

    const-string/jumbo v2, "xp_mcu"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    .line 725
    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getIgStatusFromMcu()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 726
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->isChecking()Z

    move-result v1

    if-nez v1, :cond_0

    .line 727
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ISelfCheckViewModel;->startSelfCheck()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$stopCheck$1()V
    .locals 2

    .line 737
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->isCarServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/service/ISelfCheckViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ISelfCheckViewModel;

    .line 740
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ISelfCheckViewModel;->stopSelfCheck()V

    :cond_0
    return-void
.end method

.method public static level2Str(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 49
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_level_no_fault:I

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 51
    sget p0, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_level_normal:I

    invoke-static {p0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 53
    sget p0, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_level_slight:I

    invoke-static {p0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    .line 55
    sget p0, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_level_severity:I

    invoke-static {p0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static mockResultData(Ljava/lang/String;Z)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "ok"
        }
    .end annotation

    .line 78
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;-><init>()V

    .line 79
    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    const/4 p1, -0x1

    .line 80
    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->addDetailResult(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static playTts(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tts"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " playTts tts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SelfCheckUtil"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static receiveGerrt()V
    .locals 1

    .line 747
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/-$$Lambda$SelfCheckUtil$1wfYxukPc3wDHoxOHzbWvj3c7uE;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/-$$Lambda$SelfCheckUtil$1wfYxukPc3wDHoxOHzbWvj3c7uE;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static startCheck()V
    .locals 1

    .line 721
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/-$$Lambda$SelfCheckUtil$Lq6MQjd1uZ2rnC7nVZUjrPM0J1E;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/-$$Lambda$SelfCheckUtil$Lq6MQjd1uZ2rnC7nVZUjrPM0J1E;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static startMonitor()V
    .locals 4

    .line 820
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 821
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/SelfCheckUtil;->checkSetting()V

    const-string v1, "info_car_check_enable"

    .line 822
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/SelfCheckUtil;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static stopCheck()V
    .locals 1

    .line 735
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->isChecking()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->isCheckComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 736
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/-$$Lambda$SelfCheckUtil$rwzoBdgPx92DSJyMi1u-0j5DmNU;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/-$$Lambda$SelfCheckUtil$rwzoBdgPx92DSJyMi1u-0j5DmNU;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
