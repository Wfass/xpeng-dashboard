.class public Lcom/xiaopeng/factory/bean/car/TboxGsmBand;
.super Ljava/lang/Object;
.source "TboxGsmBand.java"


# instance fields
.field private GSM_1800:I

.field private GSM_900:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public getGSM_1800()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/xiaopeng/factory/bean/car/TboxGsmBand;->GSM_1800:I

    return v0
.end method

.method public getGSM_900()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/xiaopeng/factory/bean/car/TboxGsmBand;->GSM_900:I

    return v0
.end method

.method public setBandValue(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 43
    const-string v0, "GSM_900"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iput p2, p0, Lcom/xiaopeng/factory/bean/car/TboxGsmBand;->GSM_900:I

    goto :goto_0

    .line 45
    :cond_0
    const-string v0, "GSM_1800"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    iput p2, p0, Lcom/xiaopeng/factory/bean/car/TboxGsmBand;->GSM_1800:I

    .line 48
    :cond_1
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

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v0, "mItems":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/factory/view/modemui/ModemBandEntity;>;"
    new-instance v1, Lcom/xiaopeng/factory/view/modemui/ModemBandEntity;

    const-string v2, "GSM_900"

    iget v3, p0, Lcom/xiaopeng/factory/bean/car/TboxGsmBand;->GSM_900:I

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/factory/view/modemui/ModemBandEntity;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v1, Lcom/xiaopeng/factory/view/modemui/ModemBandEntity;

    const-string v2, "GSM_1800"

    iget v3, p0, Lcom/xiaopeng/factory/bean/car/TboxGsmBand;->GSM_1800:I

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/factory/view/modemui/ModemBandEntity;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TboxGsmBand{GSM_900="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/factory/bean/car/TboxGsmBand;->GSM_900:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", GSM_1800="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/factory/bean/car/TboxGsmBand;->GSM_1800:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
