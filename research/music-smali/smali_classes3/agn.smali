.class final Lagn;
.super Lahp;
.source "ObjectWriterImplInt64Array.java"


# static fields
.field static final a:Lagn;

.field static final b:[B

.field static final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lagn;

    invoke-direct {v0}, Lagn;-><init>()V

    sput-object v0, Lagn;->a:Lagn;

    const-string v0, "[Long"

    .line 15
    invoke-static {v0}, Lcom/alibaba/fastjson2/b;->a(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lagn;->b:[B

    .line 16
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lagn;->c:J

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
    .locals 0

    if-nez p2, :cond_0

    .line 51
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 55
    :cond_0
    invoke-virtual {p1, p2, p4}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 56
    sget-object p3, Lagn;->b:[B

    sget-wide p4, Lagn;->c:J

    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/ab;->b([BJ)Z

    .line 59
    :cond_1
    check-cast p2, [Ljava/lang/Long;

    .line 61
    array-length p3, p2

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/ab;->c(I)V

    .line 62
    array-length p3, p2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_3

    aget-object p5, p2, p4

    if-nez p5, :cond_2

    .line 64
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_1

    .line 67
    :cond_2
    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Long;)V

    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_1

    .line 21
    sget-object p2, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide p2, p2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object p4, Lcom/alibaba/fastjson2/ab$b;->WriteNullListAsEmpty:Lcom/alibaba/fastjson2/ab$b;

    iget-wide p4, p4, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr p2, p4

    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/ab;->b(J)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 22
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->m()V

    .line 23
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->n()V

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    :goto_0
    return-void

    .line 30
    :cond_1
    check-cast p2, [Ljava/lang/Long;

    .line 32
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->m()V

    const/4 p3, 0x0

    .line 33
    :goto_1
    array-length p4, p2

    if-ge p3, p4, :cond_4

    if-eqz p3, :cond_2

    .line 35
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->o()V

    .line 38
    :cond_2
    aget-object p4, p2, p3

    if-nez p4, :cond_3

    .line 40
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_2

    .line 43
    :cond_3
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Long;)V

    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 45
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->n()V

    return-void
.end method
