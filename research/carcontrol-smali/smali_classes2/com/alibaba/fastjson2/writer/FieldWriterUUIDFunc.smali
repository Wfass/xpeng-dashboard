.class final Lcom/alibaba/fastjson2/writer/FieldWriterUUIDFunc;
.super Lcom/alibaba/fastjson2/writer/FieldWriterObjectFinal;
.source "FieldWriterUUIDFunc.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/writer/FieldWriterObjectFinal<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final function:Ljava/util/function/Function;


# direct methods
.method constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V
    .locals 0

    .line 27
    invoke-direct/range {p0 .. p10}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFinal;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 28
    iput-object p11, p0, Lcom/alibaba/fastjson2/writer/FieldWriterUUIDFunc;->function:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterUUIDFunc;->function:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getFunction()Ljava/util/function/Function;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterUUIDFunc;->function:Ljava/util/function/Function;

    return-object v0
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "TT;)Z"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterUUIDFunc;->function:Ljava/util/function/Function;

    invoke-interface {v0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/util/UUID;

    const/4 p2, 0x1

    if-nez v2, :cond_1

    .line 40
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterUUIDFunc;->features:J

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 41
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriterUUIDFunc;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 43
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 50
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriterUUIDFunc;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 52
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterUUIDFunc;->objectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    if-nez v0, :cond_2

    .line 53
    const-class v0, Ljava/util/UUID;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/writer/FieldWriterUUIDFunc;->getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterUUIDFunc;->objectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterUUIDFunc;->objectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplUUID;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplUUID;

    if-eq v0, v1, :cond_3

    .line 57
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterUUIDFunc;->objectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriterUUIDFunc;->fieldName:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/fastjson2/writer/FieldWriterUUIDFunc;->fieldClass:Ljava/lang/Class;

    iget-wide v5, p0, Lcom/alibaba/fastjson2/writer/FieldWriterUUIDFunc;->features:J

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeUUID(Ljava/util/UUID;)V

    :goto_0
    return p2
.end method
