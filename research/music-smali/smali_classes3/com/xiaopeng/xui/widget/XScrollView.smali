.class public Lcom/xiaopeng/xui/widget/XScrollView;
.super Landroid/widget/ScrollView;
.source "XScrollView.java"

# interfaces
.implements Lbxt;
.implements Lcom/xiaopeng/xui/vui/VuiView;
.implements Lcom/xiaopeng/xui/vui/XuiView;


# instance fields
.field mTouchSlop:I

.field protected mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/xiaopeng/xui/widget/XScrollView;->mTouchSlop:I

    .line 52
    sget-object v1, Lbyg$n;->XScrollView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 53
    sget v1, Lbyg$n;->XScrollView_scrollview_use_scale_touch_slop:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XScrollView;->mTouchSlop:I

    .line 54
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    invoke-direct {p0, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XScrollView;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;II)V
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XScrollView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "scrollbarThumbVertical"

    .line 60
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "extra_global"

    invoke-static {v1, v0}, Lapr;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;IILjava/lang/Object;)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/xui/widget/XScrollView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 62
    :cond_0
    iget p2, p0, Lcom/xiaopeng/xui/widget/XScrollView;->mTouchSlop:I

    const/4 p3, -0x1

    if-le p2, p3, :cond_1

    .line 63
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XScrollView;->setTouchSlop(I)V

    .line 65
    :cond_1
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XScrollView;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .line 114
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 115
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XScrollView;->releaseVui()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 78
    invoke-super {p0}, Landroid/widget/ScrollView;->onAttachedToWindow()V

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XScrollView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XScrollView;->vuiViewAttachedToWindow()V

    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lbxr;)Lbye;
    .locals 1

    const/4 p1, 0x0

    .line 120
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-ge v0, p1, :cond_1

    sget-object p1, Lbxx;->SCROLLBYY:Lbxx;

    invoke-virtual {p1}, Lbxx;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XScrollView;->setVuiAction(Ljava/lang/String;)V

    :cond_1
    return-object p2
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XScrollView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 87
    invoke-super {p0}, Landroid/widget/ScrollView;->onDetachedFromWindow()V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XScrollView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XScrollView;->vuiViewDetachedFromWindow()V

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0

    .line 102
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onViewAdded(Landroid/view/View;)V

    .line 103
    sget-object p1, Lbyc;->UPDATE_VIEW:Lbyc;

    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XScrollView;->updateVui(Landroid/view/View;Lbyc;)V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 108
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onViewRemoved(Landroid/view/View;)V

    .line 109
    sget-object p1, Lbyc;->UPDATE_VIEW:Lbyc;

    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XScrollView;->updateVui(Landroid/view/View;Lbyc;)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 165
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 166
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XScrollView;->onVisibilityChangedThemeRefresh(I)V

    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lbyf;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 133
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->setEnabled(Z)V

    .line 134
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 136
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XScrollView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 138
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XScrollView;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XScrollView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 159
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

    .line 96
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 97
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XScrollView;->setVuiVisibility(Landroid/view/View;I)V

    return-void
.end method
