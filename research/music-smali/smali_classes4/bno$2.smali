.class Lbno$2;
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

    .line 52
    iput-object p1, p0, Lbno$2;->b:Lbno;

    iput-object p2, p0, Lbno$2;->a:Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 55
    iget-object p1, p0, Lbno$2;->b:Lbno;

    invoke-static {p1}, Lbno;->a(Lbno;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lbno$2;->a:Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbno$2;->a:Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getLogo()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbno$2;->a:Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbno$2;->b:Lbno;

    invoke-static {v3}, Lbno;->b(Lbno;)I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lboo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
