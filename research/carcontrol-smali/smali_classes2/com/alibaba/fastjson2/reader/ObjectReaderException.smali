.class final Lcom/alibaba/fastjson2/reader/ObjectReaderException;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;
.source "ObjectReaderException.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final HASH_CAUSE:J

.field static final HASH_DETAIL_MESSAGE:J

.field static final HASH_LOCALIZED_MESSAGE:J

.field static final HASH_MESSAGE:J

.field static final HASH_STACKTRACE:J

.field static final HASH_SUPPRESSED_EXCEPTIONS:J

.field static final HASH_TYPE:J


# instance fields
.field final constructorCause:Ljava/lang/reflect/Constructor;

.field final constructorDefault:Ljava/lang/reflect/Constructor;

.field final constructorMessage:Ljava/lang/reflect/Constructor;

.field final constructorMessageCause:Ljava/lang/reflect/Constructor;

.field final constructorParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final constructors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldReaderStackTrace:Lcom/alibaba/fastjson2/reader/FieldReader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "@type"

    .line 17
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->HASH_TYPE:J

    const-string v0, "message"

    .line 18
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->HASH_MESSAGE:J

    const-string v0, "detailMessage"

    .line 19
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->HASH_DETAIL_MESSAGE:J

    const-string v0, "localizedMessage"

    .line 20
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->HASH_LOCALIZED_MESSAGE:J

    const-string v0, "cause"

    .line 21
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->HASH_CAUSE:J

    const-string/jumbo v0, "stackTrace"

    .line 22
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->HASH_STACKTRACE:J

    const-string/jumbo v0, "suppressedExceptions"

    .line 23
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->HASH_SUPPRESSED_EXCEPTIONS:J

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 38
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->getConstructor(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alibaba/fastjson2/reader/FieldReader;

    const-class v2, [Ljava/lang/StackTraceElement;

    sget-object v3, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderException$CBIolj1YCAru3pcyx6QkF3vlhxA;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderException$CBIolj1YCAru3pcyx6QkF3vlhxA;

    const-string/jumbo v4, "stackTrace"

    .line 39
    invoke-static {v4, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaders;->fieldReader(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/BiConsumer;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 36
    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderException;-><init>(Ljava/lang/Class;Ljava/util/List;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-void
.end method

.method varargs constructor <init>(Ljava/lang/Class;Ljava/util/List;[Lcom/alibaba/fastjson2/reader/FieldReader;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Constructor;",
            ">;[",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ")V"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    .line 48
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    .line 49
    iput-object v11, v10, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->constructors:Ljava/util/List;

    .line 56
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Constructor;

    if-eqz v6, :cond_0

    if-nez v4, :cond_0

    .line 58
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v8

    if-nez v8, :cond_1

    move-object v2, v6

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    .line 66
    aget-object v7, v9, v7

    const/4 v13, 0x1

    if-ne v8, v13, :cond_3

    .line 68
    const-class v14, Ljava/lang/String;

    if-ne v7, v14, :cond_2

    move-object v3, v6

    goto :goto_1

    .line 70
    :cond_2
    const-class v14, Ljava/lang/Throwable;

    invoke-virtual {v14, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object v5, v6

    :cond_3
    :goto_1
    const/4 v14, 0x2

    if-ne v8, v14, :cond_0

    .line 75
    const-class v8, Ljava/lang/String;

    if-ne v7, v8, :cond_0

    const-class v7, Ljava/lang/Throwable;

    aget-object v8, v9, v13

    .line 77
    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v4, v6

    goto :goto_0

    .line 83
    :cond_4
    iput-object v2, v10, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->constructorDefault:Ljava/lang/reflect/Constructor;

    .line 84
    iput-object v3, v10, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->constructorMessage:Ljava/lang/reflect/Constructor;

    .line 85
    iput-object v4, v10, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->constructorMessageCause:Ljava/lang/reflect/Constructor;

    .line 86
    iput-object v5, v10, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->constructorCause:Ljava/lang/reflect/Constructor;

    .line 88
    sget-object v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderException$LBRrI14_UtVj0jaNEogT044RxVE;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderException$LBRrI14_UtVj0jaNEogT044RxVE;

    invoke-interface {v11, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v10, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->constructorParameters:Ljava/util/List;

    .line 95
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 96
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v3

    if-lez v3, :cond_6

    .line 99
    invoke-static {v2}, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v3

    .line 101
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameters()[Ljava/lang/reflect/Parameter;

    move-result-object v4

    .line 102
    new-instance v5, Lcom/alibaba/fastjson2/codec/FieldInfo;

    invoke-direct {v5}, Lcom/alibaba/fastjson2/codec/FieldInfo;-><init>()V

    move v6, v7

    .line 103
    :goto_3
    array-length v8, v4

    if-ge v6, v8, :cond_7

    array-length v8, v3

    if-ge v6, v8, :cond_7

    .line 104
    invoke-virtual {v5}, Lcom/alibaba/fastjson2/codec/FieldInfo;->init()V

    .line 106
    aget-object v18, v4, v6

    .line 108
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v13

    move-object v14, v5

    move-object/from16 v15, p1

    move-object/from16 v16, v2

    move/from16 v17, v6

    .line 109
    invoke-virtual/range {v13 .. v18}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Constructor;ILjava/lang/reflect/Parameter;)V

    .line 110
    iget-object v8, v5, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 111
    iget-object v8, v5, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;

    aput-object v8, v3, v6

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    move-object v3, v1

    .line 116
    :cond_7
    iget-object v2, v10, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->constructorParameters:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 120
    :cond_8
    array-length v0, v12

    :goto_4
    if-ge v7, v0, :cond_a

    aget-object v2, v12, v7

    .line 121
    iget-object v3, v2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    const-string/jumbo v4, "stackTrace"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    const-class v4, [Ljava/lang/StackTraceElement;

    if-ne v3, v4, :cond_9

    move-object v1, v2

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 125
    :cond_a
    iput-object v1, v10, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->fieldReaderStackTrace:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-void
.end method

.method private createObject(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 7

    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->constructorMessageCause:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v2

    .line 382
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1

    .line 386
    :cond_0
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->constructorMessage:Ljava/lang/reflect/Constructor;

    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v3

    .line 388
    invoke-virtual {v4, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1

    .line 392
    :cond_1
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->constructorCause:Ljava/lang/reflect/Constructor;

    if-eqz v5, :cond_2

    if-eqz p2, :cond_2

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p2, p1, v3

    .line 394
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1

    :cond_2
    if-eqz v0, :cond_4

    if-nez p2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v2

    .line 400
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1

    .line 404
    :cond_4
    iget-object v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->constructorDefault:Ljava/lang/reflect/Constructor;

    if-eqz v6, :cond_5

    new-array p1, v3, [Ljava/lang/Object;

    .line 405
    invoke-virtual {v6, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1

    :cond_5
    if-eqz v0, :cond_6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v2

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1

    :cond_6
    if-eqz v4, :cond_7

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v3

    .line 413
    invoke-virtual {v4, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1

    :cond_7
    if-eqz v5, :cond_8

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p2, p1, v3

    .line 417
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_8
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 420
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create Exception error, class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->objectClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static synthetic lambda$CBIolj1YCAru3pcyx6QkF3vlhxA(Ljava/lang/Throwable;[Ljava/lang/StackTraceElement;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method static synthetic lambda$new$0(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;)I
    .locals 0

    .line 89
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result p0

    .line 90
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result p1

    .line 91
    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public createInstance(Ljava/util/Map;J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "J)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 350
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->readObject(Lcom/alibaba/fastjson2/JSONReader;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .line 355
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getType()B

    move-result v0

    const/16 v1, -0x6e

    if-ne v0, v1, :cond_3

    .line 356
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    .line 358
    invoke-virtual {p1, p4, p5}, Lcom/alibaba/fastjson2/JSONReader;->isSupportAutoType(J)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getContextAutoTypeBeforeHandler()Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 359
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 360
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    move-result-wide p4

    .line 362
    invoke-virtual {v0, p4, p5}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p4

    if-nez p4, :cond_2

    .line 364
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x0

    .line 365
    invoke-virtual {v0, p4, p5}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p5

    if-eqz p5, :cond_1

    move-object v0, p5

    goto :goto_0

    .line 368
    :cond_1
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "auoType not support : "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ", offset "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getOffset()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    move-object v0, p4

    :goto_0
    const-wide/16 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 371
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 375
    :cond_3
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p4

    .line 130
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNullOrEmptyString()Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v5

    :cond_0
    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    const/4 v11, 0x0

    .line 148
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 228
    invoke-direct {v1, v5, v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->createObject(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_11

    const/4 v3, 0x0

    .line 231
    :goto_1
    iget-object v11, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->constructors:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_11

    .line 232
    iget-object v11, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->constructorParameters:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    if-eqz v11, :cond_10

    .line 233
    array-length v12, v11

    if-nez v12, :cond_1

    goto/16 :goto_c

    .line 238
    :cond_1
    array-length v12, v11

    const/4 v14, 0x0

    const/4 v15, 0x1

    :goto_2
    const/16 v16, 0x2

    const-string v13, "errorIndex"

    const-string v4, "message"

    move-object/from16 p4, v2

    const-string v2, "cause"

    const/16 v17, -0x1

    move-object/from16 v18, v5

    if-ge v14, v12, :cond_8

    aget-object v5, v11, v14

    if-nez v5, :cond_2

    const/4 v15, 0x0

    goto :goto_7

    .line 244
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v19

    sparse-switch v19, :sswitch_data_0

    :goto_3
    move/from16 v16, v17

    goto :goto_4

    :sswitch_0
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_3

    :sswitch_1
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    const/16 v16, 0x1

    goto :goto_4

    :sswitch_2
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    const/16 v16, 0x0

    :cond_5
    :goto_4
    packed-switch v16, :pswitch_data_0

    .line 257
    invoke-interface {v7, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :goto_5
    const/4 v15, 0x0

    goto :goto_6

    .line 249
    :pswitch_0
    iget-object v2, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->objectClass:Ljava/lang/Class;

    const-class v4, Ljava/time/format/DateTimeParseException;

    if-ne v2, v4, :cond_6

    goto :goto_6

    .line 252
    :cond_6
    invoke-interface {v7, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_5

    :cond_7
    :goto_6
    :pswitch_1
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p4

    move-object/from16 v5, v18

    goto :goto_2

    :cond_8
    :goto_7
    if-nez v15, :cond_9

    goto/16 :goto_d

    .line 268
    :cond_9
    array-length v5, v11

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 269
    :goto_8
    array-length v14, v11

    if-ge v12, v14, :cond_f

    .line 270
    aget-object v14, v11, v12

    .line 272
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_1

    :goto_9
    move/from16 v15, v17

    goto :goto_a

    :sswitch_3
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    goto :goto_9

    :cond_a
    move/from16 v15, v16

    goto :goto_a

    :sswitch_4
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b

    goto :goto_9

    :cond_b
    const/4 v15, 0x1

    goto :goto_a

    :sswitch_5
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c

    goto :goto_9

    :cond_c
    const/4 v15, 0x0

    :goto_a
    packed-switch v15, :pswitch_data_1

    .line 286
    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    :cond_d
    move-object/from16 p5, v2

    :cond_e
    const/4 v15, 0x0

    goto :goto_b

    .line 280
    :pswitch_2
    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_d

    .line 281
    iget-object v15, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->objectClass:Ljava/lang/Class;

    move-object/from16 p5, v2

    const-class v2, Ljava/time/format/DateTimeParseException;

    if-ne v15, v2, :cond_e

    const/4 v15, 0x0

    .line 282
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_b

    :pswitch_3
    move-object/from16 p5, v2

    const/4 v15, 0x0

    move-object/from16 v14, v18

    goto :goto_b

    :pswitch_4
    move-object/from16 p5, v2

    const/4 v15, 0x0

    move-object v14, v6

    .line 289
    :goto_b
    aput-object v14, v5, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p5

    goto :goto_8

    :cond_f
    const/4 v15, 0x0

    .line 292
    iget-object v2, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->constructors:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 294
    :try_start_0
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    goto :goto_e

    :catchall_0
    move-exception v0

    .line 297
    new-instance v3, Lcom/alibaba/fastjson2/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create error, objectClass "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_10
    :goto_c
    move-object/from16 p4, v2

    move-object/from16 v18, v5

    :goto_d
    const/4 v15, 0x0

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, p4

    move-object/from16 v5, v18

    goto/16 :goto_1

    :cond_11
    move-object/from16 p4, v2

    const/4 v15, 0x0

    move-object/from16 v2, p4

    :goto_e
    if-eqz v2, :cond_1b

    if-eqz v9, :cond_15

    .line 308
    array-length v3, v9

    move v4, v15

    :goto_f
    if-ge v4, v3, :cond_13

    aget-object v5, v9, v4

    if-nez v5, :cond_12

    add-int/lit8 v15, v15, 0x1

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 313
    :cond_13
    array-length v3, v9

    if-eqz v3, :cond_14

    array-length v3, v9

    if-eq v15, v3, :cond_15

    .line 314
    :cond_14
    invoke-virtual {v2, v9}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    :cond_15
    if-eqz v10, :cond_16

    .line 319
    iget-object v3, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->fieldReaderStackTrace:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-static {v10}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Lcom/alibaba/fastjson2/reader/FieldReader;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V

    :cond_16
    if-eqz v7, :cond_18

    .line 323
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_17
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 324
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->getFieldReader(Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v5

    if-eqz v5, :cond_17

    .line 326
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_10

    :cond_18
    if-eqz v8, :cond_1a

    .line 332
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 333
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->getFieldReader(Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v5

    if-nez v5, :cond_19

    goto :goto_11

    .line 337
    :cond_19
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v0, v2, v4}, Lcom/alibaba/fastjson2/reader/FieldReader;->addResolveTask(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_11

    :cond_1a
    return-object v2

    .line 303
    :cond_1b
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not support : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->objectClass:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1c
    move-object/from16 v18, v5

    const/4 v15, 0x0

    .line 151
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide v4

    if-nez v11, :cond_20

    .line 153
    sget-wide v12, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->HASH_TYPE:J

    cmp-long v12, v4, v12

    if-nez v12, :cond_20

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson2/JSONReader;->isSupportAutoType(J)Z

    move-result v12

    if-eqz v12, :cond_20

    .line 154
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    move-result-wide v4

    .line 155
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v12

    .line 156
    invoke-virtual {v1, v12, v4, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->autoType(Lcom/alibaba/fastjson2/JSONReader$Context;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v4

    if-nez v4, :cond_1e

    .line 159
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    move-result-object v4

    .line 160
    iget-object v5, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->objectClass:Ljava/lang/Class;

    invoke-virtual {v12, v4, v5, v2, v3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v5

    if-eqz v5, :cond_1d

    move-object v4, v5

    goto :goto_12

    .line 163
    :cond_1d
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No suitable ObjectReader found for"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1e
    :goto_12
    if-ne v4, v1, :cond_1f

    goto/16 :goto_13

    .line 171
    :cond_1f
    invoke-interface {v4, v0}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 172
    :cond_20
    sget-wide v12, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->HASH_MESSAGE:J

    cmp-long v12, v4, v12

    if-eqz v12, :cond_2f

    sget-wide v12, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->HASH_DETAIL_MESSAGE:J

    cmp-long v12, v4, v12

    if-nez v12, :cond_21

    goto/16 :goto_16

    .line 174
    :cond_21
    sget-wide v12, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->HASH_LOCALIZED_MESSAGE:J

    cmp-long v12, v4, v12

    if-nez v12, :cond_22

    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    goto :goto_13

    .line 176
    :cond_22
    sget-wide v12, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->HASH_CAUSE:J

    cmp-long v12, v4, v12

    if-nez v12, :cond_24

    .line 177
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 178
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    goto :goto_13

    .line 180
    :cond_23
    const-class v4, Ljava/lang/Throwable;

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    move-object v6, v4

    goto :goto_13

    .line 182
    :cond_24
    sget-wide v12, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->HASH_STACKTRACE:J

    cmp-long v12, v4, v12

    if-nez v12, :cond_26

    .line 183
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 184
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    goto :goto_13

    .line 186
    :cond_25
    const-class v4, [Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    move-object v9, v4

    goto :goto_13

    .line 188
    :cond_26
    sget-wide v12, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->HASH_SUPPRESSED_EXCEPTIONS:J

    cmp-long v12, v4, v12

    if-nez v12, :cond_29

    .line 189
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 190
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    goto :goto_13

    .line 191
    :cond_27
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->getType()B

    move-result v4

    const/16 v5, -0x6e

    if-ne v4, v5, :cond_28

    .line 192
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    goto :goto_13

    .line 194
    :cond_28
    const-class v4, Ljava/lang/Throwable;

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/JSONReader;->readArray(Ljava/lang/reflect/Type;)Ljava/util/List;

    :goto_13
    move-object/from16 v5, v18

    goto :goto_17

    .line 197
    :cond_29
    invoke-virtual {v1, v4, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v4

    if-nez v7, :cond_2a

    .line 199
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    :cond_2a
    if-eqz v4, :cond_2b

    .line 204
    iget-object v5, v4, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    goto :goto_14

    .line 206
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    move-result-object v5

    .line 210
    :goto_14
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    move-result v12

    if-eqz v12, :cond_2d

    .line 211
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    move-result-object v4

    if-nez v8, :cond_2c

    .line 213
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 215
    :cond_2c
    invoke-interface {v8, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_2d
    if-eqz v4, :cond_2e

    .line 220
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_15

    .line 222
    :cond_2e
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object v4

    .line 224
    :goto_15
    invoke-interface {v7, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 173
    :cond_2f
    :goto_16
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    :goto_17
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5a0f469 -> :sswitch_2
        0x38eb0007 -> :sswitch_1
        0x604d6baa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x5a0f469 -> :sswitch_5
        0x38eb0007 -> :sswitch_4
        0x604d6baa -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
