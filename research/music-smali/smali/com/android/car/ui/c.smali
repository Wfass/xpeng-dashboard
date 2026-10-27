.class Lcom/android/car/ui/c;
.super Ljava/lang/Object;
.source "FocusAreaHelper.java"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Z

.field private B:Lcom/android/car/ui/d;

.field private C:Landroid/view/View;

.field private final D:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

.field private E:Z

.field private final c:Landroid/view/ViewGroup;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:I

.field private s:Landroid/view/View;

.field private t:Z

.field private final u:Landroid/util/SparseIntArray;

.field private v:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Landroid/util/SparseIntArray;

.field private x:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/car/ui/d;",
            ">;"
        }
    .end annotation
.end field

.field private y:Z

.field private z:Lcom/android/car/ui/f;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x4

    .line 69
    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x11

    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x42

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/16 v1, 0x82

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/car/ui/c;->a:Ljava/util/List;

    .line 72
    new-array v0, v5, [Ljava/lang/Integer;

    .line 73
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/high16 v1, 0x1000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/high16 v1, 0x2000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/car/ui/c;->b:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;)V
    .locals 6

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/c;->u:Landroid/util/SparseIntArray;

    .line 149
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/c;->w:Landroid/util/SparseIntArray;

    const/4 v0, 0x1

    .line 197
    iput-boolean v0, p0, Lcom/android/car/ui/c;->E:Z

    .line 200
    iput-object p1, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    .line 202
    new-instance p1, Lcom/android/car/ui/-$$Lambda$c$Pz9t-bTvphIryeivcCrYpQ8flwQ;

    invoke-direct {p1, p0}, Lcom/android/car/ui/-$$Lambda$c$Pz9t-bTvphIryeivcCrYpQ8flwQ;-><init>(Lcom/android/car/ui/c;)V

    iput-object p1, p0, Lcom/android/car/ui/c;->D:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .line 212
    iget-object p1, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 214
    sget v2, Laip$a;->car_ui_enable_focus_area_foreground_highlight:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/car/ui/c;->e:Z

    .line 216
    sget v2, Laip$a;->car_ui_enable_focus_area_background_highlight:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/car/ui/c;->f:Z

    .line 218
    sget v2, Laip$b;->car_ui_focus_area_foreground_highlight:I

    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 218
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/car/ui/c;->g:Landroid/graphics/drawable/Drawable;

    .line 220
    sget v2, Laip$b;->car_ui_focus_area_background_highlight:I

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 220
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/car/ui/c;->h:Landroid/graphics/drawable/Drawable;

    .line 223
    sget v2, Laip$a;->car_ui_clear_focus_area_history_when_rotating:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/car/ui/c;->A:Z

    .line 227
    sget v2, Laip$c;->car_ui_focus_history_cache_type:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 228
    sget v3, Laip$c;->car_ui_focus_history_expiration_period_ms:I

    .line 229
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 231
    sget v4, Laip$c;->car_ui_focus_area_history_cache_type:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 233
    sget v5, Laip$c;->car_ui_focus_area_history_expiration_period_ms:I

    .line 234
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 235
    new-instance v5, Lcom/android/car/ui/f;

    invoke-direct {v5, v2, v3, v4, v1}, Lcom/android/car/ui/f;-><init>(IIII)V

    iput-object v5, p0, Lcom/android/car/ui/c;->z:Lcom/android/car/ui/f;

    .line 239
    iget-object v1, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 243
    iget-object v0, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 245
    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/c;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(ILcom/android/car/ui/d;Lcom/android/car/ui/d;J)V
    .locals 1

    .line 603
    invoke-interface {p2}, Lcom/android/car/ui/d;->getHelper()Lcom/android/car/ui/c;

    move-result-object v0

    .line 604
    invoke-virtual {v0, p1, p4, p5}, Lcom/android/car/ui/c;->a(IJ)Lcom/android/car/ui/d;

    move-result-object v0

    if-nez v0, :cond_0

    .line 606
    invoke-static {p1}, Lcom/android/car/ui/c;->b(I)I

    move-result p1

    .line 607
    invoke-interface {p3}, Lcom/android/car/ui/d;->getHelper()Lcom/android/car/ui/c;

    move-result-object p3

    .line 608
    invoke-virtual {p3, p1, p2, p4, p5}, Lcom/android/car/ui/c;->a(ILcom/android/car/ui/d;J)V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    .line 316
    :cond_0
    sget-object v0, Laip$d;->IFocusArea:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 318
    :try_start_0
    sget p2, Laip$d;->IFocusArea_defaultFocus:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/car/ui/c;->r:I

    .line 326
    sget p2, Laip$d;->IFocusArea_highlightPaddingStart:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 329
    sget p2, Laip$d;->IFocusArea_highlightPaddingHorizontal:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 333
    :cond_1
    sget v2, Laip$d;->IFocusArea_highlightPaddingEnd:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 336
    sget v2, Laip$d;->IFocusArea_highlightPaddingHorizontal:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 340
    :cond_2
    iget-object v3, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    move v3, v4

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/android/car/ui/c;->q:Z

    .line 341
    iget-boolean v3, p0, Lcom/android/car/ui/c;->q:Z

    if-eqz v3, :cond_4

    move v3, v2

    goto :goto_1

    :cond_4
    move v3, p2

    :goto_1
    iput v3, p0, Lcom/android/car/ui/c;->i:I

    .line 342
    iget-boolean v3, p0, Lcom/android/car/ui/c;->q:Z

    if-eqz v3, :cond_5

    move v3, p2

    goto :goto_2

    :cond_5
    move v3, v2

    :goto_2
    iput v3, p0, Lcom/android/car/ui/c;->j:I

    .line 344
    sget v3, Laip$d;->IFocusArea_highlightPaddingTop:I

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/car/ui/c;->k:I

    .line 346
    iget v3, p0, Lcom/android/car/ui/c;->k:I

    if-ne v3, v0, :cond_6

    .line 347
    sget v3, Laip$d;->IFocusArea_highlightPaddingVertical:I

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/car/ui/c;->k:I

    .line 351
    :cond_6
    sget v3, Laip$d;->IFocusArea_highlightPaddingBottom:I

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/car/ui/c;->l:I

    .line 353
    iget v3, p0, Lcom/android/car/ui/c;->l:I

    if-ne v3, v0, :cond_7

    .line 354
    sget v3, Laip$d;->IFocusArea_highlightPaddingVertical:I

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/car/ui/c;->l:I

    .line 364
    :cond_7
    sget v3, Laip$d;->IFocusArea_startBoundOffset:I

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    if-ne v3, v0, :cond_8

    .line 367
    sget v3, Laip$d;->IFocusArea_horizontalBoundOffset:I

    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 371
    :cond_8
    sget p2, Laip$d;->IFocusArea_endBoundOffset:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    if-ne p2, v0, :cond_9

    .line 374
    sget p2, Laip$d;->IFocusArea_horizontalBoundOffset:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 378
    :cond_9
    iget-boolean v2, p0, Lcom/android/car/ui/c;->q:Z

    if-eqz v2, :cond_a

    move v2, p2

    goto :goto_3

    :cond_a
    move v2, v3

    :goto_3
    iput v2, p0, Lcom/android/car/ui/c;->m:I

    .line 379
    iget-boolean v2, p0, Lcom/android/car/ui/c;->q:Z

    if-eqz v2, :cond_b

    move p2, v3

    :cond_b
    iput p2, p0, Lcom/android/car/ui/c;->n:I

    .line 381
    sget p2, Laip$d;->IFocusArea_topBoundOffset:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/car/ui/c;->o:I

    .line 383
    iget p2, p0, Lcom/android/car/ui/c;->o:I

    if-ne p2, v0, :cond_c

    .line 384
    sget p2, Laip$d;->IFocusArea_verticalBoundOffset:I

    iget v2, p0, Lcom/android/car/ui/c;->k:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/car/ui/c;->o:I

    .line 388
    :cond_c
    sget p2, Laip$d;->IFocusArea_bottomBoundOffset:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/car/ui/c;->p:I

    .line 390
    iget p2, p0, Lcom/android/car/ui/c;->p:I

    if-ne p2, v0, :cond_d

    .line 391
    sget p2, Laip$d;->IFocusArea_verticalBoundOffset:I

    iget v2, p0, Lcom/android/car/ui/c;->l:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/car/ui/c;->p:I

    .line 396
    :cond_d
    sget p2, Laip$d;->IFocusArea_nudgeLeftShortcut:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const/16 v2, 0x11

    if-eqz p2, :cond_e

    .line 397
    iget-object p2, p0, Lcom/android/car/ui/c;->u:Landroid/util/SparseIntArray;

    sget v3, Laip$d;->IFocusArea_nudgeLeftShortcut:I

    .line 398
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 397
    invoke-virtual {p2, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 400
    :cond_e
    sget p2, Laip$d;->IFocusArea_nudgeRightShortcut:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const/16 v3, 0x42

    if-eqz p2, :cond_f

    .line 401
    iget-object p2, p0, Lcom/android/car/ui/c;->u:Landroid/util/SparseIntArray;

    sget v5, Laip$d;->IFocusArea_nudgeRightShortcut:I

    .line 402
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 401
    invoke-virtual {p2, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 404
    :cond_f
    sget p2, Laip$d;->IFocusArea_nudgeUpShortcut:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const/16 v5, 0x21

    if-eqz p2, :cond_10

    .line 405
    iget-object p2, p0, Lcom/android/car/ui/c;->u:Landroid/util/SparseIntArray;

    sget v6, Laip$d;->IFocusArea_nudgeUpShortcut:I

    .line 406
    invoke-virtual {p1, v6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 405
    invoke-virtual {p2, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 408
    :cond_10
    sget p2, Laip$d;->IFocusArea_nudgeDownShortcut:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const/16 v6, 0x82

    if-eqz p2, :cond_11

    .line 409
    iget-object p2, p0, Lcom/android/car/ui/c;->u:Landroid/util/SparseIntArray;

    sget v7, Laip$d;->IFocusArea_nudgeDownShortcut:I

    .line 410
    invoke-virtual {p1, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 409
    invoke-virtual {p2, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 414
    :cond_11
    sget p2, Laip$d;->IFocusArea_nudgeShortcut:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 415
    sget v7, Laip$d;->IFocusArea_nudgeShortcutDirection:I

    invoke-virtual {p1, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    if-ne p2, v0, :cond_12

    move v8, v4

    goto :goto_4

    :cond_12
    move v8, v1

    :goto_4
    if-ne v7, v0, :cond_13

    goto :goto_5

    :cond_13
    move v4, v1

    :goto_5
    xor-int/2addr v4, v8

    if-nez v4, :cond_1a

    if-eq p2, v0, :cond_15

    .line 422
    iget-object v4, p0, Lcom/android/car/ui/c;->u:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-gtz v4, :cond_14

    .line 427
    iget-object v4, p0, Lcom/android/car/ui/c;->u:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v7, p2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_6

    .line 423
    :cond_14
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Don\'t use nudgeShortcut/nudgeShortcutDirection and nudge*Shortcut in the same focus area. Use nudge*Shortcut only."

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 431
    :cond_15
    :goto_6
    sget p2, Laip$d;->IFocusArea_nudgeLeft:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 432
    iget-object p2, p0, Lcom/android/car/ui/c;->w:Landroid/util/SparseIntArray;

    sget v4, Laip$d;->IFocusArea_nudgeLeft:I

    .line 433
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 432
    invoke-virtual {p2, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 435
    :cond_16
    sget p2, Laip$d;->IFocusArea_nudgeRight:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_17

    .line 436
    iget-object p2, p0, Lcom/android/car/ui/c;->w:Landroid/util/SparseIntArray;

    sget v2, Laip$d;->IFocusArea_nudgeRight:I

    .line 437
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 436
    invoke-virtual {p2, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 439
    :cond_17
    sget p2, Laip$d;->IFocusArea_nudgeUp:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 440
    iget-object p2, p0, Lcom/android/car/ui/c;->w:Landroid/util/SparseIntArray;

    sget v2, Laip$d;->IFocusArea_nudgeUp:I

    .line 441
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 440
    invoke-virtual {p2, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 443
    :cond_18
    sget p2, Laip$d;->IFocusArea_nudgeDown:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 444
    iget-object p2, p0, Lcom/android/car/ui/c;->w:Landroid/util/SparseIntArray;

    sget v2, Laip$d;->IFocusArea_nudgeDown:I

    .line 445
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 444
    invoke-virtual {p2, v6, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 448
    :cond_19
    sget p2, Laip$d;->IFocusArea_defaultFocusOverridesHistory:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/car/ui/c;->t:Z

    .line 451
    sget p2, Laip$d;->IFocusArea_wrapAround:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/car/ui/c;->y:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 418
    :cond_1a
    :try_start_1
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "nudgeShortcut and nudgeShortcutDirection must be specified together"

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p2

    .line 453
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 454
    throw p2
.end method

.method private synthetic a(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 204
    iget-object p2, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result p2

    .line 205
    invoke-direct {p0, p2}, Lcom/android/car/ui/c;->d(Z)V

    .line 206
    invoke-direct {p0, p2, p1}, Lcom/android/car/ui/c;->a(ZLandroid/view/View;)V

    .line 207
    invoke-direct {p0, p2, p1}, Lcom/android/car/ui/c;->b(ZLandroid/view/View;)V

    .line 208
    invoke-direct {p0, p2}, Lcom/android/car/ui/c;->e(Z)V

    .line 209
    iput-boolean p2, p0, Lcom/android/car/ui/c;->d:Z

    return-void
.end method

.method private a(ZLandroid/view/View;)V
    .locals 1

    .line 274
    iget-boolean v0, p0, Lcom/android/car/ui/c;->d:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    instance-of p1, p2, Lcom/android/car/ui/FocusParkingView;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    invoke-static {p2}, Lais;->b(Landroid/view/View;)Lcom/android/car/ui/d;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/c;->B:Lcom/android/car/ui/d;

    .line 279
    iget-object p1, p0, Lcom/android/car/ui/c;->B:Lcom/android/car/ui/d;

    if-nez p1, :cond_1

    .line 280
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No ancestor focus area for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FocusAreaHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 275
    iput-object p1, p0, Lcom/android/car/ui/c;->B:Lcom/android/car/ui/d;

    return-void
.end method

.method private a(Landroid/os/Bundle;)Z
    .locals 2

    .line 562
    invoke-static {p1}, Lcom/android/car/ui/c;->c(Landroid/os/Bundle;)I

    move-result p1

    .line 563
    invoke-direct {p0, p1}, Lcom/android/car/ui/c;->d(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 568
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 573
    :cond_1
    invoke-static {p1}, Lais;->d(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method private static b(I)I
    .locals 4

    const/16 v0, 0x42

    const/16 v1, 0x11

    if-eq p0, v1, :cond_3

    const/16 v2, 0x82

    const/16 v3, 0x21

    if-eq p0, v3, :cond_2

    if-eq p0, v0, :cond_1

    if-ne p0, v2, :cond_0

    return v3

    .line 635
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "direction must be FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, or FOCUS_RIGHT."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return v1

    :cond_2
    return v2

    :cond_3
    return v0
.end method

.method private b(ZLandroid/view/View;)V
    .locals 1

    .line 289
    iget-boolean v0, p0, Lcom/android/car/ui/c;->A:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_0

    .line 295
    :cond_1
    invoke-static {p2}, Lais;->b(Landroid/view/View;)Lcom/android/car/ui/d;

    move-result-object p1

    .line 296
    iget-object p2, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    if-eq p1, p2, :cond_2

    return-void

    .line 299
    :cond_2
    iget-object p1, p0, Lcom/android/car/ui/c;->z:Lcom/android/car/ui/f;

    invoke-virtual {p1}, Lcom/android/car/ui/f;->a()V

    :cond_3
    :goto_0
    return-void
.end method

.method private b(Landroid/os/Bundle;)Z
    .locals 5

    .line 577
    invoke-static {p1}, Lcom/android/car/ui/c;->c(Landroid/os/Bundle;)I

    move-result p1

    .line 578
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 581
    invoke-direct {p0, p1}, Lcom/android/car/ui/c;->c(I)Lcom/android/car/ui/d;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 583
    invoke-interface {v2}, Lcom/android/car/ui/d;->getHelper()Lcom/android/car/ui/c;

    move-result-object v2

    invoke-direct {v2}, Lcom/android/car/ui/c;->k()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-nez v2, :cond_2

    .line 587
    iget-object v2, p0, Lcom/android/car/ui/c;->z:Lcom/android/car/ui/f;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/car/ui/f;->a(IJ)Lcom/android/car/ui/d;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 588
    invoke-interface {p1}, Lcom/android/car/ui/d;->getHelper()Lcom/android/car/ui/c;

    move-result-object p1

    invoke-direct {p1}, Lcom/android/car/ui/c;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :cond_2
    :goto_1
    return v2
.end method

.method private static c(Landroid/os/Bundle;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.android.car.ui.utils.NUDGE_DIRECTION"

    .line 597
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0
.end method

.method private c(I)Lcom/android/car/ui/d;
    .locals 1

    .line 641
    invoke-direct {p0}, Lcom/android/car/ui/c;->l()V

    .line 642
    iget-object v0, p0, Lcom/android/car/ui/c;->x:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/car/ui/d;

    return-object p1
.end method

.method private d(I)Landroid/view/View;
    .locals 1

    .line 647
    invoke-direct {p0}, Lcom/android/car/ui/c;->m()V

    .line 648
    iget-object v0, p0, Lcom/android/car/ui/c;->v:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method private d(Z)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 251
    iget-boolean p1, p0, Lcom/android/car/ui/c;->d:Z

    if-eqz p1, :cond_0

    .line 252
    iget-object p1, p0, Lcom/android/car/ui/c;->z:Lcom/android/car/ui/f;

    iget-object v1, p0, Lcom/android/car/ui/c;->C:Landroid/view/View;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/car/ui/f;->a(Landroid/view/View;J)V

    .line 253
    iput-object v0, p0, Lcom/android/car/ui/c;->C:Landroid/view/View;

    :cond_0
    return-void

    .line 259
    :cond_1
    iget-object p1, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_4

    .line 261
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 264
    :cond_2
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v0

    goto :goto_0

    .line 266
    :cond_4
    :goto_1
    iput-object p1, p0, Lcom/android/car/ui/c;->C:Landroid/view/View;

    return-void
.end method

.method private e(Z)V
    .locals 1

    .line 304
    iget-boolean v0, p0, Lcom/android/car/ui/c;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/car/ui/c;->e:Z

    if-nez v0, :cond_0

    return-void

    .line 307
    :cond_0
    iget-boolean v0, p0, Lcom/android/car/ui/c;->d:Z

    if-eq v0, p1, :cond_1

    .line 308
    iget-object p1, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    return-void
.end method

.method private i()Z
    .locals 2

    .line 512
    iget-object v0, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 513
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 514
    invoke-static {v0, v1}, Lais;->d(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private j()Z
    .locals 2

    .line 522
    iget-object v0, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 523
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 524
    invoke-static {v0, v1}, Lais;->b(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private k()Z
    .locals 3

    .line 557
    iget-object v0, p0, Lcom/android/car/ui/c;->z:Lcom/android/car/ui/f;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/car/ui/f;->a(J)Landroid/view/View;

    move-result-object v0

    .line 558
    iget-object v1, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    iget-boolean v2, p0, Lcom/android/car/ui/c;->t:Z

    invoke-static {v1, v0, v2}, Lais;->a(Landroid/view/View;Landroid/view/View;Z)Z

    move-result v0

    return v0
.end method

.method private l()V
    .locals 5

    .line 700
    iget-object v0, p0, Lcom/android/car/ui/c;->x:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    return-void

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 704
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/car/ui/c;->x:Landroid/util/SparseArray;

    .line 705
    sget-object v1, Lcom/android/car/ui/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 706
    iget-object v3, p0, Lcom/android/car/ui/c;->w:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 707
    iget-object v4, p0, Lcom/android/car/ui/c;->x:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic lambda$Pz9t-bTvphIryeivcCrYpQ8flwQ(Lcom/android/car/ui/c;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/c;->a(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private m()V
    .locals 5

    .line 712
    iget-object v0, p0, Lcom/android/car/ui/c;->v:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    return-void

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 716
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/car/ui/c;->v:Landroid/util/SparseArray;

    .line 717
    sget-object v1, Lcom/android/car/ui/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 718
    iget-object v3, p0, Lcom/android/car/ui/c;->u:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 719
    iget-object v4, p0, Lcom/android/car/ui/c;->v:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method a(IJ)Lcom/android/car/ui/d;
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/android/car/ui/c;->z:Lcom/android/car/ui/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/car/ui/f;->a(IJ)Lcom/android/car/ui/d;

    move-result-object p1

    return-object p1
.end method

.method a()V
    .locals 2

    .line 458
    iget v0, p0, Lcom/android/car/ui/c;->r:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 459
    iget-object v1, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/c;->s:Landroid/view/View;

    :cond_0
    return-void
.end method

.method a(IIII)V
    .locals 1

    .line 739
    iget v0, p0, Lcom/android/car/ui/c;->i:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/car/ui/c;->k:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/car/ui/c;->j:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/android/car/ui/c;->l:I

    if-ne v0, p4, :cond_0

    return-void

    .line 743
    :cond_0
    iput p1, p0, Lcom/android/car/ui/c;->i:I

    .line 744
    iput p2, p0, Lcom/android/car/ui/c;->k:I

    .line 745
    iput p3, p0, Lcom/android/car/ui/c;->j:I

    .line 746
    iput p4, p0, Lcom/android/car/ui/c;->l:I

    .line 747
    iget-object p1, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method a(ILandroid/view/View;)V
    .locals 2

    .line 779
    sget-object v0, Lcom/android/car/ui/c;->a:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 783
    invoke-direct {p0}, Lcom/android/car/ui/c;->m()V

    if-nez p2, :cond_0

    .line 785
    iget-object p2, p0, Lcom/android/car/ui/c;->v:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/c;->v:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    return-void

    .line 780
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "direction must be FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, or FOCUS_RIGHT."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(ILcom/android/car/ui/d;)V
    .locals 2

    .line 796
    sget-object v0, Lcom/android/car/ui/c;->a:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 800
    invoke-direct {p0}, Lcom/android/car/ui/c;->l()V

    if-nez p2, :cond_0

    .line 802
    iget-object p2, p0, Lcom/android/car/ui/c;->x:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/c;->x:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    return-void

    .line 797
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "direction must be FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, or FOCUS_RIGHT."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(ILcom/android/car/ui/d;J)V
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/android/car/ui/c;->z:Lcom/android/car/ui/f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/car/ui/f;->a(ILcom/android/car/ui/d;J)V

    return-void
.end method

.method a(Landroid/graphics/Canvas;)V
    .locals 6

    .line 654
    iget-boolean v0, p0, Lcom/android/car/ui/c;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/car/ui/c;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/android/car/ui/c;->h:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/car/ui/c;->i:I

    iget-object v2, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    .line 656
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/car/ui/c;->k:I

    iget-object v3, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    .line 657
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    .line 658
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    iget-object v4, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/car/ui/c;->j:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    .line 659
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    iget-object v5, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/car/ui/c;->l:I

    sub-int/2addr v4, v5

    .line 655
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 660
    iget-object v0, p0, Lcom/android/car/ui/c;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 0

    .line 730
    iput-object p1, p0, Lcom/android/car/ui/c;->s:Landroid/view/View;

    return-void
.end method

.method a(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 678
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 679
    iget v0, p0, Lcom/android/car/ui/c;->m:I

    const-string v1, "com.android.car.ui.utils.FOCUS_AREA_LEFT_BOUND_OFFSET"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 680
    iget v0, p0, Lcom/android/car/ui/c;->n:I

    const-string v1, "com.android.car.ui.utils.FOCUS_AREA_RIGHT_BOUND_OFFSET"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 681
    iget v0, p0, Lcom/android/car/ui/c;->o:I

    const-string v1, "com.android.car.ui.utils.FOCUS_AREA_TOP_BOUND_OFFSET"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 682
    iget v0, p0, Lcom/android/car/ui/c;->p:I

    const-string v1, "com.android.car.ui.utils.FOCUS_AREA_BOTTOM_BOUND_OFFSET"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method a(I)Z
    .locals 1

    .line 529
    sget-object v0, Lcom/android/car/ui/c;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method a(ILandroid/os/Bundle;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/high16 v0, 0x1000000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x2000000

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 550
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/car/ui/c;->b(Landroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 548
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/car/ui/c;->a(Landroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 538
    :cond_2
    invoke-direct {p0}, Lcom/android/car/ui/c;->k()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 539
    iget-object v0, p0, Lcom/android/car/ui/c;->B:Lcom/android/car/ui/d;

    if-eqz v0, :cond_3

    .line 540
    invoke-static {p2}, Lcom/android/car/ui/c;->c(Landroid/os/Bundle;)I

    move-result v2

    const/4 p2, -0x1

    if-eq v2, p2, :cond_3

    .line 542
    iget-object v3, p0, Lcom/android/car/ui/c;->B:Lcom/android/car/ui/d;

    iget-object p2, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    move-object v4, p2

    check-cast v4, Lcom/android/car/ui/d;

    .line 543
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-object v1, p0

    .line 542
    invoke-direct/range {v1 .. v6}, Lcom/android/car/ui/c;->a(ILcom/android/car/ui/d;Lcom/android/car/ui/d;J)V

    :cond_3
    return p1
.end method

.method a(Z)Z
    .locals 2

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The window of Activity ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    .line 495
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lais;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "] gained"

    goto :goto_0

    :cond_0
    const-string v1, "] lost"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " focus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusAreaHelper"

    .line 494
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 500
    iget-boolean p1, p0, Lcom/android/car/ui/c;->E:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result p1

    if-nez p1, :cond_1

    .line 501
    invoke-direct {p0}, Lcom/android/car/ui/c;->i()Z

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method b()V
    .locals 2

    .line 464
    iget-object v0, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 465
    :goto_0
    iget-boolean v0, p0, Lcom/android/car/ui/c;->q:Z

    if-eq v0, v1, :cond_1

    .line 466
    iput-boolean v1, p0, Lcom/android/car/ui/c;->q:Z

    .line 468
    iget v0, p0, Lcom/android/car/ui/c;->i:I

    .line 469
    iget v1, p0, Lcom/android/car/ui/c;->j:I

    iput v1, p0, Lcom/android/car/ui/c;->i:I

    .line 470
    iput v0, p0, Lcom/android/car/ui/c;->j:I

    .line 472
    iget v0, p0, Lcom/android/car/ui/c;->m:I

    .line 473
    iget v1, p0, Lcom/android/car/ui/c;->n:I

    iput v1, p0, Lcom/android/car/ui/c;->m:I

    .line 474
    iput v0, p0, Lcom/android/car/ui/c;->n:I

    :cond_1
    return-void
.end method

.method b(IIII)V
    .locals 0

    .line 758
    iput p1, p0, Lcom/android/car/ui/c;->m:I

    .line 759
    iput p2, p0, Lcom/android/car/ui/c;->o:I

    .line 760
    iput p3, p0, Lcom/android/car/ui/c;->n:I

    .line 761
    iput p4, p0, Lcom/android/car/ui/c;->p:I

    return-void
.end method

.method b(Landroid/graphics/Canvas;)V
    .locals 6

    .line 667
    iget-boolean v0, p0, Lcom/android/car/ui/c;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/car/ui/c;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/android/car/ui/c;->g:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/car/ui/c;->i:I

    iget-object v2, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    .line 669
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/car/ui/c;->k:I

    iget-object v3, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    .line 670
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    .line 671
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    iget-object v4, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/car/ui/c;->j:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    .line 672
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    iget-object v5, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/car/ui/c;->l:I

    sub-int/2addr v4, v5

    .line 668
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 673
    iget-object v0, p0, Lcom/android/car/ui/c;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method b(Z)V
    .locals 0

    .line 771
    iput-boolean p1, p0, Lcom/android/car/ui/c;->y:Z

    return-void
.end method

.method c()V
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/c;->D:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 482
    iget-boolean v0, p0, Lcom/android/car/ui/c;->E:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    invoke-static {v0}, Lais;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 483
    iput-boolean v0, p0, Lcom/android/car/ui/c;->E:Z

    :cond_0
    return-void
.end method

.method c(Z)V
    .locals 0

    .line 809
    iput-boolean p1, p0, Lcom/android/car/ui/c;->t:Z

    return-void
.end method

.method d()V
    .locals 2

    .line 488
    iget-object v0, p0, Lcom/android/car/ui/c;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/c;->D:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    return-void
.end method

.method e()Z
    .locals 1

    .line 686
    iget-boolean v0, p0, Lcom/android/car/ui/c;->E:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 689
    :cond_0
    invoke-direct {p0}, Lcom/android/car/ui/c;->j()Z

    move-result v0

    return v0
.end method

.method f()Z
    .locals 1

    .line 693
    iget-boolean v0, p0, Lcom/android/car/ui/c;->E:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 696
    :cond_0
    invoke-direct {p0}, Lcom/android/car/ui/c;->j()Z

    move-result v0

    return v0
.end method

.method g()Landroid/view/View;
    .locals 1

    .line 725
    iget-object v0, p0, Lcom/android/car/ui/c;->s:Landroid/view/View;

    return-object v0
.end method

.method h()Z
    .locals 1

    .line 766
    iget-boolean v0, p0, Lcom/android/car/ui/c;->y:Z

    return v0
.end method
