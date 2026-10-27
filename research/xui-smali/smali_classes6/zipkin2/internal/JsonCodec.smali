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

    .line 120
    const-string v0, "UTF-8"

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
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 235
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Error"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "cause":Ljava/lang/String;
    :goto_0
    const-string v1, "malformed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v0, "Malformed"

    .line 237
    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string v2, "%s reading %s from json"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static read(Lzipkin2/internal/JsonCodec$JsonReaderAdapter;[BLjava/util/Collection;)Z
    .locals 2
    .param p1, "bytes"    # [B
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
    .local p0, "adapter":Lzipkin2/internal/JsonCodec$JsonReaderAdapter;, "Lzipkin2/internal/JsonCodec$JsonReaderAdapter<TT;>;"
    .local p2, "out":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 129
    :cond_0
    :try_start_0
    new-instance v0, Lzipkin2/internal/JsonCodec$JsonReader;

    invoke-direct {v0, p1}, Lzipkin2/internal/JsonCodec$JsonReader;-><init>([B)V

    invoke-interface {p0, v0}, Lzipkin2/internal/JsonCodec$JsonReaderAdapter;->fromJson(Lzipkin2/internal/JsonCodec$JsonReader;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    const/4 v0, 0x1

    return v0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lzipkin2/internal/JsonCodec;->exceptionReading(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public static readList(Lzipkin2/internal/JsonCodec$JsonReaderAdapter;[BLjava/util/Collection;)Z
    .locals 4
    .param p1, "bytes"    # [B
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
    .local p0, "adapter":Lzipkin2/internal/JsonCodec$JsonReaderAdapter;, "Lzipkin2/internal/JsonCodec$JsonReaderAdapter<TT;>;"
    .local p2, "out":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 145
    :cond_0
    new-instance v0, Lzipkin2/internal/JsonCodec$JsonReader;

    invoke-direct {v0, p1}, Lzipkin2/internal/JsonCodec$JsonReader;-><init>([B)V

    .line 147
    .local v0, "reader":Lzipkin2/internal/JsonCodec$JsonReader;
    :try_start_0
    invoke-virtual {v0}, Lzipkin2/internal/JsonCodec$JsonReader;->beginArray()V

    .line 148
    invoke-virtual {v0}, Lzipkin2/internal/JsonCodec$JsonReader;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 149
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lzipkin2/internal/JsonCodec$JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0, v0}, Lzipkin2/internal/JsonCodec$JsonReaderAdapter;->fromJson(Lzipkin2/internal/JsonCodec$JsonReader;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {v0}, Lzipkin2/internal/JsonCodec$JsonReader;->endArray()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    const/4 v1, 0x1

    return v1

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "List<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lzipkin2/internal/JsonCodec;->exceptionReading(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public static readOne(Lzipkin2/internal/JsonCodec$JsonReaderAdapter;[B)Ljava/lang/Object;
    .locals 2
    .param p1, "bytes"    # [B
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
    .local p0, "adapter":Lzipkin2/internal/JsonCodec$JsonReaderAdapter;, "Lzipkin2/internal/JsonCodec$JsonReaderAdapter<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0, p1, v0}, Lzipkin2/internal/JsonCodec;->read(Lzipkin2/internal/JsonCodec$JsonReaderAdapter;[BLjava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 139
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
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
    .local p0, "writer":Lzipkin2/internal/Buffer$Writer;, "Lzipkin2/internal/Buffer$Writer<TT;>;"
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 159
    .local v0, "length":I
    const/4 v1, 0x2

    .line 160
    .local v1, "sizeInBytes":I
    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    add-int/lit8 v2, v0, -0x1

    add-int/2addr v1, v2

    .line 161
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 162
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Lzipkin2/internal/Buffer$Writer;->sizeInBytes(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method public static write(Lzipkin2/internal/Buffer$Writer;Ljava/lang/Object;)[B
    .locals 9
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
    .local p0, "writer":Lzipkin2/internal/Buffer$Writer;, "Lzipkin2/internal/Buffer$Writer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lzipkin2/internal/Buffer;

    invoke-interface {p0, p1}, Lzipkin2/internal/Buffer$Writer;->sizeInBytes(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {v0, v1}, Lzipkin2/internal/Buffer;-><init>(I)V

    .line 171
    .local v0, "b":Lzipkin2/internal/Buffer;
    :try_start_0
    invoke-interface {p0, p1, v0}, Lzipkin2/internal/Buffer$Writer;->write(Ljava/lang/Object;Lzipkin2/internal/Buffer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    nop

    .line 203
    invoke-virtual {v0}, Lzipkin2/internal/Buffer;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 172
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Lzipkin2/internal/Buffer;->toByteArray()[B

    move-result-object v2

    .line 174
    .local v2, "bytes":[B
    array-length v3, v2

    .line 175
    .local v3, "lengthWritten":I
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_1

    .line 176
    aget-byte v6, v2, v5

    if-nez v6, :cond_0

    .line 177
    move v3, v5

    .line 178
    goto :goto_1

    .line 175
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 183
    .end local v5    # "i":I
    :cond_1
    :goto_1
    array-length v5, v2

    if-ne v3, v5, :cond_2

    .line 184
    move-object v5, v2

    .local v5, "bytesWritten":[B
    goto :goto_2

    .line 186
    .end local v5    # "bytesWritten":[B
    :cond_2
    new-array v5, v3, [B

    .line 187
    .restart local v5    # "bytesWritten":[B
    invoke-static {v2, v4, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    :goto_2
    new-instance v6, Ljava/lang/String;

    sget-object v7, Lzipkin2/internal/JsonCodec;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 193
    .local v6, "written":Ljava/lang/String;
    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    .line 196
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    .line 197
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const/4 v4, 0x2

    .line 198
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x3

    array-length v8, v2

    .line 199
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x4

    aput-object v6, v7, v4

    .line 194
    const-string v4, "Bug found using %s to write %s as json. Wrote %s/%s bytes: %s"

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, "message":Ljava/lang/String;
    invoke-static {}, Lzipkin2/internal/Platform;->get()Lzipkin2/internal/Platform;

    move-result-object v7

    invoke-virtual {v7, v4, v1}, Lzipkin2/internal/Platform;->assertionError(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/AssertionError;

    move-result-object v7

    throw v7
.end method

.method public static writeList(Lzipkin2/internal/Buffer$Writer;Ljava/util/List;[BI)I
    .locals 3
    .param p2, "out"    # [B
    .param p3, "pos"    # I
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
    .local p0, "writer":Lzipkin2/internal/Buffer$Writer;, "Lzipkin2/internal/Buffer$Writer<TT;>;"
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    add-int/lit8 v0, p3, 0x1

    .local v0, "pos":I
    const/16 v1, 0x5b

    aput-byte v1, p2, p3

    .line 216
    .end local p3    # "pos":I
    add-int/lit8 p3, v0, 0x1

    .restart local p3    # "pos":I
    const/16 v1, 0x5d

    aput-byte v1, p2, v0

    .line 217
    .end local v0    # "pos":I
    const/4 v0, 0x2

    return v0

    .line 219
    :cond_0
    move v0, p3

    .line 220
    .local v0, "initialPos":I
    new-instance v1, Lzipkin2/internal/Buffer;

    invoke-direct {v1, p2, p3}, Lzipkin2/internal/Buffer;-><init>([BI)V

    .line 221
    .local v1, "result":Lzipkin2/internal/Buffer;
    invoke-static {p0, p1, v1}, Lzipkin2/internal/JsonCodec;->writeList(Lzipkin2/internal/Buffer$Writer;Ljava/util/List;Lzipkin2/internal/Buffer;)V

    .line 222
    iget v2, v1, Lzipkin2/internal/Buffer;->pos:I

    sub-int/2addr v2, v0

    return v2
.end method

.method public static writeList(Lzipkin2/internal/Buffer$Writer;Ljava/util/List;Lzipkin2/internal/Buffer;)V
    .locals 3
    .param p2, "b"    # Lzipkin2/internal/Buffer;
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

    .line 226
    .local p0, "writer":Lzipkin2/internal/Buffer$Writer;, "Lzipkin2/internal/Buffer$Writer<TT;>;"
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/16 v0, 0x5b

    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 227
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 228
    add-int/lit8 v2, v0, 0x1

    .local v2, "i":I
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "i":I
    invoke-interface {p0, v0, p2}, Lzipkin2/internal/Buffer$Writer;->write(Ljava/lang/Object;Lzipkin2/internal/Buffer;)V

    .line 229
    if-ge v2, v1, :cond_0

    const/16 v0, 0x2c

    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 227
    :cond_0
    move v0, v2

    goto :goto_0

    .line 231
    .end local v1    # "length":I
    .end local v2    # "i":I
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 232
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
    .local p0, "writer":Lzipkin2/internal/Buffer$Writer;, "Lzipkin2/internal/Buffer$Writer<TT;>;"
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    .line 208
    :cond_0
    new-instance v0, Lzipkin2/internal/Buffer;

    invoke-static {p0, p1}, Lzipkin2/internal/JsonCodec;->sizeInBytes(Lzipkin2/internal/Buffer$Writer;Ljava/util/List;)I

    move-result v1

    invoke-direct {v0, v1}, Lzipkin2/internal/Buffer;-><init>(I)V

    .line 209
    .local v0, "result":Lzipkin2/internal/Buffer;
    invoke-static {p0, p1, v0}, Lzipkin2/internal/JsonCodec;->writeList(Lzipkin2/internal/Buffer$Writer;Ljava/util/List;Lzipkin2/internal/Buffer;)V

    .line 210
    invoke-virtual {v0}, Lzipkin2/internal/Buffer;->toByteArray()[B

    move-result-object v1

    return-object v1

    :array_0
    .array-data 1
        0x5bt
        0x5dt
    .end array-data
.end method
