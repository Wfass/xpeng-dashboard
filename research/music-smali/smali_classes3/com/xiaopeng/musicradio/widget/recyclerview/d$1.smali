.class Lcom/xiaopeng/musicradio/widget/recyclerview/d$1;
.super Ljava/lang/Object;
.source "BaseItemViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/widget/recyclerview/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/widget/recyclerview/d;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/recyclerview/d;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/d$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/d$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/d;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/widget/recyclerview/d;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/d$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/d;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/widget/recyclerview/d;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/d$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/d;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/d;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/d;)Lme/drakeet/multitype/e;

    move-result-object v2

    invoke-virtual {v2}, Lme/drakeet/multitype/e;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 69
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/d$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/d;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/widget/recyclerview/d;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/d$a;

    if-eqz v2, :cond_1

    .line 70
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/d$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/d;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/widget/recyclerview/d;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/d$a;

    invoke-interface {v2, v0, v1, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/d$a;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;Landroid/view/View;)V

    :cond_1
    return-void
.end method
