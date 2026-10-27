.class public Lcom/xiaopeng/xui/widget/XRecyclerView;
.super Lcom/xiaopeng/xui/vui/VuiRecyclerView;
.source "XRecyclerView.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/XuiView;


# instance fields
.field protected mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XRecyclerView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 31
    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/xui/widget/XRecyclerView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0, p2, p3}, Lcom/xiaopeng/xui/widget/XRecyclerView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XRecyclerView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "scrollbarThumbVertical"

    .line 41
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_global"

    invoke-static {v2, v1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->asMaps(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;IILjava/lang/Object;)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XRecyclerView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 55
    invoke-super {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->onAttachedToWindow()V

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRecyclerView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRecyclerView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 63
    invoke-super {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->onDetachedFromWindow()V

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRecyclerView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 90
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 91
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XRecyclerView;->onVisibilityChangedThemeRefresh(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->setEnabled(Z)V

    .line 72
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 74
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XRecyclerView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 76
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XRecyclerView;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRecyclerView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setThemeRefreshable(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
