.class public Lcom/google/android/material/textfield/TextInputLayout;
.super Landroid/widget/LinearLayout;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/textfield/TextInputLayout$a;,
        Lcom/google/android/material/textfield/TextInputLayout$SavedState;,
        Lcom/google/android/material/textfield/TextInputLayout$c;,
        Lcom/google/android/material/textfield/TextInputLayout$b;
    }
.end annotation


# static fields
.field private static final d:I


# instance fields
.field private A:Z

.field private B:Ljava/lang/CharSequence;

.field private C:Z

.field private D:Lakk;

.field private E:Lakk;

.field private F:Lakp;

.field private final G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private final O:Landroid/graphics/Rect;

.field private final P:Landroid/graphics/Rect;

.field private final Q:Landroid/graphics/RectF;

.field private R:Landroid/graphics/Typeface;

.field private final S:Lcom/google/android/material/internal/CheckableImageButton;

.field private T:Landroid/content/res/ColorStateList;

.field private U:Z

.field private V:Landroid/graphics/PorterDuff$Mode;

.field private W:Z

.field a:Landroid/widget/EditText;

.field private aA:I

.field private aB:I

.field private aC:I

.field private aD:I

.field private aE:Z

.field private aF:Z

.field private aG:Z

.field private aH:Landroid/animation/ValueAnimator;

.field private aI:Z

.field private aJ:Z

.field private aa:Landroid/graphics/drawable/Drawable;

.field private ab:I

.field private ac:Landroid/view/View$OnLongClickListener;

.field private final ad:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/textfield/TextInputLayout$b;",
            ">;"
        }
    .end annotation
.end field

.field private ae:I

.field private final af:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/textfield/e;",
            ">;"
        }
    .end annotation
.end field

.field private final ag:Lcom/google/android/material/internal/CheckableImageButton;

.field private final ah:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/textfield/TextInputLayout$c;",
            ">;"
        }
    .end annotation
.end field

.field private ai:Landroid/content/res/ColorStateList;

.field private aj:Z

.field private ak:Landroid/graphics/PorterDuff$Mode;

.field private al:Z

.field private am:Landroid/graphics/drawable/Drawable;

.field private an:I

.field private ao:Landroid/graphics/drawable/Drawable;

.field private ap:Landroid/view/View$OnLongClickListener;

.field private aq:Landroid/view/View$OnLongClickListener;

.field private final ar:Lcom/google/android/material/internal/CheckableImageButton;

.field private as:Landroid/content/res/ColorStateList;

.field private at:Landroid/content/res/ColorStateList;

.field private au:Landroid/content/res/ColorStateList;

.field private av:I

.field private aw:I

.field private ax:I

.field private ay:Landroid/content/res/ColorStateList;

.field private az:I

.field b:Z

.field final c:Lcom/google/android/material/internal/a;

.field private final e:Landroid/widget/FrameLayout;

.field private final f:Landroid/widget/LinearLayout;

.field private final g:Landroid/widget/LinearLayout;

.field private final h:Landroid/widget/FrameLayout;

.field private i:Ljava/lang/CharSequence;

.field private final j:Lcom/google/android/material/textfield/f;

.field private k:I

.field private l:Z

.field private m:Landroid/widget/TextView;

.field private n:I

.field private o:I

.field private p:Ljava/lang/CharSequence;

.field private q:Z

.field private r:Landroid/widget/TextView;

.field private s:Landroid/content/res/ColorStateList;

.field private t:I

.field private u:Landroid/content/res/ColorStateList;

.field private v:Landroid/content/res/ColorStateList;

.field private w:Ljava/lang/CharSequence;

.field private final x:Landroid/widget/TextView;

.field private y:Ljava/lang/CharSequence;

