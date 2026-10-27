.class public Lcom/xiaopeng/musicradio/datalist/r$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MoreAdapter.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/datalist/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/datalist/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Lcom/xiaopeng/xui/widget/XTextView;

.field public c:Lcom/xiaopeng/xui/widget/XLoading;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 150
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 151
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->food_view_group:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/datalist/r$b;->a:Landroid/view/View;

    .line 152
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->tv_foot:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/datalist/r$b;->b:Lcom/xiaopeng/xui/widget/XTextView;

    .line 153
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->foot_loading:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XLoading;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/datalist/r$b;->c:Lcom/xiaopeng/xui/widget/XLoading;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 174
    iget-object p1, p0, Lcom/xiaopeng/musicradio/datalist/r$b;->c:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    move v1, v2

    goto :goto_0

    .line 168
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/datalist/r$b;->c:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 169
    iget-object p1, p0, Lcom/xiaopeng/musicradio/datalist/r$b;->b:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lcom/xiaopeng/musicradio/common/k$g;->rv_more_fail:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    goto :goto_0

    .line 164
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/datalist/r$b;->c:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 165
    iget-object p1, p0, Lcom/xiaopeng/musicradio/datalist/r$b;->b:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lcom/xiaopeng/musicradio/common/k$g;->rv_more_loading:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 178
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/datalist/r$b;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, v1, :cond_2

    .line 179
    iget-object p1, p0, Lcom/xiaopeng/musicradio/datalist/r$b;->a:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
