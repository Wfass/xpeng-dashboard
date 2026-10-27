.class public Latm;
.super Lcom/xiaopeng/musicradio/datalist/h;
.source "AlbumViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/datalist/h<",
        "Lave;",
        ">;"
    }
.end annotation


# instance fields
.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I

.field private l:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;


# direct methods
.method public constructor <init>(Lave;ZILcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0, v0}, Latm;-><init>(Lave;ZZZ)V

    .line 30
    iput p3, p0, Latm;->k:I

    .line 31
    iput-object p4, p0, Latm;->l:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    return-void
.end method

.method public constructor <init>(Lave;ZZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/datalist/h;-><init>(Landroidx/databinding/ViewDataBinding;Z)V

    .line 40
    iput-boolean p2, p0, Latm;->h:Z

    .line 41
    iput-boolean p3, p0, Latm;->i:Z

    .line 42
    iput-boolean p4, p0, Latm;->j:Z

    .line 44
    iget-object p2, p1, Lave;->c:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {p2, p0}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setDeleteClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object p1, p1, Lave;->c:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {p1, p0}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setPlayClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Lave;ZZZLcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V
    .locals 1

    const/4 v0, 0x1

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/datalist/h;-><init>(Landroidx/databinding/ViewDataBinding;Z)V

    .line 50
    iput-boolean p2, p0, Latm;->h:Z

    .line 51
    iput-boolean p3, p0, Latm;->i:Z

    .line 52
    iput-boolean p4, p0, Latm;->j:Z

    .line 53
    iput-object p5, p0, Latm;->l:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    .line 55
    iget-object p2, p1, Lave;->c:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {p2, p0}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setDeleteClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object p1, p1, Lave;->c:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {p1, p0}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setPlayClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 11

    .line 62
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/datalist/h;->a(I)V

    .line 63
    invoke-virtual {p0}, Latm;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    .line 64
    invoke-static {v0}, Laxu;->b(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Latm;->f:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/musicradio/datalist/d;->b(I)V

    .line 68
    invoke-static {}, Laxu;->b()I

    move-result v3

    goto :goto_0

    .line 69
    :cond_0
    iget-object v1, p0, Latm;->f:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/datalist/d;->h()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 70
    iget-object v1, p0, Latm;->f:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v1, v3, v2}, Lcom/xiaopeng/musicradio/datalist/d;->a(IZ)V

    :cond_1
    :goto_0
    move v9, v3

    .line 72
    iget-object v1, p0, Latm;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lave;

    iget-object v4, v1, Lave;->c:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogoUrl()Ljava/lang/String;

    move-result-object v6

    iget v0, p0, Latm;->k:I

    add-int/2addr v0, p1

    const/4 v1, 0x1

    add-int/lit8 v7, v0, 0x1

    sget v8, Lcom/xiaopeng/musicradio/mine/a$b;->pic_covers_music_220:I

    iget-object v10, p0, Latm;->l:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual/range {v4 .. v10}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->a(Ljava/lang/String;Ljava/lang/String;IIILcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    .line 73
    iget-object v0, p0, Latm;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lave;

    iget-object v0, v0, Lave;->c:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    iget-boolean v3, p0, Latm;->h:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Latm;->f:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/datalist/d;->m()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->a(ZI)V

    return-void
.end method
