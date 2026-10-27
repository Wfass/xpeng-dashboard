.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZone13BannerBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "DolbyZone13BannerBean.java"


# instance fields
.field private oneItem:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field private towItem:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getOneItem()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZone13BannerBean;->oneItem:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    return-object v0
.end method

.method public getTowItem()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZone13BannerBean;->towItem:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    return-object v0
.end method

.method public setOneItem(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZone13BannerBean;->oneItem:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    return-void
.end method

.method public setTowItem(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZone13BannerBean;->towItem:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    return-void
.end method
