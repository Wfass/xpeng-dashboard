.class public Lcom/android/car/xpeng/remind/TailgateCollisionRemind;
.super Lcom/android/car/xpeng/remind/CarRemindBase;
.source "TailgateCollisionRemind.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TailgateCollisionRemind"


# instance fields
.field private mGearLevel:I

.field private mLastRadarCollision:Z

.field private mNgpMode:I

.field private mRearRadarDistance:[F

.field private mRemindState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/car/CarPropertyService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "propertyService"    # Lcom/android/car/CarPropertyService;

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/xpeng/remind/CarRemindBase;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/car/CarPropertyService;)V

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->mRearRadarDistance:[F

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->mGearLevel:I

    .line 23
    iput v0, p0, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->mNgpMode:I

    .line 24
    iput-boolean v0, p0, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->mLastRadarCollision:Z

    .line 25
    iput v0, p0, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->mRemindState:I

    .line 29
    return-void

    nop

    :array_0
    .array-data 4
        0x44480000    # 800.0f
        0x44480000    # 800.0f
    .end array-data
.end method

.method private checkCollisionRemind(Z)V
    .locals 5
    .param p1, "isRadarCollision"    # Z

    .line 75
    const-string v0, "TailgateCollisionRemind"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCollisionRemind mGearLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->mGearLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mRearRadarDistance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->mRearRadarDistance:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->mRearRadarDistance:[F

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mNgpMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->mNgpMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget v0, p0, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->mGearLevel:I

    const v1, 0x2140a804

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->mNgpMode:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->mNgpMode:I

    if-nez v0, :cond_1

    .line 77
    :cond_0
    const-string v0, "TailgateCollisionRemind"

    const-string v2, "checkCollisionRemind send remind"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget v0, p0, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->mRemindState:I

    if-nez v0, :cond_2

    .line 79
    iput v4, p0, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->mRemindState:I

    .line 80
    iget v0, p0, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->mRemindState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->getCarPropertyEvent(ILjava/lang/Object;)Landroid/car/hardware/property/CarPropertyEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->dispatchEvent(Landroid/car/hardware/property/CarPropertyEvent;)V

    goto :goto_0

    .line 83
    :cond_1
    iget v0, p0, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->mRemindState:I

    if-eqz v0, :cond_2

    .line 84
    iput v3, p0, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->mRemindState:I

    .line 85
    iget v0, p0, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->mRemindState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->getCarPropertyEvent(ILjava/lang/Object;)Landroid/car/hardware/property/CarPropertyEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->dispatchEvent(Landroid/car/hardware/property/CarPropertyEvent;)V

    .line 88
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected getRemindPropertyId()[I
    .locals 3

    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x2140a804

    aput v2, v0, v1

    return-object v0
.end method

.method protected getRequiredProperties()[I
    .locals 1

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x21401205
        0x2161261d
        0x2140382f
    .end array-data
.end method

.method protected handlePropertyEvent(Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/car/hardware/property/CarPropertyEvent;

    .line 44
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401205

    if-eq v0, v1, :cond_6

    const v1, 0x2140382f

    if-eq v0, v1, :cond_5

    const v1, 0x2161261d

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 50
    :cond_0
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Float;

    .line 51
    .local v0, "distance":[Ljava/lang/Float;
    iget-object v1, p0, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->mRearRadarDistance:[F

    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v1, v4

    .line 52
    iget-object v1, p0, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->mRearRadarDistance:[F

    const/4 v3, 0x4

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v2

    .line 53
    iget-object v1, p0, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->mRearRadarDistance:[F

    aget v1, v1, v4

    const/high16 v3, 0x428c0000    # 70.0f

    cmpg-float v1, v1, v3

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->mRearRadarDistance:[F

    aget v1, v1, v2

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    iget-boolean v1, p0, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->mLastRadarCollision:Z

    if-eqz v1, :cond_2

    .line 60
    invoke-direct {p0, v4}, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->checkCollisionRemind(Z)V

    .line 62
    :cond_2
    iput-boolean v4, p0, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->mLastRadarCollision:Z

    .line 64
    goto :goto_1

    .line 54
    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->mLastRadarCollision:Z

    if-nez v1, :cond_4

    .line 55
    invoke-direct {p0, v2}, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->checkCollisionRemind(Z)V

    .line 57
    :cond_4
    iput-boolean v2, p0, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->mLastRadarCollision:Z

    goto :goto_1

    .line 66
    .end local v0    # "distance":[Ljava/lang/Float;
    :cond_5
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->mNgpMode:I

    .line 67
    iget-boolean v0, p0, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->mLastRadarCollision:Z

    invoke-direct {p0, v0}, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->checkCollisionRemind(Z)V

    .line 68
    goto :goto_1

    .line 46
    :cond_6
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->mGearLevel:I

    .line 47
    iget-boolean v0, p0, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->mLastRadarCollision:Z

    invoke-direct {p0, v0}, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;->checkCollisionRemind(Z)V

    .line 48
    nop

    .line 72
    :goto_1
    return-void
.end method
