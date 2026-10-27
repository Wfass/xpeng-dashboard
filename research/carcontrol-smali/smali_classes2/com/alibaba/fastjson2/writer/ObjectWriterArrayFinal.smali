.class final Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "ObjectWriterArrayFinal.java"


# static fields
.field public static final DECIMAL_ARRAY:Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

.field public static final DOUBLE_ARRAY:Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

.field public static final FLOAT_ARRAY:Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;


# instance fields
.field public final format:Ljava/text/DecimalFormat;

.field final itemClass:Ljava/lang/Class;

.field volatile itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

.field public final refDetect:Z

.field final typeNameBytes:[B

.field final typeNameHash:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    const-class v1, Ljava/lang/Float;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->FLOAT_ARRAY:Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    .line 15
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    const-class v1, Ljava/lang/Double;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->DOUBLE_ARRAY:Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    .line 16
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    const-class v1, Ljava/math/BigDecimal;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->DECIMAL_ARRAY:Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->itemClass:Ljava/lang/Class;

    .line 27
    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->format:Ljava/text/DecimalFormat;

    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x5b

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 30
    invoke-static {p2}, Lcom/alibaba/fastjson2/JSONB;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->typeNameBytes:[B

    .line 31
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->typeNameHash:J

    .line 32
    invoke-static {p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isNotReferenceDetect(Ljava/lang/Class;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->refDetect:Z

    return-void
.end method


# virtual methods
.method public getItemObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    if-nez v0, :cond_6

    .line 38
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->itemClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_1

    .line 39
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->format:Ljava/text/DecimalFormat;

    if-eqz p1, :cond_0

    .line 40
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplFloat;

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->format:Ljava/text/DecimalFormat;

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplFloat;-><init>(Ljava/text/DecimalFormat;)V

    goto :goto_0

    .line 42
    :cond_0
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplFloat;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplFloat;

    :goto_0
    move-object v0, p1

    goto :goto_1

    .line 44
    :cond_1
    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_3

    .line 45
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->format:Ljava/text/DecimalFormat;

    if-eqz p1, :cond_2

    .line 46
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDouble;

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->format:Ljava/text/DecimalFormat;

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDouble;-><init>(Ljava/text/DecimalFormat;)V

    goto :goto_0

    .line 48
    :cond_2
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDouble;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplDouble;

    goto :goto_0

    .line 50
    :cond_3
    const-class v1, Ljava/math/BigDecimal;

    if-ne v0, v1, :cond_5

    .line 51
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->format:Ljava/text/DecimalFormat;

    if-eqz p1, :cond_4

    .line 52
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->format:Ljava/text/DecimalFormat;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;-><init>(Ljava/text/DecimalFormat;Ljava/util/function/Function;)V

    goto :goto_0

    .line 54
    :cond_4
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;

    goto :goto_0

    .line 57
    :cond_5
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    goto :goto_0

    .line 59
    :goto_1
    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    :cond_6
    return-object v0
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 8

    .line 66
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 72
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return-void

    .line 76
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 78
    iget-boolean p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->refDetect:Z

    .line 81
    :cond_2
    check-cast p2, [Ljava/lang/Object;

    .line 83
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    const/4 p4, 0x0

    .line 84
    :goto_0
    array-length v0, p2

    if-ge p4, v0, :cond_7

    if-eqz p4, :cond_3

    .line 86
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 89
    :cond_3
    aget-object v0, p2, p4

    if-nez v0, :cond_4

    .line 91
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_1

    .line 94
    :cond_4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->getItemObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v1

    if-eqz p3, :cond_5

    .line 96
    invoke-virtual {p1, p4, v0}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 98
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    goto :goto_1

    .line 104
    :cond_5
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->itemClass:Ljava/lang/Class;

    move-object v2, p1

    move-object v3, v0

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    if-eqz p3, :cond_6

    .line 107
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    :cond_6
    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 110
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 7

    if-nez p2, :cond_0

    .line 116
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return-void

    .line 120
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 122
    iget-boolean p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->refDetect:Z

    .line 125
    :cond_1
    move-object p5, p2

    check-cast p5, [Ljava/lang/Object;

    .line 127
    invoke-virtual {p1, p2, p4}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 128
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->typeNameBytes:[B

    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->typeNameHash:J

    invoke-virtual {p1, p2, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    .line 131
    :cond_2
    array-length p2, p5

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    const/4 p2, 0x0

    .line 132
    :goto_0
    array-length p4, p5

    if-ge p2, p4, :cond_6

    .line 133
    aget-object p4, p5, p2

    if-nez p4, :cond_3

    .line 135
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_1

    .line 139
    :cond_3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->getItemObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    if-eqz p3, :cond_4

    .line 142
    invoke-virtual {p1, p2, p4}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    if-eqz p6, :cond_4

    .line 144
    invoke-virtual {p1, p6}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    goto :goto_1

    .line 150
    :cond_4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->itemClass:Ljava/lang/Class;

    const-wide/16 v5, 0x0

    move-object v1, p1

    move-object v2, p4

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    if-eqz p3, :cond_5

    .line 153
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    :cond_5
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method
