.class public Lcom/xiaopeng/xui/widget/XTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "XTextView.java"

# interfaces
.implements Lbxt;
.implements Lcom/xiaopeng/xui/vui/VuiView;
.implements Lcom/xiaopeng/xui/vui/XuiView;


# instance fields
.field protected mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

.field private xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 30
    invoke-static {p0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 31
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 32
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 33
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/xiaopeng/xui/lang/LangPresenter;->addLongClickAction(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-static {p0, p2}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 40
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XTextView;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 41
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setImportantForAccessibility(I)V

    .line 42
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object v0

    invoke-interface {v0, p1, p0, p2}, Lcom/xiaopeng/xui/lang/LangPresenter;->setOriginEOLang(Landroid/content/Context;Landroid/widget/TextView;Landroid/util/AttributeSet;)V

    .line 44
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/xiaopeng/xui/lang/LangPresenter;->addLongClickAction(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-static {p0, p2, p3}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;I)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/xui/widget/XTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 51
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XTextView;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 52
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 53
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object p3

    invoke-interface {p3, p1, p0, p2}, Lcom/xiaopeng/xui/lang/LangPresenter;->setOriginEOLang(Landroid/content/Context;Landroid/widget/TextView;Landroid/util/AttributeSet;)V

    .line 54
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/xiaopeng/xui/lang/LangPresenter;->addLongClickAction(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private checkMovementMothod()V
    .locals 3

    .line 168
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    if-eqz v0, :cond_4

    .line 169
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextView;->getVuiAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTextView;->xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    .line 171
    sget-object v0, Lbxy;->CUSTOM:Lbxy;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiElementType(Lbxy;)V

    .line 172
    sget-object v0, Lbxx;->CLICK:Lbxx;

    invoke-virtual {v0}, Lbxx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiAction(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextView;->xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->getStart()I

    move-result v1

    if-gez v1, :cond_1

    return-void

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextView;->xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->getEnd()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_2

    return-void

    .line 183
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextView;->xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->getEnd()I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTextView;->xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->getStart()I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_3

    return-void

    .line 187
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextView;->xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->getStart()I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTextView;->xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->getEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiLabel(Ljava/lang/String;)V

    :cond_4
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .line 104
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 105
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextView;->releaseVui()V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 60
    const-class v0, Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initVui(Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 0

    .line 163
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/vui/VuiView;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 164
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTextView;->checkMovementMothod()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 73
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onAttachedToWindow()V

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextView;->vuiViewAttachedToWindow()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 82
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onDetachedFromWindow()V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextView;->vuiViewDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 214
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 215
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 216
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/xiaopeng/xui/lang/LangPresenter;->handleCustomString(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 208
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 209
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTextView;->onVisibilityChangedThemeRefresh(I)V

    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lbyf;)Z
    .locals 1

    .line 155
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XTextView;->xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextView;->getId()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 156
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XTextView;->xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->getXClickableSpan()Lcom/xiaopeng/xui/utils/XClickableSpan;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/utils/XClickableSpan;->onClick(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 123
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lapr;->b(I)V

    :cond_0
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 1

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lapr;->b(IIII)V

    :cond_0
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 1

    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lapr;->a(IIII)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 110
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setEnabled(Z)V

    .line 111
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 113
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 115
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFocusable(I)V
    .locals 0

    .line 195
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setFocusable(I)V

    .line 196
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTextView;->checkMovementMothod()V

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 98
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setSelected(Z)V

    .line 99
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiSelected(Landroid/view/View;Z)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 131
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 132
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextView;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 133
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lapr;->a(I)V

    :cond_0
    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lapr;->b(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 92
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 93
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiVisibility(Landroid/view/View;I)V

    return-void
.end method
