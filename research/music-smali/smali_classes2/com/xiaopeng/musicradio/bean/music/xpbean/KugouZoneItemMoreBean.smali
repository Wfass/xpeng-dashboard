.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "KugouZoneItemMoreBean.java"


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;->data:Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;->data:Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;

    return-void
.end method
