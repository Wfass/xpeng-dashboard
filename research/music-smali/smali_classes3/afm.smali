.class final Lafm;
.super Lahp;
.source "ObjectWriterImplAtomicLong.java"


# static fields
.field static final a:Lafm;

.field static final b:[B


# instance fields
.field final c:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lafm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lafm;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lafm;->a:Lafm;

    const-string v0, "AtomicLong"

    .line 12
    invoke-static {v0}, Lcom/alibaba/fastjson2/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lafm;->b:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lahp;-><init>()V

    .line 17
    iput-object p1, p0, Lafm;->c:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->t()V

    return-void

    .line 27
    :cond_0
    check-cast p2, Ljava/util/concurrent/atomic/AtomicLong;

    .line 28
    invoke-virtual {p1, p2, p4}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 30
    sget-object p3, Lafm;->b:[B

    const-wide p4, -0x16176b52da9e7fc2L    # -1.505228865156308E202

    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/ab;->b([BJ)Z

    .line 33
    :cond_1
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide p2

    .line 34
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/ab;->e(J)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->t()V

    return-void

    .line 43
    :cond_0
    check-cast p2, Ljava/lang/Number;

    .line 44
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    .line 43
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/ab;->e(J)V

    return-void
.end method
