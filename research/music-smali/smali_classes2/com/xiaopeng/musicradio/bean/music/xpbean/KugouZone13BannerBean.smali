.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZone13BannerBean;
.super Ljava/lang/Object;
.source "KugouZone13BannerBean.java"


# instance fields
.field private item:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItem()Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZone13BannerBean;->item:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    return-object v0
.end method

.method public setItem(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZone13BannerBean;->item:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    return-void
.end method
