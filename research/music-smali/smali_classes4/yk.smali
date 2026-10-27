.class public final Lyk;
.super Lzw;
.source "ObjectReaderImplInt64ValueArray.java"


# static fields
.field static final a:Lyk;

.field public static final b:J


# instance fields
.field final c:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "[J",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lyk;

    const-class v1, [J

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyk;-><init>(Ljava/lang/Class;Ljava/util/function/Function;)V

    sput-object v0, Lyk;->a:Lyk;

    const-string v0, "[J"

    .line 16
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lyk;->b:J

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/function/Function<",
            "[J",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Lzw;-><init>(Ljava/lang/Class;)V

    .line 22
    iput-object p2, p0, Lyk;->c:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(J)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-super {p0, p1, p2}, Lzw;->a(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->Z()[J

    move-result-object p1

    if-eqz p1, :cond_0

    .line 37
    iget-object p2, p0, Lyk;->c:Ljava/util/function/Function;

    if-eqz p2, :cond_0

    .line 38
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public createInstance(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 6

    .line 45
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 47
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

    const-wide/16 v2, 0x0

    goto :goto_1

    .line 51
    :cond_0
    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_1

    .line 52
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    goto :goto_1

    .line 54
    :cond_1
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 58
    invoke-interface {v3, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_1
    add-int/lit8 v4, v1, 0x1

    .line 60
    aput-wide v2, v0, v1

    move v1, v4

    goto :goto_0

    .line 56
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can not cast to long "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_3
    iget-object p1, p0, Lyk;->c:Ljava/util/function/Function;

    if-eqz p1, :cond_4

    .line 64
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v0
.end method

.method public bridge synthetic d_()Ljava/lang/Class;
    .locals 1

    .line 12
    invoke-super {p0}, Lzw;->d_()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->Z()[J

    move-result-object p1

    if-eqz p1, :cond_0

    .line 28
    iget-object p2, p0, Lyk;->c:Ljava/util/function/Function;

    if-eqz p2, :cond_0

    .line 29
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method
