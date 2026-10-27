.class Labd$e;
.super Ljava/lang/Object;
.source "GuavaSupport.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 296
    sget-object v0, Labd;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.google.common.collect.ImmutableMap"

    .line 297
    invoke-static {v0}, Labo;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Labd;->a:Ljava/lang/Class;

    .line 300
    :cond_0
    sget-object v0, Labd;->a:Ljava/lang/Class;

    if-eqz v0, :cond_6

    .line 304
    check-cast p1, Ljava/util/Map;

    .line 306
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const-string v1, "of"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 307
    sget-object p1, Labd;->e:Ljava/util/function/Supplier;

    if-nez p1, :cond_1

    .line 309
    :try_start_0
    sget-object p1, Labd;->a:Ljava/lang/Class;

    new-array v0, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 310
    invoke-static {p1}, Laat;->c(Ljava/lang/reflect/Method;)Ljava/util/function/Supplier;

    move-result-object p1

    sput-object p1, Labd;->e:Ljava/util/function/Supplier;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 312
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "method not found : com.google.common.collect.ImmutableMap.of"

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 316
    :cond_1
    :goto_0
    sget-object p1, Labd;->e:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 319
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    .line 320
    sget-object v0, Labd;->f:Ljava/util/function/BiFunction;

    if-nez v0, :cond_3

    .line 322
    :try_start_1
    sget-object v0, Labd;->a:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v2

    const-class v2, Ljava/lang/Object;

    aput-object v2, v4, v3

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 323
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 324
    invoke-static {v0}, Laat;->d(Ljava/lang/reflect/Method;)Ljava/util/function/BiFunction;

    move-result-object v0

    sput-object v0, Labd;->f:Ljava/util/function/BiFunction;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 326
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "method not found : com.google.common.collect.ImmutableBiMap.of"

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 330
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 331
    sget-object v0, Labd;->f:Ljava/util/function/BiFunction;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 334
    :cond_4
    sget-object v0, Labd;->g:Ljava/util/function/Function;

    if-nez v0, :cond_5

    .line 336
    :try_start_2
    sget-object v0, Labd;->a:Ljava/lang/Class;

    const-string v1, "copyOf"

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/util/Map;

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 337
    invoke-static {v0}, Laat;->e(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object v0

    sput-object v0, Labd;->g:Ljava/util/function/Function;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 339
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "method not found : com.google.common.collect.ImmutableBiMap.copyOf"

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 343
    :cond_5
    :goto_2
    sget-object v0, Labd;->g:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 301
    :cond_6
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string v0, "class not found : com.google.common.collect.ImmutableMap"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method
