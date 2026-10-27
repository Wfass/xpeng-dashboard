.class final Lagh;
.super Lahp;
.source "ObjectWriterImplInt16.java"


# static fields
.field static final a:Lagh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lagh;

    invoke-direct {v0}, Lagh;-><init>()V

    sput-object v0, Lagh;->a:Lagh;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lahp;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 14
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->t()V

    return-void

    .line 18
    :cond_0
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    .line 19
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(S)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 2

    if-nez p2, :cond_0

    .line 25
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->t()V

    return-void

    .line 28
    :cond_0
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    .line 29
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->d(I)V

    .line 30
    invoke-virtual {p1, p5, p6}, Lcom/alibaba/fastjson2/ab;->c(J)J

    move-result-wide p2

    .line 31
    sget-object p5, Lcom/alibaba/fastjson2/ab$b;->WriteClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide p5, p5, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr p5, p2

    const-wide/16 v0, 0x0

    cmp-long p5, p5, v0

    if-eqz p5, :cond_1

    sget-object p5, Lcom/alibaba/fastjson2/ab$b;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson2/ab$b;

    iget-wide p5, p5, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr p5, p2

    cmp-long p5, p5, v0

    if-nez p5, :cond_1

    sget-object p5, Lcom/alibaba/fastjson2/ab$b;->NotWriteNumberClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide p5, p5, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr p2, p5

    cmp-long p2, p2, v0

    if-nez p2, :cond_1

    const-class p2, Ljava/lang/Short;

    if-eq p4, p2, :cond_1

    sget-object p2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p4, p2, :cond_1

    const/16 p2, 0x53

    .line 35
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->c(C)V

    :cond_1
    return-void
.end method
