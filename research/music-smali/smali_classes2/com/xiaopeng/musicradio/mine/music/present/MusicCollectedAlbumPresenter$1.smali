.class Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter$1;
.super Ljava/lang/Object;
.source "MusicCollectedAlbumPresenter.java"

# interfaces
.implements Landroidx/lifecycle/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;->a(Lcom/xiaopeng/musicradio/datalist/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/s<",
        "Lcom/xiaopeng/musicradio/datalist/g<",
        "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/LiveData;

.field final synthetic b:Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;Landroidx/lifecycle/LiveData;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter$1;->a:Landroidx/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/datalist/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/datalist/g<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 39
    iget-object v0, p1, Lcom/xiaopeng/musicradio/datalist/g;->o:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;->a(Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/xiaopeng/musicradio/datalist/g;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicCollectedAlbumPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter$1;->a:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->b(Landroidx/lifecycle/s;)V

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;->b(Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;->a(Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;Lcom/xiaopeng/musicradio/datalist/g;)V

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/collect/album/view/a;

    .line 48
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;->c(Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_2

    .line 49
    invoke-static {}, Laxa;->a()Laxa;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/datalist/g;->o:Ljava/util/List;

    invoke-virtual {v2, p1}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;->b(Ljava/util/List;)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Laxa;->a(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method public synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Lcom/xiaopeng/musicradio/datalist/g;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter$1;->a(Lcom/xiaopeng/musicradio/datalist/g;)V

    return-void
.end method
