.class public Lcom/xiaopeng/xui/widget/XSwitch;
.super Lcom/xiaopeng/xui/oswidget/Switch;
.source "XSwitch.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/VuiView;
.implements Lcom/xiaopeng/xui/vui/XuiView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/XSwitch$OnInterceptListener;
    }
.end annotation


# static fields
.field private static final PLAY_TIME_INTERVAL_INCLICK:I = 0x5dc

.field private static final TAG:Ljava/lang/String; = "XSwitch"


# instance fields
.field private mCheckSoundEnable:Z

.field private mClickTime:J

.field private mFromUser:Z

.field private mOnInterceptListener:Lcom/xiaopeng/xui/widget/XSwitch$OnInterceptListener;

.field private final mThumbResId:I

.field private final mTrackResId:I

.field private mUseFromUserForSound:Z

.field protected mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 43
    const v0, 0x101043f

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/oswidget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCheckSoundEnable:Z

    .line 52
    invoke-static {p0, p2, p3, p4}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 53
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XSwitch;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XSwitch:[I

    invoke-virtual {v0, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XSwitch_android_thumb:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mThumbResId:I

    .line 56
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XSwitch_android_track:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mTrackResId:I

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    invoke-super {p0, v2}, Lcom/xiaopeng/xui/oswidget/Switch;->setSoundEffectsEnabled(Z)V

    .line 59
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xui/widget/-$$Lambda$XSwitch$K31Zd8beaMn3sWCwg8GAa685_DE;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xui/widget/-$$Lambda$XSwitch$K31Zd8beaMn3sWCwg8GAa685_DE;-><init>(Lcom/xiaopeng/xui/widget/XSwitch;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 60
    return-void
.end method

.method public static synthetic lambda$K31Zd8beaMn3sWCwg8GAa685_DE(Lcom/xiaopeng/xui/widget/XSwitch;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->refreshVisual()V

    return-void
.end method

.method private refreshVisual()V
    .locals 5

    .line 63
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getDrawableState()[I

    move-result-object v0

    .line 64
    .local v0, "states":[I
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mThumbResId:I

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mThumbResId:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 66
    .local v1, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    const-string v2, "XSwitch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshVisual 1: thumb:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 68
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    .end local v1    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 70
    :cond_0
    const-string v1, "XSwitch"

    const-string v2, "refreshVisual: thumb res not found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_0
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mTrackResId:I

    if-eqz v1, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mTrackResId:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 74
    .local v1, "trackDrawable":Landroid/graphics/drawable/Drawable;
    const-string v2, "XSwitch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshVisual 2: track:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 76
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    .end local v1    # "trackDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 78
    :cond_1
    const-string v1, "XSwitch"

    const-string v2, "refreshVisual: track res not found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_1
    return-void
.end method

.method private setCheckedAndUpdateVui(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 208
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isChecked()Z

    move-result v0

    .line 209
    .local v0, "currentChecked":Z
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/oswidget/Switch;->setChecked(Z)V

    .line 210
    if-eq v0, p1, :cond_0

    .line 211
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XSwitch;->updateVui(Landroid/view/View;)V

    .line 213
    :cond_0
    return-void
.end method

.method private setFromUser(Z)V
    .locals 0
    .param p1, "fromUser"    # Z

    .line 243
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mFromUser:Z

    .line 244
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 258
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 259
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->releaseVui()V

    .line 260
    return-void
.end method

.method public isFromUser()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mFromUser:Z

    return v0
.end method

.method public isUseFromUserForSound()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mUseFromUserForSound:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 92
    invoke-super {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->onAttachedToWindow()V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 96
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 84
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/oswidget/Switch;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 88
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 100
    invoke-super {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->onDetachedFromWindow()V

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 104
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 218
    .local v0, "action":I
    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    .line 219
    :cond_0
    const-string v3, "XSwitch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTouchEvent, set from user action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->setFromUser(Z)V

    .line 222
    :cond_1
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/oswidget/Switch;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 223
    .local v3, "ret":Z
    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_3

    .line 224
    :cond_2
    const-string v1, "XSwitch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEvent, reset from user action:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setFromUser(Z)V

    .line 227
    :cond_3
    return v3
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 291
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/oswidget/Switch;->onVisibilityChanged(Landroid/view/View;I)V

    .line 292
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XSwitch;->onVisibilityChangedThemeRefresh(I)V

    .line 293
    return-void
.end method

.method public performClick()Z
    .locals 2

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mClickTime:J

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mOnInterceptListener:Lcom/xiaopeng/xui/widget/XSwitch$OnInterceptListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mOnInterceptListener:Lcom/xiaopeng/xui/widget/XSwitch$OnInterceptListener;

    invoke-interface {v0, p0}, Lcom/xiaopeng/xui/widget/XSwitch$OnInterceptListener;->onInterceptClickEvent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    return v1

    .line 236
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->setFromUser(Z)V

    .line 237
    invoke-super {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->performClick()Z

    move-result v0

    .line 238
    .local v0, "handled":Z
    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setFromUser(Z)V

    .line 239
    return v0
.end method

.method public setCheckSoundEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 112
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCheckSoundEnable:Z

    .line 113
    return-void
.end method

.method public setChecked(Z)V
    .locals 6
    .param p1, "checked"    # Z

    .line 137
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isChecked()Z

    move-result v0

    if-ne p1, v0, :cond_2

    .line 138
    const-string v0, "XSwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checked == isChecked(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " pressed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isPressed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isFromUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isFromUser()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->animateThumbToCheckedState(Z)V

    goto :goto_1

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->cancelPositionAnimator()V

    .line 144
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->setThumbPosition(F)V

    .line 146
    :goto_1
    return-void

    .line 148
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 149
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 150
    instance-of v1, v0, Lcom/xiaopeng/xui/drawable/XDrawable;

    if-eqz v1, :cond_3

    .line 151
    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/xui/drawable/XDrawable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/drawable/XDrawable;->setNeedAnimate(Z)V

    .line 154
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mOnInterceptListener:Lcom/xiaopeng/xui/widget/XSwitch$OnInterceptListener;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mOnInterceptListener:Lcom/xiaopeng/xui/widget/XSwitch$OnInterceptListener;

    .line 155
    invoke-interface {v1, p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch$OnInterceptListener;->onInterceptCheck(Landroid/view/View;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 156
    const-string v1, "XSwitch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intercept setChecked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", current:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isChecked()Z

    move-result v1

    invoke-super {p0, v1}, Lcom/xiaopeng/xui/oswidget/Switch;->setChecked(Z)V

    .line 159
    return-void

    .line 161
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isChecked()Z

    move-result v1

    .line 162
    .local v1, "currentChecked":Z
    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mUseFromUserForSound:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isFromUser()Z

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isPressed()Z

    move-result v3

    if-eq v2, v3, :cond_5

    .line 163
    const-string v2, "XSwitch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " pressed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isPressed()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isFromUser: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isFromUser()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_5
    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mUseFromUserForSound:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isFromUser()Z

    move-result v2

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isPressed()Z

    move-result v2

    .line 166
    .local v2, "user":Z
    :goto_2
    if-eq v1, p1, :cond_8

    if-eqz v2, :cond_8

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCheckSoundEnable:Z

    if-eqz v3, :cond_8

    .line 167
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    .line 168
    .local v3, "displayId":I
    invoke-static {}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->get()Lcom/xiaopeng/xui/sound/XSoundEffectManager;

    move-result-object v4

    if-eqz p1, :cond_7

    const/4 v5, 0x3

    goto :goto_3

    :cond_7
    const/4 v5, 0x4

    :goto_3
    invoke-virtual {v4, v5, v3}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->playSoundEffectByDisplay(II)V

    .line 170
    .end local v3    # "displayId":I
    :cond_8
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->setCheckedAndUpdateVui(Z)V

    .line 171
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 3
    .param p1, "checked"    # Z
    .param p2, "animator"    # Z

    .line 174
    if-eqz p2, :cond_0

    .line 175
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    goto :goto_1

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 178
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 179
    instance-of v1, v0, Lcom/xiaopeng/xui/drawable/XDrawable;

    if-eqz v1, :cond_1

    .line 180
    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/xui/drawable/XDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/drawable/XDrawable;->setNeedAnimate(Z)V

    .line 183
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->setCheckedAndUpdateVui(Z)V

    .line 184
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->cancelPositionAnimator()V

    .line 185
    if-eqz p1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setThumbPosition(F)V

    .line 187
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-void
.end method

.method public setChecked(ZZZ)V
    .locals 4
    .param p1, "checked"    # Z
    .param p2, "animator"    # Z
    .param p3, "play"    # Z

    .line 190
    if-eqz p3, :cond_2

    .line 191
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_2

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 193
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCheckSoundEnable:Z

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 195
    .local v0, "displayId":I
    invoke-static {}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->get()Lcom/xiaopeng/xui/sound/XSoundEffectManager;

    move-result-object v1

    .line 196
    if-eqz p1, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->playSoundEffectByDisplay(II)V

    .line 197
    .end local v0    # "displayId":I
    goto :goto_1

    .line 198
    :cond_1
    const-string v0, "XSwitch"

    const-string v1, "setChecked not play, mCheckSoundEnable false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 201
    :cond_2
    const-string v0, "XSwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChecked not play, checked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isChecked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,animator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",play:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mClickTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mClickTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(ZZ)V

    .line 205
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 117
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/oswidget/Switch;->setEnabled(Z)V

    .line 118
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    if-eqz p1, :cond_0

    .line 120
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->setAlpha(F)V

    goto :goto_0

    .line 122
    :cond_0
    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->setAlpha(F)V

    .line 125
    :cond_1
    :goto_0
    return-void
.end method

.method public setOnInterceptListener(Lcom/xiaopeng/xui/widget/XSwitch$OnInterceptListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xui/widget/XSwitch$OnInterceptListener;

    .line 268
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mOnInterceptListener:Lcom/xiaopeng/xui/widget/XSwitch$OnInterceptListener;

    .line 269
    return-void
.end method

.method public setSoundEffectsEnabled(Z)V
    .locals 0
    .param p1, "soundEffectsEnabled"    # Z

    .line 108
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->setCheckSoundEnable(Z)V

    .line 109
    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1
    .param p1, "refreshable"    # Z

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setThemeRefreshable(Landroid/view/View;Z)V

    .line 276
    :cond_0
    return-void
.end method

.method public setUseFromUserForSound(Z)V
    .locals 0
    .param p1, "useFromUserForSound"    # Z

    .line 132
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mUseFromUserForSound:Z

    .line 133
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 252
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/oswidget/Switch;->setVisibility(I)V

    .line 253
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->setVuiVisibility(Landroid/view/View;I)V

    .line 254
    return-void
.end method
