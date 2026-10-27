.class final Lcom/alibaba/fastjson2/JSONPathSegment$EntrySetSegment;
.super Lcom/alibaba/fastjson2/JSONPathSegment;
.source "JSONPathSegment.java"

# interfaces
.implements Lcom/alibaba/fastjson2/JSONPathSegment$EvalSegment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONPathSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EntrySetSegment"
.end annotation


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/JSONPathSegment$EntrySetSegment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1924
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathSegment$EntrySetSegment;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONPathSegment$EntrySetSegment;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathSegment$EntrySetSegment;->INSTANCE:Lcom/alibaba/fastjson2/JSONPathSegment$EntrySetSegment;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1921
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONPathSegment;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/alibaba/fastjson2/JSONReader;Lcom/alibaba/fastjson2/JSONPath$Context;)V
    .locals 5

    .line 1928
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isObject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1929
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 1930
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 1931
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1932
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldName()Ljava/lang/String;

    move-result-object v1

    .line 1933
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "key"

    const-string/jumbo v4, "value"

    .line 1935
    invoke-static {v3, v1, v4, v2}, Lcom/alibaba/fastjson2/JSONObject;->of(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v1

    .line 1934
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1938
    :cond_0
    iput-object v0, p2, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    return-void

    .line 1941
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "TODO"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public eval(Lcom/alibaba/fastjson2/JSONPath$Context;)V
    .locals 6

    .line 1946
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    if-nez v0, :cond_0

    .line 1947
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    goto :goto_0

    .line 1948
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    .line 1949
    :goto_0
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 1950
    check-cast v0, Ljava/util/Map;

    .line 1951
    new-instance v1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    .line 1952
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1954
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    const-string v4, "key"

    const-string/jumbo v5, "value"

    invoke-static {v4, v3, v5, v2}, Lcom/alibaba/fastjson2/JSONObject;->of(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v2

    .line 1953
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1957
    :cond_1
    iput-object v1, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 1958
    iput-boolean v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->eval:Z

    return-void

    .line 1962
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "TODO"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
