.class Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;
.super Ljava/lang/Object;
.source "CarControlSyncImpl.java"

# interfaces
.implements Lcom/xiaopeng/xvs/xid/sync/api/ICarControlSync;


# instance fields
.field mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wrapper"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue",
            "isBindHabit"
        }
    .end annotation

    .line 1110
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    sget-object v1, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_CAR_CONTROL:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->get(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getATLDualColor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 343
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "ATL_DUAL_COLOR"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getATLDualColorSW(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 321
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "ATL_DUAL_COLOR_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getATLEffect(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 310
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "ATL_EFFECT"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getATLLight(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 299
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "ATL_BRIGHT"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getATLSW(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 288
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "ATL_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getATLSingleColor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 332
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "ATL_SINGLE_COLOR"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAdaptiveMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 1010
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "ADAPTIVE_MODE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAntisickMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 900
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "ANTISICK_MODE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAsWelcomeMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 1080
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "AS_WELCOME_MODE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAutoDHC(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 375
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "AUTO_DHC"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAutoHoldSw(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 920
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CHASSIS_AVH"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAutoLampHeight(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 970
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "AUTO_LAMP_HEIGHT"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAutoParkSound(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 780
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "AUTO_PARKING_NEW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAutoParkSw(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 840
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "XPILOT_AUTO_PARK_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAvasBootEffect(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 561
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "AVAS_BOOT_EFFECT"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAvasBootEffectBefore(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 572
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "AVAS_BOOT_EFFECT_BEFORE_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAvasEffect(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 539
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "AVAS_EFFECT"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAvasEffectNew(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 529
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "AVAS_EFFECT_NEW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAvasSayHiEffect(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 550
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "AVAS_SAYHI_EFFECT"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBsdSw(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 760
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "BLIND_DETECTION_WARNING"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCdcMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 1050
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CDC_MODE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getChairPosIndex(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 441
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CHAIR_POS_INDEX"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getChairPosNew(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 583
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CHAIR_POSITION_NEW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getChairPosPsn(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 599
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CHAIR_POSITION_PSN"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getChairPositionOne(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 408
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CHAIR_POSITION"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getChairPositionThree(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 430
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CHAIR_POSITION_THREE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getChairPositionTwo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 419
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CHAIR_POSITION_TWO"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getChargeSW(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 277
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "LLU_CHARGE_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getChildLeftLock(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 386
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CHILD_LEFT_LOCK"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getChildRightLock(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 397
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CHILD_RIGHT_LOCK"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCityNgpSw(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 1020
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CITY_NGP_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCmsAutoBrightnessSw(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CMS_AUTO_BRIGHTNESS_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCmsBrightness(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CMS_BRIGHTNESS"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCmsHighSpdSw(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CMS_HIGH_SPD_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCmsLowSpdSw(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CMS_LOW_SPD_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCmsObjectRecognizeSw(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CMS_OBJECT_RECOGNIZE_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCmsPos(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CMS_POS"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCmsReverseSw(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CMS_REVERSE_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCmsTurnExtnSw(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CMS_TURN_EXTN_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCmsViewAngle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CMS_VIEW_ANGLE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCmsViewRecoverySw(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CMS_VIEW_RECOVERY_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCrossBarriers(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CROSS_BARRIERS"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCwcSw(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 1030
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CWC_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultBindHabitType()I
    .locals 1

    .line 1120
    sget v0, Lcom/xiaopeng/xvs/xid/XId;->sDefaultIsBindHabit:I

    return v0
.end method

.method public getDomeLightBright(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 170
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "DOME_LIGHT_BRIGHT"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDoorBossKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "DOOR_BOSS_KEY"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDoorBossKeySW(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 200
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "DOOR_BOSS_KEY_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDriveAutoLock(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 650
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "DRIVE_AUTO_LOCK"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDriveMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 870
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "DRIVE_MODE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDrvSeatESB(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 463
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "DRV_SEAT_ESB"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getEbwSw(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 740
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "BRAKE_WARNING"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getGeneral(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue",
            "isBindHabit"
        }
    .end annotation

    .line 1125
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    sget-object v1, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_CAR_CONTROL:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->getGeneral(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHighSPDCloseWin(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 496
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "HIGH_SPD_CLOSE_WIN"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIsLcSw(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 790
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "SMART_SPEED_LIMIT"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKeyImsStreamingMedia(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_IMS_STREAMING_MEDIA"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKeyXPilotNra(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_XPILOT_NRA"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLampHeightLevel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 960
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "LAMP_HEIGHT_LEVEL"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLdwSw(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 750
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "LANE_DEPARTURE_WARNING"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLeftDoorHotKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 990
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "LEFT_DOOR_HOT_KEY"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLightMeHome(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 211
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "LIGHT_ME_HOME"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLightMeHomeTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 222
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "LIGHT_ME_HOME_TIME"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLluSW(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 244
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "LLU_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLockCloseWin(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 507
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "LOCK_CLOSE_WIN"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLockSW(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 266
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "LLU_LOCK_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLssState(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 850
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "XPILOT_AUTO_PARK_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMemParkSw(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 860
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "MEM_PARK_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMeterMediaSource(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 690
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "METER_DEFINE_MEDIA_SOURCE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMeterScreenLight(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 700
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "METER_DEFINE_SCREEN_LIGHT"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMeterTemperature(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 660
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "METER_DEFINE_TEMPERATURE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMeterWindMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 680
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "METER_DEFINE_WIND_MODE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMeterWindPower(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 670
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "METER_DEFINE_WIND_POWER"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMicrophoneMute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 910
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "MICROPHONE_MUTE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMirrorAutoDownSw(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 950
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "MIRROR_AUTO_DOWN"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMirrorPos(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 474
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "MIRROR_POS"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMirrorReverse(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 485
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "MIRROR_REVERSE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNGearProtectSw(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 940
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "N_GEAR_PROTECT"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNgpLcMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 820
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "NGP_LC_MODE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNgpRemindMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 830
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "NGP_REMIND_MODE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNgpSafeExam(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 630
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "NGP_SAFE_EXAM"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNgpSw(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 640
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "NGP_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNgpTipWin(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 810
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "NGP_TIP_WIN"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getParkLampB(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 233
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "PARK_LAMP_B"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRctaSw(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 770
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "SIDE_REVERSING_WARNING"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRearSeatWarning(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 730
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "REAR_SEAT_WARNING"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRearSeatWelcomeMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 1090
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "REAR_SEAT_WELCOME_MODE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRecycleGrade(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 880
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_RECYCLE_GRADE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRightDoorHotKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 1000
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "RIGHT_DOOR_HOT_KEY"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSdcBreakCloseType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 1040
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "SDC_BREAK_CLOSE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSensorTrunkSw(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 1060
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "SENSOR_TRUNK_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSinglePedal(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 160
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "SINGLEPEDAL"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSpeedLimitSw(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 710
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "SPEED_LIMIT"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSpeedLimitValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 720
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "SPEED_LIMIT_VALUE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSteerMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 800
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "STEER_MODE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSteerPos(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 980
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "STEER_POS"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStopAutoUnLock(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 354
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "STOP_AUTO_UNLOCK"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTrafficLight(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "TRAFFIC_LIGHT"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTrunkOpenPos(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 1070
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "TRUNK_OPEN_POS"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUnLockResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 365
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "UNLOCK_RESPONSE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUnLockSW(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 255
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "LLU_UNLOCK_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWelcomeMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 452
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "WELCOME_MODE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWheelKeyProtectSw(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 930
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "WHEEL_KEY_PROTECT"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWheelXKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 180
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "WHEEL_X_KEY"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWiperSensitivity(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 518
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "WIPER_SENSITIVITY"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getXPilotAlc(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 620
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "XPILOT_ALC"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getXPilotLcc(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 610
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "XPILOT_LCC"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getXpedalMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 890
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "XPEDAL_MODE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public putAntisickMode(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 905
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "ANTISICK_MODE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putAutoHoldSw(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 925
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CHASSIS_AVH"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putAutoLampHeight(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 975
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "AUTO_LAMP_HEIGHT"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putAutoParkSound(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 785
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "AUTO_PARKING_NEW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putAutoParkSw(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 845
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "XPILOT_AUTO_PARK_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putBsdSw(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 765
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "BLIND_DETECTION_WARNING"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putDriveAutoLock(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 655
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "DRIVE_AUTO_LOCK"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putDriveMode(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 875
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "DRIVE_MODE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putEbwSw(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 745
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "BRAKE_WARNING"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putIsLcSw(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 795
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "SMART_SPEED_LIMIT"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putLampHeightLevel(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 965
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "LAMP_HEIGHT_LEVEL"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putLdwSw(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 755
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "LANE_DEPARTURE_WARNING"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putLeftDoorHotKey(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 995
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "LEFT_DOOR_HOT_KEY"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putLssState(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 855
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "XPILOT_AUTO_PARK_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putMemParkSw(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 865
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "MEM_PARK_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putMeterMediaSource(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 695
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "METER_DEFINE_MEDIA_SOURCE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putMeterScreenLight(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 705
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "METER_DEFINE_SCREEN_LIGHT"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putMeterTemperature(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 665
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "METER_DEFINE_TEMPERATURE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putMeterWindMode(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 685
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "METER_DEFINE_WIND_MODE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putMeterWindPower(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 675
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "METER_DEFINE_WIND_POWER"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putMicrophoneMute(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 915
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "MICROPHONE_MUTE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putMirrorAutoDownSw(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 955
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "MIRROR_AUTO_DOWN"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putNGearProtectSw(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 945
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "N_GEAR_PROTECT"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putNgpLcMode(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 825
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "NGP_LC_MODE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putNgpRemindMode(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 835
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "NGP_REMIND_MODE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putNgpSafeExam(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 635
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "NGP_SAFE_EXAM"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putNgpSw(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 645
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "NGP_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putNgpTipWin(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 815
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "NGP_TIP_WIN"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putRctaSw(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 775
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "SIDE_REVERSING_WARNING"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putRearSeatWarning(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 735
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "REAR_SEAT_WARNING"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putRecycleGrade(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 885
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_RECYCLE_GRADE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putRightDoorHotKey(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1005
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "RIGHT_DOOR_HOT_KEY"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putSpeedLimitSw(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 715
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "SPEED_LIMIT"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putSpeedLimitValue(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 725
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "SPEED_LIMIT_VALUE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putSteerMode(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 805
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "STEER_MODE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putSteerPos(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 985
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "STEER_POS"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putWheelKeyProtectSw(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 935
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "WHEEL_KEY_PROTECT"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putXPilotAlc(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 625
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "XPILOT_ALC"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putXPilotLcc(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 615
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "XPILOT_LCC"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putXpedalMode(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 895
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "XPEDAL_MODE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public set(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "key",
            "value",
            "isBindHabit"
        }
    .end annotation

    .line 1100
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    sget-object v5, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_CAR_CONTROL:Ljava/lang/String;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->put(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "value",
            "isBindHabit"
        }
    .end annotation

    .line 1115
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    sget-object v1, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_CAR_CONTROL:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->put(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public setATLDualColor(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 348
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "ATL_DUAL_COLOR"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setATLDualColorSW(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 326
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "ATL_DUAL_COLOR_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setATLEffect(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 315
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "ATL_EFFECT"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setATLLight(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 304
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "ATL_BRIGHT"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setATLSW(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 293
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "ATL_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setATLSingleColor(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 337
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "ATL_SINGLE_COLOR"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setAdaptiveMode(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1015
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "ADAPTIVE_MODE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setAsWelcomeMode(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1085
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "AS_WELCOME_MODE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setAutoDHC(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 380
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "AUTO_DHC"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setAvasBootEffect(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 566
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "AVAS_BOOT_EFFECT"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setAvasBootEffectBefore(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 577
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "AVAS_BOOT_EFFECT_BEFORE_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setAvasEffect(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 544
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "AVAS_EFFECT"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setAvasEffectNew(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 534
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "AVAS_EFFECT_NEW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setAvasSayHiEffect(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 555
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "AVAS_SAYHI_EFFECT"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setCdcMode(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1055
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CDC_MODE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setChairPosIndex(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 446
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CHAIR_POS_INDEX"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setChairPosNew(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 594
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CHAIR_POSITION_NEW"

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setChairPosNew(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 588
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CHAIR_POSITION_NEW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setChairPosPsn(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 604
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CHAIR_POSITION_PSN"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setChairPositionOne(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 413
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CHAIR_POSITION"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setChairPositionThree(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 435
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CHAIR_POSITION_THREE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setChairPositionTwo(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 424
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CHAIR_POSITION_TWO"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setChargeSW(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 282
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "LLU_CHARGE_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setChildLeftLock(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 391
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CHILD_LEFT_LOCK"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setChildRightLock(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 402
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CHILD_RIGHT_LOCK"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setCityNgpSw(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1025
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CITY_NGP_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setCmsAutoBrightnessSw(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CMS_AUTO_BRIGHTNESS_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setCmsBrightness(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CMS_BRIGHTNESS"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setCmsHighSpdSw(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CMS_HIGH_SPD_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setCmsLowSpdSw(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CMS_LOW_SPD_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setCmsObjectRecognizeSw(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CMS_OBJECT_RECOGNIZE_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setCmsPos(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CMS_POS"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setCmsReverseSw(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CMS_REVERSE_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setCmsTurnExtnSw(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CMS_TURN_EXTN_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setCmsViewAngle(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CMS_VIEW_ANGLE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setCmsViewRecoverySw(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CMS_VIEW_RECOVERY_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setCrossBarriers(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CROSS_BARRIERS"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setCurrentHabitReloadState(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1105
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->setCurrentHabitReloadState(Z)V

    return-void
.end method

.method public setCwcSw(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1035
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CWC_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setDomeLightBright(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 175
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "DOME_LIGHT_BRIGHT"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setDoorBossKey(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 195
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "DOOR_BOSS_KEY"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setDoorBossKeySW(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 205
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "DOOR_BOSS_KEY_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setDrvSeatESB(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 468
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "DRV_SEAT_ESB"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setGeneral(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 1130
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    sget-object v1, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_CAR_CONTROL:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->setGeneral(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHighSPDCloseWin(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 501
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "HIGH_SPD_CLOSE_WIN"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setKeyImsStreamingMedia(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_IMS_STREAMING_MEDIA"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setKeyXPilotNra(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_XPILOT_NRA"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setLightMeHome(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 216
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "LIGHT_ME_HOME"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setLightMeHomeTime(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 227
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "LIGHT_ME_HOME_TIME"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setLluSW(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 249
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "LLU_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setLockCloseWin(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 512
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "LOCK_CLOSE_WIN"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setLockSW(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 271
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "LLU_LOCK_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setMirrorPos(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 479
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "MIRROR_POS"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setMirrorReverse(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 490
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "MIRROR_REVERSE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setParkLampB(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 238
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "PARK_LAMP_B"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setRearSeatWelcomeMode(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1095
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "REAR_SEAT_WELCOME_MODE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setSdcBreakCloseType(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1045
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "SDC_BREAK_CLOSE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setSensorTrunkSw(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1065
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "SENSOR_TRUNK_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setSinglePedal(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 165
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "SINGLEPEDAL"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setStopAutoUnLock(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 359
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "STOP_AUTO_UNLOCK"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setTrafficLight(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "TRAFFIC_LIGHT"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setTrunkOpenPos(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1075
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "TRUNK_OPEN_POS"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setUnLockResponse(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 370
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "UNLOCK_RESPONSE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setUnLockSW(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 260
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "LLU_UNLOCK_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setWelcomeMode(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 457
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "WELCOME_MODE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setWheelXKey(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "WHEEL_X_KEY"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setWiperSensitivity(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 523
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "WIPER_SENSITIVITY"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
