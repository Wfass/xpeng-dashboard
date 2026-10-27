.class abstract Lcom/alibaba/fastjson2/JSONPathSegment;
.super Ljava/lang/Object;
.source "JSONPathSegment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/JSONPathSegment$EntrySetSegment;,
        Lcom/alibaba/fastjson2/JSONPathSegment$KeysSegment;,
        Lcom/alibaba/fastjson2/JSONPathSegment$ValuesSegment;,
        Lcom/alibaba/fastjson2/JSONPathSegment$LengthSegment;,
        Lcom/alibaba/fastjson2/JSONPathSegment$SumSegment;,
        Lcom/alibaba/fastjson2/JSONPathSegment$MaxSegment;,
        Lcom/alibaba/fastjson2/JSONPathSegment$MinSegment;,
        Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;,
        Lcom/alibaba/fastjson2/JSONPathSegment$RootSegment;,
        Lcom/alibaba/fastjson2/JSONPathSegment$SelfSegment;,
        Lcom/alibaba/fastjson2/JSONPathSegment$AllSegment;,
        Lcom/alibaba/fastjson2/JSONPathSegment$MultiNameSegment;,
        Lcom/alibaba/fastjson2/JSONPathSegment$MultiIndexSegment;,
        Lcom/alibaba/fastjson2/JSONPathSegment$RangeIndexSegment;,
        Lcom/alibaba/fastjson2/JSONPathSegment$RandomIndexSegment;,
        Lcom/alibaba/fastjson2/JSONPathSegment$EvalSegment;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract accept(Lcom/alibaba/fastjson2/JSONReader;Lcom/alibaba/fastjson2/JSONPath$Context;)V
.end method

.method public contains(Lcom/alibaba/fastjson2/JSONPath$Context;)Z
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONPathSegment;->eval(Lcom/alibaba/fastjson2/JSONPath$Context;)V

    .line 33
    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract eval(Lcom/alibaba/fastjson2/JSONPath$Context;)V
.end method

.method public remove(Lcom/alibaba/fastjson2/JSONPath$Context;)Z
    .locals 2

    .line 37
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnsupportedOperation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(Lcom/alibaba/fastjson2/JSONPath$Context;Ljava/lang/Object;)V
    .locals 1

    .line 41
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UnsupportedOperation "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCallback(Lcom/alibaba/fastjson2/JSONPath$Context;Ljava/util/function/BiFunction;)V
    .locals 1

    .line 45
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UnsupportedOperation "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInt(Lcom/alibaba/fastjson2/JSONPath$Context;I)V
    .locals 0

    .line 49
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONPathSegment;->set(Lcom/alibaba/fastjson2/JSONPath$Context;Ljava/lang/Object;)V

    return-void
.end method

.method public setLong(Lcom/alibaba/fastjson2/JSONPath$Context;J)V
    .locals 0

    .line 53
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONPathSegment;->set(Lcom/alibaba/fastjson2/JSONPath$Context;Ljava/lang/Object;)V

    return-void
.end method
