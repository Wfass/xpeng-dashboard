.class public Lzz;
.super Ljava/lang/Object;
.source "ObjectReaders.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/Class;)Lsu;
    .locals 6

    .line 104
    sget-object v0, Lxa;->b:Lxa;

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lxa;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;)Lsu;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/BiConsumer;)Lsu;
    .locals 6
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
            "Ljava/util/function/BiConsumer<",
            "TT;TV;>;)",
            "Lsu;"
        }
    .end annotation

    .line 155
    sget-object v0, Lxa;->b:Lxa;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lxa;->a(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/util/function/BiConsumer;)Lsu;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/function/BiConsumer;)Lsu;
    .locals 6
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
            "Ljava/util/function/BiConsumer<",
            "TT;TV;>;)",
            "Lsu;"
        }
    .end annotation

    .line 164
    sget-object v0, Lxa;->b:Lxa;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lxa;->a(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/util/function/BiConsumer;)Lsu;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Class;)Lwk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lwk<",
            "TT;>;"
        }
    .end annotation

    .line 86
    sget-object v0, Lxa;->b:Lxa;

    invoke-virtual {v0, p0}, Lxa;->a(Ljava/lang/Class;)Lwk;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/function/Function;)Lwk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "[C",
            "Ljava/lang/Object;",
            ">;)",
            "Lwk<",
            "TT;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Lxl;

    invoke-direct {v0, p0}, Lxl;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static varargs a(Ljava/util/function/Function;[Lsu;)Lwk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;TT;>;[",
            "Lsu;",
            ")",
            "Lwk<",
            "TT;>;"
        }
    .end annotation

    .line 96
    sget-object v0, Lxa;->b:Lxa;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, p1}, Lxa;->a(Ljava/lang/Class;Ljava/util/function/Function;[Lsu;)Lwk;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/util/function/Function;)Lwk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "[B",
            "Ljava/lang/Object;",
            ">;)",
            "Lwk<",
            "TT;>;"
        }
    .end annotation

    .line 50
    new-instance v0, Lym;

    const-string v1, "base64"

    invoke-direct {v0, p0, v1}, Lym;-><init>(Ljava/util/function/Function;Ljava/lang/String;)V

    return-object v0
.end method

.method public static c(Ljava/util/function/Function;)Lwk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "[S",
            "Ljava/lang/Object;",
            ">;)",
            "Lwk<",
            "TT;>;"
        }
    .end annotation

    .line 54
    new-instance v0, Lyf;

    invoke-direct {v0, p0}, Lyf;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static d(Ljava/util/function/Function;)Lwk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "[I",
            "Ljava/lang/Object;",
            ">;)",
            "Lwk<",
            "TT;>;"
        }
    .end annotation

    .line 58
    new-instance v0, Lyh;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lyh;-><init>(Ljava/lang/Class;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static e(Ljava/util/function/Function;)Lwk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "[J",
            "Ljava/lang/Object;",
            ">;)",
            "Lwk<",
            "TT;>;"
        }
    .end annotation

    .line 62
    new-instance v0, Lyk;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lyk;-><init>(Ljava/lang/Class;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static f(Ljava/util/function/Function;)Lwk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "[F",
            "Ljava/lang/Object;",
            ">;)",
            "Lwk<",
            "TT;>;"
        }
    .end annotation

    .line 66
    new-instance v0, Lxx;

    invoke-direct {v0, p0}, Lxx;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static g(Ljava/util/function/Function;)Lwk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "[D",
            "Ljava/lang/Object;",
            ">;)",
            "Lwk<",
            "TT;>;"
        }
    .end annotation

    .line 70
    new-instance v0, Lxs;

    invoke-direct {v0, p0}, Lxs;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static h(Ljava/util/function/Function;)Lwk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Ljava/math/BigDecimal;",
            "Ljava/lang/Object;",
            ">;)",
            "Lwk<",
            "TT;>;"
        }
    .end annotation

    .line 74
    new-instance v0, Lxe;

    invoke-direct {v0, p0}, Lxe;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method
