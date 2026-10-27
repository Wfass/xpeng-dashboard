.class public Lcom/xiaopeng/factory/bean/car/AndroidPsuOtaMsg;
.super Ljava/lang/Object;
.source "AndroidPsuOtaMsg.java"


# instance fields
.field public otaSt:I

.field public psuResetReq:I

.field public reserved0:I

.field public reserved1:I

.field public reserved2:I

.field public wakeUpHour:I

.field public wakeUpMin:I

.field public wakeUpSecond:I

.field public wakeUpSetReq:I

.field public wakeUpSetType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public packToIntArray()[I
    .locals 4

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 21
    .local v0, "data":[I
    iget v1, p0, Lcom/xiaopeng/factory/bean/car/AndroidPsuOtaMsg;->psuResetReq:I

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 22
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/factory/bean/car/AndroidPsuOtaMsg;->wakeUpSetReq:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 23
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/factory/bean/car/AndroidPsuOtaMsg;->wakeUpSetType:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 24
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/factory/bean/car/AndroidPsuOtaMsg;->wakeUpHour:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 25
    iget v1, p0, Lcom/xiaopeng/factory/bean/car/AndroidPsuOtaMsg;->wakeUpMin:I

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 26
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/factory/bean/car/AndroidPsuOtaMsg;->wakeUpSecond:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 27
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/factory/bean/car/AndroidPsuOtaMsg;->otaSt:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 28
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/factory/bean/car/AndroidPsuOtaMsg;->reserved0:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 29
    iget v1, p0, Lcom/xiaopeng/factory/bean/car/AndroidPsuOtaMsg;->reserved1:I

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 30
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/factory/bean/car/AndroidPsuOtaMsg;->reserved2:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 31
    const-string v1, "AndroidPsuOtaMsg"

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

    .line 32
    return-object v0
.end method
