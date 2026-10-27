.class Lcom/xiaopeng/musicradio/widget/recyclerview/c$1;
.super Ljava/lang/Object;
.source "BaseItemClickAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/widget/recyclerview/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/widget/recyclerview/c;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/recyclerview/c;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/c$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/c$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/c;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/widget/recyclerview/c;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/c$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/c;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/widget/recyclerview/c;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/c$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/c;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/widget/recyclerview/c;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/f$a;

    if-eqz v2, :cond_1

    .line 79
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/c$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/c;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/widget/recyclerview/c;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/f$a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    invoke-interface {v2, v3, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/f$a;->a(II)V

    .line 81
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/c$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/c;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/widget/recyclerview/c;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/c$a;

    if-eqz v2, :cond_2

    .line 82
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/c$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/c;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/widget/recyclerview/c;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/c$a;

    invoke-interface {v2, v0, v1, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/c$a;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroid/view/View;)V

    :cond_2
    return-void
.end method
