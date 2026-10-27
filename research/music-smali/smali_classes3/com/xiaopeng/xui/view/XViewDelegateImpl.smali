.class Lcom/xiaopeng/xui/view/XViewDelegateImpl;
.super Lcom/xiaopeng/xui/view/XViewDelegate;
.source "XViewDelegateImpl.java"


# instance fields
.field private mThemeViewModel:Lapr;

.field private mView:Landroid/view/View;

.field private mXFontChangeMonitor:Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;

.field private final mXPressedScaleHelper:Lcom/xiaopeng/xui/utils/XPressedScaleHelper;

.field private mXViewFontScale:Lcom/xiaopeng/xui/view/delegate/XViewFontScale;

.field private mXViewLocale:Lcom/xiaopeng/xui/view/delegate/XViewLocale;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/util/AttributeSet;IILjava/lang/Object;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/xiaopeng/xui/view/XViewDelegate;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mView:Landroid/view/View;

    .line 43
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isFontScaleDynamicChangeEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 44
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, p2, p3, p4}, Lcom/xiaopeng/xui/view/delegate/XViewHelperFactory;->createFont(Landroid/widget/TextView;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/delegate/XViewFontScale;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXViewFontScale:Lcom/xiaopeng/xui/view/delegate/XViewFontScale;

    .line 47
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p3, p4, p5}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/Object;)Lapr;

    move-result-object p5

    iput-object p5, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mThemeViewModel:Lapr;

    .line 50
    :cond_1
    new-instance p5, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;

    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mView:Landroid/view/View;

    invoke-direct {p5, v0}, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;-><init>(Landroid/view/View;)V

    iput-object p5, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXPressedScaleHelper:Lcom/xiaopeng/xui/utils/XPressedScaleHelper;

    .line 52
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isRightRudder()Z

    move-result p5

    if-eqz p5, :cond_2

    .line 53
    invoke-static {p1, p2, p3, p4}, Lcom/xiaopeng/xui/view/delegate/XViewMirrorLayout;->check(Landroid/view/View;Landroid/util/AttributeSet;II)V

    .line 56
    :cond_2
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isLocaleDynamicChangeEnable()Z

    move-result p5

    if-eqz p5, :cond_3

    instance-of p5, p1, Landroid/widget/TextView;

    if-eqz p5, :cond_3

    .line 57
    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, p2, p3, p4}, Lcom/xiaopeng/xui/view/delegate/XViewHelperFactory;->createLocale(Landroid/widget/TextView;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/delegate/XViewLocale;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXViewLocale:Lcom/xiaopeng/xui/view/delegate/XViewLocale;

    :cond_3
    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 2

    .line 130
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mView:Landroid/view/View;

    instance-of v1, v0, Lcom/xiaopeng/xui/widget/XCheckBox;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/xiaopeng/xui/widget/XRadioButton;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/xiaopeng/xui/widget/XButton;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/xiaopeng/xui/widget/XJumpButton;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/xiaopeng/xui/widget/XStatefulView;

    if-nez v1, :cond_1

    instance-of v0, v0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;

    if-eqz v0, :cond_2

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXPressedScaleHelper:Lcom/xiaopeng/xui/utils/XPressedScaleHelper;

    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {v0}, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->update()V

    :cond_2
    return-void
.end method

.method public getThemeViewModel()Lapr;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mThemeViewModel:Lapr;

    return-object v0
.end method

.method public getXViewLocale()Lcom/xiaopeng/xui/view/delegate/XViewLocale;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXViewLocale:Lcom/xiaopeng/xui/view/delegate/XViewLocale;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXViewFontScale:Lcom/xiaopeng/xui/view/delegate/XViewFontScale;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/delegate/XViewFontScale;->onAttachedToWindow()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mThemeViewModel:Lapr;

    if-eqz v0, :cond_1

    .line 84
    iget-object v1, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lapr;->a(Landroid/view/View;)V

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXFontChangeMonitor:Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;

    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;->onAttachedToWindow()V

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXViewLocale:Lcom/xiaopeng/xui/view/delegate/XViewLocale;

    if-eqz v0, :cond_3

    .line 90
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->onAttachedToWindow()V

    :cond_3
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXViewFontScale:Lcom/xiaopeng/xui/view/delegate/XViewFontScale;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/delegate/XViewFontScale;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mThemeViewModel:Lapr;

    if-eqz v0, :cond_1

    .line 68
    iget-object v1, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lapr;->a(Landroid/view/View;Landroid/content/res/Configuration;)V

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXFontChangeMonitor:Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;

    if-eqz v0, :cond_2

    .line 71
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXViewLocale:Lcom/xiaopeng/xui/view/delegate/XViewLocale;

    if-eqz v0, :cond_3

    .line 74
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_3
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mThemeViewModel:Lapr;

    if-eqz v0, :cond_0

    .line 97
    iget-object v1, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lapr;->b(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mThemeViewModel:Lapr;

    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lapr;->a(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public setFontScaleChangeCallback(Lcom/xiaopeng/xui/view/XViewDelegate$onFontScaleChangeCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXFontChangeMonitor:Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;

    iget-object v1, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXFontChangeMonitor:Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXFontChangeMonitor:Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;->setOnFontScaleChangeCallback(Lcom/xiaopeng/xui/view/XViewDelegate$onFontScaleChangeCallback;)V

    return-void
.end method
