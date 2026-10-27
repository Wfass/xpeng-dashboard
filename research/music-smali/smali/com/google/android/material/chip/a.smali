.class public Lcom/google/android/material/chip/a;
.super Lakk;
.source "ChipDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroidx/core/graphics/drawable/b;
.implements Lcom/google/android/material/internal/l$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/a$a;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:Landroid/graphics/drawable/ShapeDrawable;


# instance fields
.field private A:Lajd;

.field private B:F

.field private C:F

.field private D:F

.field private E:F

.field private F:F

.field private G:F

.field private H:F

.field private I:F

.field private final J:Landroid/content/Context;

.field private final K:Landroid/graphics/Paint;

.field private final L:Landroid/graphics/Paint;

.field private final M:Landroid/graphics/Paint$FontMetrics;

.field private final N:Landroid/graphics/RectF;

.field private final O:Landroid/graphics/PointF;

.field private final P:Landroid/graphics/Path;

.field private final Q:Lcom/google/android/material/internal/l;

.field private R:I

.field private S:I

.field private T:I

.field private U:I

.field private V:I

.field private W:I

.field private X:Z

.field private Y:I

.field private Z:I

.field private aa:Landroid/graphics/ColorFilter;

.field private ab:Landroid/graphics/PorterDuffColorFilter;

.field private ac:Landroid/content/res/ColorStateList;

.field private ad:Landroid/graphics/PorterDuff$Mode;

