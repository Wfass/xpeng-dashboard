.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicAlbumResult$DataBean;
.super Ljava/lang/Object;
.source "MusicAlbumResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicAlbumResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private artist:Lcom/xiaopeng/musicradio/bean/xpbean/MusicArtistBean;

.field private id:Ljava/lang/String;

.field private logo:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArtist()Lcom/xiaopeng/musicradio/bean/xpbean/MusicArtistBean;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicAlbumResult$DataBean;->artist:Lcom/xiaopeng/musicradio/bean/xpbean/MusicArtistBean;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicAlbumResult$DataBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicAlbumResult$DataBean;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicAlbumResult$DataBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setArtist(Lcom/xiaopeng/musicradio/bean/xpbean/MusicArtistBean;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicAlbumResult$DataBean;->artist:Lcom/xiaopeng/musicradio/bean/xpbean/MusicArtistBean;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicAlbumResult$DataBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicAlbumResult$DataBean;->logo:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicAlbumResult$DataBean;->name:Ljava/lang/String;

    return-void
.end method
