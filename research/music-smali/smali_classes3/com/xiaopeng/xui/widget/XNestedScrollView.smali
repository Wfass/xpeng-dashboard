.class public Lcom/xiaopeng/xui/widget/XNestedScrollView;
.super Landroidx/core/widget/NestedScrollView;
.source "XNestedScrollView.java"

# interfaces
.implements Lbxt;
.implements Lcom/xiaopeng/xui/vui/VuiView;
.implements Lcom/xiaopeng/xui/vui/XuiView;


# instance fields
.field private final mTouchSlop:I

.field protected mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XNestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XNestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    sget-object v0, Lbyg$n;->XScrollView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 49
    sget v0, Lbyg$n;->XScrollView_scrollview_use_scale_touch_slop:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XNestedScrollView;->mTouchSlop:I

    .line 50
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    invoke-direct {p0, p2, p3}, Lcom/xiaopeng/xui/widget/XNestedScrollView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNestedScrollView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "scrollbarThumbVertical"

    .line 56
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_global"

    invoke-static {v2, v1}, Lapr;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;IILjava/lang/Object;)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/xui/widget/XNestedScrollView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 58
    :cond_0
    iget p2, p0, Lcom/xiaopeng/xui/widget/XNestedScrollView;->mTouchSlop:I

    const/4 v0, -0x1

    if-le p2, v0, :cond_1

    .line 59
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XNestedScrollView;->setTouchSlop(I)V

    .line 61
    :cond_1
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XNestedScrollView;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .line 110
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 111
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNestedScrollView;->releaseVui()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 74
    invoke-super {p0}, Landroidx/core/widget/NestedScrollView;->onAttachedToWindow()V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNestedScrollView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNestedScrollView;->vuiViewAttachedToWindow()V

    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lbxr;)Lbye;
    .locals 1

    const/4 p1, 0x0

    .line 116
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNestedScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-ge v0, p1, :cond_1

    sget-object p1, Lbxx;->SCROLLBYY:Lbxx;

    invoke-virtual {p1}, Lbxx;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XNestedScrollView;->setVuiAction(Ljava/lang/String;)V

    :cond_1
    return-object p2
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNestedScrollView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 83
    invoke-super {p0}, Landroidx/core/widget/NestedScrollView;->onDetachedFromWindow()V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNestedScrollView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNestedScrollView;->vuiViewDetachedFromWindow()V

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0

    .line 98
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onViewAdded(Landroid/view/View;)V

    .line 99
    sget-object p1, Lbyc;->UPDATE_VIEW:Lbyc;

    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XNestedScrollView;->updateVui(Landroid/view/View;Lbyc;)V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 104
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onViewRemoved(Landroid/view/View;)V

    .line 105
    sget-object p1, Lbyc;->UPDATE_VIEW:Lbyc;

    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XNestedScrollView;->updateVui(Landroid/view/View;Lbyc;)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 154
    invoke-super {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 155
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XNestedScrollView;->onVuiVisibilityChanged(I)V

    .line 156
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XNestedScrollView;->onVisibilityChangedThemeRefresh(I)V

    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lbyf;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 129
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->setEnabled(Z)V

    .line 130
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 132
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XNestedScrollView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 134
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XNestedScrollView;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNestedScrollView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lapr;->b(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SoonBlockedPrivateApi"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 92
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->setVisibility(I)V

    .line 93
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XNestedScrollView;->setVuiVisibility(Landroid/view/View;I)V

    return-void
.end method