.field private final z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 180
    sget v0, Laiv$k;->Widget_Design_TextInputLayout:I

    sput v0, Lcom/google/android/material/textfield/TextInputLayout;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 418
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 422
    sget v0, Laiv$b;->textInputStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    .line 426
    sget v1, Lcom/google/android/material/textfield/TextInputLayout;->d:I

    move-object/from16 v2, p1

    invoke-static {v2, v7, v8, v1}, Lakt;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 196
    new-instance v1, Lcom/google/android/material/textfield/f;

    invoke-direct {v1, v0}, Lcom/google/android/material/textfield/f;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    .line 254
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->O:Landroid/graphics/Rect;

    .line 255
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->P:Landroid/graphics/Rect;

    .line 256
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->Q:Landroid/graphics/RectF;

    .line 369
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->ad:Ljava/util/LinkedHashSet;

    const/4 v9, 0x0

    .line 372
    iput v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->ae:I

    .line 373
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->af:Landroid/util/SparseArray;

    .line 375
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->ah:Ljava/util/LinkedHashSet;

    .line 407
    new-instance v1, Lcom/google/android/material/internal/a;

    invoke-direct {v1, v0}, Lcom/google/android/material/internal/a;-><init>(Landroid/view/View;)V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x1

    .line 430
    invoke-virtual {v0, v11}, Lcom/google/android/material/textfield/TextInputLayout;->setOrientation(I)V

    .line 431
    invoke-virtual {v0, v9}, Lcom/google/android/material/textfield/TextInputLayout;->setWillNotDraw(Z)V

    .line 432
    invoke-virtual {v0, v11}, Lcom/google/android/material/textfield/TextInputLayout;->setAddStatesFromChildren(Z)V

    .line 434
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/FrameLayout;

    .line 435
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v11}, Landroid/widget/FrameLayout;->setAddStatesFromChildren(Z)V

    .line 436
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->addView(Landroid/view/View;)V

    .line 437
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/LinearLayout;

    .line 438
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 439
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x1

    const v3, 0x800003

    invoke-direct {v2, v12, v13, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 445
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/LinearLayout;

    .line 446
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 447
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const v3, 0x800005

    invoke-direct {v2, v12, v13, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 452
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 453
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/FrameLayout;

    .line 454
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    sget-object v2, Laiw;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/a;->a(Landroid/animation/TimeInterpolator;)V

    .line 459
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    sget-object v2, Laiw;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/a;->b(Landroid/animation/TimeInterpolator;)V

    .line 460
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    const v2, 0x800033

    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/a;->b(I)V

    .line 462
    sget-object v3, Laiv$l;->TextInputLayout:[I

    sget v5, Lcom/google/android/material/textfield/TextInputLayout;->d:I

    const/4 v1, 0x5

    new-array v6, v1, [I

    sget v1, Laiv$l;->TextInputLayout_counterTextAppearance:I

    aput v1, v6, v9

    sget v1, Laiv$l;->TextInputLayout_counterOverflowTextAppearance:I

    aput v1, v6, v11

    sget v1, Laiv$l;->TextInputLayout_errorTextAppearance:I

    const/4 v14, 0x2

    aput v1, v6, v14

    sget v1, Laiv$l;->TextInputLayout_helperTextTextAppearance:I

    const/4 v15, 0x3

    aput v1, v6, v15

    sget v1, Laiv$l;->TextInputLayout_hintTextAppearance:I

    const/4 v2, 0x4

    aput v1, v6, v2

    move-object v1, v10

    move-object/from16 v2, p2

    move/from16 v4, p3

    .line 463
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/o;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/at;

    move-result-object v1

    .line 475
    sget v2, Laiv$l;->TextInputLayout_hintEnabled:I

    invoke-virtual {v1, v2, v11}, Landroidx/appcompat/widget/at;->a(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->A:Z

    .line 476
    sget v2, Laiv$l;->TextInputLayout_android_hint:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/at;->c(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 477
    sget v2, Laiv$l;->TextInputLayout_hintAnimationEnabled:I

    invoke-virtual {v1, v2, v11}, Landroidx/appcompat/widget/at;->a(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->aG:Z

    .line 478
    sget v2, Laiv$l;->TextInputLayout_expandedHintEnabled:I

    invoke-virtual {v1, v2, v11}, Landroidx/appcompat/widget/at;->a(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->aF:Z

    .line 480
    sget v2, Lcom/google/android/material/textfield/TextInputLayout;->d:I

    .line 481
    invoke-static {v10, v7, v8, v2}, Lakp;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lakp$a;

    move-result-object v2

    invoke-virtual {v2}, Lakp$a;->a()Lakp;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lakp;

    .line 485
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laiv$d;->mtrl_textinput_box_label_cutout_padding:I

    .line 486
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->G:I

    .line 487
    sget v2, Laiv$l;->TextInputLayout_boxCollapsedPaddingTop:I

    .line 488
    invoke-virtual {v1, v2, v9}, Landroidx/appcompat/widget/at;->d(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->I:I

    .line 490
    sget v2, Laiv$l;->TextInputLayout_boxStrokeWidth:I

    .line 494
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Laiv$d;->mtrl_textinput_box_stroke_width_default:I

    .line 495
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 491
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/at;->e(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->K:I

    .line 496
    sget v2, Laiv$l;->TextInputLayout_boxStrokeWidthFocused:I

    .line 500
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Laiv$d;->mtrl_textinput_box_stroke_width_focused:I

    .line 501
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 497
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/at;->e(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->L:I

    .line 502
    iget v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->K:I

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->J:I

    .line 504
    sget v2, Laiv$l;->TextInputLayout_boxCornerRadiusTopStart:I

    const/high16 v3, -0x40800000    # -1.0f

    .line 505
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/at;->b(IF)F

    move-result v2

    .line 506
    sget v4, Laiv$l;->TextInputLayout_boxCornerRadiusTopEnd:I

    .line 507
    invoke-virtual {v1, v4, v3}, Landroidx/appcompat/widget/at;->b(IF)F

    move-result v4

    .line 508
    sget v5, Laiv$l;->TextInputLayout_boxCornerRadiusBottomEnd:I

    .line 509
    invoke-virtual {v1, v5, v3}, Landroidx/appcompat/widget/at;->b(IF)F

    move-result v5

    .line 510
    sget v6, Laiv$l;->TextInputLayout_boxCornerRadiusBottomStart:I

    .line 511
    invoke-virtual {v1, v6, v3}, Landroidx/appcompat/widget/at;->b(IF)F

    move-result v3

    .line 512
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lakp;

    invoke-virtual {v6}, Lakp;->n()Lakp$a;

    move-result-object v6

    const/4 v7, 0x0

    cmpl-float v8, v2, v7

    if-ltz v8, :cond_0

    .line 514
    invoke-virtual {v6, v2}, Lakp$a;->b(F)Lakp$a;

    :cond_0
    cmpl-float v2, v4, v7

    if-ltz v2, :cond_1

    .line 517
    invoke-virtual {v6, v4}, Lakp$a;->c(F)Lakp$a;

    :cond_1
    cmpl-float v2, v5, v7

    if-ltz v2, :cond_2

    .line 520
    invoke-virtual {v6, v5}, Lakp$a;->d(F)Lakp$a;

    :cond_2
    cmpl-float v2, v3, v7

    if-ltz v2, :cond_3

    .line 523
    invoke-virtual {v6, v3}, Lakp$a;->e(F)Lakp$a;

    .line 525
    :cond_3
    invoke-virtual {v6}, Lakp$a;->a()Lakp;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lakp;

    .line 527
    sget v2, Laiv$l;->TextInputLayout_boxBackgroundColor:I

    .line 528
    invoke-static {v10, v1, v2}, Lajv;->a(Landroid/content/Context;Landroidx/appcompat/widget/at;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 531
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->az:I

    .line 532
    iget v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->az:I

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->N:I

    .line 533
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v3

    const v4, -0x101009e

    if-eqz v3, :cond_4

    .line 534
    new-array v3, v11, [I

    aput v4, v3, v9

    .line 535
    invoke-virtual {v2, v3, v13}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->aA:I

    .line 537
    new-array v3, v14, [I

    fill-array-data v3, :array_0

    .line 538
    invoke-virtual {v2, v3, v13}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->aB:I

    .line 540
    new-array v3, v14, [I

    fill-array-data v3, :array_1

    .line 541
    invoke-virtual {v2, v3, v13}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->aC:I

    goto :goto_0

    .line 544
    :cond_4
    iget v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->az:I

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->aB:I

    .line 545
    sget v2, Laiv$c;->mtrl_filled_background_color:I

    .line 546
    invoke-static {v10, v2}, Lf;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 547
    new-array v3, v11, [I

    aput v4, v3, v9

    .line 548
    invoke-virtual {v2, v3, v13}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->aA:I

    .line 550
    new-array v3, v11, [I

    const v4, 0x1010367

    aput v4, v3, v9

    .line 551
    invoke-virtual {v2, v3, v13}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->aC:I

    goto :goto_0

    .line 555
    :cond_5
    iput v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->N:I

    .line 556
    iput v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->az:I

    .line 557
    iput v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->aA:I

    .line 558
    iput v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->aB:I

    .line 559
    iput v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->aC:I

    .line 562
    :goto_0
    sget v2, Laiv$l;->TextInputLayout_android_textColorHint:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 563
    sget v2, Laiv$l;->TextInputLayout_android_textColorHint:I

    .line 564
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/at;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->au:Landroid/content/res/ColorStateList;

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->at:Landroid/content/res/ColorStateList;

    .line 567
    :cond_6
    sget v2, Laiv$l;->TextInputLayout_boxStrokeColor:I

    .line 568
    invoke-static {v10, v1, v2}, Lajv;->a(Landroid/content/Context;Landroidx/appcompat/widget/at;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 570
    sget v3, Laiv$l;->TextInputLayout_boxStrokeColor:I

    invoke-virtual {v1, v3, v9}, Landroidx/appcompat/widget/at;->b(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->ax:I

    .line 571
    sget v3, Laiv$c;->mtrl_textinput_default_box_stroke_color:I

    .line 572
    invoke-static {v10, v3}, Ldj;->c(Landroid/content/Context;I)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->av:I

    .line 573
    sget v3, Laiv$c;->mtrl_textinput_disabled_color:I

    invoke-static {v10, v3}, Ldj;->c(Landroid/content/Context;I)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->aD:I

    .line 574
    sget v3, Laiv$c;->mtrl_textinput_hovered_box_stroke_color:I

    .line 575
    invoke-static {v10, v3}, Ldj;->c(Landroid/content/Context;I)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->aw:I

    if-eqz v2, :cond_7

    .line 578
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeColorStateList(Landroid/content/res/ColorStateList;)V

    .line 580
    :cond_7
    sget v2, Laiv$l;->TextInputLayout_boxStrokeErrorColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 581
    sget v2, Laiv$l;->TextInputLayout_boxStrokeErrorColor:I

    .line 582
    invoke-static {v10, v1, v2}, Lajv;->a(Landroid/content/Context;Landroidx/appcompat/widget/at;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 581
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeErrorColor(Landroid/content/res/ColorStateList;)V

    .line 586
    :cond_8
    sget v2, Laiv$l;->TextInputLayout_hintTextAppearance:I

    invoke-virtual {v1, v2, v13}, Landroidx/appcompat/widget/at;->g(II)I

    move-result v2

    if-eq v2, v13, :cond_9

    .line 588
    sget v2, Laiv$l;->TextInputLayout_hintTextAppearance:I

    invoke-virtual {v1, v2, v9}, Landroidx/appcompat/widget/at;->g(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextAppearance(I)V

    .line 591
    :cond_9
    sget v2, Laiv$l;->TextInputLayout_errorTextAppearance:I

    .line 592
    invoke-virtual {v1, v2, v9}, Landroidx/appcompat/widget/at;->g(II)I

    move-result v2

    .line 593
    sget v3, Laiv$l;->TextInputLayout_errorContentDescription:I

    .line 594
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/at;->c(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 595
    sget v4, Laiv$l;->TextInputLayout_errorEnabled:I

    invoke-virtual {v1, v4, v9}, Landroidx/appcompat/widget/at;->a(IZ)Z

    move-result v4

    .line 599
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Laiv$h;->design_text_input_end_icon:I

    iget-object v7, v0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/LinearLayout;

    .line 600
    invoke-virtual {v5, v6, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->ar:Lcom/google/android/material/internal/CheckableImageButton;

    .line 601
    iget-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->ar:Lcom/google/android/material/internal/CheckableImageButton;

    sget v6, Laiv$f;->text_input_error_icon:I

    invoke-virtual {v5, v6}, Lcom/google/android/material/internal/CheckableImageButton;->setId(I)V

    .line 602
    iget-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->ar:Lcom/google/android/material/internal/CheckableImageButton;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/google/android/material/internal/CheckableImageButton;->setVisibility(I)V

    .line 603
    invoke-static {v10}, Lajv;->a(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 604
    iget-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->ar:Lcom/google/android/material/internal/CheckableImageButton;

    .line 605
    invoke-virtual {v5}, Lcom/google/android/material/internal/CheckableImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 606
    invoke-static {v5, v9}, Lfq;->a(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 608
    :cond_a
    sget v5, Laiv$l;->TextInputLayout_errorIconDrawable:I

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 609
    sget v5, Laiv$l;->TextInputLayout_errorIconDrawable:I

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 611
    :cond_b
    sget v5, Laiv$l;->TextInputLayout_errorIconTint:I

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 612
    sget v5, Laiv$l;->TextInputLayout_errorIconTint:I

    .line 613
    invoke-static {v10, v1, v5}, Lajv;->a(Landroid/content/Context;Landroidx/appcompat/widget/at;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 612
    invoke-virtual {v0, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconTintList(Landroid/content/res/ColorStateList;)V

    .line 616
    :cond_c
    sget v5, Laiv$l;->TextInputLayout_errorIconTintMode:I

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_d

    .line 617
    sget v5, Laiv$l;->TextInputLayout_errorIconTintMode:I

    .line 619
    invoke-virtual {v1, v5, v13}, Landroidx/appcompat/widget/at;->a(II)I

    move-result v5

    .line 618
    invoke-static {v5, v7}, Lcom/google/android/material/internal/u;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    .line 617
    invoke-virtual {v0, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 621
    :cond_d
    iget-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->ar:Lcom/google/android/material/internal/CheckableImageButton;

    .line 622
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v12, Laiv$j;->error_icon_content_description:I

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 621
    invoke-virtual {v5, v8}, Lcom/google/android/material/internal/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 623
    iget-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->ar:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {v5, v14}, Lgj;->d(Landroid/view/View;I)V

    .line 625
    iget-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->ar:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v5, v9}, Lcom/google/android/material/internal/CheckableImageButton;->setClickable(Z)V

    .line 626
    iget-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->ar:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v5, v9}, Lcom/google/android/material/internal/CheckableImageButton;->setPressable(Z)V

    .line 627
    iget-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->ar:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v5, v9}, Lcom/google/android/material/internal/CheckableImageButton;->setFocusable(Z)V

    .line 629
    sget v5, Laiv$l;->TextInputLayout_helperTextTextAppearance:I

    .line 630
    invoke-virtual {v1, v5, v9}, Landroidx/appcompat/widget/at;->g(II)I

    move-result v5

    .line 631
    sget v8, Laiv$l;->TextInputLayout_helperTextEnabled:I

    .line 632
    invoke-virtual {v1, v8, v9}, Landroidx/appcompat/widget/at;->a(IZ)Z

    move-result v8

    .line 633
    sget v12, Laiv$l;->TextInputLayout_helperText:I

    invoke-virtual {v1, v12}, Landroidx/appcompat/widget/at;->c(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 635
    sget v15, Laiv$l;->TextInputLayout_placeholderTextAppearance:I

    .line 636
    invoke-virtual {v1, v15, v9}, Landroidx/appcompat/widget/at;->g(II)I

    move-result v15

    .line 637
    sget v14, Laiv$l;->TextInputLayout_placeholderText:I

    invoke-virtual {v1, v14}, Landroidx/appcompat/widget/at;->c(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 639
    sget v11, Laiv$l;->TextInputLayout_prefixTextAppearance:I

    .line 640
    invoke-virtual {v1, v11, v9}, Landroidx/appcompat/widget/at;->g(II)I

    move-result v11

    .line 641
    sget v7, Laiv$l;->TextInputLayout_prefixText:I

    invoke-virtual {v1, v7}, Landroidx/appcompat/widget/at;->c(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 643
    sget v6, Laiv$l;->TextInputLayout_suffixTextAppearance:I

    .line 644
    invoke-virtual {v1, v6, v9}, Landroidx/appcompat/widget/at;->g(II)I

    move-result v6

    .line 645
    sget v13, Laiv$l;->TextInputLayout_suffixText:I

    invoke-virtual {v1, v13}, Landroidx/appcompat/widget/at;->c(I)Ljava/lang/CharSequence;

    move-result-object v13

    move/from16 v16, v6

    .line 647
    sget v6, Laiv$l;->TextInputLayout_counterEnabled:I

    invoke-virtual {v1, v6, v9}, Landroidx/appcompat/widget/at;->a(IZ)Z

    move-result v6

    .line 648
    sget v9, Laiv$l;->TextInputLayout_counterMaxLength:I

    move/from16 v17, v6

    const/4 v6, -0x1

    invoke-virtual {v1, v9, v6}, Landroidx/appcompat/widget/at;->a(II)I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterMaxLength(I)V

    .line 649
    sget v6, Laiv$l;->TextInputLayout_counterTextAppearance:I

    const/4 v9, 0x0

    invoke-virtual {v1, v6, v9}, Landroidx/appcompat/widget/at;->g(II)I

    move-result v6

    iput v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->o:I

    .line 650
    sget v6, Laiv$l;->TextInputLayout_counterOverflowTextAppearance:I

    .line 651
    invoke-virtual {v1, v6, v9}, Landroidx/appcompat/widget/at;->g(II)I

    move-result v6

    iput v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->n:I

    .line 656
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    move-object/from16 v18, v13

    sget v13, Laiv$h;->design_text_input_start_icon:I

    move/from16 v19, v11

    iget-object v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/LinearLayout;

    .line 657
    invoke-virtual {v6, v13, v11, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->S:Lcom/google/android/material/internal/CheckableImageButton;

    .line 658
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->S:Lcom/google/android/material/internal/CheckableImageButton;

    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Lcom/google/android/material/internal/CheckableImageButton;->setVisibility(I)V

    .line 659
    invoke-static {v10}, Lajv;->a(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 660
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->S:Lcom/google/android/material/internal/CheckableImageButton;

    .line 661
    invoke-virtual {v6}, Lcom/google/android/material/internal/CheckableImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 662
    invoke-static {v6, v9}, Lfq;->b(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    :cond_e
    const/4 v6, 0x0

    .line 664
    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 667
    sget v6, Laiv$l;->TextInputLayout_startIconDrawable:I

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 668
    sget v6, Laiv$l;->TextInputLayout_startIconDrawable:I

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 669
    sget v6, Laiv$l;->TextInputLayout_startIconContentDescription:I

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 670
    sget v6, Laiv$l;->TextInputLayout_startIconContentDescription:I

    .line 671
    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/at;->c(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 670
    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconContentDescription(Ljava/lang/CharSequence;)V

    .line 673
    :cond_f
    sget v6, Laiv$l;->TextInputLayout_startIconCheckable:I

    const/4 v9, 0x1

    invoke-virtual {v1, v6, v9}, Landroidx/appcompat/widget/at;->a(IZ)Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconCheckable(Z)V

    .line 676
    :cond_10
    sget v6, Laiv$l;->TextInputLayout_startIconTint:I

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 677
    sget v6, Laiv$l;->TextInputLayout_startIconTint:I

    .line 678
    invoke-static {v10, v1, v6}, Lajv;->a(Landroid/content/Context;Landroidx/appcompat/widget/at;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 677
    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconTintList(Landroid/content/res/ColorStateList;)V

    .line 682
    :cond_11
    sget v6, Laiv$l;->TextInputLayout_startIconTintMode:I

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 683
    sget v6, Laiv$l;->TextInputLayout_startIconTintMode:I

    const/4 v9, -0x1

    .line 685
    invoke-virtual {v1, v6, v9}, Landroidx/appcompat/widget/at;->a(II)I

    move-result v6

    const/4 v9, 0x0

    .line 684
    invoke-static {v6, v9}, Lcom/google/android/material/internal/u;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    .line 683
    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 688
    :cond_12
    sget v6, Laiv$l;->TextInputLayout_boxBackgroundMode:I

    const/4 v9, 0x0

    .line 689
    invoke-virtual {v1, v6, v9}, Landroidx/appcompat/widget/at;->a(II)I

    move-result v6

    .line 688
    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundMode(I)V

    .line 694
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v11, Laiv$h;->design_text_input_end_icon:I

    iget-object v13, v0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/FrameLayout;

    .line 695
    invoke-virtual {v6, v11, v13, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->ag:Lcom/google/android/material/internal/CheckableImageButton;

    .line 696
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/FrameLayout;

    iget-object v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->ag:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 697
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->ag:Lcom/google/android/material/internal/CheckableImageButton;

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Lcom/google/android/material/internal/CheckableImageButton;->setVisibility(I)V

    .line 698
    invoke-static {v10}, Lajv;->a(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 699
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->ag:Lcom/google/android/material/internal/CheckableImageButton;

    .line 700
    invoke-virtual {v6}, Lcom/google/android/material/internal/CheckableImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v9, 0x0

    .line 701
    invoke-static {v6, v9}, Lfq;->a(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    goto :goto_1

    :cond_13
    const/4 v9, 0x0

    .line 703
    :goto_1
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->af:Landroid/util/SparseArray;

    new-instance v11, Lcom/google/android/material/textfield/b;

    invoke-direct {v11, v0}, Lcom/google/android/material/textfield/b;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    const/4 v13, -0x1

    invoke-virtual {v6, v13, v11}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 704
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->af:Landroid/util/SparseArray;

    new-instance v11, Lcom/google/android/material/textfield/h;

    invoke-direct {v11, v0}, Lcom/google/android/material/textfield/h;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v6, v9, v11}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 705
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->af:Landroid/util/SparseArray;

    new-instance v9, Lcom/google/android/material/textfield/i;

    invoke-direct {v9, v0}, Lcom/google/android/material/textfield/i;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    const/4 v11, 0x1

    invoke-virtual {v6, v11, v9}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 706
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->af:Landroid/util/SparseArray;

    new-instance v9, Lcom/google/android/material/textfield/a;

    invoke-direct {v9, v0}, Lcom/google/android/material/textfield/a;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    const/4 v11, 0x2

    invoke-virtual {v6, v11, v9}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 707
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->af:Landroid/util/SparseArray;

    new-instance v9, Lcom/google/android/material/textfield/d;

    invoke-direct {v9, v0}, Lcom/google/android/material/textfield/d;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    const/4 v11, 0x3

    invoke-virtual {v6, v11, v9}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 709
    sget v6, Laiv$l;->TextInputLayout_endIconMode:I

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 711
    sget v6, Laiv$l;->TextInputLayout_endIconMode:I

    const/4 v9, 0x0

    invoke-virtual {v1, v6, v9}, Landroidx/appcompat/widget/at;->a(II)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 713
    sget v6, Laiv$l;->TextInputLayout_endIconDrawable:I

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 714
    sget v6, Laiv$l;->TextInputLayout_endIconDrawable:I

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 716
    :cond_14
    sget v6, Laiv$l;->TextInputLayout_endIconContentDescription:I

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 717
    sget v6, Laiv$l;->TextInputLayout_endIconContentDescription:I

    .line 718
    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/at;->c(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 717
    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 720
    :cond_15
    sget v6, Laiv$l;->TextInputLayout_endIconCheckable:I

    const/4 v9, 0x1

    invoke-virtual {v1, v6, v9}, Landroidx/appcompat/widget/at;->a(IZ)Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    goto :goto_2

    .line 721
    :cond_16
    sget v6, Laiv$l;->TextInputLayout_passwordToggleEnabled:I

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 723
    sget v6, Laiv$l;->TextInputLayout_passwordToggleEnabled:I

    const/4 v9, 0x0

    .line 724
    invoke-virtual {v1, v6, v9}, Landroidx/appcompat/widget/at;->a(IZ)Z

    move-result v6

    .line 725
    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 726
    sget v6, Laiv$l;->TextInputLayout_passwordToggleDrawable:I

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 727
    sget v6, Laiv$l;->TextInputLayout_passwordToggleContentDescription:I

    .line 728
    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/at;->c(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 727
    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 729
    sget v6, Laiv$l;->TextInputLayout_passwordToggleTint:I

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 730
    sget v6, Laiv$l;->TextInputLayout_passwordToggleTint:I

    .line 731
    invoke-static {v10, v1, v6}, Lajv;->a(Landroid/content/Context;Landroidx/appcompat/widget/at;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 730
    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconTintList(Landroid/content/res/ColorStateList;)V

    .line 734
    :cond_17
    sget v6, Laiv$l;->TextInputLayout_passwordToggleTintMode:I

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 735
    sget v6, Laiv$l;->TextInputLayout_passwordToggleTintMode:I

    const/4 v9, -0x1

    .line 737
    invoke-virtual {v1, v6, v9}, Landroidx/appcompat/widget/at;->a(II)I

    move-result v6

    const/4 v9, 0x0

    .line 736
    invoke-static {v6, v9}, Lcom/google/android/material/internal/u;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    .line 735
    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 741
    :cond_18
    :goto_2
    sget v6, Laiv$l;->TextInputLayout_passwordToggleEnabled:I

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v6

    if-nez v6, :cond_1a

    .line 743
    sget v6, Laiv$l;->TextInputLayout_endIconTint:I

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 744
    sget v6, Laiv$l;->TextInputLayout_endIconTint:I

    .line 745
    invoke-static {v10, v1, v6}, Lajv;->a(Landroid/content/Context;Landroidx/appcompat/widget/at;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 744
    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconTintList(Landroid/content/res/ColorStateList;)V

    .line 749
    :cond_19
    sget v6, Laiv$l;->TextInputLayout_endIconTintMode:I

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 750
    sget v6, Laiv$l;->TextInputLayout_endIconTintMode:I

    const/4 v9, -0x1

    .line 752
    invoke-virtual {v1, v6, v9}, Landroidx/appcompat/widget/at;->a(II)I

    move-result v6

    const/4 v9, 0x0

    .line 751
    invoke-static {v6, v9}, Lcom/google/android/material/internal/u;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    .line 750
    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 757
    :cond_1a
    new-instance v6, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v6, v10}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/widget/TextView;

    .line 758
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/widget/TextView;

    sget v9, Laiv$f;->textinput_prefix_text:I

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setId(I)V

    .line 759
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/widget/TextView;

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, -0x2

    invoke-direct {v9, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 762
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-static {v6, v9}, Lgj;->f(Landroid/view/View;I)V

    .line 765
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/LinearLayout;

    iget-object v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->S:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 766
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/LinearLayout;

    iget-object v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 769
    new-instance v6, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v6, v10}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->z:Landroid/widget/TextView;

    .line 770
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->z:Landroid/widget/TextView;

    sget v9, Laiv$f;->textinput_suffix_text:I

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setId(I)V

    .line 771
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->z:Landroid/widget/TextView;

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v10, 0x50

    const/4 v11, -0x2

    invoke-direct {v9, v11, v11, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 776
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->z:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-static {v6, v9}, Lgj;->f(Landroid/view/View;I)V

    .line 779
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/LinearLayout;

    iget-object v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->z:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 780
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/LinearLayout;

    iget-object v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->ar:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 781
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/LinearLayout;

    iget-object v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 783
    invoke-virtual {v0, v8}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 784
    invoke-virtual {v0, v12}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    .line 785
    invoke-virtual {v0, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextTextAppearance(I)V

    .line 786
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 787
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorTextAppearance(I)V

    .line 788
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorContentDescription(Ljava/lang/CharSequence;)V

    .line 789
    iget v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->o:I

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterTextAppearance(I)V

    .line 790
    iget v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->n:I

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterOverflowTextAppearance(I)V

    .line 791
    invoke-virtual {v0, v14}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderText(Ljava/lang/CharSequence;)V

    .line 792
    invoke-virtual {v0, v15}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextAppearance(I)V

    .line 793
    invoke-virtual {v0, v7}, Lcom/google/android/material/textfield/TextInputLayout;->setPrefixText(Ljava/lang/CharSequence;)V

    move/from16 v2, v19

    .line 794
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setPrefixTextAppearance(I)V

    move-object/from16 v2, v18

    .line 795
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setSuffixText(Ljava/lang/CharSequence;)V

    move/from16 v2, v16

    .line 796
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setSuffixTextAppearance(I)V

    .line 798
    sget v2, Laiv$l;->TextInputLayout_errorTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 799
    sget v2, Laiv$l;->TextInputLayout_errorTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/at;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorTextColor(Landroid/content/res/ColorStateList;)V

    .line 801
    :cond_1b
    sget v2, Laiv$l;->TextInputLayout_helperTextTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 802
    sget v2, Laiv$l;->TextInputLayout_helperTextTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/at;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextColor(Landroid/content/res/ColorStateList;)V

    .line 804
    :cond_1c
    sget v2, Laiv$l;->TextInputLayout_hintTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 805
    sget v2, Laiv$l;->TextInputLayout_hintTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/at;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 807
    :cond_1d
    sget v2, Laiv$l;->TextInputLayout_counterTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 808
    sget v2, Laiv$l;->TextInputLayout_counterTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/at;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterTextColor(Landroid/content/res/ColorStateList;)V

    .line 810
    :cond_1e
    sget v2, Laiv$l;->TextInputLayout_counterOverflowTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 811
    sget v2, Laiv$l;->TextInputLayout_counterOverflowTextColor:I

    .line 812
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/at;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 811
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterOverflowTextColor(Landroid/content/res/ColorStateList;)V

    .line 814
    :cond_1f
    sget v2, Laiv$l;->TextInputLayout_placeholderTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 815
    sget v2, Laiv$l;->TextInputLayout_placeholderTextColor:I

    .line 816
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/at;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 815
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextColor(Landroid/content/res/ColorStateList;)V

    .line 818
    :cond_20
    sget v2, Laiv$l;->TextInputLayout_prefixTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 819
    sget v2, Laiv$l;->TextInputLayout_prefixTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/at;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setPrefixTextColor(Landroid/content/res/ColorStateList;)V

    .line 821
    :cond_21
    sget v2, Laiv$l;->TextInputLayout_suffixTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 822
    sget v2, Laiv$l;->TextInputLayout_suffixTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/at;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setSuffixTextColor(Landroid/content/res/ColorStateList;)V

    :cond_22
    move/from16 v2, v17

    .line 824
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterEnabled(Z)V

    .line 826
    sget v2, Laiv$l;->TextInputLayout_android_enabled:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/at;->a(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    .line 828
    invoke-virtual {v1}, Landroidx/appcompat/widget/at;->b()V

    const/4 v1, 0x2

    .line 832
    invoke-static {v0, v1}, Lgj;->d(Landroid/view/View;I)V

    .line 836
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_23

    .line 837
    invoke-static {v0, v3}, Lgj;->c(Landroid/view/View;I)V

    :cond_23
    return-void

    :array_0
    .array-data 4
        0x101009c
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x1010367
        0x101009e
    .end array-data
.end method

.method private A()V
    .locals 5

    .line 2440
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    .line 2444
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->g()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->V()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-static {v0}, Lgj;->k(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 2445
    :goto_1
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Landroid/widget/TextView;

    .line 2447
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2448
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laiv$d;->material_input_text_to_prefix_suffix_padding:I

    .line 2449
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 2450
    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 2452
    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v4

    .line 2445
    invoke-static {v1, v2, v3, v0, v4}, Lgj;->b(Landroid/view/View;IIII)V

    return-void
.end method

.method private B()V
    .locals 2

    .line 2496
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 2497
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:I

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Landroid/widget/TextView;I)V

    .line 2499
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 2500
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2502
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 2503
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method

.method private C()I
    .locals 3

    .line 2535
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2539
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:I

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    return v1

    .line 2541
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {v0}, Lcom/google/android/material/internal/a;->c()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    :goto_0
    float-to-int v0, v0

    return v0

    .line 2544
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {v0}, Lcom/google/android/material/internal/a;->c()F

    move-result v0

    goto :goto_0
.end method

.method private D()Z
    .locals 3

    .line 2634
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 2635
    invoke-virtual {v0}, Landroid/widget/EditText;->getMinLines()I

    move-result v0

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private E()I
    .locals 3

    .line 2645
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:I

    .line 2646
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2647
    sget v0, Laiv$b;->colorSurface:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lajj;->a(Landroid/view/View;II)I

    move-result v0

    .line 2648
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:I

    invoke-static {v0, v1}, Lajj;->a(II)I

    move-result v0

    :cond_0
    return v0
.end method

.method private F()V
    .locals 3

    .line 2654
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Lakk;

    if-nez v0, :cond_0

    return-void

    .line 2658
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lakp;

    invoke-virtual {v0, v1}, Lakk;->setShapeAppearanceModel(Lakp;)V

    .line 2660
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2661
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Lakk;

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:I

    invoke-virtual {v0, v1, v2}, Lakk;->a(FI)V

    .line 2664
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->E()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:I

    .line 2665
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Lakk;

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lakk;->g(Landroid/content/res/ColorStateList;)V

    .line 2666
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ae:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 2668
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 2670
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->G()V

    .line 2671
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->invalidate()V

    return-void
.end method

.method private G()V
    .locals 2

    .line 2676
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Lakk;

    if-nez v0, :cond_0

    return-void

    .line 2680
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->I()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2681
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Lakk;

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lakk;->g(Landroid/content/res/ColorStateList;)V

    .line 2683
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->invalidate()V

    return-void
.end method

.method private H()Z
    .locals 2

    .line 2687
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private I()Z
    .locals 2

    .line 2691
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private J()Z
    .locals 3

    .line 2936
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2943
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2944
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v2

    if-ge v2, v0, :cond_1

    .line 2945
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setMinimumHeight(I)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private K()V
    .locals 5

    .line 2953
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2955
    invoke-virtual {v0}, Landroid/widget/EditText;->getGravity()I

    move-result v0

    .line 2956
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 2958
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 2959
    invoke-virtual {v1}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 2960
    invoke-virtual {v2}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 2961
    invoke-virtual {v3}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 2962
    invoke-virtual {v4}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v4

    .line 2958
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private L()V
    .locals 2

    .line 3697
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ad:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout$b;

    .line 3698
    invoke-interface {v1, p0}, Lcom/google/android/material/textfield/TextInputLayout$b;->a(Lcom/google/android/material/textfield/TextInputLayout;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private M()V
    .locals 6

    .line 3703
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:Z

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:Landroid/content/res/ColorStateList;

    iget-boolean v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->W:Z

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:Landroid/graphics/PorterDuff$Mode;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/internal/CheckableImageButton;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private N()Z
    .locals 1

    .line 3712
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ae:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private O()V
    .locals 6

    .line 3735
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ag:Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->aj:Z

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ai:Landroid/content/res/ColorStateList;

    iget-boolean v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->al:Z

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->ak:Landroid/graphics/PorterDuff$Mode;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/internal/CheckableImageButton;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private P()Z
    .locals 10

    .line 3744
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3750
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->Q()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    .line 3751
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v0, v6

    .line 3752
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->aa:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->ab:I

    if-eq v6, v0, :cond_2

    .line 3753
    :cond_1
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->aa:Landroid/graphics/drawable/Drawable;

    .line 3754
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ab:I

    .line 3755
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aa:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->ab:I

    invoke-virtual {v0, v1, v1, v6, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3757
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-static {v0}, Landroidx/core/widget/i;->b(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3758
    aget-object v6, v0, v1

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->aa:Landroid/graphics/drawable/Drawable;

    if-eq v6, v7, :cond_4

    .line 3759
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    aget-object v8, v0, v5

    aget-object v9, v0, v4

    aget-object v0, v0, v3

    invoke-static {v6, v7, v8, v9, v0}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3763
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aa:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 3765
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-static {v0}, Landroidx/core/widget/i;->b(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3766
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    aget-object v7, v0, v5

    aget-object v8, v0, v4

    aget-object v0, v0, v3

    invoke-static {v6, v2, v7, v8, v0}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3768
    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->aa:Landroid/graphics/drawable/Drawable;

    :goto_0
    move v0, v5

    goto :goto_1

    :cond_4
    move v0, v1

    .line 3773
    :goto_1
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->R()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 3774
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v6

    sub-int/2addr v2, v6

    .line 3775
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconToUpdateDummyDrawable()Lcom/google/android/material/internal/CheckableImageButton;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 3779
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v2, v7

    .line 3781
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3780
    invoke-static {v6}, Lfq;->a(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v6

    add-int/2addr v2, v6

    .line 3783
    :cond_5
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-static {v6}, Landroidx/core/widget/i;->b(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 3784
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->am:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_6

    iget v8, p0, Lcom/google/android/material/textfield/TextInputLayout;->an:I

    if-eq v8, v2, :cond_6

    .line 3787
    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->an:I

    .line 3788
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->an:I

    invoke-virtual {v7, v1, v1, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3789
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    aget-object v1, v6, v1

    aget-object v2, v6, v5

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->am:Landroid/graphics/drawable/Drawable;

    aget-object v3, v6, v3

    invoke-static {v0, v1, v2, v4, v3}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_2
    move v0, v5

    goto :goto_3

    .line 3793
    :cond_6
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->am:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_7

    .line 3794
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->am:Landroid/graphics/drawable/Drawable;

    .line 3795
    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->an:I

    .line 3796
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->am:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->an:I

    invoke-virtual {v2, v1, v1, v7, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3799
    :cond_7
    aget-object v2, v6, v4

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->am:Landroid/graphics/drawable/Drawable;

    if-eq v2, v7, :cond_a

    .line 3800
    aget-object v0, v6, v4

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ao:Landroid/graphics/drawable/Drawable;

    .line 3801
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    aget-object v1, v6, v1

    aget-object v2, v6, v5

    aget-object v3, v6, v3

    invoke-static {v0, v1, v2, v7, v3}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 3806
    :cond_8
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->am:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_a

    .line 3808
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-static {v6}, Landroidx/core/widget/i;->b(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 3809
    aget-object v4, v6, v4

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->am:Landroid/graphics/drawable/Drawable;

    if-ne v4, v7, :cond_9

    .line 3810
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    aget-object v1, v6, v1

    aget-object v4, v6, v5

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->ao:Landroid/graphics/drawable/Drawable;

    aget-object v3, v6, v3

    invoke-static {v0, v1, v4, v7, v3}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move v0, v5

    .line 3814
    :cond_9
    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->am:Landroid/graphics/drawable/Drawable;

    :cond_a
    :goto_3
    return v0
.end method

.method private Q()Z
    .locals 1

    .line 3821
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getStartIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/LinearLayout;

    .line 3822
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private R()Z
    .locals 1

    .line 3826
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ar:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3827
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->g()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/LinearLayout;

    .line 3829
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private S()Z
    .locals 1

    .line 3973
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Lakk;

    instance-of v0, v0, Lcom/google/android/material/textfield/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private T()V
    .locals 4

    .line 3977
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->S()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3980
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:Landroid/graphics/RectF;

    .line 3981
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 3982
    invoke-virtual {v2}, Landroid/widget/EditText;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getGravity()I

    move-result v3

    .line 3981
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/material/internal/a;->a(Landroid/graphics/RectF;II)V

    .line 3983
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->a(Landroid/graphics/RectF;)V

    .line 3986
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPaddingLeft()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPaddingTop()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 3987
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Lakk;

    check-cast v1, Lcom/google/android/material/textfield/c;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/c;->a(Landroid/graphics/RectF;)V

    return-void
.end method

.method private U()V
    .locals 1

    .line 3991
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3992
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Lakk;

    check-cast v0, Lcom/google/android/material/textfield/c;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/c;->b()V

    :cond_0
    return-void
.end method

.method private V()Z
    .locals 1

    .line 4139
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ar:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private a(IZ)I
    .locals 1

    .line 2580
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v0

    add-int/2addr p1, v0

    .line 2581
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 2583
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method private a(Landroid/graphics/Rect;F)I
    .locals 1

    .line 2616
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2617
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    sub-float/2addr p1, p2

    float-to-int p1, p1

    return p1

    .line 2619
    :cond_0
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method private a(Landroid/graphics/Rect;Landroid/graphics/Rect;F)I
    .locals 1

    .line 2624
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2628
    iget p1, p2, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    add-float/2addr p1, p3

    float-to-int p1, p1

    return p1

    .line 2630
    :cond_0
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method private a(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 2552
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    .line 2555
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Landroid/graphics/Rect;

    .line 2556
    invoke-static {p0}, Lgj;->h(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2558
    :goto_0
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 2559
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:I

    if-eq v3, v2, :cond_2

    const/4 v2, 0x2

    if-eq v3, v2, :cond_1

    .line 2572
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(IZ)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 2573
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPaddingTop()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 2574
    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->b(IZ)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    return-object v0

    .line 2561
    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2562
    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->C()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2563
    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v1

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    return-object v0

    .line 2566
    :cond_2
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(IZ)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 2567
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 2568
    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->b(IZ)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    return-object v0

    .line 2553
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private static a(Landroid/content/Context;Landroid/widget/TextView;IIZ)V
    .locals 2

    if-eqz p4, :cond_0

    .line 2124
    sget p4, Laiv$j;->character_counter_overflowed_content_description:I

    goto :goto_0

    :cond_0
    sget p4, Laiv$j;->character_counter_content_description:I

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2129
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    .line 2130
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    .line 2125
    invoke-virtual {p0, p4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2124
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 1

    .line 3939
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Z

    if-eqz v0, :cond_0

    .line 3940
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->a(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/RectF;)V
    .locals 2

    .line 3997
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 3998
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 3999
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 4000
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private static a(Landroid/view/ViewGroup;Z)V
    .locals 4

    .line 2465
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2466
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2467
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2468
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 2469
    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, p1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 4144
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4145
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4150
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/internal/CheckableImageButton;)[I

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    .line 4152
    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4153
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-static {v0, p2}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 4154
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static a(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 3870
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3871
    invoke-static {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->b(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private static a(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 3876
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3877
    invoke-static {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->b(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private a(Lcom/google/android/material/internal/CheckableImageButton;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 3849
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    if-eqz p4, :cond_2

    .line 3851
    :cond_0
    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 3854
    invoke-static {v0, p3}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    if-eqz p4, :cond_2

    .line 3857
    invoke-static {v0, p5}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 3861
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eq p2, v0, :cond_3

    .line 3862
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/textfield/TextInputLayout;I)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->b(I)V

    return-void
.end method

.method private a(ZZ)V
    .locals 8

    .line 1493
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v0

    .line 1494
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 1495
    :goto_0
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/widget/EditText;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 1496
    :goto_1
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/f;->g()Z

    move-result v5

    .line 1499
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->at:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_2

    .line 1500
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {v7, v6}, Lcom/google/android/material/internal/a;->a(Landroid/content/res/ColorStateList;)V

    .line 1501
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->at:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v7}, Lcom/google/android/material/internal/a;->b(Landroid/content/res/ColorStateList;)V

    :cond_2
    if-nez v0, :cond_4

    .line 1506
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->at:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    new-array v2, v2, [I

    const v5, -0x101009e

    aput v5, v2, v3

    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->aD:I

    .line 1508
    invoke-virtual {v0, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aD:I

    .line 1511
    :goto_2
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/a;->a(Landroid/content/res/ColorStateList;)V

    .line 1512
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/material/internal/a;->b(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    :cond_4
    if-eqz v5, :cond_5

    .line 1514
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/f;->k()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/internal/a;->a(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    .line 1515
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 1516
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/material/internal/a;->a(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    :cond_6
    if-eqz v4, :cond_7

    .line 1517
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->au:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_7

    .line 1518
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {v2, v0}, Lcom/google/android/material/internal/a;->a(Landroid/content/res/ColorStateList;)V

    :cond_7
    :goto_3
    if-nez v1, :cond_a

    .line 1521
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aF:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v4, :cond_8

    goto :goto_4

    :cond_8
    if-nez p2, :cond_9

    .line 1528
    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->aE:Z

    if-nez p2, :cond_c

    .line 1529
    :cond_9
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->d(Z)V

    goto :goto_5

    :cond_a
    :goto_4
    if-nez p2, :cond_b

    .line 1523
    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->aE:Z

    if-eqz p2, :cond_c

    .line 1524
    :cond_b
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->c(Z)V

    :cond_c
    :goto_5
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/textfield/TextInputLayout;)Z
    .locals 0

    .line 178
    iget-boolean p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aJ:Z

    return p0
.end method

.method private a(Lcom/google/android/material/internal/CheckableImageButton;)[I
    .locals 4

    .line 4158
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getDrawableState()[I

    move-result-object v0

    .line 4159
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawableState()[I

    move-result-object p1

    .line 4161
    array-length v1, v0

    .line 4162
    array-length v2, v0

    array-length v3, p1

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 4164
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private b(IZ)I
    .locals 1

    .line 2589
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    .line 2590
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 2592
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    add-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method private b(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 2599
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2603
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Landroid/graphics/Rect;

    .line 2605
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {v1}, Lcom/google/android/material/internal/a;->b()F

    move-result v1

    .line 2607
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 2608
    invoke-direct {p0, p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Landroid/graphics/Rect;F)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 2609
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 2610
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;F)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0

    .line 2600
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private b(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 2195
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->aE:Z

    if-nez p1, :cond_0

    .line 2196
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->t()V

    goto :goto_0

    .line 2198
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->u()V

    :goto_0
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 3

    .line 3945
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Lakk;

    if-eqz v0, :cond_0

    .line 3947
    invoke-virtual {v0}, Lakk;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 3948
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 3949
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Lakk;

    invoke-virtual {v0, p1}, Lakk;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private static b(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V
    .locals 3

    .line 3882
    invoke-static {p0}, Lgj;->F(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    move v1, v2

    .line 3885
    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setFocusable(Z)V

    .line 3886
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setClickable(Z)V

    .line 3887
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setPressable(Z)V

    .line 3888
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setLongClickable(Z)V

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    .line 3889
    :goto_1
    invoke-static {p0, v2}, Lgj;->d(Landroid/view/View;I)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3722
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3725
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 3726
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    .line 3727
    invoke-virtual {v0}, Lcom/google/android/material/textfield/f;->j()I

    move-result v0

    .line 3726
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 3728
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ag:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3730
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->O()V

    :goto_0
    return-void
.end method

.method private b(ZZ)V
    .locals 4

    .line 4111
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ay:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 4112
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ay:Landroid/content/res/ColorStateList;

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    .line 4113
    invoke-virtual {v1, v3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 4116
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ay:Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    .line 4117
    invoke-virtual {v3, v2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    if-eqz p1, :cond_0

    .line 4121
    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:I

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 4123
    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:I

    goto :goto_0

    .line 4125
    :cond_1
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:I

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x1010367
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x10102fe
        0x101009e
    .end array-data
.end method

.method static synthetic b(Lcom/google/android/material/textfield/TextInputLayout;)Z
    .locals 0

    .line 178
    iget-boolean p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Z

    return p0
.end method

.method static synthetic c(Lcom/google/android/material/textfield/TextInputLayout;)Lcom/google/android/material/internal/CheckableImageButton;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ag:Lcom/google/android/material/internal/CheckableImageButton;

    return-object p0
.end method

.method private c(I)V
    .locals 2

    .line 3716
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ah:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout$c;

    .line 3717
    invoke-interface {v1, p0, p1}, Lcom/google/android/material/textfield/TextInputLayout$c;->a(Lcom/google/android/material/textfield/TextInputLayout;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(Landroid/graphics/Rect;)V
    .locals 4

    .line 3925
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Lakk;

    if-eqz v0, :cond_0

    .line 3926
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:I

    sub-int/2addr v0, v1

    .line 3927
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Lakk;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v0, v3, p1}, Lakk;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method private c(Z)V
    .locals 1

    .line 3954
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aH:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3955
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aH:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 3957
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->aG:Z

    if-eqz p1, :cond_1

    .line 3958
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->a(F)V

    goto :goto_0

    .line 3960
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/a;->b(F)V

    :goto_0
    const/4 p1, 0x0

    .line 3962
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->aE:Z

    .line 3963
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->S()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3964
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->T()V

    .line 3966
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->s()V

    .line 3968
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    .line 3969
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->z()V

    return-void
.end method

.method private d(Z)V
    .locals 1

    .line 4170
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aH:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4171
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aH:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 4173
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->aG:Z

    if-eqz p1, :cond_1

    .line 4174
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->a(F)V

    goto :goto_0

    .line 4176
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/a;->b(F)V

    .line 4178
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->S()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Lakk;

    check-cast p1, Lcom/google/android/material/textfield/c;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/c;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4179
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->U()V

    :cond_2
    const/4 p1, 0x1

    .line 4181
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->aE:Z

    .line 4182
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->u()V

    .line 4184
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    .line 4185
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->z()V

    return-void
.end method

.method private getEndIconDelegate()Lcom/google/android/material/textfield/e;
    .locals 2

    .line 3692
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->af:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ae:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/e;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3693
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->af:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/e;

    :goto_0
    return-object v0
.end method

.method private getEndIconToUpdateDummyDrawable()Lcom/google/android/material/internal/CheckableImageButton;
    .locals 1

    .line 3834
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ar:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3835
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ar:Lcom/google/android/material/internal/CheckableImageButton;

    return-object v0

    .line 3836
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->N()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3837
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ag:Lcom/google/android/material/internal/CheckableImageButton;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private k()V
    .locals 1

    .line 908
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->l()V

    .line 909
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->m()V

    .line 910
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->i()V

    .line 911
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()V

    .line 912
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->p()V

    .line 913
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:I

    if-eqz v0, :cond_0

    .line 914
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->q()V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 3

    .line 919
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 925
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Lakk;

    instance-of v0, v0, Lcom/google/android/material/textfield/c;

    if-nez v0, :cond_0

    .line 926
    new-instance v0, Lcom/google/android/material/textfield/c;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lakp;

    invoke-direct {v0, v2}, Lcom/google/android/material/textfield/c;-><init>(Lakp;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Lakk;

    goto :goto_0

    .line 928
    :cond_0
    new-instance v0, Lakk;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lakp;

    invoke-direct {v0, v2}, Lakk;-><init>(Lakp;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Lakk;

    .line 930
    :goto_0
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Lakk;

    goto :goto_1

    .line 937
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is illegal; only @BoxBackgroundMode constants are supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 921
    :cond_2
    new-instance v0, Lakk;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lakp;

    invoke-direct {v0, v1}, Lakk;-><init>(Lakp;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Lakk;

    .line 922
    new-instance v0, Lakk;

    invoke-direct {v0}, Lakk;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Lakk;

    goto :goto_1

    .line 933
    :cond_3
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Lakk;

    .line 934
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Lakk;

    :goto_1
    return-void
.end method

.method private m()V
    .locals 2

    .line 944
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Lakk;

    invoke-static {v0, v1}, Lgj;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private n()Z
    .locals 2

    .line 952
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Lakk;

    if-eqz v1, :cond_0

    .line 954
    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private o()V
    .locals 2

    .line 959
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 960
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lajv;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laiv$d;->material_font_2_0_box_collapsed_padding_top:I

    .line 963
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:I

    goto :goto_0

    .line 964
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lajv;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 966
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laiv$d;->material_font_1_3_box_collapsed_padding_top:I

    .line 967
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:I

    :cond_1
    :goto_0
    return-void
.end method

.method private p()V
    .locals 6

    .line 973
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 977
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lajv;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 978
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 980
    invoke-static {v0}, Lgj;->j(Landroid/view/View;)I

    move-result v1

    .line 981
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laiv$d;->material_filled_edittext_font_2_0_padding_top:I

    .line 982
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 983
    invoke-static {v3}, Lgj;->k(Landroid/view/View;)I

    move-result v3

    .line 984
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Laiv$d;->material_filled_edittext_font_2_0_padding_bottom:I

    .line 985
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 978
    invoke-static {v0, v1, v2, v3, v4}, Lgj;->b(Landroid/view/View;IIII)V

    goto :goto_0

    .line 987
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lajv;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 988
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 990
    invoke-static {v0}, Lgj;->j(Landroid/view/View;)I

    move-result v1

    .line 991
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laiv$d;->material_filled_edittext_font_1_3_padding_top:I

    .line 992
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 993
    invoke-static {v3}, Lgj;->k(Landroid/view/View;)I

    move-result v3

    .line 994
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Laiv$d;->material_filled_edittext_font_1_3_padding_bottom:I

    .line 995
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 988
    invoke-static {v0, v1, v2, v3, v4}, Lgj;->b(Landroid/view/View;IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method private q()V
    .locals 3

    .line 1468
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1469
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1470
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->C()I

    move-result v1

    .line 1472
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eq v1, v2, :cond_0

    .line 1473
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1474
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method private r()V
    .locals 1

    .line 2086
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2087
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->a(I)V

    :cond_1
    return-void
.end method

.method private s()V
    .locals 1

    .line 2191
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->b(I)V

    return-void
.end method

.method private setEditText(Landroid/widget/EditText;)V
    .locals 3

    .line 1378
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-nez v0, :cond_6

    .line 1382
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ae:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    instance-of v0, p1, Lcom/google/android/material/textfield/TextInputEditText;

    if-nez v0, :cond_0

    const-string v0, "TextInputLayout"

    const-string v1, "EditText added is not a TextInputEditText. Please switch to using that class instead."

    .line 1383
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 1390
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->k()V

    .line 1391
    new-instance v0, Lcom/google/android/material/textfield/TextInputLayout$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout$a;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/TextInputLayout$a;)V

    .line 1394
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/a;->c(Landroid/graphics/Typeface;)V

    .line 1395
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/a;->a(F)V

    .line 1397
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getGravity()I

    move-result v0

    .line 1398
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    and-int/lit8 v2, v0, -0x71

    or-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/a;->b(I)V

    .line 1400
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/a;->a(I)V

    .line 1403
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/google/android/material/textfield/TextInputLayout$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/TextInputLayout$1;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1424
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->at:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    .line 1425
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->at:Landroid/content/res/ColorStateList;

    .line 1429
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 1430
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1432
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Ljava/lang/CharSequence;

    .line 1433
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 1435
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1437
    :cond_2
    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    .line 1440
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 1441
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->a(I)V

    .line 1443
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()V

    .line 1445
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/f;->d()V

    .line 1447
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->bringToFront()V

    .line 1448
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->bringToFront()V

    .line 1449
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 1450
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ar:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->bringToFront()V

    .line 1451
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->L()V

    .line 1452
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->y()V

    .line 1453
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->A()V

    .line 1457
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_5

    .line 1458
    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1462
    :cond_5
    invoke-direct {p0, v2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(ZZ)V

    return-void

    .line 1379
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "We already have an EditText, can only have one"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setErrorIconVisible(Z)V
    .locals 4

    .line 4130
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ar:Lcom/google/android/material/internal/CheckableImageButton;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Lcom/google/android/material/internal/CheckableImageButton;->setVisibility(I)V

    .line 4131
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4132
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->A()V

    .line 4133
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->N()Z

    move-result p1

    if-nez p1, :cond_2

    .line 4134
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->P()Z

    :cond_2
    return-void
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1565
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1566
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Ljava/lang/CharSequence;

    .line 1567
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->a(Ljava/lang/CharSequence;)V

    .line 1569
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->aE:Z

    if-nez p1, :cond_0

    .line 1570
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->T()V

    :cond_0
    return-void
.end method

.method private setPlaceholderTextEnabled(Z)V
    .locals 2

    .line 2168
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2174
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroid/widget/TextView;

    .line 2175
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroid/widget/TextView;

    sget v1, Laiv$f;->textinput_placeholder:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 2177
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lgj;->f(Landroid/view/View;I)V

    .line 2180
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextAppearance(I)V

    .line 2181
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextColor(Landroid/content/res/ColorStateList;)V

    .line 2182
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->v()V

    goto :goto_0

    .line 2184
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->w()V

    const/4 v0, 0x0

    .line 2185
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroid/widget/TextView;

    .line 2187
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Z

    return-void
.end method

.method private t()V
    .locals 2

    .line 2203
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Z

    if-eqz v1, :cond_0

    .line 2204
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2205
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2206
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    :cond_0
    return-void
.end method

.method private u()V
    .locals 2

    .line 2211
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 2212
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2213
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private v()V
    .locals 2

    .line 2218
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2219
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2220
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private w()V
    .locals 2

    .line 2225
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2226
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private x()V
    .locals 2

    .line 2316
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->j()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2317
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->P()Z

    return-void
.end method

.method private y()V
    .locals 5

    .line 2349
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    .line 2352
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-static {v0}, Lgj;->j(Landroid/view/View;)I

    move-result v0

    .line 2353
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 2356
    invoke-virtual {v2}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v2

    .line 2357
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 2358
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Laiv$d;->material_input_text_to_prefix_suffix_padding:I

    .line 2359
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 2360
    invoke-virtual {v4}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v4

    .line 2353
    invoke-static {v1, v0, v2, v3, v4}, Lgj;->b(Landroid/view/View;IIII)V

    return-void
.end method

.method private z()V
    .locals 4

    .line 2402
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    .line 2403
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->j()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 2404
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2405
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 2406
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/e;->a(Z)V

    .line 2408
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->P()Z

    return-void
.end method


# virtual methods
.method a(F)V
    .locals 4

    .line 4190
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {v0}, Lcom/google/android/material/internal/a;->j()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 4193
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aH:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 4194
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aH:Landroid/animation/ValueAnimator;

    .line 4195
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aH:Landroid/animation/ValueAnimator;

    sget-object v1, Laiw;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4196
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aH:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xa7

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4197
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aH:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/textfield/TextInputLayout$4;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/TextInputLayout$4;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4205
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aH:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {v3}, Lcom/google/android/material/internal/a;->j()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 4206
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->aH:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method a(I)V
    .locals 8

    .line 2092
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    .line 2093
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 2094
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2095
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2096
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    if-le p1, v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 2098
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    .line 2100
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroid/widget/TextView;

    iget v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:I

    iget-boolean v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    .line 2099
    invoke-static {v1, v4, p1, v5, v6}, Lcom/google/android/material/textfield/TextInputLayout;->a(Landroid/content/Context;Landroid/widget/TextView;IIZ)V

    .line 2102
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    if-eq v0, v1, :cond_2

    .line 2103
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->B()V

    .line 2105
    :cond_2
    invoke-static {}, Lev;->a()Lev;

    move-result-object v1

    .line 2106
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroid/widget/TextView;

    .line 2108
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Laiv$j;->character_counter_pattern:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 2109
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v2

    iget p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2107
    invoke-virtual {v1, p1}, Lev;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2106
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2111
    :goto_1
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    if-eq v0, p1, :cond_3

    .line 2112
    invoke-virtual {p0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->a(Z)V

    .line 2113
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->i()V

    .line 2114
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()V

    :cond_3
    return-void
.end method

.method a(Landroid/widget/TextView;I)V
    .locals 2

    const/4 v0, 0x1

    .line 2512
    :try_start_0
    invoke-static {p1, p2}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;I)V

    .line 2514
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p2, v1, :cond_0

    .line 2515
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v1, -0xff01

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    move v0, p2

    :catch_0
    :goto_0
    if-eqz v0, :cond_1

    .line 2529
    sget p2, Laiv$k;->TextAppearance_AppCompat_Caption:I

    invoke-static {p1, p2}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;I)V

    .line 2530
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Laiv$c;->design_error:I

    invoke-static {p2, v0}, Ldj;->c(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public a(Lcom/google/android/material/textfield/TextInputLayout$b;)V
    .locals 1

    .line 3472
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ad:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3473
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 3474
    invoke-interface {p1, p0}, Lcom/google/android/material/textfield/TextInputLayout$b;->a(Lcom/google/android/material/textfield/TextInputLayout;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/material/textfield/TextInputLayout$c;)V
    .locals 1

    .line 3444
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ah:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1489
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->a(ZZ)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1648
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    return v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 844
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 847
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 848
    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v0, v0, -0x71

    or-int/lit8 v0, v0, 0x10

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 849
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 853
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 854
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->q()V

    .line 856
    check-cast p1, Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEditText(Landroid/widget/EditText;)V

    goto :goto_0

    .line 859
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 1813
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/f;->f()Z

    move-result v0

    return v0
.end method

.method c()V
    .locals 3

    .line 2697
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:I

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2701
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 2706
    :cond_1
    invoke-static {v0}, Landroidx/appcompat/widget/ad;->c(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2707
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2710
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/f;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2712
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    .line 2714
    invoke-virtual {v1}, Lcom/google/android/material/textfield/f;->j()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 2713
    invoke-static {v1, v2}, Landroidx/appcompat/widget/j;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    .line 2712
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 2715
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 2719
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 2718
    invoke-static {v1, v2}, Landroidx/appcompat/widget/j;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    .line 2717
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 2723
    :cond_4
    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;)V

    .line 2724
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->refreshDrawableState()V

    :cond_5
    :goto_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 3056
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 1338
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 1339
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    return-void

    .line 1343
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1346
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    .line 1348
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    .line 1349
    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1350
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1352
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1354
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1355
    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1354
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1355
    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    .line 1356
    throw p1

    .line 1360
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setAutofillId(Landroid/view/autofill/AutofillId;)V

    .line 1361
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 1362
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V

    .line 1364
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setChildCount(I)V

    .line 1365
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 1366
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1367
    invoke-virtual {p1, v2}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object v1

    .line 1368
    invoke-virtual {v0, v1, p2}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 1369
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-ne v0, v3, :cond_2

    .line 1370
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewStructure;->setHint(Ljava/lang/CharSequence;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2840
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aJ:Z

    .line 2841
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    const/4 p1, 0x0

    .line 2842
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->aJ:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 3933
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3934
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Landroid/graphics/Canvas;)V

    .line 3935
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->b(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 4010
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aI:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4017
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aI:Z

    .line 4019
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 4021
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getDrawableState()[I

    move-result-object v1

    .line 4024
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 4025
    invoke-virtual {v2, v1}, Lcom/google/android/material/internal/a;->a([I)Z

    move-result v1

    or-int/2addr v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    .line 4029
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v2, :cond_3

    .line 4030
    invoke-static {p0}, Lgj;->B(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->a(Z)V

    .line 4032
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()V

    .line 4033
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->i()V

    if-eqz v1, :cond_4

    .line 4036
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->invalidate()V

    .line 4039
    :cond_4
    iput-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->aI:Z

    return-void
.end method

.method public e()V
    .locals 2

    .line 3064
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 3256
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ar:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->as:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public g()Z
    .locals 1

    .line 3278
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ag:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBaseline()I
    .locals 2

    .line 1481
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1482
    invoke-virtual {v0}, Landroid/widget/EditText;->getBaseline()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->C()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 1484
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->getBaseline()I

    move-result v0

    return v0
.end method

.method getBoxBackground()Lakk;
    .locals 2

    .line 865
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 868
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 866
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Lakk;

    return-object v0
.end method

.method public getBoxBackgroundColor()I
    .locals 1

    .line 1211
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:I

    return v0
.end method

.method public getBoxBackgroundMode()I
    .locals 1

    .line 904
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:I

    return v0
.end method

.method public getBoxCornerRadiusBottomEnd()F
    .locals 1

    .line 1295
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Lakk;

    invoke-virtual {v0}, Lakk;->ae()F

    move-result v0

    return v0
.end method

.method public getBoxCornerRadiusBottomStart()F
    .locals 1

    .line 1305
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Lakk;

    invoke-virtual {v0}, Lakk;->af()F

    move-result v0

    return v0
.end method

.method public getBoxCornerRadiusTopEnd()F
    .locals 1

    .line 1285
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Lakk;

    invoke-virtual {v0}, Lakk;->ad()F

    move-result v0

    return v0
.end method

.method public getBoxCornerRadiusTopStart()F
    .locals 1

    .line 1275
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Lakk;

    invoke-virtual {v0}, Lakk;->ac()F

    move-result v0

    return v0
.end method

.method public getBoxStrokeColor()I
    .locals 1

    .line 1094
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ax:I

    return v0
.end method

.method public getBoxStrokeErrorColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1144
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ay:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBoxStrokeWidth()I
    .locals 1

    .line 1032
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:I

    return v0
.end method

.method public getBoxStrokeWidthFocused()I
    .locals 1

    .line 1069
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:I

    return v0
.end method

.method public getCounterMaxLength()I
    .locals 1

    .line 2480
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:I

    return v0
.end method

.method getCounterOverflowDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 2489
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2490
    invoke-virtual {v0}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCounterOverflowTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 2053
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCounterTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 2010
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getDefaultHintTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1711
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->at:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .line 1537
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method public getEndIconContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 3396
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ag:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getEndIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 3356
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ag:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getEndIconMode()I
    .locals 1

    .line 3200
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ae:I

    return v0
.end method

.method getEndIconView()Lcom/google/android/material/internal/CheckableImageButton;
    .locals 1

    .line 3688
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ag:Lcom/google/android/material/internal/CheckableImageButton;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    .line 2853
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/f;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/f;->h()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getErrorContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1843
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/f;->l()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCurrentTextColors()I
    .locals 1

    .line 1742
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/f;->j()I

    move-result v0

    return v0
.end method

.method public getErrorIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1903
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ar:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method final getErrorTextCurrentColor()I
    .locals 1

    .line 4231
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/f;->j()I

    move-result v0

    return v0
.end method

.method public getHelperText()Ljava/lang/CharSequence;
    .locals 1

    .line 2865
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/f;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    .line 2866
    invoke-virtual {v0}, Lcom/google/android/material/textfield/f;->i()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getHelperTextCurrentTextColor()I
    .locals 1

    .line 1819
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/f;->m()I

    move-result v0

    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    .line 1583
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method final getHintCollapsedTextHeight()F
    .locals 1

    .line 4226
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {v0}, Lcom/google/android/material/internal/a;->c()F

    move-result v0

    return v0
.end method

.method final getHintCurrentCollapsedTextColor()I
    .locals 1

    .line 4221
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {v0}, Lcom/google/android/material/internal/a;->k()I

    move-result v0

    return v0
.end method

.method public getHintTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1692
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->au:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getPasswordVisibilityToggleContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3581
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ag:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordVisibilityToggleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3567
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ag:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPlaceholderText()Ljava/lang/CharSequence;
    .locals 1

    .line 2163
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPlaceholderTextAppearance()I
    .locals 1

    .line 2274
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:I

    return v0
.end method

.method public getPlaceholderTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 2251
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getPrefixText()Ljava/lang/CharSequence;
    .locals 1

    .line 2299
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPrefixTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 2336
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getPrefixTextView()Landroid/widget/TextView;
    .locals 1

    .line 2312
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/widget/TextView;

    return-object v0
.end method

.method public getStartIconContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 3127
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getStartIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 3010
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getSuffixText()Ljava/lang/CharSequence;
    .locals 1

    .line 2385
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSuffixTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 2427
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSuffixTextView()Landroid/widget/TextView;
    .locals 1

    .line 2398
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 1332
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public h()V
    .locals 2

    .line 3295
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ag:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ai:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method i()V
    .locals 6

    .line 4043
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Lakk;

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:I

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 4047
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    .line 4048
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isHovered()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/widget/EditText;->isHovered()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v3, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v2

    .line 4051
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_5

    .line 4052
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->aD:I

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:I

    goto :goto_4

    .line 4053
    :cond_5
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/f;->g()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4054
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ay:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_6

    .line 4055
    invoke-direct {p0, v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->b(ZZ)V

    goto :goto_4

    .line 4057
    :cond_6
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/f;->j()I

    move-result v4

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:I

    goto :goto_4

    .line 4059
    :cond_7
    iget-boolean v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroid/widget/TextView;

    if-eqz v4, :cond_9

    .line 4060
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->ay:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_8

    .line 4061
    invoke-direct {p0, v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->b(ZZ)V

    goto :goto_4

    .line 4063
    :cond_8
    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v4

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:I

    goto :goto_4

    :cond_9
    if-eqz v0, :cond_a

    .line 4066
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ax:I

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:I

    goto :goto_4

    :cond_a
    if-eqz v3, :cond_b

    .line 4068
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->aw:I

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:I

    goto :goto_4

    .line 4070
    :cond_b
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->av:I

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:I

    .line 4074
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getErrorIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    .line 4075
    invoke-virtual {v4}, Lcom/google/android/material/textfield/f;->e()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    .line 4076
    invoke-virtual {v4}, Lcom/google/android/material/textfield/f;->g()Z

    move-result v4

    if-eqz v4, :cond_c

    move v1, v2

    .line 4073
    :cond_c
    invoke-direct {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconVisible(Z)V

    .line 4079
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()V

    .line 4080
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()V

    .line 4081
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->h()V

    .line 4083
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/textfield/e;->b()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4084
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/f;->g()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->b(Z)V

    :cond_d
    if-eqz v0, :cond_e

    .line 4088
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 4089
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:I

    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I

    goto :goto_5

    .line 4091
    :cond_e
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:I

    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I

    .line 4095
    :goto_5
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:I

    if-ne v1, v2, :cond_12

    .line 4096
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_f

    .line 4097
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aA:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:I

    goto :goto_6

    :cond_f
    if-eqz v3, :cond_10

    if-nez v0, :cond_10

    .line 4099
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aC:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:I

    goto :goto_6

    :cond_10
    if-eqz v0, :cond_11

    .line 4101
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aB:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:I

    goto :goto_6

    .line 4103
    :cond_11
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->az:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:I

    .line 4107
    :cond_12
    :goto_6
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->F()V

    :cond_13
    :goto_7
    return-void
.end method

.method final j()Z
    .locals 1

    .line 4211
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aE:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 3898
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 3900
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 3901
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:Landroid/graphics/Rect;

    .line 3902
    invoke-static {p0, p1, p2}, Lcom/google/android/material/internal/c;->b(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3903
    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->c(Landroid/graphics/Rect;)V

    .line 3905
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Z

    if-eqz p1, :cond_0

    .line 3906
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getTextSize()F

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/material/internal/a;->a(F)V

    .line 3907
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getGravity()I

    move-result p1

    .line 3908
    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    and-int/lit8 p4, p1, -0x71

    or-int/lit8 p4, p4, 0x30

    invoke-virtual {p3, p4}, Lcom/google/android/material/internal/a;->b(I)V

    .line 3910
    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {p3, p1}, Lcom/google/android/material/internal/a;->a(I)V

    .line 3911
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/android/material/internal/a;->b(Landroid/graphics/Rect;)V

    .line 3912
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->b(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/a;->a(Landroid/graphics/Rect;)V

    .line 3913
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {p1}, Lcom/google/android/material/internal/a;->l()V

    .line 3917
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->S()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->aE:Z

    if-nez p1, :cond_0

    .line 3918
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->T()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 2917
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2919
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->J()Z

    move-result p1

    .line 2920
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->P()Z

    move-result p2

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 2922
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    new-instance p2, Lcom/google/android/material/textfield/TextInputLayout$3;

    invoke-direct {p2, p0}, Lcom/google/android/material/textfield/TextInputLayout$3;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 2930
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->K()V

    .line 2931
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->y()V

    .line 2932
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->A()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 2813
    instance-of v0, p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;

    if-nez v0, :cond_0

    .line 2814
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 2817
    :cond_0
    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;

    .line 2818
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2819
    iget-object v0, p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->a:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 2820
    iget-boolean v0, p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->b:Z

    if-eqz v0, :cond_1

    .line 2822
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ag:Lcom/google/android/material/internal/CheckableImageButton;

    new-instance v1, Lcom/google/android/material/textfield/TextInputLayout$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/TextInputLayout$2;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/CheckableImageButton;->post(Ljava/lang/Runnable;)Z

    .line 2832
    :cond_1
    iget-object v0, p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->c:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 2833
    iget-object v0, p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->d:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    .line 2834
    iget-object p1, p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->e:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderText(Ljava/lang/CharSequence;)V

    .line 2835
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 2799
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2800
    new-instance v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2801
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/f;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2802
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->a:Ljava/lang/CharSequence;

    .line 2804
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->N()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ag:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->b:Z

    .line 2805
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->c:Ljava/lang/CharSequence;

    .line 2806
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getHelperText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->d:Ljava/lang/CharSequence;

    .line 2807
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPlaceholderText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->e:Ljava/lang/CharSequence;

    return-object v1
.end method

.method public setBoxBackgroundColor(I)V
    .locals 1

    .line 1172
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:I

    if-eq v0, p1, :cond_0

    .line 1173
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:I

    .line 1174
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->az:I

    .line 1175
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->aB:I

    .line 1176
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->aC:I

    .line 1177
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->F()V

    :cond_0
    return-void
.end method

.method public setBoxBackgroundColorResource(I)V
    .locals 1

    .line 1157
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ldj;->c(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundColor(I)V

    return-void
.end method

.method public setBoxBackgroundColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 1191
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->az:I

    .line 1192
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->az:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:I

    const/4 v0, 0x1

    .line 1193
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, -0x101009e

    aput v2, v0, v1

    const/4 v1, -0x1

    .line 1194
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aA:I

    const/4 v0, 0x2

    .line 1195
    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 1196
    invoke-virtual {p1, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->aB:I

    .line 1198
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    .line 1199
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->aC:I

    .line 1201
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->F()V

    return-void

    nop

    :array_0
    .array-data 4
        0x101009c
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x1010367
        0x101009e
    .end array-data
.end method

.method public setBoxBackgroundMode(I)V
    .locals 1

    .line 887
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:I

    if-ne p1, v0, :cond_0

    return-void

    .line 890
    :cond_0
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:I

    .line 891
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    .line 892
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->k()V

    :cond_1
    return-void
.end method

.method public setBoxStrokeColor(I)V
    .locals 1

    .line 1081
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ax:I

    if-eq v0, p1, :cond_0

    .line 1082
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ax:I

    .line 1083
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->i()V

    :cond_0
    return-void
.end method

.method public setBoxStrokeColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 1103
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1104
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->av:I

    const/4 v0, 0x1

    .line 1105
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, -0x101009e

    aput v2, v0, v1

    const/4 v1, -0x1

    .line 1106
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aD:I

    const/4 v0, 0x2

    .line 1107
    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 1108
    invoke-virtual {p1, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->aw:I

    .line 1110
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    .line 1111
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ax:I

    goto :goto_0

    .line 1113
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ax:I

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1116
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ax:I

    .line 1118
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->i()V

    return-void

    :array_0
    .array-data 4
        0x1010367
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x101009c
        0x101009e
    .end array-data
.end method

.method public setBoxStrokeErrorColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1130
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ay:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1131
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ay:Landroid/content/res/ColorStateList;

    .line 1132
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->i()V

    :cond_0
    return-void
.end method

.method public setBoxStrokeWidth(I)V
    .locals 0

    .line 1021
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:I

    .line 1022
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->i()V

    return-void
.end method

.method public setBoxStrokeWidthFocused(I)V
    .locals 0

    .line 1058
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:I

    .line 1059
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->i()V

    return-void
.end method

.method public setBoxStrokeWidthFocusedResource(I)V
    .locals 1

    .line 1046
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeWidthFocused(I)V

    return-void
.end method

.method public setBoxStrokeWidthResource(I)V
    .locals 1

    .line 1009
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeWidth(I)V

    return-void
.end method

.method public setCounterEnabled(Z)V
    .locals 3

    .line 1950
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Z

    if-eq v0, p1, :cond_2

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    .line 1952
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroid/widget/TextView;

    .line 1953
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroid/widget/TextView;

    sget v2, Laiv$f;->textinput_counter:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 1954
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    .line 1955
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1957
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1958
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/material/textfield/f;->a(Landroid/widget/TextView;I)V

    .line 1959
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroid/widget/TextView;

    .line 1960
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1961
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laiv$d;->mtrl_textinput_counter_margin_start:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 1959
    invoke-static {v0, v1}, Lfq;->a(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 1962
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->B()V

    .line 1963
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->r()V

    goto :goto_0

    .line 1965
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/material/textfield/f;->b(Landroid/widget/TextView;I)V

    const/4 v0, 0x0

    .line 1966
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroid/widget/TextView;

    .line 1968
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Z

    :cond_2
    return-void
.end method

.method public setCounterMaxLength(I)V
    .locals 1

    .line 2073
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:I

    if-eq v0, p1, :cond_1

    if-lez p1, :cond_0

    .line 2075
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 2077
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:I

    .line 2079
    :goto_0
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Z

    if-eqz p1, :cond_1

    .line 2080
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->r()V

    :cond_1
    return-void
.end method

.method public setCounterOverflowTextAppearance(I)V
    .locals 1

    .line 2021
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:I

    if-eq v0, p1, :cond_0

    .line 2022
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:I

    .line 2023
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->B()V

    :cond_0
    return-void
.end method

.method public setCounterOverflowTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 2037
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 2038
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroid/content/res/ColorStateList;

    .line 2039
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->B()V

    :cond_0
    return-void
.end method

.method public setCounterTextAppearance(I)V
    .locals 1

    .line 1980
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:I

    if-eq v0, p1, :cond_0

    .line 1981
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:I

    .line 1982
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->B()V

    :cond_0
    return-void
.end method

.method public setCounterTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1995
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1996
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Landroid/content/res/ColorStateList;

    .line 1997
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->B()V

    :cond_0
    return-void
.end method

.method public setDefaultHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1697
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->at:Landroid/content/res/ColorStateList;

    .line 1698
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->au:Landroid/content/res/ColorStateList;

    .line 1700
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1701
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 2460
    invoke-static {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Landroid/view/ViewGroup;Z)V

    .line 2461
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method public setEndIconActivated(Z)V
    .locals 1

    .line 3287
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ag:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setActivated(Z)V

    return-void
.end method

.method public setEndIconCheckable(Z)V
    .locals 1

    .line 3309
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ag:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V

    return-void
.end method

.method public setEndIconContentDescription(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3369
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEndIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 3383
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 3384
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ag:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setEndIconDrawable(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3331
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lf;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 3344
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ag:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3345
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->h()V

    return-void
.end method

.method public setEndIconMode(I)V
    .locals 3

    .line 3175
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ae:I

    .line 3176
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ae:I

    .line 3177
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->c(I)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3178
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    .line 3179
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/e;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/e;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3180
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/textfield/e;->a()V

    .line 3188
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->O()V

    return-void

    .line 3182
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The current box background mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not supported by the end icon mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 3211
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ag:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ap:Landroid/view/View$OnLongClickListener;

    invoke-static {v0, p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setEndIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 3234
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ap:Landroid/view/View$OnLongClickListener;

    .line 3235
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ag:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setEndIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 3411
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ai:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 3412
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ai:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 3413
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->aj:Z

    .line 3414
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->O()V

    :cond_0
    return-void
.end method

.method public setEndIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 3427
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ak:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 3428
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ak:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 3429
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->al:Z

    .line 3430
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->O()V

    :cond_0
    return-void
.end method

.method public setEndIconVisible(Z)V
    .locals 1

    .line 3265
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->g()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 3266
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ag:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setVisibility(I)V

    .line 3267
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->A()V

    .line 3268
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->P()Z

    :cond_1
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1857
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/f;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1858
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1863
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 1866
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1867
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/f;->b(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1869
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/f;->b()V

    :goto_0
    return-void
.end method

.method public setErrorContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1833
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/f;->c(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setErrorEnabled(Z)V
    .locals 1

    .line 1722
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/f;->a(Z)V

    return-void
.end method

.method public setErrorIconDrawable(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1880
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lf;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1881
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()V

    return-void
.end method

.method public setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1891
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ar:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    .line 1892
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/f;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconVisible(Z)V

    return-void
.end method

.method public setErrorIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 3222
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ar:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->aq:Landroid/view/View$OnLongClickListener;

    invoke-static {v0, p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setErrorIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 3247
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->aq:Landroid/view/View$OnLongClickListener;

    .line 3248
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ar:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setErrorIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1913
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->as:Landroid/content/res/ColorStateList;

    .line 1914
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ar:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1916
    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1917
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1920
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ar:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eq p1, v0, :cond_1

    .line 1921
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ar:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setErrorIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1933
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ar:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1935
    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1936
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 1939
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ar:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eq p1, v0, :cond_1

    .line 1940
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ar:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setErrorTextAppearance(I)V
    .locals 1

    .line 1731
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/f;->b(I)V

    return-void
.end method

.method public setErrorTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1736
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/f;->a(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setExpandedHintEnabled(Z)V
    .locals 1

    .line 2909
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aF:Z

    if-eq v0, p1, :cond_0

    .line 2910
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->aF:Z

    const/4 p1, 0x0

    .line 2911
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Z)V

    :cond_0
    return-void
.end method

.method public setHelperText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1794
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1795
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 1796
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    goto :goto_0

    .line 1799
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1800
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 1802
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/f;->a(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setHelperTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1756
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/f;->b(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setHelperTextEnabled(Z)V
    .locals 1

    .line 1777
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/f;->b(Z)V

    return-void
.end method

.method public setHelperTextTextAppearance(I)V
    .locals 1

    .line 1751
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/f;->c(I)V

    return-void
.end method

.method public setHint(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1561
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1547
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Z

    if-eqz v0, :cond_0

    .line 1548
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    const/16 p1, 0x800

    .line 1549
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public setHintAnimationEnabled(Z)V
    .locals 0

    .line 2887
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->aG:Z

    return-void
.end method

.method public setHintEnabled(Z)V
    .locals 2

    .line 1598
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Z

    if-eq p1, v0, :cond_4

    .line 1599
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Z

    .line 1600
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 1602
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    .line 1603
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1605
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1608
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1610
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    .line 1611
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1614
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1615
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 1617
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 p1, 0x1

    .line 1619
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    .line 1623
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz p1, :cond_4

    .line 1624
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->q()V

    :cond_4
    return-void
.end method

.method public setHintTextAppearance(I)V
    .locals 1

    .line 1657
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->c(I)V

    .line 1658
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {p1}, Lcom/google/android/material/internal/a;->o()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->au:Landroid/content/res/ColorStateList;

    .line 1660
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1661
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Z)V

    .line 1663
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->q()V

    :cond_0
    return-void
.end method

.method public setHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1672
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->au:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 1673
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->at:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 1674
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->a(Landroid/content/res/ColorStateList;)V

    .line 1677
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->au:Landroid/content/res/ColorStateList;

    .line 1679
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1680
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Z)V

    :cond_1
    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 3538
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3537
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3554
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ag:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 3506
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lf;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3505
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3521
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ag:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPasswordVisibilityToggleEnabled(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 3607
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ae:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3609
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 3612
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPasswordVisibilityToggleTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3630
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ai:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 3631
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->aj:Z

    .line 3632
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->O()V

    return-void
.end method

.method public setPasswordVisibilityToggleTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3646
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ak:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 3647
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->al:Z

    .line 3648
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->O()V

    return-void
.end method

.method public setPlaceholderText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2143
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2144
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextEnabled(Z)V

    goto :goto_0

    .line 2146
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2148
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextEnabled(Z)V

    .line 2150
    :cond_1
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Ljava/lang/CharSequence;

    .line 2152
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->s()V

    return-void
.end method

.method public setPlaceholderTextAppearance(I)V
    .locals 1

    .line 2261
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:I

    .line 2262
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2263
    invoke-static {v0, p1}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method public setPlaceholderTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 2236
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 2237
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Landroid/content/res/ColorStateList;

    .line 2238
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2239
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setPrefixText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2286
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Ljava/lang/CharSequence;

    .line 2287
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2288
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    return-void
.end method

.method public setPrefixTextAppearance(I)V
    .locals 1

    .line 2345
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/widget/TextView;

    invoke-static {v0, p1}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setPrefixTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 2326
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStartIconCheckable(Z)V
    .locals 1

    .line 3078
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V

    return-void
.end method

.method public setStartIconContentDescription(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3100
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setStartIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 3114
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getStartIconContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 3115
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setStartIconDrawable(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2976
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lf;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 2989
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2991
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconVisible(Z)V

    .line 2992
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2994
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconVisible(Z)V

    const/4 p1, 0x0

    .line 2995
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2996
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2997
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setStartIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 3021
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ac:Landroid/view/View$OnLongClickListener;

    invoke-static {v0, p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setStartIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 3033
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ac:Landroid/view/View$OnLongClickListener;

    .line 3034
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setStartIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 3142
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 3143
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 3144
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:Z

    .line 3145
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->M()V

    :cond_0
    return-void
.end method

.method public setStartIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 3158
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 3159
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 3160
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->W:Z

    .line 3161
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->M()V

    :cond_0
    return-void
.end method

.method public setStartIconVisible(Z)V
    .locals 1

    .line 3043
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->d()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 3044
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setVisibility(I)V

    .line 3045
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->y()V

    .line 3046
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->P()Z

    :cond_1
    return-void
.end method

.method public setSuffixText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2372
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Ljava/lang/CharSequence;

    .line 2373
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2374
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->z()V

    return-void
.end method

.method public setSuffixTextAppearance(I)V
    .locals 1

    .line 2436
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Landroid/widget/TextView;

    invoke-static {v0, p1}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setSuffixTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 2417
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/TextInputLayout$a;)V
    .locals 1

    .line 3681
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 3682
    invoke-static {v0, p1}, Lgj;->a(Landroid/view/View;Lfh;)V

    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1315
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Landroid/graphics/Typeface;

    if-eq p1, v0, :cond_0

    .line 1316
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Landroid/graphics/Typeface;

    .line 1318
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->c(Landroid/graphics/Typeface;)V

    .line 1319
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/f;->a(Landroid/graphics/Typeface;)V

    .line 1321
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1322
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method
