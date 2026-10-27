.class Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView$2;
.super Ljava/lang/Object;
.source "HistoryAlbumView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView$2;->a:Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 111
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    invoke-static {p1}, Latt;->e(I)V

    .line 112
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView$2;->a:Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "/mine/history_album_detail"

    invoke-static {v0, v1, p1}, Lbni;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method
