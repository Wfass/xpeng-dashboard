.class final Lcom/alibaba/fastjson2/reader/FieldReaderStringArray;
.super Lcom/alibaba/fastjson2/reader/FieldReaderObject;
.source "FieldReaderStringArray.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Lcom/alibaba/fastjson2/schema/JSONSchema;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/util/function/BiConsumer;)V
    .locals 0

    .line 28
    invoke-direct/range {p0 .. p13}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Lcom/alibaba/fastjson2/schema/JSONSchema;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/util/function/BiConsumer;)V

    .line 29
    sget-object p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplStringArray;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplStringArray;

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringArray;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-void
.end method


# virtual methods
.method public getObjectReader(Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringArray;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object p1
.end method

.method public getObjectReader(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 0

    .line 34
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringArray;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object p1
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderStringArray;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
