.class public Lcom/xiaopeng/xui/widget/XTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "XTextView.java"

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

    .line 29
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 31
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xui/widget/XTextView;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 32
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/xiaopeng/xui/lang/LangPresenter;->addLongClickAction(Landroid/view/View;)V

    .line 35
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 38
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-static {p0, p2}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 40
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XTextView;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x1

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

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/xiaopeng/xui/lang/LangPresenter;->addLongClickAction(Landroid/view/View;)V

    .line 46
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-static {p0, p2, p3}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;I)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 51
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XTextView;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 52
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object v0

    invoke-interface {v0, p1, p0, p2}, Lcom/xiaopeng/xui/lang/LangPresenter;->setOriginEOLang(Landroid/content/Context;Landroid/widget/TextView;Landroid/util/AttributeSet;)V

    .line 54
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/xiaopeng/xui/lang/LangPresenter;->addLongClickAction(Landroid/view/View;)V

    .line 56
    :cond_0
    return-void
.end method

.method private checkMovementMothod()V
    .locals 4

    .line 166
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    if-eqz v0, :cond_4

    .line 167
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextView;->getVuiAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 168
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTextView;->xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    .line 169
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->CUSTOM:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiElementType(Lcom/xiaopeng/vui/commons/VuiElementType;)V

    .line 170
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiAction;->CLICK:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiAction(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "label":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    return-void

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextView;->xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->getStart()I

    move-result v1

    if-gez v1, :cond_1

    .line 176
    return-void

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextView;->xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->getEnd()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 179
    return-void

    .line 181
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextView;->xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->getEnd()I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTextView;->xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->getStart()I

    move-result v2

    sub-int/2addr v1, v2

    .line 182
    .local v1, "subLen":I
    if-gez v1, :cond_3

    .line 183
    return-void

    .line 185
    :cond_3
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTextView;->xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->getStart()I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTextView;->xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->getEnd()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiLabel(Ljava/lang/String;)V

    .line 189
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

    .line 102
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 103
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextView;->releaseVui()V

    .line 104
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
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 161
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/vui/VuiView;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 162
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTextView;->checkMovementMothod()V

    .line 163
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
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 77
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 65
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 69
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 81
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onDetachedFromWindow()V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 85
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 212
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 213
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/xiaopeng/xui/lang/LangPresenter;->handleCustomString(Landroid/view/View;)V

    .line 216
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 206
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 207
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTextView;->onVisibilityChangedThemeRefresh(I)V

    .line 208
    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Lcom/xiaopeng/vui/commons/model/VuiEvent;

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextView;->xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextView;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextView;->xLinkMovementMethod:Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->getXClickableSpan()Lcom/xiaopeng/xui/utils/XClickableSpan;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/utils/XClickableSpan;->onClick(Landroid/view/View;)V

    .line 156
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 121
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setBackgroundResource(I)V

    .line 125
    :cond_0
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 141
    :cond_0
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 149
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 108
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setEnabled(Z)V

    .line 109
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    if-eqz p1, :cond_0

    .line 111
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setAlpha(F)V

    goto :goto_0

    .line 113
    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setAlpha(F)V

    .line 116
    :cond_1
    :goto_0
    return-void
.end method

.method public setFocusable(I)V
    .locals 0
    .param p1, "focusable"    # I

    .line 193
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setFocusable(I)V

    .line 194
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTextView;->checkMovementMothod()V

    .line 195
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .line 96
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setSelected(Z)V

    .line 97
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiSelected(Landroid/view/View;Z)V

    .line 98
    return-void
.end method

.method public setTextColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 129
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setTextColor(I)V

    .line 133
    :cond_0
    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1
    .param p1, "refreshable"    # Z

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setThemeRefreshable(Landroid/view/View;Z)V

    .line 202
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 90
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 91
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiVisibility(Landroid/view/View;I)V

    .line 92
    return-void
.end method
