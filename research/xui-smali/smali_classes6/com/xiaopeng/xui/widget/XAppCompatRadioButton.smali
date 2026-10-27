.class public Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;
.super Landroidx/appcompat/widget/AppCompatRadioButton;
.source "XAppCompatRadioButton.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/VuiView;
.implements Lcom/xiaopeng/xui/vui/XuiView;


# instance fields
.field private buttonDrawable:Landroid/graphics/drawable/Drawable;

.field protected mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

.field private pressAnimEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->pressAnimEnable:Z

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 29
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->pressAnimEnable:Z

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->pressAnimEnable:Z

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-nez v0, :cond_0

    .line 40
    invoke-static {p0, p2, p3}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;I)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 42
    :cond_0
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xui/widget/-$$Lambda$XAppCompatRadioButton$DAsRVA88XBq2UeoaKjz-5VawHYw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/-$$Lambda$XAppCompatRadioButton$DAsRVA88XBq2UeoaKjz-5VawHYw;-><init>(Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->addCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 45
    return-void
.end method

.method public static synthetic lambda$init$0(Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 110
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatRadioButton;->drawableStateChanged()V

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->pressAnimEnable:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->drawableStateChanged()V

    .line 114
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 88
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 89
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->releaseVui()V

    .line 90
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 57
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatRadioButton;->onAttachedToWindow()V

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 61
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 49
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatRadioButton;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 53
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 65
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatRadioButton;->onDetachedFromWindow()V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 69
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 125
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatRadioButton;->onVisibilityChanged(Landroid/view/View;I)V

    .line 126
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->onVisibilityChangedThemeRefresh(I)V

    .line 127
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 79
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->isChecked()Z

    move-result v0

    .line 80
    .local v0, "isChecked":Z
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatRadioButton;->setChecked(Z)V

    .line 81
    if-eq v0, p1, :cond_0

    .line 82
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->updateVui(Landroid/view/View;)V

    .line 84
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 94
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatRadioButton;->setEnabled(Z)V

    .line 95
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    if-eqz p1, :cond_0

    .line 97
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->setAlpha(F)V

    goto :goto_0

    .line 99
    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->setAlpha(F)V

    .line 102
    :cond_1
    :goto_0
    return-void
.end method

.method public setPressAnimEnable(Z)V
    .locals 0
    .param p1, "pressAnimEnable"    # Z

    .line 105
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->pressAnimEnable:Z

    .line 106
    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1
    .param p1, "refreshable"    # Z

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setThemeRefreshable(Landroid/view/View;Z)V

    .line 121
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 73
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatRadioButton;->setVisibility(I)V

    .line 74
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->setVuiVisibility(Landroid/view/View;I)V

    .line 75
    return-void
.end method
