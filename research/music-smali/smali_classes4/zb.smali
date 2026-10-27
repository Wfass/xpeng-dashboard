.class public Lzb;
.super Ljava/lang/Object;
.source "ObjectReaderImplMethod.java"

# interfaces
.implements Lwk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lwk<",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# static fields
.field static final a:J

.field static final b:J

.field static final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "declaringClass"

    .line 14
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lzb;->a:J

    const-string v0, "name"

    .line 15
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lzb;->b:J

    const-string v0, "parameterTypes"

    .line 16
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lzb;->c:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 101
    sget-object v0, Lcom/alibaba/fastjson2/u$d;->SupportClassForName:Lcom/alibaba/fastjson2/u$d;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    if-eqz p1, :cond_3

    .line 103
    invoke-static {p4}, Labo;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-nez p5, :cond_1

    .line 110
    new-array p2, p2, [Ljava/lang/Class;

    goto :goto_2

    .line 112
    :cond_1
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p4

    new-array p4, p4, [Ljava/lang/Class;

    .line 113
    :goto_1
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 114
    invoke-interface {p5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    invoke-static {v0}, Labo;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    aput-object v0, p4, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    move-object p2, p4

    .line 120
    :goto_2
    :try_start_0
    invoke-virtual {p1, p3, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 122
    new-instance p2, Lcom/alibaba/fastjson2/c;

    const-string p3, "method not found"

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 105
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string p2, "ClassForName not support"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public synthetic a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual/range {p0 .. p5}, Lzb;->d(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual/range {p0 .. p5}, Lzb;->e(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual/range {p0 .. p5}, Lzb;->f(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/reflect/Method;
    .locals 0

    .line 20
    invoke-virtual/range {p0 .. p5}, Lzb;->g(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/reflect/Method;
    .locals 6

    .line 25
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->p()I

    move-result p2

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object v4

    .line 31
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object v3

    .line 32
    const-class p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/u;->c(Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object v5

    .line 34
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u$c;->i()J

    move-result-wide p1

    or-long v1, p1, p4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lzb;->a(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1

    .line 27
    :cond_0
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "not support input "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->be()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public f(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/reflect/Method;
    .locals 6

    .line 39
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->y()Z

    move-result p2

    const-string p3, "not support input "

    if-eqz p2, :cond_1

    .line 44
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object v4

    .line 45
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object v3

    .line 46
    const-class p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/u;->c(Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object v5

    .line 48
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->z()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 53
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->x()Z

    .line 55
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u$c;->i()J

    move-result-wide p1

    or-long v1, p1, p4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lzb;->a(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1

    .line 50
    :cond_0
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->be()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2

    .line 41
    :cond_1
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->be()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public g(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/reflect/Method;
    .locals 6

    .line 60
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->m()Z

    move-result v0

    if-nez v0, :cond_2

    .line 62
    invoke-virtual {p1, p4, p5}, Lcom/alibaba/fastjson2/u;->c(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/u;->b:Z

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual/range {p0 .. p5}, Lzb;->e(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1

    .line 66
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lzb;->f(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1

    .line 69
    :cond_1
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "not support input "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->be()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    const/4 p2, 0x0

    move-object v3, p2

    move-object v4, v3

    move-object v5, v4

    .line 75
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->o()Z

    move-result p2

    if-nez p2, :cond_6

    .line 76
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->H()J

    move-result-wide p2

    .line 77
    sget-wide v0, Lzb;->a:J

    cmp-long v0, p2, v0

    if-nez v0, :cond_3

    .line 78
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object p2

    move-object v4, p2

    goto :goto_0

    .line 79
    :cond_3
    sget-wide v0, Lzb;->b:J

    cmp-long v0, p2, v0

    if-nez v0, :cond_4

    .line 80
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object p2

    move-object v3, p2

    goto :goto_0

    .line 81
    :cond_4
    sget-wide v0, Lzb;->c:J

    cmp-long p2, p2, v0

    if-nez p2, :cond_5

    .line 82
    const-class p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/u;->c(Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p2

    move-object v5, p2

    goto :goto_0

    .line 84
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->P()V

    goto :goto_0

    .line 88
    :cond_6
    iget-boolean p2, p1, Lcom/alibaba/fastjson2/u;->b:Z

    if-nez p2, :cond_7

    .line 89
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->x()Z

    .line 92
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u$c;->i()J

    move-result-wide p1

    or-long v1, p1, p4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lzb;->a(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method

.method public synthetic readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual/range {p0 .. p5}, Lzb;->g(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method
