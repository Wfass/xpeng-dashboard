.class public Lcom/xiaopeng/xui/widget/XTextClock;
.super Landroid/widget/TextClock;
.source "XTextClock.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/VuiView;
.implements Lcom/xiaopeng/vui/commons/IVuiElementListener;
.implements Lcom/xiaopeng/xui/vui/XuiView;


# instance fields
.field protected mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

.field private xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XTextClock;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 28
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xui/widget/XTextClock;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-static {p0, p2}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTextClock;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 34
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XTextClock;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-static {p0, p2, p3}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;I)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTextClock;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 40
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XTextClock;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method private checkMovementMothod()V
    .locals 4

    .line 146
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextClock;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextClock;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    if-eqz v0, :cond_4

    .line 147
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextClock;->getVuiAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 148
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextClock;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTextClock;->xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    .line 149
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->CUSTOM:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTextClock;->setVuiElementType(Lcom/xiaopeng/vui/commons/VuiElementType;)V

    .line 150
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiAction;->CLICK:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTextClock;->setVuiAction(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextClock;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "label":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    return-void

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextClock;->xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->getStart()I

    move-result v1

    if-gez v1, :cond_1

    .line 156
    return-void

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextClock;->xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->getEnd()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 159
    return-void

    .line 161
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextClock;->xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->getEnd()I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTextClock;->xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->getStart()I

    move-result v2

    sub-int/2addr v1, v2

    .line 162
    .local v1, "subLen":I
    if-gez v1, :cond_3

    .line 163
    return-void

    .line 165
    :cond_3
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTextClock;->xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->getStart()I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTextClock;->xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->getEnd()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTextClock;->setVuiLabel(Ljava/lang/String;)V

    .line 169
    .end local v0    # "label":Ljava/lang/String;
    .end local v1    # "subLen":I
    :cond_4
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

    .line 82
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 83
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextClock;->releaseVui()V

    .line 84
    return-void
.end method

.method public initVui(Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 141
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/vui/VuiView;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 142
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTextClock;->checkMovementMothod()V

    .line 143
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
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextClock;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 57
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 45
    invoke-super {p0, p1}, Landroid/widget/TextClock;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextClock;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextClock;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 49
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 61
    invoke-super {p0}, Landroid/widget/TextClock;->onDetachedFromWindow()V

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextClock;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextClock;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 65
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 186
    invoke-super {p0, p1, p2}, Landroid/widget/TextClock;->onVisibilityChanged(Landroid/view/View;I)V

    .line 187
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTextClock;->onVisibilityChangedThemeRefresh(I)V

    .line 188
    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Lcom/xiaopeng/vui/commons/model/VuiEvent;

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextClock;->xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextClock;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextClock;->xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->getXClickableSpan()Lcom/xiaopeng/xui/utils/XClickableSpan;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/utils/XClickableSpan;->onClick(Landroid/view/View;)V

    .line 136
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 101
    invoke-super {p0, p1}, Landroid/widget/TextClock;->setBackgroundResource(I)V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextClock;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextClock;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setBackgroundResource(I)V

    .line 105
    :cond_0
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextClock;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextClock;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextClock;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 121
    :cond_0
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextClock;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextClock;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextClock;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 129
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 88
    invoke-super {p0, p1}, Landroid/widget/TextClock;->setEnabled(Z)V

    .line 89
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    if-eqz p1, :cond_0

    .line 91
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTextClock;->setAlpha(F)V

    goto :goto_0

    .line 93
    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTextClock;->setAlpha(F)V

    .line 96
    :cond_1
    :goto_0
    return-void
.end method

.method public setFocusable(I)V
    .locals 0
    .param p1, "focusable"    # I

    .line 173
    invoke-super {p0, p1}, Landroid/widget/TextClock;->setFocusable(I)V

    .line 174
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTextClock;->checkMovementMothod()V

    .line 175
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .line 76
    invoke-super {p0, p1}, Landroid/widget/TextClock;->setSelected(Z)V

    .line 77
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XTextClock;->setVuiSelected(Landroid/view/View;Z)V

    .line 78
    return-void
.end method

.method public setTextColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 109
    invoke-super {p0, p1}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextClock;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextClock;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextClock;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setTextColor(I)V

    .line 113
    :cond_0
    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1
    .param p1, "refreshable"    # Z

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextClock;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextClock;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setThemeRefreshable(Landroid/view/View;Z)V

    .line 182
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 70
    invoke-super {p0, p1}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 71
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XTextClock;->setVuiVisibility(Landroid/view/View;I)V

    .line 72
    return-void
.end method
