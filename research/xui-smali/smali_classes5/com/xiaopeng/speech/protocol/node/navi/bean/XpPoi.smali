.class public Lcom/xiaopeng/speech/protocol/node/navi/bean/XpPoi;
.super Ljava/lang/Object;
.source "XpPoi.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/node/navi/bean/XpBaseContent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/protocol/node/navi/bean/XpBaseContent<",
        "Lcom/xiaopeng/speech/protocol/node/navi/bean/XpPoi;",
        ">;"
    }
.end annotation


# instance fields
.field private address:Ljava/lang/String;

.field private distance:D

.field private id:Ljava/lang/String;

.field private lat:D

.field private lon:D

.field private name:Ljava/lang/String;

.field private naviLat:D

.field private naviLon:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/XpPoi;->distance:D

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaopeng/speech/protocol/node/navi/bean/XpPoi;)I
    .locals 4
    .param p1, "o"    # Lcom/xiaopeng/speech/protocol/node/navi/bean/XpPoi;

    .line 52
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/XpPoi;->distance:D

    iget-wide v2, p1, Lcom/xiaopeng/speech/protocol/node/navi/bean/XpPoi;->distance:D

    sub-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 6
    check-cast p1, Lcom/xiaopeng/speech/protocol/node/navi/bean/XpPoi;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/protocol/node/navi/bean/XpPoi;->compareTo(Lcom/xiaopeng/speech/protocol/node/navi/bean/XpPoi;)I

    move-result p1

    return p1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/XpPoi;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()D
    .locals 2

    .line 84
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/XpPoi;->distance:D

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/XpPoi;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()D
    .locals 2

    .line 72
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/XpPoi;->lat:D

    return-wide v0
.end method

.method public getLon()D
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/XpPoi;->lon:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/XpPoi;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNaviLat()D
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/XpPoi;->naviLat:D

    return-wide v0
.end method

.method public getNaviLon()D
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/XpPoi;->naviLon:D

    return-wide v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/XpPoi;->address:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setDistance(D)V
    .locals 0
    .param p1, "distance"    # D

    .line 116
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/XpPoi;->distance:D

    .line 117
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 88
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/XpPoi;->id:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setLat(D)V
    .locals 0
    .param p1, "lat"    # D

    .line 104
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/XpPoi;->lat:D

    .line 105
    return-void
.end method

.method public setLon(D)V
    .locals 0
    .param p1, "lon"    # D

    .line 100
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/XpPoi;->lon:D

    .line 101
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/XpPoi;->name:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setNaviLat(D)V
    .locals 0
    .param p1, "naviLat"    # D

    .line 112
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/XpPoi;->naviLat:D

    .line 113
    return-void
.end method

.method public setNaviLon(D)V
    .locals 0
    .param p1, "naviLon"    # D

    .line 108
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/XpPoi;->naviLon:D

    .line 109
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XpPoi{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/XpPoi;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/XpPoi;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
