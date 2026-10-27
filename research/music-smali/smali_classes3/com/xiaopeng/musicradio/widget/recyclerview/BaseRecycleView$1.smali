.class Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "BaseRecycleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 66
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 p1, 0x0

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    goto/16 :goto_0

    .line 75
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->c(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)I

    move-result p2

    const/16 v1, 0x3c

    if-lt p2, v1, :cond_1

    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 77
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-static {p2, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;Z)Z

    .line 78
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->d(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 79
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->d(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bumptech/glide/RequestManager;->pauseRequests()V

    .line 82
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->c(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)I

    move-result p2

    const/16 v0, 0x14

    if-gt p2, v0, :cond_4

    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 83
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-static {p2, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;Z)Z

    .line 84
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->b(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    goto :goto_0

    .line 69
    :cond_2
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 70
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-static {p2, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;Z)Z

    .line 71
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->b(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    goto :goto_0

    .line 88
    :cond_3
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 89
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-static {p2, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;Z)Z

    .line 90
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->b(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 98
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 99
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    invoke-static {p2, p3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;I)I

    .line 101
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->c(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)I

    move-result p2

    const/4 p3, 0x0

    const/16 v0, 0x14

    if-gt p2, v0, :cond_0

    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 102
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-static {p2, p3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;Z)Z

    .line 103
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->b(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    .line 106
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->b(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->a(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 107
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "BaseRecycleView"

    const-string p2, "to top or bottom"

    .line 108
    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-static {p1, p3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;Z)Z

    .line 110
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->b(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    :cond_2
    return-void
.end method
