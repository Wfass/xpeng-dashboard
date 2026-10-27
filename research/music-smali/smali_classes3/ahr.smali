.class public Lahr;
.super Ljava/lang/Object;
.source "ObjectWriters.java"


# static fields
.field static final a:Lafe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    sget-object v0, Lafe;->a:Lafe;

    sput-object v0, Lahr;->a:Lafe;

    return-void
.end method

.method private static synthetic a(Ljava/util/function/ToLongFunction;Ljava/lang/Object;)I
    .locals 0

    .line 138
    invoke-interface {p0, p1}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Labq;
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
            "Labq;"
        }
    .end annotation

    .line 175
    sget-object v0, Lahr;->a:Lafe;

    invoke-virtual {v0, p0, p1, p2}, Lafe;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Labq;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/function/Function;)Labq;
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
            "Labq;"
        }
    .end annotation

    .line 182
    sget-object v0, Lahr;->a:Lafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lafe;->a(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/function/Function;)Labq;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/function/Function;)Labq;
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
            "Labq;"
        }
    .end annotation

    .line 171
    sget-object v0, Lahr;->a:Lafe;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, p0, v1, p1}, Lafe;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Labq;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/function/ToIntFunction;)Labq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/function/ToIntFunction<",
            "TT;>;)",
            "Labq;"
        }
    .end annotation

    .line 147
    sget-object v0, Lahr;->a:Lafe;

    invoke-virtual {v0, p0, p1}, Lafe;->a(Ljava/lang/String;Ljava/util/function/ToIntFunction;)Labq;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a(Ljava/lang/Class;[Labq;)Laem;
    .locals 1

    .line 28
    sget-object v0, Lahr;->a:Lafe;

    invoke-virtual {v0, p0, p1}, Lafe;->a(Ljava/lang/Class;[Labq;)Laem;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/function/Function;)Laem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "[B>;)",
            "Laem;"
        }
    .end annotation

    .line 92
    new-instance v0, Lagr;

    invoke-direct {v0, p0}, Lagr;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static a(Ljava/util/function/ToLongFunction;Ljava/util/function/BiFunction;)Laem;
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
            "Laem;"
        }
    .end annotation

    .line 138
    new-instance v0, L-$$Lambda$ahr$75m27smhsFf3IHls0aMeLdLtidE;

    invoke-direct {v0, p0}, L-$$Lambda$ahr$75m27smhsFf3IHls0aMeLdLtidE;-><init>(Ljava/util/function/ToLongFunction;)V

    .line 139
    new-instance p0, Lafs;

    invoke-direct {p0, v0, p1}, Lafs;-><init>(Ljava/util/function/ToIntFunction;Ljava/util/function/BiFunction;)V

    return-object p0
.end method

.method public static b(Ljava/util/function/Function;)Laem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "[S>;)",
            "Laem;"
        }
    .end annotation

    .line 96
    new-instance v0, Lagi;

    invoke-direct {v0, p0}, Lagi;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static c(Ljava/util/function/Function;)Laem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "[I>;)",
            "Laem;"
        }
    .end annotation

    .line 100
    new-instance v0, Lagl;

    invoke-direct {v0, p0}, Lagl;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static d(Ljava/util/function/Function;)Laem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "[J>;)",
            "Laem;"
        }
    .end annotation

    .line 104
    new-instance v0, Lago;

    invoke-direct {v0, p0}, Lago;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static e(Ljava/util/function/Function;)Laem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "[C>;)",
            "Laem;"
        }
    .end annotation

    .line 108
    new-instance v0, Lafv;

    invoke-direct {v0, p0}, Lafv;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static f(Ljava/util/function/Function;)Laem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "[F>;)",
            "Laem;"
        }
    .end annotation

    .line 112
    new-instance v0, Lagf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lagf;-><init>(Ljava/util/function/Function;Ljava/text/DecimalFormat;)V

    return-object v0
.end method

.method public static g(Ljava/util/function/Function;)Laem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "[D>;)",
            "Laem;"
        }
    .end annotation

    .line 116
    new-instance v0, Lagc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lagc;-><init>(Ljava/util/function/Function;Ljava/text/DecimalFormat;)V

    return-object v0
.end method

.method public static h(Ljava/util/function/Function;)Laem;
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
            "Laem;"
        }
    .end annotation

    .line 131
    new-instance v0, Lafp;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lafp;-><init>(Ljava/text/DecimalFormat;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static synthetic lambda$75m27smhsFf3IHls0aMeLdLtidE(Ljava/util/function/ToLongFunction;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1}, Lahr;->a(Ljava/util/function/ToLongFunction;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
