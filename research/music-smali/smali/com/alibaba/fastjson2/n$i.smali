.class final Lcom/alibaba/fastjson2/n$i;
.super Lcom/alibaba/fastjson2/n;
.source "JSONPathSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "i"
.end annotation


# instance fields
.field final a:[I


# direct methods
.method public constructor <init>([I)V
    .locals 0

    .line 428
    invoke-direct {p0}, Lcom/alibaba/fastjson2/n;-><init>()V

    .line 430
    iput-object p1, p0, Lcom/alibaba/fastjson2/n$i;->a:[I

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/g$a;)V
    .locals 12

    .line 435
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    goto :goto_0

    .line 437
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    iget-object v0, v0, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 439
    :goto_0
    new-instance v1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 441
    instance-of v2, v0, Lcom/alibaba/fastjson2/g$e;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 442
    check-cast v0, Lcom/alibaba/fastjson2/g$e;

    iget-object v0, v0, Lcom/alibaba/fastjson2/g$e;->a:Ljava/util/List;

    .line 443
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v3, v2, :cond_2

    .line 444
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 445
    new-instance v4, Lcom/alibaba/fastjson2/g$a;

    iget-object v6, p1, Lcom/alibaba/fastjson2/g$a;->a:Lcom/alibaba/fastjson2/g;

    iget-object v8, p1, Lcom/alibaba/fastjson2/g$a;->c:Lcom/alibaba/fastjson2/n;

    iget-object v9, p1, Lcom/alibaba/fastjson2/g$a;->d:Lcom/alibaba/fastjson2/n;

    iget-wide v10, p1, Lcom/alibaba/fastjson2/g$a;->e:J

    move-object v5, v4

    move-object v7, p1

    invoke-direct/range {v5 .. v11}, Lcom/alibaba/fastjson2/g$a;-><init>(Lcom/alibaba/fastjson2/g;Lcom/alibaba/fastjson2/g$a;Lcom/alibaba/fastjson2/n;Lcom/alibaba/fastjson2/n;J)V

    .line 446
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/n$i;->a(Lcom/alibaba/fastjson2/g$a;)V

    .line 447
    iget-object v4, v4, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 449
    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_1

    .line 450
    check-cast v4, Ljava/util/Collection;

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 452
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 455
    :cond_2
    iput-object v1, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    return-void

    .line 459
    :cond_3
    iget-object v2, p0, Lcom/alibaba/fastjson2/n$i;->a:[I

    array-length v4, v2

    :goto_3
    if-ge v3, v4, :cond_9

    aget v5, v2, v3

    .line 462
    instance-of v6, v0, Ljava/util/List;

    if-eqz v6, :cond_5

    .line 463
    move-object v6, v0

    check-cast v6, Ljava/util/List;

    if-ltz v5, :cond_4

    .line 466
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_8

    .line 467
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_4

    .line 472
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v7, v5

    if-ltz v7, :cond_8

    .line 474
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_4

    .line 479
    :cond_5
    instance-of v6, v0, [Ljava/lang/Object;

    if-eqz v6, :cond_8

    .line 480
    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    if-ltz v5, :cond_6

    .line 482
    array-length v7, v6

    if-ge v5, v7, :cond_8

    .line 483
    aget-object v5, v6, v5

    goto :goto_4

    .line 488
    :cond_6
    array-length v7, v6

    add-int/2addr v7, v5

    if-ltz v7, :cond_8

    .line 490
    aget-object v5, v6, v7

    .line 499
    :goto_4
    instance-of v6, v5, Ljava/util/Collection;

    if-eqz v6, :cond_7

    .line 500
    check-cast v5, Ljava/util/Collection;

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 502
    :cond_7
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 505
    :cond_9
    iput-object v1, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/alibaba/fastjson2/u;Lcom/alibaba/fastjson2/g$a;)V
    .locals 6

    .line 510
    iget-object v0, p2, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    iget-object v0, v0, Lcom/alibaba/fastjson2/g$a;->c:Lcom/alibaba/fastjson2/n;

    instance-of v0, v0, Lcom/alibaba/fastjson2/n$b;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/alibaba/fastjson2/g$a;->d:Lcom/alibaba/fastjson2/n;

    if-nez v0, :cond_0

    .line 513
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/n$i;->a(Lcom/alibaba/fastjson2/g$a;)V

    return-void

    .line 517
    :cond_0
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/u;->b:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 518
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 519
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->p()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    .line 521
    iget-object v5, p0, Lcom/alibaba/fastjson2/n$i;->a:[I

    invoke-static {v5, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v5

    if-ltz v5, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    if-nez v5, :cond_2

    .line 523
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->P()V

    goto :goto_2

    .line 527
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aY()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 529
    :cond_3
    iput-object v0, p2, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    return-void

    .line 533
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 535
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->E()V

    move v3, v2

    .line 536
    :goto_3
    iget-char v4, p1, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_f

    .line 537
    iget-char v4, p1, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v5, 0x5d

    if-ne v4, v5, :cond_5

    .line 538
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->E()V

    goto/16 :goto_7

    .line 542
    :cond_5
    iget-object v4, p0, Lcom/alibaba/fastjson2/n$i;->a:[I

    invoke-static {v4, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v4

    if-ltz v4, :cond_6

    move v4, v1

    goto :goto_4

    :cond_6
    move v4, v2

    :goto_4
    if-nez v4, :cond_7

    .line 545
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->P()V

    .line 546
    iget-char v4, p1, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_e

    .line 547
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->E()V

    goto/16 :goto_6

    .line 553
    :cond_7
    iget-char v4, p1, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v5, 0x22

    if-eq v4, v5, :cond_d

    const/16 v5, 0x27

    if-eq v4, v5, :cond_d

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_c

    const/16 v5, 0x5b

    if-eq v4, v5, :cond_b

    const/16 v5, 0x66

    if-eq v4, v5, :cond_a

    const/16 v5, 0x6e

    if-eq v4, v5, :cond_9

    const/16 v5, 0x74

    if-eq v4, v5, :cond_a

    const/16 v5, 0x7b

    if-eq v4, v5, :cond_8

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_c

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_c

    packed-switch v4, :pswitch_data_0

    .line 589
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TODO : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p1, p1, Lcom/alibaba/fastjson2/u;->f:C

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2

    .line 574
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aU()Ljava/util/Map;

    move-result-object v4

    goto :goto_5

    .line 585
    :cond_9
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aQ()V

    const/4 v4, 0x0

    goto :goto_5

    .line 582
    :cond_a
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aX()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_5

    .line 571
    :cond_b
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aZ()Ljava/util/List;

    move-result-object v4

    goto :goto_5

    .line 567
    :cond_c
    :pswitch_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aM()V

    .line 568
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->bc()Ljava/lang/Number;

    move-result-object v4

    goto :goto_5

    .line 578
    :cond_d
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object v4

    .line 592
    :goto_5
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 594
    :cond_f
    :goto_7
    iput-object v0, p2, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
