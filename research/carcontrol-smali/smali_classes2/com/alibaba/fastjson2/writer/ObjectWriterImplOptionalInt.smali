.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplOptionalInt;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "ObjectWriterImplOptionalInt.java"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplOptionalInt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplOptionalInt;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplOptionalInt;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplOptionalInt;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplOptionalInt;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 31
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 35
    :cond_0
    check-cast p2, Ljava/util/OptionalInt;

    .line 36
    invoke-virtual {p2}, Ljava/util/OptionalInt;->isPresent()Z

    move-result p3

    if-nez p3, :cond_1

    .line 37
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 41
    :cond_1
    invoke-virtual {p2}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 15
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 19
    :cond_0
    check-cast p2, Ljava/util/OptionalInt;

    .line 20
    invoke-virtual {p2}, Ljava/util/OptionalInt;->isPresent()Z

    move-result p3

    if-nez p3, :cond_1

    .line 21
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 25
    :cond_1
    invoke-virtual {p2}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    return-void
.end method
