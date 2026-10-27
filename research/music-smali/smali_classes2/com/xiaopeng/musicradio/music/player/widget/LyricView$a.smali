.class Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;
.super Ljava/lang/Thread;
.source "LyricView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/music/player/widget/LyricView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;->b:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 392
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;->a:Z

    return-void
.end method

.method private c()V
    .locals 12

    .line 425
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;->b:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->b(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 426
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;->b:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->c(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    .line 427
    monitor-exit v0

    return-void

    .line 430
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;->b:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->c(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 431
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "composeLyrics: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;->b:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->d(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LyricView"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 435
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_d

    .line 436
    iget-boolean v4, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;->a:Z

    if-eqz v4, :cond_1

    goto/16 :goto_8

    .line 440
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/lyrics/LrcEntry;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/lyrics/LrcEntry;->getText()Ljava/lang/String;

    move-result-object v4

    .line 441
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_7

    .line 445
    :cond_2
    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;->b:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-static {v5}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->e(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;)Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    const/4 v6, 0x0

    move-object v7, v6

    .line 450
    :goto_1
    iget-object v8, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;->b:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-static {v8}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->d(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;)I

    move-result v8

    int-to-float v8, v8

    cmpl-float v5, v5, v8

    if-lez v5, :cond_b

    .line 451
    iget-boolean v5, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;->a:Z

    if-eqz v5, :cond_3

    goto/16 :goto_6

    .line 457
    :cond_3
    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;->b:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-static {v5}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->d(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;)I

    .line 460
    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;->b:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-static {v5}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->e(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;)Landroid/text/TextPaint;

    move-result-object v5

    iget-object v8, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;->b:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-static {v8}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->d(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;)I

    move-result v8

    int-to-float v8, v8

    const/4 v9, 0x1

    invoke-virtual {v5, v4, v9, v8, v6}, Landroid/text/TextPaint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move v8, v5

    :goto_2
    if-ltz v8, :cond_8

    .line 464
    iget-boolean v10, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;->a:Z

    if-eqz v10, :cond_4

    goto :goto_5

    .line 468
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-gt v10, v8, :cond_5

    goto :goto_3

    .line 471
    :cond_5
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    if-eq v10, v11, :cond_7

    const/16 v11, 0x2c

    if-eq v10, v11, :cond_7

    const/16 v11, 0x2e

    if-eq v10, v11, :cond_7

    const/16 v11, 0x3f

    if-eq v10, v11, :cond_7

    const/16 v11, 0x21

    if-eq v10, v11, :cond_7

    const/16 v11, 0xa

    if-eq v10, v11, :cond_7

    const/16 v11, 0x9

    if-ne v10, v11, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    :cond_7
    :goto_4
    move v5, v8

    :cond_8
    :goto_5
    add-int/2addr v5, v9

    .line 479
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 480
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    if-nez v7, :cond_9

    .line 482
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 484
    :cond_9
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v5, v8, :cond_a

    const/4 v4, 0x0

    move v5, v4

    move-object v4, v6

    goto :goto_1

    .line 492
    :cond_a
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 493
    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;->b:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-static {v5}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->e(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;)Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    goto/16 :goto_1

    :cond_b
    :goto_6
    if-eqz v7, :cond_c

    if-eqz v4, :cond_c

    .line 500
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 506
    :cond_d
    :goto_8
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;->b()Z

    move-result v1

    if-nez v1, :cond_e

    .line 507
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;->b:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;Ljava/util/HashMap;)Ljava/util/HashMap;

    :cond_e
    return-void

    :catchall_0
    move-exception v1

    .line 431
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x1

    .line 395
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;->a:Z

    return-void
.end method

.method b()Z
    .locals 1

    .line 399
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;->a:Z

    return v0
.end method

.method public run()V
    .locals 2

    .line 404
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;->c()V

    .line 405
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;->b:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;I)I

    .line 407
    new-instance v0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a$1;-><init>(Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
