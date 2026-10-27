.class public abstract Lorg/jaudiotagger/tag/datatype/AbstractDataType;
.super Ljava/lang/Object;
.source "AbstractDataType.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field protected frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

.field protected identifier:Ljava/lang/String;

.field protected size:I

.field protected value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jaudiotagger.tag.datatype"

    .line 42
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    const-string v1, ""

    .line 53
    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 75
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;Ljava/lang/Object;)V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    const-string v1, ""

    .line 53
    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 88
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 90
    invoke-virtual {p0, p3}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/datatype/AbstractDataType;)V
    .locals 3

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    const-string v1, ""

    .line 53
    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 102
    iget-object v1, p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    .line 103
    iget-object v1, p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 105
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 107
    :cond_0
    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 109
    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 111
    :cond_1
    instance-of v0, v1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 113
    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 115
    :cond_2
    instance-of v0, v1, Ljava/lang/Byte;

    if-eqz v0, :cond_3

    .line 117
    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 119
    :cond_3
    instance-of v0, v1, Ljava/lang/Character;

    if-eqz v0, :cond_4

    .line 121
    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 123
    :cond_4
    instance-of v0, v1, Ljava/lang/Double;

    if-eqz v0, :cond_5

    .line 125
    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 127
    :cond_5
    instance-of v0, v1, Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 129
    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 131
    :cond_6
    instance-of v0, v1, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 133
    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 135
    :cond_7
    instance-of v0, v1, Ljava/lang/Long;

    if-eqz v0, :cond_8

    .line 137
    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 139
    :cond_8
    instance-of v0, v1, Ljava/lang/Short;

    if-eqz v0, :cond_9

    .line 141
    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 143
    :cond_9
    instance-of v0, v1, Lorg/jaudiotagger/tag/datatype/MultipleTextEncodedStringNullTerminated$Values;

    if-eqz v0, :cond_a

    .line 145
    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 147
    :cond_a
    instance-of v0, v1, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    if-eqz v0, :cond_b

    .line 149
    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 151
    :cond_b
    instance-of v0, v1, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    if-eqz v0, :cond_c

    .line 153
    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 155
    :cond_c
    instance-of v0, v1, [Z

    if-eqz v0, :cond_d

    .line 157
    check-cast v1, [Z

    check-cast v1, [Z

    invoke-virtual {v1}, [Z->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 159
    :cond_d
    instance-of v0, v1, [B

    if-eqz v0, :cond_e

    .line 161
    check-cast v1, [B

    check-cast v1, [B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 163
    :cond_e
    instance-of v0, v1, [C

    if-eqz v0, :cond_f

    .line 165
    check-cast v1, [C

    check-cast v1, [C

    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 167
    :cond_f
    instance-of v0, v1, [D

    if-eqz v0, :cond_10

    .line 169
    check-cast v1, [D

    check-cast v1, [D

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_0

    .line 171
    :cond_10
    instance-of v0, v1, [F

    if-eqz v0, :cond_11

    .line 173
    check-cast v1, [F

    check-cast v1, [F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_0

    .line 175
    :cond_11
    instance-of v0, v1, [I

    if-eqz v0, :cond_12

    .line 177
    check-cast v1, [I

    check-cast v1, [I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_0

    .line 179
    :cond_12
    instance-of v0, v1, [J

    if-eqz v0, :cond_13

    .line 181
    check-cast v1, [J

    check-cast v1, [J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_0

    .line 183
    :cond_13
    instance-of v0, v1, [S

    if-eqz v0, :cond_14

    .line 185
    check-cast v1, [S

    check-cast v1, [S

    invoke-virtual {v1}, [S->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_0

    .line 187
    :cond_14
    instance-of v0, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_15

    .line 189
    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_0

    .line 191
    :cond_15
    instance-of v0, v1, Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    .line 193
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_0

    .line 195
    :cond_16
    instance-of v0, v1, Ljava/util/LinkedList;

    if-eqz v0, :cond_17

    .line 197
    check-cast v1, Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    :goto_0
    return-void

    .line 201
    :cond_17
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create copy of class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createStructure()V
    .locals 3

    .line 409
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 288
    :cond_0
    instance-of v1, p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 292
    :cond_1
    check-cast p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;

    .line 293
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    iget-object v3, p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 297
    :cond_2
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    if-nez v1, :cond_3

    iget-object v1, p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    if-nez v1, :cond_3

    return v0

    .line 301
    :cond_3
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    if-eqz v1, :cond_f

    iget-object v3, p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    if-nez v3, :cond_4

    goto/16 :goto_0

    .line 306
    :cond_4
    instance-of v4, v1, [Z

    if-eqz v4, :cond_5

    instance-of v4, v3, [Z

    if-eqz v4, :cond_5

    .line 308
    check-cast v1, [Z

    check-cast v1, [Z

    check-cast v3, [Z

    check-cast v3, [Z

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p1

    if-nez p1, :cond_e

    return v2

    .line 314
    :cond_5
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v3, v1, [B

    if-eqz v3, :cond_6

    iget-object v3, p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v4, v3, [B

    if-eqz v4, :cond_6

    .line 316
    check-cast v1, [B

    check-cast v1, [B

    check-cast v3, [B

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_e

    return v2

    .line 322
    :cond_6
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v3, v1, [C

    if-eqz v3, :cond_7

    iget-object v3, p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v4, v3, [C

    if-eqz v4, :cond_7

    .line 324
    check-cast v1, [C

    check-cast v1, [C

    check-cast v3, [C

    check-cast v3, [C

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p1

    if-nez p1, :cond_e

    return v2

    .line 330
    :cond_7
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v3, v1, [D

    if-eqz v3, :cond_8

    iget-object v3, p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v4, v3, [D

    if-eqz v4, :cond_8

    .line 332
    check-cast v1, [D

    check-cast v1, [D

    check-cast v3, [D

    check-cast v3, [D

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p1

    if-nez p1, :cond_e

    return v2

    .line 338
    :cond_8
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v3, v1, [F

    if-eqz v3, :cond_9

    iget-object v3, p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v4, v3, [F

    if-eqz v4, :cond_9

    .line 340
    check-cast v1, [F

    check-cast v1, [F

    check-cast v3, [F

    check-cast v3, [F

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    if-nez p1, :cond_e

    return v2

    .line 346
    :cond_9
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v3, v1, [I

    if-eqz v3, :cond_a

    iget-object v3, p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v4, v3, [I

    if-eqz v4, :cond_a

    .line 348
    check-cast v1, [I

    check-cast v1, [I

    check-cast v3, [I

    check-cast v3, [I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-nez p1, :cond_e

    return v2

    .line 354
    :cond_a
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v3, v1, [J

    if-eqz v3, :cond_b

    iget-object v3, p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v4, v3, [J

    if-eqz v4, :cond_b

    .line 356
    check-cast v1, [J

    check-cast v1, [J

    check-cast v3, [J

    check-cast v3, [J

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p1

    if-nez p1, :cond_e

    return v2

    .line 362
    :cond_b
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v3, v1, [Ljava/lang/Object;

    if-eqz v3, :cond_c

    iget-object v3, p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v4, v3, [Ljava/lang/Object;

    if-eqz v4, :cond_c

    .line 364
    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v2

    .line 370
    :cond_c
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v3, v1, [S

    if-eqz v3, :cond_d

    iget-object v3, p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v4, v3, [S

    if-eqz v4, :cond_d

    .line 372
    check-cast v1, [S

    check-cast v1, [S

    check-cast v3, [S

    check-cast v3, [S

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([S[S)Z

    move-result p1

    if-nez p1, :cond_e

    return v2

    .line 377
    :cond_d
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    iget-object p1, p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v2

    :cond_e
    return v0

    :cond_f
    :goto_0
    return v2
.end method

.method public getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;
    .locals 1

    .line 222
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getSize()I
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 253
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final readByteArray([B)V
    .locals 1

    const/4 v0, 0x0

    .line 266
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->readByteArray([BI)V

    return-void
.end method

.method public abstract readByteArray([BI)V
.end method

.method public setBody(Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    return-void
.end method

.method public abstract writeByteArray()[B
.end method
