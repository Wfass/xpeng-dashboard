.class Lcom/alibaba/fastjson2/JSONPathTyped;
.super Lcom/alibaba/fastjson2/JSONPath;
.source "JSONPathTyped.java"


# instance fields
.field final jsonPath:Lcom/alibaba/fastjson2/JSONPath;

.field final type:Ljava/lang/reflect/Type;


# direct methods
.method protected constructor <init>(Lcom/alibaba/fastjson2/JSONPath;Ljava/lang/reflect/Type;)V
    .locals 3

    .line 14
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath;->path:Ljava/lang/String;

    iget-wide v1, p1, Lcom/alibaba/fastjson2/JSONPath;->features:J

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/fastjson2/JSONPath;-><init>(Ljava/lang/String;J)V

    .line 15
    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONPathTyped;->type:Ljava/lang/reflect/Type;

    .line 16
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONPathTyped;->jsonPath:Lcom/alibaba/fastjson2/JSONPath;

    return-void
.end method

.method public static of(Lcom/alibaba/fastjson2/JSONPath;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/JSONPath;
    .locals 1

    if-eqz p1, :cond_6

    .line 86
    const-class v0, Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    instance-of v0, p0, Lcom/alibaba/fastjson2/JSONPathTyped;

    if-eqz v0, :cond_1

    .line 91
    move-object v0, p0

    check-cast v0, Lcom/alibaba/fastjson2/JSONPathTyped;

    .line 92
    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPathTyped;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 97
    :cond_1
    instance-of v0, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;

    if-eqz v0, :cond_5

    .line 98
    const-class v0, Ljava/lang/Integer;

    if-ne p1, v0, :cond_2

    .line 99
    new-instance p1, Lcom/alibaba/fastjson2/JSONPathSingleNameInteger;

    check-cast p0, Lcom/alibaba/fastjson2/JSONPathSingleName;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/JSONPathSingleNameInteger;-><init>(Lcom/alibaba/fastjson2/JSONPathSingleName;)V

    return-object p1

    .line 102
    :cond_2
    const-class v0, Ljava/lang/Long;

    if-ne p1, v0, :cond_3

    .line 103
    new-instance p1, Lcom/alibaba/fastjson2/JSONPathSingleNameLong;

    check-cast p0, Lcom/alibaba/fastjson2/JSONPathSingleName;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/JSONPathSingleNameLong;-><init>(Lcom/alibaba/fastjson2/JSONPathSingleName;)V

    return-object p1

    .line 106
    :cond_3
    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_4

    .line 107
    new-instance p1, Lcom/alibaba/fastjson2/JSONPathSingleNameString;

    check-cast p0, Lcom/alibaba/fastjson2/JSONPathSingleName;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/JSONPathSingleNameString;-><init>(Lcom/alibaba/fastjson2/JSONPathSingleName;)V

    return-object p1

    .line 110
    :cond_4
    const-class v0, Ljava/math/BigDecimal;

    if-ne p1, v0, :cond_5

    .line 111
    new-instance p1, Lcom/alibaba/fastjson2/JSONPathSingleNameDecimal;

    check-cast p0, Lcom/alibaba/fastjson2/JSONPathSingleName;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/JSONPathSingleNameDecimal;-><init>(Lcom/alibaba/fastjson2/JSONPathSingleName;)V

    return-object p1

    .line 115
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathTyped;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/JSONPathTyped;-><init>(Lcom/alibaba/fastjson2/JSONPath;Ljava/lang/reflect/Type;)V

    return-object v0

    :cond_6
    :goto_0
    return-object p0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTyped;->jsonPath:Lcom/alibaba/fastjson2/JSONPath;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONPath;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public eval(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTyped;->jsonPath:Lcom/alibaba/fastjson2/JSONPath;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTyped;->type:Ljava/lang/reflect/Type;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public extract(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTyped;->jsonPath:Lcom/alibaba/fastjson2/JSONPath;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONPath;->extract(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    move-result-object p1

    .line 43
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTyped;->type:Ljava/lang/reflect/Type;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public extractScalar(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTyped;->jsonPath:Lcom/alibaba/fastjson2/JSONPath;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONPath;->extractScalar(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getParent()Lcom/alibaba/fastjson2/JSONPath;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTyped;->jsonPath:Lcom/alibaba/fastjson2/JSONPath;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONPath;->getParent()Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTyped;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public isRef()Z
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTyped;->jsonPath:Lcom/alibaba/fastjson2/JSONPath;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONPath;->isRef()Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTyped;->jsonPath:Lcom/alibaba/fastjson2/JSONPath;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONPath;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTyped;->jsonPath:Lcom/alibaba/fastjson2/JSONPath;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/JSONPath;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public varargs set(Ljava/lang/Object;Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTyped;->jsonPath:Lcom/alibaba/fastjson2/JSONPath;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONPath;->set(Ljava/lang/Object;Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    return-void
.end method

.method public setCallback(Ljava/lang/Object;Ljava/util/function/BiFunction;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTyped;->jsonPath:Lcom/alibaba/fastjson2/JSONPath;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/JSONPath;->setCallback(Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public setInt(Ljava/lang/Object;I)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTyped;->jsonPath:Lcom/alibaba/fastjson2/JSONPath;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/JSONPath;->setInt(Ljava/lang/Object;I)V

    return-void
.end method

.method public setLong(Ljava/lang/Object;J)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTyped;->jsonPath:Lcom/alibaba/fastjson2/JSONPath;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONPath;->setLong(Ljava/lang/Object;J)V

    return-void
.end method
