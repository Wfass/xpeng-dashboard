.class public final Lcom/alibaba/fastjson2/schema/ObjectSchema;
.super Lcom/alibaba/fastjson2/schema/JSONSchema;
.source "ObjectSchema.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/schema/ObjectSchema$PatternProperty;
    }
.end annotation


# instance fields
.field final additionalProperties:Z

.field final additionalPropertySchema:Lcom/alibaba/fastjson2/schema/JSONSchema;

.field final allOf:Lcom/alibaba/fastjson2/schema/AllOf;

.field final anyOf:Lcom/alibaba/fastjson2/schema/AnyOf;

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

.field final dependentRequired:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final dependentRequiredHashCodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "[J>;"
        }
    .end annotation
.end field

.field final dependentSchemas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/schema/JSONSchema;",
            ">;"
        }
    .end annotation
.end field

.field final dependentSchemasHashMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/fastjson2/schema/JSONSchema;",
            ">;"
        }
    .end annotation
.end field

.field final elseSchema:Lcom/alibaba/fastjson2/schema/JSONSchema;

.field final ifSchema:Lcom/alibaba/fastjson2/schema/JSONSchema;

.field final maxProperties:I

.field final minProperties:I

.field final oneOf:Lcom/alibaba/fastjson2/schema/OneOf;

.field final patternProperties:[Lcom/alibaba/fastjson2/schema/ObjectSchema$PatternProperty;

.field final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/schema/JSONSchema;",
            ">;"
        }
    .end annotation
.end field

.field final propertyNames:Lcom/alibaba/fastjson2/schema/JSONSchema;

.field final required:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final requiredHashCode:[J

.field transient resolveTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/schema/UnresolvedReference$ResolveTask;",
            ">;"
        }
    .end annotation
.end field

.field final thenSchema:Lcom/alibaba/fastjson2/schema/JSONSchema;

