.class public Laxl;
.super Lcom/xiaopeng/musicradio/datalist/h;
.source "PlaylistUserViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/datalist/h<",
        "Lavu;",
        ">;"
    }
.end annotation


# instance fields
.field private h:Z


# direct methods
.method public constructor <init>(Lavu;Z)V
    .locals 7

    const/4 v0, 0x1

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/datalist/h;-><init>(Landroidx/databinding/ViewDataBinding;Z)V

    .line 20
    iput-boolean p2, p0, Laxl;->h:Z

    if-eqz p2, :cond_0

    .line 22
    iget-object p2, p1, Lavu;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 23
    invoke-virtual {p1}, Lavu;->f()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 24
    sget v2, Lcom/xiaopeng/musicradio/mine/a$a;->mine_album_edit_logo_margin_top:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 26
    :cond_0
    iget-object p1, p0, Laxl;->itemView:Landroid/view/View;

    iget p2, p0, Laxl;->d:I

    iget-object v2, p0, Laxl;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/musicradio/mine/a$e;->vui_play_position:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Laxl;->a:Landroid/content/Context;

    sget v6, Lcom/xiaopeng/musicradio/mine/a$e;->title_add_playlist:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "title_add_playlist"

    invoke-static {p1, p2, v0, v1}, Laxt;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 31
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/datalist/h;->a(I)V

    .line 32
    invoke-virtual {p0}, Laxl;->d()V

    .line 33
    iget-boolean p1, p0, Laxl;->h:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Laxl;->f:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/datalist/d;->m()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 34
    iget-object p1, p0, Laxl;->c:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lavu;

    iget-object p1, p1, Lavu;->d:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 35
    iget-object p1, p0, Laxl;->c:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lavu;

    iget-object p1, p1, Lavu;->c:Lcom/xiaopeng/xui/widget/XImageView;

    const/16 v0, 0x7f

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageAlpha(I)V

    .line 36
    iget-object p1, p0, Laxl;->c:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lavu;

    iget-object p1, p1, Lavu;->g:Lcom/xiaopeng/xui/widget/XTextView;

    const v0, 0x3eb851ec    # 0.36f

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setAlpha(F)V

    goto :goto_0

    .line 38
    :cond_0
    iget-object p1, p0, Laxl;->c:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lavu;

    iget-object p1, p1, Lavu;->d:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 39
    iget-object p1, p0, Laxl;->c:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lavu;

    iget-object p1, p1, Lavu;->c:Lcom/xiaopeng/xui/widget/XImageView;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageAlpha(I)V

    .line 40
    iget-object p1, p0, Laxl;->c:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lavu;

    iget-object p1, p1, Lavu;->g:Lcom/xiaopeng/xui/widget/XTextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setAlpha(F)V

    :goto_0
    const-string p1, "FROM_MAIN"

    .line 42
    invoke-virtual {p0, p1}, Laxl;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 43
    iget-object p1, p0, Laxl;->itemView:Landroid/view/View;

    invoke-static {p1}, Laxt;->b(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 2

    .line 48
    iget-object v0, p0, Laxl;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lavu;

    iget-object v0, v0, Lavu;->f:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    return-void
.end method
