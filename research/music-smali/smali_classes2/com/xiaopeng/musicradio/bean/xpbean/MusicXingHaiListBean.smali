.class public Lcom/xiaopeng/musicradio/bean/xpbean/MusicXingHaiListBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "MusicXingHaiListBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/xpbean/MusicXingHaiListBean$XHDataBean;
    }
.end annotation


# instance fields
.field private mData:Lcom/xiaopeng/musicradio/bean/xpbean/MusicXingHaiListBean$XHDataBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicXingHaiListBean$XHDataBean;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicXingHaiListBean;->mData:Lcom/xiaopeng/musicradio/bean/xpbean/MusicXingHaiListBean$XHDataBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/xpbean/MusicXingHaiListBean$XHDataBean;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicXingHaiListBean;->mData:Lcom/xiaopeng/musicradio/bean/xpbean/MusicXingHaiListBean$XHDataBean;

    return-void
.end method
