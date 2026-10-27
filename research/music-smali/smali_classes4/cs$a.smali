.class Lcs$a;
.super Ljava/lang/Object;
.source "KeyPosition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 269
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcs$a;->a:Landroid/util/SparseIntArray;

    .line 272
    sget-object v0, Lcs$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyPosition_motionTarget:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 273
    sget-object v0, Lcs$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyPosition_framePosition:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 274
    sget-object v0, Lcs$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyPosition_transitionEasing:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 275
    sget-object v0, Lcs$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyPosition_curveFit:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 276
    sget-object v0, Lcs$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyPosition_drawPath:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 277
    sget-object v0, Lcs$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyPosition_percentX:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 278
    sget-object v0, Lcs$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyPosition_percentY:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 279
    sget-object v0, Lcs$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyPosition_keyPositionType:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 280
    sget-object v0, Lcs$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyPosition_sizePercent:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 281
    sget-object v0, Lcs$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyPosition_percentWidth:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 282
    sget-object v0, Lcs$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyPosition_percentHeight:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 283
    sget-object v0, Lcs$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyPosition_pathMotionArc:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method static synthetic a(Lcs;Landroid/content/res/TypedArray;)V
    .locals 0

    .line 255
    invoke-static {p0, p1}, Lcs$a;->b(Lcs;Landroid/content/res/TypedArray;)V

    return-void
.end method

.method private static b(Lcs;Landroid/content/res/TypedArray;)V
    .locals 8

    .line 287
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const-string v3, "KeyPosition"

    const/4 v4, -0x1

    if-ge v2, v0, :cond_4

    .line 289
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 290
    sget-object v6, Lcs$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    const/4 v7, 0x3

    packed-switch v6, :pswitch_data_0

    .line 344
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unused attribute 0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "   "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcs$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 337
    :pswitch_0
    iget v3, p0, Lcs;->k:F

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcs;->k:F

    goto/16 :goto_1

    .line 334
    :pswitch_1
    iget v3, p0, Lcs;->j:F

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcs;->j:F

    goto/16 :goto_1

    .line 316
    :pswitch_2
    iget v3, p0, Lcs;->h:I

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcs;->h:I

    goto/16 :goto_1

    .line 340
    :pswitch_3
    iget v3, p0, Lcs;->p:I

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcs;->p:I

    goto/16 :goto_1

    .line 331
    :pswitch_4
    iget v3, p0, Lcs;->k:F

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcs;->j:F

    iput v3, p0, Lcs;->k:F

    goto/16 :goto_1

    .line 328
    :pswitch_5
    iget v3, p0, Lcs;->m:F

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcs;->m:F

    goto/16 :goto_1

    .line 325
    :pswitch_6
    iget v3, p0, Lcs;->l:F

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcs;->l:F

    goto :goto_1

    .line 322
    :pswitch_7
    iget v3, p0, Lcs;->i:I

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcs;->i:I

    goto :goto_1

    .line 319
    :pswitch_8
    iget v3, p0, Lcs;->q:I

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcs;->q:I

    goto :goto_1

    .line 309
    :pswitch_9
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    iget v3, v3, Landroid/util/TypedValue;->type:I

    if-ne v3, v7, :cond_0

    .line 310
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcs;->g:Ljava/lang/String;

    goto :goto_1

    .line 312
    :cond_0
    sget-object v3, Lan;->c:[Ljava/lang/String;

    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, p0, Lcs;->g:Ljava/lang/String;

    goto :goto_1

    .line 306
    :pswitch_a
    iget v3, p0, Lcs;->b:I

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcs;->b:I

    goto :goto_1

    .line 292
    :pswitch_b
    sget-boolean v3, Ldb;->a:Z

    if-eqz v3, :cond_1

    .line 293
    iget v3, p0, Lcs;->c:I

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcs;->c:I

    .line 294
    iget v3, p0, Lcs;->c:I

    if-ne v3, v4, :cond_3

    .line 295
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcs;->d:Ljava/lang/String;

    goto :goto_1

    .line 298
    :cond_1
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    iget v3, v3, Landroid/util/TypedValue;->type:I

    if-ne v3, v7, :cond_2

    .line 299
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcs;->d:Ljava/lang/String;

    goto :goto_1

    .line 301
    :cond_2
    iget v3, p0, Lcs;->c:I

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcs;->c:I

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 348
    :cond_4
    iget p0, p0, Lcs;->b:I

    if-ne p0, v4, :cond_5

    const-string p0, "no frame position"

    .line 349
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
