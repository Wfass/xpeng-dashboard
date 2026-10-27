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

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101043f

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/oswidget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCheckSoundEnable:Z

    .line 52
    invoke-static {p0, p2, p3, p4}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 53
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XSwitch;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lbyg$n;->XSwitch:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 55
    sget p2, Lbyg$n;->XSwitch_android_thumb:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mThumbResId:I

    .line 56
    sget p2, Lbyg$n;->XSwitch_android_track:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mTrackResId:I

    .line 57
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    invoke-super {p0, p3}, Lcom/xiaopeng/xui/oswidget/Switch;->setSoundEffectsEnabled(Z)V

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/xui/widget/-$$Lambda$XSwitch$tGtEgNfsY8SeMaBsnM-1SNa1rMI;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/widget/-$$Lambda$XSwitch$tGtEgNfsY8SeMaBsnM-1SNa1rMI;-><init>(Lcom/xiaopeng/xui/widget/XSwitch;)V

    invoke-virtual {p1, p2}, Lapr;->a(Lapr$a;)V

    return-void
.end method

.method public static synthetic lambda$tGtEgNfsY8SeMaBsnM-1SNa1rMI(Lcom/xiaopeng/xui/widget/XSwitch;)V
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
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mThumbResId:I

    const-string v2, "XSwitch"

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mThumbResId:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 66
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

    goto :goto_0

    :cond_0
    const-string v1, "refreshVisual: thumb res not found"

    .line 70
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_0
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mTrackResId:I

    if-eqz v1, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mTrackResId:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 74
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

    goto :goto_1

    :cond_1
    const-string v0, "refreshVisual: track res not found"

    .line 78
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private setCheckedAndUpdateVui(Z)V
    .locals 1

    .line 208
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isChecked()Z

    move-result v0

    .line 209
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/oswidget/Switch;->setChecked(Z)V

    if-eq v0, p1, :cond_0

    .line 211
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XSwitch;->updateVui(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setFromUser(Z)V
    .locals 0

    .line 243
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mFromUser:Z

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .line 258
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 259
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->releaseVui()V

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
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 84
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/oswidget/Switch;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

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
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    const-string v2, "XSwitch"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    if-ne v0, v1, :cond_1

    .line 219
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTouchEvent, set from user action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct {p0, v3}, Lcom/xiaopeng/xui/widget/XSwitch;->setFromUser(Z)V

    .line 222
    :cond_1
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/oswidget/Switch;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eq v0, v3, :cond_2

    if-ne v0, v1, :cond_3

    .line 224
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent, reset from user action:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 225
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->setFromUser(Z)V

    :cond_3
    return p1
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 291
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/oswidget/Switch;->onVisibilityChanged(Landroid/view/View;I)V

    .line 292
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XSwitch;->onVisibilityChangedThemeRefresh(I)V

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

    invoke-interface {v0, p0}, Lcom/xiaopeng/xui/widget/XSwitch$OnInterceptListener;->onInterceptClickEvent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 236
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->setFromUser(Z)V

    .line 237
    invoke-super {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->performClick()Z

    move-result v0

    .line 238
    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setFromUser(Z)V

    return v0
.end method

.method public setCheckSoundEnable(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCheckSoundEnable:Z

    return-void
.end method

.method public setChecked(Z)V
    .locals 6

    .line 137
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isChecked()Z

    move-result v0

    const-string v1, " isFromUser: "

    const-string v2, " pressed: "

    const-string v3, "XSwitch"

    if-ne p1, v0, :cond_2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checked == isChecked(): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isPressed()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isFromUser()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 144
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->setThumbPosition(F)V

    :goto_1
    return-void

    .line 148
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 150
    instance-of v4, v0, Lcom/xiaopeng/xui/drawable/XDrawable;

    if-eqz v4, :cond_3

    .line 151
    check-cast v0, Lcom/xiaopeng/xui/drawable/XDrawable;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/drawable/XDrawable;->setNeedAnimate(Z)V

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mOnInterceptListener:Lcom/xiaopeng/xui/widget/XSwitch$OnInterceptListener;

    if-eqz v0, :cond_4

    .line 155
    invoke-interface {v0, p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch$OnInterceptListener;->onInterceptCheck(Landroid/view/View;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intercept setChecked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", current:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isChecked()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isChecked()Z

    move-result p1

    invoke-super {p0, p1}, Lcom/xiaopeng/xui/oswidget/Switch;->setChecked(Z)V

    return-void

    .line 161
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isChecked()Z

    move-result v0

    .line 162
    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mUseFromUserForSound:Z

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isFromUser()Z

    move-result v4

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isPressed()Z

    move-result v5

    if-eq v4, v5, :cond_5

    .line 163
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isPressed()Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isFromUser()Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_5
    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mUseFromUserForSound:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isFromUser()Z

    move-result v1

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isPressed()Z

    move-result v1

    :goto_2
    if-eq v0, p1, :cond_8

    if-eqz v1, :cond_8

    .line 166
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCheckSoundEnable:Z

    if-eqz v0, :cond_8

    .line 167
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 168
    invoke-static {}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->get()Lcom/xiaopeng/xui/sound/XSoundEffectManager;

    move-result-object v1

    if-eqz p1, :cond_7

    const/4 v2, 0x3

    goto :goto_3

    :cond_7
    const/4 v2, 0x4

    :goto_3
    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->playSoundEffectByDisplay(II)V

    .line 170
    :cond_8
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->setCheckedAndUpdateVui(Z)V

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 175
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    goto :goto_1

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 179
    instance-of v0, p2, Lcom/xiaopeng/xui/drawable/XDrawable;

    if-eqz v0, :cond_1

    .line 180
    check-cast p2, Lcom/xiaopeng/xui/drawable/XDrawable;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/drawable/XDrawable;->setNeedAnimate(Z)V

    .line 183
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->setCheckedAndUpdateVui(Z)V

    .line 184
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->cancelPositionAnimator()V

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 185
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->setThumbPosition(F)V

    :goto_1
    return-void
.end method

.method public setChecked(ZZZ)V
    .locals 5

    const-string v0, "XSwitch"

    if-eqz p3, :cond_2

    .line 191
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isChecked()Z

    move-result v1

    if-eq p1, v1, :cond_2

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mClickTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x5dc

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 193
    iget-boolean p3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCheckSoundEnable:Z

    if-eqz p3, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getDisplay()Landroid/view/Display;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Display;->getDisplayId()I

    move-result p3

    .line 195
    invoke-static {}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->get()Lcom/xiaopeng/xui/sound/XSoundEffectManager;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 196
    :goto_0
    invoke-virtual {v0, v1, p3}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->playSoundEffectByDisplay(II)V

    goto :goto_1

    :cond_1
    const-string p3, "setChecked not play, mCheckSoundEnable false"

    .line 198
    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 201
    :cond_2
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

    const-string p3, ",mClickTime:"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mClickTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(ZZ)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 117
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/oswidget/Switch;->setEnabled(Z)V

    .line 118
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 120
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const p1, 0x3f19999a    # 0.6f

    .line 122
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnInterceptListener(Lcom/xiaopeng/xui/widget/XSwitch$OnInterceptListener;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mOnInterceptListener:Lcom/xiaopeng/xui/widget/XSwitch$OnInterceptListener;

    return-void
.end method

.method public setSoundEffectsEnabled(Z)V
    .locals 0

    .line 108
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->setCheckSoundEnable(Z)V

    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lapr;->b(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public setUseFromUserForSound(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mUseFromUserForSound:Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 252
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/oswidget/Switch;->setVisibility(I)V

    .line 253
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->setVuiVisibility(Landroid/view/View;I)V

    return-void
.end method
