.class public Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;
.super Lcom/xiaopeng/xui/widget/XFrameLayout;
.source "PlayAllLogoLayout.java"


# static fields
.field public static final STATE_LOADING:I = 0x1

.field public static final STATE_NORMAL:I


# instance fields
.field private mLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field protected mLoadingWidget:Lcom/airbnb/lottie/LottieAnimationView;

.field private mState:I

.field protected mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 38
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->mState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 38
    iput p2, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->mState:I

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->getLayoutId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 48
    sget p1, Lcom/xiaopeng/musicradio/common/k$e;->layout:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->mLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 49
    sget p1, Lcom/xiaopeng/musicradio/common/k$e;->text:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->mText:Landroid/widget/TextView;

    .line 50
    sget p1, Lcom/xiaopeng/musicradio/common/k$e;->lottie_loading:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->mLoadingWidget:Lcom/airbnb/lottie/LottieAnimationView;

    .line 51
    new-instance p1, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    invoke-direct {p1}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;-><init>()V

    .line 52
    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->setType(I)V

    .line 53
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->mLoadingWidget:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 55
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->mText:Landroid/widget/TextView;

    sget v0, Lcom/xiaopeng/musicradio/common/k$d;->play_all_logo_selector_32:I

    invoke-virtual {p1, v0, p2, p2, p2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 56
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->mText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 59
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "canVoiceControl"

    .line 60
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 61
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->mLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 63
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PlayAllLogoLayout"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->mLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    sget-object p2, Lbyb;->LEVEL2:Lbyb;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiPriority(Lbyb;)V

    return-void
.end method


# virtual methods
.method public getLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->mLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .line 69
    sget v0, Lcom/xiaopeng/musicradio/common/k$f;->layout_playall:I

    return v0
.end method

.method public getText()Landroid/widget/TextView;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->mText:Landroid/widget/TextView;

    return-object v0
.end method

.method public initVuiProps()V
    .locals 3

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->mLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const-string v1, "hasFeedback"

    const/4 v2, 0x1

    .line 135
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 136
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->mLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 153
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 154
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$b;->x_theme_text_02:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 144
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onDetachedFromWindow()V

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->mLoadingWidget:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->mLoadingWidget:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->mLoadingWidget:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllAnimatorListeners()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setEnabled(Z)V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->mLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setEnabled(Z)V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .line 94
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setSelected(Z)V

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->mLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setSelected(Z)V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public setState(I)V
    .locals 2

    .line 100
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->mState:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 102
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->setClickable(Z)V

    .line 103
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->mText:Landroid/widget/TextView;

    sget v1, Lcom/xiaopeng/musicradio/common/k$d;->play_all_logo_selector_32:I

    invoke-virtual {p1, v1, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 104
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->mLoadingWidget:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 105
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->mLoadingWidget:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto :goto_0

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->mText:Landroid/widget/TextView;

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->loading:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 108
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->mText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 109
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->setClickable(Z)V

    .line 110
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->mLoadingWidget:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 111
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->mLoadingWidget:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :goto_0
    return-void
.end method

.method public setText(I)V
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setVuiState(Ljava/lang/String;[Ljava/lang/String;IZ)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->mLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/4 v1, 0x0

    invoke-static {v0, p3, p2, v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p2

    iget-object p3, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->mLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p2, p1, p3}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->mLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiLabel(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
