.class public Lcom/xiaopeng/commonfunc/bean/factorytest/AndTempInfo;
.super Ljava/lang/Object;
.source "AndTempInfo.java"


# instance fields
.field private cpuTemp:D

.field private ddrTemp:D

.field private gpuTemp:D

.field private pmic2Temp:D

.field private pmicTemp:D

.field private socTemp:D

.field private ufsTemp:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AndTempInfo;->cpuTemp:D

    .line 15
    iput-wide v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AndTempInfo;->ddrTemp:D

    .line 16
    iput-wide v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AndTempInfo;->gpuTemp:D

    .line 17
    iput-wide v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AndTempInfo;->socTemp:D

    .line 18
    iput-wide v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AndTempInfo;->ufsTemp:D

    .line 19
    iput-wide v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AndTempInfo;->pmicTemp:D

    .line 20
    iput-wide v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AndTempInfo;->pmic2Temp:D

    .line 21
    return-void
.end method


# virtual methods
.method public getCpuTemp()D
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AndTempInfo;->cpuTemp:D

    return-wide v0
.end method

.method public getDdrTemp()D
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AndTempInfo;->ddrTemp:D

    return-wide v0
.end method

.method public getGpuTemp()D
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AndTempInfo;->gpuTemp:D

    return-wide v0
.end method

.method public getPmic2Temp()D
    .locals 2

    .line 72
    iget-wide v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AndTempInfo;->pmic2Temp:D

    return-wide v0
.end method

.method public getPmicTemp()D
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AndTempInfo;->pmicTemp:D

    return-wide v0
.end method

.method public getSocTemp()D
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AndTempInfo;->socTemp:D

    return-wide v0
.end method

.method public getUfsTemp()D
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AndTempInfo;->ufsTemp:D

    return-wide v0
.end method

.method public setCpuTemp(D)V
    .locals 0

    .line 28
    iput-wide p1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AndTempInfo;->cpuTemp:D

    .line 29
    return-void
.end method

.method public setDdrTemp(D)V
    .locals 0

    .line 36
    iput-wide p1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AndTempInfo;->ddrTemp:D

    .line 37
    return-void
.end method

.method public setGpuTemp(D)V
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AndTempInfo;->gpuTemp:D

    .line 45
    return-void
.end method

.method public setPmic2Temp(D)V
    .locals 0

    .line 76
    iput-wide p1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AndTempInfo;->pmic2Temp:D

    .line 77
    return-void
.end method

.method public setPmicTemp(D)V
    .locals 0

    .line 68
    iput-wide p1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AndTempInfo;->pmicTemp:D

    .line 69
    return-void
.end method

.method public setSocTemp(D)V
    .locals 0

    .line 52
    iput-wide p1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AndTempInfo;->socTemp:D

    .line 53
    return-void
.end method

.method public setUfsTemp(D)V
    .locals 0

    .line 60
    iput-wide p1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AndTempInfo;->ufsTemp:D

    .line 61
    return-void
.end method
