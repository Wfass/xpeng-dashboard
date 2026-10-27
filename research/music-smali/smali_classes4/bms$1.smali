.class Lbms$1;
.super Lbkv;
.source "ReadingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbms;->a(ZIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lbms;


# direct methods
.method constructor <init>(Lbms;Z)V
    .locals 0

    .line 237
    iput-object p1, p0, Lbms$1;->b:Lbms;

    iput-boolean p2, p0, Lbms$1;->a:Z

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 261
    iget-object v0, p0, Lbms$1;->b:Lbms;

    iget-boolean v1, p0, Lbms$1;->a:Z

    invoke-virtual {v0, v1, p1, p2}, Lbms;->a(ZILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 237
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;

    invoke-virtual {p0, p1}, Lbms$1;->a(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;)V
    .locals 7

    .line 240
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    const-string v0, "empty data"

    .line 241
    invoke-virtual {p0, p1, v0}, Lbms$1;->a(ILjava/lang/String;)V

    return-void

    .line 244
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->isFromCache()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "ReadingMediaSource"

    const-string v0, "onOtherPageNewHeadTracksReqList fromCahce, just return"

    .line 245
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 248
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$PageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$PageBean;->getTotalPage()I

    move-result v4

    .line 249
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$PageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$PageBean;->getPage()I

    move-result v3

    .line 250
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$PageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$PageBean;->getTotal()I

    move-result v5

    .line 251
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 252
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;

    const/4 v1, 0x0

    const-string v2, ""

    .line 253
    invoke-static {v0, v2, v1}, Lcom/xiaopeng/musicradio/utils/az;->a(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 255
    :cond_2
    iget-object v1, p0, Lbms$1;->b:Lbms;

    iget-boolean v2, p0, Lbms$1;->a:Z

    invoke-virtual/range {v1 .. v6}, Lbms;->a(ZIIILjava/util/List;)V

    return-void
.end method
