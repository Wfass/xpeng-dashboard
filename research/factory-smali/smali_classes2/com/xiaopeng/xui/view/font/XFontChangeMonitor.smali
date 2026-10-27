.class public Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;
.super Ljava/lang/Object;
.source "XFontChangeMonitor.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFontScale:F

.field private mOnFontChangeCallback:Lcom/xiaopeng/xui/view/XViewDelegate$onFontScaleChangeCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;->mContext:Landroid/content/Context;

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;->mFontScale:F

    .line 21
    return-void
.end method

.method private checkFont(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 32
    iget v0, p0, Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;->mFontScale:F

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 33
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;->mFontScale:F

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;->mOnFontChangeCallback:Lcom/xiaopeng/xui/view/XViewDelegate$onFontScaleChangeCallback;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;->mOnFontChangeCallback:Lcom/xiaopeng/xui/view/XViewDelegate$onFontScaleChangeCallback;

    invoke-interface {v0}, Lcom/xiaopeng/xui/view/XViewDelegate$onFontScaleChangeCallback;->onFontScaleChanged()V

    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;->checkFont(Landroid/content/res/Configuration;)V

    .line 42
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 28
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;->checkFont(Landroid/content/res/Configuration;)V

    .line 29
    return-void
.end method

.method public setOnFontScaleChangeCallback(Lcom/xiaopeng/xui/view/XViewDelegate$onFontScaleChangeCallback;)V
    .locals 0
    .param p1, "onFontChangeCallback"    # Lcom/xiaopeng/xui/view/XViewDelegate$onFontScaleChangeCallback;

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/xui/view/font/XFontChangeMonitor;->mOnFontChangeCallback:Lcom/xiaopeng/xui/view/XViewDelegate$onFontScaleChangeCallback;

    .line 25
    return-void
.end method
