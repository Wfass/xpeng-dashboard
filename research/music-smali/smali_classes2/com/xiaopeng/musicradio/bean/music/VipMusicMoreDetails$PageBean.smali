.class public Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$PageBean;
.super Ljava/lang/Object;
.source "VipMusicMoreDetails.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails;
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

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPage()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$PageBean;->page:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$PageBean;->pageSize:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$PageBean;->total:I

    return v0
.end method

.method public getTotalPage()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$PageBean;->totalPage:I

    return v0
.end method

.method public setPage(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$PageBean;->page:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$PageBean;->pageSize:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$PageBean;->total:I

    return-void
.end method

.method public setTotalPage(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$PageBean;->totalPage:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PageBean{total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$PageBean;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$PageBean;->totalPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$PageBean;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$PageBean;->pageSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
