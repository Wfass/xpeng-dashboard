.class public Lcom/xiaopeng/musicradio/mine/widget/c;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ContentViewHolder.java"


# instance fields
.field public a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 13
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 14
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->content_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/c;->a:Landroid/view/View;

    return-void
.end method
