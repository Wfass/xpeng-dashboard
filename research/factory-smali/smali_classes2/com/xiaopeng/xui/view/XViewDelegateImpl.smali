.class Lcom/xiaopeng/xui/view/XViewDelegateImpl;
.super Lcom/xiaopeng/xui/view/XViewDelegate;
.source "XViewDelegateImpl.java"


# instance fields
.field private mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

.field private mView:Landroid/view/View;

.field private mXFontChangeMonitor:Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;

.field private mXViewDelegateParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xui/view/delegate/XViewDelegatePart;",
            ">;"
        }
    .end annotation
.end field


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

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/xui/view/XViewDelegate;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXViewDelegateParts:Ljava/util/ArrayList;

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mView:Landroid/view/View;

    .line 29
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isFontScaleDynamicChangeEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 31
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, p2, p3, p4}, Lcom/xiaopeng/xui/view/delegate/XViewDelegatePart;->createFont(Landroid/widget/TextView;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/delegate/XViewDelegatePart;

    move-result-object v0

    .line 32
    .local v0, "font":Lcom/xiaopeng/xui/view/delegate/XViewDelegatePart;
    if-eqz v0, :cond_0

    .line 33
    iget-object v1, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXViewDelegateParts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .end local v0    # "font":Lcom/xiaopeng/xui/view/delegate/XViewDelegatePart;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p3, p4, p5}, Lcom/xiaopeng/libtheme/ThemeViewModel;->create(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/Object;)Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    .line 40
    :cond_1
    return-void
.end method


# virtual methods
.method public getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXViewDelegateParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/view/delegate/XViewDelegatePart;

    .line 58
    .local v1, "delegate":Lcom/xiaopeng/xui/view/delegate/XViewDelegatePart;
    invoke-virtual {v1}, Lcom/xiaopeng/xui/view/delegate/XViewDelegatePart;->onAttachedToWindow()V

    .line 59
    .end local v1    # "delegate":Lcom/xiaopeng/xui/view/delegate/XViewDelegatePart;
    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    iget-object v1, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->onAttachedToWindow(Landroid/view/View;)V

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXFontChangeMonitor:Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXFontChangeMonitor:Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;->onAttachedToWindow()V

    .line 66
    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXViewDelegateParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/view/delegate/XViewDelegatePart;

    .line 45
    .local v1, "delegate":Lcom/xiaopeng/xui/view/delegate/XViewDelegatePart;
    invoke-virtual {v1, p1}, Lcom/xiaopeng/xui/view/delegate/XViewDelegatePart;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 46
    .end local v1    # "delegate":Lcom/xiaopeng/xui/view/delegate/XViewDelegatePart;
    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    iget-object v1, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->onConfigurationChanged(Landroid/view/View;Landroid/content/res/Configuration;)V

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXFontChangeMonitor:Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXFontChangeMonitor:Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 53
    :cond_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXViewDelegateParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/view/delegate/XViewDelegatePart;

    .line 71
    .local v1, "delegate":Lcom/xiaopeng/xui/view/delegate/XViewDelegatePart;
    invoke-virtual {v1}, Lcom/xiaopeng/xui/view/delegate/XViewDelegatePart;->onDetachedFromWindow()V

    .line 72
    .end local v1    # "delegate":Lcom/xiaopeng/xui/view/delegate/XViewDelegatePart;
    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    iget-object v1, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->onDetachedFromWindow(Landroid/view/View;)V

    .line 76
    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    iget-object v1, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->onWindowFocusChanged(Landroid/view/View;Z)V

    .line 83
    :cond_0
    return-void
.end method

.method public setFontScaleChangeCallback(Lcom/xiaopeng/xui/view/XViewDelegate$onFontScaleChangeCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/xiaopeng/xui/view/XViewDelegate$onFontScaleChangeCallback;

    .line 87
    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXFontChangeMonitor:Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;

    iget-object v1, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXFontChangeMonitor:Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XViewDelegateImpl;->mXFontChangeMonitor:Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;->setOnFontScaleChangeCallback(Lcom/xiaopeng/xui/view/XViewDelegate$onFontScaleChangeCallback;)V

    .line 93
    return-void
.end method
