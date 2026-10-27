.class Lbnr$2;
.super Ljava/lang/Object;
.source "SearchProgramAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbnr;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

.field final synthetic b:Lbnr;


# direct methods
.method constructor <init>(Lbnr;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lbnr$2;->b:Lbnr;

    iput-object p2, p0, Lbnr$2;->a:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 60
    iget-object p1, p0, Lbnr$2;->b:Lbnr;

    iget-object p1, p1, Lbnr;->h:Lbnn;

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lbnr$2;->b:Lbnr;

    iget-object p1, p1, Lbnr;->h:Lbnn;

    iget-object v0, p0, Lbnr$2;->a:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-interface {p1, v0}, Lbnn;->openProgramDetail(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    :cond_0
    return-void
.end method
