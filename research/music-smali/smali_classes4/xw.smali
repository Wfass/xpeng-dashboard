.class final Lxw;
.super Lzw;
.source "ObjectReaderImplFloatArray.java"


# static fields
.field static final a:Lxw;

.field static final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lxw;

    invoke-direct {v0}, Lxw;-><init>()V

    sput-object v0, Lxw;->a:Lxw;

    const-string v0, "[Float"

    .line 17
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lxw;->b:J

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 20
    const-class v0, [Ljava/lang/Float;

    invoke-direct {p0, v0}, Lzw;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    const/16 p2, -0x6e

    .line 69
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/u;->a(B)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 70
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->G()J

    move-result-wide p2

    .line 71
    sget-wide p4, Lxw;->b:J

    cmp-long p2, p2, p4

    if-nez p2, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "not support autoType : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aS()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2

    .line 76
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->p()I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 80
    :cond_2
    new-array p3, p2, [Ljava/lang/Float;

    const/4 p4, 0x0

    :goto_1
    if-ge p4, p2, :cond_3

    .line 82
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->ad()Ljava/lang/Float;

    move-result-object p5

    aput-object p5, p3, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_3
    return-object p3
.end method

.method public createInstance(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 6

    .line 89
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Float;

    .line 91
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 95
    :cond_0
    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_1

    .line 96
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_1

    .line 98
    :cond_1
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Float;

    invoke-virtual {v3, v4, v5}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 102
    invoke-interface {v3, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    :goto_1
    add-int/lit8 v3, v1, 0x1

    .line 104
    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    .line 100
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can not cast to Float "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-object v0
.end method

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aR()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    return-object p3

    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->y()Z

    move-result p2

    if-eqz p2, :cond_5

    const/16 p2, 0x10

    .line 30
    new-array p2, p2, [Ljava/lang/Float;

    const/4 p3, 0x0

    .line 32
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->z()Z

    move-result p4

    if-nez p4, :cond_4

    .line 33
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->b()Z

    move-result p4

    if-nez p4, :cond_3

    add-int/lit8 p4, p3, 0x1

    .line 38
    array-length p5, p2

    sub-int p5, p4, p5

    if-lez p5, :cond_2

    .line 39
    array-length p5, p2

    shr-int/lit8 v0, p5, 0x1

    add-int/2addr p5, v0

    sub-int v0, p5, p4

    if-gez v0, :cond_1

    move p5, p4

    .line 45
    :cond_1
    invoke-static {p2, p5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Float;

    .line 48
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->ad()Ljava/lang/Float;

    move-result-object p5

    aput-object p5, p2, p3

    move p3, p4

    goto :goto_0

    .line 34
    :cond_3
    new-instance p2, Lcom/alibaba/fastjson2/c;

    const-string p3, "input end"

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2

    .line 50
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->x()Z

    .line 52
    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 55
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->v()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 56
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object p2

    .line 57
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_6

    return-object p3

    .line 61
    :cond_6
    new-instance p3, Lcom/alibaba/fastjson2/c;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "not support input "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p3

    .line 64
    :cond_7
    new-instance p2, Lcom/alibaba/fastjson2/c;

    const-string p3, "TODO"

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2
.end method
