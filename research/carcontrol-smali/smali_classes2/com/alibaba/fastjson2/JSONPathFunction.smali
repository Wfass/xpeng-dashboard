.class final Lcom/alibaba/fastjson2/JSONPathFunction;
.super Lcom/alibaba/fastjson2/JSONPathSegment;
.source "JSONPathFunction.java"

# interfaces
.implements Lcom/alibaba/fastjson2/JSONPathSegment$EvalSegment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/JSONPathFunction$IndexString;,
        Lcom/alibaba/fastjson2/JSONPathFunction$IndexDecimal;,
        Lcom/alibaba/fastjson2/JSONPathFunction$IndexInt;,
        Lcom/alibaba/fastjson2/JSONPathFunction$Index;,
        Lcom/alibaba/fastjson2/JSONPathFunction$BiFunctionAdapter;,
        Lcom/alibaba/fastjson2/JSONPathFunction$SizeFunction;,
        Lcom/alibaba/fastjson2/JSONPathFunction$TypeFunction;
    }
.end annotation


# static fields
.field static final FUNC_ABS:Lcom/alibaba/fastjson2/JSONPathFunction;

.field static final FUNC_CEIL:Lcom/alibaba/fastjson2/JSONPathFunction;

.field static final FUNC_DOUBLE:Lcom/alibaba/fastjson2/JSONPathFunction;

.field static final FUNC_EXISTS:Lcom/alibaba/fastjson2/JSONPathFunction;

.field static final FUNC_FIRST:Lcom/alibaba/fastjson2/JSONPathFunction;

.field static final FUNC_FLOOR:Lcom/alibaba/fastjson2/JSONPathFunction;

.field static final FUNC_LAST:Lcom/alibaba/fastjson2/JSONPathFunction;

.field static final FUNC_LOWER:Lcom/alibaba/fastjson2/JSONPathFunction;

.field static final FUNC_NEGATIVE:Lcom/alibaba/fastjson2/JSONPathFunction;

.field static final FUNC_TRIM:Lcom/alibaba/fastjson2/JSONPathFunction;

.field static final FUNC_TYPE:Lcom/alibaba/fastjson2/JSONPathFunction;

.field static final FUNC_UPPER:Lcom/alibaba/fastjson2/JSONPathFunction;


