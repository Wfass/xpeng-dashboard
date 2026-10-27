.class Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView$1;
.super Ljava/lang/Object;
.source "HistoryAlbumView.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/datalist/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/musicradio/datalist/d$b<",
        "Landroidx/databinding/ViewDataBinding;",
        "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView$1;->a:Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;I)V
    .locals 1

    .line 101
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onItemClicked:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "HistoryAlbumView"

    invoke-static {p4, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    sget p2, Lcom/xiaopeng/musicradio/mine/a$c;->tag_play:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 103
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p2

    invoke-virtual {p2}, Lbdu;->d()I

    move-result p2

    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getTitle()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Latt;->a(ILjava/lang/String;)V

    .line 105
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView$1;->a:Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p4, "history"

    invoke-static {p2, p1, p3, p4}, Laxu;->a(Landroid/content/Context;Landroid/view/View;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;I)V
    .locals 0

    .line 98
    check-cast p3, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView$1;->a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;I)V

    return-void
.end method
