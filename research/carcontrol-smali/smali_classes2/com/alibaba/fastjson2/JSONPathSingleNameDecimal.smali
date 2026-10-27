.class final Lcom/alibaba/fastjson2/JSONPathSingleNameDecimal;
.super Lcom/alibaba/fastjson2/JSONPathTyped;
.source "JSONPathSingleNameDecimal.java"


# instance fields
.field final name:Ljava/lang/String;

.field final nameHashCode:J


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/JSONPathSingleName;)V
    .locals 2

    .line 11
    const-class v0, Ljava/math/BigDecimal;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson2/JSONPathTyped;-><init>(Lcom/alibaba/fastjson2/JSONPath;Ljava/lang/reflect/Type;)V

    .line 12
    iget-wide v0, p1, Lcom/alibaba/fastjson2/JSONPathSingleName;->nameHashCode:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/JSONPathSingleNameDecimal;->nameHashCode:J

    .line 13
    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONPathSingleName;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONPathSingleNameDecimal;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public extract(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 7

    .line 18
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 19
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isObject()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    .line 21
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    move-result v0

    if-nez v0, :cond_6

    .line 22
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    iget-wide v5, p0, Lcom/alibaba/fastjson2/JSONPathSingleNameDecimal;->nameHashCode:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    .line 28
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isObject()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    move-result v0

    if-nez v0, :cond_2

    .line 29
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readBigDecimal()Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 36
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 37
    :goto_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    move-result v0

    if-nez v0, :cond_6

    .line 38
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide v3

    .line 39
    iget-wide v5, p0, Lcom/alibaba/fastjson2/JSONPathSingleNameDecimal;->nameHashCode:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v2

    :goto_3
    if-nez v0, :cond_5

    .line 42
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    goto :goto_2

    .line 46
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readBigDecimal()Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method
