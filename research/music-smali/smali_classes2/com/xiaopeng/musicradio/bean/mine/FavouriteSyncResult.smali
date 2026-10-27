.class public Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "FavouriteSyncResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult$DataBean;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult;->data:Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult$DataBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult$DataBean;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult;->data:Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult$DataBean;

    return-void
.end method
