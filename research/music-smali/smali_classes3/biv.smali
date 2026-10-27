.class public Lbiv;
.super Lbii;
.source "MsRankDetailListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbiv$a;
    }
.end annotation


# instance fields
.field private g:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lbii;-><init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V

    const/4 p1, 0x3

    .line 16
    new-array p1, p1, [I

    sget p2, Lbez$c;->img_no_1:I

    const/4 p3, 0x0

    aput p2, p1, p3

    sget p2, Lbez$c;->img_no_2:I

    const/4 p3, 0x1

    aput p2, p1, p3

    sget p2, Lbez$c;->img_no_3:I

    const/4 p3, 0x2

    aput p2, p1, p3

    iput-object p1, p0, Lbiv;->g:[I

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 35
    invoke-super {p0, p1, p2}, Lbii;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 36
    instance-of v0, p1, Lbiv$a;

    if-eqz v0, :cond_1

    .line 37
    check-cast p1, Lbiv$a;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 46
    iget-object p1, p1, Lbiv$a;->o:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p1, Lbiv$a;->o:Lcom/xiaopeng/xui/widget/XImageView;

    iget-object v0, p0, Lbiv;->g:[I

    aget p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 25
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lbez$f;->item_musiclist_foot_view:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 26
    new-instance p2, Lbii$a;

    invoke-direct {p2, p0, p1}, Lbii$a;-><init>(Lbii;Landroid/view/View;)V

    return-object p2

    .line 28
    :cond_0
    invoke-virtual {p0}, Lbiv;->c()Landroid/view/View;

    move-result-object p1

    .line 29
    new-instance p2, Lbiv$a;

    invoke-direct {p2, p0, p1}, Lbiv$a;-><init>(Lbiv;Landroid/view/View;)V

    return-object p2
.end method
