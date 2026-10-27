.class public Lcom/xiaopeng/factory/bean/car/TboxUmtsBand;
.super Ljava/lang/Object;
.source "TboxUmtsBand.java"


# instance fields
.field private TDSCDMA_BAND_A:I

.field private TDSCDMA_BAND_F:I

.field private WCDMA_2100:I

.field private WCDMA_900:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public getTDSCDMA_BAND_A()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/xiaopeng/factory/bean/car/TboxUmtsBand;->TDSCDMA_BAND_A:I

    return v0
.end method

.method public getTDSCDMA_BAND_F()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/xiaopeng/factory/bean/car/TboxUmtsBand;->TDSCDMA_BAND_F:I

    return v0
.end method

.method public getWCDMA_2100()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/xiaopeng/factory/bean/car/TboxUmtsBand;->WCDMA_2100:I

    return v0
.end method

.method public getWCDMA_900()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/xiaopeng/factory/bean/car/TboxUmtsBand;->WCDMA_900:I

    return v0
.end method

.method public setBandValue(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 57
    const-string v0, "TDSCDMA_BAND_A"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iput p2, p0, Lcom/xiaopeng/factory/bean/car/TboxUmtsBand;->TDSCDMA_BAND_A:I

    goto :goto_0

    .line 59
    :cond_0
    const-string v0, "TDSCDMA_BAND_F"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iput p2, p0, Lcom/xiaopeng/factory/bean/car/TboxUmtsBand;->TDSCDMA_BAND_F:I

    goto :goto_0

    .line 61
    :cond_1
    const-string v0, "WCDMA_2100"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    iput p2, p0, Lcom/xiaopeng/factory/bean/car/TboxUmtsBand;->WCDMA_2100:I

    goto :goto_0

    .line 63
    :cond_2
    const-string v0, "WCDMA_900"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    iput p2, p0, Lcom/xiaopeng/factory/bean/car/TboxUmtsBand;->WCDMA_900:I

    .line 66
    :cond_3
    :goto_0
    return-void
.end method

.method public toBandList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/factory/view/modemui/ModemBandEntity;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v0, "mItems":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/factory/view/modemui/ModemBandEntity;>;"
    new-instance v1, Lcom/xiaopeng/factory/view/modemui/ModemBandEntity;

    const-string v2, "TDSCDMA_BAND_A"

    iget v3, p0, Lcom/xiaopeng/factory/bean/car/TboxUmtsBand;->TDSCDMA_BAND_A:I

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/factory/view/modemui/ModemBandEntity;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v1, Lcom/xiaopeng/factory/view/modemui/ModemBandEntity;

    const-string v2, "TDSCDMA_BAND_F"

    iget v3, p0, Lcom/xiaopeng/factory/bean/car/TboxUmtsBand;->TDSCDMA_BAND_F:I

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/factory/view/modemui/ModemBandEntity;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v1, Lcom/xiaopeng/factory/view/modemui/ModemBandEntity;

    const-string v2, "WCDMA_2100"

    iget v3, p0, Lcom/xiaopeng/factory/bean/car/TboxUmtsBand;->WCDMA_2100:I

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/factory/view/modemui/ModemBandEntity;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v1, Lcom/xiaopeng/factory/view/modemui/ModemBandEntity;

    const-string v2, "WCDMA_900"

    iget v3, p0, Lcom/xiaopeng/factory/bean/car/TboxUmtsBand;->WCDMA_900:I

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/factory/view/modemui/ModemBandEntity;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TboxUmtsBand{TDSCDMA_BAND_A="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/factory/bean/car/TboxUmtsBand;->TDSCDMA_BAND_A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", TDSCDMA_BAND_F="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/factory/bean/car/TboxUmtsBand;->TDSCDMA_BAND_F:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", WCDMA_2100="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/factory/bean/car/TboxUmtsBand;->WCDMA_2100:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", WCDMA_900="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/factory/bean/car/TboxUmtsBand;->WCDMA_900:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
