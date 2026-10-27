.class public Lcom/xiaopeng/musicradio/widget/PlayAllLogoNoCoverLayout;
.super Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;
.source "PlayAllLogoNoCoverLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance p1, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    invoke-direct {p1}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;-><init>()V

    const/4 p2, 0x0

    .line 29
    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->setType(I)V

    .line 30
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/PlayAllLogoNoCoverLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$b;->x_theme_text_01:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 31
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoNoCoverLayout;->mLoadingWidget:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .line 36
    sget v0, Lcom/xiaopeng/musicradio/common/k$f;->layout_playall_no_cover:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 41
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 43
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoNoCoverLayout;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/PlayAllLogoNoCoverLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$b;->x_theme_text_01:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 44
    new-instance p1, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    invoke-direct {p1}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;-><init>()V

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->setType(I)V

    .line 46
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/PlayAllLogoNoCoverLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/common/k$b;->x_theme_text_01:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoNoCoverLayout;->mLoadingWidget:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
