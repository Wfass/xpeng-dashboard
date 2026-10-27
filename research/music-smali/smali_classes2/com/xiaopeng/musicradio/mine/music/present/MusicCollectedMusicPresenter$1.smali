.class Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter$1;
.super Ljava/lang/Object;
.source "MusicCollectedMusicPresenter.java"

# interfaces
.implements Landroidx/lifecycle/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;->a(Lcom/xiaopeng/musicradio/datalist/f;)V
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
        "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/LiveData;

.field final synthetic b:Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;Landroidx/lifecycle/LiveData;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter$1;->a:Landroidx/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/datalist/g;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/datalist/g<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter$1;->a:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->b(Landroidx/lifecycle/s;)V

    if-nez p1, :cond_0

    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;->a(Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;

    if-eqz v0, :cond_2

    .line 70
    iget v1, p1, Lcom/xiaopeng/musicradio/datalist/g;->g:I

    iget-boolean v2, p1, Lcom/xiaopeng/musicradio/datalist/g;->n:Z

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;->isHasMore(IZ)V

    .line 72
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;->b(Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;)I

    move-result v1

    const/16 v2, 0x32

    if-ge v1, v2, :cond_4

    .line 73
    invoke-static {}, Latc;->a()Latc;

    move-result-object v1

    iget-object v2, p1, Lcom/xiaopeng/musicradio/datalist/g;->o:Ljava/util/List;

    invoke-virtual {v1, v2}, Latc;->a(Ljava/util/List;)V

    if-eqz v0, :cond_5

    .line 75
    iget-object v1, p1, Lcom/xiaopeng/musicradio/datalist/g;->o:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;->c(Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/xiaopeng/musicradio/utils/ak;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 76
    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;->d(Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;)V

    .line 77
    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;->a()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_3

    .line 78
    invoke-static {}, Laxa;->a()Laxa;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;

    invoke-virtual {v4, v1}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;->b(Ljava/util/List;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Laxa;->a(Landroid/view/View;I)V

    .line 80
    :cond_3
    iget p1, p1, Lcom/xiaopeng/musicradio/datalist/g;->e:I

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;->onDataListLoaded(Ljava/util/List;I)V

    goto :goto_0

    .line 83
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;->a(Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;Lcom/xiaopeng/musicradio/datalist/g;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 58
    check-cast p1, Lcom/xiaopeng/musicradio/datalist/g;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter$1;->a(Lcom/xiaopeng/musicradio/datalist/g;)V

    return-void
.end method
