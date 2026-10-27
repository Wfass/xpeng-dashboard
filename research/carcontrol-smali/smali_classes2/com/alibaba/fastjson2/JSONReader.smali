.class public abstract Lcom/alibaba/fastjson2/JSONReader;
.super Ljava/lang/Object;
.source "JSONReader.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/JSONReader$Context;,
        Lcom/alibaba/fastjson2/JSONReader$Feature;,
        Lcom/alibaba/fastjson2/JSONReader$ResolveTask;,
        Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;,
        Lcom/alibaba/fastjson2/JSONReader$BigIntegerCreator;,
        Lcom/alibaba/fastjson2/JSONReader$SavePoint;
    }
.end annotation


# static fields
.field static final EOI:C = '\u001a'

.field static final JSON_TYPE_ARRAY:B = 0x7t

.field static final JSON_TYPE_BIG_DEC:B = 0x8t

.field static final JSON_TYPE_BOOL:B = 0x4t

.field static final JSON_TYPE_DEC:B = 0x2t

.field static final JSON_TYPE_DOUBLE:B = 0xdt

.field static final JSON_TYPE_FLOAT:B = 0xct

.field static final JSON_TYPE_INT:B = 0x1t

.field static final JSON_TYPE_INT16:B = 0xat

.field static final JSON_TYPE_INT64:B = 0xbt

.field static final JSON_TYPE_INT8:B = 0x9t

.field static final JSON_TYPE_NULL:B = 0x5t

.field static final JSON_TYPE_OBJECT:B = 0x6t

.field static final JSON_TYPE_STRING:B = 0x3t

.field static final MAX_EXP:I = 0x3ff

.field static final SPACE:J = 0x100003700L


# instance fields
.field protected boolValue:Z

.field protected ch:C

.field protected comma:Z

.field protected complex:Ljava/lang/Object;

.field protected final context:Lcom/alibaba/fastjson2/JSONReader$Context;

.field protected doubleChars:[C

.field protected exponent:S

.field public final jsonb:Z

.field protected level:I

.field protected mag0:I

.field protected mag1:I

.field protected mag2:I

.field protected mag3:I

.field protected nameEscape:Z

.field protected negative:Z

.field protected offset:I

.field resolveTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/JSONReader$ResolveTask;",
            ">;"
        }
    .end annotation
.end field

.field protected scale:S

.field protected stringValue:Ljava/lang/String;

.field protected typeRedirect:Z

.field public final utf8:Z

.field protected valueEscape:Z

.field protected valueType:B

.field protected wasNull:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/JSONReader$Context;ZZ)V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 119
    iput-boolean p2, p0, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    .line 120
    iput-boolean p3, p0, Lcom/alibaba/fastjson2/JSONReader;->utf8:Z

    return-void
.end method

