.class Lzi;
.super Lzw;
.source "ObjectReaderImplOptionalDouble.java"


# static fields
.field static final a:Lzi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lzi;

    invoke-direct {v0}, Lzi;-><init>()V

    sput-object v0, Lzi;->a:Lzi;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    const-class v0, Ljava/util/OptionalDouble;

    invoke-direct {p0, v0}, Lzw;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->af()Ljava/lang/Double;

    move-result-object p1

    if-nez p1, :cond_0

    .line 20
    invoke-static {}, Ljava/util/OptionalDouble;->empty()Ljava/util/OptionalDouble;

    move-result-object p1

    return-object p1

    .line 22
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/util/OptionalDouble;->of(D)Ljava/util/OptionalDouble;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->af()Ljava/lang/Double;

    move-result-object p1

    if-nez p1, :cond_0

    .line 29
    invoke-static {}, Ljava/util/OptionalDouble;->empty()Ljava/util/OptionalDouble;

    move-result-object p1

    return-object p1

    .line 31
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/util/OptionalDouble;->of(D)Ljava/util/OptionalDouble;

    move-result-object p1

    return-object p1
.end method
