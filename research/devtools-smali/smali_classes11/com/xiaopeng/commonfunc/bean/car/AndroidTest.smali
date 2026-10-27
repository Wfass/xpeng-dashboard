.class public Lcom/xiaopeng/commonfunc/bean/car/AndroidTest;
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

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public packToIntArray()[I
    .locals 4

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 22
    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidTest;->eepromTest:I

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 23
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidTest;->canTest:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 24
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidTest;->micTest:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 25
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidTest;->gnssAntTest:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 26
    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidTest;->fmAntTest:I

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 27
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidTest;->tempDet:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 28
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidTest;->batVolDet:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 29
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidTest;->gnssComDet:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 30
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 34
    const-string v0, ""

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "eepromTest="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidTest;->eepromTest:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n canTest="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidTest;->canTest:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n micTest="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidTest;->micTest:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n gnssAntTest="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidTest;->gnssAntTest:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n fmAntTest="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidTest;->fmAntTest:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n tempDet="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidTest;->tempDet:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n batVolDet="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidTest;->batVolDet:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n gnssComDet="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidTest;->gnssComDet:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    return-object v0
.end method