# instance fields
.field final function:Ljava/util/function/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathFunction;

    sget-object v1, Lcom/alibaba/fastjson2/-$$Lambda$3YHuhBJe6UuMBJnx7mFcng6qSgI;->INSTANCE:Lcom/alibaba/fastjson2/-$$Lambda$3YHuhBJe6UuMBJnx7mFcng6qSgI;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONPathFunction;-><init>(Ljava/util/function/Function;)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathFunction;->FUNC_TYPE:Lcom/alibaba/fastjson2/JSONPathFunction;

    .line 18
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathFunction;

    new-instance v1, Lcom/alibaba/fastjson2/function/impl/ToDouble;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/function/impl/ToDouble;-><init>(Ljava/lang/Double;)V

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONPathFunction;-><init>(Ljava/util/function/Function;)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathFunction;->FUNC_DOUBLE:Lcom/alibaba/fastjson2/JSONPathFunction;

    .line 19
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathFunction;

    sget-object v1, Lcom/alibaba/fastjson2/-$$Lambda$WpEncRB8OH8w_r23yYoXTfPM5Hk;->INSTANCE:Lcom/alibaba/fastjson2/-$$Lambda$WpEncRB8OH8w_r23yYoXTfPM5Hk;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONPathFunction;-><init>(Ljava/util/function/Function;)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathFunction;->FUNC_FLOOR:Lcom/alibaba/fastjson2/JSONPathFunction;

    .line 20
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathFunction;

    sget-object v1, Lcom/alibaba/fastjson2/-$$Lambda$Ur1stq50k25iIxHHVHdW6D0FtAw;->INSTANCE:Lcom/alibaba/fastjson2/-$$Lambda$Ur1stq50k25iIxHHVHdW6D0FtAw;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONPathFunction;-><init>(Ljava/util/function/Function;)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathFunction;->FUNC_CEIL:Lcom/alibaba/fastjson2/JSONPathFunction;

    .line 21
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathFunction;

    sget-object v1, Lcom/alibaba/fastjson2/-$$Lambda$XDasvPTD9G8eXXWqfTLotnP_Uqg;->INSTANCE:Lcom/alibaba/fastjson2/-$$Lambda$XDasvPTD9G8eXXWqfTLotnP_Uqg;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONPathFunction;-><init>(Ljava/util/function/Function;)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathFunction;->FUNC_ABS:Lcom/alibaba/fastjson2/JSONPathFunction;

    .line 22
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathFunction;

    sget-object v1, Lcom/alibaba/fastjson2/-$$Lambda$WBndsSzrliPWaAGZRDsWy6tlLi8;->INSTANCE:Lcom/alibaba/fastjson2/-$$Lambda$WBndsSzrliPWaAGZRDsWy6tlLi8;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONPathFunction;-><init>(Ljava/util/function/Function;)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathFunction;->FUNC_NEGATIVE:Lcom/alibaba/fastjson2/JSONPathFunction;

    .line 23
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathFunction;

    sget-object v1, Lcom/alibaba/fastjson2/-$$Lambda$eTOMkwVCPpSMNSlKPeb77mrQ8Bc;->INSTANCE:Lcom/alibaba/fastjson2/-$$Lambda$eTOMkwVCPpSMNSlKPeb77mrQ8Bc;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONPathFunction;-><init>(Ljava/util/function/Function;)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathFunction;->FUNC_EXISTS:Lcom/alibaba/fastjson2/JSONPathFunction;

    .line 24
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathFunction;

    sget-object v1, Lcom/alibaba/fastjson2/-$$Lambda$DIgglDUSefKFcwp6YE3dgLCQqKc;->INSTANCE:Lcom/alibaba/fastjson2/-$$Lambda$DIgglDUSefKFcwp6YE3dgLCQqKc;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONPathFunction;-><init>(Ljava/util/function/Function;)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathFunction;->FUNC_LOWER:Lcom/alibaba/fastjson2/JSONPathFunction;

    .line 25
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathFunction;

    sget-object v1, Lcom/alibaba/fastjson2/-$$Lambda$mr_9rLCSE05q-4JLGVdDgm8eIME;->INSTANCE:Lcom/alibaba/fastjson2/-$$Lambda$mr_9rLCSE05q-4JLGVdDgm8eIME;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONPathFunction;-><init>(Ljava/util/function/Function;)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathFunction;->FUNC_UPPER:Lcom/alibaba/fastjson2/JSONPathFunction;

    .line 26
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathFunction;

    sget-object v1, Lcom/alibaba/fastjson2/-$$Lambda$2FhJPcje4_dvAdI5Fz18pRIzQCo;->INSTANCE:Lcom/alibaba/fastjson2/-$$Lambda$2FhJPcje4_dvAdI5Fz18pRIzQCo;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONPathFunction;-><init>(Ljava/util/function/Function;)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathFunction;->FUNC_TRIM:Lcom/alibaba/fastjson2/JSONPathFunction;

    .line 27
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathFunction;

    sget-object v1, Lcom/alibaba/fastjson2/-$$Lambda$6P-WWtFRVqVwN1d5dcmHqVY4F50;->INSTANCE:Lcom/alibaba/fastjson2/-$$Lambda$6P-WWtFRVqVwN1d5dcmHqVY4F50;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONPathFunction;-><init>(Ljava/util/function/Function;)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathFunction;->FUNC_FIRST:Lcom/alibaba/fastjson2/JSONPathFunction;

    .line 28
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathFunction;

    sget-object v1, Lcom/alibaba/fastjson2/-$$Lambda$z9o60YNa6--GAuZpGflUxVhepks;->INSTANCE:Lcom/alibaba/fastjson2/-$$Lambda$z9o60YNa6--GAuZpGflUxVhepks;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONPathFunction;-><init>(Ljava/util/function/Function;)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathFunction;->FUNC_LAST:Lcom/alibaba/fastjson2/JSONPathFunction;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONPathSegment;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONPathFunction;->function:Ljava/util/function/Function;

    return-void
