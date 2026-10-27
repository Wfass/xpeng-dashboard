.class Lcom/xiaopeng/musicradio/model/music/k$3;
.super Ljava/lang/Object;
.source "NormalDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/music/k;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xiaopeng/musicradio/model/music/k;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/music/k;Z)V
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/music/k$3;->b:Lcom/xiaopeng/musicradio/model/music/k;

    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/model/music/k$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 507
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 508
    invoke-static {}, Larg;->a()Larg;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/k$3;->b:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/k;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Larg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 509
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/k$3;->b:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/k;->B()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rebootPlay run: countVal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    .line 511
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 512
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    if-nez v3, :cond_0

    .line 516
    invoke-static {}, Larg;->a()Larg;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/musicradio/model/music/k$3;->b:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/model/music/k;->w()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Larg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 518
    :cond_0
    invoke-static {}, Larg;->a()Larg;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/xiaopeng/musicradio/model/music/k$3;->b:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/model/music/k;->w()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Larg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 520
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 521
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 524
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 525
    new-instance v3, Lcom/xiaopeng/musicradio/model/music/k$3$1;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/model/music/k$3$1;-><init>(Lcom/xiaopeng/musicradio/model/music/k$3;)V

    .line 528
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/model/music/k$3$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 525
    invoke-static {v1, v3}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 530
    invoke-interface {v7, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 533
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k$3;->b:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/k;->B()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run: reboot listsize = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 536
    :cond_5
    invoke-static {}, Larg;->a()Larg;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/k$3;->b:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/k;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Larg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/model/music/k$3$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/model/music/k$3$2;-><init>(Lcom/xiaopeng/musicradio/model/music/k$3;)V

    .line 538
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/k$3$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 535
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_6

    .line 540
    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 544
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k$3;->b:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/k;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 545
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k$3;->b:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/k;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "music_play_state"

    .line 546
    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;)I

    move-result v1

    .line 547
    iget-boolean v3, p0, Lcom/xiaopeng/musicradio/model/music/k$3;->a:Z

    const/4 v9, 0x1

    if-nez v3, :cond_8

    const/4 v3, 0x2

    if-eq v1, v3, :cond_8

    invoke-static {}, Lask;->a()Lask;

    move-result-object v3

    invoke-virtual {v3}, Lask;->h()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move v10, v2

    goto :goto_5

    :cond_8
    :goto_4
    move v10, v9

    .line 548
    :goto_5
    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/k$3;->b:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/music/k;->B()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run: songId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " playState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " listSign = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " shouldPlay = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/model/music/k$3;->a:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 550
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_f

    .line 553
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v11, -0x1

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 554
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 555
    invoke-interface {v7, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    move v12, v0

    goto :goto_6

    :cond_a
    move v12, v11

    .line 560
    :goto_6
    new-instance v13, Lcom/xiaopeng/musicradio/model/music/k$3$3;

    const/4 v3, 0x1

    const/16 v4, 0x32

    move-object v0, v13

    move-object v1, p0

    move-object v2, v8

    move-object v5, v7

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/musicradio/model/music/k$3$3;-><init>(Lcom/xiaopeng/musicradio/model/music/k$3;Ljava/lang/String;IILjava/util/List;I)V

    xor-int/lit8 v0, v10, 0x1

    .line 566
    invoke-virtual {v13, v0}, Laxz;->d(Z)V

    .line 567
    invoke-virtual {v13, v9}, Laxz;->e(Z)V

    .line 568
    invoke-static {v8}, Lcom/xiaopeng/musicradio/utils/bd;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x4

    .line 569
    invoke-virtual {v13, v0}, Laxz;->c(I)V

    .line 571
    :cond_b
    invoke-static {v8}, Lcom/xiaopeng/musicradio/utils/bd;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x5

    .line 572
    invoke-virtual {v13, v0}, Laxz;->c(I)V

    .line 574
    :cond_c
    invoke-static {v8}, Lcom/xiaopeng/musicradio/utils/bd;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x6

    .line 575
    invoke-virtual {v13, v0}, Laxz;->c(I)V

    .line 577
    :cond_d
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k$3;->b:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/k;->B()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run: rebootIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-le v12, v11, :cond_e

    .line 578
    invoke-static {v8}, Lcom/xiaopeng/musicradio/utils/aj;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 580
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbqr;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbqr;

    invoke-interface {v0}, Lbqr;->addRebootPlayTask()V

    :cond_e
    move-object v1, v13

    .line 585
    :cond_f
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ao;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ao;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 587
    new-instance v0, Lcom/xiaopeng/musicradio/model/music/k$3$4;

    invoke-direct {v0, p0, v7, v1}, Lcom/xiaopeng/musicradio/model/music/k$3$4;-><init>(Lcom/xiaopeng/musicradio/model/music/k$3;Ljava/util/List;Laxz;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method
