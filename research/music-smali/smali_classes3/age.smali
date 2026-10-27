.class final Lage;
.super Lahp;
.source "ObjectWriterImplFloat.java"


# static fields
.field static final a:Lage;


# instance fields
.field private final b:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lage;-><init>(Ljava/text/DecimalFormat;)V

    sput-object v0, Lage;->a:Lage;

    return-void
.end method

.method public constructor <init>(Ljava/text/DecimalFormat;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lahp;-><init>()V

    .line 15
    iput-object p1, p0, Lage;->b:Ljava/text/DecimalFormat;

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
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(F)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 2

    if-nez p2, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 34
    :cond_0
    iget-object p3, p0, Lage;->b:Ljava/text/DecimalFormat;

    if-eqz p3, :cond_1

    .line 35
    invoke-virtual {p3, p2}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 36
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/String;)V

    return-void

    .line 40
    :cond_1
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(F)V

    .line 41
    invoke-virtual {p1, p5, p6}, Lcom/alibaba/fastjson2/ab;->c(J)J

    move-result-wide p2

    .line 42
    sget-object p5, Lcom/alibaba/fastjson2/ab$b;->WriteClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide p5, p5, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr p5, p2

    const-wide/16 v0, 0x0

    cmp-long p5, p5, v0

    if-eqz p5, :cond_2

    sget-object p5, Lcom/alibaba/fastjson2/ab$b;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson2/ab$b;

    iget-wide p5, p5, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr p5, p2

    cmp-long p5, p5, v0

    if-nez p5, :cond_2

    sget-object p5, Lcom/alibaba/fastjson2/ab$b;->NotWriteNumberClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide p5, p5, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr p2, p5

    cmp-long p2, p2, v0

    if-nez p2, :cond_2

    const-class p2, Ljava/lang/Float;

    if-eq p4, p2, :cond_2

    sget-object p2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p4, p2, :cond_2

    const/16 p2, 0x46

    .line 46
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->c(C)V

    :cond_2
    return-void
.end method
