.class final Lcom/alibaba/fastjson2/writer/FieldWriterBigIntField;
.super Lcom/alibaba/fastjson2/writer/FieldWriter;
.source "FieldWriterBigIntField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/writer/FieldWriter<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V
    .locals 11

    .line 18
    const-class v7, Ljava/math/BigInteger;

    const-class v8, Ljava/math/BigInteger;

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriter;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "TT;)Z"
        }
    .end annotation

    .line 23
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterBigIntField;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/math/BigInteger;

    if-nez p2, :cond_0

    .line 25
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBigIntField;->features:J

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 26
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 31
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriterBigIntField;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 32
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBigIntField;->features:J

    invoke-virtual {p1, p2, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeBigInt(Ljava/math/BigInteger;J)V

    const/4 p1, 0x1

    return p1
.end method

.method public writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "TT;)V"
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterBigIntField;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/math/BigInteger;

    .line 39
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBigIntField;->features:J

    invoke-virtual {p1, p2, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeBigInt(Ljava/math/BigInteger;J)V

    return-void
.end method
