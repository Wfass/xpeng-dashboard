.class public Lcom/xiaopeng/musicradio/bean/xpbean/ShareSongBean;
.super Ljava/lang/Object;
.source "ShareSongBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private albumId:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private hash:Ljava/lang/String;

.field private source:I

.field private vehicleType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ShareSongBean;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ShareSongBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ShareSongBean;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ShareSongBean;->source:I

    return v0
.end method

.method public getVehicleType()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ShareSongBean;->vehicleType:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ShareSongBean;->albumId:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ShareSongBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ShareSongBean;->hash:Ljava/lang/String;

    return-void
.end method

.method public setSource(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ShareSongBean;->source:I

    return-void
.end method

.method public setVehicleType(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ShareSongBean;->vehicleType:Ljava/lang/String;

    return-void
.end method
