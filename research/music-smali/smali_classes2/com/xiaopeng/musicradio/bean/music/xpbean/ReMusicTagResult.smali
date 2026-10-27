.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagResult;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "ReMusicTagResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagResult$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagResult$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagResult$DataBean;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagResult;->data:Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagResult$DataBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagResult$DataBean;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagResult;->data:Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagResult$DataBean;

    return-void
.end method
