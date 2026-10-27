.class final Lahj;
.super Lahp;
.source "ObjectWriterImplStringArray.java"


# static fields
.field static final a:[B

.field static final b:J

.field static final c:Lahj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "[String"

    .line 11
    invoke-static {v0}, Lcom/alibaba/fastjson2/b;->a(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lahj;->a:[B

    .line 12
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lahj;->b:J

    .line 14
    new-instance v0, Lahj;

    invoke-direct {v0}, Lahj;-><init>()V

    sput-object v0, Lahj;->c:Lahj;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lahp;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 2

    if-nez p2, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->s()V

    return-void

    .line 34
    :cond_0
    invoke-virtual {p1, p2, p4, p5, p6}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;J)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 35
    sget-object p3, Lahj;->a:[B

    sget-wide p4, Lahj;->b:J

    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/ab;->b([BJ)Z

    .line 38
    :cond_1
    check-cast p2, [Ljava/lang/String;

    .line 40
    array-length p3, p2

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/ab;->c(I)V

    const/4 p3, 0x0

    .line 41
    :goto_0
    array-length p4, p2

    if-ge p3, p4, :cond_4

    .line 42
    aget-object p4, p2, p3

    if-nez p4, :cond_3

    .line 44
    sget-object p4, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide p4, p4, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object p6, Lcom/alibaba/fastjson2/ab$b;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v0, p6, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr p4, v0

    invoke-virtual {p1, p4, p5}, Lcom/alibaba/fastjson2/ab;->b(J)Z

    move-result p4

    if-eqz p4, :cond_2

    const-string p4, ""

    .line 45
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 47
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_1

    .line 51
    :cond_3
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 19
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->s()V

    return-void

    .line 23
    :cond_0
    check-cast p2, [Ljava/lang/String;

    .line 24
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a([Ljava/lang/String;)V

    return-void
.end method
