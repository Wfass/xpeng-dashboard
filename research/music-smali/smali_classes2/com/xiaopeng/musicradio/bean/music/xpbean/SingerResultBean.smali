.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "SingerResultBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean;->data:Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean;->data:Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean;

    return-void
.end method
