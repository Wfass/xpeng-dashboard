.class final Lcom/google/android/material/textfield/f;
.super Ljava/lang/Object;
.source "IndicatorViewController.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/material/textfield/TextInputLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:I

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/animation/Animator;

.field private final g:F

.field private h:I

.field private i:I

.field private j:Ljava/lang/CharSequence;

.field private k:Z

.field private l:Landroid/widget/TextView;

.field private m:Ljava/lang/CharSequence;

.field private n:I

.field private o:Landroid/content/res/ColorStateList;

.field private p:Ljava/lang/CharSequence;

.field private q:Z

.field private r:Landroid/widget/TextView;

.field private s:I

.field private t:Landroid/content/res/ColorStateList;

.field private u:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/f;->a:Landroid/content/Context;

    .line 123
    iput-object p1, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 124
    iget-object p1, p0, Lcom/google/android/material/textfield/f;->a:Landroid/content/Context;

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Laiv$d;->design_textinput_caption_translate_y:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/textfield/f;->g:F

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/textfield/f;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcom/google/android/material/textfield/f;->h:I

    return p1
.end method

.method private a(ZII)I
    .locals 0

    if-eqz p1, :cond_0

    .line 385
    iget-object p1, p0, Lcom/google/android/material/textfield/f;->a:Landroid/content/Context;

    .line 386
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    :cond_0
    return p3
.end method

.method static synthetic a(Lcom/google/android/material/textfield/f;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/google/android/material/textfield/f;->f:Landroid/animation/Animator;

    return-object p1
.end method

.method private a(Landroid/widget/TextView;)Landroid/animation/ObjectAnimator;
    .locals 4

    .line 325
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/google/android/material/textfield/f;->g:F

    neg-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 326
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xd9

    .line 327
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 328
    sget-object v0, Laiw;->d:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method private a(Landroid/widget/TextView;Z)Landroid/animation/ObjectAnimator;
    .locals 3

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 318
    :goto_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xa7

    .line 319
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 320
    sget-object p2, Laiw;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/material/textfield/f;)Landroid/widget/TextView;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;

    return-object p0
.end method

.method private a(II)V
    .locals 2

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 275
    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/f;->d(I)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 277
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 278
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    if-eqz p1, :cond_2

    .line 283
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/f;->d(I)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    .line 285
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    .line 288
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    :cond_2
    iput p2, p0, Lcom/google/android/material/textfield/f;->h:I

    return-void
.end method

