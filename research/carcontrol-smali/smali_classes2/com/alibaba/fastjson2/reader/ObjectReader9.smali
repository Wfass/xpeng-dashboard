.class public Lcom/alibaba/fastjson2/reader/ObjectReader9;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;
.source "ObjectReader9.java"


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

.field protected final fieldReader7:Lcom/alibaba/fastjson2/reader/FieldReader;

.field protected final fieldReader8:Lcom/alibaba/fastjson2/reader/FieldReader;

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

.field final hashCode7:J

.field final hashCode7LCase:J

.field final hashCode8:J

.field final hashCode8LCase:J

.field protected objectReader0:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader1:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader2:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader3:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader4:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader5:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader6:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader7:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader8:Lcom/alibaba/fastjson2/reader/ObjectReader;


# direct methods
.method public varargs constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V
    .locals 2
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

    .line 72
    invoke-direct/range {p0 .. p9}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    const/4 p1, 0x0

    .line 74
    aget-object p1, p9, p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p2, 0x1

    .line 75
    aget-object p2, p9, p2

    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p3, 0x2

    .line 76
    aget-object p3, p9, p3

    iput-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p4, 0x3

    .line 77
    aget-object p4, p9, p4

    iput-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p5, 0x4

    .line 78
    aget-object p5, p9, p5

    iput-object p5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p6, 0x5

    .line 79
    aget-object p6, p9, p6

    iput-object p6, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader5:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p7, 0x6

    .line 80
    aget-object p7, p9, p7

    iput-object p7, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader6:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p8, 0x7

    .line 81
    aget-object p8, p9, p8

    iput-object p8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader7:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/16 v0, 0x8

    .line 82
    aget-object p9, p9, v0

    iput-object p9, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader8:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 84
    iget-wide v0, p1, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->hashCode0:J

    .line 85
    iget-wide v0, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->hashCode1:J

    .line 86
    iget-wide v0, p3, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->hashCode2:J

    .line 87
    iget-wide v0, p4, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->hashCode3:J

    .line 88
    iget-wide v0, p5, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->hashCode4:J

    .line 89
    iget-wide v0, p6, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->hashCode5:J

    .line 90
    iget-wide v0, p7, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->hashCode6:J

    .line 91
    iget-wide v0, p8, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->hashCode7:J

    .line 92
    iget-wide v0, p9, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->hashCode8:J

    .line 94
    iget-wide v0, p1, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->hashCode0LCase:J

    .line 95
    iget-wide p1, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->hashCode1LCase:J

    .line 96
    iget-wide p1, p3, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->hashCode2LCase:J

    .line 97
    iget-wide p1, p4, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->hashCode3LCase:J

    .line 98
    iget-wide p1, p5, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->hashCode4LCase:J

    .line 99
    iget-wide p1, p6, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->hashCode5LCase:J

    .line 100
    iget-wide p1, p7, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->hashCode6LCase:J

    .line 101
    iget-wide p1, p8, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->hashCode7LCase:J

    .line 102
    iget-wide p1, p9, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->hashCode8LCase:J

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

    .line 59
    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReader9;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-void
.end method


# virtual methods
.method public getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 2

    .line 107
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->hashCode0:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 108
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 111
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->hashCode1:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 112
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 115
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->hashCode2:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 116
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 119
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->hashCode3:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 120
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 123
    :cond_3
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->hashCode4:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 124
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 127
    :cond_4
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->hashCode5:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    .line 128
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader5:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 131
    :cond_5
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->hashCode6:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_6

    .line 132
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader6:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 135
    :cond_6
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->hashCode7:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 136
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader7:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 139
    :cond_7
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->hashCode8:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_8

    .line 140
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader8:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    :cond_8
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 2

    .line 148
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->hashCode0LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 149
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 152
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->hashCode1LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 153
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 156
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->hashCode2LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 157
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 160
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->hashCode3LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 161
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 164
    :cond_3
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->hashCode4LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 165
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 168
    :cond_4
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->hashCode5LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    .line 169
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader5:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 172
    :cond_5
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->hashCode6LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_6

    .line 173
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader6:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 176
    :cond_6
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->hashCode7LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 177
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader7:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 180
    :cond_7
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->hashCode8LCase:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_8

    .line 181
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader8:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    :cond_8
    const/4 p1, 0x0

    return-object p1
.end method
