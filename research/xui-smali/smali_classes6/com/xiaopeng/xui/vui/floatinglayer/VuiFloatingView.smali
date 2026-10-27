.class public Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;
.super Landroid/widget/FrameLayout;
.source "VuiFloatingView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

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
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "type"    # I

    .line 93
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x1

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
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$layout;->vui_floating:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 97
    .local v0, "rootView":Landroid/view/View;
    sget v1, Lcom/xiaopeng/xpui/R$id;->floating_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mFloatingView:Landroid/widget/ImageView;

    .line 98
    invoke-static {p2}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->isSupportAlpha(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    .line 100
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 102
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mCallback:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$Callback;

    return-object v0
.end method

.method private checkAnimatorDrawable()V
    .locals 5

    .line 105
    iget v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mType:I

    invoke-static {v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->isSupportNight(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/libtheme/ThemeManager;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    .line 107
    .local v0, "isNight":Z
    iget-boolean v2, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mIsNight:Z

    if-ne v2, v0, :cond_0

    iget-boolean v2, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mNeedReLoadDrawable:Z

    if-eqz v2, :cond_1

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mType:I

    invoke-static {v2, v3, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->decoderImage(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->refreshAnimatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    const-string v2, "VuiFloatingView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAnimatorDrawable isNight "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " ,mNeedReLoadDrawable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mNeedReLoadDrawable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mIsNight:Z

    .line 111
    iput-boolean v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mNeedReLoadDrawable:Z

    .line 113
    .end local v0    # "isNight":Z
    :cond_1
    goto :goto_0

    .line 114
    :cond_2
    iget-boolean v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mNeedReLoadDrawable:Z

    if-eqz v0, :cond_3

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mType:I

    invoke-static {v0, v2}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->decoderImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->refreshAnimatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    const-string v0, "VuiFloatingView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAnimatorDrawable mNeedReLoadDrawable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mNeedReLoadDrawable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iput-boolean v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mNeedReLoadDrawable:Z

    .line 120
    :cond_3
    :goto_0
    return-void
.end method

.method private refreshAnimatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 124
    if-nez p1, :cond_0

    .line 125
    const-string v0, "VuiFloatingView"

    const-string v1, "refreshAnimatorDrawable drawable is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mFloatingView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 130
    instance-of v0, p1, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v0, :cond_1

    .line 131
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mAnimatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mAnimatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->setRepeatCount(I)V

    goto :goto_0

    .line 133
    :cond_1
    instance-of v0, p1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    if-eqz v0, :cond_2

    .line 134
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mVuiDrawable:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    goto :goto_0

    .line 136
    :cond_2
    const-string v0, "VuiFloatingView"

    const-string v1, "refreshAnimatorDrawable drawable is not AnimatedImageDrawable"

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
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
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mAnimatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mCallbackPoxy:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mVuiDrawable:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mVuiDrawable:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mCallbackPoxy:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    .line 241
    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mOnTouchListener:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$OnTouchListener;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mOnTouchListener:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$OnTouchListener;

    iget v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mType:I

    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$OnTouchListener;->onTouch(I)V

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mAnimatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->requestNeedReLoadDrawable()V

    .line 184
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getVisibleHeight()I
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 217
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
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    .line 224
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 245
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 246
    const-string v0, "VuiFloatingView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAttachedToWindow type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 251
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 252
    const-string v0, "VuiFloatingView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetachedFromWindow type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public prepare()V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->checkAnimatorDrawable()V

    .line 142
    return-void
.end method

.method public registerAnimationCallback(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$Callback;

    .line 149
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mCallback:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$Callback;

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mAnimatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mAnimatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mCallbackPoxy:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mAnimatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mCallbackPoxy:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mVuiDrawable:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mVuiDrawable:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mCallbackPoxy:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 157
    :cond_1
    return-void
.end method

.method public requestNeedReLoadDrawable()V
    .locals 1

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mNeedReLoadDrawable:Z

    .line 146
    return-void
.end method

.method public setLocation(II)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 62
    invoke-static {}, Lcom/xiaopeng/xui/utils/XuiUtils;->getDisplayWidth()I

    move-result v0

    .line 63
    .local v0, "sw":I
    invoke-static {}, Lcom/xiaopeng/xui/utils/XuiUtils;->getDisplayHeight()I

    move-result v1

    .line 64
    .local v1, "sh":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->getVisibleWidth()I

    move-result v2

    .line 65
    .local v2, "w":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->getVisibleHeight()I

    move-result v3

    .line 67
    .local v3, "h":I
    const/4 v4, 0x0

    if-gez p1, :cond_0

    .line 68
    move v5, p1

    .local v5, "paddingLeft":I
    :goto_0
    goto :goto_1

    .line 69
    .end local v5    # "paddingLeft":I
    :cond_0
    add-int v5, p1, v2

    if-le v5, v0, :cond_1

    .line 70
    add-int v5, p1, v2

    sub-int/2addr v5, v0

    goto :goto_0

    .line 72
    :cond_1
    move v5, v4

    .line 74
    .restart local v5    # "paddingLeft":I
    :goto_1
    if-gez p2, :cond_2

    .line 75
    move v4, p2

    .local v4, "paddingTop":I
    :goto_2
    goto :goto_3

    .line 76
    .end local v4    # "paddingTop":I
    :cond_2
    add-int v6, p2, v3

    if-le v6, v1, :cond_3

    .line 77
    add-int v4, p2, v3

    sub-int/2addr v4, v1

    goto :goto_2

    .line 79
    :cond_3
    nop

    .line 81
    .restart local v4    # "paddingTop":I
    :goto_3
    iget-object v6, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mFloatingView:Landroid/widget/ImageView;

    int-to-float v7, v5

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setX(F)V

    .line 82
    iget-object v6, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mFloatingView:Landroid/widget/ImageView;

    int-to-float v7, v4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setY(F)V

    .line 83
    const-string v6, "VuiFloatingView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setLocation x "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " , y "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public setOnTouchListener(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$OnTouchListener;)V
    .locals 0
    .param p1, "onTouchListener"    # Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$OnTouchListener;

    .line 170
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mOnTouchListener:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$OnTouchListener;

    .line 171
    return-void
.end method

.method public start()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mAnimatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mAnimatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

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
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mFloatingView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mVuiDrawable:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mVuiDrawable:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->start()V

    .line 199
    :cond_2
    return-void
.end method

.method public stop()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mAnimatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mAnimatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

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
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mVuiDrawable:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mVuiDrawable:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->stop()V

    .line 211
    :cond_2
    return-void
.end method

.method public unRegisterAnimationCallback()V
    .locals 2

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mCallback:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$Callback;

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mAnimatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mAnimatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mCallbackPoxy:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mVuiDrawable:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mVuiDrawable:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mCallbackPoxy:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    .line 167
    :cond_1
    return-void
.end method
