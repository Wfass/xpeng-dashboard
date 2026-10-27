.class Lcom/nineoldandroids/animation/ValueAnimator$AnimationHandler;
.super Landroid/os/Handler;
.source "ValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 570
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nineoldandroids/animation/ValueAnimator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nineoldandroids/animation/ValueAnimator$1;

    .line 570
    invoke-direct {p0}, Lcom/nineoldandroids/animation/ValueAnimator$AnimationHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .line 585
    const/4 v0, 0x1

    .line 586
    .local v0, "callAgain":Z
    invoke-static {}, Lcom/nineoldandroids/animation/ValueAnimator;->access$000()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 587
    .local v1, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    invoke-static {}, Lcom/nineoldandroids/animation/ValueAnimator;->access$100()Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 588
    .local v2, "delayedAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    move-object/from16 v3, p1

    iget v4, v3, Landroid/os/Message;->what:I

    const-wide/16 v5, 0x0

    packed-switch v4, :pswitch_data_0

    .line 682
    move-object/from16 v5, p0

    move-object/from16 v18, v1

    .end local v1    # "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    .local v18, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    goto/16 :goto_c

    .line 620
    .end local v18    # "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    .restart local v1    # "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    :pswitch_0
    const/4 v4, 0x0

    goto :goto_3

    .line 592
    :pswitch_1
    invoke-static {}, Lcom/nineoldandroids/animation/ValueAnimator;->access$200()Ljava/lang/ThreadLocal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 593
    .local v4, "pendingAnimations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 594
    :cond_0
    const/4 v0, 0x0

    .line 601
    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 602
    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 604
    .local v8, "pendingCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 605
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 606
    .local v9, "count":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v9, :cond_3

    .line 607
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/nineoldandroids/animation/ValueAnimator;

    .line 609
    .local v11, "anim":Lcom/nineoldandroids/animation/ValueAnimator;
    invoke-static {v11}, Lcom/nineoldandroids/animation/ValueAnimator;->access$300(Lcom/nineoldandroids/animation/ValueAnimator;)J

    move-result-wide v12

    cmp-long v12, v12, v5

    if-nez v12, :cond_2

    .line 610
    invoke-static {v11}, Lcom/nineoldandroids/animation/ValueAnimator;->access$400(Lcom/nineoldandroids/animation/ValueAnimator;)V

    goto :goto_2

    .line 612
    :cond_2
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    .end local v11    # "anim":Lcom/nineoldandroids/animation/ValueAnimator;
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 615
    .end local v8    # "pendingCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    .end local v9    # "count":I
    .end local v10    # "i":I
    :cond_3
    goto :goto_0

    .line 620
    :cond_4
    :goto_3
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    .line 621
    .local v8, "currentTime":J
    invoke-static {}, Lcom/nineoldandroids/animation/ValueAnimator;->access$500()Ljava/lang/ThreadLocal;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 622
    .local v10, "readyAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    invoke-static {}, Lcom/nineoldandroids/animation/ValueAnimator;->access$600()Ljava/lang/ThreadLocal;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 626
    .local v11, "endingAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 627
    .local v12, "numDelayedAnims":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    if-ge v13, v12, :cond_6

    .line 628
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/nineoldandroids/animation/ValueAnimator;

    .line 629
    .local v14, "anim":Lcom/nineoldandroids/animation/ValueAnimator;
    invoke-static {v14, v8, v9}, Lcom/nineoldandroids/animation/ValueAnimator;->access$700(Lcom/nineoldandroids/animation/ValueAnimator;J)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 630
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    .end local v14    # "anim":Lcom/nineoldandroids/animation/ValueAnimator;
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 633
    .end local v13    # "i":I
    :cond_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 634
    .local v13, "numReadyAnims":I
    const/4 v14, 0x1

    if-lez v13, :cond_8

    .line 635
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_5
    if-ge v15, v13, :cond_7

    .line 636
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Lcom/nineoldandroids/animation/ValueAnimator;

    .line 637
    .local v7, "anim":Lcom/nineoldandroids/animation/ValueAnimator;
    invoke-static {v7}, Lcom/nineoldandroids/animation/ValueAnimator;->access$400(Lcom/nineoldandroids/animation/ValueAnimator;)V

    .line 638
    invoke-static {v7, v14}, Lcom/nineoldandroids/animation/ValueAnimator;->access$802(Lcom/nineoldandroids/animation/ValueAnimator;Z)Z

    .line 639
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 635
    .end local v7    # "anim":Lcom/nineoldandroids/animation/ValueAnimator;
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 641
    .end local v15    # "i":I
    :cond_7
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 646
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 647
    .local v7, "numAnims":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_6
    move/from16 v15, v17

    .line 648
    .end local v17    # "i":I
    .restart local v15    # "i":I
    if-ge v15, v7, :cond_b

    .line 649
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v14, v16

    check-cast v14, Lcom/nineoldandroids/animation/ValueAnimator;

    .line 650
    .restart local v14    # "anim":Lcom/nineoldandroids/animation/ValueAnimator;
    invoke-virtual {v14, v8, v9}, Lcom/nineoldandroids/animation/ValueAnimator;->animationFrame(J)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 651
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v7, :cond_a

    .line 654
    add-int/lit8 v15, v15, 0x1

    .line 666
    .end local v14    # "anim":Lcom/nineoldandroids/animation/ValueAnimator;
    .end local v15    # "i":I
    .restart local v17    # "i":I
    :goto_7
    move/from16 v17, v15

    goto :goto_8

    .line 663
    .end local v17    # "i":I
    .restart local v14    # "anim":Lcom/nineoldandroids/animation/ValueAnimator;
    .restart local v15    # "i":I
    :cond_a
    add-int/lit8 v7, v7, -0x1

    .line 664
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .end local v14    # "anim":Lcom/nineoldandroids/animation/ValueAnimator;
    goto :goto_7

    .line 666
    .end local v15    # "i":I
    .restart local v17    # "i":I
    :goto_8
    nop

    .line 647
    const-wide/16 v5, 0x0

    const/4 v14, 0x1

    goto :goto_6

    .line 667
    .end local v17    # "i":I
    .restart local v15    # "i":I
    :cond_b
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_d

    .line 668
    const/4 v5, 0x0

    .end local v15    # "i":I
    .local v5, "i":I
    move v15, v5

    .end local v5    # "i":I
    .restart local v15    # "i":I
    :goto_9
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v15, v5, :cond_c

    .line 669
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-static {v5}, Lcom/nineoldandroids/animation/ValueAnimator;->access$900(Lcom/nineoldandroids/animation/ValueAnimator;)V

    .line 668
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 671
    :cond_c
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 676
    :cond_d
    if-eqz v0, :cond_10

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_a

    .line 682
    .end local v4    # "pendingAnimations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    .end local v7    # "numAnims":I
    .end local v8    # "currentTime":J
    .end local v10    # "readyAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    .end local v11    # "endingAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    .end local v12    # "numDelayedAnims":I
    .end local v13    # "numReadyAnims":I
    .end local v15    # "i":I
    :cond_e
    move-object/from16 v5, p0

    move/from16 v19, v0

    move-object/from16 v18, v1

    goto :goto_b

    .line 677
    .restart local v4    # "pendingAnimations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    .restart local v7    # "numAnims":I
    .restart local v8    # "currentTime":J
    .restart local v10    # "readyAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    .restart local v11    # "endingAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    .restart local v12    # "numDelayedAnims":I
    .restart local v13    # "numReadyAnims":I
    .restart local v15    # "i":I
    :cond_f
    :goto_a
    invoke-static {}, Lcom/nineoldandroids/animation/ValueAnimator;->access$1000()J

    move-result-wide v5

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v8

    sub-long v5, v5, v16

    move/from16 v19, v0

    move-object/from16 v18, v1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .end local v0    # "callAgain":Z
    .end local v1    # "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    .restart local v18    # "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    .local v19, "callAgain":Z
    move-object/from16 v5, p0

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator$AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    .end local v4    # "pendingAnimations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    .end local v7    # "numAnims":I
    .end local v8    # "currentTime":J
    .end local v10    # "readyAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    .end local v11    # "endingAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    .end local v12    # "numDelayedAnims":I
    .end local v13    # "numReadyAnims":I
    .end local v15    # "i":I
    goto :goto_b

    .line 682
    .end local v18    # "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    .end local v19    # "callAgain":Z
    .restart local v0    # "callAgain":Z
    .restart local v1    # "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    :cond_10
    move-object/from16 v5, p0

    move/from16 v19, v0

    move-object/from16 v18, v1

    .end local v0    # "callAgain":Z
    .end local v1    # "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    .restart local v18    # "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    .restart local v19    # "callAgain":Z
    :goto_b
    move/from16 v0, v19

    .end local v19    # "callAgain":Z
    .restart local v0    # "callAgain":Z
    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
