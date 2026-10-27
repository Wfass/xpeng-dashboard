.class public Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;
.super Ljava/lang/Object;
.source "ObjectReaderProvider.java"

# interfaces
.implements Lcom/alibaba/fastjson2/modules/ObjectCodecProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$LRUAutoTypeCache;,
        Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$ObjectReaderCachePair;
    }
.end annotation


# static fields
.field static final AUTO_TYPE_ACCEPT_LIST:[Ljava/lang/String;

.field static DEFAULT_AUTO_TYPE_BEFORE_HANDLER:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

.field static DEFAULT_AUTO_TYPE_HANDLER:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field static DEFAULT_AUTO_TYPE_HANDLER_INIT_ERROR:Z

.field static final DENYS:[Ljava/lang/String;

.field static final FASTJSON2_CLASS_LOADER:Ljava/lang/ClassLoader;

.field public static final SAFE_MODE:Z

.field static readerCache:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$ObjectReaderCachePair;


# instance fields
.field private acceptHashCodes:[J

.field private autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

.field private autoTypeHandler:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field final autoTypeList:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$LRUAutoTypeCache;

.field final cache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/reader/ObjectReader;",
            ">;"
        }
    .end annotation
.end field

.field final cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/reader/ObjectReader;",
            ">;"
        }
    .end annotation
.end field

.field final creator:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

.field final hashCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/fastjson2/reader/ObjectReader;",
            ">;"
        }
    .end annotation
.end field

.field final mixInCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field final modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/modules/ObjectReaderModule;",
            ">;"
        }
    .end annotation
.end field

.field final tclHashCaches:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/fastjson2/reader/ObjectReader;",
            ">;>;"
        }
    .end annotation
.end field

