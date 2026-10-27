.class public Lcom/xiaopeng/devtools/bean/car/AndroidTest;
.super Ljava/lang/Object;
.source "AndroidTest.java"


# instance fields
.field public batVolDet:I

.field public canTest:I

.field public eepromTest:I

.field public fmAntTest:I

.field public gnssAntTest:I

.field public gnssComDet:I

.field public micTest:I

.field public tempDet:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public packToIntArray()[I
    .locals 4

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 26
    iget v1, p0, Lcom/xiaopeng/devtools/bean/car/AndroidTest;->eepromTest:I

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 27
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/devtools/bean/car/AndroidTest;->canTest:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 28
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/devtools/bean/car/AndroidTest;->micTest:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 29
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/devtools/bean/car/AndroidTest;->gnssAntTest:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 30
    iget v1, p0, Lcom/xiaopeng/devtools/bean/car/AndroidTest;->fmAntTest:I

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 31
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/devtools/bean/car/AndroidTest;->tempDet:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 32
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/devtools/bean/car/AndroidTest;->batVolDet:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 33
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/devtools/bean/car/AndroidTest;->gnssComDet:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 34
    const-string v1, "AndroidTest"

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

    .line 35
    return-object v0
.end method
