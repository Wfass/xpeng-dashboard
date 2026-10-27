.class final Lcom/alibaba/fastjson2/reader/FieldReaderLocalDate;
.super Lcom/alibaba/fastjson2/reader/FieldReaderObject;
.source "FieldReaderLocalDate.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Lcom/alibaba/fastjson2/schema/JSONSchema;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/util/function/BiConsumer;)V
    .locals 0

    .line 29
    invoke-direct/range {p0 .. p13}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Lcom/alibaba/fastjson2/schema/JSONSchema;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/util/function/BiConsumer;)V

    .line 30
    invoke-static {p7, p8}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDate;->of(Ljava/lang/String;Ljava/util/Locale;)Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDate;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderLocalDate;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-void
.end method


# virtual methods
.method public getObjectReader(Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 0

    .line 40
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderLocalDate;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object p1
.end method

.method public getObjectReader(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 0

    .line 35
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderLocalDate;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object p1
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderLocalDate;->format:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderLocalDate;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    invoke-interface {v0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/time/LocalDate;

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate()Ljava/time/LocalDate;

    move-result-object p1

    .line 51
    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderLocalDate;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
