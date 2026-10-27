.class Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter$1;
.super Ljava/lang/Object;
.source "CollectedMusicPresenter.java"

# interfaces
.implements Landroidx/lifecycle/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->a(Lcom/xiaopeng/musicradio/datalist/f;)V
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

.field final synthetic b:Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;Landroidx/lifecycle/LiveData;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter$1;->a:Landroidx/lifecycle/LiveData;

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
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter$1;->a:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->b(Landroidx/lifecycle/s;)V

    if-nez p1, :cond_0

    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->a(Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;

    iget v0, v0, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->q:I

    const/16 v1, 0x32

    if-ge v0, v1, :cond_2

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;

    .line 89
    invoke-static {}, Latc;->a()Latc;

    move-result-object v1

    iget-object v2, p1, Lcom/xiaopeng/musicradio/datalist/g;->o:Ljava/util/List;

    invoke-virtual {v1, v2}, Latc;->a(Ljava/util/List;)V

    if-eqz v0, :cond_3

    .line 91
    iget-object v1, p1, Lcom/xiaopeng/musicradio/datalist/g;->o:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;

    iget v2, v2, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->q:I

    invoke-static {v1, v2}, Lcom/xiaopeng/musicradio/utils/ak;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 92
    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->b(Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;)V

    .line 93
    iget p1, p1, Lcom/xiaopeng/musicradio/datalist/g;->e:I

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;->onDataListLoaded(Ljava/util/List;I)V

    .line 94
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_3

    .line 95
    invoke-static {}, Lasz;->a()Lasz;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->b(Ljava/util/List;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lasz;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->a(Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;Lcom/xiaopeng/musicradio/datalist/g;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 77
    check-cast p1, Lcom/xiaopeng/musicradio/datalist/g;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter$1;->a(Lcom/xiaopeng/musicradio/datalist/g;)V

    return-void
.end method
