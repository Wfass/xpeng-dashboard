.class final Lahf;
.super Lahp;
.source "ObjectWriterImplOptionalDouble.java"


# static fields
.field static final a:Lahf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lahf;

    invoke-direct {v0}, Lahf;-><init>()V

    sput-object v0, Lahf;->a:Lahf;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lahp;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 15
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 19
    :cond_0
    check-cast p2, Ljava/util/OptionalDouble;

    .line 20
    invoke-virtual {p2}, Ljava/util/OptionalDouble;->isPresent()Z

    move-result p3

    if-nez p3, :cond_1

    .line 21
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 25
    :cond_1
    invoke-virtual {p2}, Ljava/util/OptionalDouble;->getAsDouble()D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/ab;->a(D)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 31
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 35
    :cond_0
    check-cast p2, Ljava/util/OptionalDouble;

    .line 36
    invoke-virtual {p2}, Ljava/util/OptionalDouble;->isPresent()Z

    move-result p3

    if-nez p3, :cond_1

    .line 37
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 41
    :cond_1
    invoke-virtual {p2}, Ljava/util/OptionalDouble;->getAsDouble()D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/ab;->a(D)V

    return-void
.end method
