.class public Lcom/google/android/material/chip/ChipDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ChipDrawable.java"

# interfaces
.implements Landroidx/core/graphics/drawable/TintAwareDrawable;
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/ChipDrawable$Delegate;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_STATE:[I


# instance fields
.field private alpha:I

.field private checkable:Z

.field private checkedIcon:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private checkedIconEnabled:Z

.field private chipBackgroundColor:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private chipCornerRadius:F

.field private chipEndPadding:F

.field private chipIcon:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private chipIconEnabled:Z

.field private chipIconSize:F

.field private chipMinHeight:F

.field private final chipPaint:Landroid/graphics/Paint;

.field private chipStartPadding:F

.field private chipStrokeColor:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private chipStrokeWidth:F

.field private chipText:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private chipTextWidth:F

.field private chipTextWidthDirty:Z

.field private closeIcon:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private closeIconEnabled:Z

.field private closeIconEndPadding:F

.field private closeIconSize:F

.field private closeIconStartPadding:F

.field private closeIconStateSet:[I

.field private closeIconTint:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private colorFilter:Landroid/graphics/ColorFilter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private compatRippleColor:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private currentChecked:Z

.field private currentChipBackgroundColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private currentChipStrokeColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private currentChipTextColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private currentCompatRippleColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private currentTint:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private final debugPaint:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private delegate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/material/chip/ChipDrawable$Delegate;",
            ">;"
        }
    .end annotation
.end field

.field private final fontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private iconEndPadding:F

.field private iconStartPadding:F

.field private final pointF:Landroid/graphics/PointF;

.field private final rectF:Landroid/graphics/RectF;

.field private rippleColor:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private showMotionSpec:Lcom/google/android/material/animation/MotionSpec;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private textAppearance:Lcom/google/android/material/resources/TextAppearance;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private textEndPadding:F

.field private final textPaint:Landroid/text/TextPaint;

.field private textStartPadding:F

.field private tint:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private tintFilter:Landroid/graphics/PorterDuffColorFilter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private tintMode:Landroid/graphics/PorterDuff$Mode;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private useCompatRipple:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 155
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009e

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/material/chip/ChipDrawable;->DEFAULT_STATE:[I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 299
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 222
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    .line 223
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 225
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 226
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 227
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->pointF:Landroid/graphics/PointF;

    .line 236
    const/16 v0, 0xff

    iput v0, p0, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    .line 240
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    .line 244
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->delegate:Ljava/lang/ref/WeakReference;

    .line 245
    iput-boolean v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipTextWidthDirty:Z

    .line 300
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 302
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Landroid/text/TextPaint;->density:F

    .line 303
    iput-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    .line 304
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 308
    :cond_0
    sget-object v0, Lcom/google/android/material/chip/ChipDrawable;->DEFAULT_STATE:[I

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setState([I)Z

    .line 309
    sget-object v0, Lcom/google/android/material/chip/ChipDrawable;->DEFAULT_STATE:[I

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconState([I)Z

    .line 310
    return-void
.end method

.method private applyChildDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1139
    if-eqz p1, :cond_2

    .line 1140
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1141
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 1142
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1143
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1145
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    .line 1146
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1147
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1149
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconTint:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 1151
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1152
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1156
    :cond_2
    :goto_0
    return-void
.end method

.method private calculateChipIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "outBounds"    # Landroid/graphics/RectF;

    .line 677
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 679
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 680
    :cond_0
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->iconStartPadding:F

    add-float/2addr v0, v1

    .line 682
    .local v0, "offsetFromStart":F
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_1

    .line 683
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 684
    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    add-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 686
    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 687
    iget v1, p2, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    sub-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 690
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    iget v2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/RectF;->top:F

    .line 691
    iget v1, p2, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    add-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/RectF;->bottom:F

    .line 693
    .end local v0    # "offsetFromStart":F
    :cond_2
    return-void
.end method

.method private calculateChipIconWidth()F
    .locals 2

    .line 449
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 452
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 450
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->iconStartPadding:F

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->iconEndPadding:F

    add-float/2addr v0, v1

    return v0
.end method

.method private calculateChipTextBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "outBounds"    # Landroid/graphics/RectF;

    .line 742
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 744
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 745
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textStartPadding:F

    add-float/2addr v0, v1

    .line 746
    .local v0, "offsetFromStart":F
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    add-float/2addr v1, v2

    .line 748
    .local v1, "offsetFromEnd":F
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    if-nez v2, :cond_0

    .line 749
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    iput v2, p2, Landroid/graphics/RectF;->left:F

    .line 750
    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    iput v2, p2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 752
    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    iput v2, p2, Landroid/graphics/RectF;->left:F

    .line 753
    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iput v2, p2, Landroid/graphics/RectF;->right:F

    .line 758
    :goto_0
    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iput v2, p2, Landroid/graphics/RectF;->top:F

    .line 759
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iput v2, p2, Landroid/graphics/RectF;->bottom:F

    .line 761
    .end local v0    # "offsetFromStart":F
    .end local v1    # "offsetFromEnd":F
    :cond_1
    return-void
.end method

.method private calculateChipTextCenterFromBaseline()F
    .locals 2

    .line 733
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 734
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private calculateChipTextOrigin(Landroid/graphics/Rect;Landroid/graphics/PointF;)Landroid/graphics/Paint$Align;
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "pointF"    # Landroid/graphics/PointF;

    .line 700
    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 701
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 703
    .local v0, "align":Landroid/graphics/Paint$Align;
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 704
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/chip/ChipDrawable;->textStartPadding:F

    add-float/2addr v1, v2

    .line 706
    .local v1, "offsetFromStart":F
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    if-nez v2, :cond_0

    .line 707
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    iput v2, p2, Landroid/graphics/PointF;->x:F

    .line 708
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_0

    .line 710
    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    iput v2, p2, Landroid/graphics/PointF;->x:F

    .line 711
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 714
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipTextCenterFromBaseline()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, p2, Landroid/graphics/PointF;->y:F

    .line 717
    .end local v1    # "offsetFromStart":F
    :cond_1
    return-object v0
.end method

.method private calculateChipTextWidth(Ljava/lang/CharSequence;)F
    .locals 3
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 467
    if-nez p1, :cond_0

    .line 468
    const/4 v0, 0x0

    return v0

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    return v0
.end method

.method private calculateChipTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "outBounds"    # Landroid/graphics/RectF;

    .line 787
    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 789
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 790
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStartPadding:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    add-float/2addr v0, v1

    .line 797
    .local v0, "offsetFromEnd":F
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_0

    .line 798
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 800
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 803
    .end local v0    # "offsetFromEnd":F
    :cond_1
    :goto_0
    return-void
.end method

.method private calculateCloseIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "outBounds"    # Landroid/graphics/RectF;

    .line 768
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 770
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 771
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    add-float/2addr v0, v1

    .line 773
    .local v0, "offsetFromEnd":F
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_0

    .line 774
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 775
    iget v1, p2, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    sub-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 777
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 778
    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    add-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 781
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    iget v2, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/RectF;->top:F

    .line 782
    iget v1, p2, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    add-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/RectF;->bottom:F

    .line 784
    .end local v0    # "offsetFromEnd":F
    :cond_1
    return-void
.end method

.method private calculateCloseIconTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "outBounds"    # Landroid/graphics/RectF;

    .line 806
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 808
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 809
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStartPadding:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    add-float/2addr v0, v1

    .line 816
    .local v0, "offsetFromEnd":F
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_0

    .line 817
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 818
    iget v1, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 820
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 821
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 824
    :goto_0
    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iput v1, p2, Landroid/graphics/RectF;->top:F

    .line 825
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iput v1, p2, Landroid/graphics/RectF;->bottom:F

    .line 827
    .end local v0    # "offsetFromEnd":F
    :cond_1
    return-void
.end method

.method private calculateCloseIconWidth()F
    .locals 2

    .line 479
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStartPadding:F

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    add-float/2addr v0, v1

    return v0

    .line 482
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private canShowCheckedIcon()Z
    .locals 1

    .line 444
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIconEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/chip/ChipDrawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p3, "defStyleRes"    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 251
    new-instance v0, Lcom/google/android/material/chip/ChipDrawable;

    invoke-direct {v0, p0}, Lcom/google/android/material/chip/ChipDrawable;-><init>(Landroid/content/Context;)V

    .line 252
    .local v0, "chip":Lcom/google/android/material/chip/ChipDrawable;
    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/material/chip/ChipDrawable;->loadFromAttributes(Landroid/util/AttributeSet;II)V

    .line 253
    return-object v0
.end method

.method public static createFromResource(Landroid/content/Context;I)Lcom/google/android/material/chip/ChipDrawable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/XmlRes;
        .end annotation
    .end param

    .line 270
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 274
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 275
    .local v1, "type":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 276
    :cond_1
    if-ne v1, v2, :cond_4

    .line 280
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "chip"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 284
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 285
    .local v2, "attrs":Landroid/util/AttributeSet;
    invoke-interface {v2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v3

    .line 286
    .local v3, "style":I
    if-nez v3, :cond_2

    .line 287
    sget v4, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Chip_Entry:I

    move v3, v4

    .line 290
    :cond_2
    sget v4, Lcom/google/android/material/R$attr;->chipStandaloneStyle:I

    invoke-static {p0, v2, v4, v3}, Lcom/google/android/material/chip/ChipDrawable;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/chip/ChipDrawable;

    move-result-object v4

    return-object v4

    .line 281
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "style":I
    :cond_3
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Must have a <chip> start tag"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 277
    :cond_4
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v1    # "type":I
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t load chip resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 294
    .local v1, "exception":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 295
    throw v1
.end method

.method private drawCheckedIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 580
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 582
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 583
    .local v0, "tx":F
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 585
    .local v1, "ty":F
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 587
    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 588
    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 590
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 592
    .end local v0    # "tx":F
    .end local v1    # "ty":F
    :cond_0
    return-void
.end method

.method private drawChipBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 529
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 530
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 531
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->getTintColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 532
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 533
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    iget v2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 534
    return-void
.end method

.method private drawChipIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 565
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 567
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 568
    .local v0, "tx":F
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 570
    .local v1, "ty":F
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 572
    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 573
    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 575
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 577
    .end local v0    # "tx":F
    .end local v1    # "ty":F
    :cond_0
    return-void
.end method

.method private drawChipStroke(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 541
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 543
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 544
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->getTintColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 545
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v4, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    iget v4, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iget v6, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    div-float/2addr v6, v3

    sub-float/2addr v5, v6

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 552
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    .line 553
    .local v0, "strokeCornerRadius":F
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 555
    .end local v0    # "strokeCornerRadius":F
    :cond_0
    return-void
.end method

.method private drawChipText(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 596
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 598
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->pointF:Landroid/graphics/PointF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipTextOrigin(Landroid/graphics/Rect;Landroid/graphics/PointF;)Landroid/graphics/Paint$Align;

    move-result-object v0

    .line 599
    .local v0, "align":Landroid/graphics/Paint$Align;
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v1}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipTextBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 601
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textAppearance:Lcom/google/android/material/resources/TextAppearance;

    if-eqz v1, :cond_0

    .line 602
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    move-result-object v2

    iput-object v2, v1, Landroid/text/TextPaint;->drawableState:[I

    .line 603
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textAppearance:Lcom/google/android/material/resources/TextAppearance;

    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/resources/TextAppearance;->updateDrawState(Landroid/content/Context;Landroid/text/TextPaint;)V

    .line 605
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 607
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->getChipTextWidth()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 608
    .local v1, "clip":Z
    :goto_0
    const/4 v2, 0x0

    .line 609
    .local v2, "saveCount":I
    if-eqz v1, :cond_2

    .line 610
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 611
    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 613
    :cond_2
    iget-object v4, p0, Lcom/google/android/material/chip/ChipDrawable;->chipText:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->chipText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->pointF:Landroid/graphics/PointF;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->pointF:Landroid/graphics/PointF;

    iget v8, v3, Landroid/graphics/PointF;->y:F

    iget-object v9, p0, Lcom/google/android/material/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 614
    if-eqz v1, :cond_3

    .line 615
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 618
    .end local v0    # "align":Landroid/graphics/Paint$Align;
    .end local v1    # "clip":Z
    .end local v2    # "saveCount":I
    :cond_3
    return-void
.end method

.method private drawCloseIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 621
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 623
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 624
    .local v0, "tx":F
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 626
    .local v1, "ty":F
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 628
    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 629
    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 631
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 633
    .end local v0    # "tx":F
    .end local v1    # "ty":F
    :cond_0
    return-void
.end method

.method private drawCompatRipple(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 558
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentCompatRippleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 559
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 560
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 561
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    iget v2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 562
    return-void
.end method

.method private drawDebug(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 636
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_4

    .line 637
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    const/16 v2, 0x7f

    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 640
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 643
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 645
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 649
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 650
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    .line 651
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    iget-object v8, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    .line 650
    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 655
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 656
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 657
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 661
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 662
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 663
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 666
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 667
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 668
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 670
    :cond_4
    return-void
.end method

.method private getChipTextWidth()F
    .locals 1

    .line 456
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipTextWidthDirty:Z

    if-nez v0, :cond_0

    .line 457
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipTextWidth:F

    return v0

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipTextWidth(Ljava/lang/CharSequence;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipTextWidth:F

    .line 462
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipTextWidthDirty:Z

    .line 463
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipTextWidth:F

    return v0
.end method

.method private getTintColorFilter()Landroid/graphics/ColorFilter;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1164
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    :goto_0
    return-object v0
.end method

.method private static hasState([II)Z
    .locals 4
    .param p0, "stateSet"    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "state"    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 1174
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1175
    return v0

    .line 1178
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    .line 1179
    .local v3, "s":I
    if-ne v3, p1, :cond_1

    .line 1180
    const/4 v0, 0x1

    return v0

    .line 1178
    .end local v3    # "s":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1183
    :cond_2
    return v0
.end method

.method private static isStateful(Landroid/content/res/ColorStateList;)Z
    .locals 1
    .param p0, "colorStateList"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 967
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isStateful(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 971
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isStateful(Lcom/google/android/material/resources/TextAppearance;)Z
    .locals 1
    .param p0, "textAppearance"    # Lcom/google/android/material/resources/TextAppearance;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 975
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    .line 977
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 975
    :goto_0
    return v0
.end method

.method private loadFromAttributes(Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p3, "defStyleRes"    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 314
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    sget-object v1, Lcom/google/android/material/R$styleable;->ChipDrawable:[I

    .line 315
    invoke-static {v0, p1, v1, p2, p3}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 318
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v2, Lcom/google/android/material/R$styleable;->ChipDrawable_chipBackgroundColor:I

    .line 319
    invoke-static {v1, v0, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 318
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    .line 321
    sget v1, Lcom/google/android/material/R$styleable;->ChipDrawable_chipMinHeight:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setChipMinHeight(F)V

    .line 322
    sget v1, Lcom/google/android/material/R$styleable;->ChipDrawable_chipCornerRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setChipCornerRadius(F)V

    .line 323
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v3, Lcom/google/android/material/R$styleable;->ChipDrawable_chipStrokeColor:I

    .line 324
    invoke-static {v1, v0, v3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 323
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 325
    sget v1, Lcom/google/android/material/R$styleable;->ChipDrawable_chipStrokeWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeWidth(F)V

    .line 326
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v3, Lcom/google/android/material/R$styleable;->ChipDrawable_rippleColor:I

    .line 327
    invoke-static {v1, v0, v3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 326
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 329
    sget v1, Lcom/google/android/material/R$styleable;->ChipDrawable_chipText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setChipText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v3, Lcom/google/android/material/R$styleable;->ChipDrawable_android_textAppearance:I

    .line 331
    invoke-static {v1, v0, v3}, Lcom/google/android/material/resources/MaterialResources;->getTextAppearance(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/resources/TextAppearance;

    move-result-object v1

    .line 330
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V

    .line 334
    sget v1, Lcom/google/android/material/R$styleable;->ChipDrawable_chipIconEnabled:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconEnabled(Z)V

    .line 335
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v4, Lcom/google/android/material/R$styleable;->ChipDrawable_chipIcon:I

    invoke-static {v1, v0, v4}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    .line 336
    sget v1, Lcom/google/android/material/R$styleable;->ChipDrawable_chipIconSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconSize(F)V

    .line 338
    sget v1, Lcom/google/android/material/R$styleable;->ChipDrawable_closeIconEnabled:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconEnabled(Z)V

    .line 339
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v4, Lcom/google/android/material/R$styleable;->ChipDrawable_closeIcon:I

    invoke-static {v1, v0, v4}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIcon(Landroid/graphics/drawable/Drawable;)V

    .line 340
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v4, Lcom/google/android/material/R$styleable;->ChipDrawable_closeIconTint:I

    .line 341
    invoke-static {v1, v0, v4}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 340
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconTint(Landroid/content/res/ColorStateList;)V

    .line 342
    sget v1, Lcom/google/android/material/R$styleable;->ChipDrawable_closeIconSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconSize(F)V

    .line 344
    sget v1, Lcom/google/android/material/R$styleable;->ChipDrawable_android_checkable:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckable(Z)V

    .line 345
    sget v1, Lcom/google/android/material/R$styleable;->ChipDrawable_checkedIconEnabled:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconEnabled(Z)V

    .line 346
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v3, Lcom/google/android/material/R$styleable;->ChipDrawable_checkedIcon:I

    invoke-static {v1, v0, v3}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    .line 348
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v3, Lcom/google/android/material/R$styleable;->ChipDrawable_showMotionSpec:I

    .line 349
    invoke-static {v1, v0, v3}, Lcom/google/android/material/animation/MotionSpec;->createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v1

    .line 348
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    .line 350
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v3, Lcom/google/android/material/R$styleable;->ChipDrawable_hideMotionSpec:I

    .line 351
    invoke-static {v1, v0, v3}, Lcom/google/android/material/animation/MotionSpec;->createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v1

    .line 350
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    .line 353
    sget v1, Lcom/google/android/material/R$styleable;->ChipDrawable_chipStartPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStartPadding(F)V

    .line 354
    sget v1, Lcom/google/android/material/R$styleable;->ChipDrawable_iconStartPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setIconStartPadding(F)V

    .line 355
    sget v1, Lcom/google/android/material/R$styleable;->ChipDrawable_iconEndPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setIconEndPadding(F)V

    .line 356
    sget v1, Lcom/google/android/material/R$styleable;->ChipDrawable_textStartPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setTextStartPadding(F)V

    .line 357
    sget v1, Lcom/google/android/material/R$styleable;->ChipDrawable_textEndPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setTextEndPadding(F)V

    .line 358
    sget v1, Lcom/google/android/material/R$styleable;->ChipDrawable_closeIconStartPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconStartPadding(F)V

    .line 359
    sget v1, Lcom/google/android/material/R$styleable;->ChipDrawable_closeIconEndPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconEndPadding(F)V

    .line 360
    sget v1, Lcom/google/android/material/R$styleable;->ChipDrawable_chipEndPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setChipEndPadding(F)V

    .line 362
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 363
    return-void
.end method

.method private onStateChange([I[I)Z
    .locals 11
    .param p1, "chipState"    # [I
    .param p2, "closeIconState"    # [I

    .line 887
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    .line 888
    .local v0, "invalidate":Z
    const/4 v1, 0x0

    .line 890
    .local v1, "sizeChanged":Z
    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    iget v4, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipBackgroundColor:I

    .line 892
    invoke-virtual {v2, p1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 894
    .local v2, "newChipBackgroundColor":I
    :goto_0
    iget v4, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipBackgroundColor:I

    if-eq v4, v2, :cond_1

    .line 895
    iput v2, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipBackgroundColor:I

    .line 896
    const/4 v0, 0x1

    .line 899
    :cond_1
    iget-object v4, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    iget v5, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipStrokeColor:I

    .line 901
    invoke-virtual {v4, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    goto :goto_1

    :cond_2
    move v4, v3

    .line 903
    .local v4, "newChipStrokeColor":I
    :goto_1
    iget v5, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipStrokeColor:I

    if-eq v5, v4, :cond_3

    .line 904
    iput v4, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipStrokeColor:I

    .line 905
    const/4 v0, 0x1

    .line 908
    :cond_3
    iget-object v5, p0, Lcom/google/android/material/chip/ChipDrawable;->compatRippleColor:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/android/material/chip/ChipDrawable;->compatRippleColor:Landroid/content/res/ColorStateList;

    iget v6, p0, Lcom/google/android/material/chip/ChipDrawable;->currentCompatRippleColor:I

    .line 910
    invoke-virtual {v5, p1, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    goto :goto_2

    :cond_4
    move v5, v3

    .line 912
    .local v5, "newCompatRippleColor":I
    :goto_2
    iget v6, p0, Lcom/google/android/material/chip/ChipDrawable;->currentCompatRippleColor:I

    if-eq v6, v5, :cond_5

    .line 913
    iput v5, p0, Lcom/google/android/material/chip/ChipDrawable;->currentCompatRippleColor:I

    .line 914
    iget-boolean v6, p0, Lcom/google/android/material/chip/ChipDrawable;->useCompatRipple:Z

    if-eqz v6, :cond_5

    .line 915
    const/4 v0, 0x1

    .line 919
    :cond_5
    iget-object v6, p0, Lcom/google/android/material/chip/ChipDrawable;->textAppearance:Lcom/google/android/material/resources/TextAppearance;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/google/android/material/chip/ChipDrawable;->textAppearance:Lcom/google/android/material/resources/TextAppearance;

    iget-object v6, v6, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/google/android/material/chip/ChipDrawable;->textAppearance:Lcom/google/android/material/resources/TextAppearance;

    iget-object v6, v6, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    iget v7, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipTextColor:I

    .line 921
    invoke-virtual {v6, p1, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    goto :goto_3

    :cond_6
    move v6, v3

    .line 923
    .local v6, "newChipTextColor":I
    :goto_3
    iget v7, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipTextColor:I

    if-eq v7, v6, :cond_7

    .line 924
    iput v6, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipTextColor:I

    .line 925
    const/4 v0, 0x1

    .line 928
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    move-result-object v7

    const v8, 0x10100a0

    invoke-static {v7, v8}, Lcom/google/android/material/chip/ChipDrawable;->hasState([II)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-boolean v7, p0, Lcom/google/android/material/chip/ChipDrawable;->checkable:Z

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    goto :goto_4

    :cond_8
    move v7, v3

    .line 929
    .local v7, "newChecked":Z
    :goto_4
    iget-boolean v8, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

    if-eq v8, v7, :cond_9

    iget-object v8, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_9

    .line 930
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v8

    .line 931
    .local v8, "oldChipIconWidth":F
    iput-boolean v7, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

    .line 932
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v9

    .line 933
    .local v9, "newChipIconWidth":F
    const/4 v0, 0x1

    .line 935
    cmpl-float v10, v8, v9

    if-eqz v10, :cond_9

    .line 936
    const/4 v1, 0x1

    .line 940
    .end local v8    # "oldChipIconWidth":F
    .end local v9    # "newChipIconWidth":F
    :cond_9
    iget-object v8, p0, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    if-eqz v8, :cond_a

    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    iget v8, p0, Lcom/google/android/material/chip/ChipDrawable;->currentTint:I

    invoke-virtual {v3, p1, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    nop

    .line 941
    .local v3, "newTint":I
    :cond_a
    iget v8, p0, Lcom/google/android/material/chip/ChipDrawable;->currentTint:I

    if-eq v8, v3, :cond_b

    .line 942
    iput v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentTint:I

    .line 943
    iget-object v8, p0, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    iget-object v9, p0, Lcom/google/android/material/chip/ChipDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, v8, v9}, Lcom/google/android/material/drawable/DrawableUtils;->updateTintFilter(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/material/chip/ChipDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 944
    const/4 v0, 0x1

    .line 947
    :cond_b
    iget-object v8, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v8}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 948
    iget-object v8, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v8

    or-int/2addr v0, v8

    .line 950
    :cond_c
    iget-object v8, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v8}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 951
    iget-object v8, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v8

    or-int/2addr v0, v8

    .line 953
    :cond_d
    iget-object v8, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v8}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 954
    iget-object v8, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v8

    or-int/2addr v0, v8

    .line 957
    :cond_e
    if-eqz v0, :cond_f

    .line 958
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 960
    :cond_f
    if-eqz v1, :cond_10

    .line 961
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 963
    :cond_10
    return v0
.end method

.method private showsCheckedIcon()Z
    .locals 1

    .line 434
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIconEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showsChipIcon()Z
    .locals 1

    .line 429
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showsCloseIcon()Z
    .locals 1

    .line 439
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1132
    if-eqz p1, :cond_0

    .line 1133
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1135
    :cond_0
    return-void
.end method

.method private updateCompatRippleColor()V
    .locals 1

    .line 1168
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->useCompatRipple:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rippleColor:Landroid/content/res/ColorStateList;

    .line 1169
    invoke-static {v0}, Lcom/google/android/material/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->compatRippleColor:Landroid/content/res/ColorStateList;

    .line 1170
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 487
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 488
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getAlpha()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 492
    :cond_0
    const/4 v1, 0x0

    .line 493
    .local v1, "saveCount":I
    iget v2, p0, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    const/16 v3, 0xff

    if-ge v2, v3, :cond_1

    .line 494
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v2

    iget v9, p0, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    .line 495
    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lcom/google/android/material/canvas/CanvasCompat;->saveLayerAlpha(Landroid/graphics/Canvas;FFFFI)I

    move-result v1

    .line 500
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->drawChipBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 503
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->drawChipStroke(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 506
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->drawCompatRipple(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 509
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->drawChipIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 512
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->drawCheckedIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 515
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->drawChipText(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 518
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->drawCloseIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 521
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->drawDebug(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 523
    iget v2, p0, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    if-ge v2, v3, :cond_2

    .line 524
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 526
    :cond_2
    return-void

    .line 489
    .end local v1    # "saveCount":I
    :cond_3
    :goto_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1055
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    return v0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1562
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getChipBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1197
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getChipCornerRadius()F
    .locals 1

    .line 1228
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    return v0
.end method

.method public getChipEndPadding()F
    .locals 1

    .line 1739
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    return v0
.end method

.method public getChipIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1365
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getChipIconSize()F
    .locals 1

    .line 1392
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    return v0
.end method

.method public getChipMinHeight()F
    .locals 1

    .line 1212
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipMinHeight:F

    return v0
.end method

.method public getChipStartPadding()F
    .locals 1

    .line 1613
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    return v0
.end method

.method public getChipStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1244
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getChipStrokeWidth()F
    .locals 1

    .line 1259
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    return v0
.end method

.method public getChipText()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1295
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getChipTouchBounds(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .line 397
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 398
    return-void
.end method

.method public getCloseIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1442
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCloseIconEndPadding()F
    .locals 1

    .line 1721
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    return v0
.end method

.method public getCloseIconSize()F
    .locals 1

    .line 1490
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    return v0
.end method

.method public getCloseIconStartPadding()F
    .locals 1

    .line 1703
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStartPadding:F

    return v0
.end method

.method public getCloseIconState()[I
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 873
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStateSet:[I

    return-object v0
.end method

.method public getCloseIconTint()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1470
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCloseIconTouchBounds(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .line 405
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 406
    return-void
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1069
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getHideMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1601
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    return-object v0
.end method

.method public getIconEndPadding()F
    .locals 1

    .line 1650
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->iconEndPadding:F

    return v0
.end method

.method public getIconStartPadding()F
    .locals 1

    .line 1629
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->iconStartPadding:F

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 424
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipMinHeight:F

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 411
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    .line 413
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textStartPadding:F

    add-float/2addr v0, v1

    .line 415
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->getChipTextWidth()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    add-float/2addr v0, v1

    .line 417
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconWidth()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 411
    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1091
    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 8
    .param p1, "outline"    # Landroid/graphics/Outline;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1097
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1098
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1099
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_0

    .line 1101
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getIntrinsicHeight()I

    move-result v6

    iget v7, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 1104
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getAlpha()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 1105
    return-void
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1278
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rippleColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getShowMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1588
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->showMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    return-object v0
.end method

.method public getTextAppearance()Lcom/google/android/material/resources/TextAppearance;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1314
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textAppearance:Lcom/google/android/material/resources/TextAppearance;

    return-object v0
.end method

.method public getTextEndPadding()F
    .locals 1

    .line 1687
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    return v0
.end method

.method public getTextStartPadding()F
    .locals 1

    .line 1671
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textStartPadding:F

    return v0
.end method

.method public getUseCompatRipple()Z
    .locals 1

    .line 376
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->useCompatRipple:Z

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1109
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 1110
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 1111
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1113
    :cond_0
    return-void
.end method

.method public isCheckable()Z
    .locals 1

    .line 1508
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkable:Z

    return v0
.end method

.method public isCheckedIconEnabled()Z
    .locals 1

    .line 1533
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIconEnabled:Z

    return v0
.end method

.method public isChipIconEnabled()Z
    .locals 1

    .line 1336
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconEnabled:Z

    return v0
.end method

.method public isCloseIconEnabled()Z
    .locals 1

    .line 1413
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconEnabled:Z

    return v0
.end method

.method public isCloseIconStateful()Z
    .locals 1

    .line 853
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 837
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    .line 838
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->useCompatRipple:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->compatRippleColor:Landroid/content/res/ColorStateList;

    .line 839
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textAppearance:Lcom/google/android/material/resources/TextAppearance;

    .line 840
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Lcom/google/android/material/resources/TextAppearance;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 841
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->canShowCheckedIcon()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 842
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 843
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    .line 844
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 837
    :goto_1
    return v0
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 2
    .param p1, "layoutDirection"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 983
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLayoutDirectionChanged(I)Z

    move-result v0

    .line 985
    .local v0, "invalidate":Z
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 986
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 988
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 989
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 991
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 992
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 995
    :cond_2
    if-eqz v0, :cond_3

    .line 996
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 998
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method protected onLevelChange(I)Z
    .locals 2
    .param p1, "level"    # I

    .line 1003
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    move-result v0

    .line 1005
    .local v0, "invalidate":Z
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1006
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1008
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1009
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1011
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1012
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1015
    :cond_2
    if-eqz v0, :cond_3

    .line 1016
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1018
    :cond_3
    return v0
.end method

.method protected onSizeChange()V
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/chip/ChipDrawable$Delegate;

    .line 387
    .local v0, "delegate":Lcom/google/android/material/chip/ChipDrawable$Delegate;
    if-eqz v0, :cond_0

    .line 388
    invoke-interface {v0}, Lcom/google/android/material/chip/ChipDrawable$Delegate;->onChipDrawableSizeChange()V

    .line 390
    :cond_0
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    .line 878
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconState()[I

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I[I)Z

    move-result v0

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "what"    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "when"    # J

    .line 1117
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 1118
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 1119
    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 1121
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 1047
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    if-eq v0, p1, :cond_0

    .line 1048
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    .line 1049
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1051
    :cond_0
    return-void
.end method

.method public setCheckable(Z)V
    .locals 3
    .param p1, "checkable"    # Z

    .line 1516
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkable:Z

    if-eq v0, p1, :cond_1

    .line 1517
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkable:Z

    .line 1519
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v0

    .line 1520
    .local v0, "oldChipIconWidth":F
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

    if-eqz v1, :cond_0

    .line 1521
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

    .line 1523
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v1

    .line 1525
    .local v1, "newChipIconWidth":F
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1526
    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    .line 1527
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1530
    .end local v0    # "oldChipIconWidth":F
    .end local v1    # "newChipIconWidth":F
    :cond_1
    return-void
.end method

.method public setCheckableResource(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    .line 1512
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setCheckable(Z)V

    .line 1513
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "checkedIcon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1570
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 1571
    .local v0, "oldCheckedIcon":Landroid/graphics/drawable/Drawable;
    if-eq v0, p1, :cond_0

    .line 1572
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v1

    .line 1573
    .local v1, "oldChipIconWidth":F
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 1574
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v2

    .line 1576
    .local v2, "newChipIconWidth":F
    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Lcom/google/android/material/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1577
    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Lcom/google/android/material/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1579
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1580
    cmpl-float v3, v1, v2

    if-eqz v3, :cond_0

    .line 1581
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1584
    .end local v1    # "oldChipIconWidth":F
    .end local v2    # "newChipIconWidth":F
    :cond_0
    return-void
.end method

.method public setCheckedIconEnabled(Z)V
    .locals 4
    .param p1, "checkedIconEnabled"    # Z

    .line 1541
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIconEnabled:Z

    if-eq v0, p1, :cond_2

    .line 1542
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v0

    .line 1543
    .local v0, "oldShowsCheckedIcon":Z
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIconEnabled:Z

    .line 1544
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v1

    .line 1546
    .local v1, "newShowsCheckedIcon":Z
    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1547
    .local v2, "changed":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 1548
    if-eqz v1, :cond_1

    .line 1549
    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Lcom/google/android/material/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1551
    :cond_1
    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Lcom/google/android/material/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1554
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1555
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1558
    .end local v0    # "oldShowsCheckedIcon":Z
    .end local v1    # "newShowsCheckedIcon":Z
    .end local v2    # "changed":Z
    :cond_2
    return-void
.end method

.method public setCheckedIconEnabledResource(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    .line 1537
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconEnabled(Z)V

    .line 1538
    return-void
.end method

.method public setCheckedIconResource(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1566
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1567
    return-void
.end method

.method public setChipBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "chipBackgroundColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1205
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1206
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    .line 1207
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    .line 1209
    :cond_0
    return-void
.end method

.method public setChipBackgroundColorResource(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1201
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    .line 1202
    return-void
.end method

.method public setChipCornerRadius(F)V
    .locals 1
    .param p1, "chipCornerRadius"    # F

    .line 1236
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1237
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    .line 1238
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1240
    :cond_0
    return-void
.end method

.method public setChipCornerRadiusResource(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1232
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setChipCornerRadius(F)V

    .line 1233
    return-void
.end method

.method public setChipEndPadding(F)V
    .locals 1
    .param p1, "chipEndPadding"    # F

    .line 1747
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1748
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    .line 1749
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1750
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1752
    :cond_0
    return-void
.end method

.method public setChipEndPaddingResource(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1743
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setChipEndPadding(F)V

    .line 1744
    return-void
.end method

.method public setChipIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "chipIcon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1373
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 1374
    .local v0, "oldChipIcon":Landroid/graphics/drawable/Drawable;
    if-eq v0, p1, :cond_1

    .line 1375
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v1

    .line 1376
    .local v1, "oldChipIconWidth":F
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 1377
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v2

    .line 1379
    .local v2, "newChipIconWidth":F
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1380
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1381
    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Lcom/google/android/material/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1384
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1385
    cmpl-float v3, v1, v2

    if-eqz v3, :cond_1

    .line 1386
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1389
    .end local v1    # "oldChipIconWidth":F
    .end local v2    # "newChipIconWidth":F
    :cond_1
    return-void
.end method

.method public setChipIconEnabled(Z)V
    .locals 4
    .param p1, "chipIconEnabled"    # Z

    .line 1344
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconEnabled:Z

    if-eq v0, p1, :cond_2

    .line 1345
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    move-result v0

    .line 1346
    .local v0, "oldShowsChipIcon":Z
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconEnabled:Z

    .line 1347
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    move-result v1

    .line 1349
    .local v1, "newShowsChipIcon":Z
    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1350
    .local v2, "changed":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 1351
    if-eqz v1, :cond_1

    .line 1352
    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Lcom/google/android/material/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1354
    :cond_1
    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Lcom/google/android/material/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1357
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1358
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1361
    .end local v0    # "oldShowsChipIcon":Z
    .end local v1    # "newShowsChipIcon":Z
    .end local v2    # "changed":Z
    :cond_2
    return-void
.end method

.method public setChipIconEnabledResource(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    .line 1340
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconEnabled(Z)V

    .line 1341
    return-void
.end method

.method public setChipIconResource(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1369
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1370
    return-void
.end method

.method public setChipIconSize(F)V
    .locals 3
    .param p1, "chipIconSize"    # F

    .line 1400
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1401
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v0

    .line 1402
    .local v0, "oldChipIconWidth":F
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    .line 1403
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v1

    .line 1405
    .local v1, "newChipIconWidth":F
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1406
    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    .line 1407
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1410
    .end local v0    # "oldChipIconWidth":F
    .end local v1    # "newChipIconWidth":F
    :cond_0
    return-void
.end method

.method public setChipIconSizeResource(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1396
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconSize(F)V

    .line 1397
    return-void
.end method

.method public setChipMinHeight(F)V
    .locals 1
    .param p1, "chipMinHeight"    # F

    .line 1220
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipMinHeight:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1221
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipMinHeight:F

    .line 1222
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1223
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1225
    :cond_0
    return-void
.end method

.method public setChipMinHeightResource(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1216
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setChipMinHeight(F)V

    .line 1217
    return-void
.end method

.method public setChipStartPadding(F)V
    .locals 1
    .param p1, "chipStartPadding"    # F

    .line 1621
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1622
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    .line 1623
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1624
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1626
    :cond_0
    return-void
.end method

.method public setChipStartPaddingResource(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1617
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setChipStartPadding(F)V

    .line 1618
    return-void
.end method

.method public setChipStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "chipStrokeColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1252
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1253
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    .line 1254
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    .line 1256
    :cond_0
    return-void
.end method

.method public setChipStrokeColorResource(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1248
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 1249
    return-void
.end method

.method public setChipStrokeWidth(F)V
    .locals 1
    .param p1, "chipStrokeWidth"    # F

    .line 1267
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1268
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    .line 1270
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1272
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1274
    :cond_0
    return-void
.end method

.method public setChipStrokeWidthResource(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1263
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeWidth(F)V

    .line 1264
    return-void
.end method

.method public setChipText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "chipText"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1303
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipText:Ljava/lang/CharSequence;

    if-eq v0, p1, :cond_0

    .line 1304
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipText:Ljava/lang/CharSequence;

    .line 1305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipTextWidthDirty:Z

    .line 1307
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1308
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1310
    :cond_0
    return-void
.end method

.method public setChipTextResource(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1299
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setChipText(Ljava/lang/CharSequence;)V

    .line 1300
    return-void
.end method

.method public setCloseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "closeIcon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1450
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1451
    .local v0, "oldCloseIcon":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eq v0, p1, :cond_3

    .line 1452
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconWidth()F

    move-result v2

    .line 1453
    .local v2, "oldCloseIconWidth":F
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    nop

    :cond_1
    iput-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    .line 1454
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconWidth()F

    move-result v1

    .line 1456
    .local v1, "newCloseIconWidth":F
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1457
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1458
    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Lcom/google/android/material/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1461
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1462
    cmpl-float v3, v2, v1

    if-eqz v3, :cond_3

    .line 1463
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1466
    .end local v1    # "newCloseIconWidth":F
    .end local v2    # "oldCloseIconWidth":F
    :cond_3
    return-void
.end method

.method public setCloseIconEnabled(Z)V
    .locals 4
    .param p1, "closeIconEnabled"    # Z

    .line 1421
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconEnabled:Z

    if-eq v0, p1, :cond_2

    .line 1422
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    .line 1423
    .local v0, "oldShowsCloseIcon":Z
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconEnabled:Z

    .line 1424
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v1

    .line 1426
    .local v1, "newShowsCloseIcon":Z
    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1427
    .local v2, "changed":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 1428
    if-eqz v1, :cond_1

    .line 1429
    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Lcom/google/android/material/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1431
    :cond_1
    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Lcom/google/android/material/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1434
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1435
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1438
    .end local v0    # "oldShowsCloseIcon":Z
    .end local v1    # "newShowsCloseIcon":Z
    .end local v2    # "changed":Z
    :cond_2
    return-void
.end method

.method public setCloseIconEnabledResource(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    .line 1417
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconEnabled(Z)V

    .line 1418
    return-void
.end method

.method public setCloseIconEndPadding(F)V
    .locals 1
    .param p1, "closeIconEndPadding"    # F

    .line 1729
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1730
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    .line 1731
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1732
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1733
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1736
    :cond_0
    return-void
.end method

.method public setCloseIconEndPaddingResource(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1725
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconEndPadding(F)V

    .line 1726
    return-void
.end method

.method public setCloseIconResource(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1446
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1447
    return-void
.end method

.method public setCloseIconSize(F)V
    .locals 1
    .param p1, "closeIconSize"    # F

    .line 1498
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1499
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    .line 1500
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1501
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1502
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1505
    :cond_0
    return-void
.end method

.method public setCloseIconSizeResource(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1494
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconSize(F)V

    .line 1495
    return-void
.end method

.method public setCloseIconStartPadding(F)V
    .locals 1
    .param p1, "closeIconStartPadding"    # F

    .line 1711
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStartPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1712
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStartPadding:F

    .line 1713
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1714
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1715
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1718
    :cond_0
    return-void
.end method

.method public setCloseIconStartPaddingResource(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1707
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconStartPadding(F)V

    .line 1708
    return-void
.end method

.method public setCloseIconState([I)Z
    .locals 1
    .param p1, "stateSet"    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 861
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStateSet:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 862
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStateSet:[I

    .line 863
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I[I)Z

    move-result v0

    return v0

    .line 867
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCloseIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "closeIconTint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1478
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconTint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 1479
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconTint:Landroid/content/res/ColorStateList;

    .line 1481
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1482
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1485
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    .line 1487
    :cond_1
    return-void
.end method

.method public setCloseIconTintResource(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1474
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconTint(Landroid/content/res/ColorStateList;)V

    .line 1475
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1060
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 1061
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    .line 1062
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1064
    :cond_0
    return-void
.end method

.method public setDelegate(Lcom/google/android/material/chip/ChipDrawable$Delegate;)V
    .locals 1
    .param p1, "delegate"    # Lcom/google/android/material/chip/ChipDrawable$Delegate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 381
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->delegate:Ljava/lang/ref/WeakReference;

    .line 382
    return-void
.end method

.method public setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .locals 0
    .param p1, "hideMotionSpec"    # Lcom/google/android/material/animation/MotionSpec;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1609
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 1610
    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param

    .line 1605
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    .line 1606
    return-void
.end method

.method public setIconEndPadding(F)V
    .locals 3
    .param p1, "iconEndPadding"    # F

    .line 1658
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->iconEndPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1659
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v0

    .line 1660
    .local v0, "oldChipIconWidth":F
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->iconEndPadding:F

    .line 1661
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v1

    .line 1663
    .local v1, "newChipIconWidth":F
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1664
    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    .line 1665
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1668
    .end local v0    # "oldChipIconWidth":F
    .end local v1    # "newChipIconWidth":F
    :cond_0
    return-void
.end method

.method public setIconEndPaddingResource(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1654
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setIconEndPadding(F)V

    .line 1655
    return-void
.end method

.method public setIconStartPadding(F)V
    .locals 3
    .param p1, "iconStartPadding"    # F

    .line 1637
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->iconStartPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1638
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v0

    .line 1639
    .local v0, "oldChipIconWidth":F
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->iconStartPadding:F

    .line 1640
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v1

    .line 1642
    .local v1, "newChipIconWidth":F
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1643
    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    .line 1644
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1647
    .end local v0    # "oldChipIconWidth":F
    .end local v1    # "newChipIconWidth":F
    :cond_0
    return-void
.end method

.method public setIconStartPaddingResource(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1633
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setIconStartPadding(F)V

    .line 1634
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "rippleColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1286
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rippleColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1287
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->rippleColor:Landroid/content/res/ColorStateList;

    .line 1288
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->updateCompatRippleColor()V

    .line 1289
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    .line 1291
    :cond_0
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1282
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 1283
    return-void
.end method

.method public setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .locals 0
    .param p1, "showMotionSpec"    # Lcom/google/android/material/animation/MotionSpec;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1596
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->showMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 1597
    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param

    .line 1592
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    .line 1593
    return-void
.end method

.method public setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V
    .locals 2
    .param p1, "textAppearance"    # Lcom/google/android/material/resources/TextAppearance;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1322
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textAppearance:Lcom/google/android/material/resources/TextAppearance;

    if-eq v0, p1, :cond_1

    .line 1323
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->textAppearance:Lcom/google/android/material/resources/TextAppearance;

    .line 1325
    if-eqz p1, :cond_0

    .line 1326
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/resources/TextAppearance;->updateMeasureState(Landroid/content/Context;Landroid/text/TextPaint;)V

    .line 1327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipTextWidthDirty:Z

    .line 1330
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    .line 1331
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1333
    :cond_1
    return-void
.end method

.method public setTextAppearanceResource(I)V
    .locals 2
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1318
    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V

    .line 1319
    return-void
.end method

.method public setTextEndPadding(F)V
    .locals 1
    .param p1, "textEndPadding"    # F

    .line 1695
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1696
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    .line 1697
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1698
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1700
    :cond_0
    return-void
.end method

.method public setTextEndPaddingResource(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1691
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setTextEndPadding(F)V

    .line 1692
    return-void
.end method

.method public setTextStartPadding(F)V
    .locals 1
    .param p1, "textStartPadding"    # F

    .line 1679
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textStartPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1680
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->textStartPadding:F

    .line 1681
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1682
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1684
    :cond_0
    return-void
.end method

.method public setTextStartPaddingResource(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1675
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setTextStartPadding(F)V

    .line 1676
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1074
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1075
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    .line 1076
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    .line 1078
    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1082
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 1083
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1084
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    invoke-static {p0, v0, p1}, Lcom/google/android/material/drawable/DrawableUtils;->updateTintFilter(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 1085
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1087
    :cond_0
    return-void
.end method

.method public setUseCompatRipple(Z)V
    .locals 1
    .param p1, "useCompatRipple"    # Z

    .line 367
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->useCompatRipple:Z

    if-eq v0, p1, :cond_0

    .line 368
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->useCompatRipple:Z

    .line 369
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->updateCompatRippleColor()V

    .line 370
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    .line 372
    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 1023
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 1025
    .local v0, "invalidate":Z
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1026
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1028
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1029
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1031
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1032
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1035
    :cond_2
    if-eqz v0, :cond_3

    .line 1036
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1038
    :cond_3
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "what"    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1125
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 1126
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 1127
    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 1129
    :cond_0
    return-void
.end method
