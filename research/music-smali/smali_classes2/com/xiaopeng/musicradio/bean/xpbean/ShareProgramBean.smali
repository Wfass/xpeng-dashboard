.class public Lcom/xiaopeng/musicradio/bean/xpbean/ShareProgramBean;
.super Ljava/lang/Object;
.source "ShareProgramBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private albumId:J

.field private content:Ljava/lang/String;

.field private vehicleType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbumId()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ShareProgramBean;->albumId:J

    return-wide v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ShareProgramBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getVehicleType()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ShareProgramBean;->vehicleType:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbumId(J)V
    .locals 0

    .line 20
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ShareProgramBean;->albumId:J

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ShareProgramBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setVehicleType(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ShareProgramBean;->vehicleType:Ljava/lang/String;

    return-void
.end method
