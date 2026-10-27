.class abstract Lcom/alibaba/fastjson2/JSONPathFunction$Index;
.super Ljava/lang/Object;
.source "JSONPathFunction.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONPathFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Index"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 473
    :cond_0
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 474
    check-cast p1, Ljava/util/List;

    .line 475
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 476
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONPathFunction$Index;->eq(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 480
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 483
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 484
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    :goto_1
    if-ge v3, v0, :cond_5

    .line 486
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 487
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONPathFunction$Index;->eq(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 488
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 491
    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 494
    :cond_6
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONPathFunction$Index;->eq(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 495
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_7
    return-object v0
.end method

.method protected abstract eq(Ljava/lang/Object;)Z
.end method
