.class Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment$2;
.super Ljava/lang/Object;
.source "CollectMAlbumFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout$a;


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

    .line 103
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment$2;->a:Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment$2;->a:Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->access$002(Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;Z)Z

    if-eqz p1, :cond_0

    .line 108
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    invoke-static {p1}, Latr;->g(I)V

    .line 109
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment$2;->a:Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->setMode(I)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment$2;->a:Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->setMode(I)V

    :goto_0
    return-void
.end method
