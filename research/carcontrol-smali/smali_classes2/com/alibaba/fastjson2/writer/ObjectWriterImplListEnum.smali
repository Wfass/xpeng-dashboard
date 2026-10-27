.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplListEnum;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "ObjectWriterImplListEnum.java"


# instance fields
.field final defineClass:Ljava/lang/Class;

.field final enumType:Ljava/lang/Class;

.field final features:J

.field typeNameJSONB:[B


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;J)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplListEnum;->defineClass:Ljava/lang/Class;

    .line 19
    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplListEnum;->enumType:Ljava/lang/Class;

    .line 20
    iput-wide p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplListEnum;->features:J

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 68
    :cond_0
    check-cast p2, Ljava/util/List;

    .line 70
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    const/4 p3, 0x0

    .line 71
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_3

    if-eqz p3, :cond_1

    .line 73
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 76
    :cond_1
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    if-nez p4, :cond_2

    .line 78
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_1

    .line 81
    :cond_2
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 83
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 9

    if-nez p2, :cond_0

    .line 26
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 30
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    .line 31
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplListEnum;->defineClass:Ljava/lang/Class;

    if-eq p4, p3, :cond_1

    .line 32
    invoke-static {p3}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName(Ljava/lang/String;)V

    .line 35
    :cond_1
    check-cast p2, Ljava/util/List;

    .line 37
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    .line 38
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    .line 40
    sget-object p4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumUsingToString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/JSONWriter;->isEnabled(Lcom/alibaba/fastjson2/JSONWriter$Feature;)Z

    move-result p4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_4

    .line 42
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/Enum;

    .line 43
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 44
    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplListEnum;->enumType:Ljava/lang/Class;

    if-eq v1, v2, :cond_2

    .line 45
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    const/4 v5, 0x0

    .line 46
    iget-object v6, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplListEnum;->enumType:Ljava/lang/Class;

    iget-wide v7, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplListEnum;->features:J

    or-long/2addr v7, p5

    move-object v3, p1

    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_2

    :cond_2
    if-eqz p4, :cond_3

    .line 52
    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 54
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 56
    :goto_1
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    return-void
.end method
