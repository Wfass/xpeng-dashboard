.class public Lcom/xiaopeng/musicradio/widget/MusicRecyclerTabLayout;
.super Lcom/xiaopeng/musicradio/widget/j;
.source "MusicRecyclerTabLayout.java"


# instance fields
.field private A:Lapr;

.field private B:Lcom/xiaopeng/musicradio/widget/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/j;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    .line 18
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/MusicRecyclerTabLayout;->setOverScrollMode(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/MusicRecyclerTabLayout;->A:Lapr;

    const/4 p1, 0x2

    .line 24
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/MusicRecyclerTabLayout;->setOverScrollMode(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/MusicRecyclerTabLayout;->A:Lapr;

    const/4 p1, 0x2

    .line 30
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/MusicRecyclerTabLayout;->setOverScrollMode(I)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicRecyclerTabLayout;->B:Lcom/xiaopeng/musicradio/widget/m;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/widget/m;->c:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->setCurrentItem(I)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/MusicRecyclerTabLayout;->scrollToPosition(I)V

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicRecyclerTabLayout;->B:Lcom/xiaopeng/musicradio/widget/m;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/m;->b(I)V

    .line 45
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/MusicRecyclerTabLayout;->B:Lcom/xiaopeng/musicradio/widget/m;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/m;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 60
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/j;->onAttachedToWindow()V

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicRecyclerTabLayout;->A:Lapr;

    invoke-virtual {v0, p0}, Lapr;->a(Landroid/view/View;)V

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicRecyclerTabLayout;->B:Lcom/xiaopeng/musicradio/widget/m;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/xiaopeng/musicradio/widget/m;->c:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicRecyclerTabLayout;->B:Lcom/xiaopeng/musicradio/widget/m;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/widget/m;->c:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/MusicRecyclerTabLayout;->a(I)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/j;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicRecyclerTabLayout;->A:Lapr;

    invoke-virtual {v0, p0, p1}, Lapr;->a(Landroid/view/View;Landroid/content/res/Configuration;)V

    .line 53
    invoke-static {p1}, Lapo;->b(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/MusicRecyclerTabLayout;->B:Lcom/xiaopeng/musicradio/widget/m;

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/m;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 69
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/j;->onDetachedFromWindow()V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicRecyclerTabLayout;->A:Lapr;

    invoke-virtual {v0, p0}, Lapr;->b(Landroid/view/View;)V

    return-void
.end method

.method public setUpWithViewPager(Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;)V
    .locals 1

    .line 34
    new-instance v0, Lcom/xiaopeng/musicradio/widget/m;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/widget/m;-><init>(Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicRecyclerTabLayout;->B:Lcom/xiaopeng/musicradio/widget/m;

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicRecyclerTabLayout;->B:Lcom/xiaopeng/musicradio/widget/m;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/MusicRecyclerTabLayout;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 36
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->getCurrentItem()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/MusicRecyclerTabLayout;->a(I)V

    return-void
.end method
