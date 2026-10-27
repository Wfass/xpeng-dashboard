.class Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment$3;
.super Ljava/lang/Object;
.source "HistoryMAlbumFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment$3;->a:Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 113
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment$3;->a:Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->access$000(Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment$3;->a:Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->setMode(I)V

    .line 115
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment$3;->a:Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->access$100(Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lauk;

    iget-object p1, p1, Lauk;->f:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setEditMode(Z)V

    .line 116
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment$3;->a:Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->access$002(Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;Z)Z

    goto :goto_0

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment$3;->a:Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lbni;->a(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
