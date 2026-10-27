.class public Lcom/alibaba/fastjson/JSONReader;
.super Ljava/lang/Object;
.source "JSONReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final input:Ljava/io/Reader;

.field private final raw:Lcom/alibaba/fastjson2/JSONReader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson/parser/Feature;

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/JSONReader;-><init>(Ljava/io/Reader;[Lcom/alibaba/fastjson/parser/Feature;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/io/Reader;[Lcom/alibaba/fastjson/parser/Feature;)V
    .locals 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-static {v0, p2}, Lcom/alibaba/fastjson/JSON;->createReadContext(I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    .line 22
    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/io/Reader;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson/JSONReader;->raw:Lcom/alibaba/fastjson2/JSONReader;

    .line 23
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONReader;->input:Ljava/io/Reader;

    const/4 p1, 0x0

    move v1, p1

    .line 24
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 25
    aget-object v2, p2, v1

    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 26
    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportArrayToBean:Lcom/alibaba/fastjson2/JSONReader$Feature;

    aput-object v3, v2, p1

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReader$Context;->config([Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->input:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 1

    .line 120
    sget-object v0, Lcom/alibaba/fastjson/JSONReader$1;->$SwitchMap$com$alibaba$fastjson$parser$Feature:[I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/Feature;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 128
    :cond_0
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    goto :goto_0

    .line 125
    :cond_1
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    goto :goto_0

    .line 122
    :cond_2
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportArrayToBean:Lcom/alibaba/fastjson2/JSONReader$Feature;

    :goto_0
    if-nez p1, :cond_3

    return-void

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->raw:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->config(Lcom/alibaba/fastjson2/JSONReader$Feature;Z)V

    return-void
.end method

.method public endArray()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->raw:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->raw:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    return-void

    .line 91
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "not support operation"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endObject()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->raw:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->raw:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    return-void

    .line 105
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONReader;->raw:Lcom/alibaba/fastjson2/JSONReader;

    const-string v2, "not support operation"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLocal()Ljava/util/Locale;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->raw:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->raw:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->raw:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->raw:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v0

    const/16 v2, 0x5d

    if-eq v0, v2, :cond_1

    const/16 v2, 0x7d

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public readInteger()Ljava/lang/Integer;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->raw:Lcom/alibaba/fastjson2/JSONReader;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    .line 60
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->raw:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readInt32()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public readLong()Ljava/lang/Long;
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->raw:Lcom/alibaba/fastjson2/JSONReader;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    .line 65
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->raw:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readInt64()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public readObject()Ljava/lang/Object;
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->raw:Lcom/alibaba/fastjson2/JSONReader;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    .line 50
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->raw:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->raw:Lcom/alibaba/fastjson2/JSONReader;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->raw:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 44
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public readObject(Ljava/lang/Object;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->raw:Lcom/alibaba/fastjson2/JSONReader;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    .line 55
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->raw:Lcom/alibaba/fastjson2/JSONReader;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson2/JSONReader;->readObject(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    return-void
.end method

.method public readString()Ljava/lang/String;
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->raw:Lcom/alibaba/fastjson2/JSONReader;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    .line 70
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->raw:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->raw:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setTimzeZone(Ljava/util/TimeZone;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->raw:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public startArray()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->raw:Lcom/alibaba/fastjson2/JSONReader;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    .line 84
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->raw:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 85
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "not support operation"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startObject()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->raw:Lcom/alibaba/fastjson2/JSONReader;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    .line 98
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->raw:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 99
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "not support operation"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
