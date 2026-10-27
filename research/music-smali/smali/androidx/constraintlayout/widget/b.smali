.class public abstract Landroidx/constraintlayout/widget/b;
.super Landroid/view/View;
.source "ConstraintHelper.java"


# instance fields
.field private a:[Landroid/view/View;

.field protected b:[I

.field protected c:I

.field protected d:Landroid/content/Context;

.field protected e:Lbj;

.field protected f:Z

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 99
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x20

    .line 64
    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/constraintlayout/widget/b;->b:[I

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/b;->f:Z

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Landroidx/constraintlayout/widget/b;->a:[Landroid/view/View;

    .line 96
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/b;->i:Ljava/util/HashMap;

    .line 100
    iput-object p1, p0, Landroidx/constraintlayout/widget/b;->d:Landroid/content/Context;

    .line 101
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/b;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x20

    .line 64
    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/constraintlayout/widget/b;->b:[I

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/b;->f:Z

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Landroidx/constraintlayout/widget/b;->a:[Landroid/view/View;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/b;->i:Ljava/util/HashMap;

    .line 106
    iput-object p1, p0, Landroidx/constraintlayout/widget/b;->d:Landroid/content/Context;

    .line 107
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/b;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x20

    .line 64
    new-array p3, p3, [I

    iput-object p3, p0, Landroidx/constraintlayout/widget/b;->b:[I

    const/4 p3, 0x0

    .line 81
    iput-boolean p3, p0, Landroidx/constraintlayout/widget/b;->f:Z

    const/4 p3, 0x0

    .line 94
    iput-object p3, p0, Landroidx/constraintlayout/widget/b;->a:[Landroid/view/View;

    .line 96
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/widget/b;->i:Ljava/util/HashMap;

    .line 112
    iput-object p1, p0, Landroidx/constraintlayout/widget/b;->d:Landroid/content/Context;

    .line 113
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/b;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 390
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/widget/b;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 394
    :cond_1
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 396
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 397
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    const/4 v5, 0x0

    .line 400
    :try_start_0
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :catch_0
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 405
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result p1

    return p1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method private a(I)V
    .locals 3

    .line 222
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/b;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 225
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/widget/b;->c:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroidx/constraintlayout/widget/b;->b:[I

    array-length v2, v1

    if-le v0, v2, :cond_1

    .line 226
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/widget/b;->b:[I

    .line 228
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->b:[I

    iget v1, p0, Landroidx/constraintlayout/widget/b;->c:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 229
    iput v1, p0, Landroidx/constraintlayout/widget/b;->c:I

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 271
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->d:Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    .line 278
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 281
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_2

    .line 282
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 284
    :cond_2
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/b;->c(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    iget-object v1, p0, Landroidx/constraintlayout/widget/b;->i:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    invoke-direct {p0, v0}, Landroidx/constraintlayout/widget/b;->a(I)V

    goto :goto_0

    .line 289
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find id of \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConstraintHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)[I
    .locals 4

    const-string v0, ","

    .line 603
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 604
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 605
    array-length p1, p2

    new-array p1, p1, [I

    const/4 v0, 0x0

    move v1, v0

    .line 607
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 608
    aget-object v2, p2, v0

    .line 609
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 610
    invoke-direct {p0, v2}, Landroidx/constraintlayout/widget/b;->c(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 612
    aput v2, p1, v1

    move v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 615
    :cond_1
    array-length p2, p2

    if-eq v1, p2, :cond_2

    .line 616
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method private b(Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_6

    .line 297
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 300
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->d:Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    .line 304
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 307
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/b;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_2

    .line 308
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    :cond_2
    const-string v1, "ConstraintHelper"

    if-nez v0, :cond_3

    const-string p1, "Parent not a ConstraintLayout"

    .line 311
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 314
    :cond_3
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    .line 316
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 317
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 318
    instance-of v6, v5, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    if-eqz v6, :cond_5

    .line 319
    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 320
    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$a;->ac:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 321
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    .line 322
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "to use ConstraintTag view "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " must have an ID"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 324
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-direct {p0, v4}, Landroidx/constraintlayout/widget/b;->a(I)V

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return-void
.end method

.method private c(Ljava/lang/String;)I
    .locals 5

    .line 339
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 345
    :goto_0
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/b;->isInEditMode()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {v0, v3, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 347
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 348
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_1
    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    .line 355
    invoke-direct {p0, v0, p1}, Landroidx/constraintlayout/widget/b;->a(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    move-result v3

    :cond_2
    if-nez v3, :cond_3

    .line 360
    :try_start_0
    const-class v0, Landroidx/constraintlayout/widget/h$a;

    .line 361
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 362
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    if-nez v3, :cond_4

    .line 371
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/b;->d:Landroid/content/Context;

    .line 372
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    .line 371
    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    :cond_4
    return v3
.end method


# virtual methods
.method protected a(Landroid/util/AttributeSet;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 121
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/b;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/widget/h$b;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 124
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 125
    sget v3, Landroidx/constraintlayout/widget/h$b;->ConstraintLayout_Layout_constraint_referenced_ids:I

    if-ne v2, v3, :cond_0

    .line 126
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/widget/b;->g:Ljava/lang/String;

    .line 127
    iget-object v2, p0, Landroidx/constraintlayout/widget/b;->g:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/b;->setIds(Ljava/lang/String;)V

    goto :goto_1

    .line 128
    :cond_0
    sget v3, Landroidx/constraintlayout/widget/h$b;->ConstraintLayout_Layout_constraint_referenced_tags:I

    if-ne v2, v3, :cond_1

    .line 129
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/widget/b;->h:Ljava/lang/String;

    .line 130
    iget-object v2, p0, Landroidx/constraintlayout/widget/b;->h:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/b;->setReferenceTags(Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    return-void
.end method

.method protected a(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 7

    .line 459
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/b;->getVisibility()I

    move-result v0

    .line 461
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    .line 462
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/b;->getElevation()F

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v4, 0x0

    .line 464
    :goto_1
    iget v5, p0, Landroidx/constraintlayout/widget/b;->c:I

    if-ge v4, v5, :cond_2

    .line 465
    iget-object v5, p0, Landroidx/constraintlayout/widget/b;->b:[I

    aget v5, v5, v4

    .line 466
    invoke-virtual {p1, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 468
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    cmpl-float v6, v1, v3

    if-lez v6, :cond_1

    .line 469
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v2, :cond_1

    .line 470
    invoke-virtual {v5}, Landroid/view/View;->getTranslationZ()F

    move-result v6

    add-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationZ(F)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public a(Landroidx/constraintlayout/widget/d$a;Lbk;Landroidx/constraintlayout/widget/ConstraintLayout$a;Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/widget/d$a;",
            "Lbk;",
            "Landroidx/constraintlayout/widget/ConstraintLayout$a;",
            "Landroid/util/SparseArray<",
            "Lbf;",
            ">;)V"
        }
    .end annotation

    .line 578
    iget-object p3, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object p3, p3, Landroidx/constraintlayout/widget/d$b;->ak:[I

    if-eqz p3, :cond_0

    .line 579
    iget-object p3, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object p3, p3, Landroidx/constraintlayout/widget/d$b;->ak:[I

    invoke-virtual {p0, p3}, Landroidx/constraintlayout/widget/b;->setReferencedIds([I)V

    goto :goto_0

    .line 580
    :cond_0
    iget-object p3, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object p3, p3, Landroidx/constraintlayout/widget/d$b;->al:Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 581
    iget-object p3, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object p3, p3, Landroidx/constraintlayout/widget/d$b;->al:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_1

    .line 582
    iget-object p3, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v0, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v0, v0, Landroidx/constraintlayout/widget/d$b;->al:Ljava/lang/String;

    invoke-direct {p0, p0, v0}, Landroidx/constraintlayout/widget/b;->a(Landroid/view/View;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p3, Landroidx/constraintlayout/widget/d$b;->ak:[I

    goto :goto_0

    .line 585
    :cond_1
    iget-object p3, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    const/4 v0, 0x0

    iput-object v0, p3, Landroidx/constraintlayout/widget/d$b;->ak:[I

    :cond_2
    :goto_0
    if-eqz p2, :cond_4

    .line 589
    invoke-virtual {p2}, Lbk;->b_()V

    .line 590
    iget-object p3, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object p3, p3, Landroidx/constraintlayout/widget/d$b;->ak:[I

    if-eqz p3, :cond_4

    const/4 p3, 0x0

    .line 591
    :goto_1
    iget-object v0, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v0, v0, Landroidx/constraintlayout/widget/d$b;->ak:[I

    array-length v0, v0

    if-ge p3, v0, :cond_4

    .line 592
    iget-object v0, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v0, v0, Landroidx/constraintlayout/widget/d$b;->ak:[I

    aget v0, v0, p3

    .line 593
    invoke-virtual {p4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbf;

    if-eqz v0, :cond_3

    .line 595
    invoke-virtual {p2, v0}, Lbk;->a(Lbf;)V

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public a(Lbf;Z)V
    .locals 0

    return-void
.end method

.method public a(Lbg;Lbj;Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbg;",
            "Lbj;",
            "Landroid/util/SparseArray<",
            "Lbf;",
            ">;)V"
        }
    .end annotation

    .line 529
    invoke-interface {p2}, Lbj;->b_()V

    const/4 p1, 0x0

    .line 530
    :goto_0
    iget v0, p0, Landroidx/constraintlayout/widget/b;->c:I

    if-ge p1, v0, :cond_0

    .line 531
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->b:[I

    aget v0, v0, p1

    .line 532
    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbf;

    invoke-interface {p2, v0}, Lbj;->a(Lbf;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected b(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    return-void
.end method

.method public c(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 5

    .line 498
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/b;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/b;->setIds(Ljava/lang/String;)V

    .line 501
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->e:Lbj;

    if-nez v0, :cond_1

    return-void

    .line 504
    :cond_1
    invoke-interface {v0}, Lbj;->b_()V

    const/4 v0, 0x0

    .line 505
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/widget/b;->c:I

    if-ge v0, v1, :cond_4

    .line 506
    iget-object v1, p0, Landroidx/constraintlayout/widget/b;->b:[I

    aget v1, v1, v0

    .line 507
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    .line 511
    iget-object v3, p0, Landroidx/constraintlayout/widget/b;->i:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 512
    invoke-direct {p0, p1, v1}, Landroidx/constraintlayout/widget/b;->a(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 514
    iget-object v2, p0, Landroidx/constraintlayout/widget/b;->b:[I

    aput v3, v2, v0

    .line 515
    iget-object v2, p0, Landroidx/constraintlayout/widget/b;->i:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_3

    .line 520
    iget-object v1, p0, Landroidx/constraintlayout/widget/b;->e:Lbj;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Lbf;

    move-result-object v2

    invoke-interface {v1, v2}, Lbj;->a(Lbf;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 523
    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->e:Lbj;

    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lbg;

    invoke-interface {v0, p1}, Lbj;->a(Lbg;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 257
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->e:Lbj;

    if-nez v0, :cond_0

    return-void

    .line 260
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/b;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 261
    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    if-eqz v1, :cond_1

    .line 262
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 263
    iget-object v1, p0, Landroidx/constraintlayout/widget/b;->e:Lbj;

    check-cast v1, Lbf;

    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->av:Lbf;

    :cond_1
    return-void
.end method

.method protected d(Landroidx/constraintlayout/widget/ConstraintLayout;)[Landroid/view/View;
    .locals 3

    .line 538
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->a:[Landroid/view/View;

    if-eqz v0, :cond_0

    array-length v0, v0

    iget v1, p0, Landroidx/constraintlayout/widget/b;->c:I

    if-eq v0, v1, :cond_1

    .line 539
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/widget/b;->c:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroidx/constraintlayout/widget/b;->a:[Landroid/view/View;

    :cond_1
    const/4 v0, 0x0

    .line 542
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/widget/b;->c:I

    if-ge v0, v1, :cond_2

    .line 543
    iget-object v1, p0, Landroidx/constraintlayout/widget/b;->b:[I

    aget v1, v1, v0

    .line 544
    iget-object v2, p0, Landroidx/constraintlayout/widget/b;->a:[Landroid/view/View;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 546
    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/widget/b;->a:[Landroid/view/View;

    return-object p1
.end method

.method protected e()V
    .locals 2

    .line 480
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 481
    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_0

    .line 482
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/b;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_0
    return-void
.end method

.method public e(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    return-void
.end method

.method public f(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    return-void
.end method

.method public g(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    return-void
.end method

.method public getReferencedIds()[I
    .locals 2

    .line 204
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->b:[I

    iget v1, p0, Landroidx/constraintlayout/widget/b;->c:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 139
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 140
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/b;->setIds(Ljava/lang/String;)V

    .line 143
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/b;->setReferenceTags(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 245
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/b;->f:Z

    if-eqz v0, :cond_0

    .line 246
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 248
    invoke-virtual {p0, p1, p1}, Landroidx/constraintlayout/widget/b;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method protected setIds(Ljava/lang/String;)V
    .locals 3

    .line 416
    iput-object p1, p0, Landroidx/constraintlayout/widget/b;->g:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 421
    iput v0, p0, Landroidx/constraintlayout/widget/b;->c:I

    :goto_0
    const/16 v1, 0x2c

    .line 423
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 425
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/b;->a(Ljava/lang/String;)V

    return-void

    .line 428
    :cond_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/constraintlayout/widget/b;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method

.method protected setReferenceTags(Ljava/lang/String;)V
    .locals 3

    .line 437
    iput-object p1, p0, Landroidx/constraintlayout/widget/b;->h:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 442
    iput v0, p0, Landroidx/constraintlayout/widget/b;->c:I

    :goto_0
    const/16 v1, 0x2c

    .line 444
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 446
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/b;->b(Ljava/lang/String;)V

    return-void

    .line 449
    :cond_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/constraintlayout/widget/b;->b(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method

.method public setReferencedIds([I)V
    .locals 2

    const/4 v0, 0x0

    .line 211
    iput-object v0, p0, Landroidx/constraintlayout/widget/b;->g:Ljava/lang/String;

    const/4 v0, 0x0

    .line 212
    iput v0, p0, Landroidx/constraintlayout/widget/b;->c:I

    .line 213
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 214
    aget v1, p1, v0

    invoke-direct {p0, v1}, Landroidx/constraintlayout/widget/b;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTag(ILjava/lang/Object;)V
    .locals 0

    .line 627
    invoke-super {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-nez p2, :cond_0

    .line 628
    iget-object p2, p0, Landroidx/constraintlayout/widget/b;->g:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 629
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/b;->a(I)V

    :cond_0
    return-void
.end method
