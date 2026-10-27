.class public Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "VipMusicMainZoneResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult;->data:Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult;->data:Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean;

    return-void
.end method
