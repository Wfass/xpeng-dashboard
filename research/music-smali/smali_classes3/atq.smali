.class public Latq;
.super Lcom/xiaopeng/musicradio/datalist/h;
.source "ProgramViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/datalist/h<",
        "Lavm;",
        ">;"
    }
.end annotation


# instance fields
.field private h:Z

.field private i:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;


# direct methods
.method public constructor <init>(Lavm;ZLcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V
    .locals 1

    const/4 v0, 0x1

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/datalist/h;-><init>(Landroidx/databinding/ViewDataBinding;Z)V

    .line 28
    iput-boolean p2, p0, Latq;->h:Z

    .line 29
    iget-object p2, p1, Lavm;->c:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {p2, p0}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setDeleteClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object p1, p1, Lavm;->c:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {p1, p0}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setPlayClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iput-object p3, p0, Latq;->i:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)Ljava/lang/String;
    .locals 0

    .line 63
    invoke-static {p1}, Lbmy;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(I)V
    .locals 11

    .line 36
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/datalist/h;->a(I)V

    .line 37
    invoke-virtual {p0}, Latq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    .line 38
    invoke-static {v0}, Laxw;->b(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Latq;->f:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/musicradio/datalist/d;->b(I)V

    .line 42
    invoke-static {}, Laxw;->b()I

    move-result v3

    goto :goto_0

    .line 43
    :cond_0
    iget-object v1, p0, Latq;->f:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/datalist/d;->h()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 44
    iget-object v1, p0, Latq;->f:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v1, v3, v2}, Lcom/xiaopeng/musicradio/datalist/d;->a(IZ)V

    :cond_1
    :goto_0
    move v9, v3

    .line 46
    iget-object v1, p0, Latq;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lavm;

    iget-object v4, v1, Lavm;->c:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0}, Latq;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, p1, 0x1

    sget v8, Lcom/xiaopeng/musicradio/mine/a$b;->pic_covers_music_220:I

    iget-object v10, p0, Latq;->i:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual/range {v4 .. v10}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->a(Ljava/lang/String;Ljava/lang/String;IIILcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    .line 47
    iget-object v1, p0, Latq;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lavm;

    iget-object v1, v1, Lavm;->c:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    iget-boolean v3, p0, Latq;->h:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iget-object v3, p0, Latq;->f:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/datalist/d;->m()Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v4

    :cond_2
    invoke-virtual {v1, v2, p1}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->a(ZI)V

    .line 51
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getPaymentType()I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_3

    .line 52
    iget-object p1, p0, Latq;->c:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lavm;

    iget-object p1, p1, Lavm;->d:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 53
    :cond_3
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getPaymentType()I

    move-result p1

    if-ne p1, v4, :cond_4

    .line 54
    iget-object p1, p0, Latq;->c:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lavm;

    iget-object p1, p1, Lavm;->d:Lcom/xiaopeng/xui/widget/XImageView;

    sget v0, Lcom/xiaopeng/musicradio/mine/a$b;->ic_xmly_cover_label_vip:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_1

    .line 55
    :cond_4
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getPaymentType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 56
    iget-object p1, p0, Latq;->c:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lavm;

    iget-object p1, p1, Lavm;->d:Lcom/xiaopeng/xui/widget/XImageView;

    sget v0, Lcom/xiaopeng/musicradio/mine/a$b;->ic_xmly_cover_label_payment:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_1

    .line 58
    :cond_5
    iget-object p1, p0, Latq;->c:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lavm;

    iget-object p1, p1, Lavm;->d:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method
