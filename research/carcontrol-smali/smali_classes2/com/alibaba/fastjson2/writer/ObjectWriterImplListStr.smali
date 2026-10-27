.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplListStr;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "ObjectWriterImplListStr.java"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplListStr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplListStr;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplListStr;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplListStr;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplListStr;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 20
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 24
    :cond_0
    check-cast p2, Ljava/util/List;

    .line 26
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    const/4 p3, 0x0

    .line 27
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_3

    if-eqz p3, :cond_1

    .line 29
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 32
    :cond_1
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    if-nez p4, :cond_2

    .line 34
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_1

    .line 37
    :cond_2
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 39
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 1

    if-nez p2, :cond_0

    .line 45
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return-void

    :cond_0
    const/4 p3, 0x0

    .line 50
    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils;->PARAM_TYPE_LIST_STR:Ljava/lang/reflect/ParameterizedType;

    if-ne p4, v0, :cond_1

    .line 51
    const-class p3, Ljava/util/List;

    goto :goto_0

    .line 52
    :cond_1
    instance-of v0, p4, Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 53
    move-object p3, p4

    check-cast p3, Ljava/lang/Class;

    goto :goto_0

    .line 54
    :cond_2
    instance-of v0, p4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_3

    .line 55
    check-cast p4, Ljava/lang/reflect/ParameterizedType;

    .line 56
    invoke-interface {p4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p4

    .line 57
    instance-of v0, p4, Ljava/lang/Class;

    if-eqz v0, :cond_3

    .line 58
    move-object p3, p4

    check-cast p3, Ljava/lang/Class;

    .line 62
    :cond_3
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    .line 63
    const-class v0, Ljava/util/ArrayList;

    if-eq p4, v0, :cond_5

    invoke-virtual {p1, p2, p3, p5, p6}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/Class;J)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 66
    sget-object p3, Lcom/alibaba/fastjson2/writer/ObjectWriterImplList;->CLASS_SUBLIST:Ljava/lang/Class;

    if-ne p4, p3, :cond_4

    const-class p4, Ljava/util/ArrayList;

    .line 65
    :cond_4
    invoke-static {p4}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    .line 64
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName(Ljava/lang/String;)V

    .line 71
    :cond_5
    check-cast p2, Ljava/util/List;

    .line 72
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/util/List;)V

    return-void
.end method
