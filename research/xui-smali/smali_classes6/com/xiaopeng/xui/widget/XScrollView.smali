.class public Lcom/xiaopeng/xui/widget/XScrollView;
.super Landroid/widget/ScrollView;
.source "XScrollView.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/VuiView;
.implements Lcom/xiaopeng/vui/commons/IVuiElementListener;
.implements Lcom/xiaopeng/xui/vui/XuiView;


# instance fields
.field mTouchSlop:I

.field protected mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XScrollView;->mTouchSlop:I

    .line 52
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XScrollView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 53
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XScrollView_scrollview_use_scale_touch_slop:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XScrollView;->mTouchSlop:I

    .line 54
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    invoke-direct {p0, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XScrollView;->init(Landroid/util/AttributeSet;II)V

    .line 56
    return-void
.end method

.method private init(Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XScrollView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    const-string v0, "extra_global"

    const-string v1, "scrollbarThumbVertical"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->asMaps(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;IILjava/lang/Object;)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XScrollView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 62
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XScrollView;->mTouchSlop:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 63
    iget v0, p0, Lcom/xiaopeng/xui/widget/XScrollView;->mTouchSlop:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XScrollView;->setTouchSlop(I)V

    .line 65
    :cond_1
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XScrollView;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 66
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

    .line 112
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 113
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XScrollView;->releaseVui()V

    .line 114
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
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XScrollView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 82
    :cond_0
    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "iVuiElementBuilder"    # Lcom/xiaopeng/vui/commons/IVuiElementBuilder;

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, "child":Landroid/view/View;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XScrollView;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    sget-object v2, Lcom/xiaopeng/vui/commons/VuiAction;->SCROLLBYY:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v2}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XScrollView;->setVuiAction(Ljava/lang/String;)V

    .line 121
    :cond_1
    return-object v1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 70
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XScrollView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XScrollView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 74
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 86
    invoke-super {p0}, Landroid/widget/ScrollView;->onDetachedFromWindow()V

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XScrollView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XScrollView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 90
    :cond_0
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 100
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onViewAdded(Landroid/view/View;)V

    .line 101
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiUpdateType;->UPDATE_VIEW:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xui/widget/XScrollView;->updateVui(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    .line 102
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 106
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onViewRemoved(Landroid/view/View;)V

    .line 107
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiUpdateType;->UPDATE_VIEW:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xui/widget/XScrollView;->updateVui(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    .line 108
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 163
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 164
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XScrollView;->onVisibilityChangedThemeRefresh(I)V

    .line 165
    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "vuiEvent"    # Lcom/xiaopeng/vui/commons/model/VuiEvent;

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 131
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->setEnabled(Z)V

    .line 132
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    if-eqz p1, :cond_0

    .line 134
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XScrollView;->setAlpha(F)V

    goto :goto_0

    .line 136
    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XScrollView;->setAlpha(F)V

    .line 139
    :cond_1
    :goto_0
    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1
    .param p1, "refreshable"    # Z

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XScrollView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XScrollView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setThemeRefreshable(Landroid/view/View;Z)V

    .line 159
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

    .line 152
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 94
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 95
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XScrollView;->setVuiVisibility(Landroid/view/View;I)V

    .line 96
    return-void
.end method
