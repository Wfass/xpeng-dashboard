.class public Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$PageBean;
.super Ljava/lang/Object;
.source "VipMusicCollectListBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageBean"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private page:I

.field private pageSize:I

.field private total:I

.field private totalPage:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPage()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$PageBean;->page:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$PageBean;->pageSize:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$PageBean;->total:I

    return v0
.end method

.method public getTotalPage()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$PageBean;->totalPage:I

    return v0
.end method

.method public setPage(I)V
    .locals 0

    .line 137
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$PageBean;->page:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .line 145
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$PageBean;->pageSize:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$PageBean;->total:I

    return-void
.end method

.method public setTotalPage(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$PageBean;->totalPage:I

    return-void
.end method
