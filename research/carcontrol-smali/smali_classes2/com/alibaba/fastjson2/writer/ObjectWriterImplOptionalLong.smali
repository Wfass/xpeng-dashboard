.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplOptionalLong;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "ObjectWriterImplOptionalLong.java"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplOptionalLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplOptionalLong;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplOptionalLong;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplOptionalLong;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplOptionalLong;

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
    check-cast p2, Ljava/util/OptionalLong;

    .line 36
    invoke-virtual {p2}, Ljava/util/OptionalLong;->isPresent()Z

    move-result p3

    if-nez p3, :cond_1

    .line 37
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 41
    :cond_1
    invoke-virtual {p2}, Ljava/util/OptionalLong;->getAsLong()J

    move-result-wide p2

    .line 42
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

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
    check-cast p2, Ljava/util/OptionalLong;

    .line 20
    invoke-virtual {p2}, Ljava/util/OptionalLong;->isPresent()Z

    move-result p3

    if-nez p3, :cond_1

    .line 21
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 25
    :cond_1
    invoke-virtual {p2}, Ljava/util/OptionalLong;->getAsLong()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    return-void
.end method
