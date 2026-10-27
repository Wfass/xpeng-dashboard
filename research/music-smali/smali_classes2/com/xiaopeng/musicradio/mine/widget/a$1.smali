.class Lcom/xiaopeng/musicradio/mine/widget/a$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "CategoryViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/widget/a;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/xiaopeng/musicradio/mine/widget/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/widget/a;Landroid/view/View;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/a$1;->b:Lcom/xiaopeng/musicradio/mine/widget/a;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/mine/widget/a$1;->a:Landroid/view/View;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 70
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 72
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/a$1;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/ac;->c(Landroid/content/Context;)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/a$1;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
