.class public Lcom/xiaopeng/devtools/bean/car/McuBmsInfoMsg;
.super Ljava/lang/Object;
.source "McuBmsInfoMsg.java"


# instance fields
.field public mChargeMode:I

.field public mCurrent:I

.field public mHwVersion:I

.field public mJobMode:I

.field public mSoc:I

.field public mSoh:I

.field public mState:I

.field public mSwVersion:I

.field public mTempature:I

.field public mVolatage:I


# direct methods
.method public constructor <init>([I)V
    .locals 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    if-eqz p1, :cond_0

    .line 18
    const/4 v0, 0x0

    aget v1, p1, v0

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/devtools/bean/car/McuBmsInfoMsg;->mVolatage:I

    .line 19
    aget v1, p1, v0

    const/high16 v2, -0x10000

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/xiaopeng/devtools/bean/car/McuBmsInfoMsg;->mCurrent:I

    .line 20
    const/4 v1, 0x1

    aget v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/xiaopeng/devtools/bean/car/McuBmsInfoMsg;->mSoc:I

    .line 21
    aget v2, p1, v1

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/xiaopeng/devtools/bean/car/McuBmsInfoMsg;->mSoh:I

    .line 22
    aget v2, p1, v1

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iput v2, p0, Lcom/xiaopeng/devtools/bean/car/McuBmsInfoMsg;->mTempature:I

    .line 23
    aget v2, p1, v1

    shr-int/lit8 v2, v2, 0x18

    and-int/lit8 v2, v2, 0x7

    iput v2, p0, Lcom/xiaopeng/devtools/bean/car/McuBmsInfoMsg;->mChargeMode:I

    .line 24
    aget v1, p1, v1

    shr-int/lit8 v1, v1, 0x1b

    and-int/lit8 v1, v1, 0x1f

    iput v1, p0, Lcom/xiaopeng/devtools/bean/car/McuBmsInfoMsg;->mHwVersion:I

    .line 25
    const/4 v1, 0x2

    aget v2, p1, v1

    shr-int/lit8 v0, v2, 0x0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/xiaopeng/devtools/bean/car/McuBmsInfoMsg;->mState:I

    .line 26
    aget v0, p1, v1

    shr-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/xiaopeng/devtools/bean/car/McuBmsInfoMsg;->mJobMode:I

    .line 27
    aget p1, p1, v1

    shr-int/lit8 p1, p1, 0xa

    and-int/lit8 p1, p1, 0x3f

    iput p1, p0, Lcom/xiaopeng/devtools/bean/car/McuBmsInfoMsg;->mSwVersion:I

    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/xiaopeng/devtools/bean/car/McuBmsInfoMsg;->mVolatage:I

    .line 30
    iput p1, p0, Lcom/xiaopeng/devtools/bean/car/McuBmsInfoMsg;->mCurrent:I

    .line 31
    iput p1, p0, Lcom/xiaopeng/devtools/bean/car/McuBmsInfoMsg;->mSoc:I

    .line 32
    iput p1, p0, Lcom/xiaopeng/devtools/bean/car/McuBmsInfoMsg;->mSoh:I

    .line 33
    iput p1, p0, Lcom/xiaopeng/devtools/bean/car/McuBmsInfoMsg;->mTempature:I

    .line 34
    iput p1, p0, Lcom/xiaopeng/devtools/bean/car/McuBmsInfoMsg;->mChargeMode:I

    .line 35
    iput p1, p0, Lcom/xiaopeng/devtools/bean/car/McuBmsInfoMsg;->mHwVersion:I

    .line 36
    iput p1, p0, Lcom/xiaopeng/devtools/bean/car/McuBmsInfoMsg;->mState:I

    .line 37
    iput p1, p0, Lcom/xiaopeng/devtools/bean/car/McuBmsInfoMsg;->mJobMode:I

    .line 38
    iput p1, p0, Lcom/xiaopeng/devtools/bean/car/McuBmsInfoMsg;->mSwVersion:I

    .line 40
    :goto_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    const-string v0, ""

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mVolatage="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/devtools/bean/car/McuBmsInfoMsg;->mVolatage:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n mCurrent="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/devtools/bean/car/McuBmsInfoMsg;->mCurrent:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n mSoc="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/devtools/bean/car/McuBmsInfoMsg;->mSoc:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n mSoh="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/devtools/bean/car/McuBmsInfoMsg;->mSoh:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n mTempature="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/devtools/bean/car/McuBmsInfoMsg;->mTempature:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n mChargeMode="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/devtools/bean/car/McuBmsInfoMsg;->mChargeMode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n mHwVersion="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/devtools/bean/car/McuBmsInfoMsg;->mHwVersion:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n mState="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/devtools/bean/car/McuBmsInfoMsg;->mState:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n mJobMode="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/devtools/bean/car/McuBmsInfoMsg;->mJobMode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n mSwVersion="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/devtools/bean/car/McuBmsInfoMsg;->mSwVersion:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    return-object v0
.end method
