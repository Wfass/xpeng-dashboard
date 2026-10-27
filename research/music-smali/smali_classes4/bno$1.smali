.class Lbno$1;
.super Ljava/lang/Object;
.source "SearchAlbumAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbno;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

.field final synthetic b:Lbno;


# direct methods
.method constructor <init>(Lbno;Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lbno$1;->b:Lbno;

    iput-object p2, p0, Lbno$1;->a:Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 47
    iget-object p1, p0, Lbno$1;->b:Lbno;

    iget-object p1, p1, Lbno;->h:Lbnn;

    if-eqz p1, :cond_0

    .line 48
    iget-object p1, p0, Lbno$1;->b:Lbno;

    iget-object p1, p1, Lbno;->h:Lbnn;

    iget-object v0, p0, Lbno$1;->a:Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbno$1;->a:Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lbnn;->playControlMusicAlbumListSign(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
