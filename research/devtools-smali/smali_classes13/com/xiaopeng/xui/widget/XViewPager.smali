.class public Lcom/xiaopeng/xui/widget/XViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "XViewPager.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/a;


# instance fields
.field protected abs:Lcom/xiaopeng/xui/view/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-static {p0, p2}, Lcom/xiaopeng/xui/view/a;->b(Landroid/view/View;Landroid/util/AttributeSet;)Lcom/xiaopeng/xui/view/a;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XViewPager;->abs:Lcom/xiaopeng/xui/view/a;

    .line 30
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XViewPager;->c(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 77
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 78
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XViewPager;->qV()V

    .line 79
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 43
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->onAttachedToWindow()V

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XViewPager;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XViewPager;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/a;->onAttachedToWindow()V

    .line 47
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 35
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XViewPager;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XViewPager;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 39
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 51
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->onDetachedFromWindow()V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XViewPager;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XViewPager;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/a;->onDetachedFromWindow()V

    .line 55
    :cond_0
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onViewAdded(Landroid/view/View;)V

    .line 66
    sget-object p1, Lcom/xiaopeng/vui/commons/VuiUpdateType;->Zx:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XViewPager;->a(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    .line 67
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onViewRemoved(Landroid/view/View;)V

    .line 72
    sget-object p1, Lcom/xiaopeng/vui/commons/VuiUpdateType;->Zx:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XViewPager;->a(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    .line 73
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setVisibility(I)V

    .line 60
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XViewPager;->e(Landroid/view/View;I)V

    .line 61
    return-void
.end method
