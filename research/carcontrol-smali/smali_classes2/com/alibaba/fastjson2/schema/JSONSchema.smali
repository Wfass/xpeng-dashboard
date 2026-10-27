.class public abstract Lcom/alibaba/fastjson2/schema/JSONSchema;
.super Ljava/lang/Object;
.source "JSONSchema.java"


# annotations
.annotation runtime Lcom/alibaba/fastjson2/annotation/JSONType;
    serializer = Lcom/alibaba/fastjson2/schema/JSONSchema$JSONSchemaWriter;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/schema/JSONSchema$Type;,
        Lcom/alibaba/fastjson2/schema/JSONSchema$JSONSchemaWriter;
    }
.end annotation


# static fields
.field static final CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/schema/JSONSchema;",
            ">;"
        }
    .end annotation
.end field

.field static final CONTAINS_NOT_MATCH:Lcom/alibaba/fastjson2/schema/ValidateResult;

.field static final CONTEXT:Lcom/alibaba/fastjson2/JSONReader$Context;

.field static final FAIL_ANY_OF:Lcom/alibaba/fastjson2/schema/ValidateResult;

.field static final FAIL_INPUT_NULL:Lcom/alibaba/fastjson2/schema/ValidateResult;

.field static final FAIL_NOT:Lcom/alibaba/fastjson2/schema/ValidateResult;

.field static final FAIL_ONE_OF:Lcom/alibaba/fastjson2/schema/ValidateResult;

.field static final FAIL_PROPERTY_NAME:Lcom/alibaba/fastjson2/schema/ValidateResult;

.field static final FAIL_TYPE_NOT_MATCH:Lcom/alibaba/fastjson2/schema/ValidateResult;

.field static final REQUIRED_NOT_MATCH:Lcom/alibaba/fastjson2/schema/ValidateResult;

.field static final SUCCESS:Lcom/alibaba/fastjson2/schema/ValidateResult;

.field static final UNIQUE_ITEMS_NOT_MATCH:Lcom/alibaba/fastjson2/schema/ValidateResult;


# instance fields
.field final description:Ljava/lang/String;

.field final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema;->CACHE:Ljava/util/Map;

    .line 35
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema;->CONTEXT:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 908
    new-instance v0, Lcom/alibaba/fastjson2/schema/ValidateResult;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    const-string/jumbo v4, "success"

    invoke-direct {v0, v3, v4, v2}, Lcom/alibaba/fastjson2/schema/ValidateResult;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema;->SUCCESS:Lcom/alibaba/fastjson2/schema/ValidateResult;

    .line 909
    new-instance v0, Lcom/alibaba/fastjson2/schema/ValidateResult;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "input null"

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/fastjson2/schema/ValidateResult;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema;->FAIL_INPUT_NULL:Lcom/alibaba/fastjson2/schema/ValidateResult;

    .line 910
    new-instance v0, Lcom/alibaba/fastjson2/schema/ValidateResult;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "anyOf fail"

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/fastjson2/schema/ValidateResult;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema;->FAIL_ANY_OF:Lcom/alibaba/fastjson2/schema/ValidateResult;

    .line 911
    new-instance v0, Lcom/alibaba/fastjson2/schema/ValidateResult;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "oneOf fail"

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/fastjson2/schema/ValidateResult;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema;->FAIL_ONE_OF:Lcom/alibaba/fastjson2/schema/ValidateResult;

    .line 912
    new-instance v0, Lcom/alibaba/fastjson2/schema/ValidateResult;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "not fail"

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/fastjson2/schema/ValidateResult;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema;->FAIL_NOT:Lcom/alibaba/fastjson2/schema/ValidateResult;

    .line 913
    new-instance v0, Lcom/alibaba/fastjson2/schema/ValidateResult;

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "type not match"

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/fastjson2/schema/ValidateResult;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema;->FAIL_TYPE_NOT_MATCH:Lcom/alibaba/fastjson2/schema/ValidateResult;

    .line 914
    new-instance v0, Lcom/alibaba/fastjson2/schema/ValidateResult;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "propertyName not match"

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/fastjson2/schema/ValidateResult;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema;->FAIL_PROPERTY_NAME:Lcom/alibaba/fastjson2/schema/ValidateResult;

    .line 916
    new-instance v0, Lcom/alibaba/fastjson2/schema/ValidateResult;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "contains not match"

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/fastjson2/schema/ValidateResult;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema;->CONTAINS_NOT_MATCH:Lcom/alibaba/fastjson2/schema/ValidateResult;

    .line 917
    new-instance v0, Lcom/alibaba/fastjson2/schema/ValidateResult;

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "uniqueItems not match"

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/fastjson2/schema/ValidateResult;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema;->UNIQUE_ITEMS_NOT_MATCH:Lcom/alibaba/fastjson2/schema/ValidateResult;

    .line 918
    new-instance v0, Lcom/alibaba/fastjson2/schema/ValidateResult;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "required"

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/fastjson2/schema/ValidateResult;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema;->REQUIRED_NOT_MATCH:Lcom/alibaba/fastjson2/schema/ValidateResult;

    return-void
.end method

