.class public Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "GuessLikeListBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;
    }
.end annotation


# instance fields
.field private mData:Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;->mData:Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;

    return-object v0
.end method
