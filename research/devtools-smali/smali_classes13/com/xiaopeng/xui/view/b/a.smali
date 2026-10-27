.class public Lcom/xiaopeng/xui/view/b/a;
.super Ljava/lang/Object;
.source "XFontChangeMonitor.java"


# instance fields
.field private abw:Lcom/xiaopeng/xui/view/a$a;

.field private mContext:Landroid/content/Context;

.field private mFontScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/xui/view/b/a;->mContext:Landroid/content/Context;

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput p1, p0, Lcom/xiaopeng/xui/view/b/a;->mFontScale:F

    .line 21
    return-void
.end method

.method private b(Landroid/content/res/Configuration;)V
    .locals 2

    .line 32
    iget v0, p0, Lcom/xiaopeng/xui/view/b/a;->mFontScale:F

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 33
    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput p1, p0, Lcom/xiaopeng/xui/view/b/a;->mFontScale:F

    .line 34
    iget-object p1, p0, Lcom/xiaopeng/xui/view/b/a;->abw:Lcom/xiaopeng/xui/view/a$a;

    if-eqz p1, :cond_0

    .line 35
    iget-object p1, p0, Lcom/xiaopeng/xui/view/b/a;->abw:Lcom/xiaopeng/xui/view/a$a;

    invoke-interface {p1}, Lcom/xiaopeng/xui/view/a$a;->onFontScaleChanged()V

    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method public b(Lcom/xiaopeng/xui/view/a$a;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/xui/view/b/a;->abw:Lcom/xiaopeng/xui/view/a$a;

    .line 25
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xui/view/b/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/view/b/a;->b(Landroid/content/res/Configuration;)V

    .line 42
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/view/b/a;->b(Landroid/content/res/Configuration;)V

    .line 29
    return-void
.end method
