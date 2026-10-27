.class Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter$1;
.super Ljava/lang/Object;
.source "HistoryMusicPresenter.java"

# interfaces
.implements Landroidx/lifecycle/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->a(Lcom/xiaopeng/musicradio/datalist/f;)V
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

.field final synthetic c:Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;Landroidx/lifecycle/LiveData;Lcom/xiaopeng/musicradio/datalist/f;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter$1;->c:Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter$1;->a:Landroidx/lifecycle/LiveData;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter$1;->b:Lcom/xiaopeng/musicradio/datalist/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "HistoryMusicPresenter"

    const-string v1, "getDataListPosted has result"

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataListPosted name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter$1;->a:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->b(Landroidx/lifecycle/s;)V

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter$1;->c:Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->a(Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 95
    :cond_1
    invoke-static {}, Lawo;->a()Lawo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lawo;->a(Ljava/util/List;)V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter$1;->c:Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/history/music/view/a;

    if-eqz v0, :cond_2

    .line 98
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter$1;->b:Lcom/xiaopeng/musicradio/datalist/f;

    iget v1, v1, Lcom/xiaopeng/musicradio/datalist/f;->f:I

    invoke-static {p1, v1}, Lcom/xiaopeng/musicradio/utils/ak;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 99
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter$1;->c:Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->b(Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;)V

    const/4 v1, -0x1

    .line 100
    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/musicradio/mine/history/music/view/a;->onDataListLoaded(Ljava/util/List;I)V

    .line 101
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter$1;->c:Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->c(Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;)Z

    move-result v1

    if-nez v1, :cond_2

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_2

    .line 102
    invoke-static {}, Lawm;->a()Lawm;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter$1;->c:Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter$1;->c:Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;

    invoke-virtual {v2, p1}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->b(Ljava/util/List;)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lawm;->a(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method public synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 84
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter$1;->a(Ljava/util/List;)V

    return-void
.end method
