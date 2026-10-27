.class public Lcom/xiaopeng/commonfunc/bean/car/McuDebug3Msg;
.super Ljava/lang/Object;
.source "McuDebug3Msg.java"


# instance fields
.field public SWEn5v25:I

.field public ant12VEn:I

.field public awakeFailTime:I

.field public batOn4G:I

.field public blPwr:I

.field public ctpPwr:I

.field public dvrUsbPwr:I

.field public fmSt:I

.field public frUsbPwr:I

.field public gnassSt:I

.field public gnssAntPwr:I

.field public gnssPwr:I

.field public mUsbPwr:I

.field public mainPwr:I

.field public mcu2CoreBluEn:I

.field public mic8vEn:I

.field public micSt:I

.field public pmOverVolTime:I

.field public pmSynFailTime:I

.field public pmUnderVolTime:I

.field public ps1v8LREn:I

.field public ps3v3SwEn:I

.field public ps5vSwEn:I

.field public psEn:I

.field public sleepFailTime:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuDebug3Msg;->psEn:I

    .line 33
    const/4 v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuDebug3Msg;->batOn4G:I

    .line 34
    const/4 v0, 0x2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuDebug3Msg;->blPwr:I

    .line 35
    const/4 v0, 0x3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuDebug3Msg;->ant12VEn:I

    .line 36
    const/4 v0, 0x4

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuDebug3Msg;->mic8vEn:I

    .line 37
    const/4 v0, 0x5

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuDebug3Msg;->SWEn5v25:I

    .line 38
    const/4 v0, 0x6

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuDebug3Msg;->ps3v3SwEn:I

    .line 39
    const/4 v0, 0x7

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuDebug3Msg;->ps1v8LREn:I

    .line 40
    const/16 v0, 0x8

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuDebug3Msg;->mUsbPwr:I

    .line 41
    const/16 v0, 0x9

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuDebug3Msg;->frUsbPwr:I

    .line 42
    const/16 v0, 0xa

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuDebug3Msg;->dvrUsbPwr:I

    .line 43
    const/16 v0, 0xb

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuDebug3Msg;->ctpPwr:I

    .line 44
    const/16 v0, 0xc

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuDebug3Msg;->gnssPwr:I

    .line 45
    const/16 v0, 0xd

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuDebug3Msg;->gnssAntPwr:I

    .line 46
    const/16 v0, 0xe

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuDebug3Msg;->mainPwr:I

    .line 47
    const/16 v0, 0xf

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuDebug3Msg;->mcu2CoreBluEn:I

    .line 48
    const/16 v0, 0x10

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuDebug3Msg;->ps5vSwEn:I

    .line 49
    const/16 v0, 0x11

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuDebug3Msg;->fmSt:I

    .line 50
    const/16 v0, 0x12

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuDebug3Msg;->gnassSt:I

    .line 51
    const/16 v0, 0x13

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuDebug3Msg;->micSt:I

    .line 52
    const/16 v0, 0x14

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuDebug3Msg;->sleepFailTime:I

    .line 53
    const/16 v0, 0x15

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuDebug3Msg;->awakeFailTime:I

    .line 54
    const/16 v0, 0x16

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuDebug3Msg;->pmSynFailTime:I

    .line 55
    const/16 v0, 0x17

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuDebug3Msg;->pmOverVolTime:I

    .line 56
    const/16 v0, 0x18

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/car/McuDebug3Msg;->pmUnderVolTime:I

    .line 57
    return-void
.end method
