.class final Lcom/alibaba/fastjson2/schema/AllOf;
.super Lcom/alibaba/fastjson2/schema/JSONSchema;
.source "AllOf.java"


# instance fields
.field final items:[Lcom/alibaba/fastjson2/schema/JSONSchema;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)V
    .locals 5

    .line 17
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    const-string v0, "allOf"

    .line 18
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 19
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 23
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONArray;->size()I

    move-result v0

    new-array v0, v0, [Lcom/alibaba/fastjson2/schema/JSONSchema;

    iput-object v0, p0, Lcom/alibaba/fastjson2/schema/AllOf;->items:[Lcom/alibaba/fastjson2/schema/JSONSchema;

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    .line 25
    :goto_0
    iget-object v3, p0, Lcom/alibaba/fastjson2/schema/AllOf;->items:[Lcom/alibaba/fastjson2/schema/JSONSchema;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 28
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 29
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    .line 30
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/alibaba/fastjson2/schema/Any;->INSTANCE:Lcom/alibaba/fastjson2/schema/Any;

    goto :goto_3

    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/schema/Any;->NOT_ANY:Lcom/alibaba/fastjson2/schema/JSONSchema;

    goto :goto_3

    .line 32
    :cond_1
    check-cast v3, Lcom/alibaba/fastjson2/JSONObject;

    const-string/jumbo v4, "type"

    .line 33
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson2/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    .line 34
    sget-object v4, Lcom/alibaba/fastjson2/schema/AllOf$1;->$SwitchMap$com$alibaba$fastjson2$schema$JSONSchema$Type:[I

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->ordinal()I

    move-result v2

    aget v2, v4, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 51
    :pswitch_0
    new-instance v2, Lcom/alibaba/fastjson2/schema/ObjectSchema;

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson2/schema/ObjectSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    goto :goto_2

    .line 48
    :pswitch_1
    new-instance v2, Lcom/alibaba/fastjson2/schema/ArraySchema;

    invoke-direct {v2, v3, v1}, Lcom/alibaba/fastjson2/schema/ArraySchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)V

    goto :goto_2

    .line 45
    :pswitch_2
    new-instance v2, Lcom/alibaba/fastjson2/schema/BooleanSchema;

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson2/schema/BooleanSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    goto :goto_2

    .line 42
    :pswitch_3
    new-instance v2, Lcom/alibaba/fastjson2/schema/NumberSchema;

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson2/schema/NumberSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    goto :goto_2

    .line 39
    :pswitch_4
    new-instance v2, Lcom/alibaba/fastjson2/schema/IntegerSchema;

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson2/schema/IntegerSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    goto :goto_2

    .line 36
    :pswitch_5
    new-instance v2, Lcom/alibaba/fastjson2/schema/StringSchema;

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson2/schema/StringSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    goto :goto_2

    :cond_2
    :goto_1
    move-object v2, v1

    :goto_2
    if-nez v2, :cond_3

    .line 58
    invoke-static {v3, p2}, Lcom/alibaba/fastjson2/schema/JSONSchema;->of(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)Lcom/alibaba/fastjson2/schema/JSONSchema;

    move-result-object v2

    .line 62
    :cond_3
    :goto_3
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/schema/JSONSchema;->getType()Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    move-result-object v3

    .line 63
    iget-object v4, p0, Lcom/alibaba/fastjson2/schema/AllOf;->items:[Lcom/alibaba/fastjson2/schema/JSONSchema;

    aput-object v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    move-object v2, v3

    goto :goto_0

    :cond_4
    return-void

    .line 20
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "allOf not found"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>([Lcom/alibaba/fastjson2/schema/JSONSchema;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0, v0}, Lcom/alibaba/fastjson2/schema/JSONSchema;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/alibaba/fastjson2/schema/AllOf;->items:[Lcom/alibaba/fastjson2/schema/JSONSchema;

    return-void
.end method


# virtual methods
.method public getType()Lcom/alibaba/fastjson2/schema/JSONSchema$Type;
    .locals 1

    .line 69
    sget-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->AllOf:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    return-object v0
.end method

.method public validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;
    .locals 5

    .line 74
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/AllOf;->items:[Lcom/alibaba/fastjson2/schema/JSONSchema;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 75
    invoke-virtual {v3, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object v3

    .line 76
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_1
    sget-object p1, Lcom/alibaba/fastjson2/schema/AllOf;->SUCCESS:Lcom/alibaba/fastjson2/schema/ValidateResult;

    return-object p1
.end method
