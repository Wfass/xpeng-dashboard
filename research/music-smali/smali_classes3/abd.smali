.class public Labd;
.super Ljava/lang/Object;
.source "GuavaSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labd$c;,
        Labd$d;,
        Labd$e;,
        Labd$f;,
        Labd$b;,
        Labd$a;
    }
.end annotation


# static fields
.field static a:Ljava/lang/Class;

.field static b:Ljava/lang/Class;

.field static c:Ljava/lang/Class;

.field static d:Ljava/lang/Class;

.field static e:Ljava/util/function/Supplier;

.field static f:Ljava/util/function/BiFunction;

.field static g:Ljava/util/function/Function;

.field static h:Ljava/util/function/Supplier;

.field static i:Ljava/util/function/Function;

.field static j:Ljava/util/function/Function;

.field static k:Ljava/util/function/Supplier;

.field static l:Ljava/util/function/Function;

.field static m:Ljava/util/function/Function;

.field static n:Ljava/util/function/Supplier;

.field static o:Ljava/lang/reflect/Method;

.field static volatile p:Z

.field static q:Ljava/util/function/BiFunction;


# direct methods
.method public static a(Ljava/lang/Class;)Laem;
    .locals 1

    .line 164
    new-instance v0, Labd$b;

    invoke-direct {v0, p0}, Labd$b;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static a()Ljava/util/function/Function;
    .locals 1

    .line 42
    new-instance v0, Labd$c;

    invoke-direct {v0}, Labd$c;-><init>()V

    return-object v0
.end method

.method public static b()Ljava/util/function/Function;
    .locals 1

    .line 46
    new-instance v0, Labd$d;

    invoke-direct {v0}, Labd$d;-><init>()V

    return-object v0
.end method

.method public static b(Ljava/lang/Class;)Ljava/util/function/Function;
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
    sget-object v0, Labd;->d:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 212
    sput-object p0, Labd;->d:Ljava/lang/Class;

    .line 215
    :cond_0
    sget-boolean v0, Labd;->p:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Labd;->n:Ljava/util/function/Supplier;

    if-nez v0, :cond_1

    .line 217
    :try_start_0
    sget-object v0, Labd;->d:Ljava/lang/Class;

    const-string v3, "create"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 218
    invoke-static {v0}, Laat;->c(Ljava/lang/reflect/Method;)Ljava/util/function/Supplier;

    move-result-object v0

    sput-object v0, Labd;->n:Ljava/util/function/Supplier;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    :catch_0
    sput-boolean v2, Labd;->p:Z

    .line 224
    :cond_1
    :goto_0
    sget-boolean v0, Labd;->p:Z

    if-nez v0, :cond_2

    sget-object v0, Labd;->o:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    .line 226
    :try_start_1
    sget-object v0, Labd;->d:Ljava/lang/Class;

    const-string v3, "putAll"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v1

    const-class v1, Ljava/lang/Iterable;

    aput-object v1, v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Labd;->o:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 228
    :catch_1
    sput-boolean v2, Labd;->p:Z

    .line 232
    :cond_2
    :goto_1
    sget-object v0, Labd;->n:Ljava/util/function/Supplier;

    if-eqz v0, :cond_3

    sget-object v1, Labd;->o:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_3

    .line 233
    new-instance p0, Labd$a;

    invoke-direct {p0, v0, v1}, Labd$a;-><init>(Ljava/util/function/Supplier;Ljava/lang/reflect/Method;)V

    return-object p0

    .line 237
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create map error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c()Ljava/util/function/Function;
    .locals 1

    .line 50
    new-instance v0, Labd$e;

    invoke-direct {v0}, Labd$e;-><init>()V

    return-object v0
.end method

.method public static d()Ljava/util/function/Function;
    .locals 1

    .line 54
    new-instance v0, Labd$f;

    invoke-direct {v0}, Labd$f;-><init>()V

    return-object v0
.end method
