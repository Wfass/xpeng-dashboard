.class Lcom/alibaba/fastjson/JSONPath$MinSegment;
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
    name = "MinSegment"
.end annotation


# static fields
.field public static final instance:Lcom/alibaba/fastjson/JSONPath$MinSegment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1931
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$MinSegment;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONPath$MinSegment;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath$MinSegment;->instance:Lcom/alibaba/fastjson/JSONPath$MinSegment;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "rootObject"    # Ljava/lang/Object;
    .param p3, "currentObject"    # Ljava/lang/Object;

    .line 1934
    const/4 v0, 0x0

    .line 1935
    .local v0, "min":Ljava/lang/Object;
    instance-of v1, p3, Ljava/util/Collection;

    if-eqz v1, :cond_4

    .line 1936
    move-object v1, p3

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1937
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1938
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1939
    .local v2, "next":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 1940
    goto :goto_0

    .line 1943
    :cond_0
    if-nez v0, :cond_1

    .line 1944
    move-object v0, v2

    goto :goto_1

    .line 1945
    :cond_1
    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSONPath;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_2

    .line 1946
    move-object v0, v2

    .line 1948
    .end local v2    # "next":Ljava/lang/Object;
    :cond_2
    :goto_1
    goto :goto_0

    .line 1949
    .end local v1    # "iterator":Ljava/util/Iterator;
    :cond_3
    nop

    .line 1953
    return-object v0

    .line 1950
    :cond_4
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V
    .locals 1
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p3, "context"    # Lcom/alibaba/fastjson/JSONPath$Context;

    .line 1957
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
