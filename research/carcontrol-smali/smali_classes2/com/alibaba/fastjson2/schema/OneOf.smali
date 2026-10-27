.class final Lcom/alibaba/fastjson2/schema/OneOf;
.super Lcom/alibaba/fastjson2/schema/JSONSchema;
.source "OneOf.java"


# instance fields
.field final items:[Lcom/alibaba/fastjson2/schema/JSONSchema;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)V
    .locals 3

    .line 17
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    const-string v0, "oneOf"

    .line 18
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 19
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 23
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONArray;->size()I

    move-result v0

    new-array v0, v0, [Lcom/alibaba/fastjson2/schema/JSONSchema;

    iput-object v0, p0, Lcom/alibaba/fastjson2/schema/OneOf;->items:[Lcom/alibaba/fastjson2/schema/JSONSchema;

    const/4 v0, 0x0

    .line 24
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/OneOf;->items:[Lcom/alibaba/fastjson2/schema/JSONSchema;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 25
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 26
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 27
    iget-object v2, p0, Lcom/alibaba/fastjson2/schema/OneOf;->items:[Lcom/alibaba/fastjson2/schema/JSONSchema;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alibaba/fastjson2/schema/Any;->INSTANCE:Lcom/alibaba/fastjson2/schema/Any;

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/schema/Any;->NOT_ANY:Lcom/alibaba/fastjson2/schema/JSONSchema;

    :goto_1
    aput-object v1, v2, v0

    goto :goto_2

    .line 29
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/schema/OneOf;->items:[Lcom/alibaba/fastjson2/schema/JSONSchema;

    check-cast v1, Lcom/alibaba/fastjson2/JSONObject;

    invoke-static {v1, p2}, Lcom/alibaba/fastjson2/schema/JSONSchema;->of(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)Lcom/alibaba/fastjson2/schema/JSONSchema;

    move-result-object v1

    aput-object v1, v2, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 20
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "oneOf not found"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([Lcom/alibaba/fastjson2/schema/JSONSchema;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0, v0}, Lcom/alibaba/fastjson2/schema/JSONSchema;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/alibaba/fastjson2/schema/OneOf;->items:[Lcom/alibaba/fastjson2/schema/JSONSchema;

    return-void
.end method


# virtual methods
.method public getType()Lcom/alibaba/fastjson2/schema/JSONSchema$Type;
    .locals 1

    .line 36
    sget-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->OneOf:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    return-object v0
.end method

.method public validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;
    .locals 6

    .line 42
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/OneOf;->items:[Lcom/alibaba/fastjson2/schema/JSONSchema;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v1, :cond_1

    aget-object v5, v0, v2

    .line 43
    invoke-virtual {v5, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object v5

    .line 44
    invoke-virtual {v5}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    if-le v3, v4, :cond_0

    .line 47
    sget-object p1, Lcom/alibaba/fastjson2/schema/OneOf;->FAIL_ONE_OF:Lcom/alibaba/fastjson2/schema/ValidateResult;

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eq v3, v4, :cond_2

    .line 51
    sget-object p1, Lcom/alibaba/fastjson2/schema/OneOf;->FAIL_ONE_OF:Lcom/alibaba/fastjson2/schema/ValidateResult;

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/alibaba/fastjson2/schema/OneOf;->SUCCESS:Lcom/alibaba/fastjson2/schema/ValidateResult;

    :goto_1
    return-object p1
.end method
