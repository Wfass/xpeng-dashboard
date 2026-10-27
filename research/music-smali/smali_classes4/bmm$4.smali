.class Lbmm$4;
.super Lbkv;
.source "ProgramDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmm;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbmm;


# direct methods
.method constructor <init>(Lbmm;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lbmm$4;->a:Lbmm;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 359
    iget-object v0, p0, Lbmm$4;->a:Lbmm;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/by;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbmm;->b(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 345
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;

    invoke-virtual {p0, p1}, Lbmm$4;->a(Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;)V
    .locals 2

    const-string v0, "ProgramDataModel"

    const-string v1, "onPlayXmly:getGuessLikeNoCache"

    .line 348
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 349
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 350
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    .line 351
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbmt;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    goto :goto_0

    .line 353
    :cond_0
    iget-object p1, p0, Lbmm$4;->a:Lbmm;

    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v1, Lbue$a;->server_error_tip:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbmm;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
