.class final Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharValueArray;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;
.source "ObjectReaderImplCharValueArray.java"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharValueArray;

.field static final TYPE_HASH:J


# instance fields
.field final builder:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "[C",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharValueArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharValueArray;-><init>(Ljava/util/function/Function;)V

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharValueArray;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharValueArray;

    const-string v0, "[C"

    .line 15
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharValueArray;->TYPE_HASH:J

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "[C",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 20
    const-class v0, [C

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;-><init>(Ljava/lang/Class;)V

    .line 21
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharValueArray;->builder:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    const/16 p2, -0x6e

    .line 75
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 76
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    move-result-wide p2

    .line 77
    sget-wide p4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharValueArray;->TYPE_HASH:J

    cmp-long p2, p2, p4

    if-nez p2, :cond_0

    goto :goto_0

    .line 78
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

    .line 82
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 83
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    return-object p1

    .line 87
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_3

    const/4 p1, 0x0

    return-object p1

    .line 91
    :cond_3
    new-array p3, p2, [C

    const/4 p4, 0x0

    move p5, p4

    :goto_1
    if-ge p5, p2, :cond_5

    .line 93
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isInt()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 94
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    move-result v0

    int-to-char v0, v0

    aput-char v0, p3, p5

    goto :goto_2

    .line 96
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aput-char v0, p3, p5

    :goto_2
    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    .line 99
    :cond_5
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharValueArray;->builder:Ljava/util/function/Function;

    if-eqz p1, :cond_6

    .line 100
    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_6
    return-object p3
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .line 26
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readIfNull()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result p2

    const/16 p3, 0x22

    if-ne p2, p3, :cond_2

    .line 31
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 33
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharValueArray;->builder:Ljava/util/function/Function;

    if-eqz p2, :cond_1

    .line 34
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_1
    return-object p1

    .line 39
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    move-result p2

    if-eqz p2, :cond_9

    const/16 p2, 0x10

    new-array p2, p2, [C

    const/4 p3, 0x0

    move p4, p3

    .line 42
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result p5

    if-nez p5, :cond_7

    add-int/lit8 p5, p4, 0x1

    .line 44
    array-length v0, p2

    sub-int v0, p5, v0

    if-lez v0, :cond_4

    .line 45
    array-length v0, p2

    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v1

    sub-int v1, v0, p5

    if-gez v1, :cond_3

    move v0, p5

    .line 51
    :cond_3
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p2

    .line 54
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isInt()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 55
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    move-result v0

    int-to-char v0, v0

    aput-char v0, p2, p4

    :goto_1
    move p4, p5

    goto :goto_0

    .line 58
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    move v0, p3

    goto :goto_2

    .line 59
    :cond_6
    invoke-virtual {v0, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_2
    aput-char v0, p2, p4

    goto :goto_1

    .line 61
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 63
    invoke-static {p2, p4}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p1

    .line 64
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharValueArray;->builder:Ljava/util/function/Function;

    if-eqz p2, :cond_8

    .line 65
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_8
    return-object p1

    .line 70
    :cond_9
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    const-string p3, "TODO"

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
