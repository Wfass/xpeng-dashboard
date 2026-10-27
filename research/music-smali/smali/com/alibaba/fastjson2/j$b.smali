.class final Lcom/alibaba/fastjson2/j$b;
.super Lcom/alibaba/fastjson2/n;
.source "JSONPathFilter.java"

# interfaces
.implements Lcom/alibaba/fastjson2/n$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/j;",
            ">;)V"
        }
    .end annotation

    .line 405
    invoke-direct {p0}, Lcom/alibaba/fastjson2/n;-><init>()V

    .line 406
    iput-object p1, p0, Lcom/alibaba/fastjson2/j$b;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/g$a;)V
    .locals 10

    .line 419
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    if-nez v0, :cond_0

    .line 420
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    goto :goto_0

    .line 421
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    iget-object v0, v0, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 423
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 424
    iget-object v2, p0, Lcom/alibaba/fastjson2/j$b;->a:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 425
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson2/-$$Lambda$Kc1UoEmCj0Ljz4TfbDlTwgzvMAc;->INSTANCE:Lcom/alibaba/fastjson2/-$$Lambda$Kc1UoEmCj0Ljz4TfbDlTwgzvMAc;

    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 427
    :cond_1
    instance-of v2, v0, Ljava/util/List;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    .line 428
    check-cast v0, Ljava/util/List;

    .line 429
    new-instance v2, Lcom/alibaba/fastjson2/JSONArray;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v2, v5}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    move v5, v4

    .line 430
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 431
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 433
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v4

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/fastjson2/j;

    .line 434
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/j;->a()Z

    move-result v9

    .line 436
    invoke-virtual {v8, p1, v6}, Lcom/alibaba/fastjson2/j;->a(Lcom/alibaba/fastjson2/g$a;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v9, :cond_2

    if-nez v8, :cond_3

    move v8, v4

    goto :goto_3

    :cond_2
    if-eqz v8, :cond_3

    move v8, v3

    goto :goto_3

    :cond_3
    move v8, v9

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v8, :cond_5

    .line 450
    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 453
    :cond_6
    iput-object v2, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 454
    iput-boolean v3, p1, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void

    .line 459
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v4

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson2/j;

    .line 460
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/j;->a()Z

    move-result v5

    .line 462
    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/j;->a(Lcom/alibaba/fastjson2/g$a;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v5, :cond_8

    if-nez v2, :cond_9

    move v2, v4

    goto :goto_5

    :cond_8
    if-eqz v2, :cond_9

    move v2, v3

    goto :goto_5

    :cond_9
    move v2, v5

    goto :goto_4

    :cond_a
    :goto_5
    if-eqz v2, :cond_b

    .line 476
    iput-object v0, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 478
    :cond_b
    iput-boolean v3, p1, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void
.end method

.method public a(Lcom/alibaba/fastjson2/u;Lcom/alibaba/fastjson2/g$a;)V
    .locals 1

    .line 411
    iget-object v0, p2, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    if-nez v0, :cond_0

    .line 412
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aY()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p2, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    .line 414
    :cond_0
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/j$b;->a(Lcom/alibaba/fastjson2/g$a;)V

    return-void
.end method
