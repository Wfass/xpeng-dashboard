.class public Lcom/xiaopeng/musicradio/bean/xpbean/MineDetailPlayListBean$PageBean;
.super Ljava/lang/Object;
.source "MineDetailPlayListBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/MineDetailPlayListBean;
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

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPage()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MineDetailPlayListBean$PageBean;->page:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MineDetailPlayListBean$PageBean;->pageSize:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MineDetailPlayListBean$PageBean;->total:I

    return v0
.end method

.method public getTotalPage()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MineDetailPlayListBean$PageBean;->totalPage:I

    return v0
.end method

.method public setPage(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MineDetailPlayListBean$PageBean;->page:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MineDetailPlayListBean$PageBean;->pageSize:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MineDetailPlayListBean$PageBean;->total:I

    return-void
.end method

.method public setTotalPage(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MineDetailPlayListBean$PageBean;->totalPage:I

    return-void
.end method
