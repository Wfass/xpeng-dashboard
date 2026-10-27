.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneFullBannerBean;
.super Ljava/lang/Object;
.source "KugouZoneFullBannerBean.java"


# instance fields
.field private leftItem:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

.field private middleItem:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

.field private rightItem:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLeftItem()Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneFullBannerBean;->leftItem:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    return-object v0
.end method

.method public getMiddleItem()Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneFullBannerBean;->middleItem:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    return-object v0
.end method

.method public getRightItem()Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneFullBannerBean;->rightItem:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    return-object v0
.end method

.method public setLeftItem(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneFullBannerBean;->leftItem:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    return-void
.end method

.method public setMiddleItem(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneFullBannerBean;->middleItem:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    return-void
.end method

.method public setRightItem(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneFullBannerBean;->rightItem:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    return-void
.end method
