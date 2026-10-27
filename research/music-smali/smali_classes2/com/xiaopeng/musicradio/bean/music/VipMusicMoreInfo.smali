.class public Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "VipMusicMoreInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$CollectBean;,
        Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$CollectInfo;,
        Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$ModuleBean;,
        Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$DataBean;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo;->data:Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$DataBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$DataBean;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo;->data:Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$DataBean;

    return-void
.end method
