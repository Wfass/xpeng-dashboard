.class Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$2;
.super Lbkv;
.source "ProgramPlayListPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->b(Z)V
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
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;IZ)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$2;->c:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    iput p2, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$2;->a:I

    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$2;->b:Z

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$2;->c:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$2;->c:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/player/view/a;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/musicradio/program/player/view/a;->onUpdateTracksError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 509
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$2;->a(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;)V
    .locals 3

    .line 512
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$2;->c:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$PageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$PageBean;->getTotal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a(Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;I)I

    .line 513
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$2;->c:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$PageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$PageBean;->getTotalPage()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->b(Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;I)I

    .line 514
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$2;->c:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    iget v1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$2;->a:I

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c(Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;I)I

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTracksNextOrPrePage response: ========== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$2;->c:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->b(Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " totalPage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$2;->c:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->d(Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " totalCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$2;->c:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c(Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramPlayListPresente"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$2;->b:Z

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$2;->c:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$2;->c:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/player/view/a;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$2;->c:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->b(Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;)I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$2;->c:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->d(Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;)I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/xiaopeng/musicradio/program/player/view/a;->onUpdateTracks(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;II)V

    goto :goto_0

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$2;->c:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$2;->c:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/player/view/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/program/player/view/a;->onUpdateTracksPre(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;)V

    :cond_1
    :goto_0
    return-void
.end method