.field final typed:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson2/schema/ObjectSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)V
    .locals 10

    .line 52
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    const-string/jumbo v0, "type"

    .line 54
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "object"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->typed:Z

    .line 55
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->properties:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->definitions:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->defs:Ljava/util/Map;

    const-string v0, "definitions"

    .line 59
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 61
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

    .line 62
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 63
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/JSONObject;

    if-nez p2, :cond_0

    move-object v3, p0

    goto :goto_1

    :cond_0
    move-object v3, p2

    .line 64
    :goto_1
    invoke-static {v1, v3}, Lcom/alibaba/fastjson2/schema/JSONSchema;->of(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)Lcom/alibaba/fastjson2/schema/JSONSchema;

    move-result-object v1

    .line 65
    iget-object v3, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->definitions:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v0, "$defs"

    .line 69
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 71
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

    .line 72
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 73
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/JSONObject;

    if-nez p2, :cond_2

    move-object v3, p0

    goto :goto_3

    :cond_2
    move-object v3, p2

    .line 74
    :goto_3
    invoke-static {v1, v3}, Lcom/alibaba/fastjson2/schema/JSONSchema;->of(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)Lcom/alibaba/fastjson2/schema/JSONSchema;

    move-result-object v1

    .line 75
    iget-object v3, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->defs:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->resolveTasks:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 78
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/schema/UnresolvedReference$ResolveTask;

    .line 79
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/schema/UnresolvedReference$ResolveTask;->resolve(Lcom/alibaba/fastjson2/schema/JSONSchema;)V

    goto :goto_4

    :cond_4
    const-string v0, "properties"

    .line 84
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 86
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 87
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 88
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 90
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_7

    .line 91
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/alibaba/fastjson2/schema/Any;->INSTANCE:Lcom/alibaba/fastjson2/schema/Any;

    goto :goto_7

    :cond_6
    sget-object v1, Lcom/alibaba/fastjson2/schema/Any;->NOT_ANY:Lcom/alibaba/fastjson2/schema/JSONSchema;

    goto :goto_7

    .line 92
    :cond_7
    instance-of v3, v1, Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v3, :cond_8

    .line 93
    check-cast v1, Lcom/alibaba/fastjson2/schema/JSONSchema;

    goto :goto_7

    .line 95
    :cond_8
    check-cast v1, Lcom/alibaba/fastjson2/JSONObject;

    if-nez p2, :cond_9

    move-object v3, p0

    goto :goto_6

    :cond_9
    move-object v3, p2

    :goto_6
    invoke-static {v1, v3}, Lcom/alibaba/fastjson2/schema/JSONSchema;->of(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)Lcom/alibaba/fastjson2/schema/JSONSchema;

    move-result-object v1

    .line 97
    :goto_7
    iget-object v3, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->properties:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    instance-of v3, v1, Lcom/alibaba/fastjson2/schema/UnresolvedReference;

    if-eqz v3, :cond_5

    .line 99
    check-cast v1, Lcom/alibaba/fastjson2/schema/UnresolvedReference;

    iget-object v1, v1, Lcom/alibaba/fastjson2/schema/UnresolvedReference;->refName:Ljava/lang/String;

    .line 100
    new-instance v3, Lcom/alibaba/fastjson2/schema/UnresolvedReference$PropertyResolveTask;

    iget-object v4, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->properties:Ljava/util/Map;

    invoke-direct {v3, v4, v2, v1}, Lcom/alibaba/fastjson2/schema/UnresolvedReference$PropertyResolveTask;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_a

    move-object v1, p0

    goto :goto_8

    :cond_a
    move-object v1, p2

    .line 103
    :goto_8
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/schema/JSONSchema;->addResolveTask(Lcom/alibaba/fastjson2/schema/UnresolvedReference$ResolveTask;)V

    goto :goto_5

    :cond_b
    const-string v0, "patternProperties"

    .line 108
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 110
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONObject;->size()I

    move-result v2

    new-array v2, v2, [Lcom/alibaba/fastjson2/schema/ObjectSchema$PatternProperty;

    iput-object v2, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->patternProperties:[Lcom/alibaba/fastjson2/schema/ObjectSchema$PatternProperty;

    .line 113
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 114
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 115
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 117
    instance-of v5, v3, Ljava/lang/Boolean;

    if-eqz v5, :cond_d

    .line 118
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_c

    sget-object v3, Lcom/alibaba/fastjson2/schema/Any;->INSTANCE:Lcom/alibaba/fastjson2/schema/Any;

    goto :goto_b

    :cond_c
    sget-object v3, Lcom/alibaba/fastjson2/schema/Any;->NOT_ANY:Lcom/alibaba/fastjson2/schema/JSONSchema;

    goto :goto_b

    .line 120
    :cond_d
    check-cast v3, Lcom/alibaba/fastjson2/JSONObject;

    if-nez p2, :cond_e

    move-object v5, p0

    goto :goto_a

    :cond_e
    move-object v5, p2

    :goto_a
    invoke-static {v3, v5}, Lcom/alibaba/fastjson2/schema/JSONSchema;->of(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)Lcom/alibaba/fastjson2/schema/JSONSchema;

    move-result-object v3

    .line 123
    :goto_b
    iget-object v5, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->patternProperties:[Lcom/alibaba/fastjson2/schema/ObjectSchema$PatternProperty;

    add-int/lit8 v6, v2, 0x1

    new-instance v7, Lcom/alibaba/fastjson2/schema/ObjectSchema$PatternProperty;

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-direct {v7, v4, v3}, Lcom/alibaba/fastjson2/schema/ObjectSchema$PatternProperty;-><init>(Ljava/util/regex/Pattern;Lcom/alibaba/fastjson2/schema/JSONSchema;)V

    aput-object v7, v5, v2

    move v2, v6

    goto :goto_9

    :cond_f
    new-array v0, v1, [Lcom/alibaba/fastjson2/schema/ObjectSchema$PatternProperty;

    .line 126
    iput-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->patternProperties:[Lcom/alibaba/fastjson2/schema/ObjectSchema$PatternProperty;

    :cond_10
    const-string v0, "required"

    .line 129
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 130
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONArray;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_e

    .line 134
    :cond_11
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONArray;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v2, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->required:Ljava/util/Set;

    move v2, v1

    .line 135
    :goto_c
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_12

    .line 136
    iget-object v3, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->required:Ljava/util/Set;

    .line 137
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 136
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 140
    :cond_12
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->required:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->requiredHashCode:[J

    .line 142
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->required:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 143
    iget-object v4, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->requiredHashCode:[J

    add-int/lit8 v5, v2, 0x1

    invoke-static {v3}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v4, v2

    move v2, v5

    goto :goto_d

    .line 131
    :cond_13
    :goto_e
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->required:Ljava/util/Set;

    new-array v0, v1, [J

    .line 132
    iput-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->requiredHashCode:[J

    :cond_14
    const-string v0, "additionalProperties"

    .line 147
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 148
    instance-of v2, v0, Ljava/lang/Boolean;

    const/4 v3, 0x0

    if-eqz v2, :cond_15

    .line 149
    iput-object v3, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->additionalPropertySchema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    .line 150
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->additionalProperties:Z

    goto :goto_f

    .line 152
    :cond_15
    instance-of v2, v0, Lcom/alibaba/fastjson2/JSONObject;

    if-eqz v2, :cond_16

    .line 153
    check-cast v0, Lcom/alibaba/fastjson2/JSONObject;

    invoke-static {v0, p2}, Lcom/alibaba/fastjson2/schema/JSONSchema;->of(Lcom/alibaba/fastjson2/JSONObject;Lcom/alibaba/fastjson2/schema/JSONSchema;)Lcom/alibaba/fastjson2/schema/JSONSchema;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->additionalPropertySchema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    .line 154
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->additionalProperties:Z

    goto :goto_f

    .line 156
    :cond_16
    iput-object v3, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->additionalPropertySchema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    const/4 p2, 0x1

    .line 157
    iput-boolean p2, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->additionalProperties:Z

    :goto_f
    const-string p2, "propertyNames"

    .line 161
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_17

    .line 163
    iput-object v3, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->propertyNames:Lcom/alibaba/fastjson2/schema/JSONSchema;

    goto :goto_11

    .line 164
    :cond_17
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_19

    .line 165
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_18

    sget-object p2, Lcom/alibaba/fastjson2/schema/Any;->INSTANCE:Lcom/alibaba/fastjson2/schema/Any;

    goto :goto_10

    :cond_18
    sget-object p2, Lcom/alibaba/fastjson2/schema/Any;->NOT_ANY:Lcom/alibaba/fastjson2/schema/JSONSchema;

    :goto_10
    iput-object p2, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->propertyNames:Lcom/alibaba/fastjson2/schema/JSONSchema;

    goto :goto_11

    .line 167
    :cond_19
    new-instance v0, Lcom/alibaba/fastjson2/schema/StringSchema;

    check-cast p2, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v0, p2}, Lcom/alibaba/fastjson2/schema/StringSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    iput-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->propertyNames:Lcom/alibaba/fastjson2/schema/JSONSchema;

    :goto_11
    const-string p2, "minProperties"

    const/4 v0, -0x1

    .line 170
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson2/JSONObject;->getIntValue(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->minProperties:I

    const-string p2, "maxProperties"

    .line 171
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson2/JSONObject;->getIntValue(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->maxProperties:I

    const-string p2, "dependentRequired"

    .line 173
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1b

    .line 174
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONObject;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 175
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONObject;->size()I

    move-result v4

    invoke-direct {v2, v4, v0}, Ljava/util/LinkedHashMap;-><init>(IF)V

    iput-object v2, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->dependentRequired:Ljava/util/Map;

    .line 176
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONObject;->size()I

    move-result v4

    invoke-direct {v2, v4, v0}, Ljava/util/LinkedHashMap;-><init>(IF)V

    iput-object v2, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->dependentRequiredHashCodes:Ljava/util/Map;

    .line 177
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 178
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 179
    const-class v5, [Ljava/lang/String;

    new-array v6, v1, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    invoke-virtual {p2, v4, v5, v6}, Lcom/alibaba/fastjson2/JSONObject;->getObject(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 180
    array-length v6, v5

    new-array v6, v6, [J

    move v7, v1

    .line 181
    :goto_13
    array-length v8, v5

    if-ge v7, v8, :cond_1a

    .line 182
    aget-object v8, v5, v7

    invoke-static {v8}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 184
    :cond_1a
    iget-object v7, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->dependentRequired:Ljava/util/Map;

    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v5, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->dependentRequiredHashCodes:Ljava/util/Map;

    invoke-static {v4}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 188
    :cond_1b
    iput-object v3, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->dependentRequired:Ljava/util/Map;

    .line 189
    iput-object v3, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->dependentRequiredHashCodes:Ljava/util/Map;

    :cond_1c
    const-string p2, "dependentSchemas"

    .line 192
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_1d

    .line 193
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONObject;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 194
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONObject;->size()I

    move-result v2

    invoke-direct {v1, v2, v0}, Ljava/util/LinkedHashMap;-><init>(IF)V

    iput-object v1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->dependentSchemas:Ljava/util/Map;

    .line 195
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONObject;->size()I

    move-result v2

    invoke-direct {v1, v2, v0}, Ljava/util/LinkedHashMap;-><init>(IF)V

    iput-object v1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->dependentSchemasHashMapping:Ljava/util/Map;

    .line 196
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 197
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 198
    sget-object v2, Lcom/alibaba/fastjson2/schema/-$$Lambda$gV4G2nZkequZlP5rFHVeB6Rcy9Y;->INSTANCE:Lcom/alibaba/fastjson2/schema/-$$Lambda$gV4G2nZkequZlP5rFHVeB6Rcy9Y;

    invoke-virtual {p2, v1, v2}, Lcom/alibaba/fastjson2/JSONObject;->getObject(Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson2/schema/JSONSchema;

    .line 199
    iget-object v4, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->dependentSchemas:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v4, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->dependentSchemasHashMapping:Ljava/util/Map;

    invoke-static {v1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 203
    :cond_1d
    iput-object v3, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->dependentSchemas:Ljava/util/Map;

    .line 204
    iput-object v3, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->dependentSchemasHashMapping:Ljava/util/Map;

    .line 207
    :cond_1e
    sget-object p2, Lcom/alibaba/fastjson2/schema/-$$Lambda$gV4G2nZkequZlP5rFHVeB6Rcy9Y;->INSTANCE:Lcom/alibaba/fastjson2/schema/-$$Lambda$gV4G2nZkequZlP5rFHVeB6Rcy9Y;

    const-string v0, "if"

    invoke-virtual {p1, v0, p2}, Lcom/alibaba/fastjson2/JSONObject;->getObject(Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/fastjson2/schema/JSONSchema;

    iput-object p2, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->ifSchema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    .line 208
    sget-object p2, Lcom/alibaba/fastjson2/schema/-$$Lambda$gV4G2nZkequZlP5rFHVeB6Rcy9Y;->INSTANCE:Lcom/alibaba/fastjson2/schema/-$$Lambda$gV4G2nZkequZlP5rFHVeB6Rcy9Y;

    const-string v0, "else"

    invoke-virtual {p1, v0, p2}, Lcom/alibaba/fastjson2/JSONObject;->getObject(Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/fastjson2/schema/JSONSchema;

    iput-object p2, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->elseSchema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    .line 209
    sget-object p2, Lcom/alibaba/fastjson2/schema/-$$Lambda$gV4G2nZkequZlP5rFHVeB6Rcy9Y;->INSTANCE:Lcom/alibaba/fastjson2/schema/-$$Lambda$gV4G2nZkequZlP5rFHVeB6Rcy9Y;

    const-string/jumbo v0, "then"

    invoke-virtual {p1, v0, p2}, Lcom/alibaba/fastjson2/JSONObject;->getObject(Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/fastjson2/schema/JSONSchema;

    iput-object p2, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->thenSchema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    .line 211
    invoke-static {p1, v3}, Lcom/alibaba/fastjson2/schema/ObjectSchema;->allOf(Lcom/alibaba/fastjson2/JSONObject;Ljava/lang/Class;)Lcom/alibaba/fastjson2/schema/AllOf;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->allOf:Lcom/alibaba/fastjson2/schema/AllOf;

    .line 212
    invoke-static {p1, v3}, Lcom/alibaba/fastjson2/schema/ObjectSchema;->anyOf(Lcom/alibaba/fastjson2/JSONObject;Ljava/lang/Class;)Lcom/alibaba/fastjson2/schema/AnyOf;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->anyOf:Lcom/alibaba/fastjson2/schema/AnyOf;

    .line 213
    invoke-static {p1, v3}, Lcom/alibaba/fastjson2/schema/ObjectSchema;->oneOf(Lcom/alibaba/fastjson2/JSONObject;Ljava/lang/Class;)Lcom/alibaba/fastjson2/schema/OneOf;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->oneOf:Lcom/alibaba/fastjson2/schema/OneOf;

    return-void
.end method


# virtual methods
.method public accept(Ljava/util/function/Predicate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/alibaba/fastjson2/schema/JSONSchema;",
            ">;)V"
        }
    .end annotation

    .line 680
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/alibaba/fastjson2/schema/-$$Lambda$VqJm9lFm_6T43n_Y_zBmm1U1PT4;

    invoke-direct {v1, p1}, Lcom/alibaba/fastjson2/schema/-$$Lambda$VqJm9lFm_6T43n_Y_zBmm1U1PT4;-><init>(Ljava/util/function/Predicate;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method addResolveTask(Lcom/alibaba/fastjson2/schema/UnresolvedReference$ResolveTask;)V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->resolveTasks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->resolveTasks:Ljava/util/List;

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->resolveTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDefs(Ljava/lang/String;)Lcom/alibaba/fastjson2/schema/JSONSchema;
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->defs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/schema/JSONSchema;

    return-object p1
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/schema/JSONSchema;",
            ">;"
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->properties:Ljava/util/Map;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Lcom/alibaba/fastjson2/schema/JSONSchema;
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/schema/JSONSchema;

    return-object p1
.end method

.method public getRequired()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 577
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->required:Ljava/util/Set;

    return-object v0
.end method

.method public getType()Lcom/alibaba/fastjson2/schema/JSONSchema$Type;
    .locals 1

    .line 226
    sget-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->Object:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    return-object v0
.end method

.method public toJSONObject()Lcom/alibaba/fastjson2/JSONObject;
    .locals 4
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        value = true
    .end annotation

    .line 592
    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    const-string/jumbo v1, "type"

    const-string v2, "object"

    .line 594
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->title:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 597
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->title:Ljava/lang/String;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->description:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 601
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->description:Ljava/lang/String;

    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->definitions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 605
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->definitions:Ljava/util/Map;

    const-string v2, "definitions"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->defs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 609
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->defs:Ljava/util/Map;

    const-string v2, "defs"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->properties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 613
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->properties:Ljava/util/Map;

    const-string v2, "properties"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->required:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 617
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->required:Ljava/util/Set;

    const-string v2, "required"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    :cond_5
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->additionalProperties:Z

    if-nez v1, :cond_7

    .line 621
    iget-object v2, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->additionalPropertySchema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    const-string v3, "additionalProperties"

    if-eqz v2, :cond_6

    .line 622
    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 624
    :cond_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    :cond_7
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->patternProperties:[Lcom/alibaba/fastjson2/schema/ObjectSchema$PatternProperty;

    if-eqz v1, :cond_8

    array-length v2, v1

    if-eqz v2, :cond_8

    const-string v2, "patternProperties"

    .line 629
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    :cond_8
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->propertyNames:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v1, :cond_9

    const-string v2, "propertyNames"

    .line 633
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    :cond_9
    iget v1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->minProperties:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a

    .line 637
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "minProperties"

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    :cond_a
    iget v1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->maxProperties:I

    if-eq v1, v2, :cond_b

    .line 641
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "maxProperties"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    :cond_b
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->dependentRequired:Ljava/util/Map;

    if-eqz v1, :cond_c

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 645
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->dependentRequired:Ljava/util/Map;

    const-string v2, "dependentRequired"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    :cond_c
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->dependentSchemas:Ljava/util/Map;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 649
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->dependentSchemas:Ljava/util/Map;

    const-string v2, "dependentSchemas"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    :cond_d
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->ifSchema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v1, :cond_e

    const-string v2, "if"

    .line 653
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    :cond_e
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->thenSchema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v1, :cond_f

    const-string/jumbo v2, "then"

    .line 657
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    :cond_f
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->elseSchema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v1, :cond_10

    const-string v2, "else"

    .line 661
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    :cond_10
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->allOf:Lcom/alibaba/fastjson2/schema/AllOf;

    if-eqz v1, :cond_11

    const-string v2, "allOf"

    .line 665
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    :cond_11
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->anyOf:Lcom/alibaba/fastjson2/schema/AnyOf;

    if-eqz v1, :cond_12

    const-string v2, "anyOf"

    .line 669
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    :cond_12
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->oneOf:Lcom/alibaba/fastjson2/schema/OneOf;

    if-eqz v1, :cond_13

    const-string v2, "oneOf"

    .line 673
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    return-object v0
.end method

.method public validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;
    .locals 11

    if-nez p1, :cond_1

    .line 394
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->typed:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/alibaba/fastjson2/schema/ObjectSchema;->FAIL_INPUT_NULL:Lcom/alibaba/fastjson2/schema/ValidateResult;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/alibaba/fastjson2/schema/ObjectSchema;->SUCCESS:Lcom/alibaba/fastjson2/schema/ValidateResult;

    :goto_0
    return-object p1

    .line 397
    :cond_1
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 398
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/schema/ObjectSchema;->validate(Ljava/util/Map;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object p1

    return-object p1

    .line 401
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 402
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectWriterProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v1

    .line 404
    instance-of v2, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_4

    .line 405
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->typed:Z

    if-eqz p1, :cond_3

    new-instance p1, Lcom/alibaba/fastjson2/schema/ValidateResult;

    new-array v1, v3, [Ljava/lang/Object;

    sget-object v2, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->Object:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    aput-object v2, v1, v5

    aput-object v0, v1, v4

    const-string v0, "expect type %s, but %s"

    invoke-direct {p1, v5, v0, v1}, Lcom/alibaba/fastjson2/schema/ValidateResult;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/alibaba/fastjson2/schema/ObjectSchema;->SUCCESS:Lcom/alibaba/fastjson2/schema/ValidateResult;

    :goto_1
    return-object p1

    :cond_4
    move v0, v5

    .line 408
    :goto_2
    iget-object v2, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->requiredHashCode:[J

    array-length v6, v2

    const/4 v7, 0x0

    if-ge v0, v6, :cond_9

    .line 409
    aget-wide v8, v2, v0

    .line 410
    invoke-interface {v1, v8, v9}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriter(J)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 414
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :cond_5
    move-object v2, v7

    :goto_3
    if-nez v2, :cond_8

    .line 420
    iget-object p1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->required:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v5

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-ne v1, v0, :cond_6

    move-object v7, v2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 426
    :cond_7
    new-instance p1, Lcom/alibaba/fastjson2/schema/ValidateResult;

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v7, v0, v5

    const-string v1, "required property %s"

    invoke-direct {p1, v5, v1, v0}, Lcom/alibaba/fastjson2/schema/ValidateResult;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 430
    :cond_9
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 431
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 432
    invoke-static {v6}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v8

    .line 434
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson2/schema/JSONSchema;

    .line 436
    invoke-interface {v1, v8, v9}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriter(J)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 438
    invoke-virtual {v6, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_b

    goto :goto_5

    .line 443
    :cond_b
    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object v2

    .line 444
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result v6

    if-nez v6, :cond_a

    return-object v2

    .line 450
    :cond_c
    iget v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->minProperties:I

    if-gez v0, :cond_d

    iget v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->maxProperties:I

    if-ltz v0, :cond_11

    .line 452
    :cond_d
    invoke-interface {v1}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriters()Ljava/util/List;

    move-result-object v0

    .line 453
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v5

    :cond_e
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 454
    invoke-virtual {v6, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_e

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 460
    :cond_f
    iget v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->minProperties:I

    if-ltz v0, :cond_10

    if-ge v2, v0, :cond_10

    .line 462
    new-instance p1, Lcom/alibaba/fastjson2/schema/ValidateResult;

    new-array v0, v3, [Ljava/lang/Object;

    iget v1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->minProperties:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "minProperties not match, expect %s, but %s"

    invoke-direct {p1, v5, v1, v0}, Lcom/alibaba/fastjson2/schema/ValidateResult;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 466
    :cond_10
    iget v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->maxProperties:I

    if-ltz v0, :cond_11

    if-le v2, v0, :cond_11

    .line 468
    new-instance p1, Lcom/alibaba/fastjson2/schema/ValidateResult;

    new-array v0, v3, [Ljava/lang/Object;

    iget v1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->maxProperties:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "maxProperties not match, expect %s, but %s"

    invoke-direct {p1, v5, v1, v0}, Lcom/alibaba/fastjson2/schema/ValidateResult;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 473
    :cond_11
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->dependentRequiredHashCodes:Ljava/util/Map;

    if-eqz v0, :cond_18

    .line 475
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v5

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 476
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 477
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [J

    .line 479
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {v1, v8, v9}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriter(J)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v8

    .line 480
    invoke-virtual {v8, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_13

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_13
    move v8, v5

    .line 486
    :goto_8
    array-length v9, v6

    if-ge v8, v9, :cond_12

    .line 487
    aget-wide v9, v6, v8

    .line 488
    invoke-interface {v1, v9, v10}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriter(J)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v9

    if-eqz v9, :cond_15

    .line 490
    invoke-virtual {v9, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_14

    goto :goto_9

    :cond_14
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 493
    :cond_15
    :goto_9
    iget-object p1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->dependentRequired:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v5

    move-object v0, v7

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    if-ne v2, v1, :cond_16

    .line 495
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 496
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 497
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v8

    move-object v7, v6

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 500
    :cond_17
    new-instance p1, Lcom/alibaba/fastjson2/schema/ValidateResult;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v7, v1, v5

    aput-object v0, v1, v4

    const-string v0, "property %s, dependentRequired property %s"

    invoke-direct {p1, v5, v0, v1}, Lcom/alibaba/fastjson2/schema/ValidateResult;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 508
    :cond_18
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->dependentSchemasHashMapping:Ljava/util/Map;

    if-eqz v0, :cond_1b

    .line 509
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 510
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 512
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v1, v3, v4}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriter(J)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 513
    invoke-virtual {v3, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1a

    goto :goto_b

    .line 517
    :cond_1a
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson2/schema/JSONSchema;

    .line 518
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object v2

    .line 519
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_19

    return-object v2

    .line 525
    :cond_1b
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->ifSchema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v0, :cond_1d

    .line 526
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object v0

    .line 527
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 528
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->thenSchema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v0, :cond_1d

    .line 529
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object v0

    .line 530
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_1d

    return-object v0

    .line 535
    :cond_1c
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->elseSchema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v0, :cond_1d

    .line 536
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object v0

    .line 537
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_1d

    return-object v0

    .line 544
    :cond_1d
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->allOf:Lcom/alibaba/fastjson2/schema/AllOf;

    if-eqz v0, :cond_1e

    .line 545
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/schema/AllOf;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object v0

    .line 546
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_1e

    return-object v0

    .line 551
    :cond_1e
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->anyOf:Lcom/alibaba/fastjson2/schema/AnyOf;

    if-eqz v0, :cond_1f

    .line 552
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/schema/AnyOf;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object v0

    .line 553
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_1f

    return-object v0

    .line 558
    :cond_1f
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->oneOf:Lcom/alibaba/fastjson2/schema/OneOf;

    if-eqz v0, :cond_20

    .line 559
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/schema/OneOf;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object p1

    .line 560
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_20

    return-object p1

    .line 565
    :cond_20
    sget-object p1, Lcom/alibaba/fastjson2/schema/ObjectSchema;->SUCCESS:Lcom/alibaba/fastjson2/schema/ValidateResult;

    return-object p1
.end method

.method public validate(Ljava/util/Map;)Lcom/alibaba/fastjson2/schema/ValidateResult;
    .locals 10

    .line 230
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->required:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 231
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 232
    new-instance p1, Lcom/alibaba/fastjson2/schema/ValidateResult;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object v1, v0, v3

    const-string v1, "required %s"

    invoke-direct {p1, v3, v1, v0}, Lcom/alibaba/fastjson2/schema/ValidateResult;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 237
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 238
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/schema/JSONSchema;

    .line 240
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    .line 241
    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    .line 245
    :cond_3
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object v1

    .line 246
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result v5

    if-nez v5, :cond_2

    .line 247
    new-instance p1, Lcom/alibaba/fastjson2/schema/ValidateResult;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object v4, v0, v3

    const-string v2, "property %s invalid"

    invoke-direct {p1, v1, v2, v0}, Lcom/alibaba/fastjson2/schema/ValidateResult;-><init>(Lcom/alibaba/fastjson2/schema/ValidateResult;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 251
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->patternProperties:[Lcom/alibaba/fastjson2/schema/ObjectSchema$PatternProperty;

    array-length v1, v0

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_7

    aget-object v5, v0, v4

    .line 252
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 253
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .line 254
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_5

    .line 255
    check-cast v8, Ljava/lang/String;

    .line 256
    iget-object v9, v5, Lcom/alibaba/fastjson2/schema/ObjectSchema$PatternProperty;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 257
    iget-object v8, v5, Lcom/alibaba/fastjson2/schema/ObjectSchema$PatternProperty;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object v7

    .line 258
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result v8

    if-nez v8, :cond_5

    return-object v7

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 266
    :cond_7
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->additionalProperties:Z

    if-nez v0, :cond_d

    .line 268
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 269
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 271
    iget-object v5, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->properties:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_2

    .line 275
    :cond_9
    iget-object v5, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->patternProperties:[Lcom/alibaba/fastjson2/schema/ObjectSchema$PatternProperty;

    array-length v6, v5

    move v7, v3

    :goto_3
    if-ge v7, v6, :cond_b

    aget-object v8, v5, v7

    .line 276
    instance-of v9, v4, Ljava/lang/String;

    if-eqz v9, :cond_a

    .line 277
    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    .line 278
    iget-object v8, v8, Lcom/alibaba/fastjson2/schema/ObjectSchema$PatternProperty;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_2

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 284
    :cond_b
    iget-object v5, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->additionalPropertySchema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v5, :cond_c

    .line 285
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object v1

    .line 286
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_8

    return-object v1

    .line 292
    :cond_c
    new-instance p1, Lcom/alibaba/fastjson2/schema/ValidateResult;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object v4, v0, v3

    const-string v1, "add additionalProperties %s"

    invoke-direct {p1, v3, v1, v0}, Lcom/alibaba/fastjson2/schema/ValidateResult;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 296
    :cond_d
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->propertyNames:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v0, :cond_f

    .line 297
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 298
    iget-object v4, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->propertyNames:Lcom/alibaba/fastjson2/schema/JSONSchema;

    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object v1

    .line 299
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_e

    .line 300
    sget-object p1, Lcom/alibaba/fastjson2/schema/ObjectSchema;->FAIL_PROPERTY_NAME:Lcom/alibaba/fastjson2/schema/ValidateResult;

    return-object p1

    .line 305
    :cond_f
    iget v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->minProperties:I

    const/4 v1, 0x2

    if-ltz v0, :cond_10

    .line 306
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    iget v4, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->minProperties:I

    if-ge v0, v4, :cond_10

    .line 307
    new-instance v0, Lcom/alibaba/fastjson2/schema/ValidateResult;

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->minProperties:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "minProperties not match, expect %s, but %s"

    invoke-direct {v0, v3, p1, v1}, Lcom/alibaba/fastjson2/schema/ValidateResult;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 311
    :cond_10
    iget v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->maxProperties:I

    if-ltz v0, :cond_11

    .line 312
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    iget v4, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->maxProperties:I

    if-le v0, v4, :cond_11

    .line 313
    new-instance v0, Lcom/alibaba/fastjson2/schema/ValidateResult;

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->maxProperties:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "maxProperties not match, expect %s, but %s"

    invoke-direct {v0, v3, p1, v1}, Lcom/alibaba/fastjson2/schema/ValidateResult;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 317
    :cond_11
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->dependentRequired:Ljava/util/Map;

    if-eqz v0, :cond_14

    .line 318
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 319
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 320
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_12

    .line 322
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 323
    array-length v6, v4

    move v7, v3

    :goto_4
    if-ge v7, v6, :cond_12

    aget-object v8, v4, v7

    .line 324
    invoke-interface {p1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    .line 325
    new-instance p1, Lcom/alibaba/fastjson2/schema/ValidateResult;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v5, v0, v3

    aput-object v8, v0, v2

    const-string v1, "property %s, dependentRequired property %s"

    invoke-direct {p1, v3, v1, v0}, Lcom/alibaba/fastjson2/schema/ValidateResult;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_13
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 332
    :cond_14
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->dependentSchemas:Ljava/util/Map;

    if-eqz v0, :cond_17

    .line 333
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 334
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 335
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_16

    goto :goto_5

    .line 340
    :cond_16
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/schema/JSONSchema;

    .line 341
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object v1

    .line 342
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_15

    return-object v1

    .line 348
    :cond_17
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->ifSchema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v0, :cond_19

    .line 349
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object v0

    .line 350
    sget-object v1, Lcom/alibaba/fastjson2/schema/ObjectSchema;->SUCCESS:Lcom/alibaba/fastjson2/schema/ValidateResult;

    if-ne v0, v1, :cond_18

    .line 351
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->thenSchema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v0, :cond_19

    .line 352
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_19

    return-object v0

    .line 358
    :cond_18
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->elseSchema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v0, :cond_19

    .line 359
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_19

    return-object v0

    .line 367
    :cond_19
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->allOf:Lcom/alibaba/fastjson2/schema/AllOf;

    if-eqz v0, :cond_1a

    .line 368
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/schema/AllOf;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object v0

    .line 369
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_1a

    return-object v0

    .line 374
    :cond_1a
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->anyOf:Lcom/alibaba/fastjson2/schema/AnyOf;

    if-eqz v0, :cond_1b

    .line 375
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/schema/AnyOf;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_1b

    return-object v0

    .line 381
    :cond_1b
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema;->oneOf:Lcom/alibaba/fastjson2/schema/OneOf;

    if-eqz v0, :cond_1c

    .line 382
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/schema/OneOf;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object p1

    .line 383
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1c

    return-object p1

    .line 388
    :cond_1c
    sget-object p1, Lcom/alibaba/fastjson2/schema/ObjectSchema;->SUCCESS:Lcom/alibaba/fastjson2/schema/ValidateResult;

    return-object p1
.end method
