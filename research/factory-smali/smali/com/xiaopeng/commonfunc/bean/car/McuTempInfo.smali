.class public Lcom/xiaopeng/commonfunc/bean/car/McuTempInfo;
.super Ljava/lang/Object;
.source "McuTempInfo.java"


# instance fields
.field private battTemp:F

.field private mcuTemp:F

.field private pcbTemp:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuTempInfo;->mcuTemp:F

    .line 11
    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuTempInfo;->battTemp:F

    .line 12
    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuTempInfo;->pcbTemp:F

    .line 13
    return-void
.end method


# virtual methods
.method public getBattTemp()F
    .locals 1

    .line 24
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuTempInfo;->battTemp:F

    return v0
.end method

.method public getMcuTemp()F
    .locals 1

    .line 16
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuTempInfo;->mcuTemp:F

    return v0
.end method

.method public getPcbTemp()F
    .locals 1

    .line 32
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuTempInfo;->pcbTemp:F

    return v0
.end method

.method public setBattTemp(F)V
    .locals 0
    .param p1, "battTemp"    # F

    .line 28
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/car/McuTempInfo;->battTemp:F

    .line 29
    return-void
.end method

.method public setMcuTemp(F)V
    .locals 0
    .param p1, "mcuTemp"    # F

    .line 20
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/car/McuTempInfo;->mcuTemp:F

    .line 21
    return-void
.end method

.method public setPcbTemp(F)V
    .locals 0
    .param p1, "pcbTemp"    # F

    .line 36
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/car/McuTempInfo;->pcbTemp:F

    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "McuTempInfo{mcuTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/car/McuTempInfo;->mcuTemp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", battTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/car/McuTempInfo;->battTemp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pcbTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/car/McuTempInfo;->pcbTemp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
