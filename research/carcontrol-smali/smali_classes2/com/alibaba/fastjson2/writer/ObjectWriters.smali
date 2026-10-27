.class public Lcom/alibaba/fastjson2/writer/ObjectWriters;
.super Ljava/lang/Object;
.source "ObjectWriters.java"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fieldWriter(Ljava/lang/String;Lcom/alibaba/fastjson2/function/ToByteFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/function/ToByteFunction<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 155
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Ljava/lang/String;Lcom/alibaba/fastjson2/function/ToByteFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p0

    return-object p0
.end method

.method public static fieldWriter(Ljava/lang/String;Lcom/alibaba/fastjson2/function/ToFloatFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/function/ToFloatFunction<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 159
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Ljava/lang/String;Lcom/alibaba/fastjson2/function/ToFloatFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p0

    return-object p0
.end method

.method public static fieldWriter(Ljava/lang/String;Lcom/alibaba/fastjson2/function/ToShortFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/function/ToShortFunction<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 151
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Ljava/lang/String;Lcom/alibaba/fastjson2/function/ToShortFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p0

    return-object p0
.end method

.method public static fieldWriter(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TV;>;",
            "Ljava/util/function/Function<",
            "TT;TV;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 175
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p0

    return-object p0
.end method

.method public static fieldWriter(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "TV;>;",
            "Ljava/util/function/Function<",
            "TT;TV;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 182
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p0

    return-object p0
.end method

.method public static fieldWriter(Ljava/lang/String;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 171
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, p0, v1, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p0

    return-object p0
.end method

.method public static fieldWriter(Ljava/lang/String;Ljava/util/function/Predicate;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 167
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Ljava/lang/String;Ljava/util/function/Predicate;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p0

    return-object p0
.end method

.method public static fieldWriter(Ljava/lang/String;Ljava/util/function/ToDoubleFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/function/ToDoubleFunction<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 163
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Ljava/lang/String;Ljava/util/function/ToDoubleFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p0

    return-object p0
.end method

.method public static fieldWriter(Ljava/lang/String;Ljava/util/function/ToIntFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/function/ToIntFunction<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 147
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Ljava/lang/String;Ljava/util/function/ToIntFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p0

    return-object p0
.end method

.method public static fieldWriter(Ljava/lang/String;Ljava/util/function/ToLongFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/function/ToLongFunction<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 143
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Ljava/lang/String;Ljava/util/function/ToLongFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p0

    return-object p0
.end method

.method public static fieldWriterList(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TV;>;",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/util/List<",
            "TV;>;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 189
    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_0

    .line 190
    sget-object p1, Lcom/alibaba/fastjson2/util/TypeUtils;->PARAM_TYPE_LIST_STR:Ljava/lang/reflect/ParameterizedType;

    goto :goto_0

    .line 192
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;

    const-class v1, Ljava/util/List;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    move-object p1, v0

    .line 194
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    const-class v1, Ljava/util/List;

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p0

    return-object p0
.end method

.method public static fieldWriterListString(Ljava/lang/String;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 198
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    sget-object v1, Lcom/alibaba/fastjson2/util/TypeUtils;->PARAM_TYPE_LIST_STR:Ljava/lang/reflect/ParameterizedType;

    const-class v2, Ljava/util/List;

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$ofToBooleanArray$0(Ljava/util/function/ToLongFunction;Ljava/lang/Object;)I
    .locals 0

    .line 138
    invoke-interface {p0, p1}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static objectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    .line 24
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public static varargs objectWriter(Ljava/lang/Class;J[Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    .line 36
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createObjectWriter(Ljava/lang/Class;J[Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public static varargs objectWriter(Ljava/lang/Class;[Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    .line 28
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createObjectWriter(Ljava/lang/Class;[Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public static varargs objectWriter([Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    .line 40
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createObjectWriter([Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of(Ljava/lang/Class;[Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;",
            ")",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter<",
            "TT;>;"
        }
    .end annotation

    .line 32
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createObjectWriter(Ljava/lang/Class;[Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public static ofReflect(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    .line 20
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public static ofToBigDecimal(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "Ljava/math/BigDecimal;",
            ">;)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;"
        }
    .end annotation

    .line 131
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;-><init>(Ljava/text/DecimalFormat;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static ofToBooleanArray(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "[Z>;)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;"
        }
    .end annotation

    .line 120
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolValueArray;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolValueArray;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static ofToBooleanArray(Ljava/util/function/ToIntFunction;Ljava/util/function/BiFunction;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToIntFunction;",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;"
        }
    .end annotation

    .line 127
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolValueArrayLambda;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolValueArrayLambda;-><init>(Ljava/util/function/ToIntFunction;Ljava/util/function/BiFunction;)V

    return-object v0
.end method

.method public static ofToBooleanArray(Ljava/util/function/ToLongFunction;Ljava/util/function/BiFunction;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToLongFunction;",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;"
        }
    .end annotation

    .line 138
    new-instance v0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriters$u61K52GSm6pXr_jTHM5ZAOIYVcI;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriters$u61K52GSm6pXr_jTHM5ZAOIYVcI;-><init>(Ljava/util/function/ToLongFunction;)V

    .line 139
    new-instance p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolValueArrayLambda;

    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolValueArrayLambda;-><init>(Ljava/util/function/ToIntFunction;Ljava/util/function/BiFunction;)V

    return-object p0
.end method

.method public static ofToByteArray(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "[B>;)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;"
        }
    .end annotation

    .line 92
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8ValueArray;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8ValueArray;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static ofToCharArray(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "[C>;)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;"
        }
    .end annotation

    .line 108
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCharValueArray;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCharValueArray;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static ofToDoubleArray(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "[D>;)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;"
        }
    .end annotation

    .line 116
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDoubleValueArray;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDoubleValueArray;-><init>(Ljava/util/function/Function;Ljava/text/DecimalFormat;)V

    return-object v0
.end method

.method public static ofToFloatArray(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "[F>;)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;"
        }
    .end annotation

    .line 112
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplFloatValueArray;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplFloatValueArray;-><init>(Ljava/util/function/Function;Ljava/text/DecimalFormat;)V

    return-object v0
.end method

.method public static ofToInt(Ljava/util/function/ToIntFunction;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToIntFunction;",
            ")",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;"
        }
    .end annotation

    .line 62
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alibaba/fastjson2/writer/FieldWriter;

    new-instance v12, Lcom/alibaba/fastjson2/writer/FieldWriterInt32ValFunc;

    const-string/jumbo v3, "toInt"

    const/4 v4, 0x0

    const-wide/high16 v5, 0x1000000000000L

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v12

    move-object v11, p0

    invoke-direct/range {v2 .. v11}, Lcom/alibaba/fastjson2/writer/FieldWriterInt32ValFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/ToIntFunction;)V

    const/4 p0, 0x0

    aput-object v12, v1, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createObjectWriter([Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public static ofToIntArray(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "[I>;)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;"
        }
    .end annotation

    .line 100
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt32ValueArray;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt32ValueArray;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static ofToLong(Ljava/util/function/ToLongFunction;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToLongFunction;",
            ")",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;"
        }
    .end annotation

    .line 77
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alibaba/fastjson2/writer/FieldWriter;

    new-instance v12, Lcom/alibaba/fastjson2/writer/FieldWriterInt64ValFunc;

    const-string/jumbo v3, "toLong"

    const/4 v4, 0x0

    const-wide/high16 v5, 0x1000000000000L

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v12

    move-object v11, p0

    invoke-direct/range {v2 .. v11}, Lcom/alibaba/fastjson2/writer/FieldWriterInt64ValFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/ToLongFunction;)V

    const/4 p0, 0x0

    aput-object v12, v1, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createObjectWriter([Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public static ofToLongArray(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "[J>;)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;"
        }
    .end annotation

    .line 104
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64ValueArray;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64ValueArray;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static ofToShortArray(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "[S>;)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;"
        }
    .end annotation

    .line 96
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16ValueArray;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16ValueArray;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static ofToString(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;"
        }
    .end annotation

    .line 44
    sget-object v13, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    const/4 v0, 0x1

    new-array v14, v0, [Lcom/alibaba/fastjson2/writer/FieldWriter;

    const-class v9, Ljava/lang/String;

    const-class v10, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string/jumbo v3, "toString"

    const/4 v4, 0x0

    const-wide/high16 v5, 0x1000000000000L

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v0, v13

    move-object v12, p0

    .line 45
    invoke-virtual/range {v0 .. v12}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p0

    const/4 v0, 0x0

    aput-object p0, v14, v0

    .line 44
    invoke-virtual {v13, v14}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createObjectWriter([Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    return-object p0
.end method
