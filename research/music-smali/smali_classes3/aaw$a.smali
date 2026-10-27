.class public Laaw$a;
.super Ljava/lang/Object;
.source "ApacheLang3Support.java"

# interfaces
.implements Lwk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laaw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field static final a:J

.field static final b:J


# instance fields
.field final c:Ljava/lang/Class;

.field final d:Ljava/lang/reflect/Type;

.field final e:Ljava/lang/reflect/Type;

.field final g:Ljava/util/function/BiFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "left"

    .line 28
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Laaw$a;->a:J

    const-string v0, "right"

    .line 29
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Laaw$a;->b:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Laaw$a;->c:Ljava/lang/Class;

    .line 39
    iput-object p2, p0, Laaw$a;->d:Ljava/lang/reflect/Type;

    .line 40
    iput-object p3, p0, Laaw$a;->e:Ljava/lang/reflect/Type;

    :try_start_0
    const-string p2, "of"

    const/4 p3, 0x2

    .line 43
    new-array p3, p3, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v1, Ljava/lang/Object;

    aput-object v1, p3, v0

    const/4 v0, 0x1

    const-class v1, Ljava/lang/Object;

    aput-object v1, p3, v0

    .line 44
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 43
    invoke-static {p1}, Laat;->d(Ljava/lang/reflect/Method;)Ljava/util/function/BiFunction;

    move-result-object p1

    iput-object p1, p0, Laaw$a;->g:Ljava/util/function/BiFunction;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 47
    new-instance p2, Lcom/alibaba/fastjson2/c;

    const-string p3, "Pair.of method not found"

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 4

    .line 53
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->g()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    return-object p3

    :cond_0
    const/16 p2, -0x6e

    .line 57
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/u;->a(B)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 58
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->G()J

    move-result-wide p4

    const-wide v0, 0x4076a3beb3345886L    # 362.2340576214559

    cmp-long p2, p4, v0

    if-eqz p2, :cond_2

    const-wide v0, -0x26e63497cf3e0856L    # -1.6651998930831493E121

    cmp-long p2, p4, v0

    if-eqz p2, :cond_2

    const-wide v0, 0x73541298372f80e4L    # 3.508656425431719E247

    cmp-long p2, p4, v0

    if-nez p2, :cond_1

    goto :goto_0

    .line 65
    :cond_1
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "not support inputType : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aS()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2

    .line 70
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->m()Z

    move-result p2

    const-string p4, "not support input"

    if-eqz p2, :cond_9

    const/4 p2, 0x0

    move-object p5, p3

    :goto_1
    const/16 v0, 0x64

    if-ge p2, v0, :cond_a

    .line 72
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    .line 75
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->v()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 76
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->H()J

    move-result-wide v0

    .line 77
    sget-wide v2, Laaw$a;->a:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    .line 78
    iget-object p3, p0, Laaw$a;->d:Ljava/lang/reflect/Type;

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_2

    .line 79
    :cond_4
    sget-wide v2, Laaw$a;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 80
    iget-object p5, p0, Laaw$a;->e:Ljava/lang/reflect/Type;

    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p5

    goto :goto_2

    :cond_5
    if-nez p2, :cond_6

    .line 82
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->K()Ljava/lang/String;

    move-result-object p3

    .line 83
    iget-object p5, p0, Laaw$a;->e:Ljava/lang/reflect/Type;

    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p5

    goto :goto_2

    .line 85
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->P()V

    goto :goto_2

    :cond_7
    if-nez p2, :cond_8

    .line 88
    iget-object p3, p0, Laaw$a;->d:Ljava/lang/reflect/Type;

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p3

    .line 89
    iget-object p5, p0, Laaw$a;->e:Ljava/lang/reflect/Type;

    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p5

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 91
    :cond_8
    new-instance p2, Lcom/alibaba/fastjson2/c;

    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2

    .line 94
    :cond_9
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->s()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 95
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->p()I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_b

    .line 99
    iget-object p2, p0, Laaw$a;->d:Ljava/lang/reflect/Type;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p3

    .line 100
    iget-object p2, p0, Laaw$a;->e:Ljava/lang/reflect/Type;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p5

    .line 105
    :cond_a
    :goto_3
    iget-object p1, p0, Laaw$a;->g:Ljava/util/function/BiFunction;

    invoke-interface {p1, p3, p5}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 97
    :cond_b
    new-instance p2, Lcom/alibaba/fastjson2/c;

    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2

    .line 102
    :cond_c
    new-instance p2, Lcom/alibaba/fastjson2/c;

    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 6

    .line 110
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->g()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    return-object p3

    .line 115
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->m()Z

    move-result p2

    const-string p4, "not support input"

    if-eqz p2, :cond_7

    const/4 p2, 0x0

    move-object p5, p3

    :goto_0
    const/16 v0, 0x64

    if-ge p2, v0, :cond_8

    .line 117
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 120
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->v()Z

    move-result v0

    const/16 v1, 0x3a

    if-eqz v0, :cond_5

    .line 121
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->H()J

    move-result-wide v2

    .line 122
    sget-wide v4, Laaw$a;->a:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 123
    iget-object p3, p0, Laaw$a;->d:Ljava/lang/reflect/Type;

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_1

    .line 124
    :cond_2
    sget-wide v4, Laaw$a;->b:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 125
    iget-object p5, p0, Laaw$a;->e:Ljava/lang/reflect/Type;

    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p5

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    .line 127
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->K()Ljava/lang/String;

    move-result-object p3

    .line 128
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/u;->a(C)Z

    .line 129
    iget-object p5, p0, Laaw$a;->e:Ljava/lang/reflect/Type;

    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p5

    goto :goto_1

    .line 131
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->P()V

    goto :goto_1

    :cond_5
    if-nez p2, :cond_6

    .line 134
    iget-object p3, p0, Laaw$a;->d:Ljava/lang/reflect/Type;

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p3

    .line 135
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/u;->a(C)Z

    .line 136
    iget-object p5, p0, Laaw$a;->e:Ljava/lang/reflect/Type;

    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p5

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 138
    :cond_6
    new-instance p2, Lcom/alibaba/fastjson2/c;

    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2

    .line 141
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->y()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 142
    iget-object p2, p0, Laaw$a;->d:Ljava/lang/reflect/Type;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p3

    .line 143
    iget-object p2, p0, Laaw$a;->e:Ljava/lang/reflect/Type;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p5

    .line 144
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->z()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 151
    :cond_8
    :goto_2
    iget-object p1, p0, Laaw$a;->g:Ljava/util/function/BiFunction;

    invoke-interface {p1, p3, p5}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 145
    :cond_9
    new-instance p2, Lcom/alibaba/fastjson2/c;

    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2

    .line 148
    :cond_a
    new-instance p2, Lcom/alibaba/fastjson2/c;

    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2
.end method
