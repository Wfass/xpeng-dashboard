.class Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter$1;
.super Ljava/lang/Object;
.source "MusicHistoryAlbumPresenter.java"

# interfaces
.implements Landroidx/lifecycle/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter;->a(Lcom/xiaopeng/musicradio/datalist/f;)V
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

.field final synthetic b:Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter;Landroidx/lifecycle/LiveData;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter$1;->a:Landroidx/lifecycle/LiveData;

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

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter$1;->a:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->b(Landroidx/lifecycle/s;)V

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter;->a(Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter;->a(Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter;Lcom/xiaopeng/musicradio/datalist/g;)V

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/history/album/view/a;

    .line 44
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter;->b(Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 45
    invoke-static {}, Laxb;->a()Laxb;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/datalist/g;->o:Ljava/util/List;

    invoke-virtual {v2, p1}, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter;->b(Ljava/util/List;)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Laxb;->a(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method public synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/xiaopeng/musicradio/datalist/g;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter$1;->a(Lcom/xiaopeng/musicradio/datalist/g;)V

    return-void
.end method
