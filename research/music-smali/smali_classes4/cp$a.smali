.class Lcp$a;
.super Ljava/lang/Object;
.source "KeyAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcp;
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

    .line 363
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcp$a;->a:Landroid/util/SparseIntArray;

    .line 366
    sget-object v0, Lcp$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyAttribute_android_alpha:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 367
    sget-object v0, Lcp$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyAttribute_android_elevation:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 368
    sget-object v0, Lcp$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyAttribute_android_rotation:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 369
    sget-object v0, Lcp$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyAttribute_android_rotationX:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 370
    sget-object v0, Lcp$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyAttribute_android_rotationY:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 371
    sget-object v0, Lcp$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyAttribute_android_transformPivotX:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 372
    sget-object v0, Lcp$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyAttribute_android_transformPivotY:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 373
    sget-object v0, Lcp$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyAttribute_android_scaleX:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 374
    sget-object v0, Lcp$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyAttribute_transitionPathRotate:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 375
    sget-object v0, Lcp$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyAttribute_transitionEasing:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 376
    sget-object v0, Lcp$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyAttribute_motionTarget:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 377
    sget-object v0, Lcp$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyAttribute_framePosition:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 378
    sget-object v0, Lcp$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyAttribute_curveFit:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 379
    sget-object v0, Lcp$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyAttribute_android_scaleY:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 380
    sget-object v0, Lcp$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyAttribute_android_translationX:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 381
    sget-object v0, Lcp$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyAttribute_android_translationY:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 382
    sget-object v0, Lcp$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyAttribute_android_translationZ:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 383
    sget-object v0, Lcp$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyAttribute_motionProgress:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public static a(Lcp;Landroid/content/res/TypedArray;)V
    .locals 5

    .line 387
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 389
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 390
    sget-object v3, Lcp$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 459
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unused attribute 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcp$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyAttribute"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 433
    :pswitch_1
    invoke-static {p0}, Lcp;->i(Lcp;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-static {p0, v2}, Lcp;->h(Lcp;F)F

    goto/16 :goto_1

    .line 430
    :pswitch_2
    invoke-static {p0}, Lcp;->h(Lcp;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-static {p0, v2}, Lcp;->g(Lcp;F)F

    goto/16 :goto_1

    .line 456
    :pswitch_3
    invoke-static {p0}, Lcp;->o(Lcp;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Lcp;->n(Lcp;F)F

    goto/16 :goto_1

    .line 451
    :pswitch_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_2

    .line 452
    invoke-static {p0}, Lcp;->n(Lcp;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-static {p0, v2}, Lcp;->m(Lcp;F)F

    goto/16 :goto_1

    .line 448
    :pswitch_5
    invoke-static {p0}, Lcp;->m(Lcp;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-static {p0, v2}, Lcp;->l(Lcp;F)F

    goto/16 :goto_1

    .line 445
    :pswitch_6
    invoke-static {p0}, Lcp;->l(Lcp;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-static {p0, v2}, Lcp;->k(Lcp;F)F

    goto/16 :goto_1

    .line 439
    :pswitch_7
    invoke-static {p0}, Lcp;->j(Lcp;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Lcp;->i(Lcp;F)F

    goto/16 :goto_1

    .line 418
    :pswitch_8
    invoke-static {p0}, Lcp;->d(Lcp;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-static {p0, v2}, Lcp;->a(Lcp;I)I

    goto/16 :goto_1

    .line 406
    :pswitch_9
    iget v3, p0, Lcp;->b:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcp;->b:I

    goto/16 :goto_1

    .line 392
    :pswitch_a
    sget-boolean v3, Ldb;->a:Z

    if-eqz v3, :cond_0

    .line 393
    iget v3, p0, Lcp;->c:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcp;->c:I

    .line 394
    iget v3, p0, Lcp;->c:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 395
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcp;->d:Ljava/lang/String;

    goto/16 :goto_1

    .line 398
    :cond_0
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    iget v3, v3, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 399
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcp;->d:Ljava/lang/String;

    goto :goto_1

    .line 401
    :cond_1
    iget v3, p0, Lcp;->c:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcp;->c:I

    goto :goto_1

    .line 436
    :pswitch_b
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcp;->a(Lcp;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 442
    :pswitch_c
    invoke-static {p0}, Lcp;->k(Lcp;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Lcp;->j(Lcp;F)F

    goto :goto_1

    .line 421
    :pswitch_d
    invoke-static {p0}, Lcp;->e(Lcp;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Lcp;->d(Lcp;F)F

    goto :goto_1

    .line 427
    :pswitch_e
    invoke-static {p0}, Lcp;->g(Lcp;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Lcp;->f(Lcp;F)F

    goto :goto_1

    .line 424
    :pswitch_f
    invoke-static {p0}, Lcp;->f(Lcp;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Lcp;->e(Lcp;F)F

    goto :goto_1

    .line 415
    :pswitch_10
    invoke-static {p0}, Lcp;->c(Lcp;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Lcp;->c(Lcp;F)F

    goto :goto_1

    .line 412
    :pswitch_11
    invoke-static {p0}, Lcp;->b(Lcp;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-static {p0, v2}, Lcp;->b(Lcp;F)F

    goto :goto_1

    .line 409
    :pswitch_12
    invoke-static {p0}, Lcp;->a(Lcp;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Lcp;->a(Lcp;F)F

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
