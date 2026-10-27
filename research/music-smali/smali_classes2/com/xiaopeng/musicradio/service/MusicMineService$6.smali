.class Lcom/xiaopeng/musicradio/service/MusicMineService$6;
.super Lbkv;
.source "MusicMineService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/service/MusicMineService;->getDetailPlayList(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/datalist/f;

.field final synthetic b:Landroidx/lifecycle/r;

.field final synthetic c:Lcom/xiaopeng/musicradio/service/MusicMineService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/service/MusicMineService;Lcom/xiaopeng/musicradio/datalist/f;Landroidx/lifecycle/r;)V
    .locals 0

    .line 769
    iput-object p1, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$6;->c:Lcom/xiaopeng/musicradio/service/MusicMineService;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$6;->a:Lcom/xiaopeng/musicradio/datalist/f;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$6;->b:Landroidx/lifecycle/r;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDetailPlayList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicMineService"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 803
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$6;->b:Landroidx/lifecycle/r;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$6;->a:Lcom/xiaopeng/musicradio/datalist/f;

    const-string v2, "getDetailPlayList"

    invoke-static {v1, p1, p2, v2}, Lcom/xiaopeng/musicradio/datalist/e;->a(Lcom/xiaopeng/musicradio/datalist/f;ILjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/datalist/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 769
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/service/MusicMineService$6;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 772
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 773
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v0

    :cond_1
    const/4 v2, 0x0

    if-eqz v1, :cond_6

    if-nez v0, :cond_2

    goto :goto_4

    .line 778
    :cond_2
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v1

    .line 779
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getTotalPage()I

    move-result v6

    .line 780
    iget-object v3, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$6;->a:Lcom/xiaopeng/musicradio/datalist/f;

    iget v3, v3, Lcom/xiaopeng/musicradio/datalist/f;->d:I

    const/4 v4, 0x1

    if-ge v3, v6, :cond_3

    move v5, v4

    goto :goto_1

    :cond_3
    move v5, v2

    .line 781
    :goto_1
    iget-object v3, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$6;->a:Lcom/xiaopeng/musicradio/datalist/f;

    iget v3, v3, Lcom/xiaopeng/musicradio/datalist/f;->d:I

    add-int/lit8 v7, v3, 0x1

    .line 782
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_5

    .line 784
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 785
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 786
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->isFromCache()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;Z)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_3

    .line 790
    :cond_4
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 793
    :cond_5
    iget-object v3, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$6;->a:Lcom/xiaopeng/musicradio/datalist/f;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getTotal()I

    move-result p1

    const-string v9, "getDetailPlayList"

    move v4, v5

    move v5, v7

    move v7, p1

    invoke-static/range {v3 .. v9}, Lcom/xiaopeng/musicradio/datalist/g;->a(Lcom/xiaopeng/musicradio/datalist/f;ZIIILjava/util/List;Ljava/lang/String;)Lcom/xiaopeng/musicradio/datalist/g;

    move-result-object p1

    .line 797
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$6;->b:Landroidx/lifecycle/r;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    return-void

    :cond_6
    :goto_4
    const-string p1, ""

    .line 775
    invoke-virtual {p0, v2, p1}, Lcom/xiaopeng/musicradio/service/MusicMineService$6;->a(ILjava/lang/String;)V

    return-void
.end method
