.class public Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;
.super Ljava/lang/Object;
.source "NeteaseZoneDolbyBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$AlbumDolbyListBean;,
        Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$CollectDolbyListBean;,
        Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$SongDolbyListBean;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xbL


# instance fields
.field private albumDolbyListDto:Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$AlbumDolbyListBean;

.field private collectDolbyListDto:Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$CollectDolbyListBean;

.field private songDolbyListDto:Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$SongDolbyListBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbumDolbyListBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$AlbumDolbyListBean;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->albumDolbyListDto:Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$AlbumDolbyListBean;

    return-object v0
.end method

.method public getCollectDolbyListBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$CollectDolbyListBean;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->collectDolbyListDto:Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$CollectDolbyListBean;

    return-object v0
.end method

.method public getSongDolbyListBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$SongDolbyListBean;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->songDolbyListDto:Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$SongDolbyListBean;

    return-object v0
.end method

.method public setAlbumDolbyListBean(Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$AlbumDolbyListBean;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->albumDolbyListDto:Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$AlbumDolbyListBean;

    return-void
.end method

.method public setCollectDolbyListBean(Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$CollectDolbyListBean;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->collectDolbyListDto:Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$CollectDolbyListBean;

    return-void
.end method

.method public setSongDolbyListBean(Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$SongDolbyListBean;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->songDolbyListDto:Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$SongDolbyListBean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataBean{songDolbyListDto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->songDolbyListDto:Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$SongDolbyListBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", collectDolbyListDto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->collectDolbyListDto:Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$CollectDolbyListBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", albumDolbyListDto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->albumDolbyListDto:Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$AlbumDolbyListBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
