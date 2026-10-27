.class Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumFragment$3;
.super Ljava/lang/Object;
.source "CollectAlbumFragment.java"

# interfaces
.implements Landroidx/lifecycle/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumFragment;->delete(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/s<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/LiveData;

.field final synthetic b:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

.field final synthetic c:Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumFragment;Landroidx/lifecycle/LiveData;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumFragment$3;->c:Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumFragment;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumFragment$3;->a:Landroidx/lifecycle/LiveData;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumFragment$3;->b:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumFragment$3;->a:Landroidx/lifecycle/LiveData;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->b(Landroidx/lifecycle/s;)V

    .line 106
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumFragment$3;->c:Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumFragment;->access$300(Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumFragment;)Lcom/xiaopeng/musicradio/datalist/d;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumFragment$3;->b:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/datalist/d;->d(Ljava/lang/Object;)V

    .line 107
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumFragment$3;->c:Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumFragment;->access$400(Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumFragment;)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumFragment$3;->c:Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumFragment$3;->c:Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->delete_album_fail_template:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumFragment$3;->b:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/view/ToastUtils;->getToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    :goto_0
    return-void
.end method

.method public synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 101
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumFragment$3;->a(Ljava/lang/Boolean;)V

    return-void
.end method
