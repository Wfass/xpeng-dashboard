.class Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter$1;
.super Ljava/lang/Object;
.source "PlaylistMobilePresenter.java"

# interfaces
.implements Landroidx/lifecycle/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;->a(Lcom/xiaopeng/musicradio/datalist/f;)V
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
        "Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/LiveData;

.field final synthetic b:Lcom/xiaopeng/musicradio/datalist/f;

.field final synthetic c:Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;Landroidx/lifecycle/LiveData;Lcom/xiaopeng/musicradio/datalist/f;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter$1;->c:Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter$1;->a:Landroidx/lifecycle/LiveData;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter$1;->b:Lcom/xiaopeng/musicradio/datalist/f;

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
            "Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;",
            ">;)V"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter$1;->a:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->b(Landroidx/lifecycle/s;)V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter$1;->b:Lcom/xiaopeng/musicradio/datalist/f;

    const-string v1, "getMobileAlbumList"

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/musicradio/datalist/g;->a(Lcom/xiaopeng/musicradio/datalist/f;Ljava/util/List;Ljava/lang/String;)Lcom/xiaopeng/musicradio/datalist/g;

    move-result-object p1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter$1;->c:Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;->a(Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;Lcom/xiaopeng/musicradio/datalist/g;)V

    return-void
.end method

.method public synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter$1;->a(Ljava/util/List;)V

    return-void
.end method
