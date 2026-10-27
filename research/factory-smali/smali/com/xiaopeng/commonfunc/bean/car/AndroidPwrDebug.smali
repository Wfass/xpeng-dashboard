.class public Lcom/xiaopeng/commonfunc/bean/car/AndroidPwrDebug;
.super Ljava/lang/Object;
.source "AndroidPwrDebug.java"


# instance fields
.field public SWEn5v25:I

.field public ant12vEn:I

.field public batOn4G:I

.field public blPwr:I

.field public debugPwrSt:I

.field public dvrUsbPwr:I

.field public fan12vEn:I

.field public frUsbPwr:I

.field public gnssAntPwr:I

.field public gnssPwr:I

.field public mUsbPwr:I

.field public mic8vEn:I

.field public pwr4G:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public packToIntArray()[I
    .locals 4

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 24
    .local v0, "data":[I
    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidPwrDebug;->blPwr:I

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 25
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidPwrDebug;->gnssPwr:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 26
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidPwrDebug;->gnssAntPwr:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 27
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidPwrDebug;->batOn4G:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 28
    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidPwrDebug;->pwr4G:I

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 29
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidPwrDebug;->SWEn5v25:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 30
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidPwrDebug;->dvrUsbPwr:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 31
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidPwrDebug;->mUsbPwr:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 32
    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidPwrDebug;->frUsbPwr:I

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 33
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidPwrDebug;->ant12vEn:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 34
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidPwrDebug;->mic8vEn:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 35
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidPwrDebug;->fan12vEn:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 36
    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidPwrDebug;->debugPwrSt:I

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 37
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 41
    const-string v0, ""

    .line 42
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "blPwr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidPwrDebug;->blPwr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n gnssPwr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidPwrDebug;->gnssPwr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n gnssAntPwr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidPwrDebug;->gnssAntPwr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n batOn4G="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidPwrDebug;->batOn4G:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n pwr4G="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidPwrDebug;->pwr4G:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n SWEn5v25="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidPwrDebug;->SWEn5v25:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n dvrUsbPwr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidPwrDebug;->dvrUsbPwr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n mUsbPwr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidPwrDebug;->mUsbPwr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n frUsbPwr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidPwrDebug;->frUsbPwr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n ant12vEn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidPwrDebug;->ant12vEn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n mic8vEn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidPwrDebug;->mic8vEn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n fan12vEn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidPwrDebug;->fan12vEn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n debugPwrSt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidPwrDebug;->debugPwrSt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    return-object v0
.end method
