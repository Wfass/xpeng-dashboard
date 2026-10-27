.class public Lcom/alibaba/fastjson2/reader/ObjectReader12;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;
.source "ObjectReader12.java"


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

.field protected final fieldReader10:Lcom/alibaba/fastjson2/reader/FieldReader;

.field protected final fieldReader11:Lcom/alibaba/fastjson2/reader/FieldReader;

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

.field final hashCode10:J

.field final hashCode10LCase:J

.field final hashCode11:J

.field final hashCode11LCase:J

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

.field protected objectReader10:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader11:Lcom/alibaba/fastjson2/reader/ObjectReader;

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
    .locals 5
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

    .line 84
    invoke-direct/range {p0 .. p9}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    const/4 p1, 0x0

    .line 86
    aget-object p1, p9, p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p2, 0x1

    .line 87
    aget-object p2, p9, p2

    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p3, 0x2

    .line 88
    aget-object p3, p9, p3

    iput-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p4, 0x3

    .line 89
    aget-object p4, p9, p4

    iput-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p5, 0x4

    .line 90
    aget-object p5, p9, p5

    iput-object p5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p6, 0x5

    .line 91
    aget-object p6, p9, p6

    iput-object p6, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->fieldReader5:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p7, 0x6

    .line 92
    aget-object p7, p9, p7

    iput-object p7, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->fieldReader6:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p8, 0x7

    .line 93
    aget-object p8, p9, p8

    iput-object p8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->fieldReader7:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/16 v0, 0x8

    .line 94
    aget-object v0, p9, v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->fieldReader8:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/16 v1, 0x9

    .line 95
    aget-object v1, p9, v1

    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->fieldReader9:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/16 v2, 0xa

    .line 96
    aget-object v2, p9, v2

    iput-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->fieldReader10:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/16 v3, 0xb

    .line 97
    aget-object p9, p9, v3

    iput-object p9, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->fieldReader11:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 99
    iget-wide v3, p1, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode0:J

    .line 100
    iget-wide v3, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode1:J

    .line 101
    iget-wide v3, p3, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode2:J

    .line 102
    iget-wide v3, p4, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode3:J

    .line 103
    iget-wide v3, p5, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode4:J

    .line 104
    iget-wide v3, p6, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode5:J

    .line 105
    iget-wide v3, p7, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode6:J

    .line 106
    iget-wide v3, p8, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode7:J

    .line 107
    iget-wide v3, v0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode8:J

    .line 108
    iget-wide v3, v1, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode9:J

    .line 109
    iget-wide v3, v2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode10:J

    .line 110
    iget-wide v3, p9, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode11:J

    .line 112
    iget-wide v3, p1, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode0LCase:J

    .line 113
    iget-wide p1, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode1LCase:J

    .line 114
    iget-wide p1, p3, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode2LCase:J

    .line 115
    iget-wide p1, p4, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode3LCase:J

    .line 116
    iget-wide p1, p5, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode4LCase:J

    .line 117
    iget-wide p1, p6, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode5LCase:J

    .line 118
    iget-wide p1, p7, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode6LCase:J

    .line 119
    iget-wide p1, p8, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode7LCase:J

    .line 120
    iget-wide p1, v0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode8LCase:J

    .line 121
    iget-wide p1, v1, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode9LCase:J

    .line 122
    iget-wide p1, v2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode10LCase:J

    .line 123
    iget-wide p1, p9, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode11LCase:J

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

    .line 71
    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReader12;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-void
.end method


# virtual methods
.method public getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 2

    .line 128
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode0:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 129
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 132
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode1:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 133
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 136
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode2:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 137
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 140
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode3:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 141
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 144
    :cond_3
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode4:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 145
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 148
    :cond_4
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode5:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    .line 149
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->fieldReader5:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 152
    :cond_5
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode6:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_6

    .line 153
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->fieldReader6:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 156
    :cond_6
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode7:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 157
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->fieldReader7:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 160
    :cond_7
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode8:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_8

    .line 161
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->fieldReader8:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 164
    :cond_8
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode9:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_9

    .line 165
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->fieldReader9:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 168
    :cond_9
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode10:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_a

    .line 169
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->fieldReader10:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 172
    :cond_a
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode11:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_b

    .line 173
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->fieldReader11:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 2

    .line 181
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode0LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 182
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 185
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode1LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 186
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 189
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode2LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 190
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 193
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode3LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 194
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 197
    :cond_3
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode4LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 198
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 201
    :cond_4
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode5LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    .line 202
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->fieldReader5:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 205
    :cond_5
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode6LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_6

    .line 206
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->fieldReader6:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 209
    :cond_6
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode7LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 210
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->fieldReader7:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 213
    :cond_7
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode8LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_8

    .line 214
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->fieldReader8:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 217
    :cond_8
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode9LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_9

    .line 218
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->fieldReader9:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 221
    :cond_9
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode10LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_a

    .line 222
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->fieldReader10:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 225
    :cond_a
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->hashCode11LCase:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_b

    .line 226
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader12;->fieldReader11:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method
