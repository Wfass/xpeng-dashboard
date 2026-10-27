.class Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptionalDouble;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;
.source "ObjectReaderImplOptionalDouble.java"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptionalDouble;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptionalDouble;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptionalDouble;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptionalDouble;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptionalDouble;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    const-class v0, Ljava/util/OptionalDouble;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readDouble()Ljava/lang/Double;

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

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readDouble()Ljava/lang/Double;

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
