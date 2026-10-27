.class Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;
.source "ObjectReaderImplInt8ValueArray.java"


# static fields
.field static final HASH_TYPE:J

.field static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;


# instance fields
.field final builder:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "[B",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final features:J

.field final format:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;

    const-string v0, "[B"

    .line 20
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;->HASH_TYPE:J

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 27
    const-class v0, [B

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;-><init>(Ljava/lang/Class;)V

    .line 28
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;->format:Ljava/lang/String;

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;->builder:Ljava/util/function/Function;

    const-wide/16 v0, 0x0

    .line 30
    iput-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;->features:J

    return-void
.end method

.method constructor <init>(Ljava/util/function/Function;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "[B",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 34
    const-class v0, [B

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;-><init>(Ljava/lang/Class;)V

    .line 35
    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;->format:Ljava/lang/String;

    const-string v0, "base64"

    .line 36
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->Base64StringAsByteArray:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v0, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;->features:J

    .line 37
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;->builder:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public createInstance(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 7

    .line 127
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 129
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_1

    .line 133
    :cond_0
    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_1

    .line 134
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->byteValue()B

    move-result v3

    goto :goto_1

    .line 136
    :cond_1
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 140
    invoke-interface {v4, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    :goto_1
    add-int/lit8 v4, v2, 0x1

    .line 142
    aput-byte v3, v0, v2

    move v2, v4

    goto :goto_0

    .line 138
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can not cast to byte "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 145
    :cond_3
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;->builder:Ljava/util/function/Function;

    if-eqz p1, :cond_4

    .line 146
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v0
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    const/16 p2, -0x6e

    .line 96
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 97
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    move-result-wide p2

    .line 98
    sget-wide p4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;->HASH_TYPE:J

    cmp-long p4, p2, p4

    if-eqz p4, :cond_1

    sget-wide p4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8Array;->HASH_TYPE:J

    cmp-long p2, p2, p4

    if-nez p2, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "not support autoType : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 104
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isBinary()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 105
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readBinary()[B

    move-result-object p1

    goto :goto_2

    .line 106
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 107
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 108
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_2

    .line 110
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 114
    :cond_4
    new-array p3, p2, [B

    const/4 p4, 0x0

    :goto_1
    if-ge p4, p2, :cond_5

    .line 116
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    move-result p5

    int-to-byte p5, p5

    aput-byte p5, p3, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_5
    move-object p1, p3

    .line 119
    :goto_2
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;->builder:Ljava/util/function/Function;

    if-eqz p2, :cond_6

    .line 120
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_6
    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readIfNull()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 46
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    move-result p2

    if-eqz p2, :cond_6

    const/16 p2, 0x10

    new-array p2, p2, [B

    const/4 p3, 0x0

    .line 49
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result p4

    if-nez p4, :cond_4

    .line 50
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    move-result p4

    if-nez p4, :cond_3

    add-int/lit8 p4, p3, 0x1

    .line 55
    array-length p5, p2

    sub-int p5, p4, p5

    if-lez p5, :cond_2

    .line 56
    array-length p5, p2

    shr-int/lit8 v0, p5, 0x1

    add-int/2addr p5, v0

    sub-int v0, p5, p4

    if-gez v0, :cond_1

    move p5, p4

    .line 62
    :cond_1
    invoke-static {p2, p5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    .line 65
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    move-result p5

    int-to-byte p5, p5

    aput-byte p5, p2, p3

    move p3, p4

    goto :goto_0

    .line 51
    :cond_3
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    const-string p3, "input end"

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 67
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 69
    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    .line 70
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;->builder:Ljava/util/function/Function;

    if-eqz p2, :cond_5

    .line 71
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_5
    return-object p1

    .line 76
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 78
    iget-wide p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;->features:J

    or-long/2addr p2, p4

    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/JSONReader;->features(J)J

    move-result-wide p2

    sget-object p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->Base64StringAsByteArray:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide p4, p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p2, p4

    const-wide/16 p4, 0x0

    cmp-long p2, p2, p4

    if-eqz p2, :cond_7

    .line 79
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_1

    .line 82
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readBinary()[B

    move-result-object p1

    .line 85
    :goto_1
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;->builder:Ljava/util/function/Function;

    if-eqz p2, :cond_8

    .line 86
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_8
    return-object p1

    .line 91
    :cond_9
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    const-string p3, "TODO"

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
