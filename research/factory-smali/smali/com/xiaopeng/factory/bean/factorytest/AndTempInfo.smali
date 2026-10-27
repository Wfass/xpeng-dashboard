.class public Lcom/xiaopeng/factory/bean/factorytest/AndTempInfo;
.super Ljava/lang/Object;
.source "AndTempInfo.java"


# instance fields
.field private ampTemp:D

.field private cpuTemp:D

.field private ddrTemp:D

.field private pmicTemp:D

.field private socTemp:D

.field private ufsTemp:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/xiaopeng/factory/bean/factorytest/AndTempInfo;->cpuTemp:D

    .line 14
    iput-wide v0, p0, Lcom/xiaopeng/factory/bean/factorytest/AndTempInfo;->socTemp:D

    .line 15
    iput-wide v0, p0, Lcom/xiaopeng/factory/bean/factorytest/AndTempInfo;->ufsTemp:D

    .line 16
    iput-wide v0, p0, Lcom/xiaopeng/factory/bean/factorytest/AndTempInfo;->ddrTemp:D

    .line 17
    iput-wide v0, p0, Lcom/xiaopeng/factory/bean/factorytest/AndTempInfo;->ampTemp:D

    .line 18
    iput-wide v0, p0, Lcom/xiaopeng/factory/bean/factorytest/AndTempInfo;->pmicTemp:D

    .line 19
    return-void
.end method


# virtual methods
.method public getAmpTemp()D
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/xiaopeng/factory/bean/factorytest/AndTempInfo;->ampTemp:D

    return-wide v0
.end method

.method public getCpuTemp()D
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/xiaopeng/factory/bean/factorytest/AndTempInfo;->cpuTemp:D

    return-wide v0
.end method

.method public getDdrTemp()D
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/xiaopeng/factory/bean/factorytest/AndTempInfo;->ddrTemp:D

    return-wide v0
.end method

.method public getPmicTemp()D
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/xiaopeng/factory/bean/factorytest/AndTempInfo;->pmicTemp:D

    return-wide v0
.end method

.method public getSocTemp()D
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/xiaopeng/factory/bean/factorytest/AndTempInfo;->socTemp:D

    return-wide v0
.end method

.method public getUfsTemp()D
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/xiaopeng/factory/bean/factorytest/AndTempInfo;->ufsTemp:D

    return-wide v0
.end method

.method public setAmpTemp(D)V
    .locals 0
    .param p1, "ampTemp"    # D

    .line 58
    iput-wide p1, p0, Lcom/xiaopeng/factory/bean/factorytest/AndTempInfo;->ampTemp:D

    .line 59
    return-void
.end method

.method public setCpuTemp(D)V
    .locals 0
    .param p1, "cpuTemp"    # D

    .line 26
    iput-wide p1, p0, Lcom/xiaopeng/factory/bean/factorytest/AndTempInfo;->cpuTemp:D

    .line 27
    return-void
.end method

.method public setDdrTemp(D)V
    .locals 0
    .param p1, "ddrTemp"    # D

    .line 50
    iput-wide p1, p0, Lcom/xiaopeng/factory/bean/factorytest/AndTempInfo;->ddrTemp:D

    .line 51
    return-void
.end method

.method public setPmicTemp(D)V
    .locals 0
    .param p1, "pmicTemp"    # D

    .line 66
    iput-wide p1, p0, Lcom/xiaopeng/factory/bean/factorytest/AndTempInfo;->pmicTemp:D

    .line 67
    return-void
.end method

.method public setSocTemp(D)V
    .locals 0
    .param p1, "socTemp"    # D

    .line 34
    iput-wide p1, p0, Lcom/xiaopeng/factory/bean/factorytest/AndTempInfo;->socTemp:D

    .line 35
    return-void
.end method

.method public setUfsTemp(D)V
    .locals 0
    .param p1, "ufsTemp"    # D

    .line 42
    iput-wide p1, p0, Lcom/xiaopeng/factory/bean/factorytest/AndTempInfo;->ufsTemp:D

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndTempInfo{cpuTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/factory/bean/factorytest/AndTempInfo;->cpuTemp:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", socTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/factory/bean/factorytest/AndTempInfo;->socTemp:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", ufsTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/factory/bean/factorytest/AndTempInfo;->ufsTemp:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", ddrTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/factory/bean/factorytest/AndTempInfo;->ddrTemp:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", ampTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/factory/bean/factorytest/AndTempInfo;->ampTemp:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", pmicTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/factory/bean/factorytest/AndTempInfo;->pmicTemp:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
