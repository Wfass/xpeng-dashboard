.class Lcom/google/android/material/textfield/d;
.super Lcom/google/android/material/textfield/e;
.source "DropdownMenuEndIconDelegate.java"


# static fields
.field private static final d:Z


# instance fields
.field private final e:Landroid/text/TextWatcher;

.field private final f:Landroid/view/View$OnFocusChangeListener;

.field private final g:Lcom/google/android/material/textfield/TextInputLayout$a;

.field private final h:Lcom/google/android/material/textfield/TextInputLayout$b;

.field private final i:Lcom/google/android/material/textfield/TextInputLayout$c;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Z

.field private l:J

.field private m:Landroid/graphics/drawable/StateListDrawable;

.field private n:Lakk;

.field private o:Landroid/view/accessibility/AccessibilityManager;

.field private p:Landroid/animation/ValueAnimator;

.field private q:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/android/material/textfield/d;->d:Z

    return-void
.end method

.method constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 2

    .line 202
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/e;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 73
    new-instance p1, Lcom/google/android/material/textfield/d$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/d$1;-><init>(Lcom/google/android/material/textfield/d;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/d;->e:Landroid/text/TextWatcher;

    .line 97
    new-instance p1, Lcom/google/android/material/textfield/d$3;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/d$3;-><init>(Lcom/google/android/material/textfield/d;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/d;->f:Landroid/view/View$OnFocusChangeListener;

    .line 108
    new-instance p1, Lcom/google/android/material/textfield/d$4;

    iget-object v0, p0, Lcom/google/android/material/textfield/d;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p1, p0, v0}, Lcom/google/android/material/textfield/d$4;-><init>(Lcom/google/android/material/textfield/d;Lcom/google/android/material/textfield/TextInputLayout;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/d;->g:Lcom/google/android/material/textfield/TextInputLayout$a;

    .line 140
    new-instance p1, Lcom/google/android/material/textfield/d$5;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/d$5;-><init>(Lcom/google/android/material/textfield/d;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/d;->h:Lcom/google/android/material/textfield/TextInputLayout$b;

    .line 164
    new-instance p1, Lcom/google/android/material/textfield/d$6;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/d$6;-><init>(Lcom/google/android/material/textfield/d;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/d;->i:Lcom/google/android/material/textfield/TextInputLayout$c;

    const/4 p1, 0x0

    .line 192
    iput-boolean p1, p0, Lcom/google/android/material/textfield/d;->j:Z

    .line 193
    iput-boolean p1, p0, Lcom/google/android/material/textfield/d;->k:Z

    const-wide v0, 0x7fffffffffffffffL

    .line 194
    iput-wide v0, p0, Lcom/google/android/material/textfield/d;->l:J

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/textfield/d;J)J
    .locals 0

    .line 67
    iput-wide p1, p0, Lcom/google/android/material/textfield/d;->l:J

    return-wide p1
.end method

.method private a(FFFI)Lakk;
    .locals 1

    .line 424
    invoke-static {}, Lakp;->a()Lakp$a;

    move-result-object v0

    .line 425
    invoke-virtual {v0, p1}, Lakp$a;->b(F)Lakp$a;

    move-result-object v0

    .line 426
    invoke-virtual {v0, p1}, Lakp$a;->c(F)Lakp$a;

    move-result-object p1

    .line 427
    invoke-virtual {p1, p2}, Lakp$a;->e(F)Lakp$a;

    move-result-object p1

    .line 428
    invoke-virtual {p1, p2}, Lakp$a;->d(F)Lakp$a;

    move-result-object p1

    .line 429
    invoke-virtual {p1}, Lakp$a;->a()Lakp;

    move-result-object p1

    .line 430
    iget-object p2, p0, Lcom/google/android/material/textfield/d;->b:Landroid/content/Context;

    .line 431
    invoke-static {p2, p3}, Lakk;->a(Landroid/content/Context;F)Lakk;

    move-result-object p2

    .line 432
    invoke-virtual {p2, p1}, Lakk;->setShapeAppearanceModel(Lakp;)V

    const/4 p1, 0x0

    .line 433
    invoke-virtual {p2, p1, p4, p1, p4}, Lakk;->a(IIII)V

    return-object p2
.end method

.method private varargs a(I[F)Landroid/animation/ValueAnimator;
    .locals 2

    .line 479
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 480
    sget-object v0, Laiw;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v0, p1

    .line 481
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 482
    new-instance p1, Lcom/google/android/material/textfield/d$2;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/d$2;-><init>(Lcom/google/android/material/textfield/d;)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p2
.end method

.method static synthetic a(Lcom/google/android/material/textfield/d;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/google/android/material/textfield/d;->o:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic a(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;
    .locals 0

    .line 67
    invoke-static {p0}, Lcom/google/android/material/textfield/d;->c(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/widget/AutoCompleteTextView;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 277
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/textfield/d;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 278
    iput-boolean v1, p0, Lcom/google/android/material/textfield/d;->j:Z

    .line 280
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/d;->j:Z

    if-nez v0, :cond_4

    .line 281
    sget-boolean v0, Lcom/google/android/material/textfield/d;->d:Z

    if-eqz v0, :cond_2

    .line 282
    iget-boolean v0, p0, Lcom/google/android/material/textfield/d;->k:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/d;->b(Z)V

    goto :goto_0

    .line 284
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/material/textfield/d;->k:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/d;->k:Z

    .line 285
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->toggle()V

    .line 287
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/material/textfield/d;->k:Z

    if-eqz v0, :cond_3

    .line 288
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 289
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    goto :goto_1

    .line 291
    :cond_3
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_1

    .line 294
    :cond_4
    iput-boolean v1, p0, Lcom/google/android/material/textfield/d;->j:Z

    :goto_1
    return-void
.end method

.method private a(Landroid/widget/AutoCompleteTextView;I[[ILakk;)V
    .locals 7

    .line 336
    sget v0, Laiv$b;->colorSurface:I

    invoke-static {p1, v0}, Lajj;->a(Landroid/view/View;I)I

    move-result v0

    .line 337
    new-instance v1, Lakk;

    .line 338
    invoke-virtual {p4}, Lakk;->M()Lakp;

    move-result-object v2

    invoke-direct {v1, v2}, Lakk;-><init>(Lakp;)V

    const v2, 0x3dcccccd    # 0.1f

    .line 339
    invoke-static {p2, v0, v2}, Lajj;->a(IIF)I

    move-result p2

    const/4 v2, 0x2

    .line 340
    new-array v3, v2, [I

    const/4 v4, 0x0

    aput p2, v3, v4

    const/4 v5, 0x1

    aput v4, v3, v5

    .line 341
    new-instance v6, Landroid/content/res/ColorStateList;

    invoke-direct {v6, p3, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v1, v6}, Lakk;->g(Landroid/content/res/ColorStateList;)V

    .line 343
    sget-boolean v3, Lcom/google/android/material/textfield/d;->d:Z

    if-eqz v3, :cond_0

    .line 344
    invoke-virtual {v1, v0}, Lakk;->setTint(I)V

    .line 345
    new-array v3, v2, [I

    aput p2, v3, v4

    aput v0, v3, v5

    .line 346
    new-instance p2, Landroid/content/res/ColorStateList;

    invoke-direct {p2, p3, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 347
    new-instance p3, Lakk;

    .line 348
    invoke-virtual {p4}, Lakk;->M()Lakp;

    move-result-object v0

    invoke-direct {p3, v0}, Lakk;-><init>(Lakp;)V

    const/4 v0, -0x1

    .line 349
    invoke-virtual {p3, v0}, Lakk;->setTint(I)V

    .line 350
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v0, p2, v1, p3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 351
    new-array p2, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v0, p2, v4

    aput-object p4, p2, v5

    .line 352
    new-instance p3, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p3, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 354
    :cond_0
    new-array p2, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v1, p2, v4

    aput-object p4, p2, v5

    .line 355
    new-instance p3, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p3, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 358
    :goto_0
    invoke-static {p1, p3}, Lgj;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/d;->a(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/textfield/d;Z)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/d;->b(Z)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/material/textfield/d;)Landroid/text/TextWatcher;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/google/android/material/textfield/d;->e:Landroid/text/TextWatcher;

    return-object p0
.end method

.method private b(Landroid/widget/AutoCompleteTextView;)V
    .locals 2

    .line 299
    sget-boolean v0, Lcom/google/android/material/textfield/d;->d:Z

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 302
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->n:Lakk;

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 304
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->m:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private b(Landroid/widget/AutoCompleteTextView;I[[ILakk;)V
    .locals 5

    .line 366
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundColor()I

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    .line 367
    invoke-static {p2, v0, v1}, Lajj;->a(IIF)I

    move-result p2

    const/4 v1, 0x2

    .line 368
    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 p2, 0x1

    aput v0, v2, p2

    .line 370
    sget-boolean v0, Lcom/google/android/material/textfield/d;->d:Z

    if-eqz v0, :cond_0

    .line 371
    new-instance p2, Landroid/content/res/ColorStateList;

    invoke-direct {p2, p3, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 372
    new-instance p3, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p3, p2, p4, p4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 374
    invoke-static {p1, p3}, Lgj;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 376
    :cond_0
    new-instance v0, Lakk;

    .line 377
    invoke-virtual {p4}, Lakk;->M()Lakp;

    move-result-object v4

    invoke-direct {v0, v4}, Lakk;-><init>(Lakp;)V

    .line 378
    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-direct {v4, p3, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, v4}, Lakk;->g(Landroid/content/res/ColorStateList;)V

    .line 379
    new-array p3, v1, [Landroid/graphics/drawable/Drawable;

    aput-object p4, p3, v3

    aput-object v0, p3, p2

    .line 380
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p2, p3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 381
    invoke-static {p1}, Lgj;->j(Landroid/view/View;)I

    move-result p3

    .line 382
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getPaddingTop()I

    move-result p4

    .line 383
    invoke-static {p1}, Lgj;->k(Landroid/view/View;)I

    move-result v0

    .line 384
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getPaddingBottom()I

    move-result v1

    .line 385
    invoke-static {p1, p2}, Lgj;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 386
    invoke-static {p1, p3, p4, v0, v1}, Lgj;->b(Landroid/view/View;IIII)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/d;->b(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    .line 458
    iget-boolean v0, p0, Lcom/google/android/material/textfield/d;->k:Z

    if-eq v0, p1, :cond_0

    .line 459
    iput-boolean p1, p0, Lcom/google/android/material/textfield/d;->k:Z

    .line 460
    iget-object p1, p0, Lcom/google/android/material/textfield/d;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 461
    iget-object p1, p0, Lcom/google/android/material/textfield/d;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method static synthetic b(Landroid/widget/EditText;)Z
    .locals 0

    .line 67
    invoke-static {p0}, Lcom/google/android/material/textfield/d;->d(Landroid/widget/EditText;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/google/android/material/textfield/d;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/google/android/material/textfield/d;->j:Z

    return p1
.end method

.method private static c(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;
    .locals 1

    .line 444
    instance-of v0, p0, Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    .line 450
    check-cast p0, Landroid/widget/AutoCompleteTextView;

    return-object p0

    .line 445
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic c(Lcom/google/android/material/textfield/d;)Lcom/google/android/material/textfield/TextInputLayout$a;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/google/android/material/textfield/d;->g:Lcom/google/android/material/textfield/TextInputLayout$a;

    return-object p0
.end method

.method private c(Landroid/widget/AutoCompleteTextView;)V
    .locals 9

    .line 311
    invoke-static {p1}, Lcom/google/android/material/textfield/d;->d(Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    move-result v0

    .line 316
    iget-object v1, p0, Lcom/google/android/material/textfield/d;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackground()Lakk;

    move-result-object v1

    .line 317
    sget v2, Laiv$b;->colorControlHighlight:I

    invoke-static {p1, v2}, Lajj;->a(Landroid/view/View;I)I

    move-result v2

    const/4 v3, 0x2

    .line 318
    new-array v4, v3, [[I

    const/4 v5, 0x1

    new-array v6, v5, [I

    const v7, 0x10100a7

    const/4 v8, 0x0

    aput v7, v6, v8

    aput-object v6, v4, v8

    new-array v6, v8, [I

    aput-object v6, v4, v5

    if-ne v0, v3, :cond_1

    .line 324
    invoke-direct {p0, p1, v2, v4, v1}, Lcom/google/android/material/textfield/d;->a(Landroid/widget/AutoCompleteTextView;I[[ILakk;)V

    goto :goto_0

    :cond_1
    if-ne v0, v5, :cond_2

    .line 326
    invoke-direct {p0, p1, v2, v4, v1}, Lcom/google/android/material/textfield/d;->b(Landroid/widget/AutoCompleteTextView;I[[ILakk;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/d;->c(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method static synthetic c()Z
    .locals 1

    .line 67
    sget-boolean v0, Lcom/google/android/material/textfield/d;->d:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/material/textfield/d;)Landroid/view/View$OnFocusChangeListener;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/google/android/material/textfield/d;->f:Landroid/view/View$OnFocusChangeListener;

    return-object p0
.end method

.method private d(Landroid/widget/AutoCompleteTextView;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 394
    new-instance v0, Lcom/google/android/material/textfield/d$8;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/textfield/d$8;-><init>(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 407
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->f:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 408
    sget-boolean v0, Lcom/google/android/material/textfield/d;->d:Z

    if-eqz v0, :cond_0

    .line 409
    new-instance v0, Lcom/google/android/material/textfield/d$9;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/d$9;-><init>(Lcom/google/android/material/textfield/d;)V

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/d;->d(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method private d()Z
    .locals 4

    .line 438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/material/textfield/d;->l:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static d(Landroid/widget/EditText;)Z
    .locals 0

    .line 454
    invoke-virtual {p0}, Landroid/widget/EditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private e()V
    .locals 3

    const/4 v0, 0x2

    .line 466
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const/16 v2, 0x43

    invoke-direct {p0, v2, v1}, Lcom/google/android/material/textfield/d;->a(I[F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/textfield/d;->q:Landroid/animation/ValueAnimator;

    .line 467
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    const/16 v1, 0x32

    invoke-direct {p0, v1, v0}, Lcom/google/android/material/textfield/d;->a(I[F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/d;->p:Landroid/animation/ValueAnimator;

    .line 468
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->p:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/textfield/d$10;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/d$10;-><init>(Lcom/google/android/material/textfield/d;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic e(Lcom/google/android/material/textfield/d;)Z
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/google/android/material/textfield/d;->d()Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lcom/google/android/material/textfield/d;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/google/android/material/textfield/d;->k:Z

    return p0
.end method

.method static synthetic g(Lcom/google/android/material/textfield/d;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/google/android/material/textfield/d;->q:Landroid/animation/ValueAnimator;

    return-object p0
.end method


# virtual methods
.method a()V
    .locals 6

    .line 207
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->b:Landroid/content/Context;

    .line 209
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laiv$d;->mtrl_shape_corner_size_small_component:I

    .line 210
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    .line 211
    iget-object v1, p0, Lcom/google/android/material/textfield/d;->b:Landroid/content/Context;

    .line 213
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laiv$d;->mtrl_exposed_dropdown_menu_popup_elevation:I

    .line 214
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    .line 215
    iget-object v2, p0, Lcom/google/android/material/textfield/d;->b:Landroid/content/Context;

    .line 217
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laiv$d;->mtrl_exposed_dropdown_menu_popup_vertical_padding:I

    .line 218
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 222
    invoke-direct {p0, v0, v0, v1, v2}, Lcom/google/android/material/textfield/d;->a(FFFI)Lakk;

    move-result-object v3

    const/4 v4, 0x0

    .line 229
    invoke-direct {p0, v4, v0, v1, v2}, Lcom/google/android/material/textfield/d;->a(FFFI)Lakk;

    move-result-object v0

    .line 235
    iput-object v3, p0, Lcom/google/android/material/textfield/d;->n:Lakk;

    .line 236
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/textfield/d;->m:Landroid/graphics/drawable/StateListDrawable;

    .line 237
    iget-object v1, p0, Lcom/google/android/material/textfield/d;->m:Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v4, 0x0

    const v5, 0x10100aa

    aput v5, v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 239
    iget-object v1, p0, Lcom/google/android/material/textfield/d;->m:Landroid/graphics/drawable/StateListDrawable;

    new-array v2, v4, [I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 243
    sget-boolean v0, Lcom/google/android/material/textfield/d;->d:Z

    if-eqz v0, :cond_0

    sget v0, Laiv$e;->mtrl_dropdown_arrow:I

    goto :goto_0

    :cond_0
    sget v0, Laiv$e;->mtrl_ic_arrow_drop_down:I

    .line 245
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/textfield/d;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lcom/google/android/material/textfield/d;->b:Landroid/content/Context;

    invoke-static {v2, v0}, Lf;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/d;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 247
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laiv$j;->exposed_dropdown_menu_content_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 246
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->a:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v1, Lcom/google/android/material/textfield/d$7;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/d$7;-><init>(Lcom/google/android/material/textfield/d;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/d;->h:Lcom/google/android/material/textfield/TextInputLayout$b;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/textfield/TextInputLayout$b;)V

    .line 257
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/d;->i:Lcom/google/android/material/textfield/TextInputLayout$c;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/textfield/TextInputLayout$c;)V

    .line 258
    invoke-direct {p0}, Lcom/google/android/material/textfield/d;->e()V

    .line 259
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->b:Landroid/content/Context;

    const-string v1, "accessibility"

    .line 260
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/google/android/material/textfield/d;->o:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method a(I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
