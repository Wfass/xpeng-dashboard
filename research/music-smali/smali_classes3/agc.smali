.class final Lagc;
.super Lahp;
.source "ObjectWriterImplDoubleValueArray.java"


# static fields
.field static final a:Lagc;

.field static final b:[B

.field static final c:J


# instance fields
.field final d:Ljava/text/DecimalFormat;

.field private final e:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "[D>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lagc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lagc;-><init>(Ljava/text/DecimalFormat;)V

    sput-object v0, Lagc;->a:Lagc;

    const-string v0, "[D"

    .line 14
    invoke-static {v0}, Lcom/alibaba/fastjson2/b;->a(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lagc;->b:[B

    .line 15
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lagc;->c:J

    return-void
.end method

.method public constructor <init>(Ljava/text/DecimalFormat;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lahp;-><init>()V

    .line 22
    iput-object p1, p0, Lagc;->d:Ljava/text/DecimalFormat;

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lagc;->e:Ljava/util/function/Function;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;Ljava/text/DecimalFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "[D>;",
            "Ljava/text/DecimalFormat;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lahp;-><init>()V

    .line 27
    iput-object p1, p0, Lagc;->e:Ljava/util/function/Function;

    .line 28
    iput-object p2, p0, Lagc;->d:Ljava/text/DecimalFormat;

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 33
    invoke-virtual {p1, p2, p4}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 34
    sget-object p3, Lagc;->b:[B

    sget-wide p4, Lagc;->c:J

    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/ab;->b([BJ)Z

    .line 38
    :cond_0
    iget-object p3, p0, Lagc;->e:Ljava/util/function/Function;

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    .line 39
    invoke-interface {p3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [D

    goto :goto_0

    .line 41
    :cond_1
    check-cast p2, [D

    .line 43
    :goto_0
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a([D)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 49
    iget-object p3, p0, Lagc;->e:Ljava/util/function/Function;

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    .line 50
    invoke-interface {p3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [D

    goto :goto_0

    .line 52
    :cond_0
    check-cast p2, [D

    .line 55
    :goto_0
    iget-object p3, p0, Lagc;->d:Ljava/text/DecimalFormat;

    if-nez p3, :cond_1

    .line 56
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a([D)V

    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/ab;->a([DLjava/text/DecimalFormat;)V

    :goto_1
    return-void
.end method
