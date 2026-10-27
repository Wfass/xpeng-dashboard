.class public Lcom/xiaopeng/factory/bean/car/TboxLteBand;
.super Ljava/lang/Object;
.source "TboxLteBand.java"


# instance fields
.field private Band1:I

.field private Band3:I

.field private Band34:I

.field private Band38:I

.field private Band39:I

.field private Band40:I

.field private Band41:I

.field private Band5:I

.field private Band8:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public getBand1()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/xiaopeng/factory/bean/car/TboxLteBand;->Band1:I

    return v0
.end method

.method public getBand3()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/xiaopeng/factory/bean/car/TboxLteBand;->Band3:I

    return v0
.end method

.method public getBand34()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/xiaopeng/factory/bean/car/TboxLteBand;->Band34:I

    return v0
.end method

.method public getBand38()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/xiaopeng/factory/bean/car/TboxLteBand;->Band38:I

    return v0
.end method

.method public getBand39()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/xiaopeng/factory/bean/car/TboxLteBand;->Band39:I

    return v0
.end method

.method public getBand40()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/xiaopeng/factory/bean/car/TboxLteBand;->Band40:I

    return v0
.end method

.method public getBand41()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/xiaopeng/factory/bean/car/TboxLteBand;->Band41:I

    return v0
.end method

.method public getBand5()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/xiaopeng/factory/bean/car/TboxLteBand;->Band5:I

    return v0
.end method

.method public getBand8()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/xiaopeng/factory/bean/car/TboxLteBand;->Band8:I

    return v0
.end method

.method public setBandValue(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 92
    const-string v0, "Band1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iput p2, p0, Lcom/xiaopeng/factory/bean/car/TboxLteBand;->Band1:I

    goto :goto_0

    .line 94
    :cond_0
    const-string v0, "Band3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iput p2, p0, Lcom/xiaopeng/factory/bean/car/TboxLteBand;->Band3:I

    goto :goto_0

    .line 96
    :cond_1
    const-string v0, "Band5"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    iput p2, p0, Lcom/xiaopeng/factory/bean/car/TboxLteBand;->Band5:I

    goto :goto_0

    .line 98
    :cond_2
    const-string v0, "Band8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    iput p2, p0, Lcom/xiaopeng/factory/bean/car/TboxLteBand;->Band8:I

    goto :goto_0

    .line 100
    :cond_3
    const-string v0, "Band34"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 101
    iput p2, p0, Lcom/xiaopeng/factory/bean/car/TboxLteBand;->Band34:I

    goto :goto_0

    .line 102
    :cond_4
    const-string v0, "Band38"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 103
    iput p2, p0, Lcom/xiaopeng/factory/bean/car/TboxLteBand;->Band38:I

    goto :goto_0

    .line 104
    :cond_5
    const-string v0, "Band39"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 105
    iput p2, p0, Lcom/xiaopeng/factory/bean/car/TboxLteBand;->Band39:I

    goto :goto_0

    .line 106
    :cond_6
    const-string v0, "Band40"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 107
    iput p2, p0, Lcom/xiaopeng/factory/bean/car/TboxLteBand;->Band40:I

    goto :goto_0

    .line 108
    :cond_7
    const-string v0, "Band41"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 109
    iput p2, p0, Lcom/xiaopeng/factory/bean/car/TboxLteBand;->Band41:I

    .line 111
    :cond_8
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

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v0, "mItems":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/factory/view/modemui/ModemBandEntity;>;"
    new-instance v1, Lcom/xiaopeng/factory/view/modemui/ModemBandEntity;

    const-string v2, "Band1"

    iget v3, p0, Lcom/xiaopeng/factory/bean/car/TboxLteBand;->Band1:I

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/factory/view/modemui/ModemBandEntity;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v1, Lcom/xiaopeng/factory/view/modemui/ModemBandEntity;

    const-string v2, "Band3"

    iget v3, p0, Lcom/xiaopeng/factory/bean/car/TboxLteBand;->Band3:I

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/factory/view/modemui/ModemBandEntity;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v1, Lcom/xiaopeng/factory/view/modemui/ModemBandEntity;

    const-string v2, "Band5"

    iget v3, p0, Lcom/xiaopeng/factory/bean/car/TboxLteBand;->Band5:I

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/factory/view/modemui/ModemBandEntity;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v1, Lcom/xiaopeng/factory/view/modemui/ModemBandEntity;

    const-string v2, "Band8"

    iget v3, p0, Lcom/xiaopeng/factory/bean/car/TboxLteBand;->Band8:I

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/factory/view/modemui/ModemBandEntity;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v1, Lcom/xiaopeng/factory/view/modemui/ModemBandEntity;

    const-string v2, "Band34"

    iget v3, p0, Lcom/xiaopeng/factory/bean/car/TboxLteBand;->Band8:I

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/factory/view/modemui/ModemBandEntity;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v1, Lcom/xiaopeng/factory/view/modemui/ModemBandEntity;

    const-string v2, "Band38"

    iget v3, p0, Lcom/xiaopeng/factory/bean/car/TboxLteBand;->Band8:I

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/factory/view/modemui/ModemBandEntity;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v1, Lcom/xiaopeng/factory/view/modemui/ModemBandEntity;

    const-string v2, "Band39"

    iget v3, p0, Lcom/xiaopeng/factory/bean/car/TboxLteBand;->Band8:I

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/factory/view/modemui/ModemBandEntity;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v1, Lcom/xiaopeng/factory/view/modemui/ModemBandEntity;

    const-string v2, "Band40"

    iget v3, p0, Lcom/xiaopeng/factory/bean/car/TboxLteBand;->Band8:I

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/factory/view/modemui/ModemBandEntity;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v1, Lcom/xiaopeng/factory/view/modemui/ModemBandEntity;

    const-string v2, "Band41"

    iget v3, p0, Lcom/xiaopeng/factory/bean/car/TboxLteBand;->Band8:I

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/factory/view/modemui/ModemBandEntity;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TboxLteBand{Band1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/factory/bean/car/TboxLteBand;->Band1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Band3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/factory/bean/car/TboxLteBand;->Band3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Band5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/factory/bean/car/TboxLteBand;->Band5:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Band8="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/factory/bean/car/TboxLteBand;->Band8:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Band34="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/factory/bean/car/TboxLteBand;->Band34:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Band38="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/factory/bean/car/TboxLteBand;->Band38:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Band39="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/factory/bean/car/TboxLteBand;->Band39:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Band40="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/factory/bean/car/TboxLteBand;->Band40:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Band41="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/factory/bean/car/TboxLteBand;->Band41:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
