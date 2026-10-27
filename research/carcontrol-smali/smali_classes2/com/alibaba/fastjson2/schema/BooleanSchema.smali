.class public final Lcom/alibaba/fastjson2/schema/BooleanSchema;
.super Lcom/alibaba/fastjson2/schema/JSONSchema;
.source "BooleanSchema.java"


# direct methods
.method constructor <init>(Lcom/alibaba/fastjson2/JSONObject;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    return-void
.end method


# virtual methods
.method public getType()Lcom/alibaba/fastjson2/schema/JSONSchema$Type;
    .locals 1

    .line 13
    sget-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->Boolean:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    return-object v0
.end method

.method public toJSONObject()Lcom/alibaba/fastjson2/JSONObject;
    .locals 2

    const-string/jumbo v0, "type"

    const-string v1, "boolean"

    .line 31
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/JSONObject;->of(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;
    .locals 4

    if-nez p1, :cond_0

    .line 19
    sget-object p1, Lcom/alibaba/fastjson2/schema/BooleanSchema;->FAIL_INPUT_NULL:Lcom/alibaba/fastjson2/schema/ValidateResult;

    return-object p1

    .line 22
    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 23
    sget-object p1, Lcom/alibaba/fastjson2/schema/BooleanSchema;->SUCCESS:Lcom/alibaba/fastjson2/schema/ValidateResult;

    return-object p1

    .line 26
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/schema/ValidateResult;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->Boolean:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "expect type %s, but %s"

    invoke-direct {v0, v3, p1, v1}, Lcom/alibaba/fastjson2/schema/ValidateResult;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method
