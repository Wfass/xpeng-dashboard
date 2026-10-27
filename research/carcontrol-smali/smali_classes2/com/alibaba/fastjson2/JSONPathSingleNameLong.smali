.class final Lcom/alibaba/fastjson2/JSONPathSingleNameLong;
.super Lcom/alibaba/fastjson2/JSONPathTyped;
.source "JSONPathSingleNameLong.java"


# instance fields
.field final name:Ljava/lang/String;

.field final nameHashCode:J


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/JSONPathSingleName;)V
    .locals 2

    .line 9
    const-class v0, Ljava/lang/Long;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson2/JSONPathTyped;-><init>(Lcom/alibaba/fastjson2/JSONPath;Ljava/lang/reflect/Type;)V

    .line 10
    iget-wide v0, p1, Lcom/alibaba/fastjson2/JSONPathSingleName;->nameHashCode:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/JSONPathSingleNameLong;->nameHashCode:J

    .line 11
    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONPathSingleName;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONPathSingleNameLong;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public extract(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 7

    .line 16
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 17
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isObject()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    .line 19
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    move-result v0

    if-nez v0, :cond_6

    .line 20
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    iget-wide v5, p0, Lcom/alibaba/fastjson2/JSONPathSingleNameLong;->nameHashCode:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    .line 26
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isObject()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    move-result v0

    if-nez v0, :cond_2

    .line 27
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt64()Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 34
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 35
    :goto_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    move-result v0

    if-nez v0, :cond_6

    .line 36
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide v3

    .line 37
    iget-wide v5, p0, Lcom/alibaba/fastjson2/JSONPathSingleNameLong;->nameHashCode:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v2

    :goto_3
    if-nez v0, :cond_5

    .line 40
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    goto :goto_2

    .line 44
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt64()Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method
