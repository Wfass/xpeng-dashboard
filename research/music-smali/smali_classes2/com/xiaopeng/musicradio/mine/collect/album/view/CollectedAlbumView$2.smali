.class Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectedAlbumView$2;
.super Ljava/lang/Object;
.source "CollectedAlbumView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectedAlbumView;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectedAlbumView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectedAlbumView;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectedAlbumView$2;->a:Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectedAlbumView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 111
    invoke-static {}, Latr;->b()V

    .line 112
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectedAlbumView$2;->a:Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectedAlbumView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectedAlbumView;->clickCategoryView()V

    return-void
.end method
