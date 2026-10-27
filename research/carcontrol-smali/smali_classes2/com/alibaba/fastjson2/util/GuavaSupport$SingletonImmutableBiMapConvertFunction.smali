.class Lcom/alibaba/fastjson2/util/GuavaSupport$SingletonImmutableBiMapConvertFunction;
.super Ljava/lang/Object;
.source "GuavaSupport.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/util/GuavaSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingletonImmutableBiMapConvertFunction"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 275
    sget-object v0, Lcom/alibaba/fastjson2/util/GuavaSupport;->FUNC_SINGLETON_IMMUTABLE_BIMAP:Ljava/util/function/BiFunction;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "com.google.common.collect.SingletonImmutableBiMap"

    .line 277
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 279
    invoke-static {v0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createBiFunction(Ljava/lang/reflect/Constructor;)Ljava/util/function/BiFunction;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/util/GuavaSupport;->FUNC_SINGLETON_IMMUTABLE_BIMAP:Ljava/util/function/BiFunction;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 281
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "method not found : com.google.common.collect.SingletonImmutableBiMap(Object, Object)"

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 285
    :cond_0
    :goto_1
    check-cast p1, Ljava/util/Map;

    .line 286
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 288
    sget-object v0, Lcom/alibaba/fastjson2/util/GuavaSupport;->FUNC_SINGLETON_IMMUTABLE_BIMAP:Ljava/util/function/BiFunction;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
