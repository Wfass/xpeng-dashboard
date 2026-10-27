.class Lcom/alibaba/fastjson2/reader/FieldReaderStringField;
.super Lcom/alibaba/fastjson2/reader/FieldReaderObjectField;
.source "FieldReaderStringField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/reader/FieldReaderObjectField<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final trim:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson2/schema/JSONSchema;Ljava/lang/reflect/Field;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 15
    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/FieldReaderObjectField;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson2/schema/JSONSchema;Ljava/lang/reflect/Field;)V

    const-string/jumbo v0, "trim"

    move-object/from16 v1, p6

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->TrimString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move-object v1, p0

    iput-boolean v0, v1, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;->trim:Z

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 63
    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 66
    :cond_0
    check-cast p2, Ljava/lang/String;

    .line 69
    :goto_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;->trim:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 70
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson2/schema/JSONSchema;->assertValidate(Ljava/lang/Object;)V

    .line 77
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;->fieldOffset:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/String;
    .locals 1

    .line 49
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 50
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;->trim:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "TT;)V"
        }
    .end annotation

    .line 21
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 22
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;->trim:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->assertValidate(Ljava/lang/Object;)V

    .line 30
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;->fieldOffset:J

    invoke-virtual {v0, p2, v1, v2, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public readFieldValueJSONB(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "TT;)V"
        }
    .end annotation

    .line 35
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 36
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;->trim:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->assertValidate(Ljava/lang/Object;)V

    .line 44
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public supportAcceptType(Ljava/lang/Class;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
