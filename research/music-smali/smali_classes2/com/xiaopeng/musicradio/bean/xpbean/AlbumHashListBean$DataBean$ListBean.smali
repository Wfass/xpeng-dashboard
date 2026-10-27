.class public Lcom/xiaopeng/musicradio/bean/xpbean/AlbumHashListBean$DataBean$ListBean;
.super Ljava/lang/Object;
.source "AlbumHashListBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/AlbumHashListBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBean"
.end annotation


# instance fields
.field private albumId:I

.field private hash:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbumId()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/AlbumHashListBean$DataBean$ListBean;->albumId:I

    return v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/AlbumHashListBean$DataBean$ListBean;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbumId(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/AlbumHashListBean$DataBean$ListBean;->albumId:I

    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/AlbumHashListBean$DataBean$ListBean;->hash:Ljava/lang/String;

    return-void
.end method
