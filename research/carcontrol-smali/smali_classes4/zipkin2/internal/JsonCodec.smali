.class public final Lzipkin2/internal/JsonCodec;
.super Ljava/lang/Object;
.source "JsonCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzipkin2/internal/JsonCodec$JsonReaderAdapter;,
        Lzipkin2/internal/JsonCodec$JsonReader;
    }
.end annotation


# static fields
.field static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 120
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lzipkin2/internal/JsonCodec;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static exceptionReading(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/IllegalArgumentException;
    .locals 3

    .line 235
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Error"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "malformed"

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v0, "Malformed"

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    const-string p0, "%s reading %s from json"

    .line 237
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 238
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static read(Lzipkin2/internal/JsonCodec$JsonReaderAdapter;[BLjava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lzipkin2/internal/JsonCodec$JsonReaderAdapter<",
            "TT;>;[B",
            "Ljava/util/Collection<",
            "TT;>;)Z"
        }
    .end annotation

    .line 127
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 129
    :cond_0
    :try_start_0
    new-instance v0, Lzipkin2/internal/JsonCodec$JsonReader;

    invoke-direct {v0, p1}, Lzipkin2/internal/JsonCodec$JsonReader;-><init>([B)V

    invoke-interface {p0, v0}, Lzipkin2/internal/JsonCodec$JsonReaderAdapter;->fromJson(Lzipkin2/internal/JsonCodec$JsonReader;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lzipkin2/internal/JsonCodec;->exceptionReading(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public static readList(Lzipkin2/internal/JsonCodec$JsonReaderAdapter;[BLjava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lzipkin2/internal/JsonCodec$JsonReaderAdapter<",
            "TT;>;[B",
            "Ljava/util/Collection<",
            "TT;>;)Z"
        }
    .end annotation

    .line 144
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 145
    :cond_0
    new-instance v0, Lzipkin2/internal/JsonCodec$JsonReader;

    invoke-direct {v0, p1}, Lzipkin2/internal/JsonCodec$JsonReader;-><init>([B)V

    .line 147
    :try_start_0
    invoke-virtual {v0}, Lzipkin2/internal/JsonCodec$JsonReader;->beginArray()V

    .line 148
    invoke-virtual {v0}, Lzipkin2/internal/JsonCodec$JsonReader;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 149
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lzipkin2/internal/JsonCodec$JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0, v0}, Lzipkin2/internal/JsonCodec$JsonReaderAdapter;->fromJson(Lzipkin2/internal/JsonCodec$JsonReader;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {v0}, Lzipkin2/internal/JsonCodec$JsonReader;->endArray()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    .line 153
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "List<"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ">"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lzipkin2/internal/JsonCodec;->exceptionReading(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public static readOne(Lzipkin2/internal/JsonCodec$JsonReaderAdapter;[B)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lzipkin2/internal/JsonCodec$JsonReaderAdapter<",
            "TT;>;[B)TT;"
        }
    .end annotation

    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    invoke-static {p0, p1, v0}, Lzipkin2/internal/JsonCodec;->read(Lzipkin2/internal/JsonCodec$JsonReaderAdapter;[BLjava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 139
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static sizeInBytes(Lzipkin2/internal/Buffer$Writer;Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lzipkin2/internal/Buffer$Writer<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)I"
        }
    .end annotation

    .line 158
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-le v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    add-int/2addr v2, v1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 162
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Lzipkin2/internal/Buffer$Writer;->sizeInBytes(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static write(Lzipkin2/internal/Buffer$Writer;Ljava/lang/Object;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lzipkin2/internal/Buffer$Writer<",
            "TT;>;TT;)[B"
        }
    .end annotation

    .line 169
    new-instance v0, Lzipkin2/internal/Buffer;

    invoke-interface {p0, p1}, Lzipkin2/internal/Buffer$Writer;->sizeInBytes(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {v0, v1}, Lzipkin2/internal/Buffer;-><init>(I)V

    .line 171
    :try_start_0
    invoke-interface {p0, p1, v0}, Lzipkin2/internal/Buffer$Writer;->write(Ljava/lang/Object;Lzipkin2/internal/Buffer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    invoke-virtual {v0}, Lzipkin2/internal/Buffer;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v1

    .line 173
    invoke-virtual {v0}, Lzipkin2/internal/Buffer;->toByteArray()[B

    move-result-object v0

    .line 174
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    .line 175
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_1

    .line 176
    aget-byte v5, v0, v4

    if-nez v5, :cond_0

    move v2, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 183
    :cond_1
    :goto_1
    array-length v4, v0

    if-ne v2, v4, :cond_2

    move-object v4, v0

    goto :goto_2

    .line 186
    :cond_2
    new-array v4, v2, [B

    .line 187
    invoke-static {v0, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    :goto_2
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lzipkin2/internal/JsonCodec;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    .line 196
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v3

    .line 197
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v4, p1

    const/4 p0, 0x2

    .line 198
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, p0

    const/4 p0, 0x3

    array-length p1, v0

    .line 199
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, p0

    const/4 p0, 0x4

    aput-object v5, v4, p0

    const-string p0, "Bug found using %s to write %s as json. Wrote %s/%s bytes: %s"

    .line 194
    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 201
    invoke-static {}, Lzipkin2/internal/Platform;->get()Lzipkin2/internal/Platform;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Lzipkin2/internal/Platform;->assertionError(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0
.end method

.method public static writeList(Lzipkin2/internal/Buffer$Writer;Ljava/util/List;[BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lzipkin2/internal/Buffer$Writer<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;[BI)I"
        }
    .end annotation

    .line 214
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p0, p3, 0x1

    const/16 p1, 0x5b

    .line 215
    aput-byte p1, p2, p3

    const/16 p1, 0x5d

    .line 216
    aput-byte p1, p2, p0

    const/4 p0, 0x2

    return p0

    .line 220
    :cond_0
    new-instance v0, Lzipkin2/internal/Buffer;

    invoke-direct {v0, p2, p3}, Lzipkin2/internal/Buffer;-><init>([BI)V

    .line 221
    invoke-static {p0, p1, v0}, Lzipkin2/internal/JsonCodec;->writeList(Lzipkin2/internal/Buffer$Writer;Ljava/util/List;Lzipkin2/internal/Buffer;)V

    .line 222
    iget p0, v0, Lzipkin2/internal/Buffer;->pos:I

    sub-int/2addr p0, p3

    return p0
.end method

.method public static writeList(Lzipkin2/internal/Buffer$Writer;Ljava/util/List;Lzipkin2/internal/Buffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lzipkin2/internal/Buffer$Writer<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;",
            "Lzipkin2/internal/Buffer;",
            ")V"
        }
    .end annotation

    const/16 v0, 0x5b

    .line 226
    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 227
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 228
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1, p2}, Lzipkin2/internal/Buffer$Writer;->write(Ljava/lang/Object;Lzipkin2/internal/Buffer;)V

    if-ge v2, v0, :cond_0

    const/16 v1, 0x2c

    .line 229
    invoke-virtual {p2, v1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/16 p0, 0x5d

    .line 231
    invoke-virtual {p2, p0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    return-void
.end method

.method public static writeList(Lzipkin2/internal/Buffer$Writer;Ljava/util/List;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lzipkin2/internal/Buffer$Writer<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)[B"
        }
    .end annotation

    .line 207
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    new-array p0, p0, [B

    fill-array-data p0, :array_0

    return-object p0

    .line 208
    :cond_0
    new-instance v0, Lzipkin2/internal/Buffer;

    invoke-static {p0, p1}, Lzipkin2/internal/JsonCodec;->sizeInBytes(Lzipkin2/internal/Buffer$Writer;Ljava/util/List;)I

    move-result v1

    invoke-direct {v0, v1}, Lzipkin2/internal/Buffer;-><init>(I)V

    .line 209
    invoke-static {p0, p1, v0}, Lzipkin2/internal/JsonCodec;->writeList(Lzipkin2/internal/Buffer$Writer;Ljava/util/List;Lzipkin2/internal/Buffer;)V

    .line 210
    invoke-virtual {v0}, Lzipkin2/internal/Buffer;->toByteArray()[B

    move-result-object p0

    return-object p0

    :array_0
    .array-data 1
        0x5bt
        0x5dt
    .end array-data
.end method
