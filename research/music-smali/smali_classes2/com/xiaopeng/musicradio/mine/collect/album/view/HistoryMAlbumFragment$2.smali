.class Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment$2;
.super Ljava/lang/Object;
.source "HistoryMAlbumFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout$a;


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

    .line 93
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment$2;->a:Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment$2;->a:Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->access$002(Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;Z)Z

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment$2;->a:Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->setMode(I)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment$2;->a:Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->setMode(I)V

    :goto_0
    return-void
.end method
