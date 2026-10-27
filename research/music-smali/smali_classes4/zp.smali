.class public Lzp;
.super Ljava/lang/Object;
.source "ObjectReaderImplValue.java"

# interfaces
.implements Lwk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lwk<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/reflect/Type;

.field final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TI;>;"
        }
    .end annotation
.end field

.field final c:J

.field final d:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation
.end field

.field final e:Ljava/lang/reflect/Method;

.field final g:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "TI;TT;>;"
        }
    .end annotation
.end field

.field final h:Laai;

.field final i:Ljava/lang/Object;

.field j:Lwk;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;JLjava/lang/String;Ljava/lang/Object;Laai;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "TI;>;J",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Laai;",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/function/Function<",
            "TI;TT;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lzp;->a:Ljava/lang/reflect/Type;

    .line 38
    iput-object p3, p0, Lzp;->b:Ljava/lang/Class;

    .line 39
    iput-wide p4, p0, Lzp;->c:J

    .line 40
    iput-object p8, p0, Lzp;->h:Laai;

    .line 41
    iput-object p9, p0, Lzp;->d:Ljava/lang/reflect/Constructor;

    .line 42
    iput-object p10, p0, Lzp;->e:Ljava/lang/reflect/Method;

    .line 43
    iput-object p11, p0, Lzp;->g:Ljava/util/function/Function;

    if-eqz p10, :cond_0

    .line 45
    invoke-virtual {p10}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 46
    invoke-virtual {p10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    const/4 p2, 0x1

    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    const/4 p2, 0x0

    .line 47
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lzp;->i:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lzp;->i:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;)Lzp;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TI;>;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lzp<",
            "TI;TT;>;"
        }
    .end annotation

    .line 106
    new-instance v12, Lzp;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v11}, Lzp;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;JLjava/lang/String;Ljava/lang/Object;Laai;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v12
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/Function;)Lzp;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TI;>;",
            "Ljava/util/function/Function<",
            "TI;TT;>;)",
            "Lzp<",
            "TI;TT;>;"
        }
    .end annotation

    .line 110
    new-instance v12, Lzp;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    move-object v11, p2

    invoke-direct/range {v0 .. v11}, Lzp;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;JLjava/lang/String;Ljava/lang/Object;Laai;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v12
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .line 55
    invoke-virtual/range {p0 .. p5}, Lzp;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lzp;->j:Lwk;

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lzp;->a:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v0

    iput-object v0, p0, Lzp;->j:Lwk;

    .line 64
    :cond_0
    iget-object v1, p0, Lzp;->j:Lwk;

    iget-wide v2, p0, Lzp;->c:J

    or-long v5, p4, v2

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v1 .. v6}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x0

    if-nez p2, :cond_1

    return-object p3

    .line 70
    :cond_1
    iget-object p4, p0, Lzp;->h:Laai;

    if-eqz p4, :cond_2

    .line 71
    invoke-virtual {p4, p2}, Laai;->a(Ljava/lang/Object;)Laaq;

    .line 76
    :cond_2
    iget-object p4, p0, Lzp;->g:Ljava/util/function/Function;

    const-string p5, "create object error"

    if-eqz p4, :cond_3

    .line 78
    :try_start_0
    invoke-interface {p4, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 80
    new-instance p3, Lcom/alibaba/fastjson2/c;

    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 82
    :cond_3
    iget-object p4, p0, Lzp;->d:Ljava/lang/reflect/Constructor;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_4

    .line 84
    :try_start_1
    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, v0

    invoke-virtual {p4, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p2

    .line 86
    new-instance p3, Lcom/alibaba/fastjson2/c;

    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 88
    :cond_4
    iget-object p4, p0, Lzp;->e:Ljava/lang/reflect/Method;

    if-eqz p4, :cond_6

    .line 90
    :try_start_2
    iget-object v2, p0, Lzp;->i:Ljava/lang/Object;

    if-eqz v2, :cond_5

    const/4 v2, 0x2

    .line 91
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    iget-object p2, p0, Lzp;->i:Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-virtual {p4, p3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 93
    :cond_5
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-virtual {p4, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    return-object p1

    :catch_2
    move-exception p2

    .line 96
    new-instance p3, Lcom/alibaba/fastjson2/c;

    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 99
    :cond_6
    new-instance p2, Lcom/alibaba/fastjson2/c;

    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2
.end method
