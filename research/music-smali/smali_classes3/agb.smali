.class final Lagb;
.super Lahp;
.source "ObjectWriterImplDouble.java"


# static fields
.field static final a:Lagb;


# instance fields
.field private final b:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lagb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lagb;-><init>(Ljava/text/DecimalFormat;)V

    sput-object v0, Lagb;->a:Lagb;

    return-void
.end method

.method public constructor <init>(Ljava/text/DecimalFormat;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lahp;-><init>()V

    .line 15
    iput-object p1, p0, Lagb;->b:Ljava/text/DecimalFormat;

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 21
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 24
    :cond_0
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/ab;->a(D)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 3

    if-nez p2, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 34
    :cond_0
    iget-object p3, p0, Lagb;->b:Ljava/text/DecimalFormat;

    if-nez p3, :cond_1

    .line 36
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->b()Lcom/alibaba/fastjson2/ab$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/ab$a;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "#"

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 38
    new-instance p3, Ljava/text/DecimalFormat;

    invoke-direct {p3, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_2

    .line 43
    invoke-virtual {p3, p2}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 44
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/String;)V

    return-void

    .line 48
    :cond_2
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/ab;->a(D)V

    .line 49
    invoke-virtual {p1, p5, p6}, Lcom/alibaba/fastjson2/ab;->c(J)J

    move-result-wide p2

    .line 50
    sget-object p5, Lcom/alibaba/fastjson2/ab$b;->WriteClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide p5, p5, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr p5, p2

    const-wide/16 v0, 0x0

    cmp-long p5, p5, v0

    if-eqz p5, :cond_3

    sget-object p5, Lcom/alibaba/fastjson2/ab$b;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson2/ab$b;

    iget-wide p5, p5, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr p5, p2

    cmp-long p5, p5, v0

    if-nez p5, :cond_3

    sget-object p5, Lcom/alibaba/fastjson2/ab$b;->NotWriteNumberClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide p5, p5, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr p2, p5

    cmp-long p2, p2, v0

    if-nez p2, :cond_3

    const-class p2, Ljava/lang/Double;

    if-eq p4, p2, :cond_3

    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p4, p2, :cond_3

    const/16 p2, 0x44

    .line 54
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->c(C)V

    :cond_3
    return-void
.end method
