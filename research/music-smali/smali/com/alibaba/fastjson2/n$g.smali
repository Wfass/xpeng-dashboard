.class final Lcom/alibaba/fastjson2/n$g;
.super Lcom/alibaba/fastjson2/n;
.source "JSONPathSegment.java"

# interfaces
.implements Lcom/alibaba/fastjson2/n$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "g"
.end annotation


# static fields
.field static final a:Lcom/alibaba/fastjson2/n$g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1670
    new-instance v0, Lcom/alibaba/fastjson2/n$g;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/n$g;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/n$g;->a:Lcom/alibaba/fastjson2/n$g;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1667
    invoke-direct {p0}, Lcom/alibaba/fastjson2/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/g$a;)V
    .locals 6

    .line 1679
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    if-nez v0, :cond_0

    .line 1680
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    goto :goto_0

    .line 1681
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    iget-object v0, v0, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 1688
    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_5

    .line 1689
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    goto :goto_2

    .line 1696
    :cond_4
    invoke-static {v1, v2}, Labo;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_2

    :goto_2
    move-object v1, v2

    goto :goto_1

    .line 1700
    :cond_5
    instance-of v2, v0, [Ljava/lang/Object;

    if-eqz v2, :cond_9

    .line 1701
    check-cast v0, [Ljava/lang/Object;

    .line 1702
    array-length v2, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_d

    aget-object v4, v0, v3

    if-nez v4, :cond_6

    goto :goto_5

    :cond_6
    if-nez v1, :cond_7

    goto :goto_4

    .line 1709
    :cond_7
    invoke-static {v1, v4}, Labo;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_8

    :goto_4
    move-object v1, v4

    :cond_8
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1713
    :cond_9
    instance-of v2, v0, Lcom/alibaba/fastjson2/g$e;

    if-eqz v2, :cond_e

    .line 1714
    check-cast v0, Lcom/alibaba/fastjson2/g$e;

    iget-object v0, v0, Lcom/alibaba/fastjson2/g$e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_b

    goto :goto_6

    :cond_b
    if-nez v1, :cond_c

    goto :goto_7

    .line 1721
    :cond_c
    invoke-static {v1, v2}, Labo;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_a

    :goto_7
    move-object v1, v2

    goto :goto_6

    .line 1729
    :cond_d
    iput-object v1, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 1730
    iput-boolean v0, p1, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void

    .line 1726
    :cond_e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a(Lcom/alibaba/fastjson2/u;Lcom/alibaba/fastjson2/g$a;)V
    .locals 0

    .line 1674
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/n$g;->a(Lcom/alibaba/fastjson2/g$a;)V

    return-void
.end method
