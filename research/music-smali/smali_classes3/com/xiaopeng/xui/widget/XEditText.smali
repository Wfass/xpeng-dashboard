.class public Lcom/xiaopeng/xui/widget/XEditText;
.super Landroidx/appcompat/widget/k;
.source "XEditText.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/VuiView;
.implements Lcom/xiaopeng/xui/vui/XuiView;


# instance fields
.field protected mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/k;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XEditText;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 34
    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/xui/widget/XEditText;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0, p2, p3}, Lcom/xiaopeng/xui/widget/XEditText;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private disableTextActionModeMenu()V
    .locals 1

    .line 51
    new-instance v0, Lcom/xiaopeng/xui/widget/XEditText$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/XEditText$1;-><init>(Lcom/xiaopeng/xui/widget/XEditText;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 72
    new-instance v0, Lcom/xiaopeng/xui/widget/XEditText$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/XEditText$2;-><init>(Lcom/xiaopeng/xui/widget/XEditText;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XEditText;->setCustomInsertionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XEditText;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "scrollbarThumbVertical"

    .line 44
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_global"

    invoke-static {v2, v1}, Lapr;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;IILjava/lang/Object;)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/xui/widget/XEditText;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 46
    :cond_0
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XEditText;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XEditText;->disableTextActionModeMenu()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .line 130
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 131
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XEditText;->releaseVui()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 106
    invoke-super {p0}, Landroidx/appcompat/widget/k;->onAttachedToWindow()V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XEditText;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XEditText;->vuiViewAttachedToWindow()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Landroidx/appcompat/widget/k;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XEditText;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 115
    invoke-super {p0}, Landroidx/appcompat/widget/k;->onDetachedFromWindow()V

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XEditText;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XEditText;->vuiViewDetachedFromWindow()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 156
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/k;->onVisibilityChanged(Landroid/view/View;I)V

    .line 157
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XEditText;->onVisibilityChangedThemeRefresh(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 136
    invoke-super {p0, p1}, Landroidx/appcompat/widget/k;->setEnabled(Z)V

    .line 137
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 139
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XEditText;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 141
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XEditText;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XEditText;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lapr;->b(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 124
    invoke-super {p0, p1}, Landroidx/appcompat/widget/k;->setVisibility(I)V

    .line 125
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XEditText;->setVuiVisibility(Landroid/view/View;I)V

    return-void
.end method
