.class Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter$1;
.super Ljava/lang/Object;
.source "MusicHistoryMusicPresenter.java"

# interfaces
.implements Landroidx/lifecycle/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter;->a(Lcom/xiaopeng/musicradio/datalist/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/s<",
        "Ljava/util/List<",
        "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/LiveData;

.field final synthetic b:Lcom/xiaopeng/musicradio/datalist/f;

.field final synthetic c:Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter;Landroidx/lifecycle/LiveData;Lcom/xiaopeng/musicradio/datalist/f;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter$1;->c:Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter$1;->a:Landroidx/lifecycle/LiveData;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter$1;->b:Lcom/xiaopeng/musicradio/datalist/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter$1;->a:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->b(Landroidx/lifecycle/s;)V

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter$1;->c:Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter;->a(Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    invoke-static {}, Lawo;->a()Lawo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lawo;->a(Ljava/util/List;)V

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter$1;->c:Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/history/music/view/a;

    if-eqz v0, :cond_2

    .line 53
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter$1;->b:Lcom/xiaopeng/musicradio/datalist/f;

    iget v1, v1, Lcom/xiaopeng/musicradio/datalist/f;->f:I

    invoke-static {p1, v1}, Lcom/xiaopeng/musicradio/utils/ak;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 54
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter$1;->c:Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter;->b(Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter;)V

    .line 55
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter$1;->c:Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter;->c(Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter;)Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 56
    invoke-static {}, Laxb;->a()Laxb;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter$1;->c:Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter$1;->c:Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter;

    invoke-virtual {v3, p1}, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter;->b(Ljava/util/List;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Laxb;->a(Landroid/view/View;I)V

    :cond_1
    const/4 v1, -0x1

    .line 58
    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/musicradio/mine/history/music/view/a;->onDataListLoaded(Ljava/util/List;I)V

    :cond_2
    return-void
.end method

.method public synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter$1;->a(Ljava/util/List;)V

    return-void
.end method
