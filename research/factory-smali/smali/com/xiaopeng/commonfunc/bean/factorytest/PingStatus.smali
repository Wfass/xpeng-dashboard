.class public Lcom/xiaopeng/commonfunc/bean/factorytest/PingStatus;
.super Ljava/lang/Object;
.source "PingStatus.java"


# instance fields
.field private mFailTimes:I

.field private mIsPingEthRunning:Z

.field private mSuccessTimes:I


# direct methods
.method public constructor <init>(ZII)V
    .locals 0
    .param p1, "mIsPingEthRunning"    # Z
    .param p2, "mSuccessTimes"    # I
    .param p3, "mFailTimes"    # I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean p1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/PingStatus;->mIsPingEthRunning:Z

    .line 15
    iput p2, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/PingStatus;->mSuccessTimes:I

    .line 16
    iput p3, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/PingStatus;->mFailTimes:I

    .line 17
    return-void
.end method


# virtual methods
.method public getFailTimes()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/PingStatus;->mFailTimes:I

    return v0
.end method

.method public getSuccessTimes()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/PingStatus;->mSuccessTimes:I

    return v0
.end method

.method public increaseFailTimes()V
    .locals 1

    .line 40
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/PingStatus;->mFailTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/PingStatus;->mFailTimes:I

    .line 41
    return-void
.end method

.method public increaseSuccessTimes()V
    .locals 1

    .line 32
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/PingStatus;->mSuccessTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/PingStatus;->mSuccessTimes:I

    .line 33
    return-void
.end method

.method public isPingEthRunning()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/PingStatus;->mIsPingEthRunning:Z

    return v0
.end method

.method public setPingEthRunning(Z)V
    .locals 0
    .param p1, "mIsPingEthRunning"    # Z

    .line 24
    iput-boolean p1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/PingStatus;->mIsPingEthRunning:Z

    .line 25
    return-void
.end method
