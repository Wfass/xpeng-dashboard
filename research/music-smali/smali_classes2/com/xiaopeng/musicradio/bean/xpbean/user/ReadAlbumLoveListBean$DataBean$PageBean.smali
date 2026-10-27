.class public Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadAlbumLoveListBean$DataBean$PageBean;
.super Ljava/lang/Object;
.source "ReadAlbumLoveListBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadAlbumLoveListBean$DataBean;
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

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPage()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadAlbumLoveListBean$DataBean$PageBean;->page:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadAlbumLoveListBean$DataBean$PageBean;->pageSize:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadAlbumLoveListBean$DataBean$PageBean;->total:I

    return v0
.end method

.method public getTotalPage()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadAlbumLoveListBean$DataBean$PageBean;->totalPage:I

    return v0
.end method

.method public setPage(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadAlbumLoveListBean$DataBean$PageBean;->page:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadAlbumLoveListBean$DataBean$PageBean;->pageSize:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadAlbumLoveListBean$DataBean$PageBean;->total:I

    return-void
.end method

.method public setTotalPage(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadAlbumLoveListBean$DataBean$PageBean;->totalPage:I

    return-void
.end method
