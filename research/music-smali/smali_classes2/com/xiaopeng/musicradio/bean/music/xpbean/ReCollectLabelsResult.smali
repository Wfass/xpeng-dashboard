.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "ReCollectLabelsResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult$DataBean;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult;->data:Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult$DataBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult$DataBean;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult;->data:Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult$DataBean;

    return-void
.end method