.field private ae:[I

.field private af:Z

.field private ag:Landroid/content/res/ColorStateList;

.field private ah:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/material/chip/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private ai:Landroid/text/TextUtils$TruncateAt;

.field private aj:Z

.field private ak:I

.field private al:Z

.field private c:Landroid/content/res/ColorStateList;

.field private d:Landroid/content/res/ColorStateList;

.field private e:F

.field private f:F

.field private g:Landroid/content/res/ColorStateList;

.field private h:F

.field private i:Landroid/content/res/ColorStateList;

.field private j:Ljava/lang/CharSequence;

.field private k:Z

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/content/res/ColorStateList;

.field private n:F

.field private o:Z

.field private p:Z

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:Landroid/content/res/ColorStateList;

.field private t:F

.field private u:Ljava/lang/CharSequence;

.field private v:Z

.field private w:Z

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:Landroid/content/res/ColorStateList;

.field private z:Lajd;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 165
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009e

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/material/chip/a;->a:[I

    .line 169
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    sput-object v0, Lcom/google/android/material/chip/a;->b:Landroid/graphics/drawable/ShapeDrawable;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 311
    invoke-direct {p0, p1, p2, p3, p4}, Lakk;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 175
    iput p2, p0, Lcom/google/android/material/chip/a;->f:F

    .line 241
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/material/chip/a;->K:Landroid/graphics/Paint;

    .line 243
    new-instance p2, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {p2}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/Paint$FontMetrics;

    .line 244
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/RectF;

    .line 245
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/PointF;

    .line 246
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/chip/a;->P:Landroid/graphics/Path;

    const/16 p2, 0xff

    .line 258
    iput p2, p0, Lcom/google/android/material/chip/a;->Z:I

    .line 262
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Lcom/google/android/material/chip/a;->ad:Landroid/graphics/PorterDuff$Mode;

    .line 266
    new-instance p2, Ljava/lang/ref/WeakReference;

    const/4 p4, 0x0

    invoke-direct {p2, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/material/chip/a;->ah:Ljava/lang/ref/WeakReference;

    .line 312
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->a(Landroid/content/Context;)V

    .line 314
    iput-object p1, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    .line 315
    new-instance p2, Lcom/google/android/material/internal/l;

    invoke-direct {p2, p0}, Lcom/google/android/material/internal/l;-><init>(Lcom/google/android/material/internal/l$a;)V

    iput-object p2, p0, Lcom/google/android/material/chip/a;->Q:Lcom/google/android/material/internal/l;

    const-string p2, ""

    .line 317
    iput-object p2, p0, Lcom/google/android/material/chip/a;->j:Ljava/lang/CharSequence;

    .line 319
    iget-object p2, p0, Lcom/google/android/material/chip/a;->Q:Lcom/google/android/material/internal/l;

    invoke-virtual {p2}, Lcom/google/android/material/internal/l;->a()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p2, Landroid/text/TextPaint;->density:F

    .line 320
    iput-object p4, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/Paint;

    .line 321
    iget-object p1, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    .line 322
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 325
    :cond_0
    sget-object p1, Lcom/google/android/material/chip/a;->a:[I

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->setState([I)Z

    .line 326
    sget-object p1, Lcom/google/android/material/chip/a;->a:[I

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->a([I)Z

    .line 327
    iput-boolean p3, p0, Lcom/google/android/material/chip/a;->aj:Z

    .line 329
    sget-boolean p1, Laka;->a:Z

    if-eqz p1, :cond_1

    .line 331
    sget-object p1, Lcom/google/android/material/chip/a;->b:Landroid/graphics/drawable/ShapeDrawable;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/ShapeDrawable;->setTint(I)V

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/chip/a;
    .locals 1

    .line 279
    new-instance v0, Lcom/google/android/material/chip/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/material/chip/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 280
    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/material/chip/a;->a(Landroid/util/AttributeSet;II)V

    return-object v0
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 3

    .line 630
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->al:Z

    if-nez v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/chip/a;->R:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 632
    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 633
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 634
    iget-object p2, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->j()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->j()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/chip/a;->K:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 3

    .line 813
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 815
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ah()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ai()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 816
    :cond_0
    iget v0, p0, Lcom/google/android/material/chip/a;->B:F

    iget v1, p0, Lcom/google/android/material/chip/a;->C:F

    add-float/2addr v0, v1

    .line 817
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->al()F

    move-result v1

    .line 819
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->i(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    if-nez v2, :cond_1

    .line 820
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    iput v2, p2, Landroid/graphics/RectF;->left:F

    .line 821
    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 823
    :cond_1
    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iput v2, p2, Landroid/graphics/RectF;->right:F

    .line 824
    iget v0, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 827
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->am()F

    move-result v0

    .line 828
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    sub-float/2addr p1, v1

    iput p1, p2, Landroid/graphics/RectF;->top:F

    .line 829
    iget p1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, v0

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    :cond_2
    return-void
.end method

.method private a(Landroid/util/AttributeSet;II)V
    .locals 7

    .line 337
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    sget-object v2, Laiv$l;->Chip:[I

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v1, p1

    move v3, p2

    move v4, p3

    .line 338
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/o;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 341
    sget p3, Laiv$l;->Chip_shapeAppearance:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/material/chip/a;->al:Z

    .line 342
    iget-object p3, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    sget v0, Laiv$l;->Chip_chipSurfaceColor:I

    .line 343
    invoke-static {p3, p2, v0}, Lajv;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 342
    invoke-direct {p0, p3}, Lcom/google/android/material/chip/a;->j(Landroid/content/res/ColorStateList;)V

    .line 344
    iget-object p3, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    sget v0, Laiv$l;->Chip_chipBackgroundColor:I

    .line 345
    invoke-static {p3, p2, v0}, Lajv;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 344
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->a(Landroid/content/res/ColorStateList;)V

    .line 346
    sget p3, Laiv$l;->Chip_chipMinHeight:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->a(F)V

    .line 347
    sget p3, Laiv$l;->Chip_chipCornerRadius:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 348
    sget p3, Laiv$l;->Chip_chipCornerRadius:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->b(F)V

    .line 350
    :cond_0
    iget-object p3, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    sget v1, Laiv$l;->Chip_chipStrokeColor:I

    .line 351
    invoke-static {p3, p2, v1}, Lajv;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 350
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->b(Landroid/content/res/ColorStateList;)V

    .line 352
    sget p3, Laiv$l;->Chip_chipStrokeWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->c(F)V

    .line 353
    iget-object p3, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    sget v1, Laiv$l;->Chip_rippleColor:I

    invoke-static {p3, p2, v1}, Lajv;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->c(Landroid/content/res/ColorStateList;)V

    .line 355
    sget p3, Laiv$l;->Chip_android_text:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->a(Ljava/lang/CharSequence;)V

    .line 356
    iget-object p3, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    sget v1, Laiv$l;->Chip_android_textAppearance:I

    .line 357
    invoke-static {p3, p2, v1}, Lajv;->c(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lajw;

    move-result-object p3

    .line 358
    sget v1, Laiv$l;->Chip_android_textSize:I

    iget v2, p3, Lajw;->n:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 359
    iput v1, p3, Lajw;->n:F

    .line 360
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->a(Lajw;)V

    .line 362
    sget p3, Laiv$l;->Chip_android_ellipsize:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    const/4 v1, 0x1

    if-eq p3, v1, :cond_3

    const/4 v1, 0x2

    if-eq p3, v1, :cond_2

    const/4 v1, 0x3

    if-eq p3, v1, :cond_1

    goto :goto_0

    .line 372
    :cond_1
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->a(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 369
    :cond_2
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->a(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 366
    :cond_3
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->a(Landroid/text/TextUtils$TruncateAt;)V

    .line 380
    :goto_0
    sget p3, Laiv$l;->Chip_chipIconVisible:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->b(Z)V

    const-string p3, "http://schemas.android.com/apk/res-auto"

    if-eqz p1, :cond_4

    const-string v1, "chipIconEnabled"

    .line 384
    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "chipIconVisible"

    .line 385
    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 386
    sget v1, Laiv$l;->Chip_chipIconEnabled:I

    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->b(Z)V

    .line 388
    :cond_4
    iget-object v1, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    sget v2, Laiv$l;->Chip_chipIcon:I

    invoke-static {v1, p2, v2}, Lajv;->b(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 389
    sget v1, Laiv$l;->Chip_chipIconTint:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 390
    iget-object v1, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    sget v2, Laiv$l;->Chip_chipIconTint:I

    .line 391
    invoke-static {v1, p2, v2}, Lajv;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 390
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->d(Landroid/content/res/ColorStateList;)V

    .line 393
    :cond_5
    sget v1, Laiv$l;->Chip_chipIconSize:I

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->d(F)V

    .line 395
    sget v1, Laiv$l;->Chip_closeIconVisible:I

    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->c(Z)V

    if-eqz p1, :cond_6

    const-string v1, "closeIconEnabled"

    .line 400
    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, "closeIconVisible"

    .line 401
    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    .line 402
    sget v1, Laiv$l;->Chip_closeIconEnabled:I

    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->c(Z)V

    .line 404
    :cond_6
    iget-object v1, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    sget v2, Laiv$l;->Chip_closeIcon:I

    invoke-static {v1, p2, v2}, Lajv;->b(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->b(Landroid/graphics/drawable/Drawable;)V

    .line 405
    iget-object v1, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    sget v2, Laiv$l;->Chip_closeIconTint:I

    .line 406
    invoke-static {v1, p2, v2}, Lajv;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 405
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->e(Landroid/content/res/ColorStateList;)V

    .line 407
    sget v1, Laiv$l;->Chip_closeIconSize:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->e(F)V

    .line 409
    sget v1, Laiv$l;->Chip_android_checkable:I

    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->d(Z)V

    .line 410
    sget v1, Laiv$l;->Chip_checkedIconVisible:I

    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->e(Z)V

    if-eqz p1, :cond_7

    const-string v1, "checkedIconEnabled"

    .line 415
    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v1, "checkedIconVisible"

    .line 416
    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    .line 417
    sget p1, Laiv$l;->Chip_checkedIconEnabled:I

    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->e(Z)V

    .line 419
    :cond_7
    iget-object p1, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    sget p3, Laiv$l;->Chip_checkedIcon:I

    invoke-static {p1, p2, p3}, Lajv;->b(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->c(Landroid/graphics/drawable/Drawable;)V

    .line 420
    sget p1, Laiv$l;->Chip_checkedIconTint:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 421
    iget-object p1, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    sget p3, Laiv$l;->Chip_checkedIconTint:I

    .line 422
    invoke-static {p1, p2, p3}, Lajv;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 421
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->f(Landroid/content/res/ColorStateList;)V

    .line 425
    :cond_8
    iget-object p1, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    sget p3, Laiv$l;->Chip_showMotionSpec:I

    invoke-static {p1, p2, p3}, Lajd;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lajd;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->a(Lajd;)V

    .line 426
    iget-object p1, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    sget p3, Laiv$l;->Chip_hideMotionSpec:I

    invoke-static {p1, p2, p3}, Lajd;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lajd;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->b(Lajd;)V

    .line 428
    sget p1, Laiv$l;->Chip_chipStartPadding:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->f(F)V

    .line 429
    sget p1, Laiv$l;->Chip_iconStartPadding:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->g(F)V

    .line 430
    sget p1, Laiv$l;->Chip_iconEndPadding:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->h(F)V

    .line 431
    sget p1, Laiv$l;->Chip_textStartPadding:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->i(F)V

    .line 432
    sget p1, Laiv$l;->Chip_textEndPadding:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->j(F)V

    .line 433
    sget p1, Laiv$l;->Chip_closeIconStartPadding:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->k(F)V

    .line 434
    sget p1, Laiv$l;->Chip_closeIconEndPadding:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->l(F)V

    .line 435
    sget p1, Laiv$l;->Chip_chipEndPadding:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->m(F)V

    .line 437
    sget p1, Laiv$l;->Chip_android_maxWidth:I

    const p3, 0x7fffffff

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->C(I)V

    .line 439
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static a([II)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1366
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    if-ne v3, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private a([I[I)Z
    .locals 6

    .line 1023
    invoke-super {p0, p1}, Lakk;->onStateChange([I)Z

    move-result v0

    .line 1026
    iget-object v1, p0, Lcom/google/android/material/chip/a;->c:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v3, p0, Lcom/google/android/material/chip/a;->R:I

    .line 1028
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1030
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->D(I)I

    move-result v1

    .line 1031
    iget v3, p0, Lcom/google/android/material/chip/a;->R:I

    const/4 v4, 0x1

    if-eq v3, v1, :cond_1

    .line 1032
    iput v1, p0, Lcom/google/android/material/chip/a;->R:I

    move v0, v4

    .line 1036
    :cond_1
    iget-object v3, p0, Lcom/google/android/material/chip/a;->d:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    iget v5, p0, Lcom/google/android/material/chip/a;->S:I

    .line 1038
    invoke-virtual {v3, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v2

    .line 1040
    :goto_1
    invoke-virtual {p0, v3}, Lcom/google/android/material/chip/a;->D(I)I

    move-result v3

    .line 1041
    iget v5, p0, Lcom/google/android/material/chip/a;->S:I

    if-eq v5, v3, :cond_3

    .line 1042
    iput v3, p0, Lcom/google/android/material/chip/a;->S:I

    move v0, v4

    .line 1047
    :cond_3
    invoke-static {v1, v3}, Lajj;->a(II)I

    move-result v1

    .line 1048
    iget v3, p0, Lcom/google/android/material/chip/a;->T:I

    if-eq v3, v1, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    move v3, v2

    .line 1050
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->N()Landroid/content/res/ColorStateList;

    move-result-object v5

    if-nez v5, :cond_5

    move v5, v4

    goto :goto_3

    :cond_5
    move v5, v2

    :goto_3
    or-int/2addr v3, v5

    if-eqz v3, :cond_6

    .line 1052
    iput v1, p0, Lcom/google/android/material/chip/a;->T:I

    .line 1053
    iget v0, p0, Lcom/google/android/material/chip/a;->T:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->g(Landroid/content/res/ColorStateList;)V

    move v0, v4

    .line 1057
    :cond_6
    iget-object v1, p0, Lcom/google/android/material/chip/a;->g:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_7

    iget v3, p0, Lcom/google/android/material/chip/a;->U:I

    .line 1059
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_4

    :cond_7
    move v1, v2

    .line 1061
    :goto_4
    iget v3, p0, Lcom/google/android/material/chip/a;->U:I

    if-eq v3, v1, :cond_8

    .line 1062
    iput v1, p0, Lcom/google/android/material/chip/a;->U:I

    move v0, v4

    .line 1066
    :cond_8
    iget-object v1, p0, Lcom/google/android/material/chip/a;->ag:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_9

    .line 1067
    invoke-static {p1}, Laka;->a([I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/material/chip/a;->ag:Landroid/content/res/ColorStateList;

    iget v3, p0, Lcom/google/android/material/chip/a;->V:I

    .line 1068
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_5

    :cond_9
    move v1, v2

    .line 1070
    :goto_5
    iget v3, p0, Lcom/google/android/material/chip/a;->V:I

    if-eq v3, v1, :cond_a

    .line 1071
    iput v1, p0, Lcom/google/android/material/chip/a;->V:I

    .line 1072
    iget-boolean v1, p0, Lcom/google/android/material/chip/a;->af:Z

    if-eqz v1, :cond_a

    move v0, v4

    .line 1077
    :cond_a
    iget-object v1, p0, Lcom/google/android/material/chip/a;->Q:Lcom/google/android/material/internal/l;

    .line 1078
    invoke-virtual {v1}, Lcom/google/android/material/internal/l;->b()Lajw;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/material/chip/a;->Q:Lcom/google/android/material/internal/l;

    .line 1079
    invoke-virtual {v1}, Lcom/google/android/material/internal/l;->b()Lajw;

    move-result-object v1

    iget-object v1, v1, Lajw;->a:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/material/chip/a;->Q:Lcom/google/android/material/internal/l;

    .line 1081
    invoke-virtual {v1}, Lcom/google/android/material/internal/l;->b()Lajw;

    move-result-object v1

    iget-object v1, v1, Lajw;->a:Landroid/content/res/ColorStateList;

    iget v3, p0, Lcom/google/android/material/chip/a;->W:I

    .line 1083
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_6

    :cond_b
    move v1, v2

    .line 1085
    :goto_6
    iget v3, p0, Lcom/google/android/material/chip/a;->W:I

    if-eq v3, v1, :cond_c

    .line 1086
    iput v1, p0, Lcom/google/android/material/chip/a;->W:I

    move v0, v4

    .line 1090
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object v1

    const v3, 0x10100a0

    invoke-static {v1, v3}, Lcom/google/android/material/chip/a;->a([II)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/google/android/material/chip/a;->v:Z

    if-eqz v1, :cond_d

    move v1, v4

    goto :goto_7

    :cond_d
    move v1, v2

    .line 1091
    :goto_7
    iget-boolean v3, p0, Lcom/google/android/material/chip/a;->X:Z

    if-eq v3, v1, :cond_f

    iget-object v3, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_f

    .line 1092
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v0

    .line 1093
    iput-boolean v1, p0, Lcom/google/android/material/chip/a;->X:Z

    .line 1094
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_e

    move v0, v4

    move v1, v0

    goto :goto_8

    :cond_e
    move v1, v2

    move v0, v4

    goto :goto_8

    :cond_f
    move v1, v2

    .line 1102
    :goto_8
    iget-object v3, p0, Lcom/google/android/material/chip/a;->ac:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_10

    iget v5, p0, Lcom/google/android/material/chip/a;->Y:I

    invoke-virtual {v3, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_9

    :cond_10
    move v3, v2

    .line 1103
    :goto_9
    iget v5, p0, Lcom/google/android/material/chip/a;->Y:I

    if-eq v5, v3, :cond_11

    .line 1104
    iput v3, p0, Lcom/google/android/material/chip/a;->Y:I

    .line 1105
    iget-object v0, p0, Lcom/google/android/material/chip/a;->ac:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lcom/google/android/material/chip/a;->ad:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, v0, v3}, Lajl;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/chip/a;->ab:Landroid/graphics/PorterDuffColorFilter;

    move v0, v4

    .line 1109
    :cond_11
    iget-object v3, p0, Lcom/google/android/material/chip/a;->l:Landroid/graphics/drawable/Drawable;

    invoke-static {v3}, Lcom/google/android/material/chip/a;->d(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1110
    iget-object v3, p0, Lcom/google/android/material/chip/a;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v0, v3

    .line 1112
    :cond_12
    iget-object v3, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    invoke-static {v3}, Lcom/google/android/material/chip/a;->d(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1113
    iget-object v3, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v0, v3

    .line 1115
    :cond_13
    iget-object v3, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {v3}, Lcom/google/android/material/chip/a;->d(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1120
    array-length v3, p1

    array-length v4, p2

    add-int/2addr v3, v4

    new-array v3, v3, [I

    .line 1121
    array-length v4, p1

    invoke-static {p1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1122
    array-length p1, p1

    array-length v4, p2

    invoke-static {p2, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1124
    iget-object p1, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v0, p1

    .line 1127
    :cond_14
    sget-boolean p1, Laka;->a:Z

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/google/android/material/chip/a;->r:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/google/android/material/chip/a;->d(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 1128
    iget-object p1, p0, Lcom/google/android/material/chip/a;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_15
    if-eqz v0, :cond_16

    .line 1132
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    :cond_16
    if-eqz v1, :cond_17

    .line 1135
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_17
    return v0
.end method

.method private ah()Z
    .locals 1

    .line 508
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ai()Z
    .locals 1

    .line 513
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->w:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->X:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private aj()Z
    .locals 1

    .line 518
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ak()Z
    .locals 1

    .line 523
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->w:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->v:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private al()F
    .locals 3

    .line 539
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->X:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/a;->l:Landroid/graphics/drawable/Drawable;

    .line 540
    :goto_0
    iget v1, p0, Lcom/google/android/material/chip/a;->n:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    if-eqz v0, :cond_1

    .line 541
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 543
    :cond_1
    iget v0, p0, Lcom/google/android/material/chip/a;->n:F

    return v0
.end method

.method private am()F
    .locals 3

    .line 551
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->X:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/a;->l:Landroid/graphics/drawable/Drawable;

    .line 552
    :goto_0
    iget v1, p0, Lcom/google/android/material/chip/a;->n:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    if-eqz v0, :cond_2

    .line 553
    iget-object v1, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    const/16 v2, 0x18

    invoke-static {v1, v2}, Lcom/google/android/material/internal/u;->a(Landroid/content/Context;I)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 554
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_1

    .line 555
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_1
    return v1

    .line 560
    :cond_2
    iget v0, p0, Lcom/google/android/material/chip/a;->n:F

    return v0
.end method

.method private an()F
    .locals 2

    .line 869
    iget-object v0, p0, Lcom/google/android/material/chip/a;->Q:Lcom/google/android/material/internal/l;

    invoke-virtual {v0}, Lcom/google/android/material/internal/l;->a()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 870
    iget-object v0, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget-object v1, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private ao()Landroid/graphics/ColorFilter;
    .locals 1

    .line 1345
    iget-object v0, p0, Lcom/google/android/material/chip/a;->aa:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/a;->ab:Landroid/graphics/PorterDuffColorFilter;

    :goto_0
    return-object v0
.end method

.method private ap()V
    .locals 1

    .line 1349
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->af:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->i:Landroid/content/res/ColorStateList;

    .line 1350
    invoke-static {v0}, Laka;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/material/chip/a;->ag:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private aq()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1877
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    .line 1879
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->m()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v1}, Laka;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/google/android/material/chip/a;->b:Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/google/android/material/chip/a;->r:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private b(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 3

    .line 639
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->al:Z

    if-nez v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/chip/a;->S:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 641
    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 642
    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ao()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 643
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 644
    iget-object p2, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->j()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->j()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/chip/a;->K:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private b(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 3

    .line 878
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 880
    iget-object v0, p0, Lcom/google/android/material/chip/a;->j:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 881
    iget v0, p0, Lcom/google/android/material/chip/a;->B:F

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->E:F

    add-float/2addr v0, v1

    .line 882
    iget v1, p0, Lcom/google/android/material/chip/a;->I:F

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->d()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/chip/a;->F:F

    add-float/2addr v1, v2

    .line 884
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->i(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    if-nez v2, :cond_0

    .line 885
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    iput v2, p2, Landroid/graphics/RectF;->left:F

    .line 886
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 888
    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    iput v2, p2, Landroid/graphics/RectF;->left:F

    .line 889
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 894
    :goto_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 895
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method private static b(Lajw;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1149
    iget-object v0, p0, Lajw;->a:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lajw;->a:Landroid/content/res/ColorStateList;

    .line 1151
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private c(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 6

    .line 653
    iget v0, p0, Lcom/google/android/material/chip/a;->h:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->al:Z

    if-nez v0, :cond_1

    .line 654
    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/chip/a;->U:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 655
    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 656
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->al:Z

    if-nez v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ao()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/RectF;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/material/chip/a;->h:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v4, p0, Lcom/google/android/material/chip/a;->h:F

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    iget v4, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p0, Lcom/google/android/material/chip/a;->h:F

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    iget v5, p0, Lcom/google/android/material/chip/a;->h:F

    div-float/2addr v5, v3

    sub-float/2addr p2, v5

    invoke-virtual {v0, v1, v2, v4, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 666
    iget p2, p0, Lcom/google/android/material/chip/a;->f:F

    iget v0, p0, Lcom/google/android/material/chip/a;->h:F

    div-float/2addr v0, v3

    sub-float/2addr p2, v0

    .line 667
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/chip/a;->K:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private c(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2

    .line 904
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 906
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->aj()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 907
    iget v0, p0, Lcom/google/android/material/chip/a;->I:F

    iget v1, p0, Lcom/google/android/material/chip/a;->H:F

    add-float/2addr v0, v1

    .line 909
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->i(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_0

    .line 910
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 911
    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/google/android/material/chip/a;->t:F

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 913
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 914
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/google/android/material/chip/a;->t:F

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 917
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    iget v0, p0, Lcom/google/android/material/chip/a;->t:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    iput p1, p2, Landroid/graphics/RectF;->top:F

    .line 918
    iget p1, p2, Landroid/graphics/RectF;->top:F

    iget v0, p0, Lcom/google/android/material/chip/a;->t:F

    add-float/2addr p1, v0

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method private d(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 3

    .line 672
    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/chip/a;->V:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 673
    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 674
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 675
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->al:Z

    if-nez v0, :cond_0

    .line 676
    iget-object p2, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->j()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->j()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/chip/a;->K:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 678
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/google/android/material/chip/a;->P:Landroid/graphics/Path;

    invoke-virtual {p0, v0, p2}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 679
    iget-object p2, p0, Lcom/google/android/material/chip/a;->K:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/android/material/chip/a;->P:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->R()Landroid/graphics/RectF;

    move-result-object v1

    invoke-super {p0, p1, p2, v0, v1}, Lakk;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Landroid/graphics/RectF;)V

    :goto_0
    return-void
.end method

.method private d(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2

    .line 923
    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 925
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->aj()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 926
    iget v0, p0, Lcom/google/android/material/chip/a;->I:F

    iget v1, p0, Lcom/google/android/material/chip/a;->H:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->t:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->G:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->F:F

    add-float/2addr v0, v1

    .line 933
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->i(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_0

    .line 934
    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    sub-float/2addr p1, v0

    iput p1, p2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 936
    :cond_0
    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    add-float/2addr p1, v0

    iput p1, p2, Landroid/graphics/RectF;->left:F

    :cond_1
    :goto_0
    return-void
.end method

.method private static d(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1145
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private e(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 5

    .line 684
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ah()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 686
    iget-object p2, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    .line 687
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 689
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 691
    iget-object v1, p0, Lcom/google/android/material/chip/a;->l:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 692
    iget-object v1, p0, Lcom/google/android/material/chip/a;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float p2, p2

    neg-float v0, v0

    .line 694
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    return-void
.end method

.method private e(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2

    .line 942
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 944
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->aj()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 945
    iget v0, p0, Lcom/google/android/material/chip/a;->I:F

    iget v1, p0, Lcom/google/android/material/chip/a;->H:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->t:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->G:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->F:F

    add-float/2addr v0, v1

    .line 952
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->i(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_0

    .line 953
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 954
    iget v1, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 956
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 957
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 960
    :goto_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 961
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method private e(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1310
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method private f(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 5

    .line 699
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ai()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 701
    iget-object p2, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    .line 702
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 704
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 706
    iget-object v1, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 707
    iget-object v1, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float p2, p2

    neg-float v0, v0

    .line 709
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    return-void
.end method

.method private f(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1319
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1320
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->i(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;I)Z

    .line 1321
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1322
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1324
    iget-object v0, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    .line 1325
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1326
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->g()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1328
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->s:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    .line 1331
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1332
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1334
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/chip/a;->l:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_4

    iget-boolean p1, p0, Lcom/google/android/material/chip/a;->o:Z

    if-eqz p1, :cond_4

    .line 1335
    iget-object p1, p0, Lcom/google/android/material/chip/a;->m:Landroid/content/res/ColorStateList;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_4
    return-void
.end method

.method private g(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 9

    .line 715
    iget-object v0, p0, Lcom/google/android/material/chip/a;->j:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 716
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/PointF;

    invoke-virtual {p0, p2, v0}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/Rect;Landroid/graphics/PointF;)Landroid/graphics/Paint$Align;

    move-result-object v0

    .line 719
    iget-object v1, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v1}, Lcom/google/android/material/chip/a;->b(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 721
    iget-object p2, p0, Lcom/google/android/material/chip/a;->Q:Lcom/google/android/material/internal/l;

    invoke-virtual {p2}, Lcom/google/android/material/internal/l;->b()Lajw;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 722
    iget-object p2, p0, Lcom/google/android/material/chip/a;->Q:Lcom/google/android/material/internal/l;

    invoke-virtual {p2}, Lcom/google/android/material/internal/l;->a()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object v1

    iput-object v1, p2, Landroid/text/TextPaint;->drawableState:[I

    .line 723
    iget-object p2, p0, Lcom/google/android/material/chip/a;->Q:Lcom/google/android/material/internal/l;

    iget-object v1, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    invoke-virtual {p2, v1}, Lcom/google/android/material/internal/l;->a(Landroid/content/Context;)V

    .line 725
    :cond_0
    iget-object p2, p0, Lcom/google/android/material/chip/a;->Q:Lcom/google/android/material/internal/l;

    invoke-virtual {p2}, Lcom/google/android/material/internal/l;->a()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 727
    iget-object p2, p0, Lcom/google/android/material/chip/a;->Q:Lcom/google/android/material/internal/l;

    .line 728
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->n()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/internal/l;->a(Ljava/lang/String;)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/RectF;

    .line 729
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    if-le p2, v0, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    if-eqz p2, :cond_2

    .line 732
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 733
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 736
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/chip/a;->j:Ljava/lang/CharSequence;

    if-eqz p2, :cond_3

    .line 737
    iget-object v2, p0, Lcom/google/android/material/chip/a;->ai:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_3

    .line 738
    iget-object v2, p0, Lcom/google/android/material/chip/a;->Q:Lcom/google/android/material/internal/l;

    .line 739
    invoke-virtual {v2}, Lcom/google/android/material/internal/l;->a()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/chip/a;->ai:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_3
    move-object v3, v0

    const/4 v4, 0x0

    .line 742
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/PointF;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/PointF;

    iget v7, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/google/android/material/chip/a;->Q:Lcom/google/android/material/internal/l;

    invoke-virtual {v0}, Lcom/google/android/material/internal/l;->a()Landroid/text/TextPaint;

    move-result-object v8

    move-object v2, p1

    .line 741
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    if-eqz p2, :cond_4

    .line 744
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    return-void
.end method

.method private h(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 5

    .line 750
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->aj()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 751
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/a;->c(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 752
    iget-object p2, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    .line 753
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 755
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 757
    iget-object v1, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 759
    sget-boolean v1, Laka;->a:Z

    if-eqz v1, :cond_0

    .line 760
    iget-object v1, p0, Lcom/google/android/material/chip/a;->r:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 761
    iget-object v1, p0, Lcom/google/android/material/chip/a;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 762
    iget-object v1, p0, Lcom/google/android/material/chip/a;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 764
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    neg-float p2, p2

    neg-float v0, v0

    .line 767
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    return-void
.end method

.method private i(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 9

    .line 772
    iget-object v0, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/Paint;

    if-eqz v0, :cond_4

    const/high16 v1, -0x1000000

    const/16 v2, 0x7f

    .line 773
    invoke-static {v1, v2}, Ldu;->c(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 776
    iget-object v0, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 779
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ah()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ai()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 781
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 785
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->j:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 786
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    .line 787
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    iget-object v8, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/Paint;

    move-object v3, p1

    .line 786
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 791
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->aj()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 792
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/a;->c(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 793
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 797
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-static {v1, v2}, Ldu;->c(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 798
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/a;->d(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 799
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 802
    iget-object v0, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-static {v1, v2}, Ldu;->c(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 803
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/a;->e(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 804
    iget-object p2, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method private static i(Landroid/content/res/ColorStateList;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1141
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private j(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1354
    iget-object v0, p0, Lcom/google/android/material/chip/a;->c:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1355
    iput-object p1, p0, Lcom/google/android/material/chip/a;->c:Landroid/content/res/ColorStateList;

    .line 1356
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public A()Landroid/content/res/ColorStateList;
    .locals 1

    .line 2057
    iget-object v0, p0, Lcom/google/android/material/chip/a;->y:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public A(I)V
    .locals 1

    .line 2384
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->l(F)V

    return-void
.end method

.method public B()Lajd;
    .locals 1

    .line 2097
    iget-object v0, p0, Lcom/google/android/material/chip/a;->z:Lajd;

    return-object v0
.end method

.method public B(I)V
    .locals 1

    .line 2420
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->m(F)V

    return-void
.end method

.method public C()Lajd;
    .locals 1

    .line 2128
    iget-object v0, p0, Lcom/google/android/material/chip/a;->A:Lajd;

    return-object v0
.end method

.method public C(I)V
    .locals 0

    .line 2453
    iput p1, p0, Lcom/google/android/material/chip/a;->ak:I

    return-void
.end method

.method public D()F
    .locals 1

    .line 2158
    iget v0, p0, Lcom/google/android/material/chip/a;->B:F

    return v0
.end method

.method public E()F
    .locals 1

    .line 2192
    iget v0, p0, Lcom/google/android/material/chip/a;->C:F

    return v0
.end method

.method public F()F
    .locals 1

    .line 2231
    iget v0, p0, Lcom/google/android/material/chip/a;->D:F

    return v0
.end method

.method public G()F
    .locals 1

    .line 2270
    iget v0, p0, Lcom/google/android/material/chip/a;->E:F

    return v0
.end method

.method public H()F
    .locals 1

    .line 2304
    iget v0, p0, Lcom/google/android/material/chip/a;->F:F

    return v0
.end method

.method public I()F
    .locals 1

    .line 2338
    iget v0, p0, Lcom/google/android/material/chip/a;->G:F

    return v0
.end method

.method public J()F
    .locals 1

    .line 2374
    iget v0, p0, Lcom/google/android/material/chip/a;->H:F

    return v0
.end method

.method public K()F
    .locals 1

    .line 2410
    iget v0, p0, Lcom/google/android/material/chip/a;->I:F

    return v0
.end method

.method L()Z
    .locals 1

    .line 2457
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->aj:Z

    return v0
.end method

.method a(Landroid/graphics/Rect;Landroid/graphics/PointF;)Landroid/graphics/Paint$Align;
    .locals 2

    const/4 v0, 0x0

    .line 836
    invoke-virtual {p2, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 837
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 839
    iget-object v1, p0, Lcom/google/android/material/chip/a;->j:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 840
    iget v0, p0, Lcom/google/android/material/chip/a;->B:F

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->E:F

    add-float/2addr v0, v1

    .line 842
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->i(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_0

    .line 843
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/PointF;->x:F

    .line 844
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_0

    .line 846
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/PointF;->x:F

    .line 847
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 850
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->an()F

    move-result v1

    sub-float/2addr p1, v1

    iput p1, p2, Landroid/graphics/PointF;->y:F

    :cond_1
    return-object v0
.end method

.method public a(F)V
    .locals 1

    .line 1453
    iget v0, p0, Lcom/google/android/material/chip/a;->e:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1454
    iput p1, p0, Lcom/google/android/material/chip/a;->e:F

    .line 1455
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1456
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 1410
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    invoke-static {v0, p1}, Lf;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->a(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public a(Lajd;)V
    .locals 0

    .line 2117
    iput-object p1, p0, Lcom/google/android/material/chip/a;->z:Lajd;

    return-void
.end method

.method public a(Lajw;)V
    .locals 2

    .line 1637
    iget-object v0, p0, Lcom/google/android/material/chip/a;->Q:Lcom/google/android/material/internal/l;

    iget-object v1, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/internal/l;->a(Lajw;Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1420
    iget-object v0, p0, Lcom/google/android/material/chip/a;->d:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1421
    iput-object p1, p0, Lcom/google/android/material/chip/a;->d:Landroid/content/res/ColorStateList;

    .line 1422
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/RectF;)V
    .locals 1

    .line 482
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/chip/a;->e(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1704
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->q()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_2

    .line 1706
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v1

    if-eqz p1, :cond_0

    .line 1707
    invoke-static {p1}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/material/chip/a;->l:Landroid/graphics/drawable/Drawable;

    .line 1708
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result p1

    .line 1710
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/a;->e(Landroid/graphics/drawable/Drawable;)V

    .line 1711
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ah()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1712
    iget-object v0, p0, Lcom/google/android/material/chip/a;->l:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/a;->f(Landroid/graphics/drawable/Drawable;)V

    .line 1715
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_2

    .line 1717
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_2
    return-void
.end method

.method public a(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0

    .line 1645
    iput-object p1, p0, Lcom/google/android/material/chip/a;->ai:Landroid/text/TextUtils$TruncateAt;

    return-void
.end method

.method public a(Lcom/google/android/material/chip/a$a;)V
    .locals 1

    .line 458
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/chip/a;->ah:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1619
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/a;->j:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1620
    iput-object p1, p0, Lcom/google/android/material/chip/a;->j:Ljava/lang/CharSequence;

    .line 1621
    iget-object p1, p0, Lcom/google/android/material/chip/a;->Q:Lcom/google/android/material/internal/l;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/l;->a(Z)V

    .line 1622
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1623
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 444
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->af:Z

    if-eq v0, p1, :cond_0

    .line 445
    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->af:Z

    .line 446
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ap()V

    .line 447
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 453
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->af:Z

    return v0
.end method

.method public a([I)Z
    .locals 1

    .line 991
    iget-object v0, p0, Lcom/google/android/material/chip/a;->ae:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 992
    iput-object p1, p0, Lcom/google/android/material/chip/a;->ae:[I

    .line 993
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->aj()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 994
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/chip/a;->a([I[I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected b()V
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/google/android/material/chip/a;->ah:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/chip/a$a;

    if-eqz v0, :cond_0

    .line 465
    invoke-interface {v0}, Lcom/google/android/material/chip/a$a;->a()V

    :cond_0
    return-void
.end method

.method public b(F)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1489
    iget v0, p0, Lcom/google/android/material/chip/a;->f:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1490
    iput p1, p0, Lcom/google/android/material/chip/a;->f:F

    .line 1492
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->M()Lakp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lakp;->a(F)Lakp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->setShapeAppearanceModel(Lakp;)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 1443
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->a(F)V

    return-void
.end method

.method public b(Lajd;)V
    .locals 0

    .line 2148
    iput-object p1, p0, Lcom/google/android/material/chip/a;->A:Lajd;

    return-void
.end method

.method public b(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1524
    iget-object v0, p0, Lcom/google/android/material/chip/a;->g:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 1525
    iput-object p1, p0, Lcom/google/android/material/chip/a;->g:Landroid/content/res/ColorStateList;

    .line 1526
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->al:Z

    if-eqz v0, :cond_0

    .line 1527
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->h(Landroid/content/res/ColorStateList;)V

    .line 1529
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1854
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->u()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_3

    .line 1856
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->d()F

    move-result v1

    if-eqz p1, :cond_0

    .line 1857
    invoke-static {p1}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    .line 1858
    sget-boolean p1, Laka;->a:Z

    if-eqz p1, :cond_1

    .line 1859
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->aq()V

    .line 1861
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->d()F

    move-result p1

    .line 1863
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/a;->e(Landroid/graphics/drawable/Drawable;)V

    .line 1864
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->aj()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1865
    iget-object v0, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/a;->f(Landroid/graphics/drawable/Drawable;)V

    .line 1868
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_3

    .line 1870
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_3
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1926
    iget-object v0, p0, Lcom/google/android/material/chip/a;->u:Ljava/lang/CharSequence;

    if-eq v0, p1, :cond_0

    .line 1928
    invoke-static {}, Lev;->a()Lev;

    move-result-object v0

    invoke-virtual {v0, p1}, Lev;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/chip/a;->u:Ljava/lang/CharSequence;

    .line 1930
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 1663
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->k:Z

    if-eq v0, p1, :cond_2

    .line 1664
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ah()Z

    move-result v0

    .line 1665
    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->k:Z

    .line 1666
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ah()Z

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 1671
    iget-object p1, p0, Lcom/google/android/material/chip/a;->l:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/a;->f(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1673
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/chip/a;->l:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/a;->e(Landroid/graphics/drawable/Drawable;)V

    .line 1676
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1677
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_2
    return-void
.end method

.method c()F
    .locals 2

    .line 528
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ah()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ai()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 529
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/material/chip/a;->C:F

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->al()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->D:F

    add-float/2addr v0, v1

    return v0
.end method

.method public c(F)V
    .locals 1

    .line 1560
    iget v0, p0, Lcom/google/android/material/chip/a;->h:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 1561
    iput p1, p0, Lcom/google/android/material/chip/a;->h:F

    .line 1563
    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1564
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->al:Z

    if-eqz v0, :cond_0

    .line 1565
    invoke-super {p0, p1}, Lakk;->n(F)V

    .line 1567
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public c(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1478
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->b(F)V

    return-void
.end method

.method public c(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1599
    iget-object v0, p0, Lcom/google/android/material/chip/a;->i:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1600
    iput-object p1, p0, Lcom/google/android/material/chip/a;->i:Landroid/content/res/ColorStateList;

    .line 1601
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ap()V

    .line 1602
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 2038
    iget-object v0, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 2040
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v0

    .line 2041
    iput-object p1, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    .line 2042
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result p1

    .line 2044
    iget-object v1, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/google/android/material/chip/a;->e(Landroid/graphics/drawable/Drawable;)V

    .line 2045
    iget-object v1, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/google/android/material/chip/a;->f(Landroid/graphics/drawable/Drawable;)V

    .line 2047
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    .line 2049
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 1813
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->p:Z

    if-eq v0, p1, :cond_2

    .line 1814
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->aj()Z

    move-result v0

    .line 1815
    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->p:Z

    .line 1816
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->aj()Z

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 1821
    iget-object p1, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/a;->f(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1823
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/a;->e(Landroid/graphics/drawable/Drawable;)V

    .line 1826
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1827
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_2
    return-void
.end method

.method d()F
    .locals 2

    .line 568
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->aj()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    iget v0, p0, Lcom/google/android/material/chip/a;->G:F

    iget v1, p0, Lcom/google/android/material/chip/a;->t:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->H:F

    add-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d(F)V
    .locals 1

    .line 1786
    iget v0, p0, Lcom/google/android/material/chip/a;->n:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1787
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v0

    .line 1788
    iput p1, p0, Lcom/google/android/material/chip/a;->n:F

    .line 1789
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result p1

    .line 1791
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    .line 1793
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 1

    .line 1514
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    invoke-static {v0, p1}, Lf;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->b(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public d(Landroid/content/res/ColorStateList;)V
    .locals 1

    const/4 v0, 0x1

    .line 1745
    iput-boolean v0, p0, Lcom/google/android/material/chip/a;->o:Z

    .line 1746
    iget-object v0, p0, Lcom/google/android/material/chip/a;->m:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 1747
    iput-object p1, p0, Lcom/google/android/material/chip/a;->m:Landroid/content/res/ColorStateList;

    .line 1748
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ah()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1749
    iget-object v0, p0, Lcom/google/android/material/chip/a;->l:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1752
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 1948
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->v:Z

    if-eq v0, p1, :cond_1

    .line 1949
    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->v:Z

    .line 1951
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v0

    if-nez p1, :cond_0

    .line 1952
    iget-boolean p1, p0, Lcom/google/android/material/chip/a;->X:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1953
    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->X:Z

    .line 1955
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result p1

    .line 1957
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_1

    .line 1959
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 580
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 581
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getAlpha()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 586
    iget v2, p0, Lcom/google/android/material/chip/a;->Z:I

    const/16 v3, 0xff

    if-ge v2, v3, :cond_1

    .line 587
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v1

    iget v9, p0, Lcom/google/android/material/chip/a;->Z:I

    move-object v4, p1

    .line 588
    invoke-static/range {v4 .. v9}, Lajh;->a(Landroid/graphics/Canvas;FFFFI)I

    move-result v1

    .line 593
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 596
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->b(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 598
    iget-boolean v2, p0, Lcom/google/android/material/chip/a;->al:Z

    if-eqz v2, :cond_2

    .line 599
    invoke-super {p0, p1}, Lakk;->draw(Landroid/graphics/Canvas;)V

    .line 602
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->c(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 605
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->d(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 608
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->e(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 611
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->f(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 614
    iget-boolean v2, p0, Lcom/google/android/material/chip/a;->aj:Z

    if-eqz v2, :cond_3

    .line 615
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->g(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 619
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->h(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 622
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->i(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 624
    iget v0, p0, Lcom/google/android/material/chip/a;->Z:I

    if-ge v0, v3, :cond_4

    .line 625
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public e(F)V
    .locals 1

    .line 1916
    iget v0, p0, Lcom/google/android/material/chip/a;->t:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1917
    iput p1, p0, Lcom/google/android/material/chip/a;->t:F

    .line 1918
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1919
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->aj()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1920
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 1

    .line 1550
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->c(F)V

    return-void
.end method

.method public e(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1896
    iget-object v0, p0, Lcom/google/android/material/chip/a;->s:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 1897
    iput-object p1, p0, Lcom/google/android/material/chip/a;->s:Landroid/content/res/ColorStateList;

    .line 1899
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->aj()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1900
    iget-object v0, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1903
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public e(Z)V
    .locals 1

    .line 1979
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->w:Z

    if-eq v0, p1, :cond_2

    .line 1980
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ai()Z

    move-result v0

    .line 1981
    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->w:Z

    .line 1982
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ai()Z

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 1987
    iget-object p1, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/a;->f(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1989
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/a;->e(Landroid/graphics/drawable/Drawable;)V

    .line 1992
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1993
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_2
    return-void
.end method

.method public e()Z
    .locals 1

    .line 983
    iget-object v0, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/material/chip/a;->d(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 0

    .line 1008
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    .line 1009
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    return-void
.end method

.method public f(F)V
    .locals 1

    .line 2178
    iget v0, p0, Lcom/google/android/material/chip/a;->B:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2179
    iput p1, p0, Lcom/google/android/material/chip/a;->B:F

    .line 2180
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 2181
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_0
    return-void
.end method

.method public f(I)V
    .locals 1

    .line 1589
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    invoke-static {v0, p1}, Lf;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->c(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public f(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 2078
    iget-object v0, p0, Lcom/google/android/material/chip/a;->y:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 2079
    iput-object p1, p0, Lcom/google/android/material/chip/a;->y:Landroid/content/res/ColorStateList;

    .line 2081
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ak()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2082
    iget-object v0, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 2085
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method f(Z)V
    .locals 0

    .line 2467
    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->aj:Z

    return-void
.end method

.method public g(F)V
    .locals 1

    .line 2212
    iget v0, p0, Lcom/google/android/material/chip/a;->C:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2213
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v0

    .line 2214
    iput p1, p0, Lcom/google/android/material/chip/a;->C:F

    .line 2215
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result p1

    .line 2217
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    .line 2219
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_0
    return-void
.end method

.method public g(I)V
    .locals 2

    .line 1633
    new-instance v0, Lajw;

    iget-object v1, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lajw;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->a(Lajw;)V

    return-void
.end method

.method public g()[I
    .locals 1

    .line 1003
    iget-object v0, p0, Lcom/google/android/material/chip/a;->ae:[I

    return-object v0
.end method

.method public getAlpha()I
    .locals 1

    .line 1228
    iget v0, p0, Lcom/google/android/material/chip/a;->Z:I

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 1242
    iget-object v0, p0, Lcom/google/android/material/chip/a;->aa:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 503
    iget v0, p0, Lcom/google/android/material/chip/a;->e:F

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 3

    .line 488
    iget v0, p0, Lcom/google/android/material/chip/a;->B:F

    .line 491
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->E:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/chip/a;->Q:Lcom/google/android/material/internal/l;

    .line 493
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->n()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/l;->a(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->F:F

    add-float/2addr v0, v1

    .line 495
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->d()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->I:F

    add-float/2addr v0, v1

    .line 489
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 497
    iget v1, p0, Lcom/google/android/material/chip/a;->ak:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1270
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->al:Z

    if-eqz v0, :cond_0

    .line 1271
    invoke-super {p0, p1}, Lakk;->getOutline(Landroid/graphics/Outline;)V

    return-void

    .line 1274
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1275
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1276
    iget v1, p0, Lcom/google/android/material/chip/a;->f:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1278
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getIntrinsicHeight()I

    move-result v6

    iget v7, p0, Lcom/google/android/material/chip/a;->f:F

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 1281
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method

.method public h()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1400
    iget-object v0, p0, Lcom/google/android/material/chip/a;->d:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public h(F)V
    .locals 1

    .line 2251
    iget v0, p0, Lcom/google/android/material/chip/a;->D:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2252
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v0

    .line 2253
    iput p1, p0, Lcom/google/android/material/chip/a;->D:F

    .line 2254
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result p1

    .line 2256
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    .line 2258
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_0
    return-void
.end method

.method public h(I)V
    .locals 1

    .line 1659
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->b(Z)V

    return-void
.end method

.method public i()F
    .locals 1

    .line 1433
    iget v0, p0, Lcom/google/android/material/chip/a;->e:F

    return v0
.end method

.method public i(F)V
    .locals 1

    .line 2290
    iget v0, p0, Lcom/google/android/material/chip/a;->E:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2291
    iput p1, p0, Lcom/google/android/material/chip/a;->E:F

    .line 2292
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 2293
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_0
    return-void
.end method

.method public i(I)V
    .locals 1

    .line 1700
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    invoke-static {v0, p1}, Lf;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1286
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1288
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 969
    iget-object v0, p0, Lcom/google/android/material/chip/a;->c:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lcom/google/android/material/chip/a;->i(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/a;->d:Landroid/content/res/ColorStateList;

    .line 970
    invoke-static {v0}, Lcom/google/android/material/chip/a;->i(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/a;->g:Landroid/content/res/ColorStateList;

    .line 971
    invoke-static {v0}, Lcom/google/android/material/chip/a;->i(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->af:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->ag:Landroid/content/res/ColorStateList;

    .line 972
    invoke-static {v0}, Lcom/google/android/material/chip/a;->i(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/a;->Q:Lcom/google/android/material/internal/l;

    .line 973
    invoke-virtual {v0}, Lcom/google/android/material/internal/l;->b()Lajw;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/chip/a;->b(Lajw;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 974
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ak()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/a;->l:Landroid/graphics/drawable/Drawable;

    .line 975
    invoke-static {v0}, Lcom/google/android/material/chip/a;->d(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    .line 976
    invoke-static {v0}, Lcom/google/android/material/chip/a;->d(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/a;->ac:Landroid/content/res/ColorStateList;

    .line 977
    invoke-static {v0}, Lcom/google/android/material/chip/a;->i(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public j()F
    .locals 1

    .line 1467
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->al:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->ac()F

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/material/chip/a;->f:F

    :goto_0
    return v0
.end method

.method public j(F)V
    .locals 1

    .line 2324
    iget v0, p0, Lcom/google/android/material/chip/a;->F:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2325
    iput p1, p0, Lcom/google/android/material/chip/a;->F:F

    .line 2326
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 2327
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_0
    return-void
.end method

.method public j(I)V
    .locals 1

    .line 1735
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    invoke-static {v0, p1}, Lf;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->d(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public k()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1504
    iget-object v0, p0, Lcom/google/android/material/chip/a;->g:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public k(F)V
    .locals 1

    .line 2358
    iget v0, p0, Lcom/google/android/material/chip/a;->G:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2359
    iput p1, p0, Lcom/google/android/material/chip/a;->G:F

    .line 2360
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 2361
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->aj()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2362
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_0
    return-void
.end method

.method public k(I)V
    .locals 1

    .line 1775
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->d(F)V

    return-void
.end method

.method public l()F
    .locals 1

    .line 1540
    iget v0, p0, Lcom/google/android/material/chip/a;->h:F

    return v0
.end method

.method public l(F)V
    .locals 1

    .line 2394
    iget v0, p0, Lcom/google/android/material/chip/a;->H:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2395
    iput p1, p0, Lcom/google/android/material/chip/a;->H:F

    .line 2396
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 2397
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->aj()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2398
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_0
    return-void
.end method

.method public l(I)V
    .locals 1

    .line 1850
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    invoke-static {v0, p1}, Lf;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->b(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public m()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1579
    iget-object v0, p0, Lcom/google/android/material/chip/a;->i:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public m(F)V
    .locals 1

    .line 2430
    iget v0, p0, Lcom/google/android/material/chip/a;->I:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2431
    iput p1, p0, Lcom/google/android/material/chip/a;->I:F

    .line 2432
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 2433
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_0
    return-void
.end method

.method public m(I)V
    .locals 1

    .line 1892
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    invoke-static {v0, p1}, Lf;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->e(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public n()Ljava/lang/CharSequence;
    .locals 1

    .line 1608
    iget-object v0, p0, Lcom/google/android/material/chip/a;->j:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public n(I)V
    .locals 1

    .line 1912
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->e(F)V

    return-void
.end method

.method public o()Lajw;
    .locals 1

    .line 1629
    iget-object v0, p0, Lcom/google/android/material/chip/a;->Q:Lcom/google/android/material/internal/l;

    invoke-virtual {v0}, Lcom/google/android/material/internal/l;->b()Lajw;

    move-result-object v0

    return-object v0
.end method

.method public o(I)V
    .locals 1

    .line 1944
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->d(Z)V

    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 2

    .line 1156
    invoke-super {p0, p1}, Lakk;->onLayoutDirectionChanged(I)Z

    move-result v0

    .line 1158
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ah()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1159
    iget-object v1, p0, Lcom/google/android/material/chip/a;->l:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1161
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ai()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1162
    iget-object v1, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1164
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->aj()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1165
    iget-object v1, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    .line 1169
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method protected onLevelChange(I)Z
    .locals 2

    .line 1176
    invoke-super {p0, p1}, Lakk;->onLevelChange(I)Z

    move-result v0

    .line 1178
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ah()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1179
    iget-object v1, p0, Lcom/google/android/material/chip/a;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1181
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ai()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1182
    iget-object v1, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1184
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->aj()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1185
    iget-object v1, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    .line 1189
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    :cond_3
    return v0
.end method

.method public onStateChange([I)Z
    .locals 1

    .line 1014
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->al:Z

    if-eqz v0, :cond_0

    .line 1015
    invoke-super {p0, p1}, Lakk;->onStateChange([I)Z

    .line 1017
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->g()[I

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->a([I[I)Z

    move-result p1

    return p1
.end method

.method public p()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .line 1641
    iget-object v0, p0, Lcom/google/android/material/chip/a;->ai:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public p(I)V
    .locals 1

    .line 1975
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->e(Z)V

    return-void
.end method

.method public q()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1696
    iget-object v0, p0, Lcom/google/android/material/chip/a;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->h(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public q(I)V
    .locals 1

    .line 2028
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    invoke-static {v0, p1}, Lf;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->c(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public r()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1725
    iget-object v0, p0, Lcom/google/android/material/chip/a;->m:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public r(I)V
    .locals 1

    .line 2067
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    invoke-static {v0, p1}, Lf;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->f(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public s()F
    .locals 1

    .line 1764
    iget v0, p0, Lcom/google/android/material/chip/a;->n:F

    return v0
.end method

.method public s(I)V
    .locals 1

    .line 2107
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    invoke-static {v0, p1}, Lajd;->a(Landroid/content/Context;I)Lajd;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->a(Lajd;)V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1294
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1296
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1220
    iget v0, p0, Lcom/google/android/material/chip/a;->Z:I

    if-eq v0, p1, :cond_0

    .line 1221
    iput p1, p0, Lcom/google/android/material/chip/a;->Z:I

    .line 1222
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1233
    iget-object v0, p0, Lcom/google/android/material/chip/a;->aa:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 1234
    iput-object p1, p0, Lcom/google/android/material/chip/a;->aa:Landroid/graphics/ColorFilter;

    .line 1235
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1247
    iget-object v0, p0, Lcom/google/android/material/chip/a;->ac:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1248
    iput-object p1, p0, Lcom/google/android/material/chip/a;->ac:Landroid/content/res/ColorStateList;

    .line 1249
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1255
    iget-object v0, p0, Lcom/google/android/material/chip/a;->ad:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 1256
    iput-object p1, p0, Lcom/google/android/material/chip/a;->ad:Landroid/graphics/PorterDuff$Mode;

    .line 1257
    iget-object v0, p0, Lcom/google/android/material/chip/a;->ac:Landroid/content/res/ColorStateList;

    invoke-static {p0, v0, p1}, Lajl;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/chip/a;->ab:Landroid/graphics/PorterDuffColorFilter;

    .line 1258
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 1196
    invoke-super {p0, p1, p2}, Lakk;->setVisible(ZZ)Z

    move-result v0

    .line 1198
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ah()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1199
    iget-object v1, p0, Lcom/google/android/material/chip/a;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1201
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ai()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1202
    iget-object v1, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1204
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->aj()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1205
    iget-object v1, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    .line 1209
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    :cond_3
    return v0
.end method

.method public t(I)V
    .locals 1

    .line 2138
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    invoke-static {v0, p1}, Lajd;->a(Landroid/content/Context;I)Lajd;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->b(Lajd;)V

    return-void
.end method

.method public t()Z
    .locals 1

    .line 1799
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->p:Z

    return v0
.end method

.method public u()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1846
    iget-object v0, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->h(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public u(I)V
    .locals 1

    .line 2168
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->f(F)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1302
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1304
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public v()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1888
    iget-object v0, p0, Lcom/google/android/material/chip/a;->s:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public v(I)V
    .locals 1

    .line 2202
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->g(F)V

    return-void
.end method

.method public w()F
    .locals 1

    .line 1908
    iget v0, p0, Lcom/google/android/material/chip/a;->t:F

    return v0
.end method

.method public w(I)V
    .locals 1

    .line 2241
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->h(F)V

    return-void
.end method

.method public x()Ljava/lang/CharSequence;
    .locals 1

    .line 1936
    iget-object v0, p0, Lcom/google/android/material/chip/a;->u:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public x(I)V
    .locals 1

    .line 2280
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->i(F)V

    return-void
.end method

.method public y(I)V
    .locals 1

    .line 2314
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->j(F)V

    return-void
.end method

.method public y()Z
    .locals 1

    .line 1940
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->v:Z

    return v0
.end method

.method public z()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2018
    iget-object v0, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public z(I)V
    .locals 1

    .line 2348
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->k(F)V

    return-void
.end method
