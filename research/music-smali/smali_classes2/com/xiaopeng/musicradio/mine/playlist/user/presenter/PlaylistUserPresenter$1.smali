.class Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter$1;
.super Ljava/lang/Object;
.source "PlaylistUserPresenter.java"

# interfaces
.implements Landroidx/lifecycle/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter;->a(Lcom/xiaopeng/musicradio/datalist/f;)V
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

.field final synthetic b:Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter;Landroidx/lifecycle/LiveData;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter$1;->a:Landroidx/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/datalist/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/datalist/g<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;)V"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter$1;->a:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->b(Landroidx/lifecycle/s;)V

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter;->a(Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter;Lcom/xiaopeng/musicradio/datalist/g;)V

    return-void
.end method

.method public synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p1, Lcom/xiaopeng/musicradio/datalist/g;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter$1;->a(Lcom/xiaopeng/musicradio/datalist/g;)V

    return-void
.end method
