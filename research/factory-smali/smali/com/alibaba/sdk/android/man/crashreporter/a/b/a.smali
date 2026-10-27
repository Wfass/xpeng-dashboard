.class public Lcom/alibaba/sdk/android/man/crashreporter/a/b/a;
.super Ljava/lang/Error;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a$a;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a$a;",
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;)V"
        }
    .end annotation

    .line 43
    const-string v0, "Application Not Responding"

    invoke-direct {p0, v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    iput-object p2, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a;->b:Ljava/util/Map;

    .line 45
    return-void
.end method

.method public static a()Lcom/alibaba/sdk/android/man/crashreporter/a/b/a;
    .locals 7

    .line 97
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 100
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 101
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v3, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a;

    new-instance v4, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a$a;

    new-instance v5, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-direct {v5, v0, v1, v6}, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a;-><init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$1;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v5, v6, v6}, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a$a;-><init>(Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a;Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a$a;Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$1;)V

    invoke-direct {v3, v4, v2}, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a;-><init>(Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a$a;Ljava/util/Map;)V

    return-object v3
.end method

.method public static a(Ljava/lang/String;Z)Lcom/alibaba/sdk/android/man/crashreporter/a/b/a;
    .locals 6

    .line 61
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/util/TreeMap;

    new-instance v2, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$1;

    invoke-direct {v2, v0}, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$1;-><init>(Ljava/lang/Thread;)V

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 75
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 76
    nop

    .line 77
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v0, :cond_0

    .line 79
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez p1, :cond_0

    .line 83
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    array-length v4, v4

    if-lez v4, :cond_1

    .line 87
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_1
    goto :goto_0

    .line 89
    :cond_2
    nop

    .line 90
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    move-object v0, p1

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 91
    new-instance v3, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a$a;

    new-instance v4, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/StackTraceElement;

    invoke-direct {v4, v5, v2, p1}, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a;-><init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$1;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v4, v0, p1}, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a$a;-><init>(Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a;Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a$a;Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$1;)V

    .line 90
    move-object v0, v3

    goto :goto_1

    .line 93
    :cond_3
    new-instance p0, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a;-><init>(Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a$a;Ljava/util/Map;)V

    return-object p0
.end method

.method public static d()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .line 107
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 108
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 109
    return-object v1

    .line 112
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 113
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 115
    if-nez v3, :cond_1

    .line 116
    return-object v1

    .line 119
    :cond_1
    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-object v2
.end method

.method public static e()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .line 126
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    .line 128
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 129
    return-object v1

    .line 132
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 133
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 135
    if-nez v3, :cond_1

    .line 136
    return-object v1

    .line 139
    :cond_1
    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-object v2
.end method


# virtual methods
.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a;->b:Ljava/util/Map;

    return-object v0
.end method

.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    .line 56
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 57
    return-object p0
.end method