.field private final typeConverts:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/function/Function;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    const-class v0, Lcom/alibaba/fastjson2/JSON;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->FASTJSON2_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v0, "fastjson2.parser.deny"

    .line 59
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 61
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONFactory;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v0, ","

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->DENYS:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-array v1, v2, [Ljava/lang/String;

    .line 66
    sput-object v1, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->DENYS:[Ljava/lang/String;

    :goto_0
    const-string v1, "fastjson2.autoTypeAccept"

    .line 71
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 73
    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONFactory;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_3

    .line 75
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 76
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->AUTO_TYPE_ACCEPT_LIST:[Ljava/lang/String;

    goto :goto_1

    :cond_3
    new-array v0, v2, [Ljava/lang/String;

    .line 78
    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->AUTO_TYPE_ACCEPT_LIST:[Ljava/lang/String;

    :goto_1
    const-string v0, "fastjson2.autoTypeBeforeHandler"

    .line 83
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 84
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 85
    :cond_4
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONFactory;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_5
    if-eqz v1, :cond_6

    .line 89
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_6
    const/4 v0, 0x1

    if-eqz v1, :cond_7

    .line 92
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 93
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 96
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    sput-object v1, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->DEFAULT_AUTO_TYPE_BEFORE_HANDLER:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 98
    :catch_0
    sput-boolean v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->DEFAULT_AUTO_TYPE_HANDLER_INIT_ERROR:Z

    :cond_7
    :goto_2
    const-string v1, "fastjson2.autoTypeHandler"

    .line 106
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 107
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 108
    :cond_8
    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONFactory;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_9
    if-eqz v2, :cond_a

    .line 112
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_a
    if-eqz v2, :cond_b

    .line 115
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 116
    invoke-static {v2}, Lcom/alibaba/fastjson2/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 119
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    sput-object v1, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->DEFAULT_AUTO_TYPE_HANDLER:Ljava/util/function/Consumer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 121
    :catch_1
    sput-boolean v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->DEFAULT_AUTO_TYPE_HANDLER_INIT_ERROR:Z

    :cond_b
    :goto_3
    const-string v0, "fastjson.parser.safeMode"

    .line 129
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 130
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 131
    :cond_c
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONFactory;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_d
    const-string v0, "fastjson2.parser.safeMode"

    if-eqz v1, :cond_e

    .line 134
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 135
    :cond_e
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_f
    if-eqz v1, :cond_10

    .line 137
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 138
    :cond_10
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONFactory;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_11
    if-eqz v1, :cond_12

    .line 142
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_12
    const-string/jumbo v0, "true"

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->SAFE_MODE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 150
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    .line 151
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->tclHashCaches:Ljava/util/concurrent/ConcurrentMap;

    .line 152
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->hashCache:Ljava/util/concurrent/ConcurrentMap;

    .line 153
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    .line 155
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$LRUAutoTypeCache;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$LRUAutoTypeCache;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->autoTypeList:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$LRUAutoTypeCache;

    .line 157
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->typeConverts:Ljava/util/concurrent/ConcurrentMap;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->modules:Ljava/util/List;

    .line 164
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->DEFAULT_AUTO_TYPE_BEFORE_HANDLER:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    .line 165
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->DEFAULT_AUTO_TYPE_HANDLER:Ljava/util/function/Consumer;

    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->autoTypeHandler:Ljava/util/function/Consumer;

    .line 169
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->AUTO_TYPE_ACCEPT_LIST:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-array v0, v2, [J

    goto :goto_1

    .line 172
    :cond_0
    array-length v0, v0

    add-int/2addr v0, v2

    new-array v0, v0, [J

    move v3, v1

    .line 173
    :goto_0
    sget-object v4, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->AUTO_TYPE_ACCEPT_LIST:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 174
    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
    :cond_1
    :goto_1
    array-length v3, v0

    sub-int/2addr v3, v2

    const-wide v4, -0x575556d6bb90031cL    # -8.660931078614971E-113

    aput-wide v4, v0, v3

    .line 180
    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    .line 181
    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->acceptHashCodes:[J

    .line 183
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->hashCache:Ljava/util/concurrent/ConcurrentMap;

    sget-wide v3, Lcom/alibaba/fastjson2/reader/ObjectArrayReader;->TYPE_HASH_CODE:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/alibaba/fastjson2/reader/ObjectArrayReader;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectArrayReader;

    invoke-interface {v0, v3, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->hashCache:Ljava/util/concurrent/ConcurrentMap;

    const-wide v3, -0x4318000b8f6218c8L    # -2.6645156755451724E-15

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplString;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplString;

    invoke-interface {v0, v3, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->hashCache:Ljava/util/concurrent/ConcurrentMap;

    const-class v3, Ljava/util/HashMap;

    invoke-static {v3}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    invoke-interface {v0, v3, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 426
    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->CREATOR:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x422aac39

    if-eq v5, v6, :cond_4

    const v6, 0x17a7b

    if-eq v5, v6, :cond_3

    const v6, 0x40afd6bd

    if-eq v5, v6, :cond_2

    goto :goto_2

    :cond_2
    const-string v5, "reflect"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_3
    const-string v1, "asm"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    goto :goto_3

    :cond_4
    const-string v1, "lambda"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v1, v4

    :goto_3
    if-eqz v1, :cond_7

    if-eq v1, v2, :cond_7

    .line 434
    :try_start_0
    sget-boolean v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ANDROID:Z

    if-nez v1, :cond_6

    sget-boolean v1, Lcom/alibaba/fastjson2/util/JDKUtils;->GRAAL:Z

    if-nez v1, :cond_6

    .line 435
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreatorASM;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderCreatorASM;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_6
    if-nez v0, :cond_8

    .line 441
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    goto :goto_4

    .line 429
    :cond_7
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    .line 445
    :cond_8
    :goto_4
    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->creator:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    .line 447
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->modules:Ljava/util/List;

    new-instance v1, Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule;

    invoke-direct {v1, p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;)V
    .locals 5

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 150
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    .line 151
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->tclHashCaches:Ljava/util/concurrent/ConcurrentMap;

    .line 152
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->hashCache:Ljava/util/concurrent/ConcurrentMap;

    .line 153
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    .line 155
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$LRUAutoTypeCache;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$LRUAutoTypeCache;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->autoTypeList:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$LRUAutoTypeCache;

    .line 157
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->typeConverts:Ljava/util/concurrent/ConcurrentMap;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->modules:Ljava/util/List;

    .line 164
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->DEFAULT_AUTO_TYPE_BEFORE_HANDLER:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    .line 165
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->DEFAULT_AUTO_TYPE_HANDLER:Ljava/util/function/Consumer;

    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->autoTypeHandler:Ljava/util/function/Consumer;

    .line 169
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->AUTO_TYPE_ACCEPT_LIST:[Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-array v0, v1, [J

    goto :goto_1

    .line 172
    :cond_0
    array-length v0, v0

    add-int/2addr v0, v1

    new-array v0, v0, [J

    const/4 v2, 0x0

    .line 173
    :goto_0
    sget-object v3, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->AUTO_TYPE_ACCEPT_LIST:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 174
    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    :cond_1
    :goto_1
    array-length v2, v0

    sub-int/2addr v2, v1

    const-wide v3, -0x575556d6bb90031cL    # -8.660931078614971E-113

    aput-wide v3, v0, v2

    .line 180
    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    .line 181
    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->acceptHashCodes:[J

    .line 183
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->hashCache:Ljava/util/concurrent/ConcurrentMap;

    sget-wide v1, Lcom/alibaba/fastjson2/reader/ObjectArrayReader;->TYPE_HASH_CODE:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson2/reader/ObjectArrayReader;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectArrayReader;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->hashCache:Ljava/util/concurrent/ConcurrentMap;

    const-wide v1, -0x4318000b8f6218c8L    # -2.6645156755451724E-15

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplString;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplString;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->hashCache:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, Ljava/util/HashMap;

    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->creator:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    .line 453
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->modules:Ljava/util/List;

    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->init()V

    return-void
.end method

.method private getObjectReaderInternal(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 10

    .line 752
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson2/modules/ObjectReaderModule;

    .line 753
    invoke-interface {v2, p0, p1}, Lcom/alibaba/fastjson2/modules/ObjectReaderModule;->getObjectReader(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_1

    .line 756
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/reader/ObjectReader;

    goto :goto_0

    .line 757
    :cond_1
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/reader/ObjectReader;

    :goto_0
    if-eqz p1, :cond_2

    move-object v2, p1

    :cond_2
    return-object v2

    .line 766
    :cond_3
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 767
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 768
    array-length v4, v0

    if-lez v4, :cond_5

    .line 769
    aget-object v0, v0, v3

    .line 770
    instance-of v4, v0, Ljava/lang/Class;

    if-eqz v4, :cond_5

    .line 771
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 773
    invoke-direct {p0, p2, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getPreviousObjectReader(ZLjava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    if-eqz p1, :cond_4

    move-object v0, p1

    :cond_4
    return-object v0

    .line 783
    :cond_5
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_b

    .line 784
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 785
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 786
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 787
    instance-of v7, v6, Ljava/lang/Class;

    if-eqz v7, :cond_b

    .line 788
    check-cast v6, Ljava/lang/Class;

    move-object v7, v6

    .line 791
    :goto_1
    const-class v8, Ljava/lang/Object;

    const/4 v9, 0x1

    if-eq v7, v8, :cond_7

    .line 792
    invoke-virtual {v7}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v8

    array-length v8, v8

    if-lez v8, :cond_6

    move v7, v9

    goto :goto_2

    .line 791
    :cond_6
    invoke-virtual {v7}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    goto :goto_1

    :cond_7
    move v7, v3

    .line 797
    :goto_2
    array-length v8, v0

    if-eqz v8, :cond_8

    if-nez v7, :cond_a

    .line 798
    :cond_8
    invoke-virtual {p0, v6, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 800
    invoke-direct {p0, p2, p1, v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getPreviousObjectReader(ZLjava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    if-eqz p1, :cond_9

    move-object v7, p1

    :cond_9
    return-object v7

    .line 807
    :cond_a
    array-length v0, v0

    if-ne v0, v9, :cond_b

    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 808
    invoke-static {p1, v6, v4, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1

    .line 813
    :cond_b
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getMapping(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 815
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez p2, :cond_c

    const-string v7, "com.google.common.collect.ArrayListMultimap"

    .line 817
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 818
    invoke-static {v1, v0, v4, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    :cond_c
    if-nez v2, :cond_10

    .line 824
    invoke-virtual {v0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 825
    array-length v4, v1

    move v5, v3

    :goto_3
    if-ge v3, v4, :cond_d

    aget-object v5, v1, v3

    .line 826
    invoke-interface {v5}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v5

    .line 827
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.alibaba.fastjson2.annotation.JSONCompiled"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_d
    if-eqz v5, :cond_10

    .line 830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_FASTJOSNReader"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 831
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-nez v3, :cond_e

    .line 833
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    :cond_e
    if-nez v3, :cond_f

    .line 836
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 840
    :cond_f
    :try_start_0
    invoke-virtual {v3, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 841
    const-class v3, Lcom/alibaba/fastjson2/reader/ObjectReader;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 842
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/reader/ObjectReader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    :catch_0
    :cond_10
    if-nez v2, :cond_11

    .line 853
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getCreator()Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    move-result-object v1

    .line 854
    invoke-virtual {v1, v0, p1, p2, p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createObjectReader(Ljava/lang/Class;Ljava/lang/reflect/Type;ZLcom/alibaba/fastjson2/reader/ObjectReaderProvider;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    .line 857
    :cond_11
    invoke-direct {p0, p2, p1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getPreviousObjectReader(ZLjava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    if-eqz p1, :cond_12

    move-object v2, p1

    :cond_12
    return-object v2
.end method

.method private getPreviousObjectReader(ZLjava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 0

    if-eqz p1, :cond_0

    .line 867
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2, p3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/reader/ObjectReader;

    goto :goto_0

    .line 868
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2, p3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/reader/ObjectReader;

    :goto_0
    return-object p1
.end method

.method static synthetic lambda$cleanup$0(Ljava/lang/ClassLoader;Ljava/util/Map$Entry;)Z
    .locals 0

    .line 399
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$cleanup$1(Ljava/lang/ClassLoader;Ljava/util/Map$Entry;)Z
    .locals 1

    .line 403
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/reader/ObjectReader;

    invoke-static {v0, p1, p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->match(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/ClassLoader;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$cleanup$2(Ljava/lang/ClassLoader;Ljava/util/Map$Entry;)Z
    .locals 1

    .line 407
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/reader/ObjectReader;

    invoke-static {v0, p1, p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->match(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/ClassLoader;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$createFieldReader$4(JLjava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Field;)V
    .locals 2

    .line 950
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64LCase(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    .line 951
    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$createFieldReader$5(JLjava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Method;)V
    .locals 2

    .line 962
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->setterName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 963
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64LCase(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    .line 964
    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$createObjectCreator$3(Lcom/alibaba/fastjson2/reader/ObjectReader;)Ljava/lang/Object;
    .locals 2

    const-wide/16 v0, 0x0

    .line 925
    invoke-interface {p0, v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static match(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/ClassLoader;)Z
    .locals 5

    .line 346
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-ne v0, p2, :cond_0

    return v1

    .line 351
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 352
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 353
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 354
    invoke-static {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->match(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/ClassLoader;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 358
    :cond_1
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    array-length v0, p0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v4, p0, v3

    .line 359
    invoke-static {v4, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->match(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/ClassLoader;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 365
    :cond_3
    instance-of p0, p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;

    if-eqz p0, :cond_6

    .line 366
    check-cast p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;

    .line 367
    iget-object p0, p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueClass:Ljava/lang/Class;

    if-eqz p0, :cond_4

    .line 368
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    if-ne p0, p2, :cond_4

    return v1

    .line 371
    :cond_4
    iget-object p0, p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->keyType:Ljava/lang/reflect/Type;

    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 372
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    if-ne p0, p2, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    return v1

    .line 373
    :cond_6
    instance-of p0, p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    if-eqz p0, :cond_8

    .line 374
    check-cast p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    .line 375
    iget-object p0, p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemClass:Ljava/lang/Class;

    if-eqz p0, :cond_7

    iget-object p0, p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemClass:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    if-ne p0, p2, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    return v1

    .line 376
    :cond_8
    instance-of p0, p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;

    if-eqz p0, :cond_a

    .line 377
    check-cast p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;

    iget-object p0, p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;->itemClass:Ljava/lang/Class;

    if-eqz p0, :cond_9

    .line 378
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    if-ne p0, p2, :cond_9

    goto :goto_3

    :cond_9
    move v1, v2

    :goto_3
    return v1

    .line 379
    :cond_a
    instance-of p0, p1, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;

    if-eqz p0, :cond_d

    .line 380
    check-cast p1, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;

    iget-object p0, p1, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 381
    array-length p1, p0

    move v0, v2

    :goto_4
    if-ge v0, p1, :cond_d

    aget-object v3, p0, v0

    .line 382
    iget-object v4, v3, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    if-eqz v4, :cond_b

    iget-object v4, v3, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    if-ne v4, p2, :cond_b

    return v1

    .line 385
    :cond_b
    iget-object v3, v3, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    .line 386
    instance-of v4, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_c

    const/4 v4, 0x0

    .line 387
    invoke-static {v3, v4, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->match(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/ClassLoader;)Z

    move-result v3

    if-eqz v3, :cond_c

    return v1

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_d
    return v2
.end method


# virtual methods
.method public addAutoTypeAccept(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 206
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    .line 208
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->acceptHashCodes:[J

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-gez p1, :cond_0

    .line 209
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->acceptHashCodes:[J

    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    new-array v3, v2, [J

    add-int/lit8 v2, v2, -0x1

    .line 210
    aput-wide v0, v3, v2

    .line 211
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    invoke-static {v3}, Ljava/util/Arrays;->sort([J)V

    .line 213
    iput-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->acceptHashCodes:[J

    :cond_0
    return-void
.end method

.method public addAutoTypeDeny(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method final afterAutoType(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2

    .line 529
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->autoTypeHandler:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    .line 530
    invoke-interface {v0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 533
    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->autoTypeList:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$LRUAutoTypeCache;

    monitor-enter p2

    .line 534
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->autoTypeList:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$LRUAutoTypeCache;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$LRUAutoTypeCache;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public checkAutoType(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;J)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    const/4 v5, 0x0

    if-eqz v1, :cond_19

    .line 539
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_6

    .line 543
    :cond_0
    iget-object v6, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    if-eqz v6, :cond_1

    .line 544
    invoke-interface {v6, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 546
    invoke-virtual {v0, v1, v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->afterAutoType(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v6

    .line 551
    :cond_1
    sget-boolean v6, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->SAFE_MODE:Z

    if-eqz v6, :cond_2

    return-object v5

    .line 555
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xc0

    const-string v8, "autoType is not support. "

    if-ge v6, v7, :cond_18

    const/4 v7, 0x0

    .line 560
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x5b

    const/4 v11, 0x1

    if-ne v9, v10, :cond_3

    .line 561
    invoke-virtual {v1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 562
    invoke-virtual {v0, v9, v5, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    :cond_3
    if-eqz v2, :cond_4

    .line 565
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 566
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->afterAutoType(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v2

    .line 570
    :cond_4
    sget-object v9, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v9, v9, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v9, v3

    const-wide/16 v12, 0x0

    cmp-long v9, v9, v12

    if-eqz v9, :cond_5

    goto :goto_0

    :cond_5
    move v11, v7

    :goto_0
    const-wide v14, 0x100000001b3L

    const/16 v10, 0x24

    const-wide v16, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    const-string v7, " -> "

    const-string/jumbo v9, "type not match. "

    if-eqz v11, :cond_a

    move-wide/from16 v18, v16

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v6, :cond_a

    .line 576
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    move/from16 v20, v6

    if-ne v13, v10, :cond_6

    const/16 v13, 0x2e

    :cond_6
    int-to-long v5, v13

    xor-long v5, v18, v5

    mul-long/2addr v5, v14

    .line 582
    iget-object v13, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->acceptHashCodes:[J

    invoke-static {v13, v5, v6}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v13

    if-ltz v13, :cond_9

    .line 583
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    if-eqz v13, :cond_9

    if-eqz v2, :cond_8

    .line 585
    invoke-virtual {v2, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_2

    .line 586
    :cond_7
    new-instance v3, Lcom/alibaba/fastjson2/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 589
    :cond_8
    :goto_2
    invoke-virtual {v0, v1, v13}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->afterAutoType(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v13

    :cond_9
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v18, v5

    move/from16 v6, v20

    const/4 v5, 0x0

    goto :goto_1

    :cond_a
    move/from16 v20, v6

    if-nez v11, :cond_f

    move/from16 v6, v20

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v6, :cond_f

    .line 599
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v10, :cond_b

    const/16 v12, 0x2e

    :cond_b
    int-to-long v12, v12

    xor-long v12, v16, v12

    mul-long/2addr v12, v14

    .line 607
    iget-object v10, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->acceptHashCodes:[J

    invoke-static {v10, v12, v13}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v10

    if-ltz v10, :cond_e

    .line 608
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_d

    if-eqz v2, :cond_d

    .line 610
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_4

    .line 611
    :cond_c
    new-instance v3, Lcom/alibaba/fastjson2/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 614
    :cond_d
    :goto_4
    invoke-virtual {v0, v1, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->afterAutoType(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v3

    :cond_e
    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v16, v12

    const/16 v10, 0x24

    goto :goto_3

    :cond_f
    if-nez v11, :cond_10

    const/4 v5, 0x0

    return-object v5

    .line 624
    :cond_10
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getMapping(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_13

    if-eqz v2, :cond_12

    .line 627
    const-class v3, Ljava/lang/Object;

    if-eq v2, v3, :cond_12

    const-class v3, Ljava/util/HashMap;

    if-eq v5, v3, :cond_12

    .line 630
    invoke-virtual {v2, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_5

    .line 632
    :cond_11
    new-instance v3, Lcom/alibaba/fastjson2/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 635
    :cond_12
    :goto_5
    invoke-virtual {v0, v1, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->afterAutoType(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v5

    .line 639
    :cond_13
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_17

    .line 642
    const-class v6, Ljava/lang/ClassLoader;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_16

    invoke-static {v5}, Lcom/alibaba/fastjson2/util/JDKUtils;->isSQLDataSourceOrRowSet(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_16

    if-eqz v2, :cond_17

    .line 647
    invoke-virtual {v2, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 648
    invoke-virtual {v0, v1, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->afterAutoType(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v5

    .line 651
    :cond_14
    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreAutoTypeNotMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_15

    return-object v2

    .line 655
    :cond_15
    new-instance v3, Lcom/alibaba/fastjson2/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 643
    :cond_16
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 660
    :cond_17
    invoke-virtual {v0, v1, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->afterAutoType(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v5

    .line 557
    :cond_18
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_19
    :goto_6
    move-object v1, v5

    return-object v1
.end method

.method public cleanup(Ljava/lang/Class;)V
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->tclHashCaches:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 334
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 336
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 337
    invoke-interface {v2}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 338
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 342
    :cond_2
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->cleanupCache(Ljava/lang/Class;)V

    return-void
.end method

.method public cleanup(Ljava/lang/ClassLoader;)V
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderProvider$zLB4BPsx9tYR8e0SS2oBlsnTOI8;

    invoke-direct {v1, p1}, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderProvider$zLB4BPsx9tYR8e0SS2oBlsnTOI8;-><init>(Ljava/lang/ClassLoader;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 402
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderProvider$jXs8qvUn8FtApgtL3y5gPzdbtr8;

    invoke-direct {v1, p1}, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderProvider$jXs8qvUn8FtApgtL3y5gPzdbtr8;-><init>(Ljava/lang/ClassLoader;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 406
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderProvider$PhbdrzgaO_ihqVnZVe6fOHnrLjE;

    invoke-direct {v1, p1}, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderProvider$PhbdrzgaO_ihqVnZVe6fOHnrLjE;-><init>(Ljava/lang/ClassLoader;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 410
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 411
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->tclHashCaches:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->cleanupCache(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public cleanupMixIn()V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    return-void
.end method

.method public createCharArrayValueConsumerCreator(Ljava/lang/Class;[Lcom/alibaba/fastjson2/reader/FieldReader;)Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "[",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ")",
            "Ljava/util/function/Function<",
            "Ljava/util/function/Consumer;",
            "Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer;",
            ">;"
        }
    .end annotation

    .line 724
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->creator:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createCharArrayValueConsumerCreator(Ljava/lang/Class;[Lcom/alibaba/fastjson2/reader/FieldReader;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public createFieldReader(Ljava/lang/Class;Ljava/lang/String;J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 10

    .line 937
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p3, v0

    const-wide/16 v0, 0x0

    cmp-long p3, p3, v0

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    move p3, p4

    :goto_0
    if-eqz p3, :cond_1

    .line 940
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p3, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/alibaba/fastjson2/reader/ObjectReader;

    goto :goto_1

    .line 941
    :cond_1
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p3, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/alibaba/fastjson2/reader/ObjectReader;

    :goto_1
    if-eqz p3, :cond_2

    .line 944
    invoke-interface {p3, p2}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getFieldReader(Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p1

    return-object p1

    .line 947
    :cond_2
    new-instance p3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 948
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64LCase(Ljava/lang/String;)J

    move-result-wide v0

    .line 949
    new-instance v2, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderProvider$PoQe_SZ14smleddTJsg-bfBRDwY;

    invoke-direct {v2, v0, v1, p3}, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderProvider$PoQe_SZ14smleddTJsg-bfBRDwY;-><init>(JLjava/util/concurrent/atomic/AtomicReference;)V

    invoke-static {p1, v2}, Lcom/alibaba/fastjson2/util/BeanUtils;->fields(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 955
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    if-eqz p3, :cond_3

    .line 957
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->creator:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p1, p2, v2, p4, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p1

    return-object p1

    .line 960
    :cond_3
    new-instance p3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 961
    new-instance v3, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderProvider$moFnFm5QmPnqp6r6zjADTgPzqQ4;

    invoke-direct {v3, v0, v1, p3}, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderProvider$moFnFm5QmPnqp6r6zjADTgPzqQ4;-><init>(JLjava/util/concurrent/atomic/AtomicReference;)V

    invoke-static {p1, v3}, Lcom/alibaba/fastjson2/util/BeanUtils;->setters(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 968
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p3

    move-object v9, p3

    check-cast v9, Ljava/lang/reflect/Method;

    if-eqz v9, :cond_4

    .line 970
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p3

    .line 971
    aget-object v8, p3, p4

    .line 972
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->creator:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    const/4 v6, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v7, v8

    invoke-virtual/range {v3 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReaderMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v2
.end method

.method public createObjectCreator(Ljava/lang/Class;J)Ljava/util/function/Supplier;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;J)",
            "Ljava/util/function/Supplier<",
            "TT;>;"
        }
    .end annotation

    .line 920
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    if-eqz p2, :cond_1

    .line 922
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/fastjson2/reader/ObjectReader;

    goto :goto_1

    .line 923
    :cond_1
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/fastjson2/reader/ObjectReader;

    :goto_1
    if-eqz p2, :cond_2

    .line 925
    new-instance p1, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderProvider$vb-khQN9NeejI5FE_JUooPnpCa0;

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderProvider$vb-khQN9NeejI5FE_JUooPnpCa0;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReader;)V

    return-object p1

    .line 928
    :cond_2
    invoke-static {p1, p3}, Lcom/alibaba/fastjson2/util/BeanUtils;->getDefaultConstructor(Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 933
    invoke-static {p2}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createSupplier(Ljava/lang/reflect/Constructor;)Ljava/util/function/Supplier;

    move-result-object p1

    return-object p1

    .line 930
    :cond_3
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "default constructor not found : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public createObjectReader([Ljava/lang/String;[Ljava/lang/reflect/Type;Ljava/util/function/Supplier;Lcom/alibaba/fastjson2/function/FieldConsumer;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Lcom/alibaba/fastjson2/function/FieldConsumer<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 984
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->createObjectReader([Ljava/lang/String;[Ljava/lang/reflect/Type;[JLjava/util/function/Supplier;Lcom/alibaba/fastjson2/function/FieldConsumer;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public createObjectReader([Ljava/lang/String;[Ljava/lang/reflect/Type;[JLjava/util/function/Supplier;Lcom/alibaba/fastjson2/function/FieldConsumer;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Type;",
            "[J",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Lcom/alibaba/fastjson2/function/FieldConsumer<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    .line 994
    array-length v0, p1

    new-array v0, v0, [Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 v1, 0x0

    .line 995
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 996
    aget-object v5, p2, v1

    .line 997
    invoke-static {v5}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    if-eqz p3, :cond_0

    .line 998
    array-length v2, p3

    if-ge v1, v2, :cond_0

    aget-wide v2, p3, v1

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x0

    :goto_1
    move-wide v7, v2

    .line 999
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->creator:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    aget-object v4, p1, v1

    new-instance v9, Lcom/alibaba/fastjson2/function/FieldBiConsumer;

    invoke-direct {v9, v1, p5}, Lcom/alibaba/fastjson2/function/FieldBiConsumer;-><init>(ILcom/alibaba/fastjson2/function/FieldConsumer;)V

    invoke-virtual/range {v3 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReader(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;JLjava/util/function/BiConsumer;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1008
    :cond_1
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->creator:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p4, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createObjectReader(Ljava/lang/Class;Ljava/util/function/Supplier;[Lcom/alibaba/fastjson2/reader/FieldReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public createValueConsumerCreator(Ljava/lang/Class;[Lcom/alibaba/fastjson2/reader/FieldReader;)Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "[",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ")",
            "Ljava/util/function/Function<",
            "Ljava/util/function/Consumer;",
            "Lcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;",
            ">;"
        }
    .end annotation

    .line 717
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->creator:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createByteArrayValueConsumerCreator(Ljava/lang/Class;[Lcom/alibaba/fastjson2/reader/FieldReader;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public getAutoTypeBeforeHandler()Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;
    .locals 1

    .line 872
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    return-object v0
.end method

.method public getAutoTypeHandler()Ljava/util/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->autoTypeHandler:Ljava/util/function/Consumer;

    return-object v0
.end method

.method public getAutoTypeList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .line 876
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->autoTypeList:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$LRUAutoTypeCache;

    return-object v0
.end method

.method public getBeanInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V
    .locals 2

    .line 669
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/modules/ObjectReaderModule;

    .line 670
    invoke-interface {v1, p1, p2}, Lcom/alibaba/fastjson2/modules/ObjectReaderModule;->getBeanInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCreator()Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;
    .locals 1

    .line 417
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getContextReaderCreator()Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->creator:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    return-object v0
.end method

.method public getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Constructor;ILjava/lang/reflect/Parameter;)V
    .locals 8

    .line 687
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/modules/ObjectReaderModule;

    .line 688
    invoke-interface {v1}, Lcom/alibaba/fastjson2/modules/ObjectReaderModule;->getAnnotationProcessor()Lcom/alibaba/fastjson2/modules/ObjectReaderAnnotationProcessor;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    .line 690
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/modules/ObjectReaderAnnotationProcessor;->getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Constructor;ILjava/lang/reflect/Parameter;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 2

    .line 675
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/modules/ObjectReaderModule;

    .line 676
    invoke-interface {v1, p1, p2, p3}, Lcom/alibaba/fastjson2/modules/ObjectReaderModule;->getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 2

    .line 899
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/modules/ObjectReaderModule;

    .line 900
    invoke-interface {v1}, Lcom/alibaba/fastjson2/modules/ObjectReaderModule;->getAnnotationProcessor()Lcom/alibaba/fastjson2/modules/ObjectReaderAnnotationProcessor;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 904
    :cond_0
    invoke-interface {v1, p1, p2, p3}, Lcom/alibaba/fastjson2/modules/ObjectReaderAnnotationProcessor;->getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    goto :goto_0

    .line 907
    :cond_1
    iget-object v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->alternateNames:[Ljava/lang/String;

    if-nez v0, :cond_2

    .line 908
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "set"

    .line 909
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 910
    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 911
    invoke-static {p2, p3}, Lcom/alibaba/fastjson2/util/BeanUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    .line 913
    iput-object p2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->alternateNames:[Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;ILjava/lang/reflect/Parameter;)V
    .locals 8

    .line 701
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/modules/ObjectReaderModule;

    .line 702
    invoke-interface {v1}, Lcom/alibaba/fastjson2/modules/ObjectReaderModule;->getAnnotationProcessor()Lcom/alibaba/fastjson2/modules/ObjectReaderAnnotationProcessor;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    .line 704
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/modules/ObjectReaderAnnotationProcessor;->getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;ILjava/lang/reflect/Parameter;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getMixIn(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1
.end method

.method public getModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/modules/ObjectReaderModule;",
            ">;"
        }
    .end annotation

    .line 665
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->modules:Ljava/util/List;

    return-object v0
.end method

.method public getObjectReader(J)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 4

    .line 481
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->readerCache:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$ObjectReaderCachePair;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 483
    iget-wide v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$ObjectReaderCachePair;->hashCode:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 484
    iget-object p1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$ObjectReaderCachePair;->reader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object p1

    .line 486
    :cond_0
    iget v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$ObjectReaderCachePair;->missCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$ObjectReaderCachePair;->missCount:I

    const/16 v0, 0x10

    if-le v2, v0, :cond_1

    .line 487
    sput-object v1, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->readerCache:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$ObjectReaderCachePair;

    .line 492
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 494
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 495
    sget-object v3, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->FASTJSON2_CLASS_LOADER:Ljava/lang/ClassLoader;

    if-eq v2, v3, :cond_2

    .line 496
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 497
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->tclHashCaches:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_2

    .line 499
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/reader/ObjectReader;

    :cond_2
    if-nez v1, :cond_3

    .line 504
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->hashCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alibaba/fastjson2/reader/ObjectReader;

    :cond_3
    if-eqz v1, :cond_4

    .line 507
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->readerCache:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$ObjectReaderCachePair;

    if-nez v0, :cond_4

    .line 508
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$ObjectReaderCachePair;

    invoke-direct {v0, p1, p2, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$ObjectReaderCachePair;-><init>(JLcom/alibaba/fastjson2/reader/ObjectReader;)V

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->readerCache:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$ObjectReaderCachePair;

    :cond_4
    return-object v1
.end method

.method public getObjectReader(Ljava/lang/String;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;J)",
            "Lcom/alibaba/fastjson2/reader/ObjectReader;"
        }
    .end annotation

    .line 515
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 519
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p3, v1

    const-wide/16 v1, 0x0

    cmp-long p3, p3, v1

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 520
    :goto_0
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p3

    if-eq v0, p2, :cond_2

    .line 523
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerIfAbsent(JLcom/alibaba/fastjson2/reader/ObjectReader;)V

    :cond_2
    return-object p3
.end method

.method public getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1

    const/4 v0, 0x0

    .line 710
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 4

    if-nez p1, :cond_0

    .line 729
    const-class p1, Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    .line 733
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/reader/ObjectReader;

    goto :goto_0

    .line 734
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/reader/ObjectReader;

    :goto_0
    if-nez v0, :cond_3

    .line 736
    instance-of v1, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_3

    .line 737
    move-object v1, p1

    check-cast v1, Ljava/lang/reflect/WildcardType;

    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 738
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/4 v0, 0x0

    .line 739
    aget-object v0, v1, v0

    if-eqz p2, :cond_2

    .line 740
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    :goto_1
    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/reader/ObjectReader;

    :cond_3
    if-eqz v0, :cond_4

    goto :goto_2

    .line 746
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReaderInternal(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method public getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->typeConverts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 468
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Function;

    return-object p1
.end method

.method init()V
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/modules/ObjectReaderModule;

    .line 459
    invoke-interface {v1, p0}, Lcom/alibaba/fastjson2/modules/ObjectReaderModule;->init(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public mixIn(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1

    if-nez p2, :cond_0

    .line 240
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :goto_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public register(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1

    const/4 v0, 0x0

    .line 282
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->register(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public register(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 0

    if-eqz p3, :cond_0

    .line 273
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    :goto_0
    if-nez p2, :cond_1

    .line 275
    invoke-interface {p3, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object p1

    .line 278
    :cond_1
    invoke-interface {p3, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object p1
.end method

.method public register(Lcom/alibaba/fastjson2/modules/ObjectReaderModule;)Z
    .locals 4

    .line 313
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_1

    .line 314
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->modules:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 319
    :cond_1
    invoke-interface {p1, p0}, Lcom/alibaba/fastjson2/modules/ObjectReaderModule;->init(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 321
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->modules:Ljava/util/List;

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return v1
.end method

.method public registerIfAbsent(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1

    const/4 v0, 0x0

    .line 286
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerIfAbsent(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public registerIfAbsent(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 0

    if-eqz p3, :cond_0

    .line 290
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 291
    :goto_0
    invoke-interface {p3, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object p1
.end method

.method public registerIfAbsent(JLcom/alibaba/fastjson2/reader/ObjectReader;)V
    .locals 4

    .line 190
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 191
    const-class v1, Lcom/alibaba/fastjson2/JSON;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 192
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 193
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->tclHashCaches:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->tclHashCaches:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->tclHashCaches:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 199
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->hashCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerSeeAlsoSubType(Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x0

    .line 249
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerSeeAlsoSubType(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public registerSeeAlsoSubType(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3

    .line 253
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 258
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    .line 259
    instance-of v2, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;

    if-eqz v2, :cond_1

    .line 260
    check-cast v1, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;

    .line 261
    invoke-virtual {v1, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->addSubType(Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;

    move-result-object p2

    if-eq p2, v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, v0, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void

    .line 255
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo p2, "superclass is null"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->typeConverts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->typeConverts:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->typeConverts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    .line 477
    :cond_0
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Function;

    return-object p1
.end method

.method public setAutoTypeBeforeHandler(Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;)V
    .locals 0

    .line 880
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    return-void
.end method

.method public setAutoTypeHandler(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .line 227
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->autoTypeHandler:Ljava/util/function/Consumer;

    return-void
.end method

.method public unregister(Lcom/alibaba/fastjson2/modules/ObjectReaderModule;)Z
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->modules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public unregisterObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1

    const/4 v0, 0x0

    .line 295
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->unregisterObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public unregisterObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 0

    if-eqz p2, :cond_0

    .line 299
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 300
    :goto_0
    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object p1
.end method

.method public unregisterObjectReader(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;)Z
    .locals 1

    const/4 v0, 0x0

    .line 304
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->unregisterObjectReader(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;Z)Z

    move-result p1

    return p1
.end method

.method public unregisterObjectReader(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;Z)Z
    .locals 0

    if-eqz p3, :cond_0

    .line 308
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 309
    :goto_0
    invoke-interface {p3, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
