.class Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment$4;
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

    .line 133
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment$4;->a:Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 136
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment$4;->a:Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->access$000(Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment$4;->a:Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->setMode(I)V

    goto :goto_0

    .line 139
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment$4;->a:Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->setMode(I)V

    :goto_0
    return-void
.end method
