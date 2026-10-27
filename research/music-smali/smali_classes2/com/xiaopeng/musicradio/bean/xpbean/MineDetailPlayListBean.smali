.class public Lcom/xiaopeng/musicradio/bean/xpbean/MineDetailPlayListBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "MineDetailPlayListBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/xpbean/MineDetailPlayListBean$PageBean;,
        Lcom/xiaopeng/musicradio/bean/xpbean/MineDetailPlayListBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/xpbean/MineDetailPlayListBean$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/xpbean/MineDetailPlayListBean$DataBean;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MineDetailPlayListBean;->data:Lcom/xiaopeng/musicradio/bean/xpbean/MineDetailPlayListBean$DataBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/xpbean/MineDetailPlayListBean$DataBean;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MineDetailPlayListBean;->data:Lcom/xiaopeng/musicradio/bean/xpbean/MineDetailPlayListBean$DataBean;

    return-void
.end method