.method public static varargs autoTypeFilter(Z[Ljava/lang/Class;)Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;
    .locals 1

    .line 3982
    new-instance v0, Lcom/alibaba/fastjson2/filter/ContextAutoTypeBeforeHandler;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/filter/ContextAutoTypeBeforeHandler;-><init>(Z[Ljava/lang/Class;)V

    return-object v0
.end method

.method public static varargs autoTypeFilter(Z[Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;
    .locals 1

    .line 3974
    new-instance v0, Lcom/alibaba/fastjson2/filter/ContextAutoTypeBeforeHandler;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/filter/ContextAutoTypeBeforeHandler;-><init>(Z[Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs autoTypeFilter([Ljava/lang/Class;)Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;
    .locals 1

    .line 3978
    new-instance v0, Lcom/alibaba/fastjson2/filter/ContextAutoTypeBeforeHandler;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/filter/ContextAutoTypeBeforeHandler;-><init>([Ljava/lang/Class;)V

    return-object v0
.end method

.method public static varargs autoTypeFilter([Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;
    .locals 1

    .line 3970
    new-instance v0, Lcom/alibaba/fastjson2/filter/ContextAutoTypeBeforeHandler;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/filter/ContextAutoTypeBeforeHandler;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method static char2(II)C
    .locals 1

    .line 574
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->DIGITS2:[I

    aget p0, v0, p0

    mul-int/lit8 p0, p0, 0x10

    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->DIGITS2:[I

    aget p1, v0, p1

    add-int/2addr p0, p1

    int-to-char p0, p0

    return p0
.end method

.method static char4(IIII)C
    .locals 1

    .line 579
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->DIGITS2:[I

    aget p0, v0, p0

    mul-int/lit16 p0, p0, 0x1000

    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->DIGITS2:[I

    aget p1, v0, p1

    mul-int/lit16 p1, p1, 0x100

    add-int/2addr p0, p1

    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->DIGITS2:[I

    aget p1, p1, p2

    mul-int/lit8 p1, p1, 0x10

    add-int/2addr p0, p1

    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->DIGITS2:[I

    aget p1, p1, p3

    add-int/2addr p0, p1

    int-to-char p0, p0

    return p0
.end method

.method static isFirstIdentifier(C)Z
    .locals 1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_4

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_4

    :cond_1
    const/16 v0, 0x5f

    if-eq p0, v0, :cond_4

    const/16 v0, 0x24

    if-eq p0, v0, :cond_4

    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v0, 0x39

    if-le p0, v0, :cond_4

    :cond_2
    const/16 v0, 0x7f

    if-le p0, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static of(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3515
    invoke-static {p1, p0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lcom/alibaba/fastjson2/JSONReader$Context;[B)Lcom/alibaba/fastjson2/JSONReader;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3193
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->PREDICATE_IS_ASCII:Ljava/util/function/Predicate;

    if-eqz v0, :cond_0

    .line 3194
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->PREDICATE_IS_ASCII:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 3198
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_ASCII:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

    if-eqz v0, :cond_1

    .line 3199
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_ASCII:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

    const/4 v3, 0x0

    const/4 v5, 0x0

    array-length v6, p1

    move-object v2, p0

    move-object v4, p1

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;->create(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    return-object p0

    .line 3202
    :cond_1
    new-instance v6, Lcom/alibaba/fastjson2/JSONReaderASCII;

    const/4 v2, 0x0

    const/4 v4, 0x0

    array-length v5, p1

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderASCII;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    return-object v6

    .line 3205
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_UTF8:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

    if-eqz v0, :cond_3

    .line 3206
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_UTF8:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

    const/4 v3, 0x0

    const/4 v5, 0x0

    array-length v6, p1

    move-object v2, p0

    move-object v4, p1

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;->create(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    return-object p0

    .line 3208
    :cond_3
    new-instance v6, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    const/4 v2, 0x0

    const/4 v4, 0x0

    array-length v5, p1

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    return-object v6
.end method

.method public static of(Lcom/alibaba/fastjson2/JSONReader$Context;[C)Lcom/alibaba/fastjson2/JSONReader;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3255
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_UTF16:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF16Creator;

    if-eqz v0, :cond_0

    .line 3256
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_UTF16:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF16Creator;

    const/4 v3, 0x0

    const/4 v5, 0x0

    array-length v6, p1

    move-object v2, p0

    move-object v4, p1

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF16Creator;->create(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[CII)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    return-object p0

    .line 3264
    :cond_0
    new-instance v6, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    const/4 v2, 0x0

    const/4 v4, 0x0

    array-length v5, p1

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[CII)V

    return-object v6
.end method

.method public static of(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 1

    .line 3465
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    .line 3466
    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 1

    .line 3470
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 3474
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    if-ne p1, v0, :cond_1

    .line 3475
    new-instance p1, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/io/InputStream;)V

    return-object p1

    .line 3478
    :cond_1
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not support charset "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3471
    :cond_2
    :goto_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/io/InputStream;)V

    return-object p1
.end method

.method public static of(Ljava/io/Reader;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 2

    .line 3482
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 3483
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/io/Reader;)V

    return-object v0
.end method

.method public static of(Ljava/io/Reader;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 1

    .line 3489
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    invoke-direct {v0, p1, p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/io/Reader;)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 7

    .line 3520
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3523
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v1

    .line 3524
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_VALUE:Ljava/util/function/Function;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CODER:Ljava/util/function/ToIntFunction;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->PREDICATE_IS_ASCII:Ljava/util/function/Predicate;

    if-eqz v0, :cond_1

    .line 3527
    :try_start_0
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CODER:Ljava/util/function/ToIntFunction;

    invoke-interface {v0, p0}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    .line 3529
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_VALUE:Ljava/util/function/Function;

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [B

    .line 3530
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->PREDICATE_IS_ASCII:Ljava/util/function/Predicate;

    invoke-interface {v0, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3531
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_ASCII:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

    if-eqz v0, :cond_0

    .line 3532
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_ASCII:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

    const/4 v4, 0x0

    array-length v5, v3

    move-object v2, p0

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;->create(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    return-object p0

    .line 3534
    :cond_0
    new-instance v6, Lcom/alibaba/fastjson2/JSONReaderASCII;

    const/4 v4, 0x0

    array-length v5, v3

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderASCII;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 3539
    :catch_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo v0, "unsafe get String.coder error"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3543
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 3544
    sget v0, Lcom/alibaba/fastjson2/util/JDKUtils;->JVM_VERSION:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    .line 3545
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/JDKUtils;->getCharArray(Ljava/lang/String;)[C

    move-result-object v3

    .line 3546
    new-instance v6, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[CII)V

    return-object v6

    .line 3549
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_UTF16:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF16Creator;

    if-eqz v0, :cond_3

    .line 3550
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_UTF16:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF16Creator;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF16Creator;->create(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[CII)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    return-object p0

    .line 3558
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, v5}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;II)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;II)Lcom/alibaba/fastjson2/JSONReader;
    .locals 7

    .line 3605
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3608
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v1

    .line 3609
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_VALUE:Ljava/util/function/Function;

    if-eqz v0, :cond_1

    .line 3612
    :try_start_0
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CODER:Ljava/util/function/ToIntFunction;

    invoke-interface {v0, p0}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    .line 3614
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_VALUE:Ljava/util/function/Function;

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [B

    .line 3615
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_ASCII:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

    if-eqz v0, :cond_0

    .line 3616
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_ASCII:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;->create(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    return-object p0

    .line 3618
    :cond_0
    new-instance v6, Lcom/alibaba/fastjson2/JSONReaderASCII;

    move-object v0, v6

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderASCII;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 3622
    :catch_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo p1, "unsafe get String.coder error"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3627
    :cond_1
    sget v0, Lcom/alibaba/fastjson2/util/JDKUtils;->JVM_VERSION:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    .line 3628
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/JDKUtils;->getCharArray(Ljava/lang/String;)[C

    move-result-object v0

    goto :goto_0

    .line 3630
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_0
    move-object v3, v0

    .line 3633
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_UTF16:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF16Creator;

    if-eqz v0, :cond_3

    .line 3634
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_UTF16:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF16Creator;

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF16Creator;->create(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[CII)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    return-object p0

    .line 3642
    :cond_3
    new-instance v6, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    move-object v0, v6

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[CII)V

    return-object v6
.end method

.method public static of(Ljava/lang/String;IILcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 7

    if-eqz p0, :cond_4

    if-eqz p3, :cond_4

    .line 3650
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_VALUE:Ljava/util/function/Function;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CODER:Ljava/util/function/ToIntFunction;

    if-eqz v0, :cond_1

    .line 3653
    :try_start_0
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CODER:Ljava/util/function/ToIntFunction;

    invoke-interface {v0, p0}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    .line 3655
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_VALUE:Ljava/util/function/Function;

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [B

    .line 3656
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_ASCII:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

    if-eqz v0, :cond_0

    .line 3657
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_ASCII:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

    move-object v2, p3

    move-object v3, p0

    move v5, p1

    move v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;->create(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    return-object p0

    .line 3659
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderASCII;

    move-object v1, v0

    move-object v2, p3

    move-object v3, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReaderASCII;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3663
    :catch_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo p1, "unsafe get String.coder error"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3668
    :cond_1
    sget v0, Lcom/alibaba/fastjson2/util/JDKUtils;->JVM_VERSION:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 3669
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/JDKUtils;->getCharArray(Ljava/lang/String;)[C

    move-result-object v0

    goto :goto_0

    .line 3671
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_0
    move-object v4, v0

    .line 3674
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_UTF16:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF16Creator;

    if-eqz v0, :cond_3

    .line 3675
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_UTF16:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF16Creator;

    move-object v2, p3

    move-object v3, p0

    move v5, p1

    move v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF16Creator;->create(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[CII)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    return-object p0

    .line 3683
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    move-object v1, v0

    move-object v2, p3

    move-object v3, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[CII)V

    return-object v0

    :cond_4
    const/4 p0, 0x0

    .line 3647
    throw p0
.end method

.method public static of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 7

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 3566
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_VALUE:Ljava/util/function/Function;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CODER:Ljava/util/function/ToIntFunction;

    if-eqz v0, :cond_1

    .line 3569
    :try_start_0
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CODER:Ljava/util/function/ToIntFunction;

    invoke-interface {v0, p0}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    .line 3571
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_VALUE:Ljava/util/function/Function;

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [B

    .line 3572
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_ASCII:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

    if-eqz v0, :cond_0

    .line 3573
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_ASCII:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

    const/4 v5, 0x0

    array-length v6, v4

    move-object v2, p1

    move-object v3, p0

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;->create(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    return-object p0

    .line 3575
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderASCII;

    const/4 v5, 0x0

    array-length v6, v4

    move-object v1, v0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReaderASCII;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3579
    :catch_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo p1, "unsafe get String.coder error"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3583
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 3585
    sget v0, Lcom/alibaba/fastjson2/util/JDKUtils;->JVM_VERSION:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 3586
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/JDKUtils;->getCharArray(Ljava/lang/String;)[C

    move-result-object v0

    goto :goto_0

    .line 3588
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_0
    move-object v3, v0

    .line 3591
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_UTF16:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF16Creator;

    if-eqz v0, :cond_3

    .line 3592
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_UTF16:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF16Creator;

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF16Creator;->create(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[CII)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    return-object p0

    .line 3600
    :cond_3
    new-instance v6, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[CII)V

    return-object v6

    :cond_4
    const/4 p0, 0x0

    .line 3563
    throw p0
.end method

.method public static of(Ljava/net/URL;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3459
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0

    .line 3460
    :try_start_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0, p1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 3461
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 3459
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method

.method public static of(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 2

    .line 3496
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    .line 3498
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eq p1, v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3502
    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not support charset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3499
    :cond_1
    :goto_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/nio/ByteBuffer;)V

    return-object p1
.end method

.method public static of(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 1

    .line 3506
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3510
    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not support charset "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3507
    :cond_1
    :goto_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/nio/ByteBuffer;)V

    return-object p1
.end method

.method public static of([B)Lcom/alibaba/fastjson2/JSONReader;
    .locals 7

    .line 3170
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->PREDICATE_IS_ASCII:Ljava/util/function/Predicate;

    if-eqz v0, :cond_0

    .line 3171
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->PREDICATE_IS_ASCII:Ljava/util/function/Predicate;

    invoke-interface {v0, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3174
    :goto_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v2

    if-eqz v0, :cond_2

    .line 3176
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_ASCII:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

    if-eqz v0, :cond_1

    .line 3177
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_ASCII:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

    const/4 v3, 0x0

    const/4 v5, 0x0

    array-length v6, p0

    move-object v4, p0

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;->create(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    return-object p0

    .line 3180
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderASCII;

    const/4 v3, 0x0

    const/4 v5, 0x0

    array-length v6, p0

    move-object v1, v0

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReaderASCII;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    return-object v0

    .line 3183
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_UTF8:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

    if-eqz v0, :cond_3

    .line 3184
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_UTF8:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

    const/4 v3, 0x0

    const/4 v5, 0x0

    array-length v6, p0

    move-object v4, p0

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;->create(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    return-object p0

    .line 3186
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    const/4 v3, 0x0

    const/4 v5, 0x0

    array-length v6, p0

    move-object v1, v0

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    return-object v0
.end method

.method public static of([BII)Lcom/alibaba/fastjson2/JSONReader;
    .locals 7

    .line 3414
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v1

    .line 3415
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_UTF8:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

    if-eqz v0, :cond_0

    .line 3416
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_UTF8:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

    const/4 v2, 0x0

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;->create(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    return-object p0

    .line 3418
    :cond_0
    new-instance v6, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    const/4 v2, 0x0

    move-object v0, v6

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    return-object v6
.end method

.method public static of([BIILcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 7

    .line 3423
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_UTF8:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

    if-eqz v0, :cond_0

    .line 3424
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_UTF8:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

    const/4 v3, 0x0

    move-object v2, p3

    move-object v4, p0

    move v5, p1

    move v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;->create(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    return-object p0

    .line 3426
    :cond_0
    new-instance v6, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p3

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    return-object v6
.end method

.method public static of([BIILjava/nio/charset/Charset;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 6

    .line 3343
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v1

    .line 3345
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    if-ne p3, v0, :cond_1

    .line 3346
    sget-object p3, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_UTF8:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

    if-eqz p3, :cond_0

    .line 3347
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_UTF8:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

    const/4 v2, 0x0

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;->create(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    return-object p0

    .line 3349
    :cond_0
    new-instance p3, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    const/4 v2, 0x0

    move-object v0, p3

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    return-object p3

    .line 3353
    :cond_1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    if-ne p3, v0, :cond_2

    .line 3354
    new-instance p3, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    invoke-direct {p3, v1, p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    return-object p3

    .line 3357
    :cond_2
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    if-eq p3, v0, :cond_4

    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    if-ne p3, v0, :cond_3

    goto :goto_0

    .line 3365
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "not support charset "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3358
    :cond_4
    :goto_0
    sget-object p3, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_ASCII:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

    if-eqz p3, :cond_5

    .line 3359
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_ASCII:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

    const/4 v2, 0x0

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;->create(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    return-object p0

    .line 3361
    :cond_5
    new-instance p3, Lcom/alibaba/fastjson2/JSONReaderASCII;

    const/4 v2, 0x0

    move-object v0, p3

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderASCII;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    return-object p3
.end method

.method public static of([BIILjava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 6

    .line 3369
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    if-ne p3, v0, :cond_5

    if-nez p1, :cond_0

    .line 3370
    array-length p3, p0

    if-ne p3, p2, :cond_0

    .line 3371
    invoke-static {p0, p4}, Lcom/alibaba/fastjson2/JSONReader;->of([BLcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p3, 0x1

    .line 3375
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->METHOD_HANDLE_HAS_NEGATIVE:Ljava/lang/invoke/MethodHandle;

    if-eqz v0, :cond_1

    .line 3377
    :try_start_0
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->METHOD_HANDLE_HAS_NEGATIVE:Ljava/lang/invoke/MethodHandle;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-polymorphic {v0, p0, v1, v2}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, ([BII)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    if-nez p3, :cond_3

    .line 3384
    sget-object p3, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_ASCII:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

    if-eqz p3, :cond_2

    .line 3385
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_ASCII:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

    const/4 v2, 0x0

    move-object v1, p4

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;->create(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    return-object p0

    .line 3387
    :cond_2
    new-instance p3, Lcom/alibaba/fastjson2/JSONReaderASCII;

    const/4 v2, 0x0

    move-object v0, p3

    move-object v1, p4

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderASCII;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    return-object p3

    .line 3391
    :cond_3
    sget-object p3, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_UTF8:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

    if-eqz p3, :cond_4

    .line 3392
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_UTF8:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

    const/4 v2, 0x0

    move-object v1, p4

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;->create(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    return-object p0

    .line 3394
    :cond_4
    new-instance p3, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    const/4 v2, 0x0

    move-object v0, p3

    move-object v1, p4

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    return-object p3

    .line 3398
    :cond_5
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    if-ne p3, v0, :cond_6

    .line 3399
    new-instance p3, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    invoke-direct {p3, p4, p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    return-object p3

    .line 3402
    :cond_6
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    if-eq p3, v0, :cond_8

    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    if-ne p3, v0, :cond_7

    goto :goto_0

    .line 3410
    :cond_7
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "not support charset "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3403
    :cond_8
    :goto_0
    sget-object p3, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_ASCII:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

    if-eqz p3, :cond_9

    .line 3404
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_ASCII:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

    const/4 v2, 0x0

    move-object v1, p4

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;->create(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    return-object p0

    .line 3406
    :cond_9
    new-instance p3, Lcom/alibaba/fastjson2/JSONReaderASCII;

    const/4 v2, 0x0

    move-object v0, p3

    move-object v1, p4

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderASCII;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    return-object p3
.end method

.method public static of([BLcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 7

    .line 3214
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->PREDICATE_IS_ASCII:Ljava/util/function/Predicate;

    if-eqz v0, :cond_0

    .line 3215
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->PREDICATE_IS_ASCII:Ljava/util/function/Predicate;

    invoke-interface {v0, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 3219
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_ASCII:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

    if-eqz v0, :cond_1

    .line 3220
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_ASCII:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

    const/4 v3, 0x0

    const/4 v5, 0x0

    array-length v6, p0

    move-object v2, p1

    move-object v4, p0

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;->create(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    return-object p0

    .line 3223
    :cond_1
    new-instance v6, Lcom/alibaba/fastjson2/JSONReaderASCII;

    const/4 v2, 0x0

    const/4 v4, 0x0

    array-length v5, p0

    move-object v0, v6

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderASCII;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    return-object v6

    .line 3226
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_UTF8:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

    if-eqz v0, :cond_3

    .line 3227
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_UTF8:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

    const/4 v3, 0x0

    const/4 v5, 0x0

    array-length v6, p0

    move-object v2, p1

    move-object v4, p0

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;->create(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    return-object p0

    .line 3229
    :cond_3
    new-instance v6, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    const/4 v2, 0x0

    const/4 v4, 0x0

    array-length v5, p0

    move-object v0, v6

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    return-object v6
.end method

.method public static of([C)Lcom/alibaba/fastjson2/JSONReader;
    .locals 7

    .line 3234
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v1

    .line 3236
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_UTF16:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF16Creator;

    if-eqz v0, :cond_0

    .line 3237
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_UTF16:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF16Creator;

    const/4 v2, 0x0

    const/4 v4, 0x0

    array-length v5, p0

    move-object v3, p0

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF16Creator;->create(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[CII)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    return-object p0

    .line 3245
    :cond_0
    new-instance v6, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    const/4 v2, 0x0

    const/4 v4, 0x0

    array-length v5, p0

    move-object v0, v6

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[CII)V

    return-object v6
.end method

.method public static of([CII)Lcom/alibaba/fastjson2/JSONReader;
    .locals 7

    .line 3431
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v1

    .line 3433
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_UTF16:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF16Creator;

    if-eqz v0, :cond_0

    .line 3434
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_UTF16:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF16Creator;

    const/4 v2, 0x0

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF16Creator;->create(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[CII)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    return-object p0

    .line 3442
    :cond_0
    new-instance v6, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    const/4 v2, 0x0

    move-object v0, v6

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[CII)V

    return-object v6
.end method

.method public static of([CIILcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 7

    .line 3446
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_UTF16:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF16Creator;

    if-eqz v0, :cond_0

    .line 3447
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_UTF16:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF16Creator;

    const/4 v3, 0x0

    move-object v2, p3

    move-object v4, p0

    move v5, p1

    move v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF16Creator;->create(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[CII)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    return-object p0

    .line 3455
    :cond_0
    new-instance v6, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p3

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[CII)V

    return-object v6
.end method

.method public static of([CLcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 7

    .line 3274
    new-instance v6, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    array-length v5, p0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[CII)V

    return-object v6
.end method

.method public static ofJSONB(Lcom/alibaba/fastjson2/JSONReader$Context;[B)Lcom/alibaba/fastjson2/JSONReader;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3293
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    return-object v0
.end method

.method public static ofJSONB([B)Lcom/alibaba/fastjson2/JSONReader;
    .locals 4

    .line 3284
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 3285
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v1

    array-length v2, p0

    const/4 v3, 0x0

    invoke-direct {v0, v1, p0, v3, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    return-object v0
.end method

.method public static ofJSONB([BII)Lcom/alibaba/fastjson2/JSONReader;
    .locals 2

    .line 3319
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 3320
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    return-object v0
.end method

.method public static ofJSONB([BIILcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 1

    .line 3327
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    invoke-direct {v0, p3, p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    return-object v0
.end method

.method public static ofJSONB([BIILcom/alibaba/fastjson2/SymbolTable;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 1

    .line 3335
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 3336
    invoke-static {p3}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext(Lcom/alibaba/fastjson2/SymbolTable;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p3

    invoke-direct {v0, p3, p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    return-object v0
.end method

.method public static ofJSONB([BLcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 3

    .line 3301
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v2, v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    return-object v0
.end method

.method public static varargs ofJSONB([B[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 3

    .line 3309
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    .line 3310
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->config([Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 3311
    new-instance p1, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-direct {p1, v0, p0, v2, v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    return-object p1
.end method


# virtual methods
.method public final addResolveTask(Lcom/alibaba/fastjson2/reader/FieldReader;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V
    .locals 3

    .line 616
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 617
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$ResolveTask;

    iget-object v2, p1, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2, p3}, Lcom/alibaba/fastjson2/JSONReader$ResolveTask;-><init>(Lcom/alibaba/fastjson2/reader/FieldReader;Ljava/lang/Object;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addResolveTask(Ljava/util/Collection;ILcom/alibaba/fastjson2/JSONPath;)V
    .locals 3

    .line 633
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 634
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$ResolveTask;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONReader$ResolveTask;-><init>(Lcom/alibaba/fastjson2/reader/FieldReader;Ljava/lang/Object;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addResolveTask(Ljava/util/Map;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V
    .locals 3

    .line 623
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 624
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 626
    :cond_0
    instance-of v0, p1, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 627
    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$ResolveTask;

    invoke-direct {v2, v1, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONReader$ResolveTask;-><init>(Lcom/alibaba/fastjson2/reader/FieldReader;Ljava/lang/Object;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addResolveTask([Ljava/lang/Object;ILcom/alibaba/fastjson2/JSONPath;)V
    .locals 3

    .line 640
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 641
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$ResolveTask;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONReader$ResolveTask;-><init>(Lcom/alibaba/fastjson2/reader/FieldReader;Ljava/lang/Object;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final bigInt([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    sub-int v4, v3, v2

    .line 3827
    iget-short v5, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    if-lez v5, :cond_0

    add-int/lit8 v4, v4, -0x1

    :cond_0
    const/16 v5, 0x26

    if-gt v4, v5, :cond_13

    const/16 v5, 0x9

    .line 3835
    rem-int/2addr v4, v5

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    add-int v4, v2, v5

    add-int/lit8 v5, v2, 0x1

    .line 3844
    aget-byte v2, v1, v2

    int-to-char v2, v2

    const/16 v6, 0x2e

    if-ne v2, v6, :cond_2

    add-int/lit8 v2, v5, 0x1

    .line 3846
    aget-byte v5, v1, v5

    int-to-char v5, v5

    add-int/lit8 v7, v4, 0x1

    move/from16 v18, v5

    move v5, v2

    move/from16 v2, v18

    goto :goto_1

    :cond_2
    move v7, v4

    :goto_1
    add-int/lit8 v2, v2, -0x30

    :goto_2
    const/4 v8, 0x1

    if-ge v5, v4, :cond_4

    .line 3854
    aget-byte v9, v1, v5

    int-to-char v9, v9

    if-ne v9, v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    .line 3856
    aget-byte v9, v1, v5

    int-to-char v9, v9

    add-int/lit8 v7, v7, 0x1

    if-ge v4, v3, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    add-int/lit8 v9, v9, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v9

    add-int/2addr v5, v8

    goto :goto_2

    .line 3866
    :cond_4
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    :goto_3
    if-ge v7, v3, :cond_12

    add-int/lit8 v2, v7, 0x9

    add-int/lit8 v4, v7, 0x1

    .line 3876
    aget-byte v5, v1, v7

    int-to-char v5, v5

    if-ne v5, v6, :cond_5

    add-int/lit8 v5, v4, 0x1

    .line 3878
    aget-byte v4, v1, v4

    int-to-char v4, v4

    add-int/lit8 v2, v2, 0x1

    move v7, v4

    goto :goto_4

    :cond_5
    move v7, v5

    move v5, v4

    :goto_4
    move v4, v2

    add-int/lit8 v7, v7, -0x30

    :goto_5
    if-ge v5, v2, :cond_7

    .line 3886
    aget-byte v9, v1, v5

    int-to-char v9, v9

    if-ne v9, v6, :cond_6

    add-int/lit8 v5, v5, 0x1

    .line 3888
    aget-byte v9, v1, v5

    int-to-char v9, v9

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    :cond_6
    add-int/lit8 v9, v9, -0x30

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v7, v9

    add-int/2addr v5, v8

    goto :goto_5

    :cond_7
    const-wide/32 v9, 0x3b9aca00

    int-to-long v11, v7

    const-wide v13, 0xffffffffL

    and-long/2addr v11, v13

    const-wide/16 v15, 0x0

    const/4 v2, 0x3

    move v5, v2

    :goto_6
    const-string v7, "BigInteger would overflow supported range"

    const/4 v6, 0x2

    const/16 v17, 0x20

    if-ltz v5, :cond_c

    if-eqz v5, :cond_b

    if-eq v5, v8, :cond_a

    if-eq v5, v6, :cond_9

    if-ne v5, v2, :cond_8

    .line 3920
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    int-to-long v6, v6

    and-long/2addr v6, v13

    mul-long/2addr v6, v9

    add-long/2addr v6, v15

    long-to-int v15, v6

    .line 3921
    iput v15, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    goto :goto_7

    .line 3924
    :cond_8
    new-instance v1, Ljava/lang/ArithmeticException;

    invoke-direct {v1, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3916
    :cond_9
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    int-to-long v6, v6

    and-long/2addr v6, v13

    mul-long/2addr v6, v9

    add-long/2addr v6, v15

    long-to-int v15, v6

    .line 3917
    iput v15, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    goto :goto_7

    .line 3912
    :cond_a
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    int-to-long v6, v6

    and-long/2addr v6, v13

    mul-long/2addr v6, v9

    add-long/2addr v6, v15

    long-to-int v15, v6

    .line 3913
    iput v15, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    goto :goto_7

    .line 3908
    :cond_b
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    int-to-long v6, v6

    and-long/2addr v6, v13

    mul-long/2addr v6, v9

    add-long/2addr v6, v15

    long-to-int v15, v6

    .line 3909
    iput v15, v0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    :goto_7
    ushr-long v15, v6, v17

    add-int/lit8 v5, v5, -0x1

    const/16 v6, 0x2e

    goto :goto_6

    .line 3929
    :cond_c
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    int-to-long v9, v5

    and-long/2addr v9, v13

    add-long/2addr v9, v11

    long-to-int v5, v9

    .line 3930
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    ushr-long v9, v9, v17

    move v5, v6

    :goto_8
    if-ltz v5, :cond_11

    if-eqz v5, :cond_10

    if-eq v5, v8, :cond_f

    if-eq v5, v6, :cond_e

    if-ne v5, v2, :cond_d

    .line 3949
    iget v11, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    int-to-long v11, v11

    and-long/2addr v11, v13

    add-long/2addr v11, v9

    long-to-int v9, v11

    .line 3950
    iput v9, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    goto :goto_9

    .line 3953
    :cond_d
    new-instance v1, Ljava/lang/ArithmeticException;

    invoke-direct {v1, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3945
    :cond_e
    iget v11, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    int-to-long v11, v11

    and-long/2addr v11, v13

    add-long/2addr v11, v9

    long-to-int v9, v11

    .line 3946
    iput v9, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    goto :goto_9

    .line 3941
    :cond_f
    iget v11, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    int-to-long v11, v11

    and-long/2addr v11, v13

    add-long/2addr v11, v9

    long-to-int v9, v11

    .line 3942
    iput v9, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    goto :goto_9

    .line 3937
    :cond_10
    iget v11, v0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    int-to-long v11, v11

    and-long/2addr v11, v13

    add-long/2addr v11, v9

    long-to-int v9, v11

    .line 3938
    iput v9, v0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    :goto_9
    ushr-long v9, v11, v17

    add-int/lit8 v5, v5, -0x1

    goto :goto_8

    :cond_11
    move v7, v4

    const/16 v6, 0x2e

    goto/16 :goto_3

    :cond_12
    return-void

    .line 3831
    :cond_13
    new-instance v3, Lcom/alibaba/fastjson2/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "number too large : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1, v2, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method final bigInt([CII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    sub-int v4, v3, v2

    .line 3690
    iget-short v5, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    if-lez v5, :cond_0

    add-int/lit8 v4, v4, -0x1

    :cond_0
    const/16 v5, 0x26

    if-gt v4, v5, :cond_13

    const/16 v5, 0x9

    .line 3698
    rem-int/2addr v4, v5

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    add-int v4, v2, v5

    add-int/lit8 v5, v2, 0x1

    .line 3707
    aget-char v2, v1, v2

    const/16 v6, 0x2e

    if-ne v2, v6, :cond_2

    add-int/lit8 v2, v5, 0x1

    .line 3709
    aget-char v5, v1, v5

    add-int/lit8 v7, v4, 0x1

    move/from16 v18, v5

    move v5, v2

    move/from16 v2, v18

    goto :goto_1

    :cond_2
    move v7, v4

    :goto_1
    add-int/lit8 v2, v2, -0x30

    :goto_2
    const/4 v8, 0x1

    if-ge v5, v4, :cond_4

    .line 3717
    aget-char v9, v1, v5

    if-ne v9, v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    .line 3719
    aget-char v9, v1, v5

    add-int/lit8 v7, v7, 0x1

    if-ge v4, v3, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    add-int/lit8 v9, v9, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v9

    add-int/2addr v5, v8

    goto :goto_2

    .line 3729
    :cond_4
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    :goto_3
    if-ge v7, v3, :cond_12

    add-int/lit8 v2, v7, 0x9

    add-int/lit8 v4, v7, 0x1

    .line 3739
    aget-char v5, v1, v7

    if-ne v5, v6, :cond_5

    add-int/lit8 v5, v4, 0x1

    .line 3741
    aget-char v4, v1, v4

    add-int/lit8 v2, v2, 0x1

    move v7, v4

    goto :goto_4

    :cond_5
    move v7, v5

    move v5, v4

    :goto_4
    move v4, v2

    add-int/lit8 v7, v7, -0x30

    :goto_5
    if-ge v5, v2, :cond_7

    .line 3749
    aget-char v9, v1, v5

    if-ne v9, v6, :cond_6

    add-int/lit8 v5, v5, 0x1

    .line 3751
    aget-char v9, v1, v5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    :cond_6
    add-int/lit8 v9, v9, -0x30

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v7, v9

    add-int/2addr v5, v8

    goto :goto_5

    :cond_7
    const-wide/32 v9, 0x3b9aca00

    const-wide/16 v11, 0x0

    const/4 v2, 0x3

    move v5, v2

    :goto_6
    const-string v13, "BigInteger would overflow supported range"

    const/4 v14, 0x2

    const/16 v15, 0x20

    const-wide v16, 0xffffffffL

    if-ltz v5, :cond_c

    if-eqz v5, :cond_b

    if-eq v5, v8, :cond_a

    if-eq v5, v14, :cond_9

    if-ne v5, v2, :cond_8

    .line 3782
    iget v13, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    int-to-long v13, v13

    and-long v13, v13, v16

    mul-long/2addr v13, v9

    add-long/2addr v13, v11

    long-to-int v11, v13

    .line 3783
    iput v11, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    goto :goto_7

    .line 3786
    :cond_8
    new-instance v1, Ljava/lang/ArithmeticException;

    invoke-direct {v1, v13}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3778
    :cond_9
    iget v13, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    int-to-long v13, v13

    and-long v13, v13, v16

    mul-long/2addr v13, v9

    add-long/2addr v13, v11

    long-to-int v11, v13

    .line 3779
    iput v11, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    goto :goto_7

    .line 3774
    :cond_a
    iget v13, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    int-to-long v13, v13

    and-long v13, v13, v16

    mul-long/2addr v13, v9

    add-long/2addr v13, v11

    long-to-int v11, v13

    .line 3775
    iput v11, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    goto :goto_7

    .line 3770
    :cond_b
    iget v13, v0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    int-to-long v13, v13

    and-long v13, v13, v16

    mul-long/2addr v13, v9

    add-long/2addr v13, v11

    long-to-int v11, v13

    .line 3771
    iput v11, v0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    :goto_7
    ushr-long v11, v13, v15

    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    :cond_c
    int-to-long v9, v7

    and-long v9, v9, v16

    .line 3792
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    int-to-long v11, v5

    and-long v11, v11, v16

    add-long/2addr v11, v9

    long-to-int v5, v11

    .line 3793
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    ushr-long v9, v11, v15

    move v5, v14

    :goto_8
    if-ltz v5, :cond_11

    if-eqz v5, :cond_10

    if-eq v5, v8, :cond_f

    if-eq v5, v14, :cond_e

    if-ne v5, v2, :cond_d

    .line 3812
    iget v7, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    int-to-long v11, v7

    and-long v11, v11, v16

    add-long/2addr v11, v9

    long-to-int v7, v11

    .line 3813
    iput v7, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    goto :goto_9

    .line 3816
    :cond_d
    new-instance v1, Ljava/lang/ArithmeticException;

    invoke-direct {v1, v13}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3808
    :cond_e
    iget v7, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    int-to-long v11, v7

    and-long v11, v11, v16

    add-long/2addr v11, v9

    long-to-int v7, v11

    .line 3809
    iput v7, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    goto :goto_9

    .line 3804
    :cond_f
    iget v7, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    int-to-long v11, v7

    and-long v11, v11, v16

    add-long/2addr v11, v9

    long-to-int v7, v11

    .line 3805
    iput v7, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    goto :goto_9

    .line 3800
    :cond_10
    iget v7, v0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    int-to-long v11, v7

    and-long v11, v11, v16

    add-long/2addr v11, v9

    long-to-int v7, v11

    .line 3801
    iput v7, v0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    :goto_9
    ushr-long v9, v11, v15

    add-int/lit8 v5, v5, -0x1

    goto :goto_8

    :cond_11
    move v7, v4

    goto/16 :goto_3

    :cond_12
    return-void

    .line 3694
    :cond_13
    new-instance v3, Lcom/alibaba/fastjson2/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "number too large : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method final char1(I)C
    .locals 3

    const/16 v0, 0x22

    if-eq p1, v0, :cond_6

    const/16 v0, 0x23

    if-eq p1, v0, :cond_6

    const/16 v0, 0x40

    if-eq p1, v0, :cond_6

    const/16 v0, 0x46

    if-eq p1, v0, :cond_5

    const/16 v0, 0x5f

    if-eq p1, v0, :cond_6

    const/16 v0, 0x62

    if-eq p1, v0, :cond_4

    const/16 v0, 0x66

    if-eq p1, v0, :cond_5

    const/16 v0, 0x6e

    if-eq p1, v0, :cond_3

    const/16 v0, 0x72

    if-eq p1, v0, :cond_2

    const/16 v0, 0x74

    if-eq p1, v0, :cond_1

    const/16 v0, 0x76

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    .line 569
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unclosed.str \'\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 p1, 0x7

    return p1

    :pswitch_1
    const/4 p1, 0x6

    return p1

    :pswitch_2
    const/4 p1, 0x5

    return p1

    :pswitch_3
    const/4 p1, 0x4

    return p1

    :pswitch_4
    const/4 p1, 0x3

    return p1

    :pswitch_5
    const/4 p1, 0x2

    return p1

    :pswitch_6
    const/4 p1, 0x1

    return p1

    :pswitch_7
    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0xb

    return p1

    :cond_1
    const/16 p1, 0x9

    return p1

    :cond_2
    const/16 p1, 0xd

    return p1

    :cond_3
    const/16 p1, 0xa

    return p1

    :cond_4
    const/16 p1, 0x8

    return p1

    :cond_5
    const/16 p1, 0xc

    return p1

    :cond_6
    :pswitch_8
    int-to-char p1, p1

    return p1

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2e
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5b
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract close()V
.end method

.method public final current()C
    .locals 1

    .line 92
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return v0
.end method

.method protected final decimal(Lcom/alibaba/fastjson2/JSONObject;)Ljava/math/BigDecimal;
    .locals 3

    const-string/jumbo v0, "value"

    .line 3130
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONObject;->getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "$numberDecimal"

    .line 3132
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONObject;->getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    .line 3137
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to decimal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endArray()V
    .locals 0

    .line 679
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    return-void
.end method

.method public final errorOnNoneSerializable(Ljava/lang/Class;)V
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const-class v0, Ljava/io/Serializable;

    .line 129
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support none-Serializable, class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final features(J)J
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    or-long/2addr p1, v0

    return-wide p1
.end method

.method public final getBigDecimal()Ljava/math/BigDecimal;
    .locals 16

    move-object/from16 v1, p0

    .line 2693
    iget-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    .line 2697
    :cond_0
    iget-byte v0, v1, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    const/16 v3, 0x20

    const/4 v4, -0x1

    const-wide/32 v5, 0x7fffffff

    const/4 v7, 0x4

    const-wide v8, 0xffffffffL

    const/4 v10, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eq v0, v13, :cond_13

    if-eq v0, v12, :cond_8

    if-eq v0, v10, :cond_7

    if-eq v0, v7, :cond_5

    const/4 v2, 0x6

    const-string v3, "TODO : "

    if-eq v0, v2, :cond_2

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 2766
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 2789
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, v1, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2778
    :cond_2
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->complex:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/fastjson2/JSONObject;

    const-string/jumbo v2, "value"

    .line 2779
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONObject;->getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, "$numberDecimal"

    .line 2781
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONObject;->getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_4

    return-object v2

    .line 2786
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, v1, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2769
    :cond_5
    iget-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReader;->boolValue:Z

    if-eqz v0, :cond_6

    sget-object v0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    goto :goto_0

    :cond_6
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    :goto_0
    return-object v0

    .line 2772
    :cond_7
    :try_start_0
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2774
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read decimal error, value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/alibaba/fastjson2/JSONReader;->stringValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2727
    :cond_8
    iget-short v0, v1, Lcom/alibaba/fastjson2/JSONReader;->exponent:S

    if-nez v0, :cond_c

    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    if-nez v0, :cond_c

    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    if-nez v0, :cond_c

    .line 2728
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    if-nez v0, :cond_a

    iget v14, v1, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    if-ltz v14, :cond_a

    .line 2729
    iget-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    if-eqz v0, :cond_9

    neg-int v14, v14

    :cond_9
    int-to-long v2, v14

    .line 2730
    iget-short v0, v1, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    invoke-static {v2, v3, v0}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v2

    goto :goto_1

    .line 2732
    :cond_a
    iget v14, v1, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    int-to-long v14, v14

    and-long/2addr v14, v8

    int-to-long v10, v0

    and-long/2addr v8, v10

    cmp-long v0, v8, v5

    if-gtz v0, :cond_c

    shl-long v2, v8, v3

    add-long/2addr v2, v14

    .line 2737
    iget-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    if-eqz v0, :cond_b

    neg-long v2, v2

    .line 2738
    :cond_b
    iget-short v0, v1, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    invoke-static {v2, v3, v0}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v2

    :cond_c
    :goto_1
    if-nez v2, :cond_11

    .line 2744
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    if-nez v0, :cond_f

    .line 2745
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    if-nez v0, :cond_e

    .line 2746
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    if-nez v0, :cond_d

    new-array v0, v13, [I

    .line 2747
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    const/4 v3, 0x0

    aput v2, v0, v3

    goto :goto_3

    :cond_d
    const/4 v3, 0x0

    new-array v2, v12, [I

    aput v0, v2, v3

    .line 2748
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    aput v0, v2, v13

    goto :goto_2

    :cond_e
    const/4 v2, 0x3

    const/4 v3, 0x0

    new-array v2, v2, [I

    aput v0, v2, v3

    .line 2749
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    aput v0, v2, v13

    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    aput v0, v2, v12

    goto :goto_2

    :cond_f
    const/4 v3, 0x0

    new-array v2, v7, [I

    aput v0, v2, v3

    .line 2750
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    aput v0, v2, v13

    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    aput v0, v2, v12

    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    const/4 v3, 0x3

    aput v0, v2, v3

    :goto_2
    move-object v0, v2

    .line 2752
    :goto_3
    iget-boolean v2, v1, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    if-eqz v2, :cond_10

    goto :goto_4

    :cond_10
    move v4, v13

    .line 2753
    :goto_4
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$BigIntegerCreator;->BIG_INTEGER_CREATOR:Ljava/util/function/BiFunction;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    .line 2754
    new-instance v2, Ljava/math/BigDecimal;

    iget-short v3, v1, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    invoke-direct {v2, v0, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 2757
    :cond_11
    iget-short v0, v1, Lcom/alibaba/fastjson2/JSONReader;->exponent:S

    if-eqz v0, :cond_12

    .line 2758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "E"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v2, v1, Lcom/alibaba/fastjson2/JSONReader;->exponent:S

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2759
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 2760
    invoke-static {v2, v3}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(D)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    :cond_12
    return-object v2

    .line 2699
    :cond_13
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    if-nez v0, :cond_15

    iget v2, v1, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    if-nez v2, :cond_15

    iget v2, v1, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    if-ltz v2, :cond_15

    .line 2700
    iget-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    if-eqz v0, :cond_14

    neg-int v0, v2

    int-to-long v2, v0

    goto :goto_5

    :cond_14
    int-to-long v2, v2

    :goto_5
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 2703
    :cond_15
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    if-nez v2, :cond_19

    if-nez v0, :cond_18

    .line 2705
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    int-to-long v10, v0

    and-long/2addr v10, v8

    .line 2706
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    int-to-long v14, v2

    and-long v7, v14, v8

    cmp-long v5, v7, v5

    if-gtz v5, :cond_17

    shl-long v2, v7, v3

    add-long/2addr v2, v10

    .line 2710
    iget-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    if-eqz v0, :cond_16

    neg-long v2, v2

    :cond_16
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    :cond_17
    new-array v3, v12, [I

    const/4 v5, 0x0

    aput v2, v3, v5

    aput v0, v3, v13

    goto :goto_6

    :cond_18
    const/4 v2, 0x3

    const/4 v5, 0x0

    new-array v3, v2, [I

    aput v0, v3, v5

    .line 2714
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    aput v0, v3, v13

    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    aput v0, v3, v12

    goto :goto_6

    :cond_19
    const/4 v5, 0x0

    new-array v3, v7, [I

    aput v2, v3, v5

    aput v0, v3, v13

    .line 2717
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    aput v0, v3, v12

    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    const/4 v2, 0x3

    aput v0, v3, v2

    .line 2720
    :goto_6
    iget-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    if-eqz v0, :cond_1a

    goto :goto_7

    :cond_1a
    move v4, v13

    .line 2721
    :goto_7
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$BigIntegerCreator;->BIG_INTEGER_CREATOR:Ljava/util/function/BiFunction;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    .line 2722
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v2
.end method

.method public final getBigInteger()Ljava/math/BigInteger;
    .locals 2

    .line 2680
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getNumber()Ljava/lang/Number;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2686
    :cond_0
    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_1

    .line 2687
    check-cast v0, Ljava/math/BigInteger;

    return-object v0

    .line 2689
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public final getContext()Lcom/alibaba/fastjson2/JSONReader$Context;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    return-object v0
.end method

.method public abstract getFieldName()Ljava/lang/String;
.end method

.method public final getInt32Value()I
    .locals 6

    .line 870
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 907
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TODO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 904
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->complex:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->toInt(Ljava/util/List;)I

    move-result v0

    return v0

    .line 897
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->complex:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->toNumber(Ljava/util/Map;)Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 899
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    :cond_0
    return v1

    .line 889
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v2, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    return v1

    .line 890
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "int value not support input null"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 887
    :pswitch_3
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->boolValue:Z

    return v0

    .line 894
    :pswitch_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->stringValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->toInt32(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 885
    :pswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    .line 872
    :pswitch_6
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_3

    .line 873
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    if-eqz v1, :cond_2

    neg-int v0, v0

    :cond_2
    return v0

    .line 875
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getNumber()Ljava/lang/Number;

    move-result-object v0

    .line 876
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_5

    .line 877
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_4

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4

    long-to-int v0, v0

    return v0

    .line 879
    :cond_4
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "integer overflow "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 883
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    nop

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
.end method

.method protected final getInt64()Ljava/lang/Long;
    .locals 11

    .line 942
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 989
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "TODO"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 982
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->complex:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->toNumber(Ljava/util/Map;)Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 984
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_0
    :pswitch_1
    return-object v1

    .line 975
    :pswitch_2
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->boolValue:Z

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 979
    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->stringValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->toInt64(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 973
    :pswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 944
    :pswitch_5
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    const/high16 v1, -0x80000000

    if-nez v0, :cond_2

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    if-nez v2, :cond_2

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    if-eq v2, v1, :cond_2

    .line 945
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    if-eqz v0, :cond_1

    neg-int v2, v2

    :cond_1
    int-to-long v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 948
    :cond_2
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v2, :cond_7

    if-nez v0, :cond_6

    .line 950
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    if-ne v0, v1, :cond_3

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    if-nez v1, :cond_3

    const-wide/high16 v0, -0x8000000000000000L

    .line 951
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 954
    :cond_3
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    int-to-long v2, v1

    const-wide v7, 0xffffffffL

    and-long/2addr v2, v7

    int-to-long v9, v0

    and-long/2addr v7, v9

    const-wide/32 v9, 0x7fffffff

    cmp-long v9, v7, v9

    if-gtz v9, :cond_5

    const/16 v0, 0x20

    shl-long v0, v7, v0

    add-long/2addr v0, v2

    .line 959
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    if-eqz v2, :cond_4

    neg-long v0, v0

    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_5
    new-array v2, v4, [I

    aput v0, v2, v5

    aput v1, v2, v6

    goto :goto_0

    :cond_6
    new-array v2, v3, [I

    aput v0, v2, v5

    .line 963
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    aput v0, v2, v6

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    aput v0, v2, v4

    goto :goto_0

    :cond_7
    const/4 v1, 0x4

    new-array v1, v1, [I

    aput v2, v1, v5

    aput v0, v1, v6

    .line 966
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    aput v0, v1, v4

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    aput v0, v1, v3

    move-object v2, v1

    .line 969
    :goto_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    if-eqz v0, :cond_8

    const/4 v6, -0x1

    .line 970
    :cond_8
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$BigIntegerCreator;->BIG_INTEGER_CREATOR:Ljava/util/function/BiFunction;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    .line 971
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    nop

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

.method public final getInt64Value()J
    .locals 7

    .line 912
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    const-wide/16 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 937
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "TODO"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 934
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->complex:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->toInt(Ljava/util/List;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 931
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->complex:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->toLong(Ljava/util/Map;)J

    move-result-wide v0

    return-wide v0

    .line 923
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v3, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v5, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    return-wide v1

    .line 924
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "long value not support input null"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 921
    :pswitch_3
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->boolValue:Z

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x1

    :cond_1
    return-wide v1

    .line 928
    :pswitch_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->stringValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->toInt64(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 919
    :pswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 914
    :pswitch_6
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_3

    .line 915
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    if-eqz v1, :cond_2

    neg-int v0, v0

    :cond_2
    int-to-long v0, v0

    return-wide v0

    .line 917
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    nop

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
.end method

.method public final getLocale()Ljava/util/Locale;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public abstract getNameHashCodeLCase()J
.end method

.method public final getNumber()Ljava/lang/Number;
    .locals 19

    move-object/from16 v0, p0

    .line 2794
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 2798
    :cond_0
    iget-byte v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    const/16 v3, 0x20

    const-wide/32 v4, 0x7fffffff

    const-string/jumbo v6, "shortValue overflow"

    const-string v8, "E"

    const/4 v9, 0x4

    const-wide v10, 0xffffffffL

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    packed-switch v1, :pswitch_data_0

    .line 3069
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TODO : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3029
    :pswitch_0
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    if-nez v1, :cond_3

    .line 3030
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    if-nez v1, :cond_2

    .line 3031
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    if-nez v1, :cond_1

    new-array v1, v15, [I

    .line 3032
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    aput v2, v1, v14

    goto :goto_1

    :cond_1
    new-array v2, v13, [I

    aput v1, v2, v14

    .line 3033
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    aput v1, v2, v15

    goto :goto_0

    :cond_2
    new-array v2, v12, [I

    aput v1, v2, v14

    .line 3034
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    aput v1, v2, v15

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    aput v1, v2, v13

    goto :goto_0

    :cond_3
    new-array v2, v9, [I

    aput v1, v2, v14

    .line 3035
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    aput v1, v2, v15

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    aput v1, v2, v13

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    aput v1, v2, v12

    :goto_0
    move-object v1, v2

    .line 3036
    :goto_1
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    if-eqz v2, :cond_4

    const/4 v7, -0x1

    goto :goto_2

    :cond_4
    move v7, v15

    .line 3037
    :goto_2
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$BigIntegerCreator;->BIG_INTEGER_CREATOR:Ljava/util/function/BiFunction;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    .line 3038
    new-instance v2, Ljava/math/BigDecimal;

    iget-short v3, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    invoke-direct {v2, v1, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 3040
    iget-byte v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    const/16 v3, 0xc

    if-ne v1, v3, :cond_6

    .line 3041
    iget-short v1, v0, Lcom/alibaba/fastjson2/JSONReader;->exponent:S

    if-eqz v1, :cond_5

    .line 3042
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, v0, Lcom/alibaba/fastjson2/JSONReader;->exponent:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 3046
    :cond_5
    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 3049
    :cond_6
    iget-short v1, v0, Lcom/alibaba/fastjson2/JSONReader;->exponent:S

    if-eqz v1, :cond_7

    .line 3050
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, v0, Lcom/alibaba/fastjson2/JSONReader;->exponent:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 3053
    :cond_7
    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 2841
    :pswitch_1
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    if-nez v1, :cond_9

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    if-nez v1, :cond_9

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    if-nez v1, :cond_9

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    if-ltz v1, :cond_9

    .line 2842
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    if-eqz v2, :cond_8

    neg-int v1, v1

    :cond_8
    int-to-short v1, v1

    .line 2843
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1

    .line 2845
    :cond_9
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2848
    :pswitch_2
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    if-nez v1, :cond_b

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    if-nez v1, :cond_b

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    if-nez v1, :cond_b

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    if-ltz v1, :cond_b

    .line 2849
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    if-eqz v2, :cond_a

    neg-int v1, v1

    :cond_a
    int-to-byte v1, v1

    .line 2850
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1

    .line 2852
    :cond_b
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3018
    :pswitch_3
    iget-short v1, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    if-lez v1, :cond_d

    .line 3019
    sget v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultDecimalMaxScale:I

    if-gt v1, v2, :cond_c

    .line 3022
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReader;->stringValue:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 3020
    :cond_c
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scale overflow : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-short v3, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3024
    :cond_d
    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReader;->stringValue:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 3066
    :pswitch_4
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReader;->complex:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->toNumber(Ljava/util/List;)Ljava/lang/Number;

    move-result-object v1

    return-object v1

    .line 3063
    :pswitch_5
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReader;->complex:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->toNumber(Ljava/util/Map;)Ljava/lang/Number;

    move-result-object v1

    return-object v1

    :pswitch_6
    return-object v2

    .line 3056
    :pswitch_7
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader;->boolValue:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 3060
    :pswitch_8
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReader;->stringValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->toInt64(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 2857
    :pswitch_9
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    const-wide/16 v16, 0x0

    if-nez v1, :cond_12

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    if-nez v1, :cond_12

    .line 2858
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    if-nez v1, :cond_13

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    if-ltz v6, :cond_13

    .line 2859
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    if-eqz v1, :cond_e

    neg-int v6, v6

    .line 2861
    :cond_e
    iget-short v1, v0, Lcom/alibaba/fastjson2/JSONReader;->exponent:S

    if-nez v1, :cond_11

    .line 2862
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseBigDecimalForFloats:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v3

    cmp-long v1, v1, v16

    if-eqz v1, :cond_f

    .line 2863
    iget-short v1, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    packed-switch v1, :pswitch_data_1

    goto :goto_3

    :pswitch_a
    int-to-double v1, v6

    .line 2874
    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->DOUBLE_10_POW:[D

    iget-short v4, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    aget-wide v3, v3, v4

    div-double/2addr v1, v3

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 2878
    :cond_f
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseBigDecimalForDoubles:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v3

    cmp-long v1, v1, v16

    if-eqz v1, :cond_11

    if-nez v6, :cond_10

    .line 2880
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->DOUBLE_ZERO:Ljava/lang/Double;

    return-object v1

    .line 2883
    :cond_10
    iget-short v1, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    packed-switch v1, :pswitch_data_2

    goto :goto_3

    :pswitch_b
    int-to-double v1, v6

    .line 2899
    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->DOUBLE_10_POW:[D

    iget-short v4, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    aget-wide v3, v3, v4

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    :cond_11
    :goto_3
    int-to-long v1, v6

    .line 2905
    iget-short v3, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    invoke-static {v1, v2, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v2

    :cond_12
    move-object/from16 v18, v8

    goto/16 :goto_7

    .line 2907
    :cond_13
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    move-object/from16 v18, v8

    int-to-long v7, v6

    and-long v6, v7, v10

    int-to-long v14, v1

    and-long/2addr v10, v14

    cmp-long v1, v10, v4

    if-gtz v1, :cond_20

    shl-long v1, v10, v3

    add-long/2addr v1, v6

    .line 2912
    iget-boolean v3, v0, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    if-eqz v3, :cond_14

    neg-long v1, v1

    .line 2914
    :cond_14
    iget-short v3, v0, Lcom/alibaba/fastjson2/JSONReader;->exponent:S

    if-nez v3, :cond_1f

    .line 2915
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseBigDecimalForFloats:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v3, v5

    cmp-long v3, v3, v16

    const/16 v4, 0x14

    if-eqz v3, :cond_17

    cmp-long v3, v1, v16

    if-gez v3, :cond_15

    neg-long v1, v1

    const/4 v14, 0x1

    goto :goto_4

    :cond_15
    const/4 v14, 0x0

    .line 2933
    :goto_4
    invoke-static {v1, v2}, Lcom/alibaba/fastjson2/util/IOUtils;->stringSize(J)I

    move-result v3

    .line 2934
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReader;->doubleChars:[C

    if-nez v5, :cond_16

    new-array v4, v4, [C

    .line 2935
    iput-object v4, v0, Lcom/alibaba/fastjson2/JSONReader;->doubleChars:[C

    .line 2937
    :cond_16
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReader;->doubleChars:[C

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/fastjson2/util/IOUtils;->getChars(JI[C)V

    .line 2938
    iget-short v1, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    sub-int v1, v3, v1

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReader;->doubleChars:[C

    invoke-static {v14, v1, v2, v3}, Lcom/alibaba/fastjson2/util/TypeUtils;->floatValue(ZI[CI)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 2939
    :cond_17
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v5, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseBigDecimalForDoubles:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v10, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v5, v10

    cmp-long v3, v5, v16

    if-eqz v3, :cond_1f

    cmp-long v3, v1, v16

    if-gez v3, :cond_18

    neg-long v5, v1

    const/4 v14, 0x1

    goto :goto_5

    :cond_18
    move-wide v5, v1

    const/4 v14, 0x0

    :goto_5
    const-wide/high16 v7, 0x10000000000000L

    cmp-long v3, v5, v7

    if-gez v3, :cond_1a

    .line 2960
    iget-short v3, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    if-lez v3, :cond_19

    sget-object v7, Lcom/alibaba/fastjson2/JSONFactory;->DOUBLE_10_POW:[D

    array-length v7, v7

    if-ge v3, v7, :cond_19

    long-to-double v1, v1

    .line 2961
    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->DOUBLE_10_POW:[D

    iget-short v4, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    aget-wide v3, v3, v4

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 2962
    :cond_19
    iget-short v3, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    if-gez v3, :cond_1a

    sget-object v7, Lcom/alibaba/fastjson2/JSONFactory;->DOUBLE_10_POW:[D

    array-length v7, v7

    neg-int v7, v7

    if-le v3, v7, :cond_1a

    long-to-double v1, v1

    .line 2963
    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->DOUBLE_10_POW:[D

    iget-short v4, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    neg-int v4, v4

    aget-wide v3, v3, v4

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    :cond_1a
    const-wide v1, 0x2386f26fc10000L

    cmp-long v1, v5, v1

    if-gez v1, :cond_1b

    const/16 v1, 0x10

    goto :goto_6

    :cond_1b
    const-wide v1, 0x16345785d8a0000L

    cmp-long v1, v5, v1

    if-gez v1, :cond_1c

    const/16 v1, 0x11

    goto :goto_6

    :cond_1c
    const-wide v1, 0xde0b6b3a7640000L

    cmp-long v1, v5, v1

    if-gez v1, :cond_1d

    const/16 v1, 0x12

    goto :goto_6

    :cond_1d
    const/16 v1, 0x13

    .line 2972
    :goto_6
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReader;->doubleChars:[C

    if-nez v2, :cond_1e

    new-array v2, v4, [C

    .line 2973
    iput-object v2, v0, Lcom/alibaba/fastjson2/JSONReader;->doubleChars:[C

    .line 2975
    :cond_1e
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReader;->doubleChars:[C

    invoke-static {v5, v6, v1, v2}, Lcom/alibaba/fastjson2/util/IOUtils;->getChars(JI[C)V

    .line 2976
    iget-short v2, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    sub-int v2, v1, v2

    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReader;->doubleChars:[C

    invoke-static {v14, v2, v3, v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->doubleValue(ZI[CI)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 2979
    :cond_1f
    iget-short v3, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    invoke-static {v1, v2, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v2

    :cond_20
    :goto_7
    if-nez v2, :cond_25

    .line 2985
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    if-nez v1, :cond_22

    .line 2986
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    if-nez v1, :cond_21

    new-array v1, v13, [I

    .line 2987
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    const/4 v4, 0x1

    aput v2, v1, v4

    goto :goto_9

    :cond_21
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v2, v12, [I

    aput v1, v2, v3

    .line 2988
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    aput v1, v2, v4

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    aput v1, v2, v13

    goto :goto_8

    :cond_22
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v2, v9, [I

    aput v1, v2, v3

    .line 2989
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    aput v1, v2, v4

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    aput v1, v2, v13

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    aput v1, v2, v12

    :goto_8
    move-object v1, v2

    .line 2990
    :goto_9
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    if-eqz v2, :cond_23

    const/4 v7, -0x1

    goto :goto_a

    :cond_23
    const/4 v7, 0x1

    .line 2991
    :goto_a
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$BigIntegerCreator;->BIG_INTEGER_CREATOR:Ljava/util/function/BiFunction;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    .line 2993
    iget-short v2, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    iget-short v3, v0, Lcom/alibaba/fastjson2/JSONReader;->exponent:S

    sub-int/2addr v2, v3

    .line 2994
    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 2996
    iget-short v1, v0, Lcom/alibaba/fastjson2/JSONReader;->exponent:S

    if-eqz v1, :cond_24

    .line 2997
    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    :cond_24
    move-object v2, v3

    .line 3001
    :cond_25
    iget-short v1, v0, Lcom/alibaba/fastjson2/JSONReader;->exponent:S

    if-eqz v1, :cond_26

    .line 3002
    invoke-virtual {v2}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v1

    .line 3003
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, v0, Lcom/alibaba/fastjson2/JSONReader;->exponent:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 3007
    :cond_26
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v3, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseBigDecimalForFloats:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v5, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v3, v5

    cmp-long v1, v3, v16

    if-eqz v1, :cond_27

    .line 3008
    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 3011
    :cond_27
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v3, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseBigDecimalForDoubles:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v5, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v3, v5

    cmp-long v1, v3, v16

    if-eqz v1, :cond_28

    .line 3012
    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    :cond_28
    return-object v2

    .line 2801
    :pswitch_c
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    if-nez v2, :cond_2d

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    if-nez v6, :cond_2d

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    if-nez v6, :cond_2d

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    const/high16 v7, -0x80000000

    if-eq v6, v7, :cond_2d

    .line 2803
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    if-eqz v2, :cond_2a

    if-gez v6, :cond_29

    int-to-long v1, v6

    and-long/2addr v1, v10

    neg-long v1, v1

    .line 2805
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    :cond_29
    neg-int v6, v6

    goto :goto_b

    :cond_2a
    if-gez v6, :cond_2b

    int-to-long v1, v6

    and-long/2addr v1, v10

    .line 2810
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    :cond_2b
    :goto_b
    const/16 v2, 0xb

    if-ne v1, v2, :cond_2c

    int-to-long v1, v6

    .line 2815
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 2817
    :cond_2c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :cond_2d
    if-nez v2, :cond_31

    .line 2821
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    if-nez v1, :cond_30

    .line 2822
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    int-to-long v6, v1

    and-long/2addr v6, v10

    .line 2823
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    int-to-long v14, v2

    and-long v9, v14, v10

    cmp-long v4, v9, v4

    if-gtz v4, :cond_2f

    shl-long v1, v9, v3

    add-long/2addr v1, v6

    .line 2827
    iget-boolean v3, v0, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    if-eqz v3, :cond_2e

    neg-long v1, v1

    :cond_2e
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    :cond_2f
    new-array v3, v13, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v5, 0x1

    aput v1, v3, v5

    goto :goto_c

    :cond_30
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v3, v12, [I

    aput v1, v3, v4

    .line 2831
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    aput v1, v3, v5

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    aput v1, v3, v13

    goto :goto_c

    :cond_31
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v3, v9, [I

    aput v2, v3, v4

    .line 2834
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    aput v1, v3, v5

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    aput v1, v3, v13

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    aput v1, v3, v12

    .line 2837
    :goto_c
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    if-eqz v1, :cond_32

    const/4 v7, -0x1

    goto :goto_d

    :cond_32
    move v7, v5

    .line 2838
    :goto_d
    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$BigIntegerCreator;->BIG_INTEGER_CREATOR:Ljava/util/function/BiFunction;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_c
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public final getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 4

    .line 479
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 480
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public getObjectReaderAutoType(JLjava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 2

    .line 4697
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 4702
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    move-result-object p1

    .line 4703
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object p2, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    if-eqz p2, :cond_2

    .line 4704
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object p2, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    invoke-interface {p2, p1, p3, p4, p5}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 4706
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v0, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long p3, p4, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4707
    :goto_0
    iget-object p3, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object p3, p3, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {p3, p2, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1

    .line 4711
    :cond_2
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object p2, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    or-long/2addr p4, v0

    invoke-virtual {p2, p1, p3, p4, p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/String;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public final getOffset()I
    .locals 1

    .line 697
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return v0
.end method

.method public getRawInt()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRawLong()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract getString()Ljava/lang/String;
.end method

.method protected abstract getStringLength()I
.end method

.method public getType()B
    .locals 1

    const/16 v0, -0x80

    return v0
.end method

.method public final getZoneId()Ljava/time/ZoneId;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public final handleResolveTasks(Ljava/lang/Object;)V
    .locals 12

    .line 379
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 384
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson2/JSONReader$ResolveTask;

    .line 385
    iget-object v3, v2, Lcom/alibaba/fastjson2/JSONReader$ResolveTask;->reference:Lcom/alibaba/fastjson2/JSONPath;

    .line 386
    iget-object v4, v2, Lcom/alibaba/fastjson2/JSONReader$ResolveTask;->fieldReader:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 389
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONPath;->isPrevious()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 392
    :cond_2
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONPath;->isRef()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 395
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson2/JSONPath;->setReaderContext(Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONPath;

    .line 396
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v5, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v7, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-eqz v1, :cond_3

    .line 397
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createWriteContext()Lcom/alibaba/fastjson2/JSONWriter$Context;

    move-result-object v1

    .line 398
    iget-wide v5, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v5, v7

    iput-wide v5, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 399
    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson2/JSONPath;->setWriterContext(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONPath;

    .line 402
    :cond_3
    invoke-virtual {v3, p1}, Lcom/alibaba/fastjson2/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 406
    :goto_1
    iget-object v3, v2, Lcom/alibaba/fastjson2/JSONReader$ResolveTask;->name:Ljava/lang/Object;

    .line 407
    iget-object v2, v2, Lcom/alibaba/fastjson2/JSONReader$ResolveTask;->object:Ljava/lang/Object;

    if-eqz v3, :cond_d

    .line 410
    instance-of v5, v2, Ljava/util/Map;

    if-eqz v5, :cond_9

    .line 411
    check-cast v2, Ljava/util/Map;

    .line 412
    instance-of v4, v3, Lcom/alibaba/fastjson2/util/ReferenceKey;

    if-eqz v4, :cond_8

    .line 413
    instance-of v4, v2, Ljava/util/LinkedHashMap;

    if-eqz v4, :cond_7

    .line 414
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    .line 419
    :cond_4
    new-array v5, v4, [Ljava/lang/Object;

    .line 420
    new-array v6, v4, [Ljava/lang/Object;

    .line 423
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    move v9, v8

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 424
    check-cast v10, Ljava/util/Map$Entry;

    .line 425
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    if-ne v3, v11, :cond_5

    .line 427
    aput-object v1, v5, v9

    goto :goto_3

    .line 429
    :cond_5
    aput-object v11, v5, v9

    :goto_3
    add-int/lit8 v11, v9, 0x1

    .line 431
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v6, v9

    move v9, v11

    goto :goto_2

    .line 433
    :cond_6
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    :goto_4
    if-ge v8, v4, :cond_1

    .line 436
    aget-object v3, v5, v8

    aget-object v7, v6, v8

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 439
    :cond_7
    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 442
    :cond_8
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 447
    :cond_9
    instance-of v5, v3, Ljava/lang/Integer;

    if-eqz v5, :cond_d

    .line 448
    instance-of v5, v2, Ljava/util/List;

    if-eqz v5, :cond_b

    .line 449
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 450
    check-cast v2, Ljava/util/List;

    .line 451
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_a

    .line 452
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 454
    :cond_a
    invoke-interface {v2, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 459
    :cond_b
    instance-of v5, v2, [Ljava/lang/Object;

    if-eqz v5, :cond_c

    .line 460
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 461
    check-cast v2, [Ljava/lang/Object;

    .line 462
    aput-object v1, v2, v3

    goto/16 :goto_0

    .line 466
    :cond_c
    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_d

    .line 467
    check-cast v2, Ljava/util/Collection;

    .line 468
    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 474
    :cond_d
    invoke-virtual {v4, v2, v1}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 393
    :cond_e
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reference path invalid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    return-void
.end method

.method public final hasComma()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    return v0
.end method

.method public final info()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 4574
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public info(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    .line 4578
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4581
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", offset "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4579
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "offset "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isArray()Z
    .locals 2

    .line 647
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBinary()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isEnabled(Lcom/alibaba/fastjson2/JSONReader$Feature;)Z
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    iget-wide v2, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEnd()Z
    .locals 2

    .line 96
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isIgnoreNoneSerializable()Z
    .locals 4

    .line 516
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isInitStringFieldAsEmpty()Z
    .locals 4

    .line 488
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInt()Z
    .locals 2

    .line 104
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isJSONB()Z
    .locals 1

    .line 512
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    return v0
.end method

.method public final isLocalDate()Z
    .locals 2

    .line 1084
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1089
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getStringLength()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return v1

    .line 1101
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate11()Ljava/time/LocalDate;

    move-result-object v0

    goto :goto_0

    .line 1098
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate10()Ljava/time/LocalDate;

    move-result-object v0

    goto :goto_0

    .line 1095
    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate9()Ljava/time/LocalDate;

    move-result-object v0

    goto :goto_0

    .line 1092
    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate8()Ljava/time/LocalDate;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isLocalDateTime()Z
    .locals 3

    .line 1193
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1197
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getStringLength()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    .line 1218
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTimeX(I)Ljava/time/LocalDateTime;

    move-result-object v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 1208
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime20()Ljava/time/LocalDateTime;

    move-result-object v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 1206
    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime19()Ljava/time/LocalDateTime;

    move-result-object v0

    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    return v1

    .line 1204
    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime18()Ljava/time/LocalDateTime;

    move-result-object v0

    if-eqz v0, :cond_4

    move v1, v2

    :cond_4
    return v1

    .line 1202
    :pswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime17()Ljava/time/LocalDateTime;

    move-result-object v0

    if-eqz v0, :cond_5

    move v1, v2

    :cond_5
    return v1

    .line 1200
    :pswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime16()Ljava/time/LocalDateTime;

    move-result-object v0

    if-eqz v0, :cond_6

    move v1, v2

    :cond_6
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public abstract isNull()Z
.end method

.method public isNumber()Z
    .locals 2

    .line 655
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isObject()Z
    .locals 2

    .line 651
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract isReference()Z
.end method

.method public isString()Z
    .locals 2

    .line 675
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isSupportAutoType(J)Z
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    or-long/2addr p1, v0

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isSupportAutoTypeOrHandler(J)Z
    .locals 2

    .line 508
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    or-long/2addr p1, v0

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final isSupportBeanArray()Z
    .locals 4

    .line 496
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportArrayToBean:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSupportBeanArray(J)Z
    .locals 2

    .line 500
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    or-long/2addr p1, v0

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportArrayToBean:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isSupportSmartMatch()Z
    .locals 4

    .line 484
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportSmartMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSupportSmartMatch(J)Z
    .locals 2

    .line 492
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    or-long/2addr p1, v0

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportSmartMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isTypeRedirect()Z
    .locals 1

    .line 721
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->typeRedirect:Z

    return v0
.end method

.method public mark()Lcom/alibaba/fastjson2/JSONReader$SavePoint;
    .locals 3

    .line 4565
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$SavePoint;

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONReader$SavePoint;-><init>(II)V

    return-object v0
.end method

.method public abstract next()V
.end method

.method public abstract nextIfArrayEnd()Z
.end method

.method public abstract nextIfArrayStart()Z
.end method

.method public abstract nextIfComma()Z
.end method

.method public abstract nextIfInfinity()Z
.end method

.method public nextIfMatch(B)Z
    .locals 1

    .line 826
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "UnsupportedOperation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract nextIfMatch(C)Z
.end method

.method public abstract nextIfMatchIdent(CCC)Z
.end method

.method public abstract nextIfMatchIdent(CCCC)Z
.end method

.method public abstract nextIfMatchIdent(CCCCC)Z
.end method

.method public abstract nextIfMatchIdent(CCCCCC)Z
.end method

.method public nextIfMatchTypedAny()Z
    .locals 2

    .line 830
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "UnsupportedOperation"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextIfName4Match10(J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match11(J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match12(JB)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match13(JI)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match14(JI)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match15(JI)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match16(JIB)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match17(JJ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match18(JJ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match19(JJ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public nextIfName4Match20(JJB)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match21(JJI)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match22(JJI)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match23(JJI)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match24(JJIB)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match25(JJJ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match26(JJJ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match27(JJJ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match28(JJJB)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match29(JJJI)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match3()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public nextIfName4Match30(JJJI)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match31(JJJI)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match32(JJJIB)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match33(JJJJ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match34(JJJJ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match35(JJJJ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match36(JJJJB)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match37(JJJJI)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match38(JJJJI)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match39(JJJJI)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match4(B)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match40(JJJJIB)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match41(JJJJJ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match42(JJJJJ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match43(JJJJJ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match5(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match6(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match7(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match8(IB)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match9(J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName8Match0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public nextIfName8Match1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public nextIfName8Match2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract nextIfNull()Z
.end method

.method public abstract nextIfNullOrEmptyString()Z
.end method

.method public abstract nextIfObjectEnd()Z
.end method

.method public abstract nextIfObjectStart()Z
.end method

.method public abstract nextIfSet()Z
.end method

.method public nextIfValue4Match10(J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfValue4Match11(J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfValue4Match2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public nextIfValue4Match3()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public nextIfValue4Match4(B)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfValue4Match5(BB)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfValue4Match6(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfValue4Match7(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfValue4Match8(IB)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfValue4Match9(IBB)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public read(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2268
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2269
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v3, p0

    .line 2270
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 1923
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1924
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v3, p0

    .line 1925
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final read(Ljava/util/Collection;)V
    .locals 2

    .line 1954
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1958
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->level:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->level:I

    .line 1959
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->maxLevel:I

    if-ge v0, v1, :cond_1

    .line 1964
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1965
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->level:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->level:I

    .line 1974
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    return-void

    .line 1968
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object v0

    .line 1969
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1971
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    goto :goto_0

    .line 1960
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "level too large : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1955
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal input, offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", char "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final read(Ljava/util/List;)V
    .locals 6

    .line 1929
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1933
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->level:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->level:I

    .line 1934
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->maxLevel:I

    if-ge v0, v1, :cond_1

    .line 1939
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1940
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->level:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->level:I

    .line 1950
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    return-void

    .line 1944
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 1945
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1947
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    goto :goto_0

    .line 1935
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "level too large : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1930
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal input, offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", char "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read(Ljava/util/Map;J)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    .line 2054
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    move-result v1

    const/4 v7, 0x0

    if-nez v1, :cond_2

    .line 2057
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->isTypeRedirect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2058
    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson2/JSONReader;->setTypeRedirect(Z)V

    move v8, v2

    goto :goto_0

    .line 2060
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2061
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2062
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2066
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v8, v7

    .line 2071
    :goto_0
    instance-of v2, v0, Lcom/alibaba/fastjson2/util/Wrapper;

    if-eqz v2, :cond_3

    .line 2072
    check-cast v0, Lcom/alibaba/fastjson2/util/Wrapper;

    const-class v2, Ljava/util/Map;

    invoke-interface {v0, v2}, Lcom/alibaba/fastjson2/util/Wrapper;->unwrap(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :cond_3
    move-object v9, v0

    .line 2077
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getFeatures()J

    move-result-wide v2

    or-long v10, p2, v2

    move v12, v7

    .line 2080
    :goto_1
    iget-char v0, v6, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_4

    .line 2081
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->skipComment()V

    .line 2084
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2208
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    return-void

    :cond_5
    if-eqz v12, :cond_7

    .line 2088
    iget-boolean v0, v6, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v0, :cond_6

    goto :goto_2

    .line 2089
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_2
    if-nez v1, :cond_9

    if-eqz v8, :cond_8

    goto :goto_3

    .line 2100
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    goto :goto_4

    .line 2094
    :cond_9
    :goto_3
    iget-char v0, v6, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v3, 0x31

    if-lt v0, v3, :cond_a

    const/16 v3, 0x39

    if-gt v0, v3, :cond_a

    const/4 v0, 0x0

    goto :goto_4

    .line 2097
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->readFieldName()Ljava/lang/String;

    move-result-object v0

    :goto_4
    move v13, v1

    const-wide/16 v14, 0x0

    if-nez v0, :cond_f

    .line 2105
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2106
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->readNumber()Ljava/lang/Number;

    move-result-object v0

    .line 2107
    iget-object v1, v6, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v3, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->NonStringKeyAsString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    move/from16 v16, v8

    iget-wide v7, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v3, v7

    cmp-long v1, v3, v14

    if-eqz v1, :cond_c

    .line 2108
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_b
    move/from16 v16, v8

    .line 2111
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v3

    cmp-long v0, v0, v14

    if-eqz v0, :cond_e

    .line 2112
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameUnquote()Ljava/lang/String;

    move-result-object v0

    .line 2117
    :cond_c
    :goto_5
    iget-char v1, v6, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v3, 0x3a

    if-ne v1, v3, :cond_d

    .line 2118
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    :cond_d
    move-object v7, v0

    const/4 v8, 0x0

    goto :goto_6

    .line 2114
    :cond_e
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "not allow unquoted fieldName"

    invoke-virtual {v6, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move/from16 v16, v8

    move v8, v7

    move-object v7, v0

    .line 2122
    :goto_6
    iput-boolean v8, v6, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 2124
    iget-char v0, v6, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const-string v1, ", char "

    const-string v3, "FASTJSON2.0.43error, offset "

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    .line 2187
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v6, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, v6, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2162
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 2163
    iget-char v0, v6, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-ne v0, v2, :cond_10

    .line 2164
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->skipComment()V

    goto/16 :goto_8

    .line 2166
    :cond_10
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FASTJSON2.0.43input not support "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, v6, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    if-eqz v16, :cond_11

    .line 2145
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object v3, v7

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_7

    .line 2147
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->readObject()Ljava/util/Map;

    move-result-object v0

    goto/16 :goto_7

    .line 2184
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->readBinary()[B

    move-result-object v0

    goto/16 :goto_7

    .line 2159
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->readNullOrNewDate()Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_7

    .line 2156
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->readBoolValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_7

    .line 2141
    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->readArray()Ljava/util/List;

    move-result-object v0

    goto :goto_7

    .line 2170
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfSet()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2171
    const-class v0, Ljava/util/HashSet;

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7

    .line 2173
    :cond_12
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v6, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, v6, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2177
    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfInfinity()Z

    move-result v0

    if-eqz v0, :cond_13

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 2178
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_7

    .line 2180
    :cond_13
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v6, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, v6, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2138
    :pswitch_1
    :sswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->readNumber()Ljava/lang/Number;

    move-result-object v0

    goto :goto_7

    .line 2152
    :sswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    if-nez v0, :cond_14

    .line 2190
    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v10

    cmp-long v1, v1, v14

    if-eqz v1, :cond_14

    goto :goto_8

    .line 2194
    :cond_14
    invoke-interface {v9, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 2196
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->DuplicateKeyValueAsArray:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v10

    cmp-long v2, v2, v14

    if-eqz v2, :cond_16

    .line 2197
    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_15

    .line 2198
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2199
    invoke-interface {v9, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 2201
    :cond_15
    invoke-static {v1, v0}, Lcom/alibaba/fastjson2/JSONArray;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object v0

    .line 2202
    invoke-interface {v9, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    :goto_8
    add-int/lit8 v12, v12, 0x1

    move v7, v8

    move v1, v13

    move/from16 v8, v16

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_8
        0x27 -> :sswitch_8
        0x2b -> :sswitch_7
        0x49 -> :sswitch_6
        0x53 -> :sswitch_5
        0x5b -> :sswitch_4
        0x66 -> :sswitch_3
        0x6e -> :sswitch_2
        0x74 -> :sswitch_3
        0x78 -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public read(Ljava/util/Map;Lcom/alibaba/fastjson2/reader/ObjectReader;J)V
    .locals 10

    .line 2006
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    .line 2008
    instance-of v0, p1, Lcom/alibaba/fastjson2/util/Wrapper;

    if-eqz v0, :cond_0

    .line 2009
    check-cast p1, Lcom/alibaba/fastjson2/util/Wrapper;

    const-class v0, Ljava/util/Map;

    invoke-interface {p1, v0}, Lcom/alibaba/fastjson2/util/Wrapper;->unwrap(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 2014
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getFeatures()J

    move-result-wide v0

    or-long/2addr v0, p3

    const/4 v2, 0x0

    .line 2017
    :goto_0
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_1

    .line 2018
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->skipComment()V

    .line 2021
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2050
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    return-void

    :cond_2
    if-eqz v2, :cond_4

    .line 2025
    iget-boolean v3, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v3, :cond_3

    goto :goto_1

    .line 2026
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2029
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readFieldName()Ljava/lang/String;

    move-result-object v9

    .line 2030
    invoke-interface {p2}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    move-result-object v5

    move-object v3, p2

    move-object v4, p0

    move-object v6, v9

    move-wide v7, p3

    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_5

    .line 2032
    sget-object v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v6, v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v6, v0

    cmp-long v6, v6, v4

    if-eqz v6, :cond_5

    goto :goto_2

    .line 2036
    :cond_5
    invoke-interface {p1, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 2038
    sget-object v7, Lcom/alibaba/fastjson2/JSONReader$Feature;->DuplicateKeyValueAsArray:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v7, v0

    cmp-long v4, v7, v4

    if-eqz v4, :cond_7

    .line 2039
    instance-of v4, v6, Ljava/util/Collection;

    if-eqz v4, :cond_6

    .line 2040
    move-object v4, v6

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2041
    invoke-interface {p1, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2043
    :cond_6
    invoke-static {v6, v3}, Lcom/alibaba/fastjson2/JSONArray;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object v3

    .line 2044
    invoke-interface {p1, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final read(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;J)V
    .locals 9

    .line 2212
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2217
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    .line 2218
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v1, p3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p3

    .line 2220
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getFeatures()J

    move-result-wide v1

    or-long/2addr p4, v1

    const/4 v1, 0x0

    move v8, v1

    .line 2223
    :goto_0
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    .line 2224
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->skipComment()V

    .line 2227
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2264
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    return-void

    :cond_1
    if-eqz v8, :cond_3

    .line 2231
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v1, :cond_2

    goto :goto_1

    .line 2232
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2237
    :cond_3
    :goto_1
    const-class v1, Ljava/lang/String;

    if-ne p2, v1, :cond_4

    .line 2238
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readFieldName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, v0

    move-object v2, p0

    .line 2240
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x3a

    .line 2241
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    :goto_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p3

    move-object v3, p0

    .line 2244
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_5

    .line 2246
    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v5, p4

    cmp-long v5, v5, v3

    if-eqz v5, :cond_5

    goto :goto_3

    .line 2250
    :cond_5
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 2252
    sget-object v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->DuplicateKeyValueAsArray:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v6, v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v6, p4

    cmp-long v3, v6, v3

    if-eqz v3, :cond_7

    .line 2253
    instance-of v3, v5, Ljava/util/Collection;

    if-eqz v3, :cond_6

    .line 2254
    move-object v3, v5

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2255
    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2257
    :cond_6
    invoke-static {v5, v2}, Lcom/alibaba/fastjson2/JSONArray;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object v2

    .line 2258
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2214
    :cond_8
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "illegal input\uff0c offset "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", char "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-char p3, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readAny()Ljava/lang/Object;
    .locals 1

    .line 2417
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readArray()Ljava/util/List;
    .locals 14

    .line 2569
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 2571
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->level:I

    const/4 v6, 0x1

    add-int/2addr v0, v6

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->level:I

    .line 2572
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->maxLevel:I

    if-ge v0, v1, :cond_15

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v10, v7

    move-object v9, v8

    move-object v11, v9

    move-object v12, v11

    .line 2583
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x22

    const/4 v13, 0x2

    if-eq v0, v1, :cond_10

    const/16 v1, 0x27

    if-eq v0, v1, :cond_10

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_f

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_f

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_e

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_5

    const/16 v1, 0x66

    if-eq v0, v1, :cond_4

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_3

    const/16 v1, 0x74

    if-eq v0, v1, :cond_4

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 2629
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2626
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->skipComment()V

    goto/16 :goto_7

    .line 2591
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    goto :goto_1

    .line 2594
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readObject()Ljava/util/Map;

    move-result-object v0

    goto/16 :goto_5

    .line 2592
    :cond_2
    :goto_1
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_5

    .line 2621
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readNull()V

    move-object v0, v8

    goto/16 :goto_5

    .line 2618
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readBoolValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_5

    .line 2585
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    if-nez v9, :cond_b

    .line 2652
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->arraySupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_6

    .line 2653
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->arraySupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_2
    move-object v9, v0

    goto :goto_3

    .line 2655
    :cond_6
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->isEnabled(Lcom/alibaba/fastjson2/JSONReader$Feature;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2656
    new-instance v0, Ljava/util/ArrayList;

    if-ne v10, v13, :cond_7

    invoke-direct {v0, v13}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_2

    :cond_7
    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_2

    .line 2658
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    if-ne v10, v13, :cond_9

    invoke-direct {v0, v13}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    goto :goto_2

    :cond_9
    invoke-direct {v0, v6}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    goto :goto_2

    :goto_3
    if-ne v10, v6, :cond_a

    .line 2663
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    if-ne v10, v13, :cond_b

    .line 2665
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2666
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2670
    :cond_b
    :goto_4
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_c

    move v7, v6

    :cond_c
    iput-boolean v7, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v7, :cond_d

    .line 2671
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 2674
    :cond_d
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->level:I

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->level:I

    return-object v9

    .line 2588
    :cond_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readArray()Ljava/util/List;

    move-result-object v0

    goto :goto_5

    .line 2613
    :cond_f
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readNumber0()V

    .line 2614
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getNumber()Ljava/lang/Number;

    move-result-object v0

    goto :goto_5

    .line 2599
    :cond_10
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    if-nez v10, :cond_11

    move-object v11, v0

    goto :goto_7

    :cond_11
    if-ne v10, v6, :cond_12

    move-object v12, v0

    goto :goto_7

    :cond_12
    if-ne v10, v13, :cond_14

    .line 2637
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->arraySupplier:Ljava/util/function/Supplier;

    if-eqz v1, :cond_13

    .line 2638
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->arraySupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_6

    .line 2640
    :cond_13
    new-instance v1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    :goto_6
    move-object v9, v1

    .line 2643
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2644
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2645
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 2647
    :cond_14
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 2573
    :cond_15
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level too large : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public readArray(Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 10

    .line 2421
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2425
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2429
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 2430
    :goto_0
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v3, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {v3, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    .line 2432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2433
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2434
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v4, p1

    move-object v5, p0

    .line 2435
    invoke-interface/range {v4 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2437
    iget v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    if-eq v3, v5, :cond_2

    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v5, 0x7d

    if-eq v3, v5, :cond_2

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_2

    .line 2433
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2438
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal input : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2442
    :cond_3
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v3, 0x2c

    if-ne p1, v3, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v1, :cond_5

    .line 2443
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    :cond_5
    return-object v0

    .line 2426
    :cond_6
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "syntax error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final readArray(Ljava/util/Collection;Ljava/lang/reflect/Type;)V
    .locals 6

    .line 2518
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2519
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2520
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 2521
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void

    .line 2526
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x2c

    if-eqz v0, :cond_5

    .line 2527
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2528
    const-class v3, Ljava/lang/String;

    if-ne p2, v3, :cond_2

    .line 2529
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2531
    :cond_2
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-virtual {v3, v4, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 2535
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    const-string v3, ","

    .line 2536
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2537
    array-length v3, v0

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_6

    aget-object v5, v0, v4

    .line 2538
    invoke-interface {p2, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2539
    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2542
    :cond_3
    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 2543
    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2533
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not support input "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2547
    :cond_5
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    .line 2548
    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2551
    :cond_6
    :goto_2
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-ne p1, v2, :cond_7

    const/4 v1, 0x1

    :cond_7
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v1, :cond_8

    .line 2552
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    :cond_8
    return-void
.end method

.method public final readArray(Ljava/util/List;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 2514
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->readArray(Ljava/util/Collection;Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public final readArray([Ljava/lang/reflect/Type;)[Ljava/lang/Object;
    .locals 7

    .line 2482
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2486
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2490
    array-length v0, p1

    .line 2491
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    move v3, v2

    .line 2493
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result v4

    if-nez v4, :cond_2

    if-ge v3, v0, :cond_2

    .line 2494
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 2495
    aget-object v5, p1, v3

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .line 2497
    iget v6, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    if-eq v4, v6, :cond_1

    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v6, 0x7d

    if-eq v4, v6, :cond_1

    const/16 v6, 0x1a

    if-eq v4, v6, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 2493
    aput-object v5, v1, v3

    move v3, v4

    goto :goto_0

    .line 2498
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal input : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-ne v3, v0, :cond_5

    .line 2506
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v0, 0x2c

    if-ne p1, v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v2, :cond_4

    .line 2507
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    :cond_4
    return-object v1

    .line 2503
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "element length mismatch"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2487
    :cond_6
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo v0, "syntax error"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract readBigDecimal()Ljava/math/BigDecimal;
.end method

.method public readBigInteger()Ljava/math/BigInteger;
    .locals 1

    .line 1075
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readNumber0()V

    .line 1076
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public readBinary()[B
    .locals 5

    .line 742
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x78

    if-ne v0, v1, :cond_0

    .line 743
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readHex()[B

    move-result-object v0

    return-object v0

    .line 746
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 747
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 748
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 752
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->Base64StringAsByteArray:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 753
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 756
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not support input "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 759
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    const/16 v1, 0x40

    new-array v1, v1, [B

    .line 763
    :goto_0
    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_4

    .line 764
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 774
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 775
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0

    .line 767
    :cond_4
    array-length v2, v1

    if-ne v0, v2, :cond_5

    .line 768
    array-length v2, v1

    shr-int/lit8 v3, v2, 0x1

    add-int/2addr v2, v3

    .line 770
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    :cond_5
    add-int/lit8 v2, v0, 0x1

    .line 772
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    move v0, v2

    goto :goto_0

    .line 778
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "not support read binary"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readBool()Ljava/lang/Boolean;
    .locals 3

    .line 2403
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2407
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readBoolValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2408
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    if-eqz v2, :cond_1

    return-object v1

    .line 2411
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public abstract readBoolValue()Z
.end method

.method public readCalendar()Ljava/util/Calendar;
    .locals 6

    .line 1473
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1474
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readMillisFromString()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 1475
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    if-eqz v0, :cond_0

    return-object v1

    .line 1479
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1480
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object v0

    .line 1484
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readIfNull()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 1488
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    move-result-wide v0

    .line 1489
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-boolean v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->formatUnixTime:Z

    if-eqz v2, :cond_3

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 1493
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1494
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object v2
.end method

.method public readCharValue()C
    .locals 3

    .line 1895
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1896
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1900
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1897
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    return v1
.end method

.method public readCharacter()Ljava/lang/Character;
    .locals 3

    .line 1904
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1905
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1909
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1906
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 1907
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public readDate()Ljava/util/Date;
    .locals 8

    .line 1499
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isInt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1500
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    move-result-wide v0

    .line 1501
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2

    .line 1504
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readIfNull()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return-object v1

    .line 1508
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNullOrEmptyString()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 1513
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isTypeRedirect()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v3, 0x22

    const/16 v4, 0x76

    const/16 v5, 0x61

    const/16 v6, 0x6c

    const/16 v7, 0x22

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatchIdent(CCCCC)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x3a

    .line 1514
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    .line 1515
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    move-result-wide v2

    .line 1516
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    const/4 v0, 0x0

    .line 1517
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->setTypeRedirect(Z)V

    goto :goto_0

    .line 1519
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readMillisFromString()J

    move-result-wide v2

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    .line 1522
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    if-eqz v0, :cond_4

    return-object v1

    .line 1526
    :cond_4
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public final readDouble()Ljava/lang/Double;
    .locals 4

    .line 1057
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 1061
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 1062
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readDoubleValue()D

    move-result-wide v2

    .line 1063
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    if-eqz v0, :cond_1

    return-object v1

    .line 1066
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public abstract readDoubleValue()D
.end method

.method public abstract readFieldName()Ljava/lang/String;
.end method

.method public abstract readFieldNameHashCode()J
.end method

.method public abstract readFieldNameHashCodeUnquote()J
.end method

.method public final readFieldNameUnquote()Ljava/lang/String;
    .locals 1

    .line 727
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCodeUnquote()J

    .line 728
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readFloat()Ljava/lang/Float;
    .locals 3

    .line 1042
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 1046
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 1047
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readFloatValue()F

    move-result v0

    .line 1048
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    if-eqz v2, :cond_1

    return-object v1

    .line 1051
    :cond_1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public abstract readFloatValue()F
.end method

.method public abstract readHex()[B
.end method

.method public abstract readIfNull()Z
.end method

.method public readInstant()Ljava/time/Instant;
    .locals 5

    .line 1585
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1589
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1590
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    move-result-wide v0

    .line 1591
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-boolean v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->formatUnixTime:Z

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 1594
    :cond_1
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    .line 1597
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isObject()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1598
    const-class v0, Ljava/time/Instant;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    .line 1600
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readObject()Ljava/util/Map;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 1599
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Instant;

    return-object v0

    .line 1605
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readZonedDateTime()Ljava/time/ZonedDateTime;

    move-result-object v0

    if-nez v0, :cond_4

    return-object v1

    .line 1611
    :cond_4
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v1

    .line 1612
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalTime;->getNano()I

    move-result v0

    int-to-long v3, v0

    .line 1610
    invoke-static {v1, v2, v3, v4}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public final readInt16()Ljava/lang/Short;
    .locals 1

    .line 855
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readInt32()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 859
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public readInt16Value()S
    .locals 1

    .line 863
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public abstract readInt32()Ljava/lang/Integer;
.end method

.method public abstract readInt32Value()I
.end method

.method public readInt32ValueArray()[I
    .locals 4

    .line 784
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 788
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x8

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 791
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result v2

    if-nez v2, :cond_3

    .line 792
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    move-result v2

    if-nez v2, :cond_2

    .line 796
    array-length v2, v0

    if-ne v1, v2, :cond_1

    .line 797
    array-length v2, v0

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 800
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    move-result v3

    aput v3, v0, v1

    move v1, v2

    goto :goto_0

    .line 793
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "input end"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 802
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 805
    array-length v2, v0

    if-ne v1, v2, :cond_4

    goto :goto_1

    .line 808
    :cond_4
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    :goto_1
    return-object v0

    .line 813
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 814
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 815
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    .line 819
    :cond_6
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not support input "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 822
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "TODO"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract readInt64()Ljava/lang/Long;
.end method

.method public abstract readInt64Value()J
.end method

.method public readInt64ValueArray()[J
    .locals 5

    .line 994
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 998
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x8

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 1001
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1002
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1006
    array-length v2, v0

    if-ne v1, v2, :cond_1

    .line 1007
    array-length v2, v0

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 1010
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    move-result-wide v3

    aput-wide v3, v0, v1

    move v1, v2

    goto :goto_0

    .line 1003
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "input end"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1012
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 1015
    array-length v2, v0

    if-ne v1, v2, :cond_4

    goto :goto_1

    .line 1018
    :cond_4
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    :goto_1
    return-object v0

    .line 1023
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1024
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1025
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    .line 1029
    :cond_6
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not support input "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1032
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "TODO"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readInt8()Ljava/lang/Byte;
    .locals 1

    .line 842
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readInt32()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 846
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public readInt8Value()B
    .locals 1

    .line 850
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public final readJSONArray()Lcom/alibaba/fastjson2/JSONArray;
    .locals 1

    .line 2557
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 2558
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/List;)V

    return-object v0
.end method

.method public final readJSONObject()Lcom/alibaba/fastjson2/JSONObject;
    .locals 3

    .line 2563
    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    const-wide/16 v1, 0x0

    .line 2564
    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    return-object v0
.end method

.method public readList([Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 7

    .line 2450
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2454
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2458
    array-length v0, p1

    .line 2459
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    .line 2461
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result v4

    if-nez v4, :cond_2

    if-ge v3, v0, :cond_2

    .line 2462
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v5, v3, 0x1

    .line 2463
    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    .line 2465
    iget v6, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    if-eq v4, v6, :cond_1

    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v6, 0x7d

    if-eq v4, v6, :cond_1

    const/16 v6, 0x1a

    if-eq v4, v6, :cond_1

    .line 2461
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v5

    goto :goto_0

    .line 2466
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal input : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-ne v3, v0, :cond_5

    .line 2474
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v0, 0x2c

    if-ne p1, v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v2, :cond_4

    .line 2475
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    :cond_4
    return-object v1

    .line 2471
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "element length mismatch"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2455
    :cond_6
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "syntax error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readLocalDate()Ljava/time/LocalDate;
    .locals 4

    .line 1111
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1115
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isInt()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1116
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    move-result-wide v0

    .line 1117
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-boolean v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->formatUnixTime:Z

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 1120
    :cond_1
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    .line 1121
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 1122
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    return-object v0

    .line 1125
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->dateFormat:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-boolean v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMddhhmmss19:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-boolean v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMddhhmmssT19:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-boolean v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMdd8:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-boolean v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatISO8601:Z

    if-eqz v0, :cond_b

    .line 1130
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getStringLength()I

    move-result v0

    const/16 v2, 0x13

    if-eq v0, v2, :cond_a

    const/16 v2, 0x14

    if-eq v0, v2, :cond_9

    packed-switch v0, :pswitch_data_0

    if-le v0, v2, :cond_4

    .line 1158
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTimeX(I)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_1

    :cond_4
    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 1147
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate11()Ljava/time/LocalDate;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 1148
    :cond_5
    sget-object v2, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v0, v2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_1

    .line 1143
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate10()Ljava/time/LocalDate;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_0

    .line 1144
    :cond_6
    sget-object v2, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v0, v2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_1

    .line 1139
    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate9()Ljava/time/LocalDate;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_0

    .line 1140
    :cond_7
    sget-object v2, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v0, v2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_1

    .line 1135
    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate8()Ljava/time/LocalDate;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_0

    .line 1136
    :cond_8
    sget-object v2, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v0, v2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_1

    .line 1154
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime20()Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_1

    .line 1151
    :cond_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime19()Ljava/time/LocalDateTime;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_b

    .line 1163
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    return-object v0

    .line 1167
    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1168
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_2

    .line 1172
    :cond_c
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getDateFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 1174
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-boolean v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->formatHasHour:Z

    if-eqz v2, :cond_d

    .line 1176
    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1177
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    return-object v0

    .line 1179
    :cond_d
    invoke-static {v0, v1}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0

    .line 1182
    :cond_e
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/IOUtils;->isNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1183
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1184
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    .line 1185
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 1186
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    return-object v0

    .line 1189
    :cond_f
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not support input : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    :goto_2
    return-object v1

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract readLocalDate10()Ljava/time/LocalDate;
.end method

.method protected abstract readLocalDate11()Ljava/time/LocalDate;
.end method

.method protected abstract readLocalDate8()Ljava/time/LocalDate;
.end method

.method protected abstract readLocalDate9()Ljava/time/LocalDate;
.end method

.method public readLocalDateTime()Ljava/time/LocalDateTime;
    .locals 4

    .line 1226
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isInt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1227
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    move-result-wide v0

    .line 1228
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    .line 1229
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 1230
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 1233
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->dateFormat:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-boolean v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMddhhmmss19:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-boolean v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMddhhmmssT19:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-boolean v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMdd8:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-boolean v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatISO8601:Z

    if-eqz v0, :cond_9

    .line 1238
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getStringLength()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    .line 1296
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTimeX(I)Ljava/time/LocalDateTime;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    .line 1300
    :cond_2
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->readZonedDateTimeX(I)Ljava/time/ZonedDateTime;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1302
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object v1

    .line 1303
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1304
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_0

    .line 1306
    :cond_3
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1277
    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime20()Ljava/time/LocalDateTime;

    move-result-object v2

    if-eqz v2, :cond_4

    return-object v2

    .line 1281
    :cond_4
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->readZonedDateTimeX(I)Ljava/time/ZonedDateTime;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1283
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 1270
    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime19()Ljava/time/LocalDateTime;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    .line 1263
    :pswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime18()Ljava/time/LocalDateTime;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    .line 1256
    :pswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime17()Ljava/time/LocalDateTime;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    .line 1254
    :pswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime16()Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 1251
    :pswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate11()Ljava/time/LocalDate;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_1

    .line 1252
    :cond_5
    sget-object v1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    :goto_1
    return-object v1

    .line 1248
    :pswitch_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate10()Ljava/time/LocalDate;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_2

    .line 1249
    :cond_6
    sget-object v1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    :goto_2
    return-object v1

    .line 1245
    :pswitch_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate9()Ljava/time/LocalDate;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_3

    .line 1246
    :cond_7
    sget-object v1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    :goto_3
    return-object v1

    .line 1242
    :pswitch_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate8()Ljava/time/LocalDate;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_4

    .line 1243
    :cond_8
    sget-object v1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    :goto_4
    return-object v1

    .line 1316
    :cond_9
    :goto_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1317
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_13

    const-string v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto/16 :goto_6

    .line 1322
    :cond_a
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getDateFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 1324
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-boolean v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->formatHasHour:Z

    if-nez v1, :cond_b

    .line 1326
    invoke-static {v0, v2}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v0

    sget-object v1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    .line 1325
    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 1330
    :cond_b
    invoke-static {v0, v2}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 1333
    :cond_c
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/IOUtils;->isNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1334
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1336
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-boolean v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->formatUnixTime:Z

    if-eqz v2, :cond_d

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 1340
    :cond_d
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    .line 1341
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_e
    const-string v2, "/Date("

    .line 1344
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, ")/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v1, 0x6

    .line 1345
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2b

    .line 1346
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    const/16 v1, 0x2d

    .line 1348
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    :cond_f
    if-eq v1, v2, :cond_10

    const/4 v2, 0x0

    .line 1351
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1353
    :cond_10
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1354
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    .line 1355
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_11
    const-string v2, "0000-00-00 00:00:00"

    .line 1358
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1359
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    return-object v1

    .line 1362
    :cond_12
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read LocalDateTime error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1318
    :cond_13
    :goto_6
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    return-object v1

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract readLocalDateTime12()Ljava/time/LocalDateTime;
.end method

.method protected abstract readLocalDateTime14()Ljava/time/LocalDateTime;
.end method

.method protected abstract readLocalDateTime16()Ljava/time/LocalDateTime;
.end method

.method protected abstract readLocalDateTime17()Ljava/time/LocalDateTime;
.end method

.method protected abstract readLocalDateTime18()Ljava/time/LocalDateTime;
.end method

.method protected abstract readLocalDateTime19()Ljava/time/LocalDateTime;
.end method

.method protected abstract readLocalDateTime20()Ljava/time/LocalDateTime;
.end method

.method protected abstract readLocalDateTimeX(I)Ljava/time/LocalDateTime;
.end method

.method public readLocalTime()Ljava/time/LocalTime;
    .locals 4

    .line 1530
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1534
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isInt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1535
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    move-result-wide v0

    .line 1536
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    .line 1537
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 1538
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 1541
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getStringLength()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_5

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 1567
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1568
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 1572
    :cond_2
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/IOUtils;->isNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1573
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1574
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    .line 1575
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 1576
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 1579
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not support len : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_0
    return-object v1

    .line 1561
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime20()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1562
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 1558
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime19()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1559
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 1556
    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalTime18()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 1554
    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalTime12()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 1552
    :pswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalTime11()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 1550
    :pswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalTime10()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 1548
    :pswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalTime9()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 1546
    :pswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalTime8()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 1544
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalTime5()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract readLocalTime10()Ljava/time/LocalTime;
.end method

.method protected abstract readLocalTime11()Ljava/time/LocalTime;
.end method

.method protected abstract readLocalTime12()Ljava/time/LocalTime;
.end method

.method protected abstract readLocalTime18()Ljava/time/LocalTime;
.end method

.method protected abstract readLocalTime5()Ljava/time/LocalTime;
.end method

.method protected abstract readLocalTime8()Ljava/time/LocalTime;
.end method

.method protected abstract readLocalTime9()Ljava/time/LocalTime;
.end method

.method public abstract readMillis19()J
.end method

.method public final readMillisFromString()J
    .locals 12

    const/4 v0, 0x0

    .line 1616
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 1617
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->dateFormat:Ljava/lang/String;

    const/4 v2, 0x1

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    .line 1618
    iget-object v8, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-boolean v8, v8, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMddhhmmss19:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-boolean v8, v8, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMddhhmmssT19:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-boolean v8, v8, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMdd8:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-boolean v8, v8, Lcom/alibaba/fastjson2/JSONReader$Context;->formatISO8601:Z

    if-eqz v8, :cond_c

    .line 1623
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getStringLength()I

    move-result v8

    const-string v9, "TODO : "

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 1696
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime20()Ljava/time/LocalDateTime;

    move-result-object v9

    goto/16 :goto_2

    .line 1687
    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readMillis19()J

    move-result-wide v9

    cmp-long v11, v9, v5

    if-nez v11, :cond_2

    .line 1688
    iget-boolean v11, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    if-nez v11, :cond_1

    goto :goto_0

    .line 1692
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime19()Ljava/time/LocalDateTime;

    move-result-object v9

    goto/16 :goto_2

    :cond_2
    :goto_0
    return-wide v9

    .line 1683
    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime18()Ljava/time/LocalDateTime;

    move-result-object v9

    goto/16 :goto_2

    .line 1679
    :pswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime17()Ljava/time/LocalDateTime;

    move-result-object v9

    goto/16 :goto_2

    .line 1675
    :pswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime16()Ljava/time/LocalDateTime;

    move-result-object v9

    goto/16 :goto_2

    .line 1671
    :pswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime14()Ljava/time/LocalDateTime;

    move-result-object v9

    goto/16 :goto_2

    .line 1667
    :pswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime12()Ljava/time/LocalDateTime;

    move-result-object v9

    goto/16 :goto_2

    .line 1660
    :pswitch_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate11()Ljava/time/LocalDate;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 1662
    sget-object v10, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v9, v10}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v9

    goto/16 :goto_2

    .line 1643
    :pswitch_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate10()Ljava/time/LocalDate;

    move-result-object v10

    if-nez v10, :cond_5

    .line 1645
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0000-00-00"

    .line 1646
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1647
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    return-wide v5

    .line 1650
    :cond_3
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/IOUtils;->isNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1651
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 1653
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1655
    :cond_5
    sget-object v9, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v10, v9}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v9

    goto :goto_2

    .line 1636
    :pswitch_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate9()Ljava/time/LocalDate;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 1638
    sget-object v10, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v9, v10}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v9

    goto :goto_2

    .line 1628
    :pswitch_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate8()Ljava/time/LocalDate;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 1632
    sget-object v9, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v10, v9}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v9

    goto :goto_2

    .line 1630
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_1
    move-object v9, v7

    :goto_2
    if-eqz v9, :cond_8

    .line 1705
    iget-object v8, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v8}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object v8

    invoke-static {v9, v8, v7}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v8

    goto :goto_3

    :cond_8
    const/16 v9, 0x14

    if-lt v8, v9, :cond_a

    .line 1707
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson2/JSONReader;->readZonedDateTimeX(I)Ljava/time/ZonedDateTime;

    move-result-object v9

    if-nez v9, :cond_9

    const/16 v10, 0x20

    if-lt v8, v10, :cond_9

    const/16 v10, 0x23

    if-gt v8, v10, :cond_9

    .line 1709
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1710
    invoke-static {v8, v7}, Lcom/alibaba/fastjson2/util/DateUtils;->parseZonedDateTime(Ljava/lang/String;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v8

    goto :goto_3

    :cond_9
    move-object v8, v9

    goto :goto_3

    :cond_a
    move-object v8, v7

    :goto_3
    if-eqz v8, :cond_c

    .line 1715
    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    .line 1716
    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalTime;->getNano()I

    move-result v2

    cmp-long v5, v0, v5

    const v6, 0xf4240

    if-gez v5, :cond_b

    if-lez v2, :cond_b

    const-wide/16 v7, 0x1

    add-long/2addr v0, v7

    mul-long/2addr v0, v3

    .line 1719
    div-int/2addr v2, v6

    add-int/lit16 v2, v2, -0x3e8

    :goto_4
    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_b
    mul-long/2addr v0, v3

    .line 1723
    div-int/2addr v2, v6

    goto :goto_4

    .line 1728
    :cond_c
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1730
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1b

    const-string v9, "null"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    goto/16 :goto_7

    .line 1735
    :cond_d
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-boolean v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->formatMillis:Z

    if-nez v2, :cond_19

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-boolean v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->formatUnixTime:Z

    if-eqz v2, :cond_e

    goto/16 :goto_6

    :cond_e
    const/16 v2, 0x2d

    if-eqz v1, :cond_12

    .line 1743
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    .line 1744
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1745
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_f

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_10

    :cond_f
    invoke-static {v8}, Lcom/alibaba/fastjson2/util/IOUtils;->isNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1746
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 1749
    :cond_10
    invoke-static {v8, v7}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis19(Ljava/lang/String;Ljava/time/ZoneId;)J

    move-result-wide v0

    return-wide v0

    .line 1752
    :cond_11
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1755
    :try_start_0
    invoke-virtual {v0, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 1756
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 1758
    :catch_0
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse date error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expect format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    const-string v3, "0000-00-00T00:00:00"

    .line 1761
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    const-string v3, "0001-01-01T00:00:00+08:00"

    .line 1762
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_5

    :cond_13
    const-string v3, "/Date("

    .line 1766
    invoke-virtual {v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v3, ")/"

    invoke-virtual {v8, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v1, 0x6

    .line 1767
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v8, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x2b

    .line 1768
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_14

    .line 1770
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    :cond_14
    if-eq v3, v4, :cond_15

    .line 1773
    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1775
    :cond_15
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 1776
    :cond_16
    invoke-static {v8}, Lcom/alibaba/fastjson2/util/IOUtils;->isNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1777
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 1780
    :cond_17
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not support, input "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    :goto_5
    return-wide v5

    .line 1736
    :cond_19
    :goto_6
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1737
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-boolean v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->formatUnixTime:Z

    if-eqz v2, :cond_1a

    mul-long/2addr v0, v3

    :cond_1a
    return-wide v0

    .line 1731
    :cond_1b
    :goto_7
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    return-wide v5

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public abstract readNull()V
.end method

.method public abstract readNullOrNewDate()Ljava/util/Date;
.end method

.method public readNumber()Ljava/lang/Number;
    .locals 1

    .line 1070
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readNumber0()V

    .line 1071
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getNumber()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public readNumber(Lcom/alibaba/fastjson2/reader/ValueConsumer;Z)V
    .locals 0

    .line 1826
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readNumber0()V

    .line 1827
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getNumber()Ljava/lang/Number;

    move-result-object p2

    .line 1828
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson2/reader/ValueConsumer;->accept(Ljava/lang/Number;)V

    return-void
.end method

.method protected abstract readNumber0()V
.end method

.method public readObject()Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2274
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    .line 2276
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->level:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->level:I

    .line 2277
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->maxLevel:I

    if-ge v0, v2, :cond_10

    .line 2282
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->objectSupplier:Ljava/util/function/Supplier;

    const-wide/16 v2, 0x0

    if-nez v0, :cond_1

    .line 2283
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v6, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    .line 2284
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    .line 2286
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    goto :goto_0

    .line 2289
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->objectSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :goto_0
    const/4 v4, 0x0

    move v5, v4

    .line 2293
    :goto_1
    iget-char v6, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v7, 0x7d

    if-ne v6, v7, :cond_4

    .line 2294
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 2391
    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_2

    move v4, v1

    :cond_2
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v4, :cond_3

    .line 2392
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 2395
    :cond_3
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->level:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->level:I

    return-object v0

    .line 2298
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readFieldName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_8

    .line 2300
    iget-char v6, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v7, 0x1a

    if-eq v6, v7, :cond_7

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_6

    const/16 v7, 0x30

    if-lt v6, v7, :cond_5

    const/16 v7, 0x39

    if-gt v6, v7, :cond_5

    goto :goto_2

    .line 2308
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameUnquote()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 2305
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readNumber0()V

    .line 2306
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getNumber()Ljava/lang/Number;

    move-result-object v6

    :goto_3
    const/16 v7, 0x3a

    .line 2310
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    goto :goto_4

    .line 2301
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "input end"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_4
    if-nez v5, :cond_a

    .line 2313
    iget-object v7, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v9, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNotSupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v9, v9, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v7, v9

    cmp-long v7, v7, v2

    if-eqz v7, :cond_a

    const-string v7, "@type"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_5

    .line 2314
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2315
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoType not support : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2318
    :cond_a
    :goto_5
    iget-char v7, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const-string v8, "illegal input "

    sparse-switch v7, :sswitch_data_0

    packed-switch v7, :pswitch_data_0

    .line 2370
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2353
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->skipComment()V

    goto/16 :goto_7

    .line 2338
    :sswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readObject()Ljava/util/Map;

    move-result-object v7

    goto/16 :goto_6

    .line 2349
    :sswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readNull()V

    const/4 v7, 0x0

    goto :goto_6

    .line 2346
    :sswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readBoolValue()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_6

    .line 2335
    :sswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readArray()Ljava/util/List;

    move-result-object v7

    goto :goto_6

    .line 2363
    :sswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfSet()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2364
    const-class v7, Ljava/util/Set;

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_6

    .line 2367
    :cond_b
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2356
    :sswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfInfinity()Z

    move-result v7

    if-eqz v7, :cond_c

    const-wide/high16 v7, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 2357
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    goto :goto_6

    .line 2360
    :cond_c
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2331
    :pswitch_1
    :sswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readNumber0()V

    .line 2332
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getNumber()Ljava/lang/Number;

    move-result-object v7

    goto :goto_6

    .line 2342
    :sswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v7

    :goto_6
    if-nez v7, :cond_d

    .line 2373
    iget-object v8, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v8, v8, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v10, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v10, v10, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v8, v10

    cmp-long v8, v8, v2

    if-eqz v8, :cond_d

    goto :goto_7

    .line 2377
    :cond_d
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_f

    .line 2379
    iget-object v9, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v9, v9, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v11, Lcom/alibaba/fastjson2/JSONReader$Feature;->DuplicateKeyValueAsArray:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v11, v11, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v9, v11

    cmp-long v9, v9, v2

    if-eqz v9, :cond_f

    .line 2380
    instance-of v9, v8, Ljava/util/Collection;

    if-eqz v9, :cond_e

    .line 2381
    move-object v9, v8

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2382
    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 2384
    :cond_e
    invoke-static {v8, v7}, Lcom/alibaba/fastjson2/JSONArray;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object v7

    .line 2385
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 2278
    :cond_10
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level too large : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_7
        0x27 -> :sswitch_7
        0x2b -> :sswitch_6
        0x2d -> :sswitch_6
        0x49 -> :sswitch_5
        0x53 -> :sswitch_4
        0x5b -> :sswitch_3
        0x66 -> :sswitch_2
        0x6e -> :sswitch_1
        0x74 -> :sswitch_2
        0x7b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final readObject(Ljava/lang/Object;J)V
    .locals 5

    if-eqz p1, :cond_3

    .line 1989
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1990
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    or-long/2addr v1, p2

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1991
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    .line 1992
    instance-of v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;

    if-eqz v1, :cond_1

    .line 1993
    check-cast v0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;

    .line 1994
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;J)V

    goto :goto_1

    .line 1995
    :cond_1
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 1996
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    :goto_1
    return-void

    .line 1998
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "read object not support"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1987
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "object is null"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs readObject(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 6

    .line 1979
    array-length v0, p2

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v4, p2, v3

    .line 1980
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1982
    :cond_0
    invoke-virtual {p0, p1, v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->readObject(Ljava/lang/Object;J)V

    return-void
.end method

.method public abstract readOffsetDateTime()Ljava/time/OffsetDateTime;
.end method

.method public readOffsetTime()Ljava/time/OffsetTime;
    .locals 2

    .line 1469
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "TODO"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract readPattern()Ljava/lang/String;
.end method

.method public abstract readReference()Ljava/lang/String;
.end method

.method public readReference(Ljava/util/List;I)Z
    .locals 2

    .line 603
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 606
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".."

    .line 607
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 608
    invoke-interface {p1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 610
    :cond_1
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Collection;ILcom/alibaba/fastjson2/JSONPath;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public abstract readString()Ljava/lang/String;
.end method

.method public readString(Lcom/alibaba/fastjson2/reader/ValueConsumer;Z)V
    .locals 1

    .line 1832
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 1834
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/alibaba/fastjson2/reader/ValueConsumer;->accept(Ljava/lang/String;)V

    goto :goto_0

    .line 1836
    :cond_0
    invoke-interface {p1, v0}, Lcom/alibaba/fastjson2/reader/ValueConsumer;->accept(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public readStringArray()[Ljava/lang/String;
    .locals 5

    .line 1845
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/4 v1, 0x0

    const/16 v2, 0x6e

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 1849
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    move v2, v0

    .line 1853
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v1, :cond_1

    new-array v1, v0, [Ljava/lang/String;

    .line 1874
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 1876
    array-length v0, v1

    if-ne v0, v2, :cond_2

    return-object v1

    .line 1879
    :cond_2
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 1860
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    move-result v3

    if-nez v3, :cond_6

    if-nez v1, :cond_4

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_1

    .line 1867
    :cond_4
    array-length v3, v1

    if-ne v2, v3, :cond_5

    .line 1868
    array-length v3, v1

    shl-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    :cond_5
    :goto_1
    add-int/lit8 v3, v2, 0x1

    .line 1872
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    move v2, v3

    goto :goto_0

    .line 1861
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "input end"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1882
    :cond_7
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x22

    if-eq v0, v2, :cond_9

    const/16 v2, 0x27

    if-ne v0, v2, :cond_8

    goto :goto_2

    .line 1891
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "not support input"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1883
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1884
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    return-object v1

    .line 1888
    :cond_a
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not support input "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readTypeHashCode()J
    .locals 2

    .line 705
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readValueHashCode()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract readUUID()Ljava/util/UUID;
.end method

.method public abstract readValueHashCode()J
.end method

.method public readZonedDateTime()Ljava/time/ZonedDateTime;
    .locals 5

    .line 1368
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isInt()Z

    move-result v0

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_1

    .line 1369
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    move-result-wide v3

    .line 1370
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-boolean v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatUnixTime:Z

    if-eqz v0, :cond_0

    mul-long/2addr v3, v1

    .line 1373
    :cond_0
    invoke-static {v3, v4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    .line 1374
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    .line 1377
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_e

    .line 1378
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->dateFormat:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-boolean v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMddhhmmss19:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-boolean v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMddhhmmssT19:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-boolean v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMdd8:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-boolean v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatISO8601:Z

    if-eqz v0, :cond_7

    .line 1383
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getStringLength()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1420
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->readZonedDateTimeX(I)Ljava/time/ZonedDateTime;

    move-result-object v0

    if-eqz v0, :cond_6

    return-object v0

    .line 1416
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime20()Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_1

    .line 1413
    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime19()Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_1

    .line 1410
    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime18()Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_1

    .line 1407
    :pswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime17()Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_1

    .line 1404
    :pswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime16()Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_1

    .line 1400
    :pswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate11()Ljava/time/LocalDate;

    move-result-object v0

    .line 1401
    sget-object v4, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v0, v4}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_1

    .line 1396
    :pswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate10()Ljava/time/LocalDate;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 1397
    :cond_3
    sget-object v4, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v0, v4}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_1

    .line 1392
    :pswitch_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate9()Ljava/time/LocalDate;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 1393
    :cond_4
    sget-object v4, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v0, v4}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_1

    .line 1388
    :pswitch_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate8()Ljava/time/LocalDate;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 1389
    :cond_5
    sget-object v4, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v0, v4}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_1

    :cond_6
    :goto_0
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_7

    .line 1427
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 1429
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object v1

    .line 1427
    invoke-static {v0, v1, v3}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    .line 1435
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1436
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "null"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_2

    .line 1440
    :cond_8
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getDateFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1442
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-boolean v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->formatHasHour:Z

    if-nez v1, :cond_9

    .line 1443
    invoke-static {v0, v3}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v0

    .line 1444
    sget-object v1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    .line 1446
    :cond_9
    invoke-static {v0, v3}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1447
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    .line 1450
    :cond_a
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/IOUtils;->isNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1451
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1452
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-boolean v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatUnixTime:Z

    if-eqz v0, :cond_b

    mul-long/2addr v3, v1

    .line 1455
    :cond_b
    invoke-static {v3, v4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    .line 1456
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    .line 1459
    :cond_c
    invoke-static {v0}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_d
    :goto_2
    return-object v3

    .line 1462
    :cond_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    if-eqz v0, :cond_f

    return-object v3

    .line 1465
    :cond_f
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TODO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract readZonedDateTimeX(I)Ljava/time/ZonedDateTime;
.end method

.method public reset(Lcom/alibaba/fastjson2/JSONReader$SavePoint;)V
    .locals 1

    .line 4569
    iget v0, p1, Lcom/alibaba/fastjson2/JSONReader$SavePoint;->offset:I

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 4570
    iget p1, p1, Lcom/alibaba/fastjson2/JSONReader$SavePoint;->current:I

    int-to-char p1, p1

    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return-void
.end method

.method public final setTypeRedirect(Z)V
    .locals 0

    .line 717
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/JSONReader;->typeRedirect:Z

    return-void
.end method

.method public abstract skipComment()V
.end method

.method public abstract skipName()Z
.end method

.method public abstract skipValue()V
.end method

.method public startArray()I
    .locals 3

    .line 592
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    return v0

    .line 593
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal input, expect \'[\', but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final toInt(Ljava/util/List;)I
    .locals 3

    .line 3108
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 3109
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 3110
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 3111
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    .line 3113
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3114
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 3118
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseLong error, field : value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final toInt32(Ljava/lang/String;)I
    .locals 3

    .line 3077
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/IOUtils;->isNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3078
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 3080
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseInt error, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final toInt64(Ljava/lang/String;)J
    .locals 3

    .line 3084
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/IOUtils;->isNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3085
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 3088
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x28

    if-ge v0, v1, :cond_1

    .line 3090
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->zoneId:Ljava/time/ZoneId;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis(Ljava/lang/String;Ljava/time/ZoneId;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 3096
    :catch_0
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseLong error, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final toLong(Ljava/util/Map;)J
    .locals 3

    const-string/jumbo v0, "val"

    .line 3100
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3101
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 3102
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 3104
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseLong error, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final toNumber(Ljava/util/List;)Ljava/lang/Number;
    .locals 2

    .line 3141
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 3142
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 3143
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 3144
    check-cast p1, Ljava/lang/Number;

    return-object p1

    .line 3147
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3148
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final toNumber(Ljava/util/Map;)Ljava/lang/Number;
    .locals 1

    const-string/jumbo v0, "val"

    .line 3122
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3123
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 3124
    check-cast p1, Ljava/lang/Number;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final toString(Ljava/util/List;)Ljava/lang/String;
    .locals 1

    .line 3155
    invoke-static {}, Lcom/alibaba/fastjson2/JSONWriter;->of()Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object v0

    .line 3156
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->setRootObject(Ljava/lang/Object;)V

    .line 3157
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->write(Ljava/util/List;)V

    .line 3158
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final toString(Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    .line 3162
    invoke-static {}, Lcom/alibaba/fastjson2/JSONWriter;->of()Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object v0

    .line 3163
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->setRootObject(Ljava/lang/Object;)V

    .line 3164
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->write(Ljava/util/Map;)V

    .line 3165
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public wasNull()Z
    .locals 1

    .line 1919
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    return v0
.end method
