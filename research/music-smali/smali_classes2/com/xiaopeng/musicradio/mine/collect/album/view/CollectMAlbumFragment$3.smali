.class Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment$3;
.super Ljava/lang/Object;
.source "CollectMAlbumFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment$3;->a:Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 124
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment$3;->a:Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->access$000(Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment$3;->a:Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->setMode(I)V

    .line 126
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment$3;->a:Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->access$100(Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lauk;

    iget-object p1, p1, Lauk;->f:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setEditMode(Z)V

    .line 127
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment$3;->a:Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->access$002(Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;Z)Z

    goto :goto_0

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment$3;->a:Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lbni;->a(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
