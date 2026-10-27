.class public Lcom/android/car/xpeng/remind/SeatTiltOverRemind;
.super Lcom/android/car/xpeng/remind/CarRemindBase;
.source "SeatTiltOverRemind.java"


# static fields
.field private static final INVALID:I = -0x1

.field private static final OVER_TILT_POS:I = 0x1b

.field private static final SPEED_BOUNDARY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SeatTiltOverRemind"


# instance fields
.field private hasRemind:Z

.field private mGearLevel:I

.field private mIgStatus:I

.field private mRawCarSpeed:F

.field private mThrdLeftSeatOccupancySt:I

.field private mThrdLeftSeatTiltPos:I

.field private mThrdMidSeatOccupancySt:I

.field private mThrdRightSeatOccupancySt:I

.field private mThrdRightSeatTiltPos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/car/CarPropertyService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "propertyService"    # Lcom/android/car/CarPropertyService;

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/xpeng/remind/CarRemindBase;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/car/CarPropertyService;)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mThrdLeftSeatTiltPos:I

    .line 26
    iput v0, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mThrdRightSeatTiltPos:I

    .line 27
    iput v0, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mGearLevel:I

    .line 28
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mRawCarSpeed:F

    .line 29
    iput v0, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mThrdLeftSeatOccupancySt:I

    .line 30
    iput v0, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mThrdRightSeatOccupancySt:I

    .line 31
    iput v0, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mThrdMidSeatOccupancySt:I

    .line 32
    iput v0, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mIgStatus:I

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->hasRemind:Z

    .line 38
    return-void
.end method

.method private checkSeatTiltOver()V
    .locals 4

    .line 112
    iget v0, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mThrdLeftSeatTiltPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mThrdRightSeatTiltPos:I

    if-ne v0, v1, :cond_0

    .line 114
    return-void

    .line 116
    :cond_0
    iget-boolean v0, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->hasRemind:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mIgStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mGearLevel:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_5

    iget v0, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mRawCarSpeed:F

    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    goto/16 :goto_0

    .line 121
    :cond_1
    const-string v0, "SeatTiltOverRemind"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSeatTiltOver mThrdLeftSeatTiltPos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mThrdLeftSeatTiltPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mThrdRightSeatTiltPos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mThrdRightSeatTiltPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mGearLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mGearLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mRawCarSpeed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mRawCarSpeed:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " mThrdLeftSeatOccupancySt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mThrdLeftSeatOccupancySt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mThrdRightSeatOccupancySt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mThrdRightSeatOccupancySt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mThrdMidSeatOccupancySt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mThrdMidSeatOccupancySt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mIgStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mIgStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget v0, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mThrdLeftSeatOccupancySt:I

    const v2, 0x2140a803

    const/16 v3, 0x1b

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mThrdLeftSeatTiltPos:I

    if-ge v0, v3, :cond_2

    .line 124
    iget-boolean v0, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->hasRemind:Z

    if-nez v0, :cond_2

    .line 125
    iput-boolean v1, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->hasRemind:Z

    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->getCarPropertyEvent(ILjava/lang/Object;)Landroid/car/hardware/property/CarPropertyEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->dispatchEvent(Landroid/car/hardware/property/CarPropertyEvent;)V

    .line 130
    :cond_2
    iget v0, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mThrdRightSeatOccupancySt:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mThrdMidSeatOccupancySt:I

    if-ne v0, v1, :cond_4

    :cond_3
    iget v0, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mThrdRightSeatTiltPos:I

    if-ge v0, v3, :cond_4

    .line 132
    iget-boolean v0, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->hasRemind:Z

    if-nez v0, :cond_4

    .line 133
    iput-boolean v1, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->hasRemind:Z

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->getCarPropertyEvent(ILjava/lang/Object;)Landroid/car/hardware/property/CarPropertyEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->dispatchEvent(Landroid/car/hardware/property/CarPropertyEvent;)V

    .line 137
    :cond_4
    return-void

    .line 119
    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method protected getRemindPropertyId()[I
    .locals 3

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x2140a803

    aput v2, v0, v1

    return-object v0
.end method

.method protected getRequiredProperties()[I
    .locals 1

    .line 49
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x21401db8
        0x21401dba
        0x21401205
        0x21601225
        0x21401ddd
        0x21401ddf
        0x21401dde
        0x21401409
    .end array-data
.end method

.method protected handlePropertyEvent(Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/car/hardware/property/CarPropertyEvent;

    .line 63
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const/16 v1, 0x1b

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 87
    :sswitch_0
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 88
    .local v0, "speed":F
    iget v1, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mRawCarSpeed:F

    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    cmpl-float v1, v0, v2

    if-lez v1, :cond_0

    .line 89
    iput v0, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mRawCarSpeed:F

    .line 90
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->checkSeatTiltOver()V

    .line 92
    :cond_0
    iput v0, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mRawCarSpeed:F

    .line 93
    goto/16 :goto_0

    .line 99
    .end local v0    # "speed":F
    :sswitch_1
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mThrdRightSeatOccupancySt:I

    .line 100
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->checkSeatTiltOver()V

    .line 101
    goto/16 :goto_0

    .line 103
    :sswitch_2
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mThrdMidSeatOccupancySt:I

    .line 104
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->checkSeatTiltOver()V

    .line 105
    goto :goto_0

    .line 95
    :sswitch_3
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mThrdLeftSeatOccupancySt:I

    .line 96
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->checkSeatTiltOver()V

    .line 97
    goto :goto_0

    .line 71
    :sswitch_4
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mThrdRightSeatTiltPos:I

    .line 72
    iget v0, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mThrdRightSeatTiltPos:I

    if-ge v0, v1, :cond_2

    .line 73
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->checkSeatTiltOver()V

    goto :goto_0

    .line 65
    :sswitch_5
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mThrdLeftSeatTiltPos:I

    .line 66
    iget v0, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mThrdLeftSeatTiltPos:I

    if-ge v0, v1, :cond_2

    .line 67
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->checkSeatTiltOver()V

    goto :goto_0

    .line 80
    :sswitch_6
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 81
    .local v0, "status":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v2, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mIgStatus:I

    if-eq v2, v1, :cond_1

    .line 82
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->hasRemind:Z

    .line 84
    :cond_1
    iput v0, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mIgStatus:I

    .line 85
    goto :goto_0

    .line 77
    .end local v0    # "status":I
    :sswitch_7
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;->mGearLevel:I

    .line 78
    nop

    .line 109
    :cond_2
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x21401205 -> :sswitch_7
        0x21401409 -> :sswitch_6
        0x21401db8 -> :sswitch_5
        0x21401dba -> :sswitch_4
        0x21401ddd -> :sswitch_3
        0x21401dde -> :sswitch_2
        0x21401ddf -> :sswitch_1
        0x21601225 -> :sswitch_0
    .end sparse-switch
.end method
