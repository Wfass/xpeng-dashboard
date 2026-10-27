.class public Lcom/alibaba/fastjson2/reader/ObjectReader7;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;
.source "ObjectReader7.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

.field protected final fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

.field protected final fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

.field protected final fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

.field protected final fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

.field protected final fieldReader5:Lcom/alibaba/fastjson2/reader/FieldReader;

.field protected final fieldReader6:Lcom/alibaba/fastjson2/reader/FieldReader;

.field final hashCode0:J

.field final hashCode0LCase:J

.field final hashCode1:J

.field final hashCode1LCase:J

.field final hashCode2:J

.field final hashCode2LCase:J

.field final hashCode3:J

.field final hashCode3LCase:J

.field final hashCode4:J

.field final hashCode4LCase:J

.field final hashCode5:J

.field final hashCode5LCase:J

.field final hashCode6:J

.field final hashCode6LCase:J

.field protected objectReader0:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader1:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader2:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader3:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader4:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader5:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader6:Lcom/alibaba/fastjson2/reader/ObjectReader;


# direct methods
.method public varargs constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/alibaba/fastjson2/schema/JSONSchema;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/function/Function;",
            "[",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ")V"
        }
    .end annotation

    .line 63
    invoke-direct/range {p0 .. p9}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    const/4 p1, 0x0

    .line 65
    aget-object p1, p9, p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p2, 0x1

    .line 66
    aget-object p2, p9, p2

    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p3, 0x2

    .line 67
    aget-object p3, p9, p3

    iput-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p4, 0x3

    .line 68
    aget-object p4, p9, p4

    iput-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p5, 0x4

    .line 69
    aget-object p5, p9, p5

    iput-object p5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p6, 0x5

    .line 70
    aget-object p6, p9, p6

    iput-object p6, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->fieldReader5:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p7, 0x6

    .line 71
    aget-object p7, p9, p7

    iput-object p7, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->fieldReader6:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 73
    iget-wide p8, p1, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide p8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->hashCode0:J

    .line 74
    iget-wide p8, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide p8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->hashCode1:J

    .line 75
    iget-wide p8, p3, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide p8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->hashCode2:J

    .line 76
    iget-wide p8, p4, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide p8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->hashCode3:J

    .line 77
    iget-wide p8, p5, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide p8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->hashCode4:J

    .line 78
    iget-wide p8, p6, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide p8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->hashCode5:J

    .line 79
    iget-wide p8, p7, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide p8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->hashCode6:J

    .line 81
    iget-wide p8, p1, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->hashCode0LCase:J

    .line 82
    iget-wide p1, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->hashCode1LCase:J

    .line 83
    iget-wide p1, p3, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->hashCode2LCase:J

    .line 84
    iget-wide p1, p4, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->hashCode3LCase:J

    .line 85
    iget-wide p1, p5, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->hashCode4LCase:J

    .line 86
    iget-wide p1, p6, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->hashCode5LCase:J

    .line 87
    iget-wide p1, p7, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->hashCode6LCase:J

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/function/Supplier;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/function/Function;",
            "[",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 50
    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReader7;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-void
.end method


# virtual methods
.method public getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 2

    .line 92
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->hashCode0:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 93
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 96
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->hashCode1:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 97
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 100
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->hashCode2:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 101
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 104
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->hashCode3:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 105
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 108
    :cond_3
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->hashCode4:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 109
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 112
    :cond_4
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->hashCode5:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    .line 113
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->fieldReader5:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 116
    :cond_5
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->hashCode6:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_6

    .line 117
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->fieldReader6:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 2

    .line 125
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->hashCode0LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 126
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 129
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->hashCode1LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 130
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 133
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->hashCode2LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 134
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 137
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->hashCode3LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 138
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 141
    :cond_3
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->hashCode4LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 142
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 145
    :cond_4
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->hashCode5LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    .line 146
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->fieldReader5:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 149
    :cond_5
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->hashCode6LCase:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_6

    .line 150
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader7;->fieldReader6:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method
