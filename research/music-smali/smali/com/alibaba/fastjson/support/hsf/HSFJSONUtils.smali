.class public Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;
.super Ljava/lang/Object;
.source "HSFJSONUtils.java"


# static fields
.field static final HASH_ARGS_OBJS:J

.field static final HASH_ARGS_TYPES:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "argsTypes"

    .line 16
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->HASH_ARGS_TYPES:J

    const-string v0, "argsObjs"

    .line 17
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->HASH_ARGS_OBJS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseInvocationArguments(Ljava/lang/String;Lcom/alibaba/fastjson/support/hsf/MethodLocator;)[Ljava/lang/Object;
    .locals 11

    .line 20
    invoke-static {p0}, Lcom/alibaba/fastjson2/u;->c(Ljava/lang/String;)Lcom/alibaba/fastjson2/u;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->m()Z

    move-result v1

    const-string v2, "illegal format"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_e

    .line 27
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->H()J

    move-result-wide v7

    .line 28
    sget-wide v9, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->HASH_ARGS_TYPES:J

    cmp-long v1, v7, v9

    if-nez v1, :cond_9

    .line 29
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->y()Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v4

    move-object v7, v5

    move-object v8, v7

    move-object v9, v8

    .line 34
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->z()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 35
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->x()Z

    if-nez v1, :cond_0

    .line 56
    new-array v1, v4, [Ljava/lang/String;

    goto :goto_1

    :cond_0
    if-ne v1, v6, :cond_1

    .line 58
    new-array v1, v6, [Ljava/lang/String;

    aput-object v7, v1, v4

    goto :goto_1

    :cond_1
    if-ne v1, v3, :cond_2

    .line 60
    new-array v1, v3, [Ljava/lang/String;

    aput-object v7, v1, v4

    aput-object v9, v1, v6

    goto :goto_1

    .line 62
    :cond_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 63
    invoke-interface {v8, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 68
    :goto_1
    invoke-interface {p1, v1}, Lcom/alibaba/fastjson/support/hsf/MethodLocator;->findMethod([Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_3

    .line 37
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->b()Z

    move-result v10

    if-nez v10, :cond_7

    .line 40
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object v10

    if-nez v1, :cond_4

    move-object v7, v10

    goto :goto_2

    :cond_4
    if-ne v1, v6, :cond_5

    move-object v9, v10

    goto :goto_2

    :cond_5
    if-ne v1, v3, :cond_6

    .line 46
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 51
    :cond_6
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    :cond_7
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 66
    :cond_8
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    move-object v1, v5

    :goto_3
    if-eqz v1, :cond_b

    .line 72
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 73
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->H()J

    move-result-wide v3

    .line 74
    sget-wide v5, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->HASH_ARGS_OBJS:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_a

    .line 75
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/u;->a([Ljava/lang/reflect/Type;)[Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    goto/16 :goto_8

    .line 77
    :cond_a
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 80
    :cond_b
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    .line 81
    const-class v0, [Ljava/lang/String;

    const-string v1, "argsTypes"

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 82
    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/support/hsf/MethodLocator;->findMethod([Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1

    const-string v0, "argsObjs"

    .line 84
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p0

    if-nez p0, :cond_c

    goto/16 :goto_8

    .line 88
    :cond_c
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p1

    .line 89
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    .line 90
    :goto_4
    array-length v1, p1

    if-ge v4, v1, :cond_d

    .line 91
    aget-object v1, p1, v4

    .line 92
    invoke-virtual {p0, v4, v1}, Lcom/alibaba/fastjson/JSONArray;->getObject(ILjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_d
    move-object v5, v0

    goto/16 :goto_8

    .line 96
    :cond_e
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->y()Z

    move-result p0

    if-eqz p0, :cond_18

    .line 97
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->y()Z

    move-result p0

    if-eqz p0, :cond_17

    move p0, v4

    move-object v1, v5

    move-object v7, v1

    .line 102
    :goto_5
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->z()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 103
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->x()Z

    if-nez p0, :cond_f

    .line 124
    new-array p0, v4, [Ljava/lang/String;

    goto :goto_6

    :cond_f
    if-ne p0, v6, :cond_10

    .line 126
    new-array p0, v6, [Ljava/lang/String;

    aput-object v5, p0, v4

    goto :goto_6

    :cond_10
    if-ne p0, v3, :cond_11

    .line 128
    new-array p0, v3, [Ljava/lang/String;

    aput-object v5, p0, v4

    aput-object v7, p0, v6

    goto :goto_6

    .line 130
    :cond_11
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 131
    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 137
    :goto_6
    invoke-interface {p1, p0}, Lcom/alibaba/fastjson/support/hsf/MethodLocator;->findMethod([Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 139
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 140
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/u;->a([Ljava/lang/reflect/Type;)[Ljava/lang/Object;

    move-result-object v5

    goto :goto_8

    .line 105
    :cond_12
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->b()Z

    move-result v8

    if-nez v8, :cond_16

    .line 108
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object v8

    if-nez p0, :cond_13

    move-object v5, v8

    goto :goto_7

    :cond_13
    if-ne p0, v6, :cond_14

    move-object v7, v8

    goto :goto_7

    :cond_14
    if-ne p0, v3, :cond_15

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 119
    :cond_15
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 p0, p0, 0x1

    goto :goto_5

    .line 106
    :cond_16
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 134
    :cond_17
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    :goto_8
    return-object v5
.end method
