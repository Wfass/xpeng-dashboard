.class Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment$5;
.super Ljava/lang/Object;
.source "HistoryMAlbumFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/datalist/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->setListener()V
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
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment$5;->a:Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;I)V
    .locals 1

    .line 155
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onItemClicked:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ","

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment$5;->a:Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;

    invoke-static {p4}, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->access$200(Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;)Lcom/xiaopeng/musicradio/datalist/d;

    move-result-object p4

    invoke-virtual {p4}, Lcom/xiaopeng/musicradio/datalist/d;->k()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "CollectAlbumActivity"

    invoke-static {p4, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    sget p4, Lcom/xiaopeng/musicradio/mine/a$c;->btn_delete:I

    if-eq p2, p4, :cond_2

    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment$5;->a:Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->access$300(Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;)Lcom/xiaopeng/musicradio/datalist/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/datalist/d;->k()I

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    sget p2, Lcom/xiaopeng/musicradio/mine/a$c;->tag_play:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 160
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p2

    invoke-virtual {p2}, Lbdu;->d()I

    move-result p2

    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getTitle()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Latt;->a(ILjava/lang/String;)V

    .line 162
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment$5;->a:Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object p2

    const-string p4, "history"

    invoke-static {p2, p1, p3, p4}, Laxu;->a(Landroid/content/Context;Landroid/view/View;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;Ljava/lang/String;)V

    goto :goto_1

    .line 157
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment$5;->a:Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;

    invoke-static {p1, p3}, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->access$400(Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;I)V
    .locals 0

    .line 152
    check-cast p3, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment$5;->a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;I)V

    return-void
.end method
