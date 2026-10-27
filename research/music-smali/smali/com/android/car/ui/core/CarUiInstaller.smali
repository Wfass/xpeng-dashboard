.class public Lcom/android/car/ui/core/CarUiInstaller;
.super Landroid/content/ContentProvider;
.source "CarUiInstaller.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LogConditional"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/car/ui/core/CarUiInstaller;->a:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static synthetic a(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1

    .line 286
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    const-class p0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static synthetic a(Ljava/lang/ClassLoader;Lcom/android/car/ui/baselayout/a;)Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-static {p0, p1}, Lcom/android/car/ui/core/CarUiInstaller;->b(Ljava/lang/ClassLoader;Lcom/android/car/ui/baselayout/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/car/ui/core/CarUiInstaller;->b(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/Application;)V
    .locals 1

    .line 104
    invoke-static {p0}, Lcom/android/car/ui/core/CarUiInstaller;->b(Landroid/app/Application;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 108
    :cond_0
    new-instance v0, Lcom/android/car/ui/core/CarUiInstaller$1;

    invoke-direct {v0}, Lcom/android/car/ui/core/CarUiInstaller$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 0

    .line 66
    invoke-static {p0}, Lcom/android/car/ui/core/CarUiInstaller;->b(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic a(I)[Ljava/lang/Class;
    .locals 0

    .line 287
    new-array p0, p0, [Ljava/lang/Class;

    return-object p0
.end method

.method private static b(Ljava/lang/ClassLoader;Lcom/android/car/ui/baselayout/a;)Ljava/lang/Object;
    .locals 7

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 301
    :cond_0
    :try_start_0
    const-class v0, Lcom/android/car/ui/baselayout/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x4

    .line 302
    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 307
    invoke-virtual {p0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 308
    new-array v0, v0, [Ljava/lang/Object;

    .line 309
    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/a;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 310
    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/a;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 311
    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/a;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    .line 312
    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/a;->d()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v6

    .line 308
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 314
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method private static varargs b(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 283
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-nez p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 285
    :cond_0
    invoke-static {p4}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/car/ui/core/-$$Lambda$CarUiInstaller$cPneXeN32wFNj5oRGg-7F45yGew;->INSTANCE:Lcom/android/car/ui/core/-$$Lambda$CarUiInstaller$cPneXeN32wFNj5oRGg-7F45yGew;

    .line 286
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/car/ui/core/-$$Lambda$CarUiInstaller$JEgaIYILfEpJJnJdmDpUeG8I9mo;->INSTANCE:Lcom/android/car/ui/core/-$$Lambda$CarUiInstaller$JEgaIYILfEpJJnJdmDpUeG8I9mo;

    .line 287
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Class;

    .line 288
    :goto_0
    invoke-virtual {p0, p2, p1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x1

    .line 289
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 290
    invoke-virtual {p0, p3, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 292
    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static b(Landroid/content/Context;)V
    .locals 2

    .line 321
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 322
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    if-nez v0, :cond_0

    .line 323
    new-instance v0, Lcom/android/car/ui/a;

    invoke-direct {v0}, Lcom/android/car/ui/a;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    .line 324
    :cond_0
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    instance-of v0, v0, Lcom/android/car/ui/a;

    if-nez v0, :cond_2

    .line 326
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    instance-of v0, v0, Landroidx/appcompat/app/e;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 328
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " must extend CarUiLayoutInflaterFactory"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method private static b(Landroid/app/Application;)Z
    .locals 2

    .line 78
    sget-object v0, Lcom/android/car/ui/core/CarUiInstaller;->a:Ljava/util/HashSet;

    monitor-enter v0

    .line 79
    :try_start_0
    sget-object v1, Lcom/android/car/ui/core/CarUiInstaller;->a:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 80
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic lambda$JEgaIYILfEpJJnJdmDpUeG8I9mo(I)[Ljava/lang/Class;
    .locals 0

    invoke-static {p0}, Lcom/android/car/ui/core/CarUiInstaller;->a(I)[Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$cPneXeN32wFNj5oRGg-7F45yGew(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0

    invoke-static {p0}, Lcom/android/car/ui/core/CarUiInstaller;->a(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 2

    .line 85
    invoke-virtual {p0}, Lcom/android/car/ui/core/CarUiInstaller;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-nez v1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 93
    invoke-static {v0}, Lcom/android/car/ui/core/CarUiInstaller;->a(Landroid/app/Application;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const-string v0, "CarUiInstaller"

    const-string v1, "CarUiInstaller had a null context, unable to call register! Need app to call register by itself"

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
