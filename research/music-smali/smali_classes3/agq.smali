.class final Lagq;
.super Lahp;
.source "ObjectWriterImplInt8Array.java"


# static fields
.field static final a:Lagq;

.field static final b:[B

.field static final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lagq;

    invoke-direct {v0}, Lagq;-><init>()V

    sput-object v0, Lagq;->a:Lagq;

    const-string v0, "[Byte"

    .line 12
    invoke-static {v0}, Lcom/alibaba/fastjson2/b;->a(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lagq;->b:[B

    .line 13
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lagq;->c:J

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
    .locals 0

    if-nez p2, :cond_0

    .line 42
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 46
    :cond_0
    invoke-virtual {p1, p2, p4}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 47
    sget-object p3, Lagq;->b:[B

    sget-wide p4, Lagq;->c:J

    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/ab;->b([BJ)Z

    .line 50
    :cond_1
    check-cast p2, [Ljava/lang/Byte;

    .line 51
    array-length p3, p2

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/ab;->c(I)V

    const/4 p3, 0x0

    .line 52
    :goto_0
    array-length p4, p2

    if-ge p3, p4, :cond_3

    .line 53
    aget-object p4, p2, p3

    if-nez p4, :cond_2

    .line 55
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_1

    .line 57
    :cond_2
    invoke-virtual {p4}, Ljava/lang/Byte;->byteValue()B

    move-result p4

    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/ab;->d(I)V

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 22
    :cond_0
    check-cast p2, [Ljava/lang/Byte;

    .line 23
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->m()V

    const/4 p3, 0x0

    .line 24
    :goto_0
    array-length p4, p2

    if-ge p3, p4, :cond_3

    if-eqz p3, :cond_1

    .line 26
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->o()V

    .line 29
    :cond_1
    aget-object p4, p2, p3

    if-nez p4, :cond_2

    .line 31
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_1

    .line 33
    :cond_2
    invoke-virtual {p4}, Ljava/lang/Byte;->byteValue()B

    move-result p4

    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/ab;->d(I)V

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 36
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->n()V

    return-void
.end method
