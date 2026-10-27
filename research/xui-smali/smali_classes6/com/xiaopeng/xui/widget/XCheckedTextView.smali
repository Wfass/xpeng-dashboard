.class public Lcom/xiaopeng/xui/widget/XCheckedTextView;
.super Landroidx/appcompat/widget/AppCompatCheckedTextView;
.source "XCheckedTextView.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/VuiView;
.implements Lcom/xiaopeng/xui/vui/XuiView;


# instance fields
.field protected mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 24
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 28
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-static {p0, p2}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XCheckedTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 30
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XCheckedTextView;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 31
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/xiaopeng/xui/lang/LangPresenter;->addLongClickAction(Landroid/view/View;)V

    .line 33
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object v0

    invoke-interface {v0, p1, p0, p2}, Lcom/xiaopeng/xui/lang/LangPresenter;->setOriginEOLang(Landroid/content/Context;Landroid/widget/TextView;Landroid/util/AttributeSet;)V

    .line 35
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-static {p0, p2, p3}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;I)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XCheckedTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 40
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XCheckedTextView;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 41
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/xiaopeng/xui/lang/LangPresenter;->addLongClickAction(Landroid/view/View;)V

    .line 43
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object v0

    invoke-interface {v0, p1, p0, p2}, Lcom/xiaopeng/xui/lang/LangPresenter;->setOriginEOLang(Landroid/content/Context;Landroid/widget/TextView;Landroid/util/AttributeSet;)V

    .line 45
    :cond_0
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

    .line 85
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 86
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCheckedTextView;->releaseVui()V

    .line 87
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 57
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->onAttachedToWindow()V

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCheckedTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCheckedTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 61
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 49
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCheckedTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCheckedTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 53
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 65
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->onDetachedFromWindow()V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCheckedTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCheckedTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 69
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 116
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 117
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/xiaopeng/xui/lang/LangPresenter;->handleCustomString(Landroid/view/View;)V

    .line 120
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 110
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 111
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XCheckedTextView;->onVisibilityChangedThemeRefresh(I)V

    .line 112
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 91
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setEnabled(Z)V

    .line 92
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    if-eqz p1, :cond_0

    .line 94
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XCheckedTextView;->setAlpha(F)V

    goto :goto_0

    .line 96
    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XCheckedTextView;->setAlpha(F)V

    .line 99
    :cond_1
    :goto_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .line 79
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setSelected(Z)V

    .line 80
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XCheckedTextView;->setVuiSelected(Landroid/view/View;Z)V

    .line 81
    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1
    .param p1, "refreshable"    # Z

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCheckedTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCheckedTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setThemeRefreshable(Landroid/view/View;Z)V

    .line 106
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 73
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setVisibility(I)V

    .line 74
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XCheckedTextView;->setVuiVisibility(Landroid/view/View;I)V

    .line 75
    return-void
.end method
