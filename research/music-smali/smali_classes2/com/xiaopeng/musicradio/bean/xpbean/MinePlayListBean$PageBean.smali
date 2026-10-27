.class public Lcom/xiaopeng/musicradio/bean/xpbean/MinePlayListBean$PageBean;
.super Ljava/lang/Object;
.source "MinePlayListBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/MinePlayListBean;
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

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPage()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MinePlayListBean$PageBean;->page:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MinePlayListBean$PageBean;->pageSize:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MinePlayListBean$PageBean;->total:I

    return v0
.end method

.method public getTotalPage()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MinePlayListBean$PageBean;->totalPage:I

    return v0
.end method

.method public setPage(I)V
    .locals 0

    .line 145
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MinePlayListBean$PageBean;->page:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .line 153
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MinePlayListBean$PageBean;->pageSize:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 161
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MinePlayListBean$PageBean;->total:I

    return-void
.end method

.method public setTotalPage(I)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MinePlayListBean$PageBean;->totalPage:I

    return-void
.end method
