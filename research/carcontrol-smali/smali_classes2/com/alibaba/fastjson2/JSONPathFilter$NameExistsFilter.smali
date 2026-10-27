.class final Lcom/alibaba/fastjson2/JSONPathFilter$NameExistsFilter;
.super Lcom/alibaba/fastjson2/JSONPathFilter;
.source "JSONPathFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONPathFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NameExistsFilter"
.end annotation


# instance fields
.field final name:Ljava/lang/String;

.field final nameHashCode:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 967
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONPathFilter;-><init>()V

    .line 968
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameExistsFilter;->name:Ljava/lang/String;

    .line 969
    iput-wide p2, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameExistsFilter;->nameHashCode:J

    return-void
.end method


# virtual methods
.method public accept(Lcom/alibaba/fastjson2/JSONReader;Lcom/alibaba/fastjson2/JSONPath$Context;)V
    .locals 0

    .line 1023
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONPathFilter$NameExistsFilter;->eval(Lcom/alibaba/fastjson2/JSONPath$Context;)V

    return-void
.end method

.method public apply(Lcom/alibaba/fastjson2/JSONPath$Context;Ljava/lang/Object;)Z
    .locals 0

    .line 1033
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public eval(Lcom/alibaba/fastjson2/JSONPath$Context;)V
    .locals 6

    .line 974
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    if-nez v0, :cond_0

    .line 975
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    goto :goto_0

    .line 976
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    .line 978
    :goto_0
    new-instance v1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 979
    instance-of v2, v0, Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 980
    check-cast v0, Ljava/util/List;

    .line 981
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_2

    .line 982
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 983
    instance-of v4, v2, Ljava/util/Map;

    if-eqz v4, :cond_1

    .line 984
    move-object v4, v2

    check-cast v4, Ljava/util/Map;

    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameExistsFilter;->name:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 985
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 989
    :cond_2
    iput-object v1, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    return-void

    .line 993
    :cond_3
    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_5

    .line 994
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    .line 995
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameExistsFilter;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 996
    :goto_2
    iput-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    return-void

    .line 1000
    :cond_5
    instance-of v2, v0, Lcom/alibaba/fastjson2/JSONPath$Sequence;

    if-eqz v2, :cond_9

    .line 1001
    check-cast v0, Lcom/alibaba/fastjson2/JSONPath$Sequence;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPath$Sequence;->values:Ljava/util/List;

    .line 1002
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_7

    .line 1003
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1004
    instance-of v4, v2, Ljava/util/Map;

    if-eqz v4, :cond_6

    .line 1005
    move-object v4, v2

    check-cast v4, Ljava/util/Map;

    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameExistsFilter;->name:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1006
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1010
    :cond_7
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->next:Lcom/alibaba/fastjson2/JSONPathSegment;

    if-eqz v0, :cond_8

    .line 1011
    new-instance v0, Lcom/alibaba/fastjson2/JSONPath$Sequence;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONPath$Sequence;-><init>(Ljava/util/List;)V

    iput-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    goto :goto_4

    .line 1013
    :cond_8
    iput-object v1, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    :goto_4
    return-void

    .line 1018
    :cond_9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameExistsFilter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