.method private a(IIZ)V
    .locals 13

    move-object v7, p0

    move v8, p2

    move v9, p1

    move/from16 v10, p3

    if-ne v9, v8, :cond_0

    return-void

    :cond_0
    if-eqz v10, :cond_1

    .line 209
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    .line 210
    iput-object v11, v7, Lcom/google/android/material/textfield/f;->f:Landroid/animation/Animator;

    .line 211
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 213
    iget-boolean v2, v7, Lcom/google/android/material/textfield/f;->q:Z

    iget-object v3, v7, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, v12

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/textfield/f;->a(Ljava/util/List;ZLandroid/widget/TextView;III)V

    .line 221
    iget-boolean v2, v7, Lcom/google/android/material/textfield/f;->k:Z

    iget-object v3, v7, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/textfield/f;->a(Ljava/util/List;ZLandroid/widget/TextView;III)V

    .line 229
    invoke-static {v11, v12}, Laix;->a(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 230
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/f;->d(I)Landroid/widget/TextView;

    move-result-object v3

    .line 231
    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/f;->d(I)Landroid/widget/TextView;

    move-result-object v5

    .line 233
    new-instance v6, Lcom/google/android/material/textfield/f$1;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/textfield/f$1;-><init>(Lcom/google/android/material/textfield/f;ILandroid/widget/TextView;ILandroid/widget/TextView;)V

    invoke-virtual {v11, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 259
    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 261
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textfield/f;->a(II)V

    .line 263
    :goto_0
    iget-object v0, v7, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->c()V

    .line 264
    iget-object v0, v7, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v10}, Lcom/google/android/material/textfield/TextInputLayout;->a(Z)V

    .line 265
    iget-object v0, v7, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->i()V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;I)V
    .locals 0

    if-nez p2, :cond_0

    const/16 p2, 0x8

    .line 434
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private a(Landroid/widget/TextView;Landroid/graphics/Typeface;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 562
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;ZLandroid/widget/TextView;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;Z",
            "Landroid/widget/TextView;",
            "III)V"
        }
    .end annotation

    if-eqz p3, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eq p4, p6, :cond_1

    if-ne p4, p5, :cond_3

    :cond_1
    if-ne p6, p4, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 309
    :goto_0
    invoke-direct {p0, p3, p2}, Lcom/google/android/material/textfield/f;->a(Landroid/widget/TextView;Z)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 308
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne p6, p4, :cond_3

    .line 311
    invoke-direct {p0, p3}, Lcom/google/android/material/textfield/f;->a(Landroid/widget/TextView;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0}, Lgj;->B(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 193
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/material/textfield/f;->i:I

    iget v1, p0, Lcom/google/android/material/textfield/f;->h:I

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 196
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private d(I)Landroid/widget/TextView;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 348
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    return-object p1

    .line 346
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;

    return-object p1
.end method

.method private e(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 523
    iget-object p1, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/textfield/f;->j:Ljava/lang/CharSequence;

    .line 525
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private n()Z
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method a()V
    .locals 4

    .line 142
    invoke-virtual {p0}, Lcom/google/android/material/textfield/f;->c()V

    .line 145
    iget v0, p0, Lcom/google/android/material/textfield/f;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 146
    iput v0, p0, Lcom/google/android/material/textfield/f;->i:I

    .line 148
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/f;->h:I

    iget v1, p0, Lcom/google/android/material/textfield/f;->i:I

    iget-object v2, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    const/4 v3, 0x0

    .line 149
    invoke-direct {p0, v2, v3}, Lcom/google/android/material/textfield/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 148
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/textfield/f;->a(IIZ)V

    return-void
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 577
    iput-object p1, p0, Lcom/google/android/material/textfield/f;->o:Landroid/content/res/ColorStateList;

    .line 578
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 579
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method a(Landroid/graphics/Typeface;)V
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->u:Landroid/graphics/Typeface;

    if-eq p1, v0, :cond_0

    .line 554
    iput-object p1, p0, Lcom/google/android/material/textfield/f;->u:Landroid/graphics/Typeface;

    .line 555
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/textfield/f;->a(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 556
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/textfield/f;->a(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method a(Landroid/widget/TextView;I)V
    .locals 5

    .line 391
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const/4 v2, -0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/f;->e:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 392
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/google/android/material/textfield/f;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/f;->c:Landroid/widget/LinearLayout;

    .line 393
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 394
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v3, p0, Lcom/google/android/material/textfield/f;->c:Landroid/widget/LinearLayout;

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4, v2}, Lcom/google/android/material/textfield/TextInputLayout;->addView(Landroid/view/View;II)V

    .line 396
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/material/textfield/f;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/f;->e:Landroid/widget/FrameLayout;

    .line 397
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 399
    iget-object v3, p0, Lcom/google/android/material/textfield/f;->c:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/google/android/material/textfield/f;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/google/android/material/textfield/f;->d()V

    .line 406
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/f;->a(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 407
    iget-object p2, p0, Lcom/google/android/material/textfield/f;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 408
    iget-object p2, p0, Lcom/google/android/material/textfield/f;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 410
    :cond_1
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 412
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/textfield/f;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 415
    iget p1, p0, Lcom/google/android/material/textfield/f;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/material/textfield/f;->d:I

    return-void
.end method

.method a(Ljava/lang/CharSequence;)V
    .locals 3

    .line 129
    invoke-virtual {p0}, Lcom/google/android/material/textfield/f;->c()V

    .line 130
    iput-object p1, p0, Lcom/google/android/material/textfield/f;->p:Ljava/lang/CharSequence;

    .line 131
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget v0, p0, Lcom/google/android/material/textfield/f;->h:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 135
    iput v1, p0, Lcom/google/android/material/textfield/f;->i:I

    .line 137
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/f;->h:I

    iget v1, p0, Lcom/google/android/material/textfield/f;->i:I

    iget-object v2, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    .line 138
    invoke-direct {p0, v2, p1}, Lcom/google/android/material/textfield/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 137
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/material/textfield/f;->a(IIZ)V

    return-void
.end method

.method a(Z)V
    .locals 3

    .line 440
    iget-boolean v0, p0, Lcom/google/android/material/textfield/f;->k:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 445
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/f;->c()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 448
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p0, Lcom/google/android/material/textfield/f;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;

    .line 449
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;

    sget v2, Laiv$f;->textinput_error:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 450
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 451
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 453
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->u:Landroid/graphics/Typeface;

    if-eqz v1, :cond_2

    .line 454
    iget-object v2, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 456
    :cond_2
    iget v1, p0, Lcom/google/android/material/textfield/f;->n:I

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/f;->b(I)V

    .line 457
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->o:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/f;->a(Landroid/content/res/ColorStateList;)V

    .line 458
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->m:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/f;->c(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 460
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lgj;->f(Landroid/view/View;I)V

    .line 461
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/textfield/f;->a(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 463
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/f;->b()V

    .line 464
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/textfield/f;->b(Landroid/widget/TextView;I)V

    const/4 v0, 0x0

    .line 465
    iput-object v0, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;

    .line 466
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->c()V

    .line 467
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->i()V

    .line 469
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/textfield/f;->k:Z

    return-void
.end method

.method a(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method b()V
    .locals 4

    const/4 v0, 0x0

    .line 166
    iput-object v0, p0, Lcom/google/android/material/textfield/f;->j:Ljava/lang/CharSequence;

    .line 167
    invoke-virtual {p0}, Lcom/google/android/material/textfield/f;->c()V

    .line 169
    iget v1, p0, Lcom/google/android/material/textfield/f;->h:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 171
    iget-boolean v1, p0, Lcom/google/android/material/textfield/f;->q:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/textfield/f;->p:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 172
    iput v1, p0, Lcom/google/android/material/textfield/f;->i:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 175
    iput v1, p0, Lcom/google/android/material/textfield/f;->i:I

    .line 178
    :cond_1
    :goto_0
    iget v1, p0, Lcom/google/android/material/textfield/f;->h:I

    iget v2, p0, Lcom/google/android/material/textfield/f;->i:I

    iget-object v3, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;

    .line 179
    invoke-direct {p0, v3, v0}, Lcom/google/android/material/textfield/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 178
    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/material/textfield/f;->a(IIZ)V

    return-void
.end method

.method b(I)V
    .locals 2

    .line 584
    iput p1, p0, Lcom/google/android/material/textfield/f;->n:I

    .line 585
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 586
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method b(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 613
    iput-object p1, p0, Lcom/google/android/material/textfield/f;->t:Landroid/content/res/ColorStateList;

    .line 614
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 615
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method b(Landroid/widget/TextView;I)V
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->c:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 423
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/f;->a(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/material/textfield/f;->e:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_1

    .line 424
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 426
    :cond_1
    iget-object p2, p0, Lcom/google/android/material/textfield/f;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 428
    :goto_0
    iget p1, p0, Lcom/google/android/material/textfield/f;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/material/textfield/f;->d:I

    .line 429
    iget-object p1, p0, Lcom/google/android/material/textfield/f;->c:Landroid/widget/LinearLayout;

    iget p2, p0, Lcom/google/android/material/textfield/f;->d:I

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textfield/f;->a(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method b(Ljava/lang/CharSequence;)V
    .locals 3

    .line 153
    invoke-virtual {p0}, Lcom/google/android/material/textfield/f;->c()V

    .line 154
    iput-object p1, p0, Lcom/google/android/material/textfield/f;->j:Ljava/lang/CharSequence;

    .line 155
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget v0, p0, Lcom/google/android/material/textfield/f;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 159
    iput v1, p0, Lcom/google/android/material/textfield/f;->i:I

    .line 161
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/f;->h:I

    iget v1, p0, Lcom/google/android/material/textfield/f;->i:I

    iget-object v2, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;

    .line 162
    invoke-direct {p0, v2, p1}, Lcom/google/android/material/textfield/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 161
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/material/textfield/f;->a(IIZ)V

    return-void
.end method

.method b(Z)V
    .locals 3

    .line 482
    iget-boolean v0, p0, Lcom/google/android/material/textfield/f;->q:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 487
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/f;->c()V

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 490
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p0, Lcom/google/android/material/textfield/f;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    .line 491
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    sget v2, Laiv$f;->textinput_helper_text:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 492
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 493
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 495
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->u:Landroid/graphics/Typeface;

    if-eqz v1, :cond_2

    .line 496
    iget-object v2, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 498
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 499
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lgj;->f(Landroid/view/View;I)V

    .line 501
    iget v1, p0, Lcom/google/android/material/textfield/f;->s:I

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/f;->c(I)V

    .line 502
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->t:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/f;->b(Landroid/content/res/ColorStateList;)V

    .line 503
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/textfield/f;->a(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 505
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/f;->a()V

    .line 506
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/textfield/f;->b(Landroid/widget/TextView;I)V

    const/4 v0, 0x0

    .line 507
    iput-object v0, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    .line 508
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->c()V

    .line 509
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->i()V

    .line 511
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/textfield/f;->q:Z

    return-void
.end method

.method c()V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->f:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method c(I)V
    .locals 1

    .line 620
    iput p1, p0, Lcom/google/android/material/textfield/f;->s:I

    .line 621
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 622
    invoke-static {v0, p1}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method c(Ljava/lang/CharSequence;)V
    .locals 1

    .line 591
    iput-object p1, p0, Lcom/google/android/material/textfield/f;->m:Ljava/lang/CharSequence;

    .line 592
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 593
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method d()V
    .locals 7

    .line 356
    invoke-direct {p0}, Lcom/google/android/material/textfield/f;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 358
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->a:Landroid/content/Context;

    invoke-static {v1}, Lajv;->a(Landroid/content/Context;)Z

    move-result v1

    .line 359
    iget-object v2, p0, Lcom/google/android/material/textfield/f;->c:Landroid/widget/LinearLayout;

    sget v3, Laiv$d;->material_helper_text_font_1_3_padding_horizontal:I

    .line 364
    invoke-static {v0}, Lgj;->j(Landroid/view/View;)I

    move-result v4

    .line 361
    invoke-direct {p0, v1, v3, v4}, Lcom/google/android/material/textfield/f;->a(ZII)I

    move-result v3

    sget v4, Laiv$d;->material_helper_text_font_1_3_padding_top:I

    iget-object v5, p0, Lcom/google/android/material/textfield/f;->a:Landroid/content/Context;

    .line 369
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Laiv$d;->material_helper_text_default_padding_top:I

    .line 370
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 365
    invoke-direct {p0, v1, v4, v5}, Lcom/google/android/material/textfield/f;->a(ZII)I

    move-result v4

    sget v5, Laiv$d;->material_helper_text_font_1_3_padding_horizontal:I

    .line 374
    invoke-static {v0}, Lgj;->k(Landroid/view/View;)I

    move-result v0

    .line 371
    invoke-direct {p0, v1, v5, v0}, Lcom/google/android/material/textfield/f;->a(ZII)I

    move-result v0

    const/4 v1, 0x0

    .line 359
    invoke-static {v2, v3, v4, v0, v1}, Lgj;->b(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method e()Z
    .locals 1

    .line 473
    iget-boolean v0, p0, Lcom/google/android/material/textfield/f;->k:Z

    return v0
.end method

.method f()Z
    .locals 1

    .line 477
    iget-boolean v0, p0, Lcom/google/android/material/textfield/f;->q:Z

    return v0
.end method

.method g()Z
    .locals 1

    .line 519
    iget v0, p0, Lcom/google/android/material/textfield/f;->i:I

    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/f;->e(I)Z

    move-result v0

    return v0
.end method

.method h()Ljava/lang/CharSequence;
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->j:Ljava/lang/CharSequence;

    return-object v0
.end method

.method i()Ljava/lang/CharSequence;
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->p:Ljava/lang/CharSequence;

    return-object v0
.end method

.method j()I
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method k()Landroid/content/res/ColorStateList;
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method l()Ljava/lang/CharSequence;
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->m:Ljava/lang/CharSequence;

    return-object v0
.end method

.method m()I
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method
