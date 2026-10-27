.class public Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "MusicAlbumLoveListBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$PageBean;,
        Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean;
    }
.end annotation


# static fields
.field public static final TYPE_IMPORT_LIST:I = 0x3

.field public static final TYPE_KUGOU_SYNC_LIST:I = 0x2

.field public static final TYPE_OTHER_BUILD_KUGOU_LIST:I = 0x6


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean;->data:Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean;->data:Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean;

    return-void
.end method
