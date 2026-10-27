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
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->pressAnimEnable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->pressAnimEnable:Z

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->pressAnimEnable:Z

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-nez p1, :cond_0

    .line 40
    invoke-static {p0, p2, p3}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;I)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 42
    :cond_0
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    .line 44
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/xui/widget/-$$Lambda$XAppCompatRadioButton$1XDBDODmdstGGOe0RwyXfKoljaI;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/widget/-$$Lambda$XAppCompatRadioButton$1XDBDODmdstGGOe0RwyXfKoljaI;-><init>(Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/libtheme/ThemeViewModel;->addCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 112
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatRadioButton;->drawableStateChanged()V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->pressAnimEnable:Z

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->drawableStateChanged()V

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

    .line 90
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 91
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->releaseVui()V

    return-void
.end method

.method public synthetic lambda$init$0$XAppCompatRadioButton()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

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
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->vuiViewAttachedToWindow()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatRadioButton;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 66
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatRadioButton;->onDetachedFromWindow()V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->vuiViewDetachedFromWindow()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 127
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatRadioButton;->onVisibilityChanged(Landroid/view/View;I)V

    .line 128
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->onVisibilityChangedThemeRefresh(I)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->isChecked()Z

    move-result v0

    .line 82
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatRadioButton;->setChecked(Z)V

    if-eq v0, p1, :cond_0

    .line 84
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->updateVui(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 96
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatRadioButton;->setEnabled(Z)V

    .line 97
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 99
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 101
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPressAnimEnable(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->pressAnimEnable:Z

    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setThemeRefreshable(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatRadioButton;->setVisibility(I)V

    .line 76
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->setVuiVisibility(Landroid/view/View;I)V

    return-void
.end method
