.class final Lcom/alibaba/fastjson2/j$o;
.super Lcom/alibaba/fastjson2/j$f;
.source "JSONPathFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "o"
.end annotation


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;J[Ljava/lang/String;[J[Ljava/lang/String;Z)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 857
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/j$f;-><init>(Ljava/lang/String;J[Ljava/lang/String;[JLjava/util/function/Function;)V

    .line 858
    iput-object p6, p0, Lcom/alibaba/fastjson2/j$o;->a:[Ljava/lang/String;

    .line 859
    iput-boolean p7, p0, Lcom/alibaba/fastjson2/j$o;->b:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 6

    .line 864
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 865
    check-cast p1, Ljava/util/Collection;

    .line 868
    iget-object v0, p0, Lcom/alibaba/fastjson2/j$o;->a:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 869
    invoke-interface {p1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_1
    if-eqz v2, :cond_2

    .line 876
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/j$o;->b:Z

    xor-int/2addr p1, v4

    return p1

    .line 880
    :cond_2
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/j$o;->b:Z

    return p1
.end method
