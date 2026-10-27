.class public Lcom/xiaopeng/xui/widget/XTextClock;
.super Landroid/widget/TextClock;
.source "XTextClock.java"

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

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 27
    invoke-static {p0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTextClock;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 28
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XTextClock;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-static {p0, p2}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTextClock;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 34
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XTextClock;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-static {p0, p2, p3}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;I)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTextClock;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 40
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XTextClock;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private checkMovementMothod()V
    .locals 3

    .line 148
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextClock;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextClock;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    if-eqz v0, :cond_4

    .line 149
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextClock;->getVuiAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 150
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextClock;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTextClock;->xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    .line 151
    sget-object v0, Lbxy;->CUSTOM:Lbxy;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTextClock;->setVuiElementType(Lbxy;)V

    .line 152
    sget-object v0, Lbxx;->CLICK:Lbxx;

    invoke-virtual {v0}, Lbxx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTextClock;->setVuiAction(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextClock;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextClock;->xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->getStart()I

    move-result v1

    if-gez v1, :cond_1

    return-void

    .line 160
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextClock;->xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->getEnd()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_2

    return-void

    .line 163
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextClock;->xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->getEnd()I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTextClock;->xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->getStart()I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_3

    return-void

    .line 167
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextClock;->xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->getStart()I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTextClock;->xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->getEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTextClock;->setVuiLabel(Ljava/lang/String;)V

    :cond_4
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .line 84
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 85
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextClock;->releaseVui()V

    return-void
.end method

.method public initVui(Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 0

    .line 143
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/vui/VuiView;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 144
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTextClock;->checkMovementMothod()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 53
    invoke-super {p0}, Landroid/widget/TextClock;->onAttachedToWindow()V

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextClock;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextClock;->vuiViewAttachedToWindow()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Landroid/widget/TextClock;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextClock;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 62
    invoke-super {p0}, Landroid/widget/TextClock;->onDetachedFromWindow()V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextClock;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextClock;->vuiViewDetachedFromWindow()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 188
    invoke-super {p0, p1, p2}, Landroid/widget/TextClock;->onVisibilityChanged(Landroid/view/View;I)V

    .line 189
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTextClock;->onVisibilityChangedThemeRefresh(I)V

    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lbyf;)Z
    .locals 1

    .line 135
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XTextClock;->xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextClock;->getId()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 136
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XTextClock;->xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->getXClickableSpan()Lcom/xiaopeng/xui/utils/XClickableSpan;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/utils/XClickableSpan;->onClick(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 103
    invoke-super {p0, p1}, Landroid/widget/TextClock;->setBackgroundResource(I)V

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextClock;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lapr;->b(I)V

    :cond_0
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 1

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextClock;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextClock;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lapr;->b(IIII)V

    :cond_0
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 1

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextClock;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextClock;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lapr;->a(IIII)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Landroid/widget/TextClock;->setEnabled(Z)V

    .line 91
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 93
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTextClock;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 95
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTextClock;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFocusable(I)V
    .locals 0

    .line 175
    invoke-super {p0, p1}, Landroid/widget/TextClock;->setFocusable(I)V

    .line 176
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTextClock;->checkMovementMothod()V

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Landroid/widget/TextClock;->setSelected(Z)V

    .line 79
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XTextClock;->setVuiSelected(Landroid/view/View;Z)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 111
    invoke-super {p0, p1}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 112
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextClock;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextClock;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextClock;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lapr;->a(I)V

    :cond_0
    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextClock;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lapr;->b(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 73
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XTextClock;->setVuiVisibility(Landroid/view/View;I)V

    return-void
.end method
