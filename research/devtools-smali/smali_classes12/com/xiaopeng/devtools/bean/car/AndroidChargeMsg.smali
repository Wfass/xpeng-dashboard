.class public Lcom/xiaopeng/devtools/bean/car/AndroidChargeMsg;
.super Ljava/lang/Object;
.source "AndroidChargeMsg.java"


# instance fields
.field public chargeMode:I

.field public day1:I

.field public day2:I

.field public hour1:I

.field public hour2:I

.field public minute1:I

.field public minute2:I

.field public month1:I

.field public month2:I

.field public stopChargeSoc:I

.field public timeMode:I

.field public week1:I

.field public week2:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public packToIntArray()[I
    .locals 4

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 28
    iget v1, p0, Lcom/xiaopeng/devtools/bean/car/AndroidChargeMsg;->chargeMode:I

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 29
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/devtools/bean/car/AndroidChargeMsg;->stopChargeSoc:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 30
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/devtools/bean/car/AndroidChargeMsg;->week1:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 31
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/devtools/bean/car/AndroidChargeMsg;->month1:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 32
    iget v1, p0, Lcom/xiaopeng/devtools/bean/car/AndroidChargeMsg;->day1:I

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 33
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/devtools/bean/car/AndroidChargeMsg;->hour1:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 34
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/devtools/bean/car/AndroidChargeMsg;->minute1:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 35
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/devtools/bean/car/AndroidChargeMsg;->week2:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 36
    iget v1, p0, Lcom/xiaopeng/devtools/bean/car/AndroidChargeMsg;->month2:I

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 37
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/devtools/bean/car/AndroidChargeMsg;->day2:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 38
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/devtools/bean/car/AndroidChargeMsg;->hour2:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 39
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/devtools/bean/car/AndroidChargeMsg;->minute2:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 40
    iget v1, p0, Lcom/xiaopeng/devtools/bean/car/AndroidChargeMsg;->timeMode:I

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 41
    const-string v1, "AndroidChargeMsg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packToIntArray data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-object v0
.end method
