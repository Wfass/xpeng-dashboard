.class Lcv$a;
.super Ljava/lang/Object;
.source "KeyTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcv;
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

    .line 347
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcv$a;->a:Landroid/util/SparseIntArray;

    .line 350
    sget-object v0, Lcv$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyTrigger_framePosition:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 351
    sget-object v0, Lcv$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyTrigger_onCross:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 352
    sget-object v0, Lcv$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyTrigger_onNegativeCross:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 353
    sget-object v0, Lcv$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyTrigger_onPositiveCross:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 354
    sget-object v0, Lcv$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyTrigger_motionTarget:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 355
    sget-object v0, Lcv$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyTrigger_triggerId:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 356
    sget-object v0, Lcv$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyTrigger_triggerSlack:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 357
    sget-object v0, Lcv$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyTrigger_motion_triggerOnCollision:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 358
    sget-object v0, Lcv$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyTrigger_motion_postLayoutCollision:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 359
    sget-object v0, Lcv$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyTrigger_triggerReceiver:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 360
    sget-object v0, Lcv$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyTrigger_viewTransitionOnCross:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 361
    sget-object v0, Lcv$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyTrigger_viewTransitionOnNegativeCross:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 362
    sget-object v0, Lcv$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->KeyTrigger_viewTransitionOnPositiveCross:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public static a(Lcv;Landroid/content/res/TypedArray;Landroid/content/Context;)V
    .locals 4

    .line 366
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_3

    .line 368
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 369
    sget-object v2, Lcv$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 422
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unused attribute 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcv$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyTrigger"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 416
    :pswitch_1
    iget v2, p0, Lcv;->i:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcv;->i:I

    goto/16 :goto_1

    .line 413
    :pswitch_2
    iget v2, p0, Lcv;->h:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcv;->h:I

    goto/16 :goto_1

    .line 419
    :pswitch_3
    iget v2, p0, Lcv;->j:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcv;->j:I

    goto/16 :goto_1

    .line 410
    :pswitch_4
    invoke-static {p0}, Lcv;->d(Lcv;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p0, v1}, Lcv;->c(Lcv;I)I

    goto/16 :goto_1

    .line 407
    :pswitch_5
    invoke-static {p0}, Lcv;->c(Lcv;)Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {p0, v1}, Lcv;->a(Lcv;Z)Z

    goto/16 :goto_1

    .line 404
    :pswitch_6
    invoke-static {p0}, Lcv;->b(Lcv;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p0, v1}, Lcv;->b(Lcv;I)I

    goto/16 :goto_1

    .line 371
    :pswitch_7
    iget v2, p0, Lcv;->b:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcv;->b:I

    .line 372
    iget v1, p0, Lcv;->b:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-static {p0, v1}, Lcv;->a(Lcv;F)F

    goto :goto_1

    .line 375
    :pswitch_8
    sget-boolean v2, Ldb;->a:Z

    if-eqz v2, :cond_0

    .line 376
    iget v2, p0, Lcv;->c:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcv;->c:I

    .line 377
    iget v2, p0, Lcv;->c:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 378
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcv;->d:Ljava/lang/String;

    goto :goto_1

    .line 381
    :cond_0
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 382
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcv;->d:Ljava/lang/String;

    goto :goto_1

    .line 384
    :cond_1
    iget v2, p0, Lcv;->c:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcv;->c:I

    goto :goto_1

    .line 401
    :pswitch_9
    invoke-static {p0}, Lcv;->a(Lcv;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p0, v1}, Lcv;->a(Lcv;I)I

    goto :goto_1

    .line 398
    :pswitch_a
    iget v2, p0, Lcv;->g:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcv;->g:F

    goto :goto_1

    .line 395
    :pswitch_b
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcv;->c(Lcv;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 392
    :pswitch_c
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcv;->b(Lcv;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 389
    :pswitch_d
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcv;->a(Lcv;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_0
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
    .end packed-switch
.end method
