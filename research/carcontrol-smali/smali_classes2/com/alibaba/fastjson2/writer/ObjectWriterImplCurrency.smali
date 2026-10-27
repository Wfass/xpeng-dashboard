.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "ObjectWriterImplCurrency.java"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;

.field static final INSTANCE_FOR_FIELD:Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;

.field static final JSONB_TYPE_HASH:J

.field static final JSONB_TYPE_NAME_BYTES:[B


# instance fields
.field final defineClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;

    .line 14
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;->INSTANCE_FOR_FIELD:Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;

    .line 16
    const-class v0, Ljava/util/Currency;

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONB;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;->JSONB_TYPE_NAME_BYTES:[B

    .line 17
    const-class v0, Ljava/util/Currency;

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;->JSONB_TYPE_HASH:J

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;->defineClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 1

    .line 42
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 47
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 51
    :cond_1
    check-cast p2, Ljava/util/Currency;

    .line 52
    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 28
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 32
    :cond_0
    check-cast p2, Ljava/util/Currency;

    .line 33
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;->defineClass:Ljava/lang/Class;

    if-nez p3, :cond_1

    .line 34
    sget-object p3, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;->JSONB_TYPE_NAME_BYTES:[B

    sget-wide p4, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;->JSONB_TYPE_HASH:J

    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    .line 37
    :cond_1
    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void
.end method
