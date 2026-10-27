.class Lcom/alibaba/fastjson/JSONPath$RangeSegment;
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
    name = "RangeSegment"
.end annotation


# instance fields
.field private final end:I

.field private final start:I

.field private final step:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "step"    # I

    .line 2497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2498
    iput p1, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegment;->start:I

    .line 2499
    iput p2, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegment;->end:I

    .line 2500
    iput p3, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegment;->step:I

    .line 2501
    return-void
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "rootObject"    # Ljava/lang/Object;
    .param p3, "currentObject"    # Ljava/lang/Object;

    .line 2504
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$SizeSegment;->instance:Lcom/alibaba/fastjson/JSONPath$SizeSegment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/fastjson/JSONPath$SizeSegment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2505
    .local v0, "size":I
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegment;->start:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegment;->start:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegment;->start:I

    add-int/2addr v1, v0

    .line 2506
    .local v1, "start":I
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegment;->end:I

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegment;->end:I

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegment;->end:I

    add-int/2addr v2, v0

    .line 2508
    .local v2, "end":I
    :goto_1
    sub-int v3, v2, v1

    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegment;->step:I

    div-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    .line 2509
    .local v3, "array_size":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 2510
    const/4 v4, 0x0

    return-object v4

    .line 2513
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2514
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move v5, v1

    .local v5, "i":I
    :goto_2
    if-gt v5, v2, :cond_3

    if-ge v5, v0, :cond_3

    .line 2515
    invoke-virtual {p1, p3, v5}, Lcom/alibaba/fastjson/JSONPath;->getArrayItem(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    .line 2516
    .local v6, "item":Ljava/lang/Object;
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2514
    .end local v6    # "item":Ljava/lang/Object;
    iget v6, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegment;->step:I

    add-int/2addr v5, v6

    goto :goto_2

    .line 2518
    .end local v5    # "i":I
    :cond_3
    return-object v4
.end method

.method public extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V
    .locals 1
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p3, "context"    # Lcom/alibaba/fastjson/JSONPath$Context;

    .line 2522
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
