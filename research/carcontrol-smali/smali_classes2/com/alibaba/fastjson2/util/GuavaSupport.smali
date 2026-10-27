.class public Lcom/alibaba/fastjson2/util/GuavaSupport;
.super Ljava/lang/Object;
.source "GuavaSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/util/GuavaSupport$ImmutableListConvertFunction;,
        Lcom/alibaba/fastjson2/util/GuavaSupport$ImmutableSetConvertFunction;,
        Lcom/alibaba/fastjson2/util/GuavaSupport$ImmutableSingletonMapConvertFunction;,
        Lcom/alibaba/fastjson2/util/GuavaSupport$SingletonImmutableBiMapConvertFunction;,
        Lcom/alibaba/fastjson2/util/GuavaSupport$AsMapWriter;,
        Lcom/alibaba/fastjson2/util/GuavaSupport$ArrayListMultimapConvertFunction;
    }
.end annotation


# static fields
.field static CLASS_ARRAYLIST_MULTI_MAP:Ljava/lang/Class;

.field static CLASS_IMMUTABLE_LIST:Ljava/lang/Class;

.field static CLASS_IMMUTABLE_MAP:Ljava/lang/Class;

.field static CLASS_IMMUTABLE_SET:Ljava/lang/Class;

.field static FUNC_ARRAYLIST_MULTI_MAP_CREATE:Ljava/util/function/Supplier;

.field static FUNC_IMMUTABLE_LIST_COPY_OF:Ljava/util/function/Function;

.field static FUNC_IMMUTABLE_LIST_OF_0:Ljava/util/function/Supplier;

.field static FUNC_IMMUTABLE_LIST_OF_1:Ljava/util/function/Function;

.field static FUNC_IMMUTABLE_MAP_COPY_OF:Ljava/util/function/Function;

.field static FUNC_IMMUTABLE_MAP_OF_0:Ljava/util/function/Supplier;

.field static FUNC_IMMUTABLE_MAP_OF_1:Ljava/util/function/BiFunction;

.field static FUNC_IMMUTABLE_SET_COPY_OF:Ljava/util/function/Function;

.field static FUNC_IMMUTABLE_SET_OF_0:Ljava/util/function/Supplier;

.field static FUNC_IMMUTABLE_SET_OF_1:Ljava/util/function/Function;

.field static FUNC_SINGLETON_IMMUTABLE_BIMAP:Ljava/util/function/BiFunction;

.field static volatile METHOD_ARRAYLIST_MULTI_MAP_ERROR:Z

