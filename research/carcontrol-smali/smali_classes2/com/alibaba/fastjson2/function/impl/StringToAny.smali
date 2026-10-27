.class public Lcom/alibaba/fastjson2/function/impl/StringToAny;
.super Ljava/lang/Object;
.source "StringToAny.java"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field final defaultValue:Ljava/lang/Object;

.field final targetClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/alibaba/fastjson2/function/impl/StringToAny;->targetClass:Ljava/lang/Class;

    .line 22
    iput-object p2, p0, Lcom/alibaba/fastjson2/function/impl/StringToAny;->defaultValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 27
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_17

    const-string v0, "null"

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_9

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/function/impl/StringToAny;->targetClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_16

    iget-object v0, p0, Lcom/alibaba/fastjson2/function/impl/StringToAny;->targetClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/Byte;

    if-ne v0, v1, :cond_1

    goto/16 :goto_8

    .line 36
    :cond_1
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Lcom/alibaba/fastjson2/function/impl/StringToAny;->targetClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/Short;

    if-ne v0, v1, :cond_2

    goto/16 :goto_7

    .line 40
    :cond_2
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/alibaba/fastjson2/function/impl/StringToAny;->targetClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_3

    goto/16 :goto_6

    .line 44
    :cond_3
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lcom/alibaba/fastjson2/function/impl/StringToAny;->targetClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_4

    goto/16 :goto_5

    .line 53
    :cond_4
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lcom/alibaba/fastjson2/function/impl/StringToAny;->targetClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_5

    goto/16 :goto_4

    .line 57
    :cond_5
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lcom/alibaba/fastjson2/function/impl/StringToAny;->targetClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_6

    goto/16 :goto_3

    .line 61
    :cond_6
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcom/alibaba/fastjson2/function/impl/StringToAny;->targetClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/Character;

    if-ne v0, v1, :cond_7

    goto/16 :goto_2

    .line 65
    :cond_7
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/alibaba/fastjson2/function/impl/StringToAny;->targetClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_8

    goto :goto_1

    .line 69
    :cond_8
    const-class v1, Ljava/math/BigDecimal;

    if-ne v0, v1, :cond_9

    .line 70
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 73
    :cond_9
    const-class v1, Ljava/math/BigInteger;

    if-ne v0, v1, :cond_a

    .line 74
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 77
    :cond_a
    const-class v1, Ljava/util/Collections;

    if-eq v0, v1, :cond_c

    const-class v1, Ljava/util/List;

    if-eq v0, v1, :cond_c

    const-class v1, Lcom/alibaba/fastjson2/JSONArray;

    if-ne v0, v1, :cond_b

    goto :goto_0

    .line 85
    :cond_b
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not convert to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson2/function/impl/StringToAny;->targetClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_0
    const-string v0, "[]"

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 79
    new-instance p1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {p1}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    return-object p1

    .line 81
    :cond_d
    iget-object v0, p0, Lcom/alibaba/fastjson2/function/impl/StringToAny;->targetClass:Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_e
    :goto_1
    const-string/jumbo v0, "true"

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_f
    :goto_2
    const/4 v0, 0x0

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1

    .line 58
    :cond_10
    :goto_3
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 54
    :cond_11
    :goto_4
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 45
    :cond_12
    :goto_5
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/IOUtils;->isNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_13

    .line 47
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis(Ljava/lang/String;Ljava/time/ZoneId;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 50
    :cond_13
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 41
    :cond_14
    :goto_6
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 37
    :cond_15
    :goto_7
    invoke-static {p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    .line 33
    :cond_16
    :goto_8
    invoke-static {p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 29
    :cond_17
    :goto_9
    iget-object p1, p0, Lcom/alibaba/fastjson2/function/impl/StringToAny;->defaultValue:Ljava/lang/Object;

    return-object p1
.end method
