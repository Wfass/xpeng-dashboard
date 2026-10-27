.class Labi$f;
.super Ljava/lang/Object;
.source "JodaSupport.java"

# interfaces
.implements Lwk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field final a:Ljava/lang/Class;

.field final b:Ljava/util/function/LongFunction;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Labi$f;->a:Ljava/lang/Class;

    const/4 v0, 0x1

    .line 74
    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 74
    invoke-static {p1}, Laat;->a(Ljava/lang/reflect/Constructor;)Ljava/util/function/LongFunction;

    move-result-object p1

    iput-object p1, p0, Labi$f;->b:Ljava/util/function/LongFunction;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 78
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "create joda instant reader error"

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 138
    invoke-virtual/range {p0 .. p5}, Labi$f;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/Map;J)Ljava/lang/Object;
    .locals 2

    const-string p2, "millis"

    .line 89
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    if-eqz p2, :cond_0

    .line 91
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Labi$f;->d(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p2, "epochSecond"

    .line 94
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    if-eqz p1, :cond_1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 97
    invoke-virtual {p0, p1, p2}, Labi$f;->d(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 100
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string p2, "create joda instant error"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(J)Ljava/lang/Object;
    .locals 1

    .line 104
    iget-object v0, p0, Labi$f;->b:Ljava/util/function/LongFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d_()Ljava/lang/Class;
    .locals 1

    .line 84
    iget-object v0, p0, Labi$f;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 109
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->g()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    return-object p3

    .line 113
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 114
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aa()J

    move-result-wide p1

    .line 115
    invoke-virtual {p0, p1, p2}, Labi$f;->d(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 118
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->v()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 119
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->ar()Ljava/time/Instant;

    move-result-object p1

    if-nez p1, :cond_2

    return-object p3

    .line 124
    :cond_2
    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p1

    .line 125
    invoke-virtual {p0, p1, p2}, Labi$f;->d(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 128
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->t()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 129
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aU()Ljava/util/Map;

    move-result-object p1

    .line 130
    invoke-virtual {p0, p1, p4, p5}, Labi$f;->a(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 133
    :cond_4
    new-instance p2, Lcom/alibaba/fastjson2/c;

    const-string p3, "not support"

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2
.end method
