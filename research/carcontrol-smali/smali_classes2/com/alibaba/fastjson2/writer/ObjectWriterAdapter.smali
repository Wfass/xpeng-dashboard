.class public Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;
.super Ljava/lang/Object;
.source "ObjectWriterAdapter.java"

# interfaces
.implements Lcom/alibaba/fastjson2/writer/ObjectWriter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alibaba/fastjson2/writer/ObjectWriter<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final TYPE:Ljava/lang/String; = "@type"


# instance fields
.field final containsNoneFieldGetter:Z

.field final features:J

.field protected final fieldWriterArray:[Lcom/alibaba/fastjson2/writer/FieldWriter;

.field final fieldWriters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;",
            ">;"
        }
    .end annotation
.end field

.field final googleCollection:Z

.field hasFilter:Z

.field final hasValueField:Z

.field final hashCodes:[J

.field jsonbClassInfo:[B

.field final mapping:[S

.field nameFilter:Lcom/alibaba/fastjson2/filter/NameFilter;

.field nameWithColonUTF16:[C

.field nameWithColonUTF8:[B

.field final objectClass:Ljava/lang/Class;

.field propertyFilter:Lcom/alibaba/fastjson2/filter/PropertyFilter;

.field propertyPreFilter:Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

.field final serializable:Z

.field final typeKey:Ljava/lang/String;

.field typeKeyJSONB:[B

.field protected final typeName:Ljava/lang/String;

.field protected final typeNameHash:J

.field protected final typeNameJSONB:[B

.field protected typeNameSymbolCache:J

.field valueFilter:Lcom/alibaba/fastjson2/filter/ValueFilter;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p3, :cond_1

    if-eqz p1, :cond_1

    .line 66
    const-class p3, Ljava/lang/Enum;

    invoke-virtual {p3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result p3

    if-nez p3, :cond_0

    .line 67
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 69
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    .line 73
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->objectClass:Ljava/lang/Class;

    if-eqz p2, :cond_2

    .line 74
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string p2, "@type"

    :cond_3
    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeKey:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    if-eqz p3, :cond_4

    .line 76
    invoke-static {p3}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_1

    :cond_4
    move-wide v2, v0

    :goto_1
    iput-wide v2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeNameHash:J

    .line 77
    invoke-static {p3}, Lcom/alibaba/fastjson2/JSONB;->toBytes(Ljava/lang/String;)[B

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeNameJSONB:[B

    .line 78
    iput-wide p4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->features:J

    .line 79
    iput-object p6, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriters:Ljava/util/List;

    const/4 p2, 0x0

    const/4 p4, 0x1

    if-eqz p1, :cond_6

    .line 80
    const-class p5, Ljava/io/Serializable;

    invoke-virtual {p5, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move p1, p2

    goto :goto_3

    :cond_6
    :goto_2
    move p1, p4

    :goto_3
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->serializable:Z

    const-string p1, "com.google.common.collect.AbstractMapBasedMultimap$RandomAccessWrappedList"

    .line 82
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "com.google.common.collect.AbstractMapBasedMultimap$WrappedSet"

    .line 83
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    move p1, p2

    goto :goto_5

    :cond_8
    :goto_4
    move p1, p4

    :goto_5
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->googleCollection:Z

    .line 85
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/alibaba/fastjson2/writer/FieldWriter;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriterArray:[Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 86
    invoke-interface {p6, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 88
    array-length p3, p1

    if-ne p3, p4, :cond_9

    aget-object p3, p1, p2

    iget-wide p5, p3, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    const-wide/high16 v2, 0x1000000000000L

    and-long/2addr p5, v2

    cmp-long p3, p5, v0

    if-eqz p3, :cond_9

    move p3, p4

    goto :goto_6

    :cond_9
    move p3, p2

    :goto_6
    iput-boolean p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->hasValueField:Z

    .line 91
    array-length p1, p1

    new-array p3, p1, [J

    move p5, p2

    move p6, p5

    .line 92
    :goto_7
    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriterArray:[Lcom/alibaba/fastjson2/writer/FieldWriter;

    array-length v3, v2

    if-ge p5, v3, :cond_b

    .line 93
    aget-object v2, v2, p5

    .line 94
    iget-object v3, v2, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v3

    .line 95
    aput-wide v3, p3, p5

    .line 97
    iget-object v3, v2, Lcom/alibaba/fastjson2/writer/FieldWriter;->method:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_a

    iget-wide v2, v2, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    const-wide/high16 v4, 0x10000000000000L

    and-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-nez v2, :cond_a

    move p6, p4

    :cond_a
    add-int/lit8 p5, p5, 0x1

    goto :goto_7

    .line 101
    :cond_b
    iput-boolean p6, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->containsNoneFieldGetter:Z

    .line 103
    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p4

    iput-object p4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->hashCodes:[J

    .line 104
    invoke-static {p4}, Ljava/util/Arrays;->sort([J)V

    .line 106
    array-length p4, p4

    new-array p4, p4, [S

    iput-object p4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->mapping:[S

    :goto_8
    if-ge p2, p1, :cond_c

    .line 108
    aget-wide p4, p3, p2

    .line 109
    iget-object p6, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->hashCodes:[J

    invoke-static {p6, p4, p5}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p4

    .line 110
    iget-object p5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->mapping:[S

    int-to-short p6, p2

    aput-short p6, p5, p4

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_c
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    .line 55
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-void
.end method

.method private writeClassInfoSymbol(Lcom/alibaba/fastjson2/JSONWriter;Lcom/alibaba/fastjson2/SymbolTable;)Z
    .locals 6

    .line 222
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 225
    iget-wide v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeNameSymbolCache:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const/16 v4, 0x20

    const/4 v5, -0x1

    if-nez v3, :cond_0

    .line 226
    iget-wide v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeNameHash:J

    invoke-virtual {p2, v1, v2}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    move-result p2

    if-eq p2, v5, :cond_2

    int-to-long v1, p2

    shl-long/2addr v1, v4

    int-to-long v3, v0

    or-long v0, v1, v3

    .line 228
    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeNameSymbolCache:J

    goto :goto_0

    :cond_0
    long-to-int v3, v1

    if-ne v3, v0, :cond_1

    shr-long v0, v1, v4

    long-to-int p2, v0

    goto :goto_0

    .line 235
    :cond_1
    iget-wide v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeNameHash:J

    invoke-virtual {p2, v1, v2}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    move-result p2

    if-eq p2, v5, :cond_2

    int-to-long v1, p2

    shl-long/2addr v1, v4

    int-to-long v3, v0

    or-long v0, v1, v3

    .line 237
    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeNameSymbolCache:J

    :cond_2
    :goto_0
    if-eq p2, v5, :cond_3

    const/16 v0, -0x6e

    .line 243
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(B)V

    neg-int p2, p2

    .line 244
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected errorOnNoneSerializable()V
    .locals 3

    .line 673
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support none serializable class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->objectClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFeatures()J
    .locals 2

    .line 116
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->features:J

    return-wide v0
.end method

.method public getFieldWriter(J)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->hashCodes:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 126
    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->mapping:[S

    aget-short p1, p2, p1

    .line 127
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriterArray:[Lcom/alibaba/fastjson2/writer/FieldWriter;

    aget-object p1, p2, p1

    return-object p1
.end method

.method public getFieldWriters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;",
            ">;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriters:Ljava/util/List;

    return-object v0
.end method

.method public final hasFilter(Lcom/alibaba/fastjson2/JSONWriter;)Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->hasFilter:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->containsNoneFieldGetter:Z

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->hasFilter(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public setNameFilter(Lcom/alibaba/fastjson2/filter/NameFilter;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->nameFilter:Lcom/alibaba/fastjson2/filter/NameFilter;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 152
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->hasFilter:Z

    :cond_0
    return-void
.end method

.method public setPropertyFilter(Lcom/alibaba/fastjson2/filter/PropertyFilter;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->propertyFilter:Lcom/alibaba/fastjson2/filter/PropertyFilter;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 138
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->hasFilter:Z

    :cond_0
    return-void
.end method

.method public setPropertyPreFilter(Lcom/alibaba/fastjson2/filter/PropertyPreFilter;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->propertyPreFilter:Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 159
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->hasFilter:Z

    :cond_0
    return-void
.end method

.method public setValueFilter(Lcom/alibaba/fastjson2/filter/ValueFilter;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->valueFilter:Lcom/alibaba/fastjson2/filter/ValueFilter;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 145
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->hasFilter:Z

    :cond_0
    return-void
.end method

.method public toJSONObject(Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/alibaba/fastjson2/JSONObject;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 602
    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->toJSONObject(Ljava/lang/Object;J)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public toJSONObject(Ljava/lang/Object;J)Lcom/alibaba/fastjson2/JSONObject;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)",
            "Lcom/alibaba/fastjson2/JSONObject;"
        }
    .end annotation

    .line 606
    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    .line 608
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_b

    .line 609
    iget-object v4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriters:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 610
    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 611
    iget-object v6, v4, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    .line 612
    iget-object v7, v4, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    if-eqz v6, :cond_2

    .line 614
    const-class v8, Ljava/util/Date;

    if-ne v7, v8, :cond_0

    .line 615
    check-cast v5, Ljava/util/Date;

    invoke-static {v5, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 616
    :cond_0
    const-class v8, Ljava/time/LocalDate;

    if-ne v7, v8, :cond_1

    .line 617
    check-cast v5, Ljava/time/LocalDate;

    invoke-static {v5, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->format(Ljava/time/LocalDate;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 618
    :cond_1
    const-class v8, Ljava/time/LocalDateTime;

    if-ne v7, v8, :cond_2

    .line 619
    check-cast v5, Ljava/time/LocalDateTime;

    invoke-static {v5, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->format(Ljava/time/LocalDateTime;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 623
    :cond_2
    :goto_1
    iget-wide v8, v4, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    const-wide/high16 v10, 0x2000000000000L

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_5

    .line 625
    instance-of v6, v5, Ljava/util/Map;

    if-eqz v6, :cond_3

    .line 626
    check-cast v5, Ljava/util/Map;

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson2/JSONObject;->putAll(Ljava/util/Map;)V

    goto/16 :goto_4

    .line 630
    :cond_3
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getInitWriter()Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v4

    if-nez v4, :cond_4

    .line 632
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectWriterProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v4

    .line 634
    :cond_4
    invoke-interface {v4}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriters()Ljava/util/List;

    move-result-object v4

    .line 635
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    move v7, v2

    :goto_2
    if-ge v7, v6, :cond_a

    .line 636
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 637
    invoke-virtual {v8, v5}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 638
    iget-object v8, v8, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    if-eqz v5, :cond_8

    .line 644
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 645
    const-class v8, Ljava/util/Collection;

    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "java.util.ImmutableCollections$"

    .line 646
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "java.util.Collections$"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 648
    :cond_6
    check-cast v5, Ljava/util/Collection;

    .line 649
    new-instance v6, Lcom/alibaba/fastjson2/JSONArray;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    .line 650
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 651
    invoke-static {v7}, Lcom/alibaba/fastjson2/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    move-object v5, v6

    :cond_8
    if-nez v5, :cond_9

    .line 657
    iget-wide v6, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->features:J

    or-long/2addr v6, p2

    sget-object v8, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v8, v8, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v6, v8

    cmp-long v6, v6, v10

    if-nez v6, :cond_9

    goto :goto_4

    .line 661
    :cond_9
    iget-object v4, v4, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_b
    return-object v0
.end method

.method public toMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 316
    new-instance v1, Lcom/alibaba/fastjson2/JSONObject;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v0, v2}, Lcom/alibaba/fastjson2/JSONObject;-><init>(IF)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 318
    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriters:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 319
    iget-object v4, v3, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 321
    invoke-virtual {v3, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 319
    invoke-virtual {v1, v4, v3}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->objectClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 14

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v1, p2

    move-wide/from16 v6, p5

    .line 252
    iget-boolean v3, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->hasValueField:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 253
    iget-object v3, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriterArray:[Lcom/alibaba/fastjson2/writer/FieldWriter;

    aget-object v3, v3, v4

    .line 254
    invoke-virtual {v3, p1, v1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    return-void

    .line 258
    :cond_0
    iget-wide v8, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->features:J

    or-long/2addr v8, v6

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    move-result-wide v10

    or-long/2addr v8, v10

    .line 259
    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v10, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v10, v8

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    .line 261
    :goto_0
    iget-boolean v5, v2, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz v5, :cond_3

    if-eqz v3, :cond_2

    .line 263
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 267
    :cond_2
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 271
    :cond_3
    iget-boolean v5, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->googleCollection:Z

    if-eqz v5, :cond_4

    .line 272
    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    .line 273
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    :cond_4
    if-eqz v3, :cond_5

    .line 278
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeArrayMapping(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 282
    :cond_5
    iget-boolean v3, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->serializable:Z

    if-nez v3, :cond_7

    .line 283
    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v10, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v10, v8

    cmp-long v3, v10, v12

    if-eqz v3, :cond_6

    .line 284
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->errorOnNoneSerializable()V

    return-void

    .line 288
    :cond_6
    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v10, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v8, v10

    cmp-long v3, v8, v12

    if-eqz v3, :cond_7

    .line 289
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 294
    :cond_7
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->hasFilter(Lcom/alibaba/fastjson2/JSONWriter;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 295
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeWithFilter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 299
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    .line 301
    iget-wide v8, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->features:J

    or-long/2addr v8, v6

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v10, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v8, v10

    cmp-long v3, v8, v12

    if-nez v3, :cond_9

    invoke-virtual {p1, v1, v6, v7}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;J)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 302
    :cond_9
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeTypeInfo(Lcom/alibaba/fastjson2/JSONWriter;)Z

    .line 305
    :cond_a
    iget-object v3, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    if-ge v4, v3, :cond_b

    .line 307
    iget-object v5, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriters:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 308
    invoke-virtual {v5, p1, v1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 311
    :cond_b
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    return-void
.end method

.method public writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 165
    invoke-virtual {p1, p2, p4, p5, p6}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;J)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 166
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeClassInfo(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 169
    :cond_0
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriters:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    .line 170
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_1

    .line 172
    iget-object p5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriters:Ljava/util/List;

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 173
    invoke-virtual {p5, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final writeClassInfo(Lcom/alibaba/fastjson2/JSONWriter;)V
    .locals 3

    .line 211
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    if-eqz v0, :cond_0

    .line 213
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeClassInfoSymbol(Lcom/alibaba/fastjson2/JSONWriter;Lcom/alibaba/fastjson2/SymbolTable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeNameJSONB:[B

    iget-wide v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeNameHash:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 7

    .line 179
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->features:J

    or-long/2addr v0, p5

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 181
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->serializable:Z

    const-wide/16 v3, 0x0

    if-nez v2, :cond_1

    .line 182
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v5, v0

    cmp-long v2, v5, v3

    if-eqz v2, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->errorOnNoneSerializable()V

    return-void

    .line 187
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v5, v0

    cmp-long v2, v5, v3

    if-eqz v2, :cond_1

    .line 188
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 193
    :cond_1
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v5

    cmp-long v0, v0, v3

    if-eqz v0, :cond_2

    .line 194
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeWithFilter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 198
    :cond_2
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriterArray:[Lcom/alibaba/fastjson2/writer/FieldWriter;

    array-length p3, p3

    .line 199
    invoke-virtual {p1, p2, p4, p5, p6}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;J)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 200
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeClassInfo(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 202
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_4

    .line 204
    iget-object p5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriters:Ljava/util/List;

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 205
    invoke-virtual {p5, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 207
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    return-void
.end method

.method public writeTypeInfo(Lcom/alibaba/fastjson2/JSONWriter;)Z
    .locals 7

    .line 336
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->utf8:Z

    const/16 v1, 0x3a

    const/4 v2, 0x0

    const/16 v3, 0x22

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->nameWithColonUTF8:[B

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x5

    new-array v0, v0, [B

    .line 339
    aput-byte v3, v0, v2

    .line 340
    iget-object v5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeKey:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v2, v6, v0, v4}, Ljava/lang/String;->getBytes(II[BI)V

    .line 341
    iget-object v5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeKey:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    aput-byte v3, v0, v5

    .line 342
    iget-object v5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeKey:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    aput-byte v1, v0, v5

    .line 343
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    aput-byte v3, v0, v1

    .line 344
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeKey:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    invoke-virtual {v1, v2, v5, v0, v6}, Ljava/lang/String;->getBytes(II[BI)V

    .line 345
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    aput-byte v3, v0, v1

    .line 347
    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->nameWithColonUTF8:[B

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->nameWithColonUTF8:[B

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([B)V

    return v4

    .line 351
    :cond_1
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->utf16:Z

    if-eqz v0, :cond_3

    .line 352
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->nameWithColonUTF16:[C

    if-nez v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x5

    new-array v0, v0, [C

    .line 354
    aput-char v3, v0, v2

    .line 355
    iget-object v5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeKey:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v2, v6, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 356
    iget-object v5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeKey:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    aput-char v3, v0, v5

    .line 357
    iget-object v5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeKey:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    aput-char v1, v0, v5

    .line 358
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    aput-char v3, v0, v1

    .line 359
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeKey:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    invoke-virtual {v1, v2, v5, v0, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 360
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    aput-char v3, v0, v1

    .line 362
    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->nameWithColonUTF16:[C

    .line 364
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->nameWithColonUTF16:[C

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([C)V

    return v4

    .line 366
    :cond_3
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz v0, :cond_5

    .line 367
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeKeyJSONB:[B

    if-nez v0, :cond_4

    .line 368
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONB;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeKeyJSONB:[B

    .line 370
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeKeyJSONB:[B

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw([B)V

    .line 371
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeNameJSONB:[B

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw([B)V

    return v4

    .line 375
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    .line 377
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return v4
.end method

.method public writeWithFilter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 44

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-wide/from16 v11, p5

    if-nez v10, :cond_0

    .line 384
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    :cond_0
    move-object/from16 v13, p4

    .line 388
    invoke-virtual {v9, v10, v13, v11, v12}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 389
    iget-boolean v0, v9, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz v0, :cond_1

    .line 390
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeClassInfo(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 391
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    goto :goto_0

    .line 393
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    .line 394
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeTypeInfo(Lcom/alibaba/fastjson2/JSONWriter;)Z

    goto :goto_0

    .line 397
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    .line 400
    :goto_0
    iget-object v14, v9, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 401
    invoke-virtual {v14}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getFeatures()J

    move-result-wide v2

    or-long/2addr v2, v11

    .line 402
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v4, v2

    const-wide/16 v15, 0x0

    cmp-long v0, v4, v15

    const/16 v17, 0x1

    const/16 v18, 0x0

    if-eqz v0, :cond_3

    move/from16 v19, v17

    goto :goto_1

    :cond_3
    move/from16 v19, v18

    .line 403
    :goto_1
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreNonFieldGetter:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v4

    cmp-long v0, v2, v15

    if-eqz v0, :cond_4

    move/from16 v20, v17

    goto :goto_2

    :cond_4
    move/from16 v20, v18

    .line 405
    :goto_2
    invoke-virtual {v14}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getBeforeFilter()Lcom/alibaba/fastjson2/filter/BeforeFilter;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 407
    invoke-virtual {v0, v9, v10}, Lcom/alibaba/fastjson2/filter/BeforeFilter;->writeBefore(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    .line 410
    :cond_5
    invoke-virtual {v14}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getPropertyPreFilter()Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

    move-result-object v0

    if-nez v0, :cond_6

    .line 412
    iget-object v0, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->propertyPreFilter:Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

    :cond_6
    move-object v7, v0

    .line 415
    invoke-virtual {v14}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getNameFilter()Lcom/alibaba/fastjson2/filter/NameFilter;

    move-result-object v0

    if-nez v0, :cond_7

    .line 417
    iget-object v0, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->nameFilter:Lcom/alibaba/fastjson2/filter/NameFilter;

    goto :goto_3

    .line 419
    :cond_7
    iget-object v2, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->nameFilter:Lcom/alibaba/fastjson2/filter/NameFilter;

    if-eqz v2, :cond_8

    .line 420
    invoke-static {v2, v0}, Lcom/alibaba/fastjson2/filter/NameFilter;->compose(Lcom/alibaba/fastjson2/filter/NameFilter;Lcom/alibaba/fastjson2/filter/NameFilter;)Lcom/alibaba/fastjson2/filter/NameFilter;

    move-result-object v0

    :cond_8
    :goto_3
    move-object v8, v0

    .line 424
    invoke-virtual {v14}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getContextNameFilter()Lcom/alibaba/fastjson2/filter/ContextNameFilter;

    move-result-object v6

    .line 426
    invoke-virtual {v14}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getValueFilter()Lcom/alibaba/fastjson2/filter/ValueFilter;

    move-result-object v0

    if-nez v0, :cond_9

    .line 428
    iget-object v0, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->valueFilter:Lcom/alibaba/fastjson2/filter/ValueFilter;

    goto :goto_4

    .line 430
    :cond_9
    iget-object v2, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->valueFilter:Lcom/alibaba/fastjson2/filter/ValueFilter;

    if-eqz v2, :cond_a

    .line 431
    invoke-static {v2, v0}, Lcom/alibaba/fastjson2/filter/ValueFilter;->compose(Lcom/alibaba/fastjson2/filter/ValueFilter;Lcom/alibaba/fastjson2/filter/ValueFilter;)Lcom/alibaba/fastjson2/filter/ValueFilter;

    move-result-object v0

    :cond_a
    :goto_4
    move-object v5, v0

    .line 435
    invoke-virtual {v14}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getContextValueFilter()Lcom/alibaba/fastjson2/filter/ContextValueFilter;

    move-result-object v4

    .line 437
    invoke-virtual {v14}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getPropertyFilter()Lcom/alibaba/fastjson2/filter/PropertyFilter;

    move-result-object v0

    if-nez v0, :cond_b

    .line 439
    iget-object v0, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->propertyFilter:Lcom/alibaba/fastjson2/filter/PropertyFilter;

    :cond_b
    move-object v3, v0

    .line 442
    invoke-virtual {v14}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getLabelFilter()Lcom/alibaba/fastjson2/filter/LabelFilter;

    move-result-object v2

    move/from16 v15, v18

    .line 444
    :goto_5
    iget-object v0, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_22

    .line 445
    iget-object v0, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriters:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 446
    iget-object v11, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->field:Ljava/lang/reflect/Field;

    if-eqz v20, :cond_c

    .line 448
    iget-object v12, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->method:Ljava/lang/reflect/Method;

    if-eqz v12, :cond_c

    iget-wide v12, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    const-wide/high16 v23, 0x10000000000000L

    and-long v12, v12, v23

    const-wide/16 v21, 0x0

    cmp-long v12, v12, v21

    if-nez v12, :cond_c

    goto :goto_6

    .line 455
    :cond_c
    iget-object v12, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    if-eqz v7, :cond_d

    .line 457
    invoke-interface {v7, v9, v10, v12}, Lcom/alibaba/fastjson2/filter/PropertyPreFilter;->process(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_d

    :goto_6
    move-object v11, v2

    move-object v12, v3

    move-object/from16 v16, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    move-object/from16 v38, v14

    move/from16 v37, v15

    move-object v14, v4

    move-object v15, v5

    :goto_7
    const-wide/16 v5, 0x0

    move-object/from16 v43, v9

    move-object v9, v1

    move-object/from16 v1, v43

    goto/16 :goto_11

    :cond_d
    if-eqz v2, :cond_e

    .line 462
    iget-object v13, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->label:Ljava/lang/String;

    if-eqz v13, :cond_e

    .line 463
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_e

    .line 464
    invoke-interface {v2, v13}, Lcom/alibaba/fastjson2/filter/LabelFilter;->apply(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_e

    goto :goto_6

    :cond_e
    if-nez v8, :cond_f

    if-nez v3, :cond_f

    if-nez v4, :cond_f

    if-nez v6, :cond_f

    if-nez v5, :cond_f

    .line 477
    invoke-virtual {v0, v9, v10}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    goto :goto_6

    .line 483
    :cond_f
    :try_start_0
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v13, :cond_10

    .line 491
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteNulls()Z

    move-result v16

    if-nez v16, :cond_10

    goto :goto_6

    :cond_10
    move-object/from16 v16, v2

    if-nez v19, :cond_12

    const-string/jumbo v2, "this$0"

    .line 495
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string/jumbo v2, "this$1"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string/jumbo v2, "this$2"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_11
    move-object v12, v3

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    move-object/from16 v38, v14

    move/from16 v37, v15

    move-object/from16 v11, v16

    move-object v14, v4

    move-object v15, v5

    move-object/from16 v16, v6

    goto :goto_7

    :cond_12
    if-eqz v8, :cond_13

    .line 504
    invoke-interface {v8, v10, v12, v13}, Lcom/alibaba/fastjson2/filter/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v2, v23

    goto :goto_8

    :cond_13
    move-object v2, v12

    :goto_8
    if-eqz v6, :cond_15

    move-object/from16 v24, v7

    if-nez v11, :cond_14

    .line 509
    iget-object v7, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->method:Ljava/lang/reflect/Method;

    if-eqz v7, :cond_14

    .line 510
    iget-object v7, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->objectClass:Ljava/lang/Class;

    iget-object v11, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    invoke-static {v7, v11}, Lcom/alibaba/fastjson2/util/BeanUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 513
    :cond_14
    new-instance v7, Lcom/alibaba/fastjson2/filter/BeanContext;

    move-object/from16 v36, v8

    iget-object v8, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->objectClass:Ljava/lang/Class;

    move/from16 v37, v15

    iget-object v15, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->method:Ljava/lang/reflect/Method;

    move-object/from16 v38, v14

    iget-object v14, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    iget-object v9, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->label:Ljava/lang/String;

    iget-object v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    move-object/from16 v39, v4

    iget-object v4, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldType:Ljava/lang/reflect/Type;

    move-object/from16 v41, v2

    move-object/from16 v40, v3

    iget-wide v2, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    move-object/from16 v42, v5

    iget-object v5, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v15

    move-object/from16 v28, v11

    move-object/from16 v29, v14

    move-object/from16 v30, v9

    move-object/from16 v31, v1

    move-object/from16 v32, v4

    move-wide/from16 v33, v2

    move-object/from16 v35, v5

    invoke-direct/range {v25 .. v35}, Lcom/alibaba/fastjson2/filter/BeanContext;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;JLjava/lang/String;)V

    move-object/from16 v1, v41

    .line 524
    invoke-interface {v6, v7, v10, v1, v13}, Lcom/alibaba/fastjson2/filter/ContextNameFilter;->process(Lcom/alibaba/fastjson2/filter/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v23, v7

    goto :goto_9

    :cond_15
    move-object v1, v2

    move-object/from16 v40, v3

    move-object/from16 v39, v4

    move-object/from16 v42, v5

    move-object/from16 v24, v7

    move-object/from16 v36, v8

    move-object/from16 v38, v14

    move/from16 v37, v15

    move-object v2, v1

    const/16 v23, 0x0

    :goto_9
    move-object/from16 v1, v40

    if-eqz v40, :cond_16

    .line 530
    invoke-interface {v1, v10, v12, v13}, Lcom/alibaba/fastjson2/filter/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    move-object/from16 v9, p0

    move-object v12, v1

    move-object/from16 v11, v16

    move-object/from16 v23, v24

    move-object/from16 v24, v36

    move-object/from16 v14, v39

    move-object/from16 v15, v42

    move-object/from16 v1, p1

    move-object/from16 v16, v6

    :goto_a
    const-wide/16 v5, 0x0

    goto/16 :goto_11

    :cond_16
    if-eqz v2, :cond_17

    if-eq v2, v12, :cond_17

    move/from16 v3, v17

    goto :goto_b

    :cond_17
    move/from16 v3, v18

    :goto_b
    move-object/from16 v5, v42

    if-eqz v42, :cond_18

    .line 538
    invoke-interface {v5, v10, v12, v13}, Lcom/alibaba/fastjson2/filter/ValueFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_c

    :cond_18
    move-object v4, v13

    :goto_c
    if-eqz v39, :cond_1b

    if-nez v23, :cond_1a

    if-nez v11, :cond_19

    .line 542
    iget-object v7, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->method:Ljava/lang/reflect/Method;

    if-eqz v7, :cond_19

    move-object/from16 v9, p0

    .line 543
    iget-object v7, v9, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->objectClass:Ljava/lang/Class;

    iget-object v8, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/alibaba/fastjson2/util/BeanUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    goto :goto_d

    :cond_19
    move-object/from16 v9, p0

    :goto_d
    move-object/from16 v28, v11

    .line 546
    new-instance v23, Lcom/alibaba/fastjson2/filter/BeanContext;

    iget-object v7, v9, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->objectClass:Ljava/lang/Class;

    iget-object v8, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->method:Ljava/lang/reflect/Method;

    iget-object v11, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    iget-object v12, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->label:Ljava/lang/String;

    iget-object v14, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    iget-object v15, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldType:Ljava/lang/reflect/Type;

    move-object/from16 v42, v5

    move-object/from16 v40, v6

    iget-wide v5, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    move-object/from16 v41, v1

    iget-object v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    move-object/from16 v25, v23

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v29, v11

    move-object/from16 v30, v12

    move-object/from16 v31, v14

    move-object/from16 v32, v15

    move-wide/from16 v33, v5

    move-object/from16 v35, v1

    invoke-direct/range {v25 .. v35}, Lcom/alibaba/fastjson2/filter/BeanContext;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;JLjava/lang/String;)V

    goto :goto_e

    :cond_1a
    move-object/from16 v9, p0

    move-object/from16 v41, v1

    move-object/from16 v42, v5

    move-object/from16 v40, v6

    :goto_e
    move-object/from16 v1, v23

    move-object/from16 v5, v39

    .line 558
    invoke-interface {v5, v1, v10, v2, v4}, Lcom/alibaba/fastjson2/filter/ContextValueFilter;->process(Lcom/alibaba/fastjson2/filter/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    goto :goto_f

    :cond_1b
    move-object/from16 v9, p0

    move-object/from16 v41, v1

    move-object/from16 v42, v5

    move-object/from16 v40, v6

    move-object/from16 v5, v39

    :goto_f
    if-eq v4, v13, :cond_1e

    if-eqz v3, :cond_1c

    move-object/from16 v1, p1

    .line 563
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 564
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    goto :goto_10

    :cond_1c
    move-object/from16 v1, p1

    .line 566
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    :goto_10
    if-nez v4, :cond_1d

    .line 570
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    move-object v14, v5

    move-object/from16 v11, v16

    move-object/from16 v23, v24

    move-object/from16 v24, v36

    move-object/from16 v16, v40

    move-object/from16 v12, v41

    move-object/from16 v15, v42

    goto/16 :goto_a

    .line 572
    :cond_1d
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    move-object/from16 v11, v16

    move-object/from16 v12, v41

    move-object/from16 v3, p1

    move-object v14, v5

    move-object/from16 v15, v42

    move-object/from16 v5, p3

    move-object/from16 v16, v40

    move-object/from16 v6, p4

    move-object/from16 v23, v24

    move-object/from16 v24, v36

    move-wide/from16 v7, p5

    .line 573
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto/16 :goto_a

    :cond_1e
    move-object/from16 v1, p1

    move-object v14, v5

    move-object/from16 v11, v16

    move-object/from16 v23, v24

    move-object/from16 v24, v36

    move-object/from16 v16, v40

    move-object/from16 v12, v41

    move-object/from16 v15, v42

    if-nez v3, :cond_1f

    .line 577
    invoke-virtual {v0, v1, v10}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 579
    :cond_1f
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 580
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    if-nez v13, :cond_20

    .line 583
    iget-object v2, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    .line 584
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto/16 :goto_a

    .line 586
    :cond_20
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    move-object/from16 v3, p1

    move-object v4, v13

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    .line 587
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    move-object v11, v2

    move-object v12, v3

    move-object/from16 v16, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    move-object/from16 v38, v14

    move/from16 v37, v15

    move-object v14, v4

    move-object v15, v5

    move-object/from16 v43, v9

    move-object v9, v1

    move-object/from16 v1, v43

    move-object v2, v0

    .line 485
    invoke-virtual/range {v38 .. v38}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getFeatures()J

    move-result-wide v3

    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreErrorGetter:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_21

    :goto_11
    add-int/lit8 v0, v37, 0x1

    move-object/from16 v13, p4

    move-object v2, v11

    move-object v3, v12

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v23

    move-object/from16 v8, v24

    move-object/from16 v14, v38

    move-wide/from16 v11, p5

    move v15, v0

    move-object/from16 v43, v9

    move-object v9, v1

    move-object/from16 v1, v43

    goto/16 :goto_5

    .line 488
    :cond_21
    throw v2

    :cond_22
    move-object/from16 v38, v14

    move-object/from16 v43, v9

    move-object v9, v1

    move-object/from16 v1, v43

    .line 593
    invoke-virtual/range {v38 .. v38}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getAfterFilter()Lcom/alibaba/fastjson2/filter/AfterFilter;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 595
    invoke-virtual {v0, v1, v10}, Lcom/alibaba/fastjson2/filter/AfterFilter;->writeAfter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    .line 598
    :cond_23
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    return-void
.end method
