.class public Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "ReadingListAlbumsBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean$DataBean;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean;->data:Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean$DataBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean$DataBean;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean;->data:Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean$DataBean;

    return-void
.end method
