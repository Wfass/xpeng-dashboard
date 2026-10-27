.class Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MultiIndexSegment"
.end annotation


# instance fields
.field private final indexes:[I


# direct methods
.method public constructor <init>([I)V
    .locals 0
    .param p1, "indexes"    # [I

    .line 2454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2455
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;->indexes:[I

    .line 2456
    return-void
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "rootObject"    # Ljava/lang/Object;
    .param p3, "currentObject"    # Ljava/lang/Object;

    .line 2459
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;->indexes:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 2460
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;->indexes:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 2461
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;->indexes:[I

    aget v2, v2, v1

    invoke-virtual {p1, p3, v2}, Lcom/alibaba/fastjson/JSONPath;->getArrayItem(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 2462
    .local v2, "item":Ljava/lang/Object;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2460
    .end local v2    # "item":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2464
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V
    .locals 6
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p3, "context"    # Lcom/alibaba/fastjson/JSONPath$Context;

    .line 2468
    iget-boolean v0, p3, Lcom/alibaba/fastjson/JSONPath$Context;->eval:Z

    if-eqz v0, :cond_3

    .line 2469
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 2470
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 2471
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;->indexes:[I

    array-length v1, v1

    new-array v1, v1, [I

    .line 2472
    .local v1, "indexes":[I
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;->indexes:[I

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2473
    aget v2, v1, v4

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    move v4, v3

    nop

    :cond_0
    move v2, v4

    .line 2475
    .local v2, "noneNegative":Z
    move-object v4, v0

    check-cast v4, Ljava/util/List;

    .line 2476
    .local v4, "list":Ljava/util/List;
    if-eqz v2, :cond_3

    .line 2477
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    .local v5, "i":I
    :goto_0
    move v3, v5

    .end local v5    # "i":I
    .local v3, "i":I
    if-ltz v3, :cond_2

    .line 2478
    invoke-static {v1, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v5

    if-gez v5, :cond_1

    .line 2479
    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2477
    :cond_1
    add-int/lit8 v5, v3, -0x1

    .end local v3    # "i":I
    .restart local v5    # "i":I
    goto :goto_0

    .line 2482
    .end local v5    # "i":I
    :cond_2
    iput-object v4, p3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    .line 2483
    return-void

    .line 2487
    .end local v0    # "object":Ljava/lang/Object;
    .end local v1    # "indexes":[I
    .end local v2    # "noneNegative":Z
    .end local v4    # "list":Ljava/util/List;
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
