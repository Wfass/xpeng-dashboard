.class public Labh;
.super Ljava/lang/Object;
.source "JdbcSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labh$c;,
        Labh$e;,
        Labh$b;,
        Labh$d;,
        Labh$a;,
        Labh$f;
    }
.end annotation


# static fields
.field static a:Ljava/lang/Class;

.field static volatile b:Z

.field static volatile c:Ljava/util/function/LongFunction;

.field static volatile d:Z

.field static volatile e:Ljava/util/function/LongFunction;

.field static volatile f:Z

.field static volatile g:Ljava/util/function/LongFunction;

.field static volatile h:Z


# direct methods
.method public static a(Ljava/lang/Class;)Laem;
    .locals 1

    .line 126
    new-instance v0, Labh$a;

    invoke-direct {v0, p0}, Labh$a;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;)Laem;
    .locals 1

    .line 130
    new-instance v0, Labh$f;

    invoke-direct {v0, p0, p1}, Labh$f;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Laem;
    .locals 1

    if-nez p0, :cond_0

    .line 55
    sget-object p0, Labh$d;->o:Labh$d;

    return-object p0

    .line 58
    :cond_0
    new-instance v0, Labh$d;

    invoke-direct {v0, p0}, Labh$d;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(J)Ljava/lang/Object;
    .locals 1

    .line 62
    sget-object v0, Labh;->c:Ljava/util/function/LongFunction;

    if-nez v0, :cond_0

    sget-boolean v0, Labh;->d:Z

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "java.sql.Timestamp"

    .line 64
    invoke-static {v0}, Labh;->b(Ljava/lang/String;)Ljava/util/function/LongFunction;

    move-result-object v0

    sput-object v0, Labh;->c:Ljava/util/function/LongFunction;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    .line 66
    sput-boolean v0, Labh;->d:Z

    .line 70
    :cond_0
    :goto_0
    sget-object v0, Labh;->c:Ljava/util/function/LongFunction;

    if-eqz v0, :cond_1

    .line 74
    sget-object v0, Labh;->c:Ljava/util/function/LongFunction;

    invoke-interface {v0, p0, p1}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 71
    :cond_1
    new-instance p0, Lcom/alibaba/fastjson2/c;

    const-string p1, "create java.sql.Timestamp error"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;)Lwk;
    .locals 1

    .line 42
    new-instance v0, Labh$c;

    invoke-direct {v0, p0, p1, p2}, Labh$c;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static b(J)Ljava/lang/Object;
    .locals 1

    .line 78
    sget-object v0, Labh;->e:Ljava/util/function/LongFunction;

    if-nez v0, :cond_0

    sget-boolean v0, Labh;->f:Z

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "java.sql.Date"

    .line 80
    invoke-static {v0}, Labh;->b(Ljava/lang/String;)Ljava/util/function/LongFunction;

    move-result-object v0

    sput-object v0, Labh;->e:Ljava/util/function/LongFunction;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    .line 82
    sput-boolean v0, Labh;->f:Z

    .line 86
    :cond_0
    :goto_0
    sget-object v0, Labh;->e:Ljava/util/function/LongFunction;

    if-eqz v0, :cond_1

    .line 90
    sget-object v0, Labh;->e:Ljava/util/function/LongFunction;

    invoke-interface {v0, p0, p1}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 87
    :cond_1
    new-instance p0, Lcom/alibaba/fastjson2/c;

    const-string p1, "create java.sql.Date error"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static b(Ljava/lang/String;)Ljava/util/function/LongFunction;
    .locals 6

    .line 110
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 111
    invoke-static {p0}, Labf;->b(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    .line 112
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->findConstructor(Ljava/lang/Class;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    .line 113
    const-class p0, Ljava/util/function/LongFunction;

    .line 116
    invoke-static {p0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    const-class p0, Ljava/lang/Object;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 117
    invoke-static {p0, v1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v3

    const-class p0, Ljava/lang/Object;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 119
    invoke-static {p0, v1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    const-string v1, "apply"

    .line 113
    invoke-static/range {v0 .. v5}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object p0

    .line 121
    invoke-virtual {p0}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object p0

    .line 122
    invoke-polymorphic {p0}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/LongFunction;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;)Lwk;
    .locals 1

    .line 46
    new-instance v0, Labh$e;

    invoke-direct {v0, p0, p1, p2}, Labh$e;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Class;)Z
    .locals 2

    .line 134
    sget-object v0, Labh;->a:Ljava/lang/Class;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-boolean v0, Labh;->b:Z

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "java.sql.Clob"

    .line 136
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Labh;->a:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    sput-boolean v1, Labh;->b:Z

    .line 142
    :cond_0
    :goto_0
    sget-object v0, Labh;->a:Ljava/lang/Class;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static c(J)Ljava/lang/Object;
    .locals 1

    .line 94
    sget-object v0, Labh;->g:Ljava/util/function/LongFunction;

    if-nez v0, :cond_0

    sget-boolean v0, Labh;->h:Z

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "java.sql.Time"

    .line 96
    invoke-static {v0}, Labh;->b(Ljava/lang/String;)Ljava/util/function/LongFunction;

    move-result-object v0

    sput-object v0, Labh;->g:Ljava/util/function/LongFunction;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    .line 98
    sput-boolean v0, Labh;->h:Z

    .line 102
    :cond_0
    :goto_0
    sget-object v0, Labh;->g:Ljava/util/function/LongFunction;

    if-eqz v0, :cond_1

    .line 106
    sget-object v0, Labh;->g:Ljava/util/function/LongFunction;

    invoke-interface {v0, p0, p1}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 103
    :cond_1
    new-instance p0, Lcom/alibaba/fastjson2/c;

    const-string p1, "create java.sql.Timestamp error"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;)Lwk;
    .locals 1

    .line 50
    new-instance v0, Labh$b;

    invoke-direct {v0, p0, p1, p2}, Labh$b;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method
