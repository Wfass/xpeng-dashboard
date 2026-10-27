.class public Lcom/xiaopeng/libtheme/TextView;
.super Landroid/widget/TextView;
.source "TextView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XTextView"


# instance fields
.field private mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/libtheme/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/libtheme/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/libtheme/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    invoke-static {p1, p2, p3, p4}, Lcom/xiaopeng/libtheme/ThemeViewModel;->create(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/libtheme/TextView;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    .line 30
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 39
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/libtheme/TextView;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/libtheme/ThemeViewModel;->onAttachedToWindow(Landroid/view/View;)V

    .line 41
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 34
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/libtheme/TextView;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->onConfigurationChanged(Landroid/view/View;Landroid/content/res/Configuration;)V

    .line 36
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 44
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/libtheme/TextView;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/libtheme/ThemeViewModel;->onDetachedFromWindow(Landroid/view/View;)V

    .line 46
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .line 53
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowFocusChanged(Z)V

    .line 54
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 49
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowVisibilityChanged(I)V

    .line 50
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resid"    # I

    .line 57
    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/libtheme/TextView;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setBackgroundResource(I)V

    .line 59
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 62
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    return-void
.end method
