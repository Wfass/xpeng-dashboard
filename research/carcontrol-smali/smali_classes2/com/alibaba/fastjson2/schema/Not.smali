.class final Lcom/alibaba/fastjson2/schema/Not;
.super Lcom/alibaba/fastjson2/schema/JSONSchema;
.source "Not.java"


# instance fields
.field final result:Ljava/lang/Boolean;

.field final schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

.field final types:[Lcom/alibaba/fastjson2/schema/JSONSchema$Type;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/schema/JSONSchema;[Lcom/alibaba/fastjson2/schema/JSONSchema$Type;Ljava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, v0, v0}, Lcom/alibaba/fastjson2/schema/JSONSchema;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/alibaba/fastjson2/schema/Not;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    .line 20
    iput-object p2, p0, Lcom/alibaba/fastjson2/schema/Not;->types:[Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    .line 21
    iput-object p3, p0, Lcom/alibaba/fastjson2/schema/Not;->result:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getType()Lcom/alibaba/fastjson2/schema/JSONSchema$Type;
    .locals 1

    .line 26
    sget-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->AllOf:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    return-object v0
.end method

.method public validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;
    .locals 5

    .line 31
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/Not;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    sget-object p1, Lcom/alibaba/fastjson2/schema/Not;->FAIL_NOT:Lcom/alibaba/fastjson2/schema/ValidateResult;

    return-object p1

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/Not;->types:[Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    if-eqz v0, :cond_5

    .line 38
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 39
    sget-object v4, Lcom/alibaba/fastjson2/schema/Not$1;->$SwitchMap$com$alibaba$fastjson2$schema$JSONSchema$Type:[I

    invoke-virtual {v3}, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 86
    :pswitch_0
    sget-object p1, Lcom/alibaba/fastjson2/schema/Not;->FAIL_NOT:Lcom/alibaba/fastjson2/schema/ValidateResult;

    return-object p1

    .line 81
    :pswitch_1
    instance-of v3, p1, Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    .line 82
    sget-object p1, Lcom/alibaba/fastjson2/schema/Not;->FAIL_NOT:Lcom/alibaba/fastjson2/schema/ValidateResult;

    return-object p1

    .line 73
    :pswitch_2
    instance-of v3, p1, Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 74
    sget-object p1, Lcom/alibaba/fastjson2/schema/Not;->FAIL_NOT:Lcom/alibaba/fastjson2/schema/ValidateResult;

    return-object p1

    :cond_1
    if-eqz p1, :cond_4

    .line 76
    sget-object v3, Lcom/alibaba/fastjson2/schema/JSONSchema;->CONTEXT:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v3

    instance-of v3, v3, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;

    if-eqz v3, :cond_4

    .line 77
    sget-object p1, Lcom/alibaba/fastjson2/schema/Not;->FAIL_NOT:Lcom/alibaba/fastjson2/schema/ValidateResult;

    return-object p1

    .line 68
    :pswitch_3
    instance-of v3, p1, [Ljava/lang/Object;

    if-nez v3, :cond_2

    instance-of v3, p1, Ljava/util/Collection;

    if-nez v3, :cond_2

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 69
    :cond_2
    sget-object p1, Lcom/alibaba/fastjson2/schema/Not;->FAIL_NOT:Lcom/alibaba/fastjson2/schema/ValidateResult;

    return-object p1

    :pswitch_4
    if-nez p1, :cond_4

    .line 64
    sget-object p1, Lcom/alibaba/fastjson2/schema/Not;->FAIL_NOT:Lcom/alibaba/fastjson2/schema/ValidateResult;

    return-object p1

    .line 58
    :pswitch_5
    instance-of v3, p1, Ljava/lang/Number;

    if-eqz v3, :cond_4

    .line 59
    sget-object p1, Lcom/alibaba/fastjson2/schema/Not;->FAIL_NOT:Lcom/alibaba/fastjson2/schema/ValidateResult;

    return-object p1

    .line 46
    :pswitch_6
    instance-of v3, p1, Ljava/lang/Byte;

    if-nez v3, :cond_3

    instance-of v3, p1, Ljava/lang/Short;

    if-nez v3, :cond_3

    instance-of v3, p1, Ljava/lang/Integer;

    if-nez v3, :cond_3

    instance-of v3, p1, Ljava/lang/Long;

    if-nez v3, :cond_3

    instance-of v3, p1, Ljava/math/BigInteger;

    if-nez v3, :cond_3

    instance-of v3, p1, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v3, :cond_3

    instance-of v3, p1, Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v3, :cond_4

    .line 54
    :cond_3
    sget-object p1, Lcom/alibaba/fastjson2/schema/Not;->FAIL_NOT:Lcom/alibaba/fastjson2/schema/ValidateResult;

    return-object p1

    .line 41
    :pswitch_7
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 42
    sget-object p1, Lcom/alibaba/fastjson2/schema/Not;->FAIL_NOT:Lcom/alibaba/fastjson2/schema/ValidateResult;

    return-object p1

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 93
    :cond_5
    iget-object p1, p0, Lcom/alibaba/fastjson2/schema/Not;->result:Ljava/lang/Boolean;

    if-eqz p1, :cond_7

    .line 94
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/alibaba/fastjson2/schema/Not;->FAIL_NOT:Lcom/alibaba/fastjson2/schema/ValidateResult;

    goto :goto_2

    :cond_6
    sget-object p1, Lcom/alibaba/fastjson2/schema/Not;->SUCCESS:Lcom/alibaba/fastjson2/schema/ValidateResult;

    :goto_2
    return-object p1

    .line 97
    :cond_7
    sget-object p1, Lcom/alibaba/fastjson2/schema/Not;->SUCCESS:Lcom/alibaba/fastjson2/schema/ValidateResult;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
