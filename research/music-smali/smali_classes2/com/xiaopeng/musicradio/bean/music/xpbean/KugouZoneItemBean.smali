.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "KugouZoneItemBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean;->data:Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean;->data:Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean;

    return-void
.end method
