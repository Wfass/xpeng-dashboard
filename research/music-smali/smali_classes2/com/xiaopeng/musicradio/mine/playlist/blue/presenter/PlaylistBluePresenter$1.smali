.class Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter$1;
.super Ljava/lang/Object;
.source "PlaylistBluePresenter.java"

# interfaces
.implements Landroidx/lifecycle/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;->a(Lcom/xiaopeng/musicradio/datalist/f;)V
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

.field final synthetic c:Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;Landroidx/lifecycle/LiveData;Lcom/xiaopeng/musicradio/datalist/f;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter$1;->c:Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter$1;->a:Landroidx/lifecycle/LiveData;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter$1;->b:Lcom/xiaopeng/musicradio/datalist/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter$1;->a:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->b(Landroidx/lifecycle/s;)V

    .line 59
    invoke-static {}, Laxf;->a()Laxf;

    move-result-object v0

    invoke-virtual {v0, p1}, Laxf;->a(Ljava/util/List;)V

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter$1;->c:Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter$1;->b:Lcom/xiaopeng/musicradio/datalist/f;

    iget v0, v0, Lcom/xiaopeng/musicradio/datalist/f;->f:I

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/ak;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter$1;->c:Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;->a(Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;)V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter$1;->c:Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/a;

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/a;->onDataListLoaded(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method public synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter$1;->a(Ljava/util/List;)V

    return-void
.end method