.end method

.method static abs(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 253
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 254
    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_1

    neg-int p0, v0

    .line 256
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_1
    return-object p0

    .line 261
    :cond_2
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 262
    move-object v0, p0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    neg-long v0, v0

    .line 264
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :cond_3
    return-object p0

    .line 269
    :cond_4
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_6

    .line 270
    move-object v0, p0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-gez v0, :cond_5

    neg-int p0, v0

    int-to-byte p0, p0

    .line 272
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    :cond_5
    return-object p0

    .line 278
    :cond_6
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_8

    .line 279
    move-object v0, p0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    if-gez v0, :cond_7

    neg-int p0, v0

    int-to-short p0, p0

    .line 281
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    :cond_7
    return-object p0

    .line 287
    :cond_8
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_a

    .line 288
    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_9

    neg-double v0, v0

    .line 290
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :cond_9
    return-object p0

    .line 296
    :cond_a
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_c

    .line 297
    move-object v0, p0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_b

    neg-float p0, v0

    .line 299
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    :cond_b
    return-object p0

    .line 305
    :cond_c
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_d

    .line 306
    check-cast p0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    .line 309
    :cond_d
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_e

    .line 310
    check-cast p0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 313
    :cond_e
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_10

    .line 314
    check-cast p0, Ljava/util/List;

    .line 315
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    const/4 v1, 0x0

    .line 316
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_f

    .line 317
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 318
    invoke-static {v2}, Lcom/alibaba/fastjson2/JSONPathFunction;->abs(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_f
    return-object v0

    .line 323
    :cond_10
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "abs not support "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static ceil(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 67
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 68
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 71
    :cond_0
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 72
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 75
    :cond_1
    instance-of v0, p0, Ljava/math/BigDecimal;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 76
    check-cast p0, Ljava/math/BigDecimal;

    sget-object v0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-virtual {p0, v1, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    .line 79
    :cond_2
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_6

    .line 80
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    .line 81
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_6

    .line 82
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 83
    instance-of v5, v4, Ljava/lang/Double;

    if-eqz v5, :cond_3

    .line 84
    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 85
    :cond_3
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_4

    .line 86
    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 87
    :cond_4
    instance-of v5, v4, Ljava/math/BigDecimal;

    if-eqz v5, :cond_5

    .line 88
    check-cast v4, Ljava/math/BigDecimal;

    sget-object v5, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-virtual {v4, v1, v5}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method static exists(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 97
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static first(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 174
    :cond_0
    instance-of v1, p0, Lcom/alibaba/fastjson2/JSONPath$Sequence;

    if-eqz v1, :cond_1

    .line 175
    check-cast p0, Lcom/alibaba/fastjson2/JSONPath$Sequence;

    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONPath$Sequence;->values:Ljava/util/List;

    .line 178
    :cond_1
    instance-of v1, p0, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 179
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 183
    :cond_2
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 186
    :cond_3
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_5

    .line 187
    check-cast p0, Ljava/util/Collection;

    .line 188
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    .line 192
    :cond_4
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 195
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 196
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_6

    return-object v0

    .line 200
    :cond_6
    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    :cond_7
    return-object p0
.end method

.method static floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 37
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 38
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 41
    :cond_0
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 42
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 45
    :cond_1
    instance-of v0, p0, Ljava/math/BigDecimal;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 46
    check-cast p0, Ljava/math/BigDecimal;

    sget-object v0, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {p0, v1, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    .line 49
    :cond_2
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_6

    .line 50
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    .line 51
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_6

    .line 52
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 53
    instance-of v5, v4, Ljava/lang/Double;

    if-eqz v5, :cond_3

    .line 54
    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 55
    :cond_3
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_4

    .line 56
    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 57
    :cond_4
    instance-of v5, v4, Ljava/math/BigDecimal;

    if-eqz v5, :cond_5

    .line 58
    check-cast v4, Ljava/math/BigDecimal;

    sget-object v5, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v4, v1, v5}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method static last(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 211
    :cond_0
    instance-of v1, p0, Lcom/alibaba/fastjson2/JSONPath$Sequence;

    if-eqz v1, :cond_1

    .line 212
    check-cast p0, Lcom/alibaba/fastjson2/JSONPath$Sequence;

    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONPath$Sequence;->values:Ljava/util/List;

    .line 215
    :cond_1
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 216
    check-cast p0, Ljava/util/List;

    .line 217
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 221
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 224
    :cond_3
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_6

    .line 225
    check-cast p0, Ljava/util/Collection;

    .line 226
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    .line 231
    :cond_4
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_5
    return-object v0

    .line 237
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 238
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_7

    return-object v0

    :cond_7
    add-int/lit8 v1, v1, -0x1

    .line 242
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method static lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 357
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 358
    check-cast p0, Ljava/lang/String;

    goto :goto_0

    .line 360
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 362
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static negative(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 105
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 106
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_1

    int-to-long v0, p0

    neg-long v0, v0

    .line 108
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_1
    neg-int p0, p0

    .line 110
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 113
    :cond_2
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 114
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p0, v0, v2

    if-nez p0, :cond_3

    .line 116
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_3
    neg-long v0, v0

    .line 118
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 121
    :cond_4
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_6

    .line 122
    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    const/16 v0, -0x80

    if-ne p0, v0, :cond_5

    int-to-short p0, p0

    neg-int p0, p0

    .line 124
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_5
    neg-int p0, p0

    int-to-byte p0, p0

    .line 127
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 130
    :cond_6
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_8

    .line 131
    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    const/16 v0, -0x8000

    if-ne p0, v0, :cond_7

    neg-int p0, p0

    .line 133
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_7
    neg-int p0, p0

    int-to-short p0, p0

    .line 136
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 139
    :cond_8
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_9

    .line 140
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    neg-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 143
    :cond_9
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_a

    .line 144
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    neg-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 147
    :cond_a
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_b

    .line 148
    check-cast p0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    .line 151
    :cond_b
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_c

    .line 152
    check-cast p0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 155
    :cond_c
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_e

    .line 156
    check-cast p0, Ljava/util/List;

    .line 157
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    const/4 v1, 0x0

    .line 158
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_d

    .line 159
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 160
    invoke-static {v2}, Lcom/alibaba/fastjson2/JSONPathFunction;->negative(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 161
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_d
    return-object v0

    :cond_e
    return-object p0
.end method

.method static trim(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 383
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 384
    check-cast p0, Ljava/lang/String;

    goto :goto_0

    .line 386
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 388
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static type(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 331
    :cond_0
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    const-string p0, "array"

    return-object p0

    .line 335
    :cond_1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    const-string p0, "number"

    return-object p0

    .line 339
    :cond_2
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    const-string p0, "boolean"

    return-object p0

    .line 343
    :cond_3
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/util/UUID;

    if-nez v0, :cond_5

    instance-of p0, p0, Ljava/lang/Enum;

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    const-string p0, "object"

    return-object p0

    :cond_5
    :goto_0
    const-string/jumbo p0, "string"

    return-object p0
.end method

.method static upper(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 370
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 371
    check-cast p0, Ljava/lang/String;

    goto :goto_0

    .line 373
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 375
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public accept(Lcom/alibaba/fastjson2/JSONReader;Lcom/alibaba/fastjson2/JSONPath$Context;)V
    .locals 1

    .line 393
    iget-object v0, p2, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    if-nez v0, :cond_0

    .line 394
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p2, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 395
    iput-boolean p1, p2, Lcom/alibaba/fastjson2/JSONPath$Context;->eval:Z

    .line 397
    :cond_0
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONPathFunction;->eval(Lcom/alibaba/fastjson2/JSONPath$Context;)V

    return-void
.end method

.method public eval(Lcom/alibaba/fastjson2/JSONPath$Context;)V
    .locals 2

    .line 402
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    goto :goto_0

    .line 404
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    .line 406
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathFunction;->function:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    return-void
.end method
