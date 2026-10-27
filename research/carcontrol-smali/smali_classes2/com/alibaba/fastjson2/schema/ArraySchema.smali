.class public final Lcom/alibaba/fastjson2/schema/ArraySchema;
.super Lcom/alibaba/fastjson2/schema/JSONSchema;
.source "ArraySchema.java"


# instance fields
.field final additionalItem:Lcom/alibaba/fastjson2/schema/JSONSchema;

.field final additionalItems:Z

.field final allOf:Lcom/alibaba/fastjson2/schema/AllOf;

.field final anyOf:Lcom/alibaba/fastjson2/schema/AnyOf;

.field final contains:Lcom/alibaba/fastjson2/schema/JSONSchema;

.field final definitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/schema/JSONSchema;",
            ">;"
        }
    .end annotation
.end field

.field final defs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/schema/JSONSchema;",
            ">;"
        }
    .end annotation
.end field

.field itemSchema:Lcom/alibaba/fastjson2/schema/JSONSchema;

.field final maxContains:I

.field final maxLength:I

.field final minContains:I

.field final minLength:I

.field final oneOf:Lcom/alibaba/fastjson2/schema/OneOf;

.field final prefixItems:[Lcom/alibaba/fastjson2/schema/JSONSchema;

.field final typed:Z

.field final uniqueItems:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)V
    .locals 8

    .line 36
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    const-string/jumbo v0, "type"

    .line 38
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "array"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->typed:Z

    .line 39
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->definitions:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->defs:Ljava/util/Map;

    const-string v0, "definitions"

    .line 42
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 45
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 46
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/JSONObject;

    if-nez p2, :cond_0

    move-object v3, p0

    goto :goto_1

    :cond_0
    move-object v3, p2

    .line 47
    :goto_1
    invoke-static {v1, v3}, Lcom/alibaba/fastjson2/schema/JSONSchema;->of(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)Lcom/alibaba/fastjson2/schema/JSONSchema;

    move-result-object v1

    .line 48
    iget-object v3, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->definitions:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v0, "$defs"

    .line 52
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 54
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 55
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 56
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/JSONObject;

    if-nez p2, :cond_2

    move-object v3, p0

    goto :goto_3

    :cond_2
    move-object v3, p2

    .line 57
    :goto_3
    invoke-static {v1, v3}, Lcom/alibaba/fastjson2/schema/JSONSchema;->of(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)Lcom/alibaba/fastjson2/schema/JSONSchema;

    move-result-object v1

    .line 58
    iget-object v3, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->defs:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const-string v0, "minItems"

    const/4 v1, -0x1

    .line 62
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONObject;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->minLength:I

    const-string v0, "maxItems"

    .line 63
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONObject;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->maxLength:I

    const-string v0, "items"

    .line 65
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "additionalItems"

    .line 66
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "prefixItems"

    .line 67
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_4

    .line 72
    iput-object v5, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->itemSchema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    :goto_4
    move v6, v4

    goto :goto_6

    .line 73
    :cond_4
    instance-of v6, v0, Ljava/lang/Boolean;

    if-eqz v6, :cond_5

    .line 74
    move-object v6, v0

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 75
    iput-object v5, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->itemSchema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    goto :goto_6

    .line 76
    :cond_5
    instance-of v6, v0, Lcom/alibaba/fastjson2/JSONArray;

    if-eqz v6, :cond_7

    if-nez v3, :cond_6

    .line 78
    move-object v3, v0

    check-cast v3, Lcom/alibaba/fastjson2/JSONArray;

    .line 82
    iput-object v5, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->itemSchema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    goto :goto_4

    .line 80
    :cond_6
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "schema error, items : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_7
    move-object v6, v0

    check-cast v6, Lcom/alibaba/fastjson2/JSONObject;

    if-eqz p2, :cond_8

    move-object v7, p2

    goto :goto_5

    :cond_8
    move-object v7, p0

    :goto_5
    invoke-static {v6, v7}, Lcom/alibaba/fastjson2/schema/JSONSchema;->of(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)Lcom/alibaba/fastjson2/schema/JSONSchema;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->itemSchema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    goto :goto_4

    .line 89
    :goto_6
    instance-of v7, v2, Lcom/alibaba/fastjson2/JSONObject;

    if-eqz v7, :cond_a

    .line 90
    check-cast v2, Lcom/alibaba/fastjson2/JSONObject;

    if-nez p2, :cond_9

    move-object v6, p0

    goto :goto_7

    :cond_9
    move-object v6, p2

    :goto_7
    invoke-static {v2, v6}, Lcom/alibaba/fastjson2/schema/JSONSchema;->of(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)Lcom/alibaba/fastjson2/schema/JSONSchema;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->additionalItem:Lcom/alibaba/fastjson2/schema/JSONSchema;

    move v6, v4

    goto :goto_8

    .line 92
    :cond_a
    instance-of v7, v2, Ljava/lang/Boolean;

    if-eqz v7, :cond_b

    .line 93
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 94
    iput-object v5, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->additionalItem:Lcom/alibaba/fastjson2/schema/JSONSchema;

    goto :goto_8

    .line 96
    :cond_b
    iput-object v5, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->additionalItem:Lcom/alibaba/fastjson2/schema/JSONSchema;

    .line 100
    :goto_8
    iget-object v2, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->itemSchema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v2, :cond_c

    instance-of v2, v2, Lcom/alibaba/fastjson2/schema/Any;

    if-nez v2, :cond_c

    goto :goto_9

    :cond_c
    if-nez v3, :cond_d

    .line 102
    instance-of v0, v0, Ljava/lang/Boolean;

    if-nez v0, :cond_d

    goto :goto_9

    :cond_d
    move v4, v6

    .line 105
    :goto_9
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->additionalItems:Z

    const/4 v0, 0x0

    if-nez v3, :cond_e

    new-array p2, v0, [Lcom/alibaba/fastjson2/schema/JSONSchema;

    .line 108
    iput-object p2, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->prefixItems:[Lcom/alibaba/fastjson2/schema/JSONSchema;

    goto :goto_d

    .line 110
    :cond_e
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONArray;->size()I

    move-result v2

    new-array v2, v2, [Lcom/alibaba/fastjson2/schema/JSONSchema;

    iput-object v2, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->prefixItems:[Lcom/alibaba/fastjson2/schema/JSONSchema;

    .line 111
    :goto_a
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_12

    .line 114
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 115
    instance-of v4, v2, Ljava/lang/Boolean;

    if-eqz v4, :cond_10

    .line 116
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object v2, Lcom/alibaba/fastjson2/schema/Any;->INSTANCE:Lcom/alibaba/fastjson2/schema/Any;

    goto :goto_c

    :cond_f
    sget-object v2, Lcom/alibaba/fastjson2/schema/Any;->NOT_ANY:Lcom/alibaba/fastjson2/schema/JSONSchema;

    goto :goto_c

    .line 118
    :cond_10
    check-cast v2, Lcom/alibaba/fastjson2/JSONObject;

    if-nez p2, :cond_11

    move-object v4, p0

    goto :goto_b

    :cond_11
    move-object v4, p2

    .line 119
    :goto_b
    invoke-static {v2, v4}, Lcom/alibaba/fastjson2/schema/JSONSchema;->of(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)Lcom/alibaba/fastjson2/schema/JSONSchema;

    move-result-object v2

    .line 122
    :goto_c
    iget-object v4, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->prefixItems:[Lcom/alibaba/fastjson2/schema/JSONSchema;

    aput-object v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 126
    :cond_12
    :goto_d
    sget-object p2, Lcom/alibaba/fastjson2/schema/-$$Lambda$gV4G2nZkequZlP5rFHVeB6Rcy9Y;->INSTANCE:Lcom/alibaba/fastjson2/schema/-$$Lambda$gV4G2nZkequZlP5rFHVeB6Rcy9Y;

    const-string v0, "contains"

    invoke-virtual {p1, v0, p2}, Lcom/alibaba/fastjson2/JSONObject;->getObject(Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/fastjson2/schema/JSONSchema;

    iput-object p2, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->contains:Lcom/alibaba/fastjson2/schema/JSONSchema;

    const-string p2, "minContains"

    .line 127
    invoke-virtual {p1, p2, v1}, Lcom/alibaba/fastjson2/JSONObject;->getIntValue(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->minContains:I

    const-string p2, "maxContains"

    .line 128
    invoke-virtual {p1, p2, v1}, Lcom/alibaba/fastjson2/JSONObject;->getIntValue(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->maxContains:I

    const-string/jumbo p2, "uniqueItems"

    .line 130
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->uniqueItems:Z

    .line 132
    invoke-static {p1, v5}, Lcom/alibaba/fastjson2/schema/ArraySchema;->allOf(Lcom/alibaba/fastjson2/JSONObject;Ljava/lang/Class;)Lcom/alibaba/fastjson2/schema/AllOf;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->allOf:Lcom/alibaba/fastjson2/schema/AllOf;

    .line 133
    invoke-static {p1, v5}, Lcom/alibaba/fastjson2/schema/ArraySchema;->anyOf(Lcom/alibaba/fastjson2/JSONObject;Ljava/lang/Class;)Lcom/alibaba/fastjson2/schema/AnyOf;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->anyOf:Lcom/alibaba/fastjson2/schema/AnyOf;

    .line 134
    invoke-static {p1, v5}, Lcom/alibaba/fastjson2/schema/ArraySchema;->oneOf(Lcom/alibaba/fastjson2/JSONObject;Ljava/lang/Class;)Lcom/alibaba/fastjson2/schema/OneOf;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->oneOf:Lcom/alibaba/fastjson2/schema/OneOf;

    return-void
.end method

.method static synthetic lambda$validate$0([Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    .line 150
    aget-object p0, p0, p1

    return-object p0
.end method

.method static synthetic lambda$validate$1(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    .line 155
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$validate$2(Ljava/util/Iterator;I)Ljava/lang/Object;
    .locals 0

    .line 161
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private validateItems(Ljava/lang/Object;ILjava/util/function/IntFunction;)Lcom/alibaba/fastjson2/schema/ValidateResult;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/function/IntFunction<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alibaba/fastjson2/schema/ValidateResult;"
        }
    .end annotation

    .line 168
    iget v0, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->minLength:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v0, :cond_0

    if-ge p2, v0, :cond_0

    .line 169
    new-instance p1, Lcom/alibaba/fastjson2/schema/ValidateResult;

    new-array p3, v1, [Ljava/lang/Object;

    iget v0, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->minLength:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v2

    const-string p2, "minLength not match, expect >= %s, but %s"

    invoke-direct {p1, v3, p2, p3}, Lcom/alibaba/fastjson2/schema/ValidateResult;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 172
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->maxLength:I

    if-ltz v0, :cond_1

    if-le p2, v0, :cond_1

    .line 173
    new-instance p1, Lcom/alibaba/fastjson2/schema/ValidateResult;

    new-array p3, v1, [Ljava/lang/Object;

    iget v0, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->maxLength:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v2

    const-string p2, "maxLength not match, expect <= %s, but %s"

    invoke-direct {p1, v3, p2, p3}, Lcom/alibaba/fastjson2/schema/ValidateResult;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 176
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->additionalItems:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->prefixItems:[Lcom/alibaba/fastjson2/schema/JSONSchema;

    array-length v0, v0

    if-le p2, v0, :cond_2

    .line 177
    new-instance p1, Lcom/alibaba/fastjson2/schema/ValidateResult;

    new-array p3, v1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->prefixItems:[Lcom/alibaba/fastjson2/schema/JSONSchema;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v2

    const-string p2, "additional items not match, max size %s, but %s"

    invoke-direct {p1, v3, p2, p3}, Lcom/alibaba/fastjson2/schema/ValidateResult;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 180
    :cond_2
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v4, 0x0

    move v5, v3

    move v6, v5

    :goto_0
    if-ge v5, p2, :cond_c

    .line 184
    invoke-interface {p3, v5}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v7

    .line 187
    iget-object v8, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->prefixItems:[Lcom/alibaba/fastjson2/schema/JSONSchema;

    array-length v9, v8

    if-ge v5, v9, :cond_4

    .line 188
    aget-object v8, v8, v5

    invoke-virtual {v8, v7}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object v8

    .line 189
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result v9

    if-nez v9, :cond_3

    return-object v8

    :cond_3
    move v8, v2

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    .line 193
    iget-object v8, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->itemSchema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->additionalItem:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v8, :cond_5

    .line 194
    invoke-virtual {v8, v7}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object v8

    .line 195
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result v9

    if-nez v9, :cond_5

    return-object v8

    :cond_5
    move v8, v3

    :goto_1
    if-nez v8, :cond_6

    .line 200
    iget-object v8, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->itemSchema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v8, :cond_6

    .line 201
    invoke-virtual {v8, v7}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object v8

    .line 202
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result v9

    if-nez v9, :cond_6

    return-object v8

    .line 207
    :cond_6
    iget-object v8, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->contains:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v8, :cond_8

    iget v9, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->minContains:I

    if-gtz v9, :cond_7

    iget v9, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->maxContains:I

    if-gtz v9, :cond_7

    if-nez v6, :cond_8

    .line 208
    :cond_7
    invoke-virtual {v8, v7}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object v8

    .line 209
    sget-object v9, Lcom/alibaba/fastjson2/schema/ArraySchema;->SUCCESS:Lcom/alibaba/fastjson2/schema/ValidateResult;

    if-ne v8, v9, :cond_8

    add-int/lit8 v6, v6, 0x1

    .line 214
    :cond_8
    iget-boolean v8, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->uniqueItems:Z

    if-eqz v8, :cond_b

    if-nez v4, :cond_9

    .line 216
    new-instance v4, Ljava/util/HashSet;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, p2, v8}, Ljava/util/HashSet;-><init>(IF)V

    .line 219
    :cond_9
    instance-of v8, v7, Ljava/math/BigDecimal;

    if-eqz v8, :cond_a

    .line 220
    check-cast v7, Ljava/math/BigDecimal;

    invoke-virtual {v7}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v7

    .line 223
    :cond_a
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 224
    sget-object p1, Lcom/alibaba/fastjson2/schema/ArraySchema;->UNIQUE_ITEMS_NOT_MATCH:Lcom/alibaba/fastjson2/schema/ValidateResult;

    return-object p1

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_c
    if-eqz v0, :cond_d

    .line 229
    iget-object p2, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->contains:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz p2, :cond_11

    .line 230
    :cond_d
    iget p2, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->minContains:I

    if-ltz p2, :cond_e

    if-ge v6, p2, :cond_e

    .line 231
    new-instance p1, Lcom/alibaba/fastjson2/schema/ValidateResult;

    new-array p2, v1, [Ljava/lang/Object;

    iget p3, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->minContains:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v2

    const-string p3, "minContains not match, expect %s, but %s"

    invoke-direct {p1, v3, p3, p2}, Lcom/alibaba/fastjson2/schema/ValidateResult;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_e
    if-eqz v0, :cond_f

    if-nez v6, :cond_10

    if-eqz p2, :cond_10

    .line 236
    sget-object p1, Lcom/alibaba/fastjson2/schema/ArraySchema;->CONTAINS_NOT_MATCH:Lcom/alibaba/fastjson2/schema/ValidateResult;

    return-object p1

    .line 238
    :cond_f
    iget-object p2, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->contains:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz p2, :cond_10

    if-nez v6, :cond_10

    .line 239
    sget-object p1, Lcom/alibaba/fastjson2/schema/ArraySchema;->CONTAINS_NOT_MATCH:Lcom/alibaba/fastjson2/schema/ValidateResult;

    return-object p1

    .line 242
    :cond_10
    iget p2, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->maxContains:I

    if-ltz p2, :cond_11

    if-le v6, p2, :cond_11

    .line 243
    new-instance p1, Lcom/alibaba/fastjson2/schema/ValidateResult;

    new-array p2, v1, [Ljava/lang/Object;

    iget p3, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->maxContains:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v2

    const-string p3, "maxContains not match, expect %s, but %s"

    invoke-direct {p1, v3, p3, p2}, Lcom/alibaba/fastjson2/schema/ValidateResult;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 247
    :cond_11
    iget-object p2, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->allOf:Lcom/alibaba/fastjson2/schema/AllOf;

    if-eqz p2, :cond_12

    .line 248
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/schema/AllOf;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object p2

    .line 249
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result p3

    if-nez p3, :cond_12

    return-object p2

    .line 254
    :cond_12
    iget-object p2, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->anyOf:Lcom/alibaba/fastjson2/schema/AnyOf;

    if-eqz p2, :cond_13

    .line 255
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/schema/AnyOf;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object p2

    .line 256
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result p3

    if-nez p3, :cond_13

    return-object p2

    .line 261
    :cond_13
    iget-object p2, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->oneOf:Lcom/alibaba/fastjson2/schema/OneOf;

    if-eqz p2, :cond_14

    .line 262
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/schema/OneOf;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object p1

    .line 263
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result p2

    if-nez p2, :cond_14

    return-object p1

    .line 268
    :cond_14
    sget-object p1, Lcom/alibaba/fastjson2/schema/ArraySchema;->SUCCESS:Lcom/alibaba/fastjson2/schema/ValidateResult;

    return-object p1
.end method


# virtual methods
.method public accept(Ljava/util/function/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/alibaba/fastjson2/schema/JSONSchema;",
            ">;)V"
        }
    .end annotation

    .line 332
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->itemSchema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->accept(Ljava/util/function/Predicate;)V

    :cond_0
    return-void
.end method

.method public getItemSchema()Lcom/alibaba/fastjson2/schema/JSONSchema;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->itemSchema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    return-object v0
.end method

.method public getType()Lcom/alibaba/fastjson2/schema/JSONSchema$Type;
    .locals 1

    .line 139
    sget-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->Array:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    return-object v0
.end method

.method public toJSONObject()Lcom/alibaba/fastjson2/JSONObject;
    .locals 4

    .line 273
    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    const-string/jumbo v1, "type"

    const-string v2, "array"

    .line 274
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget v1, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->maxLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 277
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "maxLength"

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->minLength:I

    if-eq v1, v2, :cond_1

    .line 281
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "minLength"

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->itemSchema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v1, :cond_2

    const-string v3, "items"

    .line 285
    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->prefixItems:[Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v1, :cond_3

    array-length v3, v1

    if-eqz v3, :cond_3

    const-string v3, "prefixItems"

    .line 289
    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_3
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->additionalItems:Z

    if-nez v1, :cond_4

    .line 293
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "additionalItems"

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->additionalItem:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v1, :cond_5

    const-string v3, "additionalItem"

    .line 297
    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    :cond_5
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->contains:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v1, :cond_6

    const-string v3, "contains"

    .line 301
    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_6
    iget v1, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->minContains:I

    if-eq v1, v2, :cond_7

    .line 305
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "minContains"

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_7
    iget v1, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->maxContains:I

    if-eq v1, v2, :cond_8

    .line 309
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "maxContains"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_8
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->uniqueItems:Z

    if-eqz v1, :cond_9

    .line 313
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "uniqueItems"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_9
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->allOf:Lcom/alibaba/fastjson2/schema/AllOf;

    if-eqz v1, :cond_a

    const-string v2, "allOf"

    .line 317
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_a
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->anyOf:Lcom/alibaba/fastjson2/schema/AnyOf;

    if-eqz v1, :cond_b

    const-string v2, "anyOf"

    .line 321
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :cond_b
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->oneOf:Lcom/alibaba/fastjson2/schema/OneOf;

    if-eqz v1, :cond_c

    const-string v2, "oneOf"

    .line 325
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    return-object v0
.end method

.method public validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;
    .locals 3

    if-nez p1, :cond_1

    .line 145
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->typed:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/alibaba/fastjson2/schema/ArraySchema;->FAIL_INPUT_NULL:Lcom/alibaba/fastjson2/schema/ValidateResult;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/alibaba/fastjson2/schema/ArraySchema;->SUCCESS:Lcom/alibaba/fastjson2/schema/ValidateResult;

    :goto_0
    return-object p1

    .line 148
    :cond_1
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 149
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    .line 150
    array-length v1, v0

    new-instance v2, Lcom/alibaba/fastjson2/schema/-$$Lambda$ArraySchema$kSBsK7HiMlthwCflYkdtG9WZm8A;

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/schema/-$$Lambda$ArraySchema$kSBsK7HiMlthwCflYkdtG9WZm8A;-><init>([Ljava/lang/Object;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/alibaba/fastjson2/schema/ArraySchema;->validateItems(Ljava/lang/Object;ILjava/util/function/IntFunction;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object p1

    return-object p1

    .line 153
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 155
    new-instance v1, Lcom/alibaba/fastjson2/schema/-$$Lambda$ArraySchema$PcRjNEr-FLU1O3Yy8_CUfXfbbC8;

    invoke-direct {v1, p1}, Lcom/alibaba/fastjson2/schema/-$$Lambda$ArraySchema$PcRjNEr-FLU1O3Yy8_CUfXfbbC8;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/schema/ArraySchema;->validateItems(Ljava/lang/Object;ILjava/util/function/IntFunction;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object p1

    return-object p1

    .line 158
    :cond_3
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_4

    .line 159
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    .line 160
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 161
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    new-instance v2, Lcom/alibaba/fastjson2/schema/-$$Lambda$ArraySchema$xtS4Mdsw5Yxn0ANmyopS0Hge6R8;

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/schema/-$$Lambda$ArraySchema$xtS4Mdsw5Yxn0ANmyopS0Hge6R8;-><init>(Ljava/util/Iterator;)V

    invoke-direct {p0, p1, v0, v2}, Lcom/alibaba/fastjson2/schema/ArraySchema;->validateItems(Ljava/lang/Object;ILjava/util/function/IntFunction;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object p1

    return-object p1

    .line 164
    :cond_4
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/schema/ArraySchema;->typed:Z

    if-eqz p1, :cond_5

    sget-object p1, Lcom/alibaba/fastjson2/schema/ArraySchema;->FAIL_TYPE_NOT_MATCH:Lcom/alibaba/fastjson2/schema/ValidateResult;

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/alibaba/fastjson2/schema/ArraySchema;->SUCCESS:Lcom/alibaba/fastjson2/schema/ValidateResult;

    :goto_1
    return-object p1
.end method
