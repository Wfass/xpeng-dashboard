.class public Lcom/xiaopeng/xui/oswidget/Switch;
.super Landroid/widget/CompoundButton;
.source "Switch.java"


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final THUMB_ANIMATION_DURATION:I = 0x96

.field private static final THUMB_POS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/xiaopeng/xui/oswidget/Switch;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I


# instance fields
.field private mHasThumbTint:Z

.field private mHasThumbTintMode:Z

.field private mHasTrackTint:Z

.field private mHasTrackTintMode:Z

.field private mMinFlingVelocity:I

.field private mOffLayout:Landroid/text/Layout;

.field private mOnLayout:Landroid/text/Layout;

.field private mPositionAnimator:Landroid/animation/ObjectAnimator;

.field private mShowText:Z

.field private mSplitTrack:Z

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextColors:Landroid/content/res/ColorStateList;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbPosition:F

.field private mThumbTextPadding:I

.field private mThumbTintList:Landroid/content/res/ColorStateList;

.field private mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackTintList:Landroid/content/res/ColorStateList;

.field private mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mUseFallbackLineSpacing:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 179
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/xiaopeng/xui/oswidget/Switch;->CHECKED_STATE_SET:[I

    .line 1460
    new-instance v0, Lcom/xiaopeng/xui/oswidget/Switch$1;

    const-string v1, "thumbPos"

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/oswidget/Switch$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/xui/oswidget/Switch;->THUMB_POS:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 189
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/oswidget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101043f

    .line 200
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/oswidget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 214
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/oswidget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .line 235
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 103
    iput-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    .line 104
    iput-boolean v1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mHasThumbTint:Z

    .line 105
    iput-boolean v1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mHasThumbTintMode:Z

    .line 108
    iput-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTrackTintList:Landroid/content/res/ColorStateList;

    .line 109
    iput-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 110
    iput-boolean v1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mHasTrackTint:Z

    .line 111
    iput-boolean v1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mHasTrackTintMode:Z

    .line 126
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 176
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 237
    new-instance v2, Landroid/text/TextPaint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTextPaint:Landroid/text/TextPaint;

    .line 239
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 240
    iget-object v4, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iput v5, v4, Landroid/text/TextPaint;->density:F

    .line 241
    iget-object v4, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 243
    sget-object v2, Lcom/android/internal/R$styleable;->Switch:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x2

    .line 245
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 246
    iget-object p3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_0

    .line 247
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    const/4 p3, 0x4

    .line 249
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 250
    iget-object p3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_1

    .line 251
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 253
    :cond_1
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 254
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTextOff:Ljava/lang/CharSequence;

    const/16 p3, 0xb

    .line 255
    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mShowText:Z

    const/4 p3, 0x7

    .line 256
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbTextPadding:I

    const/4 p3, 0x5

    .line 258
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSwitchMinWidth:I

    const/4 p3, 0x6

    .line 260
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSwitchPadding:I

    const/16 p3, 0x8

    .line 262
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSplitTrack:Z

    .line 264
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p4, 0x1c

    if-lt p3, p4, :cond_2

    move p3, v3

    goto :goto_0

    :cond_2
    move p3, v1

    :goto_0
    iput-boolean p3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mUseFallbackLineSpacing:Z

    const/16 p3, 0x9

    .line 266
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 269
    iput-object p3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 270
    iput-boolean v3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mHasThumbTint:Z

    :cond_3
    const/16 p3, 0xa

    const/4 p4, -0x1

    .line 273
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 272
    invoke-static {p3, v0}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    .line 274
    iget-object v2, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v2, p3, :cond_4

    .line 275
    iput-object p3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 276
    iput-boolean v3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mHasThumbTintMode:Z

    .line 278
    :cond_4
    iget-boolean p3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mHasThumbTint:Z

    if-nez p3, :cond_5

    iget-boolean p3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mHasThumbTintMode:Z

    if-eqz p3, :cond_6

    .line 279
    :cond_5
    invoke-direct {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->applyThumbTint()V

    :cond_6
    const/16 p3, 0xc

    .line 282
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 285
    iput-object p3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTrackTintList:Landroid/content/res/ColorStateList;

    .line 286
    iput-boolean v3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mHasTrackTint:Z

    :cond_7
    const/16 p3, 0xd

    .line 289
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 288
    invoke-static {p3, v0}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    .line 290
    iget-object p4, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq p4, p3, :cond_8

    .line 291
    iput-object p3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 292
    iput-boolean v3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mHasTrackTintMode:Z

    .line 294
    :cond_8
    iget-boolean p3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mHasTrackTint:Z

    if-nez p3, :cond_9

    iget-boolean p3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mHasTrackTintMode:Z

    if-eqz p3, :cond_a

    .line 295
    :cond_9
    invoke-direct {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->applyTrackTint()V

    :cond_a
    const/4 p3, 0x3

    .line 298
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_b

    .line 301
    invoke-virtual {p0, p1, p3}, Lcom/xiaopeng/xui/oswidget/Switch;->setSwitchTextAppearance(Landroid/content/Context;I)V

    .line 303
    :cond_b
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 305
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 306
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTouchSlop:I

    .line 307
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mMinFlingVelocity:I

    .line 310
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->refreshDrawableState()V

    .line 311
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/oswidget/Switch;->setChecked(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/oswidget/Switch;)F
    .locals 0

    .line 89
    iget p0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbPosition:F

    return p0
.end method

.method private applyThumbTint()V
    .locals 2

    .line 713
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mHasThumbTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mHasThumbTintMode:Z

    if-eqz v0, :cond_3

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 716
    iget-boolean v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mHasThumbTint:Z

    if-eqz v0, :cond_1

    .line 717
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 720
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mHasThumbTintMode:Z

    if-eqz v0, :cond_2

    .line 721
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 726
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 727
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private applyTrackTint()V
    .locals 2

    .line 594
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mHasTrackTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mHasTrackTintMode:Z

    if-eqz v0, :cond_3

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 597
    iget-boolean v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mHasTrackTint:Z

    if-eqz v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTrackTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 601
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mHasTrackTintMode:Z

    if-eqz v0, :cond_2

    .line 602
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 607
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 608
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1006
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x3

    .line 1007
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1008
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1009
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private getTargetCheckedState()Z
    .locals 2

    .line 1060
    iget v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbPosition:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getThumbOffset()I
    .locals 2

    .line 1312
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1313
    iget v1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbPosition:F

    sub-float/2addr v0, v1

    goto :goto_0

    .line 1315
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbPosition:F

    .line 1317
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->getThumbScrollRange()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getThumbScrollRange()I
    .locals 4

    .line 1321
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1322
    iget-object v1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 1323
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1326
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1327
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_0

    .line 1329
    :cond_0
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 1332
    :goto_0
    iget v2, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSwitchWidth:I

    iget v3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbWidth:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iget v1, v0, Landroid/graphics/Insets;->left:I

    sub-int/2addr v2, v1

    iget v0, v0, Landroid/graphics/Insets;->right:I

    sub-int/2addr v2, v0

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private hitThumb(FF)Z
    .locals 6

    .line 910
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 915
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->getThumbOffset()I

    move-result v0

    .line 917
    iget-object v2, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 918
    iget v2, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSwitchTop:I

    iget v3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTouchSlop:I

    sub-int/2addr v2, v3

    .line 919
    iget v4, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSwitchLeft:I

    add-int/2addr v4, v0

    sub-int/2addr v4, v3

    .line 920
    iget v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbWidth:I

    add-int/2addr v0, v4

    iget-object v3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTouchSlop:I

    add-int/2addr v0, v3

    .line 922
    iget v5, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSwitchBottom:I

    add-int/2addr v5, v3

    int-to-float v3, v4

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    int-to-float p1, v2

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    int-to-float p1, v5

    cmpg-float p1, p2, p1

    if-gez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 4

    .line 895
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    if-eqz v0, :cond_0

    .line 896
    invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod2;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 900
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v2

    const/4 v3, 0x0

    .line 899
    invoke-static {p1, v3, v0, v1, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 901
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {p1, v3, v1, v2, v0}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mUseFallbackLineSpacing:Z

    .line 902
    invoke-virtual {p1, v0}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 903
    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p1

    return-object p1
.end method

.method private onProvideAutoFillStructureForAssistOrAutofill(Landroid/view/ViewStructure;)V
    .locals 3

    .line 1425
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTextOn:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 1426
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1427
    invoke-virtual {p1}, Landroid/view/ViewStructure;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1428
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1429
    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1431
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1432
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1433
    invoke-virtual {p1, v2}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private setSwitchTypefaceByIndex(II)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 379
    :cond_0
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 375
    :cond_1
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 371
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 383
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xui/oswidget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 6

    const/4 v0, 0x0

    .line 1018
    iput v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTouchMode:I

    .line 1022
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1023
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->isChecked()Z

    move-result v3

    if-eqz v1, :cond_4

    .line 1026
    iget-object v1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v1, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1027
    iget-object v1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    .line 1028
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mMinFlingVelocity:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 1029
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->isLayoutRtl()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    cmpg-float v1, v1, v5

    if-gez v1, :cond_2

    goto :goto_1

    :cond_1
    cmpl-float v1, v1, v5

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    move v1, v2

    goto :goto_2

    .line 1031
    :cond_3
    invoke-direct {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->getTargetCheckedState()Z

    move-result v1

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    if-eq v1, v3, :cond_5

    .line 1038
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/oswidget/Switch;->playSoundEffect(I)V

    .line 1041
    :cond_5
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/oswidget/Switch;->setChecked(Z)V

    .line 1042
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/oswidget/Switch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    return-void
.end method


# virtual methods
.method protected animateThumbToCheckedState(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1047
    :goto_0
    sget-object v0, Lcom/xiaopeng/xui/oswidget/Switch;->THUMB_POS:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 1048
    iget-object p1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1049
    iget-object p1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 1050
    iget-object p1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public cancelPositionAnimator()V
    .locals 1

    .line 1054
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 1055
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1153
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 1154
    iget v1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSwitchLeft:I

    .line 1155
    iget v2, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSwitchTop:I

    .line 1156
    iget v3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSwitchRight:I

    .line 1157
    iget v4, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSwitchBottom:I

    .line 1159
    invoke-direct {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->getThumbOffset()I

    move-result v5

    add-int/2addr v5, v1

    .line 1162
    iget-object v6, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 1163
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v6

    goto :goto_0

    .line 1165
    :cond_0
    sget-object v6, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 1169
    :goto_0
    iget-object v7, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_6

    .line 1170
    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1173
    iget v7, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v7

    .line 1180
    sget-object v7, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    if-eq v6, v7, :cond_4

    .line 1181
    iget v7, v6, Landroid/graphics/Insets;->left:I

    iget v8, v0, Landroid/graphics/Rect;->left:I

    if-le v7, v8, :cond_1

    .line 1182
    iget v7, v6, Landroid/graphics/Insets;->left:I

    iget v8, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    add-int/2addr v1, v7

    .line 1184
    :cond_1
    iget v7, v6, Landroid/graphics/Insets;->top:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-le v7, v8, :cond_2

    .line 1185
    iget v7, v6, Landroid/graphics/Insets;->top:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int/2addr v7, v2

    goto :goto_1

    :cond_2
    move v7, v2

    .line 1187
    :goto_1
    iget v8, v6, Landroid/graphics/Insets;->right:I

    iget v9, v0, Landroid/graphics/Rect;->right:I

    if-le v8, v9, :cond_3

    .line 1188
    iget v8, v6, Landroid/graphics/Insets;->right:I

    iget v9, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    sub-int/2addr v3, v8

    .line 1190
    :cond_3
    iget v8, v6, Landroid/graphics/Insets;->bottom:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    if-le v8, v9, :cond_5

    .line 1191
    iget v6, v6, Landroid/graphics/Insets;->bottom:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v8

    sub-int v6, v4, v6

    goto :goto_2

    :cond_4
    move v7, v2

    :cond_5
    move v6, v4

    .line 1194
    :goto_2
    iget-object v8, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v1, v7, v3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1198
    :cond_6
    iget-object v1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    .line 1199
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1201
    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int v1, v5, v1

    .line 1202
    iget v3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbWidth:I

    add-int/2addr v5, v3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    .line 1203
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1205
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1207
    invoke-virtual {v0, v1, v2, v5, v4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 1212
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1

    .line 1372
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->drawableHotspotChanged(FF)V

    .line 1374
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1375
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1378
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1379
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 1350
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 1352
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->getDrawableState()[I

    move-result-object v0

    .line 1355
    iget-object v1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1356
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1357
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v2, v1

    .line 1360
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1361
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1362
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_1
    if-eqz v2, :cond_2

    .line 1366
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->invalidate()V

    :cond_2
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1408
    const-class v0, Lcom/xiaopeng/xui/oswidget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    .line 1282
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->isLayoutRtl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1283
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    return v0

    .line 1285
    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSwitchWidth:I

    add-int/2addr v0, v1

    .line 1286
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1287
    iget v1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public getCompoundPaddingRight()I
    .locals 2

    .line 1294
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1295
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    return v0

    .line 1297
    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSwitchWidth:I

    add-int/2addr v0, v1

    .line 1298
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1299
    iget v1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public getShowText()Z
    .locals 1

    .line 810
    iget-boolean v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mShowText:Z

    return v0
.end method

.method public getSplitTrack()Z
    .locals 1

    .line 751
    iget-boolean v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSplitTrack:Z

    return v0
.end method

.method public getSwitchMinWidth()I
    .locals 1

    .line 473
    iget v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSwitchMinWidth:I

    return v0
.end method

.method public getSwitchPadding()I
    .locals 1

    .line 450
    iget v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSwitchPadding:I

    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbTextPadding()I
    .locals 1

    .line 494
    iget v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbTextPadding:I

    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 709
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTrackTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTrackTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTrackTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 1390
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 1392
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1393
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1396
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1397
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1400
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1401
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    const/4 v0, 0x0

    .line 1402
    iput-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    :cond_2
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 1341
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 1342
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1343
    sget-object v0, Lcom/xiaopeng/xui/oswidget/Switch;->CHECKED_STATE_SET:[I

    invoke-static {p1, v0}, Lcom/xiaopeng/xui/oswidget/Switch;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1217
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 1219
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 1220
    iget-object v1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1222
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 1224
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1227
    :goto_0
    iget v2, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSwitchTop:I

    .line 1228
    iget v3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSwitchBottom:I

    .line 1229
    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    .line 1230
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 1232
    iget-object v4, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 1234
    iget-boolean v5, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSplitTrack:Z

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    .line 1235
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v5

    .line 1236
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1237
    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Insets;->left:I

    add-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 1238
    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Insets;->right:I

    sub-int/2addr v6, v5

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 1240
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 1241
    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1242
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1243
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    .line 1245
    :cond_1
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1249
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    if-eqz v4, :cond_3

    .line 1252
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1255
    :cond_3
    invoke-direct {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->getTargetCheckedState()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mOnLayout:Landroid/text/Layout;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mOffLayout:Landroid/text/Layout;

    :goto_2
    if-eqz v1, :cond_7

    .line 1257
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->getDrawableState()[I

    move-result-object v5

    .line 1258
    iget-object v6, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_5

    .line 1259
    iget-object v7, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTextPaint:Landroid/text/TextPaint;

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 1261
    :cond_5
    iget-object v6, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTextPaint:Landroid/text/TextPaint;

    iput-object v5, v6, Landroid/text/TextPaint;->drawableState:[I

    if-eqz v4, :cond_6

    .line 1265
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 1266
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v4

    goto :goto_3

    .line 1268
    :cond_6
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->getWidth()I

    move-result v5

    .line 1271
    :goto_3
    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v5, v4

    add-int/2addr v2, v3

    .line 1272
    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v3, v5

    int-to-float v2, v2

    .line 1273
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1274
    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1277
    :cond_7
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1446
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1447
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTextOn:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 1448
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1449
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1450
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1451
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1453
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1454
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1455
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1097
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 1101
    iget-object p1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 1102
    iget-object p1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 1103
    iget-object p3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_0

    .line 1104
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 1106
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1109
    :goto_0
    iget-object p3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object p3

    .line 1110
    iget p4, p3, Landroid/graphics/Insets;->left:I

    iget p5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, p5

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 1111
    iget p3, p3, Landroid/graphics/Insets;->right:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, p1

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_1

    :cond_1
    move p4, p2

    .line 1116
    :goto_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1117
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->getPaddingLeft()I

    move-result p1

    add-int/2addr p1, p4

    .line 1118
    iget p3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSwitchWidth:I

    add-int/2addr p3, p1

    sub-int/2addr p3, p4

    sub-int/2addr p3, p2

    goto :goto_2

    .line 1120
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    sub-int p3, p1, p2

    .line 1121
    iget p1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSwitchWidth:I

    sub-int p1, p3, p1

    add-int/2addr p1, p4

    add-int/2addr p1, p2

    .line 1126
    :goto_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->getGravity()I

    move-result p2

    and-int/lit8 p2, p2, 0x70

    const/16 p4, 0x10

    if-eq p2, p4, :cond_4

    const/16 p4, 0x50

    if-eq p2, p4, :cond_3

    .line 1129
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->getPaddingTop()I

    move-result p2

    .line 1130
    iget p4, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSwitchHeight:I

    :goto_3
    add-int/2addr p4, p2

    goto :goto_4

    .line 1140
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->getPaddingBottom()I

    move-result p4

    sub-int p4, p2, p4

    .line 1141
    iget p2, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSwitchHeight:I

    sub-int p2, p4, p2

    goto :goto_4

    .line 1134
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->getHeight()I

    move-result p4

    add-int/2addr p2, p4

    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->getPaddingBottom()I

    move-result p4

    sub-int/2addr p2, p4

    div-int/lit8 p2, p2, 0x2

    iget p4, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSwitchHeight:I

    div-int/lit8 p5, p4, 0x2

    sub-int/2addr p2, p5

    goto :goto_3

    .line 1145
    :goto_4
    iput p1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSwitchLeft:I

    .line 1146
    iput p2, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSwitchTop:I

    .line 1147
    iput p4, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSwitchBottom:I

    .line 1148
    iput p3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSwitchRight:I

    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    .line 815
    iget-boolean v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mShowText:Z

    if-eqz v0, :cond_1

    .line 816
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mOnLayout:Landroid/text/Layout;

    if-nez v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/oswidget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mOnLayout:Landroid/text/Layout;

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mOffLayout:Landroid/text/Layout;

    if-nez v0, :cond_1

    .line 821
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/oswidget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mOffLayout:Landroid/text/Layout;

    .line 825
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 828
    iget-object v1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 830
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 831
    iget-object v1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    .line 832
    iget-object v3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    goto :goto_0

    :cond_2
    move v1, v2

    move v3, v1

    .line 839
    :goto_0
    iget-boolean v4, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mShowText:Z

    if-eqz v4, :cond_3

    .line 840
    iget-object v4, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbTextPadding:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    goto :goto_1

    :cond_3
    move v4, v2

    .line 846
    :goto_1
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbWidth:I

    .line 849
    iget-object v1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 850
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 851
    iget-object v1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    goto :goto_2

    .line 853
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 859
    :goto_2
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 860
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 861
    iget-object v4, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    .line 862
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v4

    .line 863
    iget v5, v4, Landroid/graphics/Insets;->left:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 864
    iget v4, v4, Landroid/graphics/Insets;->right:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 867
    :cond_5
    iget v4, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSwitchMinWidth:I

    iget v5, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbWidth:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    add-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 869
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 870
    iput v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSwitchWidth:I

    .line 871
    iput v1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSwitchHeight:I

    .line 873
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 875
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->getMeasuredHeight()I

    move-result p1

    if-ge p1, v1, :cond_6

    .line 877
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->getMeasuredWidthAndState()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/xui/oswidget/Switch;->setMeasuredDimension(II)V

    :cond_6
    return-void
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 886
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 888
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTextOn:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTextOff:Ljava/lang/CharSequence;

    :goto_0
    if-eqz v0, :cond_1

    .line 890
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 0

    .line 1419
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 1420
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/oswidget/Switch;->onProvideAutoFillStructureForAssistOrAutofill(Landroid/view/ViewStructure;)V

    return-void
.end method

.method public onProvideStructure(Landroid/view/ViewStructure;)V
    .locals 0

    .line 1413
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onProvideStructure(Landroid/view/ViewStructure;)V

    .line 1414
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/oswidget/Switch;->onProvideAutoFillStructureForAssistOrAutofill(Landroid/view/ViewStructure;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 928
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 929
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    const/4 v2, 0x2

    if-eq v0, v1, :cond_8

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_8

    goto/16 :goto_1

    .line 943
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTouchMode:I

    if-eqz v0, :cond_b

    if-eq v0, v1, :cond_6

    if-eq v0, v2, :cond_1

    goto/16 :goto_1

    .line 963
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 964
    invoke-direct {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->getThumbScrollRange()I

    move-result v0

    .line 965
    iget v2, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTouchX:F

    sub-float v2, p1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    int-to-float v0, v0

    div-float/2addr v2, v0

    goto :goto_0

    :cond_2
    cmpl-float v0, v2, v4

    if-lez v0, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    const/high16 v0, -0x40800000    # -1.0f

    move v2, v0

    .line 974
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_4

    neg-float v2, v2

    .line 977
    :cond_4
    iget v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbPosition:F

    add-float/2addr v0, v2

    invoke-static {v0, v4, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 978
    iget v2, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbPosition:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_5

    .line 979
    iput p1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTouchX:F

    .line 980
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/oswidget/Switch;->setThumbPosition(F)V

    :cond_5
    return v1

    .line 949
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 950
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 951
    iget v4, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTouchX:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_7

    iget v4, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTouchY:F

    sub-float v4, v3, v4

    .line 952
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_b

    .line 953
    :cond_7
    iput v2, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTouchMode:I

    .line 954
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 955
    iput v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTouchX:F

    .line 956
    iput v3, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTouchY:F

    return v1

    .line 990
    :cond_8
    iget v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTouchMode:I

    if-ne v0, v2, :cond_9

    .line 991
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/oswidget/Switch;->stopDrag(Landroid/view/MotionEvent;)V

    .line 993
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v1

    :cond_9
    const/4 v0, 0x0

    .line 996
    iput v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTouchMode:I

    .line 997
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    .line 932
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 933
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 934
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/xui/oswidget/Switch;->hitThumb(FF)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 935
    iput v1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTouchMode:I

    .line 936
    iput v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTouchX:F

    .line 937
    iput v2, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTouchY:F

    .line 1002
    :cond_b
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setChecked(Z)V
    .locals 1

    .line 1080
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1084
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->isChecked()Z

    move-result p1

    .line 1086
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1087
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/oswidget/Switch;->animateThumbToCheckedState(Z)V

    goto :goto_1

    .line 1090
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->cancelPositionAnimator()V

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1091
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/oswidget/Switch;->setThumbPosition(F)V

    :goto_1
    return-void
.end method

.method public setShowText(Z)V
    .locals 1

    .line 799
    iget-boolean v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mShowText:Z

    if-eq v0, p1, :cond_0

    .line 800
    iput-boolean p1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mShowText:Z

    .line 801
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setSplitTrack(Z)V
    .locals 0

    .line 741
    iput-boolean p1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSplitTrack:Z

    .line 742
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->invalidate()V

    return-void
.end method

.method public setSwitchMinWidth(I)V
    .locals 0

    .line 461
    iput p1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSwitchMinWidth:I

    .line 462
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->requestLayout()V

    return-void
.end method

.method public setSwitchPadding(I)V
    .locals 0

    .line 439
    iput p1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSwitchPadding:I

    .line 440
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->requestLayout()V

    return-void
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .locals 4

    .line 321
    sget-object v0, Lcom/android/internal/R$styleable;->TextAppearance:[I

    .line 322
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    .line 328
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 331
    iput-object p2, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    :goto_0
    const/4 p2, 0x0

    .line 337
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_1

    int-to-float v0, v0

    .line 340
    iget-object v1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 341
    iget-object v1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 342
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->requestLayout()V

    :cond_1
    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 348
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/4 v3, 0x2

    .line 350
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 353
    invoke-direct {p0, v2, v0}, Lcom/xiaopeng/xui/oswidget/Switch;->setSwitchTypefaceByIndex(II)V

    const/16 v0, 0xb

    .line 355
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 358
    new-instance p2, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    .line 359
    iget-object p2, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    invoke-interface {p2, v1}, Landroid/text/method/TransformationMethod2;->setLengthChangesAllowed(Z)V

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 361
    iput-object p2, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    .line 364
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 425
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 427
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->requestLayout()V

    .line 428
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p2, :cond_4

    if-nez p1, :cond_0

    .line 395
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    .line 397
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 400
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/oswidget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    if-eqz p1, :cond_1

    .line 402
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    not-int p1, p1

    and-int/2addr p1, p2

    .line 404
    iget-object p2, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 405
    iget-object p2, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    const/high16 v0, -0x41800000    # -0.25f

    :cond_3
    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    goto :goto_2

    .line 407
    :cond_4
    iget-object p2, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 408
    iget-object p2, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 409
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/oswidget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    :goto_2
    return-void
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 0

    .line 788
    iput-object p1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 789
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->requestLayout()V

    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 0

    .line 769
    iput-object p1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 770
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->requestLayout()V

    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 621
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 622
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 624
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 626
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 628
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->requestLayout()V

    return-void
.end method

.method public setThumbPosition(F)V
    .locals 0

    .line 1069
    iput p1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbPosition:F

    .line 1070
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->invalidate()V

    return-void
.end method

.method public setThumbResource(I)V
    .locals 1

    .line 639
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/oswidget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setThumbTextPadding(I)V
    .locals 0

    .line 483
    iput p1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbTextPadding:I

    .line 484
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->requestLayout()V

    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 667
    iput-object p1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbTintList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 668
    iput-boolean p1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mHasThumbTint:Z

    .line 670
    invoke-direct {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->applyThumbTint()V

    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 695
    iput-object p1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 696
    iput-boolean p1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mHasThumbTintMode:Z

    .line 698
    invoke-direct {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->applyThumbTint()V

    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 505
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 507
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 509
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 511
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->requestLayout()V

    return-void
.end method

.method public setTrackResource(I)V
    .locals 1

    .line 521
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/oswidget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTrackTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTrackTintList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 549
    iput-boolean p1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mHasTrackTint:Z

    .line 551
    invoke-direct {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->applyTrackTint()V

    return-void
.end method

.method public setTrackTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 576
    iput-object p1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 577
    iput-boolean p1, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mHasTrackTintMode:Z

    .line 579
    invoke-direct {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->applyTrackTint()V

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 1075
    invoke-virtual {p0}, Lcom/xiaopeng/xui/oswidget/Switch;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/oswidget/Switch;->setChecked(Z)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1385
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/oswidget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
