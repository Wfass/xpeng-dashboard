.class public final Lcom/alibaba/fastjson2/JSONFactory;
.super Ljava/lang/Object;
.source "JSONFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/JSONFactory$JSONPathCompiler;,
        Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry;,
        Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;,
        Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;,
        Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF16Creator;,
        Lcom/alibaba/fastjson2/JSONFactory$CacheItem;
    }
.end annotation


# static fields
.field static final ARRAY_READER:Lcom/alibaba/fastjson2/reader/ObjectReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "Lcom/alibaba/fastjson2/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field static final BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/alibaba/fastjson2/JSONFactory$CacheItem;",
            "[B>;"
        }
    .end annotation
.end field

.field static final CA:[C

.field static final CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

.field static final CACHE_THRESHOLD:I = 0x100000

.field static final CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/alibaba/fastjson2/JSONFactory$CacheItem;",
            "[C>;"
        }
    .end annotation
.end field

.field public static final CREATOR:Ljava/lang/String;

.field static final DEFAULT_PROPERTIES:Ljava/util/Properties;

.field static final DIGITS2:[I

.field static final DOUBLE_10_POW:[D

.field static final DOUBLE_ZERO:Ljava/lang/Double;

.field static final FLOAT_10_POW:[F

.field static final INCUBATOR_VECTOR_READER_CREATOR_ASCII:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

.field static final INCUBATOR_VECTOR_READER_CREATOR_UTF16:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF16Creator;

.field static final INCUBATOR_VECTOR_READER_CREATOR_UTF8:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

.field static final INCUBATOR_VECTOR_WRITER_CREATOR_UTF16:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/alibaba/fastjson2/JSONWriter$Context;",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            ">;"
        }
    .end annotation
.end field

.field static final INCUBATOR_VECTOR_WRITER_CREATOR_UTF8:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/alibaba/fastjson2/JSONWriter$Context;",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            ">;"
        }
    .end annotation
.end field

.field static final NAME_CACHE:[Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry;

.field static final NAME_CACHE2:[Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;

.field static final OBJECT_READER:Lcom/alibaba/fastjson2/reader/ObjectReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "Lcom/alibaba/fastjson2/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_AUTO_TYPE_ACCEPT:Ljava/lang/String; = "fastjson2.autoTypeAccept"

.field public static final PROPERTY_AUTO_TYPE_BEFORE_HANDLER:Ljava/lang/String; = "fastjson2.autoTypeBeforeHandler"

.field public static final PROPERTY_AUTO_TYPE_HANDLER:Ljava/lang/String; = "fastjson2.autoTypeHandler"

.field public static final PROPERTY_DENY_PROPERTY:Ljava/lang/String; = "fastjson2.parser.deny"

.field static final UUID_VALUES:[B

.field static defaultArraySupplier:Ljava/util/function/Supplier; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation
.end field

.field static defaultDecimalMaxScale:I = 0x800

.field static final defaultJSONPathCompiler:Lcom/alibaba/fastjson2/JSONFactory$JSONPathCompiler;

.field static final defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

.field static defaultObjectSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field

.field static final defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

.field static defaultReaderFeatures:J

.field static defaultReaderFormat:Ljava/lang/String;

.field static defaultReaderZoneId:Ljava/time/ZoneId;

.field static defaultWriterFeatures:J

.field static defaultWriterFormat:Ljava/lang/String;

.field static defaultWriterZoneId:Ljava/time/ZoneId;

.field static volatile initErrorLast:Ljava/lang/Throwable;

.field static final jsonPathCompilerLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/alibaba/fastjson2/JSONFactory$JSONPathCompiler;",
            ">;"
        }
    .end annotation
.end field

.field static final readerCreatorLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;",
            ">;"
        }
    .end annotation
.end field

.field static final readerProviderLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;",
            ">;"
        }
    .end annotation
.end field

.field static useJacksonAnnotation:Z

.field static final writerCreatorLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x2000

    new-array v1, v0, [Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry;

    .line 51
    sput-object v1, Lcom/alibaba/fastjson2/JSONFactory;->NAME_CACHE:[Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry;

    new-array v0, v0, [Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;

    .line 52
    sput-object v0, Lcom/alibaba/fastjson2/JSONFactory;->NAME_CACHE2:[Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;

    const/16 v0, 0x40

    new-array v1, v0, [C

    .line 92
    fill-array-data v1, :array_0

    sput-object v1, Lcom/alibaba/fastjson2/JSONFactory;->CA:[C

    const/16 v1, 0x67

    new-array v1, v1, [I

    .line 103
    fill-array-data v1, :array_1

    sput-object v1, Lcom/alibaba/fastjson2/JSONFactory;->DIGITS2:[I

    const/16 v1, 0xb

    new-array v1, v1, [F

    .line 113
    fill-array-data v1, :array_2

    sput-object v1, Lcom/alibaba/fastjson2/JSONFactory;->FLOAT_10_POW:[F

    const/16 v1, 0x17

    new-array v1, v1, [D

    .line 118
    fill-array-data v1, :array_3

    sput-object v1, Lcom/alibaba/fastjson2/JSONFactory;->DOUBLE_10_POW:[D

    const-wide/16 v1, 0x0

    .line 126
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson2/JSONFactory;->DOUBLE_ZERO:Ljava/lang/Double;

    .line 129
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 131
    sget-object v2, Lcom/alibaba/fastjson2/-$$Lambda$JSONFactory$LJ49ZdNScY837bvh7WsubgxHEbc;->INSTANCE:Lcom/alibaba/fastjson2/-$$Lambda$JSONFactory$LJ49ZdNScY837bvh7WsubgxHEbc;

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 144
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :catch_0
    invoke-static {v2}, Lcom/alibaba/fastjson2/util/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/alibaba/fastjson2/util/IOUtils;->close(Ljava/io/Closeable;)V

    .line 148
    throw v0

    .line 150
    :cond_0
    :goto_0
    sput-object v1, Lcom/alibaba/fastjson2/JSONFactory;->DEFAULT_PROPERTIES:Ljava/util/Properties;

    const-string v2, "fastjson2.creator"

    .line 153
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 155
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_2

    .line 158
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 159
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 161
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :cond_3
    if-nez v3, :cond_4

    const-string v3, "asm"

    .line 165
    :cond_4
    sput-object v3, Lcom/alibaba/fastjson2/JSONFactory;->CREATOR:Ljava/lang/String;

    const-string v2, "fastjson2.useJacksonAnnotation"

    .line 169
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 171
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :cond_5
    if-eqz v3, :cond_6

    .line 174
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 175
    :cond_6
    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 177
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :cond_7
    const-string v2, "false"

    .line 181
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    sput-boolean v3, Lcom/alibaba/fastjson2/JSONFactory;->useJacksonAnnotation:Z

    const-string v3, "fastjson2.readerVector"

    .line 186
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_9

    .line 188
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 189
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 190
    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 192
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 195
    :cond_8
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    move v1, v5

    .line 204
    :goto_1
    sget-boolean v2, Lcom/alibaba/fastjson2/util/JDKUtils;->VECTOR_SUPPORT:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_d

    .line 205
    sget v2, Lcom/alibaba/fastjson2/util/JDKUtils;->VECTOR_BIT_LENGTH:I

    if-lt v2, v0, :cond_b

    :try_start_1
    const-string v0, "com.alibaba.fastjson2.JSONWriterUTF8Vector$Factory"

    .line 207
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Function;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 210
    sput-object v0, Lcom/alibaba/fastjson2/JSONFactory;->initErrorLast:Ljava/lang/Throwable;

    move-object v0, v3

    :goto_2
    :try_start_2
    const-string v2, "com.alibaba.fastjson2.JSONWriterUTF16Vector$Factory"

    .line 214
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 215
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Function;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v2

    .line 217
    sput-object v2, Lcom/alibaba/fastjson2/JSONFactory;->initErrorLast:Ljava/lang/Throwable;

    move-object v2, v3

    :goto_3
    if-eqz v1, :cond_a

    :try_start_3
    const-string v4, "com.alibaba.fastjson2.JSONReaderASCIIVector$Factory"

    .line 222
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 223
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v4

    .line 225
    sput-object v4, Lcom/alibaba/fastjson2/JSONFactory;->initErrorLast:Ljava/lang/Throwable;

    move-object v4, v3

    :goto_4
    :try_start_4
    const-string v6, "com.alibaba.fastjson2.JSONReaderUTF8Vector$Factory"

    .line 229
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 230
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v6

    .line 232
    sput-object v6, Lcom/alibaba/fastjson2/JSONFactory;->initErrorLast:Ljava/lang/Throwable;

    move-object v6, v3

    goto :goto_6

    :cond_a
    move-object v4, v3

    goto :goto_5

    :cond_b
    move-object v0, v3

    move-object v2, v0

    move-object v4, v2

    :goto_5
    move-object v6, v4

    .line 237
    :goto_6
    sget v7, Lcom/alibaba/fastjson2/util/JDKUtils;->VECTOR_BIT_LENGTH:I

    const/16 v8, 0x80

    if-lt v7, v8, :cond_c

    if-eqz v1, :cond_c

    :try_start_5
    const-string v1, "com.alibaba.fastjson2.JSONReaderUTF16Vector$Factory"

    .line 239
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 240
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF16Creator;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v1

    .line 242
    sput-object v1, Lcom/alibaba/fastjson2/JSONFactory;->initErrorLast:Ljava/lang/Throwable;

    :cond_c
    move-object v1, v3

    goto :goto_7

    :cond_d
    move-object v0, v3

    move-object v1, v0

    move-object v2, v1

    move-object v4, v2

    move-object v6, v4

    .line 246
    :goto_7
    sput-object v0, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_WRITER_CREATOR_UTF8:Ljava/util/function/Function;

    .line 247
    sput-object v2, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_WRITER_CREATOR_UTF16:Ljava/util/function/Function;

    .line 248
    sput-object v4, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_ASCII:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

    .line 249
    sput-object v6, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_UTF8:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF8Creator;

    .line 250
    sput-object v1, Lcom/alibaba/fastjson2/JSONFactory;->INCUBATOR_VECTOR_READER_CREATOR_UTF16:Lcom/alibaba/fastjson2/JSONFactory$JSONReaderUTF16Creator;

    const/16 v0, 0x10

    new-array v1, v0, [Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    :goto_8
    if-ge v5, v0, :cond_e

    .line 266
    new-instance v2, Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    invoke-direct {v2}, Lcom/alibaba/fastjson2/JSONFactory$CacheItem;-><init>()V

    aput-object v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 268
    :cond_e
    sput-object v1, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 272
    const-class v0, Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    const-class v1, [C

    const-string v2, "chars"

    .line 273
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/JSONFactory;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 274
    const-class v0, Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    const-class v1, [B

    const-string v2, "bytes"

    .line 275
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 284
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 285
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 291
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->CREATOR:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "lambda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "reflect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 298
    :try_start_6
    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->ANDROID:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->GRAAL:Z

    if-nez v0, :cond_f

    .line 299
    sget-object v0, Lcom/alibaba/fastjson2/JSONPathCompilerReflectASM;->INSTANCE:Lcom/alibaba/fastjson2/JSONPathCompilerReflectASM;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    move-object v3, v0

    :catchall_6
    :cond_f
    if-nez v3, :cond_11

    .line 305
    sget-object v3, Lcom/alibaba/fastjson2/JSONPathCompilerReflect;->INSTANCE:Lcom/alibaba/fastjson2/JSONPathCompilerReflect;

    goto :goto_9

    .line 294
    :cond_10
    sget-object v3, Lcom/alibaba/fastjson2/JSONPathCompilerReflect;->INSTANCE:Lcom/alibaba/fastjson2/JSONPathCompilerReflect;

    .line 309
    :cond_11
    :goto_9
    sput-object v3, Lcom/alibaba/fastjson2/JSONFactory;->defaultJSONPathCompiler:Lcom/alibaba/fastjson2/JSONFactory$JSONPathCompiler;

    .line 312
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/JSONFactory;->readerCreatorLocal:Ljava/lang/ThreadLocal;

    .line 313
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/JSONFactory;->readerProviderLocal:Ljava/lang/ThreadLocal;

    .line 314
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/JSONFactory;->writerCreatorLocal:Ljava/lang/ThreadLocal;

    .line 316
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/JSONFactory;->jsonPathCompilerLocal:Ljava/lang/ThreadLocal;

    .line 318
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    const-class v1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/JSONFactory;->ARRAY_READER:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 319
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    const-class v1, Lcom/alibaba/fastjson2/JSONObject;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/JSONFactory;->OBJECT_READER:Lcom/alibaba/fastjson2/reader/ObjectReader;

    const/16 v0, 0x37

    new-array v0, v0, [B

    .line 324
    sput-object v0, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    const/16 v0, 0x30

    :goto_a
    const/16 v1, 0x39

    if-gt v0, v1, :cond_12

    .line 326
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    add-int/lit8 v2, v0, -0x30

    int-to-byte v3, v2

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_a

    :cond_12
    const/16 v0, 0x61

    :goto_b
    const/16 v1, 0x66

    if-gt v0, v1, :cond_13

    .line 329
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v3, v0, -0x61

    add-int/lit8 v3, v3, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_b

    :cond_13
    const/16 v0, 0x41

    :goto_c
    const/16 v1, 0x46

    if-gt v0, v1, :cond_14

    .line 332
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v3, v0, -0x41

    add-int/lit8 v3, v3, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_c

    :cond_14
    return-void

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x41200000    # 10.0f
        0x42c80000    # 100.0f
        0x447a0000    # 1000.0f
        0x461c4000    # 10000.0f
        0x47c35000    # 100000.0f
        0x49742400    # 1000000.0f
        0x4b189680    # 1.0E7f
        0x4cbebc20    # 1.0E8f
        0x4e6e6b28    # 1.0E9f
        0x501502f9    # 1.0E10f
    .end array-data

    :array_3
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4024000000000000L    # 10.0
        0x4059000000000000L    # 100.0
        0x408f400000000000L    # 1000.0
        0x40c3880000000000L    # 10000.0
        0x40f86a0000000000L    # 100000.0
        0x412e848000000000L    # 1000000.0
        0x416312d000000000L    # 1.0E7
        0x4197d78400000000L    # 1.0E8
        0x41cdcd6500000000L    # 1.0E9
        0x4202a05f20000000L    # 1.0E10
        0x42374876e8000000L    # 1.0E11
        0x426d1a94a2000000L    # 1.0E12
        0x42a2309ce5400000L    # 1.0E13
        0x42d6bcc41e900000L    # 1.0E14
        0x430c6bf526340000L    # 1.0E15
        0x4341c37937e08000L    # 1.0E16
        0x4376345785d8a000L    # 1.0E17
        0x43abc16d674ec800L    # 1.0E18
        0x43e158e460913d00L    # 1.0E19
        0x4415af1d78b58c40L    # 1.0E20
        0x444b1ae4d6e2ef50L    # 1.0E21
        0x4480f0cf064dd592L    # 1.0E22
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;
    .locals 2

    .line 375
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    .line 376
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    return-object v1
.end method

.method public static createReadContext(J)Lcom/alibaba/fastjson2/JSONReader$Context;
    .locals 2

    .line 380
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    .line 381
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-direct {v1, v0, p0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;J)V

    return-object v1
.end method

.method public static createReadContext(Lcom/alibaba/fastjson2/SymbolTable;)Lcom/alibaba/fastjson2/JSONReader$Context;
    .locals 2

    .line 424
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    .line 425
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-direct {v1, v0, p0}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/SymbolTable;)V

    return-object v1
.end method

.method public static varargs createReadContext(Lcom/alibaba/fastjson2/SymbolTable;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;
    .locals 2

    .line 429
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    .line 430
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-direct {v1, v0, p0}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/SymbolTable;)V

    .line 431
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->config([Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    return-object v1
.end method

.method public static varargs createReadContext(Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;
    .locals 5

    .line 395
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 396
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 399
    instance-of v1, p0, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    if-eqz v1, :cond_0

    .line 400
    move-object v1, p0

    check-cast v1, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    iput-object v1, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    .line 403
    :cond_0
    instance-of v1, p0, Lcom/alibaba/fastjson2/filter/ExtraProcessor;

    if-eqz v1, :cond_1

    .line 404
    check-cast p0, Lcom/alibaba/fastjson2/filter/ExtraProcessor;

    iput-object p0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->extraProcessor:Lcom/alibaba/fastjson2/filter/ExtraProcessor;

    :cond_1
    const/4 p0, 0x0

    .line 407
    :goto_0
    array-length v1, p1

    if-ge p0, v1, :cond_2

    .line 408
    iget-wide v1, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    aget-object v3, p1, p0

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static varargs createReadContext(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;
    .locals 1

    if-nez p0, :cond_0

    .line 415
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object p0

    .line 418
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 419
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->config([Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    return-object v0
.end method

.method public static varargs createReadContext(Ljava/util/function/Supplier;Ljava/util/function/Supplier;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Map;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/util/List;",
            ">;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")",
            "Lcom/alibaba/fastjson2/JSONReader$Context;"
        }
    .end annotation

    .line 447
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    .line 448
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 449
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/JSONReader$Context;->setObjectSupplier(Ljava/util/function/Supplier;)V

    .line 450
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->setArraySupplier(Ljava/util/function/Supplier;)V

    .line 451
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->config([Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    return-object v1
.end method

.method public static varargs createReadContext(Ljava/util/function/Supplier;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Map;",
            ">;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")",
            "Lcom/alibaba/fastjson2/JSONReader$Context;"
        }
    .end annotation

    .line 436
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    .line 437
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 438
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/JSONReader$Context;->setObjectSupplier(Ljava/util/function/Supplier;)V

    .line 439
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->config([Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    return-object v1
.end method

.method public static varargs createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;
    .locals 6

    .line 385
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 386
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    const/4 v1, 0x0

    .line 388
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 389
    iget-wide v2, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    aget-object v4, p0, v1

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long/2addr v2, v4

    iput-wide v2, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static createWriteContext()Lcom/alibaba/fastjson2/JSONWriter$Context;
    .locals 2

    .line 361
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Context;

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V

    return-object v0
.end method

.method public static varargs createWriteContext(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Lcom/alibaba/fastjson2/JSONWriter$Context;
    .locals 1

    .line 365
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Context;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V

    .line 366
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->config([Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    return-object v0
.end method

.method public static varargs createWriteContext([Lcom/alibaba/fastjson2/JSONWriter$Feature;)Lcom/alibaba/fastjson2/JSONWriter$Context;
    .locals 2

    .line 371
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Context;

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    return-object v0
.end method

.method public static getContextReaderCreator()Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;
    .locals 1

    .line 486
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->readerCreatorLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    return-object v0
.end method

.method public static getContextWriterCreator()Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;
    .locals 1

    .line 498
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->writerCreatorLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    return-object v0
.end method

.method public static getDefaultArraySupplier()Ljava/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier<",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation

    .line 357
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultArraySupplier:Ljava/util/function/Supplier;

    return-object v0
.end method

.method public static getDefaultJSONPathCompiler()Lcom/alibaba/fastjson2/JSONFactory$JSONPathCompiler;
    .locals 1

    .line 469
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->jsonPathCompilerLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/JSONFactory$JSONPathCompiler;

    if-eqz v0, :cond_0

    return-object v0

    .line 474
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultJSONPathCompiler:Lcom/alibaba/fastjson2/JSONFactory$JSONPathCompiler;

    return-object v0
.end method

.method public static getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;
    .locals 1

    .line 460
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->readerProviderLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    if-eqz v0, :cond_0

    return-object v0

    .line 465
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    return-object v0
.end method

.method public static getDefaultObjectSupplier()Ljava/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation

    .line 353
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectSupplier:Ljava/util/function/Supplier;

    return-object v0
.end method

.method public static getDefaultObjectWriterProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;
    .locals 1

    .line 456
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->DEFAULT_PROPERTIES:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isUseJacksonAnnotation()Z
    .locals 1

    .line 254
    sget-boolean v0, Lcom/alibaba/fastjson2/JSONFactory;->useJacksonAnnotation:Z

    return v0
.end method

.method static synthetic lambda$static$0()Ljava/io/InputStream;
    .locals 2

    .line 132
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "fastjson2.properties"

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 139
    :cond_0
    invoke-static {v1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static setContextJSONPathCompiler(Lcom/alibaba/fastjson2/JSONFactory$JSONPathCompiler;)V
    .locals 1

    .line 490
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->jsonPathCompilerLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static setContextObjectReaderProvider(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V
    .locals 1

    .line 482
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->readerProviderLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static setContextReaderCreator(Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;)V
    .locals 1

    .line 478
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->readerCreatorLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static setContextWriterCreator(Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;)V
    .locals 1

    .line 494
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->writerCreatorLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static setDefaultArraySupplier(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/util/List;",
            ">;)V"
        }
    .end annotation

    .line 349
    sput-object p0, Lcom/alibaba/fastjson2/JSONFactory;->defaultArraySupplier:Ljava/util/function/Supplier;

    return-void
.end method

.method public static setDefaultObjectSupplier(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Map;",
            ">;)V"
        }
    .end annotation

    .line 341
    sput-object p0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectSupplier:Ljava/util/function/Supplier;

    return-void
.end method

.method public static setUseJacksonAnnotation(Z)V
    .locals 0

    .line 258
    sput-boolean p0, Lcom/alibaba/fastjson2/JSONFactory;->useJacksonAnnotation:Z

    return-void
.end method
