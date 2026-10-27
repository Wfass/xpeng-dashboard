.class public Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "VipMusicMoreDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$PageBean;,
        Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$CollectBean;,
        Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$DataBean;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails;->data:Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$DataBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$DataBean;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails;->data:Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$DataBean;

    return-void
.end method