.method constructor <init>(Lcom/alibaba/fastjson2/JSONObject;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "title"

    .line 38
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/schema/JSONSchema;->title:Ljava/lang/String;

    const-string v0, "description"

    .line 39
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/schema/JSONSchema;->description:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/alibaba/fastjson2/schema/JSONSchema;->title:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/alibaba/fastjson2/schema/JSONSchema;->description:Ljava/lang/String;

    return-void
.end method

.method static allOf(Lcom/alibaba/fastjson2/JSONObject;Ljava/lang/Class;)Lcom/alibaba/fastjson2/schema/AllOf;
    .locals 4

    const-string v0, "allOf"

    .line 659
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 660
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 664
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONArray;->size()I

    move-result v0

    new-array v1, v0, [Lcom/alibaba/fastjson2/schema/JSONSchema;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 666
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->of(Lcom/alibaba/fastjson2/JSONObject;Ljava/lang/Class;)Lcom/alibaba/fastjson2/schema/JSONSchema;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 668
    :cond_1
    new-instance p0, Lcom/alibaba/fastjson2/schema/AllOf;

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/schema/AllOf;-><init>([Lcom/alibaba/fastjson2/schema/JSONSchema;)V

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static anyOf(Lcom/alibaba/fastjson2/JSONArray;Ljava/lang/Class;)Lcom/alibaba/fastjson2/schema/AnyOf;
    .locals 4

    if-eqz p0, :cond_2

    .line 647
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 650
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONArray;->size()I

    move-result v0

    new-array v1, v0, [Lcom/alibaba/fastjson2/schema/JSONSchema;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 652
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->of(Lcom/alibaba/fastjson2/JSONObject;Ljava/lang/Class;)Lcom/alibaba/fastjson2/schema/JSONSchema;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 655
    :cond_1
    new-instance p0, Lcom/alibaba/fastjson2/schema/AnyOf;

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/schema/AnyOf;-><init>([Lcom/alibaba/fastjson2/schema/JSONSchema;)V

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static anyOf(Lcom/alibaba/fastjson2/JSONObject;Ljava/lang/Class;)Lcom/alibaba/fastjson2/schema/AnyOf;
    .locals 4

    const-string v0, "anyOf"

    .line 634
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 635
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 638
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONArray;->size()I

    move-result v0

    new-array v1, v0, [Lcom/alibaba/fastjson2/schema/JSONSchema;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 640
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->of(Lcom/alibaba/fastjson2/JSONObject;Ljava/lang/Class;)Lcom/alibaba/fastjson2/schema/JSONSchema;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 643
    :cond_1
    new-instance p0, Lcom/alibaba/fastjson2/schema/AnyOf;

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/schema/AnyOf;-><init>([Lcom/alibaba/fastjson2/schema/JSONSchema;)V

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$of$0(Lcom/alibaba/fastjson2/JSONArray;Lcom/alibaba/fastjson2/reader/FieldReader;)V
    .locals 1

    .line 354
    iget-object v0, p1, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object p1, p1, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$of$1(Lcom/alibaba/fastjson2/schema/ObjectSchema;Lcom/alibaba/fastjson2/schema/JSONSchema;Lcom/alibaba/fastjson2/reader/FieldReader;)V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->properties:Ljava/util/Map;

    iget-object v1, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    iget-object p2, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    .line 364
    :goto_0
    invoke-static {p2, p0}, Lcom/alibaba/fastjson2/schema/JSONSchema;->of(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/schema/JSONSchema;)Lcom/alibaba/fastjson2/schema/JSONSchema;

    move-result-object p0

    .line 362
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static of(Lcom/alibaba/fastjson2/JSONObject;)Lcom/alibaba/fastjson2/schema/JSONSchema;
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONCreator;
    .end annotation

    const/4 v0, 0x0

    .line 174
    check-cast v0, Lcom/alibaba/fastjson2/schema/JSONSchema;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/schema/JSONSchema;->of(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)Lcom/alibaba/fastjson2/schema/JSONSchema;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)Lcom/alibaba/fastjson2/schema/JSONSchema;
    .locals 12
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONCreator;
    .end annotation

    const-string/jumbo v0, "type"

    .line 377
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 376
    invoke-static {v1}, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    move-result-object v1

    const-string v2, "not support type : "

    if-nez v1, :cond_2a

    .line 381
    const-class v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v4, v3, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    const-string v5, "enum"

    invoke-virtual {p0, v5, v1, v4}, Lcom/alibaba/fastjson2/JSONObject;->getObject(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 384
    array-length p1, v1

    move v0, v3

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v2, v1, v0

    .line 385
    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v3, :cond_2

    .line 391
    new-instance p1, Lcom/alibaba/fastjson2/schema/StringSchema;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/schema/StringSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    return-object p1

    .line 394
    :cond_2
    new-instance p0, Lcom/alibaba/fastjson2/schema/EnumSchema;

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/schema/EnumSchema;-><init>([Ljava/lang/Object;)V

    return-object p0

    :cond_3
    const-string v1, "const"

    .line 397
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 398
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 399
    new-instance p1, Lcom/alibaba/fastjson2/schema/StringSchema;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/schema/StringSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    return-object p1

    .line 400
    :cond_4
    instance-of v5, v1, Ljava/lang/Integer;

    if-nez v5, :cond_29

    instance-of v1, v1, Ljava/lang/Long;

    if-eqz v1, :cond_5

    goto/16 :goto_b

    .line 404
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONObject;->size()I

    move-result v1

    const-string v5, "$ref"

    const/4 v6, 0x0

    if-ne v1, v4, :cond_13

    .line 405
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 406
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_f

    const-string v7, "http://json-schema.org/draft-04/schema#"

    .line 407
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 408
    sget-object p0, Lcom/alibaba/fastjson2/schema/JSONSchema;->CACHE:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-nez p1, :cond_6

    .line 410
    const-class p1, Lcom/alibaba/fastjson2/schema/JSONSchema;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string/jumbo v0, "schema/draft-04.json"

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    .line 412
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSON;->parseObject(Ljava/net/URL;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object p1

    check-cast v6, Lcom/alibaba/fastjson2/schema/JSONSchema;

    .line 411
    invoke-static {p1, v6}, Lcom/alibaba/fastjson2/schema/JSONSchema;->of(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)Lcom/alibaba/fastjson2/schema/JSONSchema;

    move-result-object p1

    .line 415
    invoke-interface {p0, v1, p1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz p0, :cond_6

    move-object p1, p0

    :cond_6
    return-object p1

    :cond_7
    const-string v7, "#"

    .line 423
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    return-object p1

    .line 428
    :cond_8
    instance-of v7, p1, Lcom/alibaba/fastjson2/schema/ObjectSchema;

    if-eqz v7, :cond_9

    .line 429
    move-object v7, p1

    check-cast v7, Lcom/alibaba/fastjson2/schema/ObjectSchema;

    .line 431
    iget-object v8, v7, Lcom/alibaba/fastjson2/schema/ObjectSchema;->definitions:Ljava/util/Map;

    .line 432
    iget-object v9, v7, Lcom/alibaba/fastjson2/schema/ObjectSchema;->defs:Ljava/util/Map;

    .line 433
    iget-object v7, v7, Lcom/alibaba/fastjson2/schema/ObjectSchema;->properties:Ljava/util/Map;

    goto :goto_2

    .line 434
    :cond_9
    instance-of v7, p1, Lcom/alibaba/fastjson2/schema/ArraySchema;

    if-eqz v7, :cond_a

    .line 435
    move-object v7, p1

    check-cast v7, Lcom/alibaba/fastjson2/schema/ArraySchema;

    iget-object v8, v7, Lcom/alibaba/fastjson2/schema/ArraySchema;->definitions:Ljava/util/Map;

    .line 436
    iget-object v9, v7, Lcom/alibaba/fastjson2/schema/ArraySchema;->defs:Ljava/util/Map;

    move-object v7, v6

    goto :goto_2

    :cond_a
    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    :goto_2
    const/16 v10, 0xe

    if-eqz v8, :cond_b

    const-string v11, "#/definitions/"

    .line 440
    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 442
    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 443
    invoke-interface {v8, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson2/schema/JSONSchema;

    return-object p0

    :cond_b
    if-eqz v9, :cond_d

    const-string v8, "#/$defs/"

    .line 448
    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    const/16 p0, 0x8

    .line 450
    invoke-virtual {v1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 451
    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 452
    invoke-interface {v9, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-nez p1, :cond_c

    .line 454
    new-instance p1, Lcom/alibaba/fastjson2/schema/UnresolvedReference;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/schema/UnresolvedReference;-><init>(Ljava/lang/String;)V

    :cond_c
    return-object p1

    :cond_d
    if-eqz v7, :cond_e

    const-string v8, "#/properties/"

    .line 461
    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    const/16 p0, 0xd

    .line 463
    invoke-virtual {v1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 464
    invoke-interface {v7, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson2/schema/JSONSchema;

    return-object p0

    :cond_e
    const-string v7, "#/prefixItems/"

    .line 468
    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    instance-of v7, p1, Lcom/alibaba/fastjson2/schema/ArraySchema;

    if-eqz v7, :cond_f

    .line 470
    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 471
    check-cast p1, Lcom/alibaba/fastjson2/schema/ArraySchema;

    iget-object p1, p1, Lcom/alibaba/fastjson2/schema/ArraySchema;->prefixItems:[Lcom/alibaba/fastjson2/schema/JSONSchema;

    aget-object p0, p1, p0

    return-object p0

    :cond_f
    const-string v1, "exclusiveMaximum"

    .line 475
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v7, "exclusiveMinimum"

    .line 476
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 477
    instance-of v8, v1, Ljava/lang/Integer;

    if-nez v8, :cond_12

    instance-of v8, v7, Ljava/lang/Integer;

    if-nez v8, :cond_12

    instance-of v8, v1, Ljava/lang/Long;

    if-nez v8, :cond_12

    instance-of v8, v7, Ljava/lang/Long;

    if-eqz v8, :cond_10

    goto :goto_3

    .line 484
    :cond_10
    instance-of v1, v1, Ljava/lang/Number;

    if-nez v1, :cond_11

    instance-of v1, v7, Ljava/lang/Number;

    if-eqz v1, :cond_13

    .line 485
    :cond_11
    new-instance p1, Lcom/alibaba/fastjson2/schema/NumberSchema;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/schema/NumberSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    return-object p1

    .line 481
    :cond_12
    :goto_3
    new-instance p1, Lcom/alibaba/fastjson2/schema/IntegerSchema;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/schema/IntegerSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    return-object p1

    :cond_13
    const-string v1, "properties"

    .line 489
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "dependentSchemas"

    .line 490
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "if"

    .line 491
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "required"

    .line 492
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "patternProperties"

    .line 493
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "additionalProperties"

    .line 494
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "minProperties"

    .line 495
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "maxProperties"

    .line 496
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "propertyNames"

    .line 497
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 498
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto/16 :goto_a

    :cond_14
    const-string v1, "maxItems"

    .line 503
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "minItems"

    .line 504
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "additionalItems"

    .line 505
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "items"

    .line 506
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "prefixItems"

    .line 507
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string/jumbo v1, "uniqueItems"

    .line 508
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "maxContains"

    .line 509
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "minContains"

    .line 510
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto/16 :goto_9

    :cond_15
    const-string v1, "pattern"

    .line 515
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "format"

    .line 516
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "minLength"

    .line 517
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "maxLength"

    .line 518
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto/16 :goto_8

    :cond_16
    const-string v1, "allOf"

    .line 523
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v5, "anyOf"

    .line 524
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v5

    const-string v7, "oneOf"

    .line 525
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v1, :cond_1f

    if-nez v5, :cond_1f

    if-eqz v7, :cond_17

    goto/16 :goto_7

    :cond_17
    const-string p1, "not"

    .line 554
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 555
    invoke-static {p0, v6}, Lcom/alibaba/fastjson2/schema/JSONSchema;->ofNot(Lcom/alibaba/fastjson2/JSONObject;Ljava/lang/Class;)Lcom/alibaba/fastjson2/schema/Not;

    move-result-object p0

    return-object p0

    :cond_18
    const-string p1, "maximum"

    .line 558
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/Number;

    if-nez p1, :cond_1e

    const-string p1, "minimum"

    .line 559
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/Number;

    if-nez p1, :cond_1e

    const-string p1, "multipleOf"

    .line 560
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    goto/16 :goto_6

    .line 565
    :cond_19
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONObject;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 566
    sget-object p0, Lcom/alibaba/fastjson2/schema/Any;->INSTANCE:Lcom/alibaba/fastjson2/schema/Any;

    return-object p0

    .line 569
    :cond_1a
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONObject;->size()I

    move-result p1

    if-ne p1, v4, :cond_1c

    .line 570
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 571
    instance-of v1, p1, Lcom/alibaba/fastjson2/JSONArray;

    if-eqz v1, :cond_1c

    .line 572
    check-cast p1, Lcom/alibaba/fastjson2/JSONArray;

    .line 573
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONArray;->size()I

    move-result p0

    new-array p0, p0, [Lcom/alibaba/fastjson2/schema/JSONSchema;

    .line 574
    :goto_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONArray;->size()I

    move-result v1

    if-ge v3, v1, :cond_1b

    .line 575
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    move-result-object v1

    .line 576
    sget-object v4, Lcom/alibaba/fastjson2/schema/JSONSchema$1;->$SwitchMap$com$alibaba$fastjson2$schema$JSONSchema$Type:[I

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 599
    new-instance p0, Lcom/alibaba/fastjson2/JSONSchemaValidException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONSchemaValidException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 596
    :pswitch_0
    new-instance v1, Lcom/alibaba/fastjson2/schema/ArraySchema;

    const-string v4, "array"

    invoke-static {v0, v4}, Lcom/alibaba/fastjson2/JSONObject;->of(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v4

    invoke-direct {v1, v4, v6}, Lcom/alibaba/fastjson2/schema/ArraySchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)V

    aput-object v1, p0, v3

    goto :goto_5

    .line 593
    :pswitch_1
    new-instance v1, Lcom/alibaba/fastjson2/schema/ObjectSchema;

    const-string v4, "object"

    invoke-static {v0, v4}, Lcom/alibaba/fastjson2/JSONObject;->of(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/alibaba/fastjson2/schema/ObjectSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    aput-object v1, p0, v3

    goto :goto_5

    .line 590
    :pswitch_2
    new-instance v1, Lcom/alibaba/fastjson2/schema/NullSchema;

    const-string v4, "null"

    invoke-static {v0, v4}, Lcom/alibaba/fastjson2/JSONObject;->of(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/alibaba/fastjson2/schema/NullSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    aput-object v1, p0, v3

    goto :goto_5

    .line 587
    :pswitch_3
    new-instance v1, Lcom/alibaba/fastjson2/schema/BooleanSchema;

    const-string v4, "boolean"

    invoke-static {v0, v4}, Lcom/alibaba/fastjson2/JSONObject;->of(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/alibaba/fastjson2/schema/BooleanSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    aput-object v1, p0, v3

    goto :goto_5

    .line 584
    :pswitch_4
    new-instance v1, Lcom/alibaba/fastjson2/schema/NumberSchema;

    const-string v4, "number"

    invoke-static {v0, v4}, Lcom/alibaba/fastjson2/JSONObject;->of(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/alibaba/fastjson2/schema/NumberSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    aput-object v1, p0, v3

    goto :goto_5

    .line 581
    :pswitch_5
    new-instance v1, Lcom/alibaba/fastjson2/schema/IntegerSchema;

    const-string v4, "integer"

    invoke-static {v0, v4}, Lcom/alibaba/fastjson2/JSONObject;->of(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/alibaba/fastjson2/schema/IntegerSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    aput-object v1, p0, v3

    goto :goto_5

    .line 578
    :pswitch_6
    new-instance v1, Lcom/alibaba/fastjson2/schema/StringSchema;

    const-string/jumbo v4, "string"

    invoke-static {v0, v4}, Lcom/alibaba/fastjson2/JSONObject;->of(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/alibaba/fastjson2/schema/StringSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    aput-object v1, p0, v3

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 602
    :cond_1b
    new-instance p1, Lcom/alibaba/fastjson2/schema/AnyOf;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/schema/AnyOf;-><init>([Lcom/alibaba/fastjson2/schema/JSONSchema;)V

    return-object p1

    .line 606
    :cond_1c
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1d

    .line 607
    new-instance p0, Lcom/alibaba/fastjson2/JSONSchemaValidException;

    const-string/jumbo p1, "type required"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONSchemaValidException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 609
    :cond_1d
    new-instance p1, Lcom/alibaba/fastjson2/JSONSchemaValidException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/JSONSchemaValidException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 562
    :cond_1e
    :goto_6
    new-instance p1, Lcom/alibaba/fastjson2/schema/NumberSchema;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/schema/NumberSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    return-object p1

    :cond_1f
    :goto_7
    add-int v0, v1, v5

    add-int/2addr v0, v7

    if-ne v0, v4, :cond_22

    if-eqz v1, :cond_20

    .line 531
    new-instance v0, Lcom/alibaba/fastjson2/schema/AllOf;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/schema/AllOf;-><init>(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)V

    return-object v0

    :cond_20
    if-eqz v5, :cond_21

    .line 535
    new-instance v0, Lcom/alibaba/fastjson2/schema/AnyOf;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/schema/AnyOf;-><init>(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)V

    return-object v0

    .line 538
    :cond_21
    new-instance v0, Lcom/alibaba/fastjson2/schema/OneOf;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/schema/OneOf;-><init>(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)V

    return-object v0

    .line 540
    :cond_22
    new-array v0, v0, [Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v1, :cond_23

    .line 543
    new-instance v1, Lcom/alibaba/fastjson2/schema/AllOf;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/fastjson2/schema/AllOf;-><init>(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)V

    aput-object v1, v0, v3

    move v3, v4

    :cond_23
    if-eqz v5, :cond_24

    add-int/lit8 v1, v3, 0x1

    .line 546
    new-instance v2, Lcom/alibaba/fastjson2/schema/AnyOf;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/fastjson2/schema/AnyOf;-><init>(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)V

    aput-object v2, v0, v3

    move v3, v1

    :cond_24
    if-eqz v7, :cond_25

    .line 549
    new-instance v1, Lcom/alibaba/fastjson2/schema/OneOf;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/fastjson2/schema/OneOf;-><init>(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)V

    aput-object v1, v0, v3

    .line 551
    :cond_25
    new-instance p0, Lcom/alibaba/fastjson2/schema/AllOf;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/schema/AllOf;-><init>([Lcom/alibaba/fastjson2/schema/JSONSchema;)V

    return-object p0

    .line 520
    :cond_26
    :goto_8
    new-instance p1, Lcom/alibaba/fastjson2/schema/StringSchema;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/schema/StringSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    return-object p1

    .line 512
    :cond_27
    :goto_9
    new-instance v0, Lcom/alibaba/fastjson2/schema/ArraySchema;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/schema/ArraySchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)V

    return-object v0

    .line 500
    :cond_28
    :goto_a
    new-instance v0, Lcom/alibaba/fastjson2/schema/ObjectSchema;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/schema/ObjectSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)V

    return-object v0

    .line 401
    :cond_29
    :goto_b
    new-instance p1, Lcom/alibaba/fastjson2/schema/IntegerSchema;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/schema/IntegerSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    return-object p1

    .line 613
    :cond_2a
    sget-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema$1;->$SwitchMap$com$alibaba$fastjson2$schema$JSONSchema$Type:[I

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_1

    .line 629
    new-instance p0, Lcom/alibaba/fastjson2/JSONSchemaValidException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONSchemaValidException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 627
    :pswitch_7
    new-instance v0, Lcom/alibaba/fastjson2/schema/ArraySchema;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/schema/ArraySchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)V

    return-object v0

    .line 625
    :pswitch_8
    new-instance v0, Lcom/alibaba/fastjson2/schema/ObjectSchema;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/schema/ObjectSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)V

    return-object v0

    .line 623
    :pswitch_9
    new-instance p1, Lcom/alibaba/fastjson2/schema/NullSchema;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/schema/NullSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    return-object p1

    .line 621
    :pswitch_a
    new-instance p1, Lcom/alibaba/fastjson2/schema/BooleanSchema;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/schema/BooleanSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    return-object p1

    .line 619
    :pswitch_b
    new-instance p1, Lcom/alibaba/fastjson2/schema/NumberSchema;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/schema/NumberSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    return-object p1

    .line 617
    :pswitch_c
    new-instance p1, Lcom/alibaba/fastjson2/schema/IntegerSchema;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/schema/IntegerSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    return-object p1

    .line 615
    :pswitch_d
    new-instance p1, Lcom/alibaba/fastjson2/schema/StringSchema;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/schema/StringSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public static of(Lcom/alibaba/fastjson2/JSONObject;Ljava/lang/Class;)Lcom/alibaba/fastjson2/schema/JSONSchema;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_14

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONObject;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    :cond_0
    if-eqz p1, :cond_13

    .line 55
    const-class v1, Ljava/lang/Object;

    if-ne p1, v1, :cond_1

    goto/16 :goto_5

    .line 59
    :cond_1
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v2, "not"

    const-string v3, "oneOf"

    const-string v4, "anyOf"

    const-string v5, "AnyOf"

    if-eq p1, v1, :cond_e

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_e

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_e

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_e

    const-class v1, Ljava/lang/Byte;

    if-eq p1, v1, :cond_e

    const-class v1, Ljava/lang/Short;

    if-eq p1, v1, :cond_e

    const-class v1, Ljava/lang/Integer;

    if-eq p1, v1, :cond_e

    const-class v1, Ljava/lang/Long;

    if-eq p1, v1, :cond_e

    const-class v1, Ljava/math/BigInteger;

    if-eq p1, v1, :cond_e

    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eq p1, v1, :cond_e

    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    if-ne p1, v1, :cond_2

    goto/16 :goto_3

    .line 86
    :cond_2
    const-class v1, Ljava/math/BigDecimal;

    if-eq p1, v1, :cond_9

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_9

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_9

    const-class v1, Ljava/lang/Float;

    if-eq p1, v1, :cond_9

    const-class v1, Ljava/lang/Double;

    if-eq p1, v1, :cond_9

    const-class v1, Ljava/lang/Number;

    if-ne p1, v1, :cond_3

    goto :goto_1

    .line 108
    :cond_3
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_8

    const-class v1, Ljava/lang/Boolean;

    if-ne p1, v1, :cond_4

    goto :goto_0

    .line 113
    :cond_4
    const-class v1, Ljava/lang/String;

    if-ne p1, v1, :cond_5

    .line 114
    new-instance p1, Lcom/alibaba/fastjson2/schema/StringSchema;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/schema/StringSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    return-object p1

    .line 117
    :cond_5
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 118
    new-instance p1, Lcom/alibaba/fastjson2/schema/ArraySchema;

    invoke-direct {p1, p0, v0}, Lcom/alibaba/fastjson2/schema/ArraySchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)V

    return-object p1

    .line 121
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 122
    new-instance p1, Lcom/alibaba/fastjson2/schema/ArraySchema;

    invoke-direct {p1, p0, v0}, Lcom/alibaba/fastjson2/schema/ArraySchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)V

    return-object p1

    .line 125
    :cond_7
    new-instance p1, Lcom/alibaba/fastjson2/schema/ObjectSchema;

    invoke-direct {p1, p0, v0}, Lcom/alibaba/fastjson2/schema/ObjectSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)V

    return-object p1

    .line 110
    :cond_8
    :goto_0
    new-instance p1, Lcom/alibaba/fastjson2/schema/BooleanSchema;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/schema/BooleanSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    return-object p1

    .line 93
    :cond_9
    :goto_1
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_2

    .line 97
    :cond_a
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 98
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->oneOf(Lcom/alibaba/fastjson2/JSONObject;Ljava/lang/Class;)Lcom/alibaba/fastjson2/schema/OneOf;

    move-result-object p0

    return-object p0

    .line 101
    :cond_b
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 102
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->ofNot(Lcom/alibaba/fastjson2/JSONObject;Ljava/lang/Class;)Lcom/alibaba/fastjson2/schema/Not;

    move-result-object p0

    return-object p0

    .line 105
    :cond_c
    new-instance p1, Lcom/alibaba/fastjson2/schema/NumberSchema;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/schema/NumberSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    return-object p1

    .line 94
    :cond_d
    :goto_2
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->anyOf(Lcom/alibaba/fastjson2/JSONObject;Ljava/lang/Class;)Lcom/alibaba/fastjson2/schema/AnyOf;

    move-result-object p0

    return-object p0

    .line 71
    :cond_e
    :goto_3
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_4

    .line 75
    :cond_f
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 76
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->oneOf(Lcom/alibaba/fastjson2/JSONObject;Ljava/lang/Class;)Lcom/alibaba/fastjson2/schema/OneOf;

    move-result-object p0

    return-object p0

    .line 79
    :cond_10
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 80
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->ofNot(Lcom/alibaba/fastjson2/JSONObject;Ljava/lang/Class;)Lcom/alibaba/fastjson2/schema/Not;

    move-result-object p0

    return-object p0

    .line 83
    :cond_11
    new-instance p1, Lcom/alibaba/fastjson2/schema/IntegerSchema;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/schema/IntegerSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    return-object p1

    .line 72
    :cond_12
    :goto_4
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->anyOf(Lcom/alibaba/fastjson2/JSONObject;Ljava/lang/Class;)Lcom/alibaba/fastjson2/schema/AnyOf;

    move-result-object p0

    return-object p0

    .line 56
    :cond_13
    :goto_5
    invoke-static {p0}, Lcom/alibaba/fastjson2/schema/JSONSchema;->of(Lcom/alibaba/fastjson2/JSONObject;)Lcom/alibaba/fastjson2/schema/JSONSchema;

    move-result-object p0

    return-object p0

    :cond_14
    :goto_6
    return-object v0
.end method

.method public static of(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/schema/JSONSchema;
    .locals 1

    const/4 v0, 0x0

    .line 178
    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/schema/JSONSchema;->of(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/schema/JSONSchema;)Lcom/alibaba/fastjson2/schema/JSONSchema;

    move-result-object p0

    return-object p0
.end method

.method static of(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/schema/JSONSchema;)Lcom/alibaba/fastjson2/schema/JSONSchema;
    .locals 9

    .line 254
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    const/4 v1, 0x0

    const-string v2, "object"

    const-string v3, "array"

    const-string/jumbo v4, "type"

    if-eqz v0, :cond_3

    .line 255
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 257
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 258
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 260
    instance-of v6, v5, Ljava/lang/Class;

    if-eqz v6, :cond_2

    const-class v7, Ljava/util/Collection;

    move-object v8, v5

    check-cast v8, Ljava/lang/Class;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 261
    invoke-static {v4, v3}, Lcom/alibaba/fastjson2/JSONObject;->of(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object p0

    .line 262
    new-instance v2, Lcom/alibaba/fastjson2/schema/ArraySchema;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/fastjson2/schema/ArraySchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)V

    .line 263
    array-length p0, v0

    const/4 v3, 0x1

    if-ne p0, v3, :cond_1

    .line 264
    aget-object p0, v0, v1

    if-nez p1, :cond_0

    move-object p1, v2

    :cond_0
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->of(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/schema/JSONSchema;)Lcom/alibaba/fastjson2/schema/JSONSchema;

    move-result-object p0

    iput-object p0, v2, Lcom/alibaba/fastjson2/schema/ArraySchema;->itemSchema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    :cond_1
    return-object v2

    :cond_2
    if-eqz v6, :cond_3

    .line 270
    const-class v0, Ljava/util/Map;

    check-cast v5, Ljava/lang/Class;

    .line 271
    invoke-virtual {v0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 273
    invoke-static {v4, v2}, Lcom/alibaba/fastjson2/JSONObject;->of(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object p0

    .line 274
    new-instance v0, Lcom/alibaba/fastjson2/schema/ObjectSchema;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/schema/ObjectSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)V

    return-object v0

    .line 278
    :cond_3
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_5

    .line 279
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 280
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 281
    invoke-static {v4, v3}, Lcom/alibaba/fastjson2/JSONObject;->of(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v0

    .line 282
    new-instance v1, Lcom/alibaba/fastjson2/schema/ArraySchema;

    invoke-direct {v1, v0, p1}, Lcom/alibaba/fastjson2/schema/ArraySchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)V

    if-nez p1, :cond_4

    move-object p1, v1

    .line 283
    :cond_4
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->of(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/schema/JSONSchema;)Lcom/alibaba/fastjson2/schema/JSONSchema;

    move-result-object p0

    iput-object p0, v1, Lcom/alibaba/fastjson2/schema/ArraySchema;->itemSchema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    return-object v1

    .line 287
    :cond_5
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_13

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_13

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_13

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_13

    const-class v0, Ljava/lang/Byte;

    if-eq p0, v0, :cond_13

    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_13

    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_13

    const-class v0, Ljava/lang/Long;

    if-eq p0, v0, :cond_13

    const-class v0, Ljava/math/BigInteger;

    if-eq p0, v0, :cond_13

    const-class v0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eq p0, v0, :cond_13

    const-class v0, Ljava/util/concurrent/atomic/AtomicLong;

    if-ne p0, v0, :cond_6

    goto/16 :goto_3

    .line 302
    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_12

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_12

    const-class v0, Ljava/lang/Float;

    if-eq p0, v0, :cond_12

    const-class v0, Ljava/lang/Double;

    if-eq p0, v0, :cond_12

    const-class v0, Ljava/math/BigDecimal;

    if-ne p0, v0, :cond_7

    goto/16 :goto_2

    .line 311
    :cond_7
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_11

    const-class v0, Ljava/lang/Boolean;

    if-eq p0, v0, :cond_11

    const-class v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ne p0, v0, :cond_8

    goto/16 :goto_1

    .line 315
    :cond_8
    const-class v0, Ljava/lang/String;

    const-string/jumbo v5, "string"

    if-ne p0, v0, :cond_9

    .line 316
    new-instance p0, Lcom/alibaba/fastjson2/schema/StringSchema;

    invoke-static {v4, v5}, Lcom/alibaba/fastjson2/JSONObject;->of(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/schema/StringSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    return-object p0

    .line 319
    :cond_9
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_f

    .line 320
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    .line 321
    const-class v6, Ljava/lang/Enum;

    invoke-virtual {v6, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 322
    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p0

    .line 323
    array-length p1, p0

    new-array p1, p1, [Ljava/lang/String;

    .line 324
    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_a

    .line 325
    aget-object v0, p0, v1

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 327
    :cond_a
    new-instance p0, Lcom/alibaba/fastjson2/schema/StringSchema;

    const-string v0, "enum"

    invoke-static {v4, v5, v0, p1}, Lcom/alibaba/fastjson2/JSONObject;->of(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/schema/StringSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    return-object p0

    .line 330
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 331
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    .line 332
    invoke-static {v4, v3}, Lcom/alibaba/fastjson2/JSONObject;->of(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v0

    .line 333
    new-instance v1, Lcom/alibaba/fastjson2/schema/ArraySchema;

    invoke-direct {v1, v0, p1}, Lcom/alibaba/fastjson2/schema/ArraySchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)V

    if-nez p1, :cond_c

    move-object p1, v1

    .line 334
    :cond_c
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->of(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/schema/JSONSchema;)Lcom/alibaba/fastjson2/schema/JSONSchema;

    move-result-object p0

    iput-object p0, v1, Lcom/alibaba/fastjson2/schema/ArraySchema;->itemSchema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    return-object v1

    .line 338
    :cond_d
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 339
    new-instance p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;

    invoke-static {v4, v2}, Lcom/alibaba/fastjson2/JSONObject;->of(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson2/schema/ObjectSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)V

    return-object p0

    .line 342
    :cond_e
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 343
    new-instance p0, Lcom/alibaba/fastjson2/schema/ArraySchema;

    invoke-static {v4, v3}, Lcom/alibaba/fastjson2/JSONObject;->of(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson2/schema/ArraySchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)V

    return-object p0

    .line 347
    :cond_f
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    .line 349
    instance-of v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;

    if-eqz v1, :cond_10

    .line 350
    check-cast v0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;

    .line 352
    new-instance p0, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 353
    new-instance v1, Lcom/alibaba/fastjson2/schema/-$$Lambda$JSONSchema$yOhPLoLNwzG16pgpPUgc_cwE4cw;

    invoke-direct {v1, p0}, Lcom/alibaba/fastjson2/schema/-$$Lambda$JSONSchema$yOhPLoLNwzG16pgpPUgc_cwE4cw;-><init>(Lcom/alibaba/fastjson2/JSONArray;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->apply(Ljava/util/function/Consumer;)V

    const-string v1, "required"

    .line 359
    invoke-static {v4, v2, v1, p0}, Lcom/alibaba/fastjson2/JSONObject;->of(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object p0

    .line 360
    new-instance v1, Lcom/alibaba/fastjson2/schema/ObjectSchema;

    invoke-direct {v1, p0}, Lcom/alibaba/fastjson2/schema/ObjectSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    .line 361
    new-instance p0, Lcom/alibaba/fastjson2/schema/-$$Lambda$JSONSchema$xCAP_U5eGLILOu2mXbh8peXnvvg;

    invoke-direct {p0, v1, p1}, Lcom/alibaba/fastjson2/schema/-$$Lambda$JSONSchema$xCAP_U5eGLILOu2mXbh8peXnvvg;-><init>(Lcom/alibaba/fastjson2/schema/ObjectSchema;Lcom/alibaba/fastjson2/schema/JSONSchema;)V

    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->apply(Ljava/util/function/Consumer;)V

    return-object v1

    .line 371
    :cond_10
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TODO : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 312
    :cond_11
    :goto_1
    new-instance p0, Lcom/alibaba/fastjson2/schema/BooleanSchema;

    const-string p1, "boolean"

    invoke-static {v4, p1}, Lcom/alibaba/fastjson2/JSONObject;->of(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/schema/BooleanSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    return-object p0

    .line 308
    :cond_12
    :goto_2
    new-instance p0, Lcom/alibaba/fastjson2/schema/NumberSchema;

    const-string p1, "number"

    invoke-static {v4, p1}, Lcom/alibaba/fastjson2/JSONObject;->of(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/schema/NumberSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    return-object p0

    .line 299
    :cond_13
    :goto_3
    new-instance p0, Lcom/alibaba/fastjson2/schema/IntegerSchema;

    const-string p1, "integer"

    invoke-static {v4, p1}, Lcom/alibaba/fastjson2/JSONObject;->of(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/schema/IntegerSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    return-object p0
.end method

.method static ofNot(Lcom/alibaba/fastjson2/JSONObject;Ljava/lang/Class;)Lcom/alibaba/fastjson2/schema/Not;
    .locals 5

    const-string v0, "not"

    .line 129
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 130
    instance-of v0, p0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 131
    new-instance p1, Lcom/alibaba/fastjson2/schema/Not;

    check-cast p0, Ljava/lang/Boolean;

    invoke-direct {p1, v1, v1, p0}, Lcom/alibaba/fastjson2/schema/Not;-><init>(Lcom/alibaba/fastjson2/schema/JSONSchema;[Lcom/alibaba/fastjson2/schema/JSONSchema$Type;Ljava/lang/Boolean;)V

    return-object p1

    .line 134
    :cond_0
    check-cast p0, Lcom/alibaba/fastjson2/JSONObject;

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_4

    .line 136
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONObject;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONObject;->size()I

    move-result v3

    if-ne v3, v2, :cond_3

    const-string/jumbo v2, "type"

    .line 141
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 142
    instance-of v3, v2, Lcom/alibaba/fastjson2/JSONArray;

    if-eqz v3, :cond_3

    .line 143
    check-cast v2, Lcom/alibaba/fastjson2/JSONArray;

    .line 144
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONArray;->size()I

    move-result p0

    new-array p0, p0, [Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    move p1, v0

    .line 145
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONArray;->size()I

    move-result v3

    if-ge p1, v3, :cond_2

    .line 146
    const-class v3, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    new-array v4, v0, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    invoke-virtual {v2, p1, v3, v4}, Lcom/alibaba/fastjson2/JSONArray;->getObject(ILjava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    aput-object v3, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 148
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/schema/Not;

    invoke-direct {p1, v1, p0, v1}, Lcom/alibaba/fastjson2/schema/Not;-><init>(Lcom/alibaba/fastjson2/schema/JSONSchema;[Lcom/alibaba/fastjson2/schema/JSONSchema$Type;Ljava/lang/Boolean;)V

    return-object p1

    .line 152
    :cond_3
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->of(Lcom/alibaba/fastjson2/JSONObject;Ljava/lang/Class;)Lcom/alibaba/fastjson2/schema/JSONSchema;

    move-result-object p0

    .line 153
    new-instance p1, Lcom/alibaba/fastjson2/schema/Not;

    invoke-direct {p1, p0, v1, v1}, Lcom/alibaba/fastjson2/schema/Not;-><init>(Lcom/alibaba/fastjson2/schema/JSONSchema;[Lcom/alibaba/fastjson2/schema/JSONSchema$Type;Ljava/lang/Boolean;)V

    return-object p1

    .line 137
    :cond_4
    :goto_1
    new-instance p0, Lcom/alibaba/fastjson2/schema/Not;

    new-array p1, v2, [Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    sget-object v2, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->Any:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    aput-object v2, p1, v0

    invoke-direct {p0, v1, p1, v1}, Lcom/alibaba/fastjson2/schema/Not;-><init>(Lcom/alibaba/fastjson2/schema/JSONSchema;[Lcom/alibaba/fastjson2/schema/JSONSchema$Type;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public static ofValue(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/JSONSchema;
    .locals 1

    const/4 v0, 0x0

    .line 182
    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/schema/JSONSchema;->ofValue(Ljava/lang/Object;Lcom/alibaba/fastjson2/schema/JSONSchema;)Lcom/alibaba/fastjson2/schema/JSONSchema;

    move-result-object p0

    return-object p0
.end method

.method static ofValue(Ljava/lang/Object;Lcom/alibaba/fastjson2/schema/JSONSchema;)Lcom/alibaba/fastjson2/schema/JSONSchema;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 190
    :cond_0
    instance-of v1, p0, Ljava/util/Collection;

    const-string/jumbo v2, "type"

    if-eqz v1, :cond_7

    .line 191
    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    .line 192
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const-string v4, "array"

    if-eqz v3, :cond_1

    .line 193
    new-instance p0, Lcom/alibaba/fastjson2/schema/ArraySchema;

    invoke-static {v2, v4}, Lcom/alibaba/fastjson2/JSONObject;->of(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson2/schema/ArraySchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)V

    return-object p0

    :cond_1
    const/4 v3, 0x1

    .line 199
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v3

    move-object v3, v0

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    if-nez v3, :cond_3

    move-object v3, v6

    :cond_3
    if-nez v0, :cond_4

    .line 206
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 207
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-eq v0, v6, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    :cond_5
    if-eqz v5, :cond_7

    .line 215
    const-class p0, Ljava/util/Map;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 216
    invoke-static {v3, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->ofValue(Ljava/lang/Object;Lcom/alibaba/fastjson2/schema/JSONSchema;)Lcom/alibaba/fastjson2/schema/JSONSchema;

    move-result-object p0

    goto :goto_1

    .line 218
    :cond_6
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->of(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/schema/JSONSchema;)Lcom/alibaba/fastjson2/schema/JSONSchema;

    move-result-object p0

    .line 220
    :goto_1
    new-instance v0, Lcom/alibaba/fastjson2/schema/ArraySchema;

    invoke-static {v2, v4}, Lcom/alibaba/fastjson2/JSONObject;->of(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/schema/ArraySchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)V

    .line 221
    iput-object p0, v0, Lcom/alibaba/fastjson2/schema/ArraySchema;->itemSchema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    return-object v0

    .line 226
    :cond_7
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_c

    const-string v0, "object"

    .line 227
    invoke-static {v2, v0}, Lcom/alibaba/fastjson2/JSONObject;->of(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v0

    .line 228
    new-instance v1, Lcom/alibaba/fastjson2/schema/ObjectSchema;

    invoke-direct {v1, v0, p1}, Lcom/alibaba/fastjson2/schema/ObjectSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)V

    .line 230
    check-cast p0, Ljava/util/Map;

    .line 231
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 232
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 233
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 234
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 236
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_8

    if-nez v0, :cond_9

    .line 239
    new-instance v0, Lcom/alibaba/fastjson2/schema/StringSchema;

    invoke-static {}, Lcom/alibaba/fastjson2/JSONObject;->of()Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson2/schema/StringSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    goto :goto_4

    :cond_9
    if-nez p1, :cond_a

    move-object v3, v1

    goto :goto_3

    :cond_a
    move-object v3, p1

    .line 241
    :goto_3
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/schema/JSONSchema;->ofValue(Ljava/lang/Object;Lcom/alibaba/fastjson2/schema/JSONSchema;)Lcom/alibaba/fastjson2/schema/JSONSchema;

    move-result-object v0

    .line 243
    :goto_4
    iget-object v3, v1, Lcom/alibaba/fastjson2/schema/ObjectSchema;->properties:Ljava/util/Map;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_b
    return-object v1

    .line 250
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->of(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/schema/JSONSchema;)Lcom/alibaba/fastjson2/schema/JSONSchema;

    move-result-object p0

    return-object p0
.end method

.method static oneOf(Lcom/alibaba/fastjson2/JSONArray;Ljava/lang/Class;)Lcom/alibaba/fastjson2/schema/OneOf;
    .locals 4

    if-eqz p0, :cond_2

    .line 685
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 689
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONArray;->size()I

    move-result v0

    new-array v1, v0, [Lcom/alibaba/fastjson2/schema/JSONSchema;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 691
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->of(Lcom/alibaba/fastjson2/JSONObject;Ljava/lang/Class;)Lcom/alibaba/fastjson2/schema/JSONSchema;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 693
    :cond_1
    new-instance p0, Lcom/alibaba/fastjson2/schema/OneOf;

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/schema/OneOf;-><init>([Lcom/alibaba/fastjson2/schema/JSONSchema;)V

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static oneOf(Lcom/alibaba/fastjson2/JSONObject;Ljava/lang/Class;)Lcom/alibaba/fastjson2/schema/OneOf;
    .locals 4

    const-string v0, "oneOf"

    .line 672
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 673
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 677
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONArray;->size()I

    move-result v0

    new-array v1, v0, [Lcom/alibaba/fastjson2/schema/JSONSchema;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 679
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->of(Lcom/alibaba/fastjson2/JSONObject;Ljava/lang/Class;)Lcom/alibaba/fastjson2/schema/JSONSchema;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 681
    :cond_1
    new-instance p0, Lcom/alibaba/fastjson2/schema/OneOf;

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/schema/OneOf;-><init>([Lcom/alibaba/fastjson2/schema/JSONSchema;)V

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseSchema(Ljava/lang/String;)Lcom/alibaba/fastjson2/schema/JSONSchema;
    .locals 6

    const-string/jumbo v0, "true"

    .line 157
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    sget-object p0, Lcom/alibaba/fastjson2/schema/Any;->INSTANCE:Lcom/alibaba/fastjson2/schema/Any;

    return-object p0

    :cond_0
    const-string v0, "false"

    .line 161
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    sget-object p0, Lcom/alibaba/fastjson2/schema/Any;->NOT_ANY:Lcom/alibaba/fastjson2/schema/JSONSchema;

    return-object p0

    .line 165
    :cond_1
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 166
    :try_start_0
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    .line 167
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/JSONObject;

    .line 168
    invoke-static {v0}, Lcom/alibaba/fastjson2/schema/JSONSchema;->of(Lcom/alibaba/fastjson2/JSONObject;)Lcom/alibaba/fastjson2/schema/JSONSchema;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    .line 169
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_3

    .line 165
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v0
.end method


# virtual methods
.method public accept(Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/alibaba/fastjson2/schema/JSONSchema;",
            ">;)V"
        }
    .end annotation

    .line 934
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    return-void
.end method

.method addResolveTask(Lcom/alibaba/fastjson2/schema/UnresolvedReference$ResolveTask;)V
    .locals 0

    return-void
.end method

.method public assertValidate(D)V
    .locals 0

    .line 821
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(D)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object p1

    .line 822
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 825
    :cond_0
    new-instance p2, Lcom/alibaba/fastjson2/JSONSchemaValidException;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/schema/ValidateResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONSchemaValidException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public assertValidate(J)V
    .locals 0

    .line 813
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(J)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object p1

    .line 814
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 817
    :cond_0
    new-instance p2, Lcom/alibaba/fastjson2/JSONSchemaValidException;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/schema/ValidateResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONSchemaValidException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public assertValidate(Ljava/lang/Double;)V
    .locals 1

    .line 797
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(Ljava/lang/Double;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object p1

    .line 798
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 801
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONSchemaValidException;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/schema/ValidateResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONSchemaValidException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public assertValidate(Ljava/lang/Float;)V
    .locals 1

    .line 805
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(Ljava/lang/Float;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object p1

    .line 806
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 809
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONSchemaValidException;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/schema/ValidateResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONSchemaValidException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public assertValidate(Ljava/lang/Integer;)V
    .locals 1

    .line 781
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(Ljava/lang/Integer;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object p1

    .line 782
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 785
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONSchemaValidException;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/schema/ValidateResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONSchemaValidException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public assertValidate(Ljava/lang/Long;)V
    .locals 1

    .line 789
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(Ljava/lang/Long;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object p1

    .line 790
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 793
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONSchemaValidException;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/schema/ValidateResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONSchemaValidException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public assertValidate(Ljava/lang/Object;)V
    .locals 1

    .line 773
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object p1

    .line 774
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 777
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONSchemaValidException;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/schema/ValidateResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONSchemaValidException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 839
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 842
    :cond_1
    check-cast p1, Lcom/alibaba/fastjson2/schema/JSONSchema;

    .line 843
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/schema/JSONSchema;->toJSONObject()Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v0

    .line 844
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->toJSONObject()Lcom/alibaba/fastjson2/JSONObject;

    move-result-object p1

    .line 845
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONObject;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/JSONSchema;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/JSONSchema;->title:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getType()Lcom/alibaba/fastjson2/schema/JSONSchema$Type;
.end method

.method public hashCode()I
    .locals 1

    .line 850
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/schema/JSONSchema;->toJSONObject()Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONObject;->hashCode()I

    move-result v0

    return v0
.end method

.method public isValid(D)Z
    .locals 0

    .line 719
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(D)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object p1

    .line 720
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result p1

    return p1
.end method

.method public isValid(F)Z
    .locals 2

    float-to-double v0, p1

    .line 729
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(D)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object p1

    .line 730
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result p1

    return p1
.end method

.method public isValid(J)Z
    .locals 0

    .line 714
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(J)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object p1

    .line 715
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result p1

    return p1
.end method

.method public isValid(Ljava/lang/Double;)Z
    .locals 0

    .line 724
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(Ljava/lang/Double;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object p1

    .line 725
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result p1

    return p1
.end method

.method public isValid(Ljava/lang/Float;)Z
    .locals 0

    .line 734
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(Ljava/lang/Float;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object p1

    .line 735
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result p1

    return p1
.end method

.method public isValid(Ljava/lang/Integer;)Z
    .locals 0

    .line 739
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(Ljava/lang/Integer;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object p1

    .line 740
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result p1

    return p1
.end method

.method public isValid(Ljava/lang/Long;)Z
    .locals 0

    .line 744
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(Ljava/lang/Long;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object p1

    .line 745
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result p1

    return p1
.end method

.method public isValid(Ljava/lang/Object;)Z
    .locals 0

    .line 709
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object p1

    .line 710
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result p1

    return p1
.end method

.method public toJSONObject()Lcom/alibaba/fastjson2/JSONObject;
    .locals 1

    .line 854
    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 830
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/schema/JSONSchema;->toJSONObject()Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v0

    .line 831
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate(D)Lcom/alibaba/fastjson2/schema/ValidateResult;
    .locals 0

    .line 753
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object p1

    return-object p1
.end method

.method public validate(J)Lcom/alibaba/fastjson2/schema/ValidateResult;
    .locals 0

    .line 749
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object p1

    return-object p1
.end method

.method public validate(Ljava/lang/Double;)Lcom/alibaba/fastjson2/schema/ValidateResult;
    .locals 0

    .line 761
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object p1

    return-object p1
.end method

.method public validate(Ljava/lang/Float;)Lcom/alibaba/fastjson2/schema/ValidateResult;
    .locals 0

    .line 757
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object p1

    return-object p1
.end method

.method public validate(Ljava/lang/Integer;)Lcom/alibaba/fastjson2/schema/ValidateResult;
    .locals 0

    .line 765
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object p1

    return-object p1
.end method

.method public validate(Ljava/lang/Long;)Lcom/alibaba/fastjson2/schema/ValidateResult;
    .locals 0

    .line 769
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object p1

    return-object p1
.end method

.method public abstract validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;
.end method
