.class public Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;
.super Landroid/widget/FrameLayout;
.source "VuiFloatingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$OnTouchListener;,
        Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VuiFloatingView"


# instance fields
.field private mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

.field private mAnimatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

.field private mCallback:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$Callback;

.field private mCallbackPoxy:Landroid/graphics/drawable/Animatable2$AnimationCallback;

.field private mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mFloatingView:Landroid/widget/ImageView;

.field private mIsNight:Z

.field private mNeedReLoadDrawable:Z

.field private mOnTouchListener:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$OnTouchListener;

.field private mType:I

.field private mVuiDrawable:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 93
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mNeedReLoadDrawable:Z

    .line 42
    new-instance v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$1;-><init>(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mCallbackPoxy:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 94
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mContext:Landroid/content/Context;

    .line 95
    iput p2, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mType:I

    .line 96
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/xiaopeng/xpui/R$layout;->vui_floating:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 97
    sget v0, Lcom/xiaopeng/xpui/R$id;->floating_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mFloatingView:Landroid/widget/ImageView;

    .line 98
    invoke-static {p2}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->isSupportAlpha(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 99
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 p2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v0, 0x258

    .line 100
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$Callback;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mCallback:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$Callback;

    return-object p0
.end method

.method private checkAnimatorDrawable()V
    .locals 5

    .line 105
    iget v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mType:I

    invoke-static {v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->isSupportNight(I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "VuiFloatingView"

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/libtheme/ThemeManager;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    .line 107
    iget-boolean v3, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mIsNight:Z

    if-ne v3, v0, :cond_0

    iget-boolean v3, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mNeedReLoadDrawable:Z

    if-eqz v3, :cond_2

    .line 108
    :cond_0
    iget-object v3, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mType:I

    invoke-static {v3, v4, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->decoderImage(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->refreshAnimatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAnimatorDrawable isNight "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,mNeedReLoadDrawable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mNeedReLoadDrawable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mIsNight:Z

    .line 111
    iput-boolean v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mNeedReLoadDrawable:Z

    goto :goto_0

    .line 114
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mNeedReLoadDrawable:Z

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mType:I

    invoke-static {v0, v3}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->decoderImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->refreshAnimatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAnimatorDrawable mNeedReLoadDrawable "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mNeedReLoadDrawable:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iput-boolean v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mNeedReLoadDrawable:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private refreshAnimatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const-string v0, "VuiFloatingView"

    if-nez p1, :cond_0

    const-string p1, "refreshAnimatorDrawable drawable is null"

    .line 125
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mFloatingView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 130
    instance-of v1, p1, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v1, :cond_1

    .line 131
    check-cast p1, Landroid/graphics/drawable/AnimatedImageDrawable;

    iput-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mAnimatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    const/4 v0, 0x0

    .line 132
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->setRepeatCount(I)V

    goto :goto_0

    .line 133
    :cond_1
    instance-of v1, p1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    if-eqz v1, :cond_2

    .line 134
    check-cast p1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    iput-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mVuiDrawable:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    goto :goto_0

    :cond_2
    const-string p1, "refreshAnimatorDrawable drawable is not AnimatedImageDrawable"

    .line 136
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mAnimatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v0, :cond_0

    .line 236
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mCallbackPoxy:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mVuiDrawable:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    if-eqz v0, :cond_1

    .line 239
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mCallbackPoxy:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mOnTouchListener:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$OnTouchListener;

    if-eqz p1, :cond_1

    .line 178
    iget v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mType:I

    invoke-interface {p1, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$OnTouchListener;->onTouch(I)V

    .line 179
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mAnimatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz p1, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->requestNeedReLoadDrawable()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public getVisibleHeight()I
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVisibleWidth()I
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 245
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttachedToWindow type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiFloatingView"

    invoke-static {v1, v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 251
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDetachedFromWindow type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiFloatingView"

    invoke-static {v1, v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public prepare()V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->checkAnimatorDrawable()V

    return-void
.end method

.method public registerAnimationCallback(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$Callback;)V
    .locals 1

    .line 149
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mCallback:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$Callback;

    .line 150
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mAnimatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz p1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mCallbackPoxy:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    .line 152
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mAnimatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mCallbackPoxy:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mVuiDrawable:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    if-eqz p1, :cond_1

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mCallbackPoxy:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    :cond_1
    return-void
.end method

.method public requestNeedReLoadDrawable()V
    .locals 1

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mNeedReLoadDrawable:Z

    return-void
.end method

.method public setLocation(II)V
    .locals 5

    .line 62
    invoke-static {}, Lcom/xiaopeng/xui/utils/XuiUtils;->getDisplayWidth()I

    move-result v0

    .line 63
    invoke-static {}, Lcom/xiaopeng/xui/utils/XuiUtils;->getDisplayHeight()I

    move-result v1

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->getVisibleWidth()I

    move-result v2

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->getVisibleHeight()I

    move-result v3

    const/4 v4, 0x0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p1, v2

    if-le p1, v0, :cond_1

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_1
    move p1, v4

    :goto_0
    if-gez p2, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr p2, v3

    if-le p2, v1, :cond_3

    sub-int/2addr p2, v1

    goto :goto_1

    :cond_3
    move p2, v4

    .line 81
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mFloatingView:Landroid/widget/ImageView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mFloatingView:Landroid/widget/ImageView;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLocation x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " , y "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VuiFloatingView"

    invoke-static {p2, p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setOnTouchListener(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$OnTouchListener;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mOnTouchListener:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$OnTouchListener;

    return-void
.end method

.method public start()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mAnimatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mAnimatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->start()V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_1

    .line 193
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mFloatingView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mVuiDrawable:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    if-eqz v0, :cond_2

    .line 197
    invoke-virtual {v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->start()V

    :cond_2
    return-void
.end method

.method public stop()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mAnimatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mAnimatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->stop()V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mVuiDrawable:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    if-eqz v0, :cond_2

    .line 209
    invoke-virtual {v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->stop()V

    :cond_2
    return-void
.end method

.method public unRegisterAnimationCallback()V
    .locals 2

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mCallback:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$Callback;

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mAnimatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v0, :cond_0

    .line 162
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mCallbackPoxy:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mVuiDrawable:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    if-eqz v0, :cond_1

    .line 165
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mCallbackPoxy:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    :cond_1
    return-void
.end method
