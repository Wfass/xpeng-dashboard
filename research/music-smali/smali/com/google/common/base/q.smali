.class public final Lcom/google/common/base/q;
.super Ljava/lang/Object;
.source "Predicates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/q$b;,
        Lcom/google/common/base/q$c;,
        Lcom/google/common/base/q$d;,
        Lcom/google/common/base/q$e;,
        Lcom/google/common/base/q$a;,
        Lcom/google/common/base/q$f;,
        Lcom/google/common/base/q$g;
    }
.end annotation


# direct methods
.method public static a()Lcom/google/common/base/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/p<",
            "TT;>;"
        }
    .end annotation

    .line 51
    sget-object v0, Lcom/google/common/base/q$g;->ALWAYS_TRUE:Lcom/google/common/base/q$g;

    invoke-virtual {v0}, Lcom/google/common/base/q$g;->a()Lcom/google/common/base/p;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/common/base/p;)Lcom/google/common/base/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/p<",
            "TT;>;)",
            "Lcom/google/common/base/p<",
            "TT;>;"
        }
    .end annotation

    .line 83
    new-instance v0, Lcom/google/common/base/q$f;

    invoke-direct {v0, p0}, Lcom/google/common/base/q$f;-><init>(Lcom/google/common/base/p;)V

    return-object v0
.end method

.method public static a(Lcom/google/common/base/p;Lcom/google/common/base/h;)Lcom/google/common/base/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/p<",
            "TB;>;",
            "Lcom/google/common/base/h<",
            "TA;+TB;>;)",
            "Lcom/google/common/base/p<",
            "TA;>;"
        }
    .end annotation

    .line 219
    new-instance v0, Lcom/google/common/base/q$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/base/q$b;-><init>(Lcom/google/common/base/p;Lcom/google/common/base/h;Lcom/google/common/base/q$1;)V

    return-object v0
.end method

.method public static a(Lcom/google/common/base/p;Lcom/google/common/base/p;)Lcom/google/common/base/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/p<",
            "-TT;>;",
            "Lcom/google/common/base/p<",
            "-TT;>;)",
            "Lcom/google/common/base/p<",
            "TT;>;"
        }
    .end annotation

    .line 115
    new-instance v0, Lcom/google/common/base/q$a;

    invoke-static {p0}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/base/p;

    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/p;

    invoke-static {p0, p1}, Lcom/google/common/base/q;->b(Lcom/google/common/base/p;Lcom/google/common/base/p;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/q$a;-><init>(Ljava/util/List;Lcom/google/common/base/q$1;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Class;)Lcom/google/common/base/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/common/base/p<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 173
    new-instance v0, Lcom/google/common/base/q$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/q$d;-><init>(Ljava/lang/Class;Lcom/google/common/base/q$1;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/common/base/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/common/base/p<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 155
    invoke-static {}, Lcom/google/common/base/q;->b()Lcom/google/common/base/p;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/base/q$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/q$e;-><init>(Ljava/lang/Object;Lcom/google/common/base/q$1;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static a(Ljava/util/Collection;)Lcom/google/common/base/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;)",
            "Lcom/google/common/base/p<",
            "TT;>;"
        }
    .end annotation

    .line 208
    new-instance v0, Lcom/google/common/base/q$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/q$c;-><init>(Ljava/util/Collection;Lcom/google/common/base/q$1;)V

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lcom/google/common/base/q;->b(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b()Lcom/google/common/base/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/p<",
            "TT;>;"
        }
    .end annotation

    .line 66
    sget-object v0, Lcom/google/common/base/q$g;->IS_NULL:Lcom/google/common/base/q$g;

    invoke-virtual {v0}, Lcom/google/common/base/q$g;->a()Lcom/google/common/base/p;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Predicates."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x28

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 428
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez p1, :cond_0

    const/16 p1, 0x2c

    .line 430
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 432
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x29

    .line 435
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/google/common/base/p;Lcom/google/common/base/p;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/p<",
            "-TT;>;",
            "Lcom/google/common/base/p<",
            "-TT;>;)",
            "Ljava/util/List<",
            "Lcom/google/common/base/p<",
            "-TT;>;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 689
    new-array v0, v0, [Lcom/google/common/base/p;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
