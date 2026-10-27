.class Lcom/xiaopeng/xui/view/XViewDelegateImpl;
.super Lcom/xiaopeng/xui/view/XViewDelegate;
.source "XViewDelegateImpl.java"


# instance fields
.field private mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

.field private mView:Landroid/view/View;

.field private mXFontChangeMonitor:Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;

.field private final mXPressedScaleHelper:Lcom/xiaopeng/xui/utils/XPressedScaleHelper;

.field private mXViewFontScale:Lcom/xiaopeng/xui/view/delegate/XViewFontScale;

.field private mXViewLocale:Lcom/xiaopeng/xui/view/delegate/XViewLocale;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/util/AttributeSet;IILjava/lang/Object;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "extras"    # Ljava/lang/Object;

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

    invoke-static {v0, p2, p3, p4, p5}, Lcom/xiaopeng/libtheme/ThemeViewModel;->create(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/Object;)Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    .line 50
    :cond_1
    new-instance v0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;

    iget-object v1, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXPressedScaleHelper:Lcom/xiaopeng/xui/utils/XPressedScaleHelper;

    .line 52
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isRightRudder()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    invoke-static {p1, p2, p3, p4}, Lcom/xiaopeng/xui/view/delegate/XViewMirrorLayout;->check(Landroid/view/View;Landroid/util/AttributeSet;II)V

    .line 56
    :cond_2
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isLocaleDynamicChangeEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 57
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, p2, p3, p4}, Lcom/xiaopeng/xui/view/delegate/XViewHelperFactory;->createLocale(Landroid/widget/TextView;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/delegate/XViewLocale;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXViewLocale:Lcom/xiaopeng/xui/view/delegate/XViewLocale;

    .line 60
    :cond_3
    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    .line 130
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/xiaopeng/xui/widget/XCheckBox;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/xiaopeng/xui/widget/XRadioButton;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/xiaopeng/xui/widget/XButton;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/xiaopeng/xui/widget/XJumpButton;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/xiaopeng/xui/widget/XStatefulView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;

    if-eqz v0, :cond_2

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXPressedScaleHelper:Lcom/xiaopeng/xui/utils/XPressedScaleHelper;

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXPressedScaleHelper:Lcom/xiaopeng/xui/utils/XPressedScaleHelper;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->update()V

    .line 143
    :cond_2
    return-void
.end method

.method public getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

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
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXViewFontScale:Lcom/xiaopeng/xui/view/delegate/XViewFontScale;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/delegate/XViewFontScale;->onAttachedToWindow()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    iget-object v1, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->onAttachedToWindow(Landroid/view/View;)V

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXFontChangeMonitor:Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXFontChangeMonitor:Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;->onAttachedToWindow()V

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXViewLocale:Lcom/xiaopeng/xui/view/delegate/XViewLocale;

    if-eqz v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXViewLocale:Lcom/xiaopeng/xui/view/delegate/XViewLocale;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->onAttachedToWindow()V

    .line 92
    :cond_3
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXViewFontScale:Lcom/xiaopeng/xui/view/delegate/XViewFontScale;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXViewFontScale:Lcom/xiaopeng/xui/view/delegate/XViewFontScale;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/delegate/XViewFontScale;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    iget-object v1, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->onConfigurationChanged(Landroid/view/View;Landroid/content/res/Configuration;)V

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXFontChangeMonitor:Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXFontChangeMonitor:Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXViewLocale:Lcom/xiaopeng/xui/view/delegate/XViewLocale;

    if-eqz v0, :cond_3

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXViewLocale:Lcom/xiaopeng/xui/view/delegate/XViewLocale;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 76
    :cond_3
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    iget-object v1, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->onDetachedFromWindow(Landroid/view/View;)V

    .line 99
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    iget-object v1, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->onWindowFocusChanged(Landroid/view/View;Z)V

    .line 106
    :cond_0
    return-void
.end method

.method public setFontScaleChangeCallback(Lcom/xiaopeng/xui/view/XViewDelegate$onFontScaleChangeCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/xiaopeng/xui/view/XViewDelegate$onFontScaleChangeCallback;

    .line 110
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

    .line 116
    return-void
.end method
