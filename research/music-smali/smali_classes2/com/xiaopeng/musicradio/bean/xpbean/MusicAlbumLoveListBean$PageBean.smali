.class public Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$PageBean;
.super Ljava/lang/Object;
.source "MusicAlbumLoveListBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageBean"
.end annotation


# instance fields
.field private page:I

.field private pageSize:I

.field private total:I

.field private totalPage:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPage()I
    .locals 1

    .line 183
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$PageBean;->page:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 191
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$PageBean;->pageSize:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$PageBean;->total:I

    return v0
.end method

.method public getTotalPage()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$PageBean;->totalPage:I

    return v0
.end method

.method public setPage(I)V
    .locals 0

    .line 187
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$PageBean;->page:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .line 195
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$PageBean;->pageSize:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 203
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$PageBean;->total:I

    return-void
.end method

.method public setTotalPage(I)V
    .locals 0

    .line 211
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$PageBean;->totalPage:I

    return-void
.end method
