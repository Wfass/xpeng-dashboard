.class public Lcom/xiaopeng/xui/widget/XNestedScrollView;
.super Landroidx/core/widget/NestedScrollView;
.source "XNestedScrollView.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/VuiView;
.implements Lcom/xiaopeng/vui/commons/IVuiElementListener;
.implements Lcom/xiaopeng/xui/vui/XuiView;


# instance fields
.field private final mTouchSlop:I

.field protected mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XNestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XNestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->XScrollView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XScrollView_scrollview_use_scale_touch_slop:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XNestedScrollView;->mTouchSlop:I

    .line 50
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    invoke-direct {p0, p2, p3}, Lcom/xiaopeng/xui/widget/XNestedScrollView;->init(Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNestedScrollView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    const-string v1, "extra_global"

    const-string v2, "scrollbarThumbVertical"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/libtheme/ThemeViewModel;->asMaps(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;IILjava/lang/Object;)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XNestedScrollView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 58
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNestedScrollView;->mTouchSlop:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 59
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNestedScrollView;->mTouchSlop:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNestedScrollView;->setTouchSlop(I)V

    .line 61
    :cond_1
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XNestedScrollView;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 62
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

    .line 110
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 111
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNestedScrollView;->releaseVui()V

    .line 112
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
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNestedScrollView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNestedScrollView;->vuiViewAttachedToWindow()V

    .line 79
    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "iVuiElementBuilder"    # Lcom/xiaopeng/vui/commons/IVuiElementBuilder;

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, "child":Landroid/view/View;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    sget-object v2, Lcom/xiaopeng/vui/commons/VuiAction;->SCROLLBYY:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v2}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XNestedScrollView;->setVuiAction(Ljava/lang/String;)V

    .line 119
    :cond_1
    return-object v1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 66
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNestedScrollView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNestedScrollView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 70
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
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNestedScrollView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNestedScrollView;->vuiViewDetachedFromWindow()V

    .line 88
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 98
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onViewAdded(Landroid/view/View;)V

    .line 99
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiUpdateType;->UPDATE_VIEW:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xui/widget/XNestedScrollView;->updateVui(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    .line 100
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 104
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onViewRemoved(Landroid/view/View;)V

    .line 105
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiUpdateType;->UPDATE_VIEW:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xui/widget/XNestedScrollView;->updateVui(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    .line 106
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "visibility"    # I

    .line 154
    invoke-super {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 155
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XNestedScrollView;->onVuiVisibilityChanged(I)V

    .line 156
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XNestedScrollView;->onVisibilityChangedThemeRefresh(I)V

    .line 157
    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "vuiEvent"    # Lcom/xiaopeng/vui/commons/model/VuiEvent;

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 129
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->setEnabled(Z)V

    .line 130
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    if-eqz p1, :cond_0

    .line 132
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNestedScrollView;->setAlpha(F)V

    goto :goto_0

    .line 134
    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNestedScrollView;->setAlpha(F)V

    .line 137
    :cond_1
    :goto_0
    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1
    .param p1, "refreshable"    # Z

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNestedScrollView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNestedScrollView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setThemeRefreshable(Landroid/view/View;Z)V

    .line 164
    :cond_0
    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0
    .param p1, "touchSlop"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SoonBlockedPrivateApi"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 92
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->setVisibility(I)V

    .line 93
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XNestedScrollView;->setVuiVisibility(Landroid/view/View;I)V

    .line 94
    return-void
.end method
