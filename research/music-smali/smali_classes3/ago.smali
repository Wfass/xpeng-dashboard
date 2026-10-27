.class final Lago;
.super Lahp;
.source "ObjectWriterImplInt64ValueArray.java"


# static fields
.field static final a:Lago;

.field static final b:[B

.field static final c:J


# instance fields
.field private final d:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "[J>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lago;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lago;-><init>(Ljava/util/function/Function;)V

    sput-object v0, Lago;->a:Lago;

    const-string v0, "[J"

    .line 16
    invoke-static {v0}, Lcom/alibaba/fastjson2/b;->a(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lago;->b:[B

    .line 17
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lago;->c:J

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "[J>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lahp;-><init>()V

    .line 22
    iput-object p1, p0, Lago;->d:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 28
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 32
    :cond_0
    invoke-virtual {p1, p2, p4}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 33
    sget-object p3, Lago;->b:[B

    sget-wide p4, Lago;->c:J

    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/ab;->b([BJ)Z

    .line 37
    :cond_1
    iget-object p3, p0, Lago;->d:Ljava/util/function/Function;

    if-eqz p3, :cond_2

    .line 38
    invoke-interface {p3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [J

    goto :goto_0

    .line 40
    :cond_2
    check-cast p2, [J

    .line 43
    :goto_0
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a([J)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 7

    if-nez p2, :cond_0

    .line 49
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 53
    :cond_0
    iget-object p3, p1, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-object p3, p3, Lcom/alibaba/fastjson2/ab$a;->b:Lahq;

    const/4 p4, 0x0

    .line 55
    iget-wide v0, p3, Lahq;->g:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_1

    .line 56
    iget-object p3, p1, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    const-class p4, Ljava/lang/Long;

    invoke-virtual {p3, p4}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/Class;)Laem;

    move-result-object p4

    .line 60
    :cond_1
    iget-object p3, p0, Lago;->d:Ljava/util/function/Function;

    if-eqz p3, :cond_2

    .line 61
    invoke-interface {p3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [J

    goto :goto_0

    .line 63
    :cond_2
    check-cast p2, [J

    :goto_0
    if-eqz p4, :cond_6

    .line 66
    sget-object p3, Lagj;->a:Lagj;

    if-ne p4, p3, :cond_3

    goto :goto_2

    .line 71
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->m()V

    const/4 p3, 0x0

    .line 72
    :goto_1
    array-length v0, p2

    if-ge p3, v0, :cond_5

    if-eqz p3, :cond_4

    .line 74
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->o()V

    .line 76
    :cond_4
    aget-wide v0, p2, p3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object v0, p4

    move-object v1, p1

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 78
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->n()V

    return-void

    .line 67
    :cond_6
    :goto_2
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a([J)V

    return-void
.end method
