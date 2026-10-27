.class final Lafi;
.super Lahp;
.source "ObjectWriterImpDecimalArray.java"


# static fields
.field static final a:Lafi;

.field static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lafi;

    invoke-direct {v0}, Lafi;-><init>()V

    sput-object v0, Lafi;->a:Lafi;

    const-string v0, "[BigDecimal"

    .line 15
    invoke-static {v0}, Lcom/alibaba/fastjson2/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lafi;->b:[B

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lahp;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 2

    if-nez p2, :cond_0

    .line 45
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 49
    :cond_0
    invoke-virtual {p1, p2, p4}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 51
    sget-object p3, Lafi;->b:[B

    const-wide p4, -0x1dad997bece99df5L    # -4.238441007007491E165

    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/ab;->b([BJ)Z

    .line 54
    :cond_1
    check-cast p2, [Ljava/math/BigDecimal;

    .line 56
    array-length p3, p2

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/ab;->c(I)V

    .line 57
    array-length p3, p2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_2

    aget-object p5, p2, p4

    const-wide/16 v0, 0x0

    const/4 p6, 0x0

    .line 58
    invoke-virtual {p1, p5, v0, v1, p6}, Lcom/alibaba/fastjson2/ab;->a(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 1

    if-nez p2, :cond_1

    .line 20
    sget-object p2, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide p2, p2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object p4, Lcom/alibaba/fastjson2/ab$b;->WriteNullListAsEmpty:Lcom/alibaba/fastjson2/ab$b;

    iget-wide p4, p4, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr p2, p4

    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/ab;->b(J)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 21
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->m()V

    .line 22
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->n()V

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    :goto_0
    return-void

    .line 29
    :cond_1
    check-cast p2, [Ljava/math/BigDecimal;

    .line 31
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->m()V

    const/4 p3, 0x0

    .line 32
    :goto_1
    array-length p4, p2

    if-ge p3, p4, :cond_3

    if-eqz p3, :cond_2

    .line 34
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->o()V

    .line 37
    :cond_2
    aget-object p4, p2, p3

    const-wide/16 p5, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p4, p5, p6, v0}, Lcom/alibaba/fastjson2/ab;->a(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 39
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->n()V

    return-void
.end method
