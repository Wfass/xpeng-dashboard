.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneBannerBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "KugouZoneBannerBean.java"


# instance fields
.field private leftItem:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

.field private rightItem:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getLeftItem()Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneBannerBean;->leftItem:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    return-object v0
.end method

.method public getRightItem()Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneBannerBean;->rightItem:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    return-object v0
.end method

.method public setLeftItem(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneBannerBean;->leftItem:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    return-void
.end method

.method public setRightItem(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneBannerBean;->rightItem:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    return-void
.end method
