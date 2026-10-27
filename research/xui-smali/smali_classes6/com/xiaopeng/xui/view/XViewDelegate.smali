.class public abstract Lcom/xiaopeng/xui/view/XViewDelegate;
.super Ljava/lang/Object;
.source "XViewDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/view/XViewDelegate$onFontScaleChangeCallback;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static create(Landroid/view/View;Landroid/util/AttributeSet;)Lcom/xiaopeng/xui/view/XViewDelegate;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 23
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/view/View;Landroid/util/AttributeSet;I)Lcom/xiaopeng/xui/view/XViewDelegate;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .line 27
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/XViewDelegate;
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 31
    new-instance v6, Lcom/xiaopeng/xui/view/XViewDelegateImpl;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xui/view/XViewDelegateImpl;-><init>(Landroid/view/View;Landroid/util/AttributeSet;IILjava/lang/Object;)V

    return-object v6
.end method

.method public static create(Landroid/view/View;Landroid/util/AttributeSet;IILjava/lang/Object;)Lcom/xiaopeng/xui/view/XViewDelegate;
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I
    .param p4, "extras"    # Ljava/lang/Object;

    .line 36
    new-instance v6, Lcom/xiaopeng/xui/view/XViewDelegateImpl;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xui/view/XViewDelegateImpl;-><init>(Landroid/view/View;Landroid/util/AttributeSet;IILjava/lang/Object;)V

    return-object v6
.end method


# virtual methods
.method public abstract drawableStateChanged()V
.end method

.method public abstract getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;
.end method

.method public abstract getXViewLocale()Lcom/xiaopeng/xui/view/delegate/XViewLocale;
.end method

.method public abstract onAttachedToWindow()V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onDetachedFromWindow()V
.end method

.method public abstract onWindowFocusChanged(Z)V
.end method

.method public abstract setFontScaleChangeCallback(Lcom/xiaopeng/xui/view/XViewDelegate$onFontScaleChangeCallback;)V
.end method
