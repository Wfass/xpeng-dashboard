.class public Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;
.super Ljava/lang/Object;
.source "McuAckPwrDebug.java"


# instance fields
.field public uP24G_BAT_ON_OFF_RESULT:I

.field public uP24G_PWR_ON_RESULT:I

.field public uP25V25_SW_EN_RESULT:I

.field public uP2ANT_12V_EN_RESULT:I

.field public uP2BL_PWR_EN_RESULT:I

.field public uP2DVRUSB_PWR_EN_RESULT:I

.field public uP2FAN_12V_EN_RESULT:I

.field public uP2FRUSB_PWR_EN_RESULT:I

.field public uP2GNSS_ANT_PWR_RESULT:I

.field public uP2GNSS_PWR_EN_RESULT:I

.field public uP2MIC8V_ON_OFF_RESULT:I

.field public uP2MUSB_PWR_EN_RESULT:I


# direct methods
.method public constructor <init>([I)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    aget v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;->uP2BL_PWR_EN_RESULT:I

    .line 20
    aget v1, p1, v0

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;->uP2GNSS_PWR_EN_RESULT:I

    .line 21
    aget v1, p1, v0

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;->uP2GNSS_ANT_PWR_RESULT:I

    .line 22
    aget v0, p1, v0

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;->uP24G_BAT_ON_OFF_RESULT:I

    .line 23
    const/4 v0, 0x1

    aget v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;->uP24G_PWR_ON_RESULT:I

    .line 24
    aget v1, p1, v0

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;->uP25V25_SW_EN_RESULT:I

    .line 25
    aget v1, p1, v0

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;->uP2DVRUSB_PWR_EN_RESULT:I

    .line 26
    aget v0, p1, v0

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;->uP2MUSB_PWR_EN_RESULT:I

    .line 27
    const/4 v0, 0x2

    aget v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;->uP2FRUSB_PWR_EN_RESULT:I

    .line 28
    aget v1, p1, v0

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;->uP2ANT_12V_EN_RESULT:I

    .line 29
    aget v1, p1, v0

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;->uP2MIC8V_ON_OFF_RESULT:I

    .line 30
    aget p1, p1, v0

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;->uP2FAN_12V_EN_RESULT:I

    .line 31
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 34
    const-string v0, ""

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "uP2BL_PWR_EN_RESULT="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;->uP2BL_PWR_EN_RESULT:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n uP2GNSS_PWR_EN_RESULT="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;->uP2GNSS_PWR_EN_RESULT:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    return-object v0
.end method
