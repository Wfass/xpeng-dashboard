.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "ObjectWriterImplEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum<",
        "TE;>;>",
        "Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;"
    }
.end annotation


# instance fields
.field final annotationNames:[Ljava/lang/String;

.field final defineClass:Ljava/lang/Class;

.field final enumConstants:[Ljava/lang/Enum;

.field final enumType:Ljava/lang/Class;

.field final features:J

.field final hashCodes:[J

.field jsonbNames:[[B

.field final names:[Ljava/lang/String;

.field typeNameHash:J

.field typeNameJSONB:[B

.field final valueField:Ljava/lang/reflect/Member;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Member;[Ljava/lang/String;J)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->defineClass:Ljava/lang/Class;

    .line 37
    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->enumType:Ljava/lang/Class;

    .line 38
    iput-wide p5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->features:J

    .line 39
    iput-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->valueField:Ljava/lang/reflect/Member;

    .line 41
    instance-of p1, p3, Ljava/lang/reflect/AccessibleObject;

    if-eqz p1, :cond_0

    .line 43
    :try_start_0
    check-cast p3, Ljava/lang/reflect/AccessibleObject;

    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :catchall_0
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Enum;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->enumConstants:[Ljava/lang/Enum;

    .line 50
    array-length p2, p1

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->names:[Ljava/lang/String;

    .line 51
    array-length p1, p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->hashCodes:[J

    const/4 p1, 0x0

    .line 52
    :goto_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->enumConstants:[Ljava/lang/Enum;

    array-length p3, p2

    if-ge p1, p3, :cond_1

    .line 53
    aget-object p2, p2, p1

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    .line 54
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->names:[Ljava/lang/String;

    aput-object p2, p3, p1

    .line 55
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->hashCodes:[J

    invoke-static {p2}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide p5

    aput-wide p5, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 57
    :cond_1
    iput-object p4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->annotationNames:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 93
    move-object p3, p2

    check-cast p3, Ljava/lang/Enum;

    if-nez p3, :cond_0

    .line 95
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 99
    :cond_0
    iget-object p4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->valueField:Ljava/lang/reflect/Member;

    if-eqz p4, :cond_2

    .line 102
    :try_start_0
    instance-of p5, p4, Ljava/lang/reflect/Field;

    if-eqz p5, :cond_1

    .line 103
    check-cast p4, Ljava/lang/reflect/Field;

    invoke-virtual {p4, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    goto :goto_0

    .line 105
    :cond_1
    check-cast p4, Ljava/lang/reflect/Method;

    const/4 p5, 0x0

    new-array p5, p5, [Ljava/lang/Object;

    invoke-virtual {p4, p2, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    :goto_0
    if-eq p4, p2, :cond_2

    .line 108
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/JSONWriter;->writeAny(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 112
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    const-string p3, "getEnumValue error"

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 116
    :cond_2
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumUsingToString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->isEnabled(Lcom/alibaba/fastjson2/JSONWriter$Feature;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 117
    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 p2, 0x0

    .line 122
    iget-object p4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->annotationNames:[Ljava/lang/String;

    if-eqz p4, :cond_4

    .line 123
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    .line 124
    iget-object p5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->annotationNames:[Ljava/lang/String;

    array-length p6, p5

    if-ge p4, p6, :cond_4

    .line 125
    aget-object p2, p5, p4

    :cond_4
    if-nez p2, :cond_5

    .line 129
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    .line 131
    :cond_5
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 62
    invoke-virtual {p1, p2, p4, p5, p6}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;J)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 63
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->typeNameJSONB:[B

    if-nez p3, :cond_0

    .line 64
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->enumType:Ljava/lang/Class;

    invoke-static {p3}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    .line 66
    invoke-static {p3}, Lcom/alibaba/fastjson2/JSONB;->toBytes(Ljava/lang/String;)[B

    move-result-object p4

    iput-object p4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->typeNameJSONB:[B

    .line 68
    invoke-static {p3}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide p3

    iput-wide p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->typeNameHash:J

    .line 70
    :cond_0
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->typeNameJSONB:[B

    iget-wide p4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->typeNameHash:J

    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    .line 73
    :cond_1
    check-cast p2, Ljava/lang/Enum;

    .line 74
    sget-object p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumUsingToString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->isEnabled(Lcom/alibaba/fastjson2/JSONWriter$Feature;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 75
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_2
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->jsonbNames:[[B

    if-nez p3, :cond_3

    .line 78
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->names:[Ljava/lang/String;

    array-length p3, p3

    new-array p3, p3, [[B

    iput-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->jsonbNames:[[B

    .line 81
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    .line 82
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->jsonbNames:[[B

    aget-object p3, p3, p2

    if-nez p3, :cond_4

    .line 84
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->names:[Ljava/lang/String;

    aget-object p3, p3, p2

    invoke-static {p3}, Lcom/alibaba/fastjson2/JSONB;->toBytes(Ljava/lang/String;)[B

    move-result-object p3

    .line 85
    iget-object p4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->jsonbNames:[[B

    aput-object p3, p4, p2

    .line 87
    :cond_4
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw([B)V

    :goto_0
    return-void
.end method
