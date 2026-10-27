.class final Lafv;
.super Lahp;
.source "ObjectWriterImplCharValueArray.java"


# static fields
.field static final a:Lafv;

.field static final b:[B

.field static final c:J


# instance fields
.field private final d:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lafv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lafv;-><init>(Ljava/util/function/Function;)V

    sput-object v0, Lafv;->a:Lafv;

    const-string v0, "[C"

    .line 13
    invoke-static {v0}, Lcom/alibaba/fastjson2/b;->a(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lafv;->b:[B

    .line 14
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lafv;->c:J

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "[C>;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lahp;-><init>()V

    .line 19
    iput-object p1, p0, Lafv;->d:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 24
    invoke-virtual {p1, p2, p4, p5, p6}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;J)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 25
    sget-object p3, Lafv;->b:[B

    sget-wide p4, Lafv;->c:J

    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/ab;->b([BJ)Z

    .line 29
    :cond_0
    iget-object p3, p0, Lafv;->d:Ljava/util/function/Function;

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    .line 30
    invoke-interface {p3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [C

    goto :goto_0

    .line 32
    :cond_1
    check-cast p2, [C

    :goto_0
    const/4 p3, 0x0

    .line 35
    array-length p4, p2

    invoke-virtual {p1, p2, p3, p4}, Lcom/alibaba/fastjson2/ab;->b([CII)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 41
    iget-object p3, p0, Lafv;->d:Ljava/util/function/Function;

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    .line 42
    invoke-interface {p3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [C

    goto :goto_0

    .line 44
    :cond_0
    check-cast p2, [C

    .line 47
    :goto_0
    iget-boolean p3, p1, Lcom/alibaba/fastjson2/ab;->e:Z

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    .line 48
    array-length p4, p2

    invoke-virtual {p1, p2, p3, p4}, Lcom/alibaba/fastjson2/ab;->b([CII)V

    goto :goto_1

    .line 50
    :cond_1
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
