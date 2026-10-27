.class public Latp;
.super Lcom/xiaopeng/musicradio/datalist/h;
.source "NetradioViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/datalist/h<",
        "Lavk;",
        ">;"
    }
.end annotation


# instance fields
.field private h:Z

.field private i:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;


# direct methods
.method public constructor <init>(Lavk;ZLcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/datalist/h;-><init>(Landroidx/databinding/ViewDataBinding;Z)V

    .line 27
    iput-boolean p2, p0, Latp;->h:Z

    .line 28
    iget-object p2, p1, Lavk;->c:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {p2, p0}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setDeleteClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object p2, p1, Lavk;->c:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {p2, p0}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setPlayClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object p1, p1, Lavk;->c:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {p1, p0}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setOpenDetailClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iput-object p3, p0, Latp;->i:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 11

    .line 36
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/datalist/h;->a(I)V

    .line 37
    invoke-virtual {p0}, Latp;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    .line 40
    invoke-static {v0}, Laxv;->b(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Latp;->f:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/musicradio/datalist/d;->b(I)V

    .line 44
    invoke-static {}, Laxv;->b()I

    move-result v3

    goto :goto_0

    .line 45
    :cond_0
    iget-object v1, p0, Latp;->f:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/datalist/d;->h()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 46
    iget-object v1, p0, Latp;->f:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v1, v3, v2}, Lcom/xiaopeng/musicradio/datalist/d;->a(IZ)V

    :cond_1
    :goto_0
    move v9, v3

    .line 48
    iget-object v1, p0, Latp;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lavk;

    iget-object v4, v1, Lavk;->c:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPicUrl()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, p1, 0x1

    sget v8, Lcom/xiaopeng/musicradio/mine/a$b;->pic_covers_music_220:I

    iget-object v10, p0, Latp;->i:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual/range {v4 .. v10}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->a(Ljava/lang/String;Ljava/lang/String;IIILcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    .line 49
    iget-object v0, p0, Latp;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lavk;

    iget-object v0, v0, Lavk;->c:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    iget-boolean v1, p0, Latp;->h:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Latp;->f:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/datalist/d;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v0, v2, p1}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->a(ZI)V

    return-void
.end method
