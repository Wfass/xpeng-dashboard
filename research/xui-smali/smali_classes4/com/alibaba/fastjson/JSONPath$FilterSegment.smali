.class public Lcom/alibaba/fastjson/JSONPath$FilterSegment;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterSegment"
.end annotation


# instance fields
.field private final filter:Lcom/alibaba/fastjson/JSONPath$Filter;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V
    .locals 0
    .param p1, "filter"    # Lcom/alibaba/fastjson/JSONPath$Filter;

    .line 3163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3164
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$FilterSegment;->filter:Lcom/alibaba/fastjson/JSONPath$Filter;

    .line 3165
    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/fastjson/JSONPath$FilterSegment;)Lcom/alibaba/fastjson/JSONPath$Filter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/fastjson/JSONPath$FilterSegment;

    .line 3158
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$FilterSegment;->filter:Lcom/alibaba/fastjson/JSONPath$Filter;

    return-object v0
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "rootObject"    # Ljava/lang/Object;
    .param p3, "currentObject"    # Ljava/lang/Object;

    .line 3169
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 3170
    return-object v0

    .line 3173
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 3175
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    instance-of v2, p3, Ljava/lang/Iterable;

    if-eqz v2, :cond_3

    .line 3176
    move-object v0, p3

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3177
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3178
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3180
    .local v2, "item":Ljava/lang/Object;
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$FilterSegment;->filter:Lcom/alibaba/fastjson/JSONPath$Filter;

    invoke-interface {v3, p1, p2, p3, v2}, Lcom/alibaba/fastjson/JSONPath$Filter;->apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3181
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3183
    .end local v2    # "item":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 3185
    :cond_2
    return-object v1

    .line 3188
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$FilterSegment;->filter:Lcom/alibaba/fastjson/JSONPath$Filter;

    invoke-interface {v2, p1, p2, p3, p3}, Lcom/alibaba/fastjson/JSONPath$Filter;->apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3189
    return-object p3

    .line 3192
    :cond_4
    return-object v0
.end method

.method public extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V
    .locals 1
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p3, "context"    # Lcom/alibaba/fastjson/JSONPath$Context;

    .line 3196
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "rootObject"    # Ljava/lang/Object;
    .param p3, "currentObject"    # Ljava/lang/Object;

    .line 3200
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 3201
    return v0

    .line 3204
    :cond_0
    instance-of v1, p3, Ljava/lang/Iterable;

    if-eqz v1, :cond_3

    .line 3205
    move-object v0, p3

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3206
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3207
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3209
    .local v1, "item":Ljava/lang/Object;
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$FilterSegment;->filter:Lcom/alibaba/fastjson/JSONPath$Filter;

    invoke-interface {v2, p1, p2, p3, v1}, Lcom/alibaba/fastjson/JSONPath$Filter;->apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3210
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 3212
    .end local v1    # "item":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 3214
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 3217
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_3
    return v0
.end method
