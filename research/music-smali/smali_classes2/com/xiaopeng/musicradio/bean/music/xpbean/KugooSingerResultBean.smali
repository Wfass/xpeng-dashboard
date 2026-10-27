.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "KugooSingerResultBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean$DataBean;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean;->data:Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean$DataBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean$DataBean;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean;->data:Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean$DataBean;

    return-void
.end method
