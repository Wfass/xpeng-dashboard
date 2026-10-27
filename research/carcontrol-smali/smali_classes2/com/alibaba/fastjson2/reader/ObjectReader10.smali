.class public Lcom/alibaba/fastjson2/reader/ObjectReader10;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;
.source "ObjectReader10.java"


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

.field protected final fieldReader9:Lcom/alibaba/fastjson2/reader/FieldReader;

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

.field final hashCode9:J

.field final hashCode9LCase:J

.field protected objectReader0:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader1:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader2:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader3:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader4:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader5:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader6:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader7:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader8:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader9:Lcom/alibaba/fastjson2/reader/ObjectReader;


# direct methods
.method public varargs constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V
    .locals 3
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

    .line 76
    invoke-direct/range {p0 .. p9}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    const/4 p1, 0x0

    .line 78
    aget-object p1, p9, p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p2, 0x1

    .line 79
    aget-object p2, p9, p2

    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p3, 0x2

    .line 80
    aget-object p3, p9, p3

    iput-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p4, 0x3

    .line 81
    aget-object p4, p9, p4

    iput-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p5, 0x4

    .line 82
    aget-object p5, p9, p5

    iput-object p5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p6, 0x5

    .line 83
    aget-object p6, p9, p6

    iput-object p6, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->fieldReader5:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p7, 0x6

    .line 84
    aget-object p7, p9, p7

    iput-object p7, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->fieldReader6:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p8, 0x7

    .line 85
    aget-object p8, p9, p8

    iput-object p8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->fieldReader7:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/16 v0, 0x8

    .line 86
    aget-object v0, p9, v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->fieldReader8:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/16 v1, 0x9

    .line 87
    aget-object p9, p9, v1

    iput-object p9, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->fieldReader9:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 89
    iget-wide v1, p1, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode0:J

    .line 90
    iget-wide v1, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode1:J

    .line 91
    iget-wide v1, p3, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode2:J

    .line 92
    iget-wide v1, p4, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode3:J

    .line 93
    iget-wide v1, p5, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode4:J

    .line 94
    iget-wide v1, p6, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode5:J

    .line 95
    iget-wide v1, p7, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode6:J

    .line 96
    iget-wide v1, p8, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode7:J

    .line 97
    iget-wide v1, v0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode8:J

    .line 98
    iget-wide v1, p9, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode9:J

    .line 100
    iget-wide v1, p1, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode0LCase:J

    .line 101
    iget-wide p1, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode1LCase:J

    .line 102
    iget-wide p1, p3, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode2LCase:J

    .line 103
    iget-wide p1, p4, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode3LCase:J

    .line 104
    iget-wide p1, p5, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode4LCase:J

    .line 105
    iget-wide p1, p6, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode5LCase:J

    .line 106
    iget-wide p1, p7, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode6LCase:J

    .line 107
    iget-wide p1, p8, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode7LCase:J

    .line 108
    iget-wide p1, v0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode8LCase:J

    .line 109
    iget-wide p1, p9, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode9LCase:J

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

    .line 63
    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReader10;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-void
.end method


# virtual methods
.method public getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 2

    .line 114
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode0:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 115
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 118
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode1:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 119
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 122
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode2:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 123
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 126
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode3:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 127
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 130
    :cond_3
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode4:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 131
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 134
    :cond_4
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode5:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    .line 135
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->fieldReader5:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 138
    :cond_5
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode6:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_6

    .line 139
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->fieldReader6:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 142
    :cond_6
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode7:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 143
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->fieldReader7:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 146
    :cond_7
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode8:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_8

    .line 147
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->fieldReader8:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 150
    :cond_8
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode9:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_9

    .line 151
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->fieldReader9:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 2

    .line 159
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode0LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 160
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 163
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode1LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 164
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 167
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode2LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 168
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 171
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode3LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 172
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 175
    :cond_3
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode4LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 176
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 179
    :cond_4
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode5LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    .line 180
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->fieldReader5:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 183
    :cond_5
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode6LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_6

    .line 184
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->fieldReader6:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 187
    :cond_6
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode7LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 188
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->fieldReader7:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 191
    :cond_7
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode8LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_8

    .line 192
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->fieldReader8:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 195
    :cond_8
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->hashCode9LCase:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_9

    .line 196
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader10;->fieldReader9:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method