.field static METHOD_ARRAYLIST_MULTI_MAP_PUT_ALL:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAsMapWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    .line 164
    new-instance v0, Lcom/alibaba/fastjson2/util/GuavaSupport$AsMapWriter;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/util/GuavaSupport$AsMapWriter;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static createConvertFunction(Ljava/lang/Class;)Ljava/util/function/Function;
    .locals 6

    .line 209
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.common.collect.ArrayListMultimap"

    .line 210
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    sget-object v0, Lcom/alibaba/fastjson2/util/GuavaSupport;->CLASS_ARRAYLIST_MULTI_MAP:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 212
    sput-object p0, Lcom/alibaba/fastjson2/util/GuavaSupport;->CLASS_ARRAYLIST_MULTI_MAP:Ljava/lang/Class;

    .line 215
    :cond_0
    sget-boolean v0, Lcom/alibaba/fastjson2/util/GuavaSupport;->METHOD_ARRAYLIST_MULTI_MAP_ERROR:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/alibaba/fastjson2/util/GuavaSupport;->FUNC_ARRAYLIST_MULTI_MAP_CREATE:Ljava/util/function/Supplier;

    if-nez v0, :cond_1

    .line 217
    :try_start_0
    sget-object v0, Lcom/alibaba/fastjson2/util/GuavaSupport;->CLASS_ARRAYLIST_MULTI_MAP:Ljava/lang/Class;

    const-string v3, "create"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 218
    invoke-static {v0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createSupplier(Ljava/lang/reflect/Method;)Ljava/util/function/Supplier;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/util/GuavaSupport;->FUNC_ARRAYLIST_MULTI_MAP_CREATE:Ljava/util/function/Supplier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 220
    :catchall_0
    sput-boolean v2, Lcom/alibaba/fastjson2/util/GuavaSupport;->METHOD_ARRAYLIST_MULTI_MAP_ERROR:Z

    .line 224
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/alibaba/fastjson2/util/GuavaSupport;->METHOD_ARRAYLIST_MULTI_MAP_ERROR:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/alibaba/fastjson2/util/GuavaSupport;->METHOD_ARRAYLIST_MULTI_MAP_PUT_ALL:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    .line 226
    :try_start_1
    sget-object v0, Lcom/alibaba/fastjson2/util/GuavaSupport;->CLASS_ARRAYLIST_MULTI_MAP:Ljava/lang/Class;

    const-string v3, "putAll"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v1

    const-class v1, Ljava/lang/Iterable;

    aput-object v1, v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/util/GuavaSupport;->METHOD_ARRAYLIST_MULTI_MAP_PUT_ALL:Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 228
    :catchall_1
    sput-boolean v2, Lcom/alibaba/fastjson2/util/GuavaSupport;->METHOD_ARRAYLIST_MULTI_MAP_ERROR:Z

    .line 232
    :cond_2
    :goto_1
    sget-object v0, Lcom/alibaba/fastjson2/util/GuavaSupport;->FUNC_ARRAYLIST_MULTI_MAP_CREATE:Ljava/util/function/Supplier;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/alibaba/fastjson2/util/GuavaSupport;->METHOD_ARRAYLIST_MULTI_MAP_PUT_ALL:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    .line 233
    new-instance p0, Lcom/alibaba/fastjson2/util/GuavaSupport$ArrayListMultimapConvertFunction;

    sget-object v0, Lcom/alibaba/fastjson2/util/GuavaSupport;->FUNC_ARRAYLIST_MULTI_MAP_CREATE:Ljava/util/function/Supplier;

    sget-object v1, Lcom/alibaba/fastjson2/util/GuavaSupport;->METHOD_ARRAYLIST_MULTI_MAP_PUT_ALL:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson2/util/GuavaSupport$ArrayListMultimapConvertFunction;-><init>(Ljava/util/function/Supplier;Ljava/lang/reflect/Method;)V

    return-object p0

    .line 237
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create map error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static immutableListConverter()Ljava/util/function/Function;
    .locals 1

    .line 42
    new-instance v0, Lcom/alibaba/fastjson2/util/GuavaSupport$ImmutableListConvertFunction;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/util/GuavaSupport$ImmutableListConvertFunction;-><init>()V

    return-object v0
.end method

.method public static immutableMapConverter()Ljava/util/function/Function;
    .locals 1

    .line 50
    new-instance v0, Lcom/alibaba/fastjson2/util/GuavaSupport$ImmutableSingletonMapConvertFunction;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/util/GuavaSupport$ImmutableSingletonMapConvertFunction;-><init>()V

    return-object v0
.end method

.method public static immutableSetConverter()Ljava/util/function/Function;
    .locals 1

    .line 46
    new-instance v0, Lcom/alibaba/fastjson2/util/GuavaSupport$ImmutableSetConvertFunction;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/util/GuavaSupport$ImmutableSetConvertFunction;-><init>()V

    return-object v0
.end method

.method public static singletonBiMapConverter()Ljava/util/function/Function;
    .locals 1

    .line 54
    new-instance v0, Lcom/alibaba/fastjson2/util/GuavaSupport$SingletonImmutableBiMapConvertFunction;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/util/GuavaSupport$SingletonImmutableBiMapConvertFunction;-><init>()V

    return-object v0
.end method
