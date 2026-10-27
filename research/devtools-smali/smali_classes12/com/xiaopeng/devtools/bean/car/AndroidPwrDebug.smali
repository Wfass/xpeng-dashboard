.class public Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;
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
    iget v1, p0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->blPwr:I

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 25
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->gnssPwr:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 26
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->gnssAntPwr:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 27
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->batOn4G:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 28
    iget v1, p0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->pwr4G:I

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 29
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->SWEn5v25:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 30
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->dvrUsbPwr:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 31
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->mUsbPwr:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 32
    iget v1, p0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->frUsbPwr:I

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 33
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->ant12vEn:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 34
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->mic8vEn:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 35
    aget v1, v0, v2

    iget v3, p0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->fan12vEn:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 36
    const/4 v1, 0x3

    aget v2, v0, v1

    iget v3, p0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->debugPwrSt:I

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 37
    return-object v0
.end method
