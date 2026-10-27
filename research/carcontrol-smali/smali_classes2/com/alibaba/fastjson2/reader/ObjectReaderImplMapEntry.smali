.class Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;
.source "ObjectReaderImplMapEntry.java"


# instance fields
.field volatile keyReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field final keyType:Ljava/lang/reflect/Type;

.field volatile valueReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field final valueType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .locals 1

    .line 19
    const-class v0, Ljava/util/Map$Entry;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;-><init>(Ljava/lang/Class;)V

    .line 20
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;->keyType:Ljava/lang/reflect/Type;

    .line 21
    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;->valueType:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 8

    .line 26
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 31
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;->keyType:Ljava/lang/reflect/Type;

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;->keyReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;->keyType:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;->keyReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;->keyReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 41
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;->valueType:Ljava/lang/reflect/Type;

    if-nez v1, :cond_2

    .line 42
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 44
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;->valueReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v1, :cond_3

    .line 45
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;->valueType:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;->valueReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 47
    :cond_3
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;->valueReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 50
    :goto_1
    new-instance p2, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {p2, v0, p1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    .line 28
    :cond_4
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "entryCnt must be 2, but "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 8

    .line 55
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    .line 56
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3a

    .line 57
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    .line 60
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;->valueType:Ljava/lang/reflect/Type;

    if-nez v1, :cond_0

    .line 61
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;->valueReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;->valueType:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;->valueReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 66
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;->valueReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 69
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    .line 70
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 71
    new-instance p1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {p1, v0, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
