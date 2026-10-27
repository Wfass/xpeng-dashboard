.class public final Lyh;
.super Lzw;
.source "ObjectReaderImplInt32ValueArray.java"


# static fields
.field static final a:Lyh;

.field public static final b:J


# instance fields
.field final c:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "[I",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Lyh;

    const-class v1, [I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyh;-><init>(Ljava/lang/Class;Ljava/util/function/Function;)V

    sput-object v0, Lyh;->a:Lyh;

    const-string v0, "[I"

    .line 17
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lyh;->b:J

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/function/Function<",
            "[I",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1}, Lzw;-><init>(Ljava/lang/Class;)V

    .line 23
    iput-object p2, p0, Lyh;->c:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(J)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-super {p0, p1, p2}, Lzw;->a(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    const/16 p2, -0x6e

    .line 80
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/u;->a(B)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 81
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->G()J

    move-result-wide p2

    .line 82
    sget-wide p4, Lyh;->b:J

    cmp-long p4, p2, p4

    if-eqz p4, :cond_1

    sget-wide p4, Lyg;->b:J

    cmp-long p2, p2, p4

    if-nez p2, :cond_0

    goto :goto_0

    .line 83
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

    .line 87
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->p()I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 91
    :cond_2
    new-array p3, p2, [I

    const/4 p4, 0x0

    :goto_1
    if-ge p4, p2, :cond_3

    .line 93
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->T()I

    move-result p5

    aput p5, p3, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 96
    :cond_3
    iget-object p1, p0, Lyh;->c:Ljava/util/function/Function;

    if-eqz p1, :cond_4

    .line 97
    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    return-object p3
.end method

.method public createInstance(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 7

    .line 105
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 107
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_1

    .line 111
    :cond_0
    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_1

    .line 112
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    goto :goto_1

    .line 114
    :cond_1
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 118
    invoke-interface {v4, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_1
    add-int/lit8 v4, v2, 0x1

    .line 120
    aput v3, v0, v2

    move v2, v4

    goto :goto_0

    .line 116
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can not cast to int "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_3
    iget-object p1, p0, Lyh;->c:Ljava/util/function/Function;

    if-eqz p1, :cond_4

    .line 123
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v0
.end method

.method public bridge synthetic d_()Ljava/lang/Class;
    .locals 1

    .line 14
    invoke-super {p0}, Lzw;->d_()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    .line 28
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/u;->b:Z

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual/range {p0 .. p5}, Lyh;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 32
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aR()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    return-object p3

    .line 36
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->y()Z

    move-result p2

    if-eqz p2, :cond_7

    const/16 p2, 0x10

    .line 37
    new-array p2, p2, [I

    const/4 p3, 0x0

    .line 39
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->z()Z

    move-result p4

    if-nez p4, :cond_5

    .line 40
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->b()Z

    move-result p4

    if-nez p4, :cond_4

    add-int/lit8 p4, p3, 0x1

    .line 45
    array-length p5, p2

    sub-int p5, p4, p5

    if-lez p5, :cond_3

    .line 46
    array-length p5, p2

    shr-int/lit8 v0, p5, 0x1

    add-int/2addr p5, v0

    sub-int v0, p5, p4

    if-gez v0, :cond_2

    move p5, p4

    .line 52
    :cond_2
    invoke-static {p2, p5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p2

    .line 55
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->T()I

    move-result p5

    aput p5, p2, p3

    move p3, p4

    goto :goto_0

    .line 41
    :cond_4
    new-instance p2, Lcom/alibaba/fastjson2/c;

    const-string p3, "input end"

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2

    .line 57
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->x()Z

    .line 59
    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    .line 60
    iget-object p2, p0, Lyh;->c:Ljava/util/function/Function;

    if-eqz p2, :cond_6

    .line 61
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_6
    return-object p1

    .line 66
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->v()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 67
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object p2

    .line 68
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_8

    return-object p3

    .line 72
    :cond_8
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

    .line 75
    :cond_9
    new-instance p2, Lcom/alibaba/fastjson2/c;

    const-string p3, "TODO"

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2
.end method
