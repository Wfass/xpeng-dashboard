.class public Lcom/nex3z/flowlayout/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# static fields
.field private static final a:Ljava/lang/String; = "FlowLayout"


# instance fields
.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:F

.field private g:F

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/nex3z/flowlayout/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/nex3z/flowlayout/FlowLayout;->b:Z

    const/4 v1, 0x0

    .line 47
    iput v1, p0, Lcom/nex3z/flowlayout/FlowLayout;->c:I

    .line 48
    iput v1, p0, Lcom/nex3z/flowlayout/FlowLayout;->d:I

    const v2, -0x10002

    .line 49
    iput v2, p0, Lcom/nex3z/flowlayout/FlowLayout;->e:I

    const/4 v3, 0x0

    .line 50
    iput v3, p0, Lcom/nex3z/flowlayout/FlowLayout;->f:F

    .line 51
    iput v3, p0, Lcom/nex3z/flowlayout/FlowLayout;->g:F

    .line 52
    iput-boolean v1, p0, Lcom/nex3z/flowlayout/FlowLayout;->h:Z

    const v4, 0x7fffffff

    .line 53
    iput v4, p0, Lcom/nex3z/flowlayout/FlowLayout;->i:I

    const/4 v5, -0x1

    .line 54
    iput v5, p0, Lcom/nex3z/flowlayout/FlowLayout;->j:I

    const/high16 v6, -0x10000

    .line 55
    iput v6, p0, Lcom/nex3z/flowlayout/FlowLayout;->k:I

    .line 58
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/nex3z/flowlayout/FlowLayout;->m:Ljava/util/List;

    .line 59
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/nex3z/flowlayout/FlowLayout;->n:Ljava/util/List;

    .line 60
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/nex3z/flowlayout/FlowLayout;->o:Ljava/util/List;

    .line 61
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/nex3z/flowlayout/FlowLayout;->p:Ljava/util/List;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v7, Lcom/nex3z/flowlayout/a$a;->FlowLayout:[I

    invoke-virtual {p1, p2, v7, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 73
    :try_start_0
    sget p2, Lcom/nex3z/flowlayout/a$a;->FlowLayout_flFlow:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/nex3z/flowlayout/FlowLayout;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :try_start_1
    sget p2, Lcom/nex3z/flowlayout/a$a;->FlowLayout_flChildSpacing:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/nex3z/flowlayout/FlowLayout;->c:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 77
    :catch_0
    :try_start_2
    sget p2, Lcom/nex3z/flowlayout/a$a;->FlowLayout_flChildSpacing:I

    invoke-direct {p0, v3}, Lcom/nex3z/flowlayout/FlowLayout;->a(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/nex3z/flowlayout/FlowLayout;->c:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    :goto_0
    :try_start_3
    sget p2, Lcom/nex3z/flowlayout/a$a;->FlowLayout_flMinChildSpacing:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/nex3z/flowlayout/FlowLayout;->d:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 82
    :catch_1
    :try_start_4
    sget p2, Lcom/nex3z/flowlayout/a$a;->FlowLayout_flMinChildSpacing:I

    invoke-direct {p0, v3}, Lcom/nex3z/flowlayout/FlowLayout;->a(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/nex3z/flowlayout/FlowLayout;->d:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 85
    :goto_1
    :try_start_5
    sget p2, Lcom/nex3z/flowlayout/a$a;->FlowLayout_flChildSpacingForLastRow:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/nex3z/flowlayout/FlowLayout;->e:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 87
    :catch_2
    :try_start_6
    sget p2, Lcom/nex3z/flowlayout/a$a;->FlowLayout_flChildSpacingForLastRow:I

    invoke-direct {p0, v3}, Lcom/nex3z/flowlayout/FlowLayout;->a(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/nex3z/flowlayout/FlowLayout;->e:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 90
    :goto_2
    :try_start_7
    sget p2, Lcom/nex3z/flowlayout/a$a;->FlowLayout_flRowSpacing:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/nex3z/flowlayout/FlowLayout;->f:F
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 92
    :catch_3
    :try_start_8
    sget p2, Lcom/nex3z/flowlayout/a$a;->FlowLayout_flRowSpacing:I

    invoke-direct {p0, v3}, Lcom/nex3z/flowlayout/FlowLayout;->a(F)F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/nex3z/flowlayout/FlowLayout;->f:F

    .line 94
    :goto_3
    sget p2, Lcom/nex3z/flowlayout/a$a;->FlowLayout_flMaxRows:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/nex3z/flowlayout/FlowLayout;->i:I

    .line 95
    sget p2, Lcom/nex3z/flowlayout/a$a;->FlowLayout_flRtl:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/nex3z/flowlayout/FlowLayout;->h:Z

    .line 96
    sget p2, Lcom/nex3z/flowlayout/a$a;->FlowLayout_android_gravity:I

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/nex3z/flowlayout/FlowLayout;->j:I

    .line 97
    sget p2, Lcom/nex3z/flowlayout/a$a;->FlowLayout_flRowVerticalGravity:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/nex3z/flowlayout/FlowLayout;->k:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 99
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    throw p2
.end method

.method private a(F)F
    .locals 2

    .line 500
    invoke-virtual {p0}, Lcom/nex3z/flowlayout/FlowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 499
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method private a(IIII)I
    .locals 3

    .line 319
    iget v0, p0, Lcom/nex3z/flowlayout/FlowLayout;->c:I

    const/4 v1, 0x0

    const/high16 v2, -0x10000

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/nex3z/flowlayout/FlowLayout;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p4, v0, :cond_3

    iget-object v0, p0, Lcom/nex3z/flowlayout/FlowLayout;->p:Ljava/util/List;

    .line 320
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p4, v0, :cond_3

    iget-object v0, p0, Lcom/nex3z/flowlayout/FlowLayout;->p:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    sub-int/2addr p2, p3

    .line 330
    iget-object p1, p0, Lcom/nex3z/flowlayout/FlowLayout;->o:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int v1, p2, p1

    goto :goto_0

    :cond_2
    sub-int/2addr p2, p3

    .line 327
    iget-object p1, p0, Lcom/nex3z/flowlayout/FlowLayout;->o:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p2, p1

    div-int/lit8 v1, p2, 0x2

    :cond_3
    :goto_0
    return v1
.end method

.method private b(IIII)F
    .locals 1

    const/high16 v0, -0x10000

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    if-le p4, p1, :cond_0

    sub-int/2addr p2, p3

    sub-int/2addr p4, p1

    .line 488
    div-int/2addr p2, p4

    int-to-float p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    int-to-float p1, p1

    :goto_0
    return p1
.end method


# virtual methods
.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 345
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/nex3z/flowlayout/FlowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 340
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getChildSpacing()I
    .locals 1

    .line 373
    iget v0, p0, Lcom/nex3z/flowlayout/FlowLayout;->c:I

    return v0
.end method

.method public getChildSpacingForLastRow()I
    .locals 1

    .line 394
    iget v0, p0, Lcom/nex3z/flowlayout/FlowLayout;->e:I

    return v0
.end method

.method public getMaxRows()I
    .locals 1

    .line 435
    iget v0, p0, Lcom/nex3z/flowlayout/FlowLayout;->i:I

    return v0
.end method

.method public getMinChildSpacing()I
    .locals 1

    .line 472
    iget v0, p0, Lcom/nex3z/flowlayout/FlowLayout;->d:I

    return v0
.end method

.method public getRowSpacing()F
    .locals 1

    .line 414
    iget v0, p0, Lcom/nex3z/flowlayout/FlowLayout;->f:F

    return v0
.end method

.method public getRowsCount()I
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/nex3z/flowlayout/FlowLayout;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 22

    move-object/from16 v0, p0

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/nex3z/flowlayout/FlowLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/nex3z/flowlayout/FlowLayout;->getPaddingRight()I

    move-result v2

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/nex3z/flowlayout/FlowLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/nex3z/flowlayout/FlowLayout;->getPaddingBottom()I

    move-result v4

    .line 241
    iget-boolean v5, v0, Lcom/nex3z/flowlayout/FlowLayout;->h:Z

    if-eqz v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/nex3z/flowlayout/FlowLayout;->getWidth()I

    move-result v5

    sub-int/2addr v5, v2

    goto :goto_0

    :cond_0
    move v5, v1

    .line 244
    :goto_0
    iget v6, v0, Lcom/nex3z/flowlayout/FlowLayout;->j:I

    and-int/lit8 v7, v6, 0x70

    and-int/lit8 v6, v6, 0x7

    const/16 v8, 0x50

    const/16 v9, 0x10

    if-eq v7, v9, :cond_2

    if-eq v7, v8, :cond_1

    goto :goto_2

    :cond_1
    sub-int v7, p5, p3

    sub-int/2addr v7, v3

    sub-int/2addr v7, v4

    .line 254
    iget v4, v0, Lcom/nex3z/flowlayout/FlowLayout;->l:I

    sub-int/2addr v7, v4

    goto :goto_1

    :cond_2
    sub-int v7, p5, p3

    sub-int/2addr v7, v3

    sub-int/2addr v7, v4

    .line 249
    iget v4, v0, Lcom/nex3z/flowlayout/FlowLayout;->l:I

    sub-int/2addr v7, v4

    div-int/lit8 v7, v7, 0x2

    :goto_1
    add-int/2addr v3, v7

    :goto_2
    add-int v4, v1, v2

    sub-int v7, p4, p2

    const/4 v10, 0x0

    .line 263
    invoke-direct {v0, v6, v7, v4, v10}, Lcom/nex3z/flowlayout/FlowLayout;->a(IIII)I

    move-result v11

    add-int/2addr v5, v11

    .line 265
    iget v11, v0, Lcom/nex3z/flowlayout/FlowLayout;->k:I

    and-int/lit8 v11, v11, 0x70

    .line 267
    iget-object v12, v0, Lcom/nex3z/flowlayout/FlowLayout;->p:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    move v13, v3

    move v3, v10

    move v14, v3

    :goto_3
    if-ge v3, v12, :cond_a

    .line 269
    iget-object v15, v0, Lcom/nex3z/flowlayout/FlowLayout;->p:Ljava/util/List;

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 270
    iget-object v10, v0, Lcom/nex3z/flowlayout/FlowLayout;->n:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 271
    iget-object v9, v0, Lcom/nex3z/flowlayout/FlowLayout;->m:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    move/from16 v16, v5

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v15, :cond_8

    .line 272
    invoke-virtual/range {p0 .. p0}, Lcom/nex3z/flowlayout/FlowLayout;->getChildCount()I

    move-result v8

    if-ge v14, v8, :cond_8

    add-int/lit8 v8, v14, 0x1

    .line 273
    invoke-virtual {v0, v14}, Lcom/nex3z/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    move/from16 v17, v1

    .line 274
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 p2, v8

    const/16 v8, 0x8

    if-ne v1, v8, :cond_3

    move/from16 v14, p2

    move/from16 v1, v17

    const/16 v8, 0x50

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 280
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 282
    instance-of v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v8, :cond_4

    .line 283
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 284
    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 p3, v5

    .line 285
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 p4, v5

    .line 286
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 287
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 p5, v15

    move/from16 v21, v12

    move/from16 v12, p4

    move/from16 p4, v21

    goto :goto_5

    :cond_4
    move/from16 p3, v5

    move/from16 p4, v12

    move/from16 p5, v15

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    .line 290
    :goto_5
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 291
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    add-int v19, v13, v5

    move/from16 v20, v4

    const/16 v4, 0x50

    if-ne v11, v4, :cond_5

    add-int v5, v13, v10

    sub-int/2addr v5, v1

    sub-int v19, v5, v18

    move/from16 v1, v19

    const/16 v4, 0x10

    goto :goto_6

    :cond_5
    const/16 v4, 0x10

    if-ne v11, v4, :cond_6

    sub-int v5, v10, v5

    sub-int/2addr v5, v1

    sub-int v5, v5, v18

    .line 296
    div-int/lit8 v5, v5, 0x2

    add-int v19, v19, v5

    :cond_6
    move/from16 v1, v19

    :goto_6
    add-int v5, v1, v18

    .line 299
    iget-boolean v4, v0, Lcom/nex3z/flowlayout/FlowLayout;->h:Z

    if-eqz v4, :cond_7

    move/from16 v4, v16

    move/from16 v16, v11

    sub-int v11, v4, v12

    move/from16 v18, v10

    sub-int v10, v11, v15

    .line 302
    invoke-virtual {v14, v10, v1, v11, v5}, Landroid/view/View;->layout(IIII)V

    int-to-float v1, v4

    int-to-float v4, v15

    add-float/2addr v4, v9

    int-to-float v5, v8

    add-float/2addr v4, v5

    int-to-float v5, v12

    add-float/2addr v4, v5

    sub-float/2addr v1, v4

    goto :goto_7

    :cond_7
    move/from16 v18, v10

    move/from16 v4, v16

    move/from16 v16, v11

    add-int v10, v4, v8

    add-int v11, v10, v15

    .line 307
    invoke-virtual {v14, v10, v1, v11, v5}, Landroid/view/View;->layout(IIII)V

    int-to-float v1, v4

    int-to-float v4, v15

    add-float/2addr v4, v9

    int-to-float v5, v8

    add-float/2addr v4, v5

    int-to-float v5, v12

    add-float/2addr v4, v5

    add-float/2addr v1, v4

    :goto_7
    float-to-int v1, v1

    move/from16 v14, p2

    move/from16 v5, p3

    move/from16 v12, p4

    move/from16 v15, p5

    move/from16 v11, v16

    move/from16 v10, v18

    move/from16 v4, v20

    const/16 v8, 0x50

    move/from16 v16, v1

    move/from16 v1, v17

    goto/16 :goto_4

    :cond_8
    move/from16 v17, v1

    move/from16 v20, v4

    move/from16 v18, v10

    move/from16 v16, v11

    move/from16 p4, v12

    .line 311
    iget-boolean v1, v0, Lcom/nex3z/flowlayout/FlowLayout;->h:Z

    if-eqz v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/nex3z/flowlayout/FlowLayout;->getWidth()I

    move-result v1

    sub-int/2addr v1, v2

    goto :goto_8

    :cond_9
    move/from16 v1, v17

    :goto_8
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v20

    .line 312
    invoke-direct {v0, v6, v7, v4, v3}, Lcom/nex3z/flowlayout/FlowLayout;->a(IIII)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v1, v13

    move/from16 v8, v18

    int-to-float v8, v8

    .line 314
    iget v9, v0, Lcom/nex3z/flowlayout/FlowLayout;->g:F

    add-float/2addr v8, v9

    add-float/2addr v1, v8

    float-to-int v13, v1

    move/from16 v12, p4

    move/from16 v11, v16

    move/from16 v1, v17

    const/16 v8, 0x50

    const/16 v9, 0x10

    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_a
    return-void
.end method

.method protected onMeasure(II)V
    .locals 26

    move-object/from16 v6, p0

    .line 105
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 107
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 108
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 109
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 110
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 112
    iget-object v0, v6, Lcom/nex3z/flowlayout/FlowLayout;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 113
    iget-object v0, v6, Lcom/nex3z/flowlayout/FlowLayout;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 114
    iget-object v0, v6, Lcom/nex3z/flowlayout/FlowLayout;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 115
    iget-object v0, v6, Lcom/nex3z/flowlayout/FlowLayout;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/nex3z/flowlayout/FlowLayout;->getChildCount()I

    move-result v11

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/nex3z/flowlayout/FlowLayout;->getPaddingLeft()I

    move-result v0

    sub-int v0, v7, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nex3z/flowlayout/FlowLayout;->getPaddingRight()I

    move-result v1

    sub-int v12, v0, v1

    if-eqz v8, :cond_0

    .line 121
    iget-boolean v0, v6, Lcom/nex3z/flowlayout/FlowLayout;->b:Z

    if-eqz v0, :cond_0

    const/4 v15, 0x1

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    .line 122
    :goto_0
    iget v0, v6, Lcom/nex3z/flowlayout/FlowLayout;->c:I

    const/high16 v5, -0x10000

    if-ne v0, v5, :cond_1

    if-nez v8, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    iget v0, v6, Lcom/nex3z/flowlayout/FlowLayout;->c:I

    move v4, v0

    :goto_1
    if-ne v4, v5, :cond_2

    .line 124
    iget v0, v6, Lcom/nex3z/flowlayout/FlowLayout;->d:I

    int-to-float v0, v0

    goto :goto_2

    :cond_2
    int-to-float v0, v4

    :goto_2
    move v3, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_3
    if-ge v2, v11, :cond_7

    move/from16 v18, v3

    .line 127
    invoke-virtual {v6, v2}, Lcom/nex3z/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 128
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    move/from16 v20, v0

    const/16 v0, 0x8

    if-ne v5, v0, :cond_3

    move/from16 v0, p1

    move/from16 v23, v2

    move v5, v4

    move/from16 v21, v8

    move/from16 v24, v10

    move/from16 v22, v11

    move/from16 v10, v18

    const/high16 v8, -0x10000

    move v4, v1

    move/from16 v18, v7

    move/from16 v7, v20

    move/from16 v1, p2

    move/from16 v20, v9

    goto/16 :goto_5

    .line 132
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 134
    instance-of v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_4

    const/16 v21, 0x0

    move/from16 v22, v11

    move/from16 v11, v20

    move-object/from16 v0, p0

    move/from16 v20, v9

    move v9, v1

    move-object v1, v3

    move/from16 v23, v2

    move/from16 v2, p1

    move/from16 v24, v10

    move/from16 v10, v18

    move/from16 v18, v7

    move-object v7, v3

    move/from16 v3, v21

    move/from16 v25, v4

    move/from16 v4, p2

    move-object/from16 v19, v5

    move/from16 v21, v8

    const/high16 v8, -0x10000

    move/from16 v5, v16

    .line 135
    invoke-virtual/range {v0 .. v5}, Lcom/nex3z/flowlayout/FlowLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 136
    move-object/from16 v5, v19

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 137
    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    .line 138
    iget v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    move v2, v0

    move v3, v1

    move/from16 v0, p1

    move/from16 v1, p2

    goto :goto_4

    :cond_4
    move/from16 v0, p1

    move/from16 v23, v2

    move/from16 v25, v4

    move/from16 v21, v8

    move/from16 v24, v10

    move/from16 v22, v11

    move/from16 v10, v18

    move/from16 v11, v20

    const/high16 v8, -0x10000

    move/from16 v18, v7

    move/from16 v20, v9

    move v9, v1

    move-object v7, v3

    move/from16 v1, p2

    .line 140
    invoke-virtual {v6, v7, v0, v1}, Lcom/nex3z/flowlayout/FlowLayout;->measureChild(Landroid/view/View;II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 143
    :goto_4
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    .line 144
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v3

    if-eqz v15, :cond_6

    add-int v3, v14, v4

    if-le v3, v12, :cond_6

    .line 147
    iget-object v3, v6, Lcom/nex3z/flowlayout/FlowLayout;->m:Ljava/util/List;

    move/from16 v5, v25

    .line 148
    invoke-direct {v6, v5, v12, v9, v11}, Lcom/nex3z/flowlayout/FlowLayout;->b(IIII)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 147
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v3, v6, Lcom/nex3z/flowlayout/FlowLayout;->p:Ljava/util/List;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v3, v6, Lcom/nex3z/flowlayout/FlowLayout;->n:Ljava/util/List;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v3, v6, Lcom/nex3z/flowlayout/FlowLayout;->o:Ljava/util/List;

    float-to-int v7, v10

    sub-int v9, v14, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v3, v6, Lcom/nex3z/flowlayout/FlowLayout;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v9, v6, Lcom/nex3z/flowlayout/FlowLayout;->i:I

    if-gt v3, v9, :cond_5

    move/from16 v3, v17

    add-int v16, v16, v3

    .line 155
    :cond_5
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v7, v4

    move/from16 v17, v2

    move v13, v3

    move v14, v7

    const/4 v7, 0x1

    goto :goto_5

    :cond_6
    move/from16 v3, v17

    move/from16 v5, v25

    add-int/lit8 v7, v11, 0x1

    int-to-float v11, v14

    int-to-float v14, v4

    add-float/2addr v14, v10

    add-float/2addr v11, v14

    float-to-int v11, v11

    add-int/2addr v4, v9

    .line 166
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v17, v2

    move v14, v11

    :goto_5
    add-int/lit8 v2, v23, 0x1

    move v1, v4

    move v4, v5

    move v0, v7

    move v5, v8

    move v3, v10

    move/from16 v7, v18

    move/from16 v9, v20

    move/from16 v8, v21

    move/from16 v11, v22

    move/from16 v10, v24

    goto/16 :goto_3

    :cond_7
    move v11, v0

    move/from16 v18, v7

    move/from16 v21, v8

    move/from16 v20, v9

    move/from16 v24, v10

    move v9, v1

    move v10, v3

    move v8, v5

    move/from16 v3, v17

    move v5, v4

    .line 171
    iget v0, v6, Lcom/nex3z/flowlayout/FlowLayout;->e:I

    const v1, -0x10001

    if-ne v0, v1, :cond_9

    .line 174
    iget-object v0, v6, Lcom/nex3z/flowlayout/FlowLayout;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_8

    .line 175
    iget-object v0, v6, Lcom/nex3z/flowlayout/FlowLayout;->m:Ljava/util/List;

    .line 176
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 175
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 178
    :cond_8
    iget-object v0, v6, Lcom/nex3z/flowlayout/FlowLayout;->m:Ljava/util/List;

    .line 179
    invoke-direct {v6, v5, v12, v9, v11}, Lcom/nex3z/flowlayout/FlowLayout;->b(IIII)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 178
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    const v1, -0x10002

    if-eq v0, v1, :cond_a

    .line 183
    iget-object v1, v6, Lcom/nex3z/flowlayout/FlowLayout;->m:Ljava/util/List;

    .line 184
    invoke-direct {v6, v0, v12, v9, v11}, Lcom/nex3z/flowlayout/FlowLayout;->b(IIII)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 183
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 187
    :cond_a
    iget-object v0, v6, Lcom/nex3z/flowlayout/FlowLayout;->m:Ljava/util/List;

    .line 188
    invoke-direct {v6, v5, v12, v9, v11}, Lcom/nex3z/flowlayout/FlowLayout;->b(IIII)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 187
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    :goto_6
    iget-object v0, v6, Lcom/nex3z/flowlayout/FlowLayout;->p:Ljava/util/List;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v0, v6, Lcom/nex3z/flowlayout/FlowLayout;->n:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, v6, Lcom/nex3z/flowlayout/FlowLayout;->o:Ljava/util/List;

    float-to-int v1, v10

    sub-int v1, v14, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v0, v6, Lcom/nex3z/flowlayout/FlowLayout;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, v6, Lcom/nex3z/flowlayout/FlowLayout;->i:I

    if-gt v0, v1, :cond_b

    add-int v16, v16, v3

    .line 197
    :cond_b
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ne v5, v8, :cond_c

    move/from16 v1, v18

    move v7, v1

    goto :goto_7

    :cond_c
    if-nez v21, :cond_d

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/nex3z/flowlayout/FlowLayout;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/nex3z/flowlayout/FlowLayout;->getPaddingRight()I

    move-result v1

    add-int v7, v0, v1

    move/from16 v1, v18

    goto :goto_7

    .line 204
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/nex3z/flowlayout/FlowLayout;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/nex3z/flowlayout/FlowLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 207
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/nex3z/flowlayout/FlowLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/nex3z/flowlayout/FlowLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    add-int v9, v16, v0

    .line 208
    iget-object v0, v6, Lcom/nex3z/flowlayout/FlowLayout;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, v6, Lcom/nex3z/flowlayout/FlowLayout;->i:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 209
    iget v2, v6, Lcom/nex3z/flowlayout/FlowLayout;->f:F

    const/high16 v3, -0x38800000    # -65536.0f

    cmpl-float v2, v2, v3

    const/4 v4, 0x0

    if-nez v2, :cond_e

    if-nez v24, :cond_e

    move v2, v4

    goto :goto_8

    :cond_e
    iget v2, v6, Lcom/nex3z/flowlayout/FlowLayout;->f:F

    :goto_8
    cmpl-float v3, v2, v3

    if-nez v3, :cond_10

    const/4 v3, 0x1

    if-le v0, v3, :cond_f

    sub-int v9, v20, v9

    sub-int/2addr v0, v3

    .line 213
    div-int/2addr v9, v0

    int-to-float v0, v9

    iput v0, v6, Lcom/nex3z/flowlayout/FlowLayout;->g:F

    goto :goto_9

    .line 215
    :cond_f
    iput v4, v6, Lcom/nex3z/flowlayout/FlowLayout;->g:F

    :goto_9
    move/from16 v2, v20

    move v9, v2

    goto :goto_b

    :cond_10
    const/4 v3, 0x1

    .line 219
    iput v2, v6, Lcom/nex3z/flowlayout/FlowLayout;->g:F

    if-le v0, v3, :cond_12

    if-nez v24, :cond_11

    int-to-float v2, v9

    .line 221
    iget v4, v6, Lcom/nex3z/flowlayout/FlowLayout;->g:F

    sub-int/2addr v0, v3

    int-to-float v0, v0

    mul-float/2addr v4, v0

    add-float/2addr v2, v4

    float-to-int v0, v2

    move v9, v0

    goto :goto_a

    :cond_11
    int-to-float v2, v9

    iget v4, v6, Lcom/nex3z/flowlayout/FlowLayout;->g:F

    sub-int/2addr v0, v3

    int-to-float v0, v0

    mul-float/2addr v4, v0

    add-float/2addr v2, v4

    float-to-int v0, v2

    move/from16 v2, v20

    .line 223
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v9, v0

    goto :goto_b

    :cond_12
    :goto_a
    move/from16 v2, v20

    .line 228
    :goto_b
    iput v9, v6, Lcom/nex3z/flowlayout/FlowLayout;->l:I

    const/high16 v0, 0x40000000    # 2.0f

    move/from16 v3, v21

    if-ne v3, v0, :cond_13

    move v7, v1

    :cond_13
    move/from16 v1, v24

    if-ne v1, v0, :cond_14

    goto :goto_c

    :cond_14
    move v2, v9

    .line 233
    :goto_c
    invoke-virtual {v6, v7, v2}, Lcom/nex3z/flowlayout/FlowLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setChildSpacing(I)V
    .locals 0

    .line 383
    iput p1, p0, Lcom/nex3z/flowlayout/FlowLayout;->c:I

    .line 384
    invoke-virtual {p0}, Lcom/nex3z/flowlayout/FlowLayout;->requestLayout()V

    return-void
.end method

.method public setChildSpacingForLastRow(I)V
    .locals 0

    .line 404
    iput p1, p0, Lcom/nex3z/flowlayout/FlowLayout;->e:I

    .line 405
    invoke-virtual {p0}, Lcom/nex3z/flowlayout/FlowLayout;->requestLayout()V

    return-void
.end method

.method public setFlow(Z)V
    .locals 0

    .line 363
    iput-boolean p1, p0, Lcom/nex3z/flowlayout/FlowLayout;->b:Z

    .line 364
    invoke-virtual {p0}, Lcom/nex3z/flowlayout/FlowLayout;->requestLayout()V

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 449
    iget v0, p0, Lcom/nex3z/flowlayout/FlowLayout;->j:I

    if-eq v0, p1, :cond_0

    .line 450
    iput p1, p0, Lcom/nex3z/flowlayout/FlowLayout;->j:I

    .line 451
    invoke-virtual {p0}, Lcom/nex3z/flowlayout/FlowLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMaxRows(I)V
    .locals 0

    .line 444
    iput p1, p0, Lcom/nex3z/flowlayout/FlowLayout;->i:I

    .line 445
    invoke-virtual {p0}, Lcom/nex3z/flowlayout/FlowLayout;->requestLayout()V

    return-void
.end method

.method public setMinChildSpacing(I)V
    .locals 0

    .line 476
    iput p1, p0, Lcom/nex3z/flowlayout/FlowLayout;->d:I

    .line 477
    invoke-virtual {p0}, Lcom/nex3z/flowlayout/FlowLayout;->requestLayout()V

    return-void
.end method

.method public setRowSpacing(F)V
    .locals 0

    .line 425
    iput p1, p0, Lcom/nex3z/flowlayout/FlowLayout;->f:F

    .line 426
    invoke-virtual {p0}, Lcom/nex3z/flowlayout/FlowLayout;->requestLayout()V

    return-void
.end method

.method public setRowVerticalGravity(I)V
    .locals 1

    .line 456
    iget v0, p0, Lcom/nex3z/flowlayout/FlowLayout;->k:I

    if-eq v0, p1, :cond_0

    .line 457
    iput p1, p0, Lcom/nex3z/flowlayout/FlowLayout;->k:I

    .line 458
    invoke-virtual {p0}, Lcom/nex3z/flowlayout/FlowLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setRtl(Z)V
    .locals 0

    .line 467
    iput-boolean p1, p0, Lcom/nex3z/flowlayout/FlowLayout;->h:Z

    .line 468
    invoke-virtual {p0}, Lcom/nex3z/flowlayout/FlowLayout;->requestLayout()V

    return-void
.end method
