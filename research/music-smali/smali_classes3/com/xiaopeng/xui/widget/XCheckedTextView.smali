.class public Lcom/xiaopeng/xui/widget/XCheckedTextView;
.super Landroidx/appcompat/widget/h;
.source "XCheckedTextView.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/VuiView;
.implements Lcom/xiaopeng/xui/vui/XuiView;


# instance fields
.field protected mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/h;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-static {p0, p2, p3}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;I)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/xui/widget/XCheckedTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 40
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XCheckedTextView;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 41
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 42
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object p3

    invoke-interface {p3, p0}, Lcom/xiaopeng/xui/lang/LangPresenter;->addLongClickAction(Landroid/view/View;)V

    .line 43
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object p3

    invoke-interface {p3, p1, p0, p2}, Lcom/xiaopeng/xui/lang/LangPresenter;->setOriginEOLang(Landroid/content/Context;Landroid/widget/TextView;Landroid/util/AttributeSet;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .line 87
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 88
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCheckedTextView;->releaseVui()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 57
    invoke-super {p0}, Landroidx/appcompat/widget/h;->onAttachedToWindow()V

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCheckedTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCheckedTextView;->vuiViewAttachedToWindow()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Landroidx/appcompat/widget/h;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCheckedTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 66
    invoke-super {p0}, Landroidx/appcompat/widget/h;->onDetachedFromWindow()V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCheckedTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCheckedTextView;->vuiViewDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 118
    invoke-super {p0, p1}, Landroidx/appcompat/widget/h;->onDraw(Landroid/graphics/Canvas;)V

    .line 119
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 120
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/xiaopeng/xui/lang/LangPresenter;->handleCustomString(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 112
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/h;->onVisibilityChanged(Landroid/view/View;I)V

    .line 113
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XCheckedTextView;->onVisibilityChangedThemeRefresh(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Landroidx/appcompat/widget/h;->setEnabled(Z)V

    .line 94
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 96
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XCheckedTextView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 98
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XCheckedTextView;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 81
    invoke-super {p0, p1}, Landroidx/appcompat/widget/h;->setSelected(Z)V

    .line 82
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XCheckedTextView;->setVuiSelected(Landroid/view/View;Z)V

    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCheckedTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lapr;->b(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Landroidx/appcompat/widget/h;->setVisibility(I)V

    .line 76
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XCheckedTextView;->setVuiVisibility(Landroid/view/View;I)V

    return-void
.end method
