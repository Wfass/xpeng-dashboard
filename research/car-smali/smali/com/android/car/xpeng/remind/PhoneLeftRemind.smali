.class public Lcom/android/car/xpeng/remind/PhoneLeftRemind;
.super Lcom/android/car/xpeng/remind/CarRemindBase;
.source "PhoneLeftRemind.java"


# static fields
.field private static final INVALID:I = -0x1

.field private static final REMIND_INTERVAL:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "PhoneLeftRemind"


# instance fields
.field private drvOccupiedFlagChange:Z

.field private lastRemindTime:J

.field private mBeltState:[I

.field private mCwcState:I

.field private mDoorState:[I

.field private mFrCwcState:I

.field private mGearLevel:I

.field private mPGearVD:I

.field private mPhoneLeftRemindState:I

.field private final mRequiredProperties:[I

.field private mRlCwcState:I

.field private mRrCwcState:I

.field private mSeatOccupied:[I

.field private psngrOccupiedFlagChange:Z

.field private rlOccupiedFlagChange:Z

.field private rrOccupiedFlagChange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/car/CarPropertyService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "propertyService"    # Lcom/android/car/CarPropertyService;

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/xpeng/remind/CarRemindBase;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/car/CarPropertyService;)V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mCwcState:I

    .line 27
    iput v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mFrCwcState:I

    .line 28
    iput v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mRlCwcState:I

    .line 29
    iput v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mRrCwcState:I

    .line 30
    iput v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mGearLevel:I

    .line 31
    iput v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mPGearVD:I

    .line 32
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mBeltState:[I

    .line 33
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mDoorState:[I

    .line 34
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mSeatOccupied:[I

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->lastRemindTime:J

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mPhoneLeftRemindState:I

    .line 38
    iput-boolean v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->drvOccupiedFlagChange:Z

    .line 39
    iput-boolean v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->psngrOccupiedFlagChange:Z

    .line 40
    iput-boolean v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->rlOccupiedFlagChange:Z

    .line 41
    iput-boolean v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->rrOccupiedFlagChange:Z

    .line 47
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mRequiredProperties:[I

    .line 45
    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_3
    .array-data 4
        0x21401c71
        0x21401d85
        0x21401dc2
        0x21401dc5
        0x21401c07
        0x21401c4f
        0x21401cc8
        0x21401cca
        0x21401c10
        0x21401c0c
        0x21401c0d
        0x21401c0e
        0x21401205
        0x21411c19
        0x21401219
    .end array-data
.end method

.method private baseCondition()Z
    .locals 4

    .line 232
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->lastRemindTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 233
    const/4 v0, 0x0

    return v0

    .line 235
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private checkCancelRemind()V
    .locals 4

    .line 205
    iget v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mPhoneLeftRemindState:I

    const v1, 0x2140a801

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mCwcState:I

    if-nez v0, :cond_0

    .line 207
    iput v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mPhoneLeftRemindState:I

    .line 208
    iget v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mPhoneLeftRemindState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->getCarPropertyEvent(ILjava/lang/Object;)Landroid/car/hardware/property/CarPropertyEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->dispatchEvent(Landroid/car/hardware/property/CarPropertyEvent;)V

    goto :goto_0

    .line 209
    :cond_0
    iget v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mPhoneLeftRemindState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mFrCwcState:I

    if-nez v0, :cond_1

    .line 211
    iput v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mPhoneLeftRemindState:I

    .line 212
    iget v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mPhoneLeftRemindState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->getCarPropertyEvent(ILjava/lang/Object;)Landroid/car/hardware/property/CarPropertyEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->dispatchEvent(Landroid/car/hardware/property/CarPropertyEvent;)V

    goto :goto_0

    .line 213
    :cond_1
    iget v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mPhoneLeftRemindState:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mRlCwcState:I

    if-nez v0, :cond_2

    .line 215
    iput v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mPhoneLeftRemindState:I

    .line 216
    iget v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mPhoneLeftRemindState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->getCarPropertyEvent(ILjava/lang/Object;)Landroid/car/hardware/property/CarPropertyEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->dispatchEvent(Landroid/car/hardware/property/CarPropertyEvent;)V

    goto :goto_0

    .line 217
    :cond_2
    iget v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mPhoneLeftRemindState:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mRrCwcState:I

    if-nez v0, :cond_3

    .line 219
    iput v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mPhoneLeftRemindState:I

    .line 220
    iget v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mPhoneLeftRemindState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->getCarPropertyEvent(ILjava/lang/Object;)Landroid/car/hardware/property/CarPropertyEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->dispatchEvent(Landroid/car/hardware/property/CarPropertyEvent;)V

    .line 222
    :cond_3
    :goto_0
    return-void
.end method

.method private checkClearOccupiedFlag([I[I)V
    .locals 8
    .param p1, "lastDoorState"    # [I
    .param p2, "newDoorState"    # [I

    .line 179
    const/4 v0, 0x0

    aget v1, p1, v0

    .line 180
    .local v1, "lastDrvDoorState":I
    const/4 v2, 0x1

    aget v3, p1, v2

    .line 181
    .local v3, "lastPsngrDoorState":I
    aget v4, p2, v0

    .line 182
    .local v4, "newDrvDoorState":I
    aget v5, p2, v2

    .line 183
    .local v5, "newPsngrDoorState":I
    invoke-static {}, Landroid/car/XpCarFeatures;->getVehicleRudderType()I

    move-result v6

    if-ne v6, v2, :cond_0

    .line 184
    aget v1, p1, v2

    .line 185
    aget v3, p1, v0

    .line 186
    aget v4, p2, v2

    .line 187
    aget v5, p2, v0

    .line 189
    :cond_0
    if-ne v1, v2, :cond_1

    if-nez v4, :cond_1

    .line 190
    iput-boolean v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->drvOccupiedFlagChange:Z

    .line 192
    :cond_1
    if-ne v3, v2, :cond_2

    if-nez v5, :cond_2

    .line 193
    iput-boolean v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->psngrOccupiedFlagChange:Z

    .line 195
    :cond_2
    const/4 v6, 0x2

    aget v7, p1, v6

    if-ne v7, v2, :cond_3

    aget v6, p2, v6

    if-nez v6, :cond_3

    .line 196
    iput-boolean v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->rlOccupiedFlagChange:Z

    .line 198
    :cond_3
    const/4 v6, 0x3

    aget v7, p1, v6

    if-ne v7, v2, :cond_4

    aget v2, p2, v6

    if-nez v2, :cond_4

    .line 199
    iput-boolean v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->rrOccupiedFlagChange:Z

    .line 201
    :cond_4
    return-void
.end method

.method private doorTriggerPhoneLeftRemind([I[I)V
    .locals 3
    .param p1, "lastDoorState"    # [I
    .param p2, "newDoorStates"    # [I

    .line 339
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->baseCondition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    return-void

    .line 342
    :cond_0
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    if-nez v1, :cond_2

    aget v0, p2, v0

    if-ne v0, v2, :cond_2

    .line 343
    invoke-static {}, Landroid/car/XpCarFeatures;->getVehicleRudderType()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 345
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->psngrTriggerPhoneLeft()V

    goto :goto_0

    .line 347
    :cond_1
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->drvTriggerPhoneLeft()V

    .line 352
    :cond_2
    :goto_0
    aget v0, p1, v2

    if-nez v0, :cond_4

    aget v0, p2, v2

    if-ne v0, v2, :cond_4

    .line 353
    invoke-static {}, Landroid/car/XpCarFeatures;->getVehicleRudderType()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 355
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->drvTriggerPhoneLeft()V

    goto :goto_1

    .line 357
    :cond_3
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->psngrTriggerPhoneLeft()V

    .line 362
    :cond_4
    :goto_1
    const/4 v0, 0x2

    aget v1, p1, v0

    if-nez v1, :cond_5

    aget v0, p2, v0

    if-ne v0, v2, :cond_5

    .line 363
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->secRowLeftTriggerPhoneLeft()V

    .line 367
    :cond_5
    iget-object v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mDoorState:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    if-nez v0, :cond_6

    aget v0, p2, v1

    if-ne v0, v2, :cond_6

    .line 368
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->secRowRightTriggerPhoneLeft()V

    .line 370
    :cond_6
    return-void
.end method

.method private drvTriggerPhoneLeft()V
    .locals 7

    .line 240
    const-string v0, "PhoneLeftRemind"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drvTriggerPhoneLeft gear="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mGearLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  BeltState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mBeltState:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mBeltState:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mBeltState:[I

    const/4 v5, 0x2

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mBeltState:[I

    const/4 v6, 0x3

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  DoorState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mDoorState:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mDoorState:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mDoorState:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mDoorState:[I

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "mSeatOccupied="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mSeatOccupied:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mSeatOccupied:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mSeatOccupied:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mSeatOccupied:[I

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  mCwcState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mCwcState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  drvOccupiedFlagChange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->drvOccupiedFlagChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->baseCondition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mDoorState:[I

    aget v0, v0, v3

    .line 246
    .local v0, "drvDoorState":I
    invoke-static {}, Landroid/car/XpCarFeatures;->getVehicleRudderType()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 247
    iget-object v1, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mDoorState:[I

    aget v0, v1, v4

    .line 249
    :cond_1
    iget-object v1, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mBeltState:[I

    aget v1, v1, v3

    if-ne v1, v4, :cond_2

    iget v1, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mCwcState:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mCwcState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    if-ne v0, v4, :cond_2

    iget-object v1, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mSeatOccupied:[I

    aget v1, v1, v3

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->drvOccupiedFlagChange:Z

    if-eqz v1, :cond_2

    .line 254
    iput v4, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mPhoneLeftRemindState:I

    .line 255
    const v1, 0x2140a801

    iget v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mPhoneLeftRemindState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->getCarPropertyEvent(ILjava/lang/Object;)Landroid/car/hardware/property/CarPropertyEvent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->dispatchEvent(Landroid/car/hardware/property/CarPropertyEvent;)V

    .line 256
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->lastRemindTime:J

    .line 258
    :cond_2
    return-void
.end method

.method private psngrTriggerPhoneLeft()V
    .locals 7

    .line 262
    const-string v0, "PhoneLeftRemind"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "psngrTriggerPhoneLeft gear="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mGearLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  BeltState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mBeltState:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mBeltState:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mBeltState:[I

    const/4 v5, 0x2

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mBeltState:[I

    const/4 v6, 0x3

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  DoorState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mDoorState:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mDoorState:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mDoorState:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mDoorState:[I

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "mSeatOccupied="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mSeatOccupied:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mSeatOccupied:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mSeatOccupied:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mSeatOccupied:[I

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  mFrCwcState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mFrCwcState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  psngrOccupiedFlagChange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->psngrOccupiedFlagChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->baseCondition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mDoorState:[I

    aget v0, v0, v4

    .line 268
    .local v0, "pnsgrDoorState":I
    invoke-static {}, Landroid/car/XpCarFeatures;->getVehicleRudderType()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 269
    iget-object v1, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mDoorState:[I

    aget v0, v1, v3

    .line 271
    :cond_1
    iget-object v1, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mBeltState:[I

    aget v1, v1, v4

    if-ne v1, v4, :cond_2

    iget v1, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mFrCwcState:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mFrCwcState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    if-ne v0, v4, :cond_2

    iget-object v1, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mSeatOccupied:[I

    aget v1, v1, v4

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->psngrOccupiedFlagChange:Z

    if-eqz v1, :cond_2

    .line 276
    iput v5, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mPhoneLeftRemindState:I

    .line 277
    const v1, 0x2140a801

    iget v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mPhoneLeftRemindState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->getCarPropertyEvent(ILjava/lang/Object;)Landroid/car/hardware/property/CarPropertyEvent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->dispatchEvent(Landroid/car/hardware/property/CarPropertyEvent;)V

    .line 278
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->lastRemindTime:J

    .line 280
    :cond_2
    return-void
.end method

.method private secRowLeftTriggerPhoneLeft()V
    .locals 7

    .line 284
    const-string v0, "PhoneLeftRemind"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secRowLeftTriggerPhoneLeft gear="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mGearLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  BeltState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mBeltState:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mBeltState:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mBeltState:[I

    const/4 v5, 0x2

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mBeltState:[I

    const/4 v6, 0x3

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  DoorState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mDoorState:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mDoorState:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mDoorState:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mDoorState:[I

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "mSeatOccupied="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mSeatOccupied:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mSeatOccupied:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mSeatOccupied:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mSeatOccupied:[I

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  mRlCwcState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mRlCwcState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  rlOccupiedFlagChange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->rlOccupiedFlagChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->baseCondition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mBeltState:[I

    aget v0, v0, v5

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mDoorState:[I

    aget v0, v0, v5

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mSeatOccupied:[I

    aget v0, v0, v5

    if-eq v0, v4, :cond_4

    iget-boolean v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->rlOccupiedFlagChange:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 295
    :cond_1
    const-string v0, "config_car_support_cwc_rm"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mBeltState:[I

    aget v0, v0, v6

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mSeatOccupied:[I

    aget v0, v0, v6

    if-ne v0, v4, :cond_2

    .line 299
    return-void

    .line 303
    :cond_2
    iget v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mRlCwcState:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mRlCwcState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 304
    iput v6, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mPhoneLeftRemindState:I

    .line 305
    const v0, 0x2140a801

    iget v1, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mPhoneLeftRemindState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->getCarPropertyEvent(ILjava/lang/Object;)Landroid/car/hardware/property/CarPropertyEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->dispatchEvent(Landroid/car/hardware/property/CarPropertyEvent;)V

    .line 306
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->lastRemindTime:J

    .line 308
    :cond_3
    return-void

    .line 292
    :cond_4
    :goto_0
    return-void
.end method

.method private secRowRightTriggerPhoneLeft()V
    .locals 7

    .line 312
    const-string v0, "PhoneLeftRemind"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secRowRightTriggerPhoneLeft gear="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mGearLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  BeltState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mBeltState:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mBeltState:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mBeltState:[I

    const/4 v5, 0x2

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mBeltState:[I

    const/4 v6, 0x3

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  DoorState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mDoorState:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mDoorState:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mDoorState:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mDoorState:[I

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "mSeatOccupied="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mSeatOccupied:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mSeatOccupied:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mSeatOccupied:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mSeatOccupied:[I

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  mRrCwcState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mRrCwcState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  rrOccupiedFlagChange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->rrOccupiedFlagChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->baseCondition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mBeltState:[I

    aget v0, v0, v6

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mDoorState:[I

    aget v0, v0, v6

    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mSeatOccupied:[I

    aget v0, v0, v6

    if-eq v0, v4, :cond_7

    iget-boolean v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->rrOccupiedFlagChange:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 324
    :cond_1
    const-string v0, "config_car_support_cwc_rm"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_2

    move v3, v4

    nop

    :cond_2
    move v0, v3

    .line 325
    .local v0, "isRmCwc":Z
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mBeltState:[I

    aget v1, v1, v5

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mSeatOccupied:[I

    aget v1, v1, v5

    if-ne v1, v4, :cond_3

    .line 327
    return-void

    .line 330
    :cond_3
    const/4 v1, -0x1

    if-eqz v0, :cond_4

    iget v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mRlCwcState:I

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mRlCwcState:I

    if-ne v2, v1, :cond_5

    :cond_4
    iget v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mRrCwcState:I

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mRrCwcState:I

    if-eq v2, v1, :cond_6

    .line 332
    :cond_5
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mPhoneLeftRemindState:I

    .line 333
    const v1, 0x2140a801

    iget v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mPhoneLeftRemindState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->getCarPropertyEvent(ILjava/lang/Object;)Landroid/car/hardware/property/CarPropertyEvent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->dispatchEvent(Landroid/car/hardware/property/CarPropertyEvent;)V

    .line 334
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->lastRemindTime:J

    .line 336
    :cond_6
    return-void

    .line 321
    .end local v0    # "isRmCwc":Z
    :cond_7
    :goto_0
    return-void
.end method


# virtual methods
.method protected getRemindPropertyId()[I
    .locals 3

    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x2140a801

    aput v2, v0, v1

    return-object v0
.end method

.method protected getRequiredProperties()[I
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mRequiredProperties:[I

    return-object v0
.end method

.method protected handlePropertyEvent(Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/car/hardware/property/CarPropertyEvent;

    .line 79
    const-string v0, "PhoneLeftRemind"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePropertyEvent event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    .line 132
    :sswitch_0
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 133
    .local v0, "doors":[Ljava/lang/Integer;
    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 134
    .local v1, "lastDoorState":[I
    nop

    .local v3, "i":I
    :goto_0
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 135
    iget-object v3, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mDoorState:[I

    aget v3, v3, v2

    aput v3, v1, v2

    .line 136
    iget-object v3, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mDoorState:[I

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v2

    .line 134
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 138
    .end local v3    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mDoorState:[I

    invoke-direct {p0, v1, v2}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->checkClearOccupiedFlag([I[I)V

    .line 139
    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mDoorState:[I

    invoke-direct {p0, v1, v2}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->doorTriggerPhoneLeftRemind([I[I)V

    .line 140
    goto/16 :goto_1

    .line 94
    .end local v0    # "doors":[Ljava/lang/Integer;
    .end local v1    # "lastDoorState":[I
    :sswitch_1
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mRrCwcState:I

    .line 95
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->checkCancelRemind()V

    .line 96
    goto/16 :goto_1

    .line 90
    :sswitch_2
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mRlCwcState:I

    .line 91
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->checkCancelRemind()V

    .line 92
    goto/16 :goto_1

    .line 86
    :sswitch_3
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mFrCwcState:I

    .line 87
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->checkCancelRemind()V

    .line 88
    goto/16 :goto_1

    .line 166
    :sswitch_4
    iget-object v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mSeatOccupied:[I

    aget v0, v0, v2

    .line 167
    .local v0, "lastRrSeatOccupied":I
    iget-object v1, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mSeatOccupied:[I

    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v3

    invoke-virtual {v3}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 168
    if-ne v0, v4, :cond_1

    iget-object v1, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mSeatOccupied:[I

    aget v1, v1, v2

    if-nez v1, :cond_1

    .line 169
    iput-boolean v4, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->rrOccupiedFlagChange:Z

    .line 170
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->secRowRightTriggerPhoneLeft()V

    goto/16 :goto_1

    .line 158
    .end local v0    # "lastRrSeatOccupied":I
    :sswitch_5
    iget-object v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mSeatOccupied:[I

    aget v0, v0, v1

    .line 159
    .local v0, "lastRlSeatOccupied":I
    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mSeatOccupied:[I

    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v3

    invoke-virtual {v3}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    .line 160
    if-ne v0, v4, :cond_1

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mSeatOccupied:[I

    aget v1, v2, v1

    if-nez v1, :cond_1

    .line 161
    iput-boolean v4, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->rlOccupiedFlagChange:Z

    .line 162
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->secRowLeftTriggerPhoneLeft()V

    goto/16 :goto_1

    .line 82
    .end local v0    # "lastRlSeatOccupied":I
    :sswitch_6
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mCwcState:I

    .line 83
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->checkCancelRemind()V

    .line 84
    goto/16 :goto_1

    .line 150
    :sswitch_7
    iget-object v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mSeatOccupied:[I

    aget v0, v0, v4

    .line 151
    .local v0, "lastPsngrSeatOccupied":I
    iget-object v1, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mSeatOccupied:[I

    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v2

    invoke-virtual {v2}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v4

    .line 152
    if-ne v0, v4, :cond_1

    iget-object v1, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mSeatOccupied:[I

    aget v1, v1, v4

    if-nez v1, :cond_1

    .line 153
    iput-boolean v4, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->psngrOccupiedFlagChange:Z

    .line 154
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->psngrTriggerPhoneLeft()V

    goto/16 :goto_1

    .line 98
    .end local v0    # "lastPsngrSeatOccupied":I
    :sswitch_8
    iget-object v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mBeltState:[I

    aget v0, v0, v2

    .line 99
    .local v0, "last2ndRightSeatBeltState":I
    iget-object v1, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mBeltState:[I

    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v3

    invoke-virtual {v3}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 100
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mBeltState:[I

    aget v1, v1, v2

    if-ne v1, v4, :cond_1

    .line 101
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->secRowRightTriggerPhoneLeft()V

    goto/16 :goto_1

    .line 119
    .end local v0    # "last2ndRightSeatBeltState":I
    :sswitch_9
    iget-object v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mBeltState:[I

    aget v0, v0, v1

    .line 120
    .local v0, "last2ndLeftSeatBeltState":I
    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mBeltState:[I

    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v3

    invoke-virtual {v3}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    .line 121
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mBeltState:[I

    aget v1, v2, v1

    if-ne v1, v4, :cond_1

    .line 122
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->secRowLeftTriggerPhoneLeft()V

    goto/16 :goto_1

    .line 112
    .end local v0    # "last2ndLeftSeatBeltState":I
    :sswitch_a
    iget-object v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mBeltState:[I

    aget v0, v0, v4

    .line 113
    .local v0, "lastPsngrBeltState":I
    iget-object v1, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mBeltState:[I

    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v2

    invoke-virtual {v2}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v4

    .line 114
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mBeltState:[I

    aget v1, v1, v4

    if-ne v1, v4, :cond_1

    .line 115
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->psngrTriggerPhoneLeft()V

    goto :goto_1

    .line 105
    .end local v0    # "lastPsngrBeltState":I
    :sswitch_b
    iget-object v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mBeltState:[I

    aget v0, v0, v3

    .line 106
    .local v0, "lastDrvSeatBeltState":I
    iget-object v1, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mBeltState:[I

    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v2

    invoke-virtual {v2}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v3

    .line 107
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mBeltState:[I

    aget v1, v1, v3

    if-ne v1, v4, :cond_1

    .line 108
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->drvTriggerPhoneLeft()V

    goto :goto_1

    .line 142
    .end local v0    # "lastDrvSeatBeltState":I
    :sswitch_c
    iget-object v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mSeatOccupied:[I

    aget v0, v0, v3

    .line 143
    .local v0, "lastDrvSeatOccupied":I
    iget-object v1, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mSeatOccupied:[I

    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v2

    invoke-virtual {v2}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v3

    .line 144
    if-ne v0, v4, :cond_1

    iget-object v1, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mSeatOccupied:[I

    aget v1, v1, v3

    if-nez v1, :cond_1

    .line 145
    iput-boolean v4, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->drvOccupiedFlagChange:Z

    .line 146
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->drvTriggerPhoneLeft()V

    goto :goto_1

    .line 129
    .end local v0    # "lastDrvSeatOccupied":I
    :sswitch_d
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mPGearVD:I

    .line 130
    goto :goto_1

    .line 126
    :sswitch_e
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;->mGearLevel:I

    .line 127
    nop

    .line 176
    :cond_1
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x21401205 -> :sswitch_e
        0x21401219 -> :sswitch_d
        0x21401c07 -> :sswitch_c
        0x21401c0c -> :sswitch_b
        0x21401c0d -> :sswitch_a
        0x21401c0e -> :sswitch_9
        0x21401c10 -> :sswitch_8
        0x21401c4f -> :sswitch_7
        0x21401c71 -> :sswitch_6
        0x21401cc8 -> :sswitch_5
        0x21401cca -> :sswitch_4
        0x21401d85 -> :sswitch_3
        0x21401dc2 -> :sswitch_2
        0x21401dc5 -> :sswitch_1
        0x21411c19 -> :sswitch_0
    .end sparse-switch
.end method
