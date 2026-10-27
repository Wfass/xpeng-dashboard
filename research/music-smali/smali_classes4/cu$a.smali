.class Lcu$a;
.super Ljava/lang/Object;
.source "KeyTimeCycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcu;
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

    .line 353
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcu$a;->a:Landroid/util/SparseIntArray;

    .line 356
    sget-object v0, Lcu$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyTimeCycle_android_alpha:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 357
    sget-object v0, Lcu$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyTimeCycle_android_elevation:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 358
    sget-object v0, Lcu$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyTimeCycle_android_rotation:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 359
    sget-object v0, Lcu$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyTimeCycle_android_rotationX:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 360
    sget-object v0, Lcu$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyTimeCycle_android_rotationY:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 361
    sget-object v0, Lcu$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyTimeCycle_android_scaleX:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 362
    sget-object v0, Lcu$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyTimeCycle_transitionPathRotate:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 363
    sget-object v0, Lcu$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyTimeCycle_transitionEasing:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 364
    sget-object v0, Lcu$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyTimeCycle_motionTarget:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 365
    sget-object v0, Lcu$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyTimeCycle_framePosition:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 366
    sget-object v0, Lcu$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyTimeCycle_curveFit:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 367
    sget-object v0, Lcu$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyTimeCycle_android_scaleY:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 368
    sget-object v0, Lcu$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyTimeCycle_android_translationX:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 369
    sget-object v0, Lcu$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyTimeCycle_android_translationY:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 370
    sget-object v0, Lcu$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyTimeCycle_android_translationZ:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 371
    sget-object v0, Lcu$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyTimeCycle_motionProgress:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 372
    sget-object v0, Lcu$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyTimeCycle_wavePeriod:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 373
    sget-object v0, Lcu$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyTimeCycle_waveOffset:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 374
    sget-object v0, Lcu$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyTimeCycle_waveShape:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public static a(Lcu;Landroid/content/res/TypedArray;)V
    .locals 5

    .line 378
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 380
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 381
    sget-object v3, Lcu$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    const/4 v4, 0x3

    packed-switch v3, :pswitch_data_0

    .line 463
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

    sget-object v4, Lcu$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyTimeCycle"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 423
    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 424
    iget v3, v3, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 425
    invoke-static {p0}, Lcu;->g(Lcu;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-static {p0, v2}, Lcu;->e(Lcu;F)F

    goto/16 :goto_1

    .line 427
    :cond_0
    invoke-static {p0}, Lcu;->g(Lcu;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Lcu;->e(Lcu;F)F

    goto/16 :goto_1

    .line 420
    :pswitch_2
    invoke-static {p0}, Lcu;->f(Lcu;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Lcu;->d(Lcu;F)F

    goto/16 :goto_1

    .line 412
    :pswitch_3
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    iget v3, v3, Landroid/util/TypedValue;->type:I

    if-ne v3, v4, :cond_1

    .line 413
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcu;->a(Lcu;Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x7

    .line 414
    invoke-static {p0, v2}, Lcu;->b(Lcu;I)I

    goto/16 :goto_1

    .line 416
    :cond_1
    invoke-static {p0}, Lcu;->e(Lcu;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-static {p0, v2}, Lcu;->b(Lcu;I)I

    goto/16 :goto_1

    .line 460
    :pswitch_4
    invoke-static {p0}, Lcu;->p(Lcu;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Lcu;->n(Lcu;F)F

    goto/16 :goto_1

    .line 455
    :pswitch_5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_4

    .line 456
    invoke-static {p0}, Lcu;->o(Lcu;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-static {p0, v2}, Lcu;->m(Lcu;F)F

    goto/16 :goto_1

    .line 452
    :pswitch_6
    invoke-static {p0}, Lcu;->n(Lcu;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-static {p0, v2}, Lcu;->l(Lcu;F)F

    goto/16 :goto_1

    .line 449
    :pswitch_7
    invoke-static {p0}, Lcu;->m(Lcu;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-static {p0, v2}, Lcu;->k(Lcu;F)F

    goto/16 :goto_1

    .line 443
    :pswitch_8
    invoke-static {p0}, Lcu;->k(Lcu;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Lcu;->i(Lcu;F)F

    goto/16 :goto_1

    .line 409
    :pswitch_9
    invoke-static {p0}, Lcu;->d(Lcu;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-static {p0, v2}, Lcu;->a(Lcu;I)I

    goto/16 :goto_1

    .line 397
    :pswitch_a
    iget v3, p0, Lcu;->b:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcu;->b:I

    goto/16 :goto_1

    .line 383
    :pswitch_b
    sget-boolean v3, Ldb;->a:Z

    if-eqz v3, :cond_2

    .line 384
    iget v3, p0, Lcu;->c:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcu;->c:I

    .line 385
    iget v3, p0, Lcu;->c:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 386
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcu;->d:Ljava/lang/String;

    goto/16 :goto_1

    .line 389
    :cond_2
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    iget v3, v3, Landroid/util/TypedValue;->type:I

    if-ne v3, v4, :cond_3

    .line 390
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcu;->d:Ljava/lang/String;

    goto :goto_1

    .line 392
    :cond_3
    iget v3, p0, Lcu;->c:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcu;->c:I

    goto :goto_1

    .line 440
    :pswitch_c
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcu;->b(Lcu;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 446
    :pswitch_d
    invoke-static {p0}, Lcu;->l(Lcu;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Lcu;->j(Lcu;F)F

    goto :goto_1

    .line 431
    :pswitch_e
    invoke-static {p0}, Lcu;->h(Lcu;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Lcu;->f(Lcu;F)F

    goto :goto_1

    .line 437
    :pswitch_f
    invoke-static {p0}, Lcu;->j(Lcu;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Lcu;->h(Lcu;F)F

    goto :goto_1

    .line 434
    :pswitch_10
    invoke-static {p0}, Lcu;->i(Lcu;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Lcu;->g(Lcu;F)F

    goto :goto_1

    .line 406
    :pswitch_11
    invoke-static {p0}, Lcu;->c(Lcu;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Lcu;->c(Lcu;F)F

    goto :goto_1

    .line 403
    :pswitch_12
    invoke-static {p0}, Lcu;->b(Lcu;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-static {p0, v2}, Lcu;->b(Lcu;F)F

    goto :goto_1

    .line 400
    :pswitch_13
    invoke-static {p0}, Lcu;->a(Lcu;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Lcu;->a(Lcu;F)F

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
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
    .end packed-switch
.end method
