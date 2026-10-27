.class public Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;
.super Lcom/android/car/xpeng/remind/CarRemindBase;
.source "PhoneKeyLeaveRemind.java"


# instance fields
.field private final INVALID:I

.field private final TAG:Ljava/lang/String;

.field private mBleConnectedSt:I

.field private mBleKeyChangedFromConnToDisconn:Z

.field private mDoorState:[I

.field private mDriverSeatOccupied:I

.field private mDrvInnerPullSt:I

.field private mDrvOuterPullSt:I

.field private mIgStatus:I

.field private mPsngInnerPullSt:I

.field private mPsngOuterPullSt:I

.field private mRlInnerPullSt:I

.field private mRlOuterPullSt:I

.field private mRrInnerPullSt:I

.field private mRrOuterPullSt:I

.field private mScissorsGateDrvBtnSt:I

.field private mScissorsGateDrvInnerPullSt:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/car/CarPropertyService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "propertyService"    # Lcom/android/car/CarPropertyService;

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/xpeng/remind/CarRemindBase;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/car/CarPropertyService;)V

    .line 19
    const-string v0, "PhoneKeyLeaveRemind"

    iput-object v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->TAG:Ljava/lang/String;

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->INVALID:I

    .line 21
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mDoorState:[I

    .line 22
    iput v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mDriverSeatOccupied:I

    .line 23
    iput v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mBleConnectedSt:I

    .line 24
    iput v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mDrvOuterPullSt:I

    .line 25
    iput v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mDrvInnerPullSt:I

    .line 26
    iput v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mPsngOuterPullSt:I

    .line 27
    iput v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mPsngInnerPullSt:I

    .line 28
    iput v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mRlOuterPullSt:I

    .line 29
    iput v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mRrOuterPullSt:I

    .line 30
    iput v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mRlInnerPullSt:I

    .line 31
    iput v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mRrInnerPullSt:I

    .line 32
    iput v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mScissorsGateDrvInnerPullSt:I

    .line 33
    iput v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mScissorsGateDrvBtnSt:I

    .line 35
    iput v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mIgStatus:I

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mBleKeyChangedFromConnToDisconn:Z

    .line 42
    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private baseCondition()Z
    .locals 4

    .line 127
    iget v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mIgStatus:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 128
    return v1

    .line 130
    :cond_0
    const-string v0, "config_car_ble_key_version"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 132
    iget v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mBleConnectedSt:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 133
    return v1

    .line 136
    :cond_1
    iget-boolean v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mBleKeyChangedFromConnToDisconn:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mBleConnectedSt:I

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mBleConnectedSt:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    goto :goto_0

    .line 139
    :cond_2
    return v2

    .line 137
    :cond_3
    :goto_0
    return v1
.end method

.method private checkDoor([I)V
    .locals 2
    .param p1, "doorState"    # [I

    .line 171
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->baseCondition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mDoorState:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_1

    aget v0, p1, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 176
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->checkDriverDoorTrigger()V

    .line 178
    :cond_1
    return-void
.end method

.method private checkDriverDoorTrigger()V
    .locals 3

    .line 181
    const-string v0, "PhoneKeyLeaveRemind"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkDriverDoorTrigger mDrvInnerPullSt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mDrvInnerPullSt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mScissorsGateDrvInnerPullSt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mScissorsGateDrvInnerPullSt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mScissorsGateDrvBtnSt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mScissorsGateDrvBtnSt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mDriverSeatOccupied:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mDriverSeatOccupied:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mDrvInnerPullSt:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mDriverSeatOccupied:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 184
    const v0, 0x2140a802

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->getCarPropertyEvent(ILjava/lang/Object;)Landroid/car/hardware/property/CarPropertyEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->dispatchEvent(Landroid/car/hardware/property/CarPropertyEvent;)V

    .line 186
    :cond_0
    return-void
.end method

.method private driverDoorBtnTrigger()V
    .locals 3

    .line 146
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->baseCondition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    return-void

    .line 149
    :cond_0
    const-string v0, "PhoneKeyLeaveRemind"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "driverDoorBtnTrigger mScissorsGateDrvBtnSt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mScissorsGateDrvBtnSt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mDrvInnerPullSt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mDrvInnerPullSt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mScissorsGateDrvInnerPullSt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mScissorsGateDrvInnerPullSt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mDrvInnerPullSt:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 151
    const v0, 0x2140a802

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->getCarPropertyEvent(ILjava/lang/Object;)Landroid/car/hardware/property/CarPropertyEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->dispatchEvent(Landroid/car/hardware/property/CarPropertyEvent;)V

    .line 153
    :cond_1
    return-void
.end method

.method private isNotSupportOtherDoorRemindCarType()Z
    .locals 1

    .line 194
    const-string v0, "config_support_other_door_remind"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private otherDoorBtnTrigger()V
    .locals 3

    .line 157
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->baseCondition()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->isNotSupportOtherDoorRemindCarType()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    const-string v0, "PhoneKeyLeaveRemind"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "otherDoorBtnTrigger mPsngInnerPullSt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mPsngInnerPullSt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mRlInnerPullSt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mRlInnerPullSt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mRrInnerPullSt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mRrInnerPullSt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mDriverSeatOccupied:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mDriverSeatOccupied:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mPsngInnerPullSt:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mRlInnerPullSt:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mRrInnerPullSt:I

    if-ne v0, v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mDriverSeatOccupied:I

    if-nez v0, :cond_2

    .line 165
    const v0, 0x2140a802

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->getCarPropertyEvent(ILjava/lang/Object;)Landroid/car/hardware/property/CarPropertyEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->dispatchEvent(Landroid/car/hardware/property/CarPropertyEvent;)V

    .line 167
    :cond_2
    return-void

    .line 158
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method protected getRemindPropertyId()[I
    .locals 3

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x2140a802

    aput v2, v0, v1

    return-object v0
.end method

.method protected getRequiredProperties()[I
    .locals 1

    .line 53
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x21401409
        0x21401036
        0x21401c07
        0x21411c19
        0x21401de7
        0x21401de8
        0x21401de9
        0x21401dea
    .end array-data
.end method

.method protected handlePropertyEvent(Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/car/hardware/property/CarPropertyEvent;

    .line 67
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401036

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    const v1, 0x21401409

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const v1, 0x21401c07

    if-eq v0, v1, :cond_2

    const v1, 0x21411c19

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 112
    :pswitch_0
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mScissorsGateDrvInnerPullSt:I

    .line 113
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->driverDoorBtnTrigger()V

    .line 114
    goto/16 :goto_1

    .line 116
    :pswitch_1
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mScissorsGateDrvBtnSt:I

    .line 117
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->driverDoorBtnTrigger()V

    .line 118
    goto/16 :goto_1

    .line 108
    :pswitch_2
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mRrInnerPullSt:I

    .line 109
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->otherDoorBtnTrigger()V

    .line 110
    goto/16 :goto_1

    .line 104
    :pswitch_3
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mRlInnerPullSt:I

    .line 105
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->otherDoorBtnTrigger()V

    .line 106
    goto/16 :goto_1

    .line 100
    :pswitch_4
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mPsngInnerPullSt:I

    .line 101
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->otherDoorBtnTrigger()V

    .line 102
    goto/16 :goto_1

    .line 96
    :pswitch_5
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mDrvInnerPullSt:I

    .line 97
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->driverDoorBtnTrigger()V

    .line 98
    goto/16 :goto_1

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 88
    .local v0, "doors":[Ljava/lang/Integer;
    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 89
    .local v1, "doorStates":[I
    nop

    .local v3, "i":I
    :goto_0
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 90
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 89
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 92
    .end local v3    # "i":I
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->checkDoor([I)V

    .line 93
    iput-object v1, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mDoorState:[I

    .line 94
    goto :goto_1

    .line 84
    .end local v0    # "doors":[Ljava/lang/Integer;
    .end local v1    # "doorStates":[I
    :cond_2
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mDriverSeatOccupied:I

    .line 85
    goto :goto_1

    .line 69
    :cond_3
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mIgStatus:I

    .line 70
    iget v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mIgStatus:I

    if-eq v0, v2, :cond_7

    .line 71
    iput-boolean v3, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mBleKeyChangedFromConnToDisconn:Z

    goto :goto_1

    .line 75
    :cond_4
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 76
    .local v0, "connectSt":I
    iget v1, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mIgStatus:I

    if-ne v1, v2, :cond_6

    iget v1, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mBleConnectedSt:I

    const/4 v3, 0x3

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mBleConnectedSt:I

    if-ne v1, v3, :cond_6

    :cond_5
    if-eq v0, v2, :cond_6

    if-eq v0, v3, :cond_6

    .line 79
    iput-boolean v2, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mBleKeyChangedFromConnToDisconn:Z

    .line 81
    :cond_6
    iput v0, p0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;->mBleConnectedSt:I

    .line 82
    nop

    .line 122
    .end local v0    # "connectSt":I
    :cond_7
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21401de7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
