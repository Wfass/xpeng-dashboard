.class public Lorg/jaudiotagger/tag/id3/framebody/FrameBodyETCO;
.super Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;
.source "FrameBodyETCO.java"

# interfaces
.implements Lorg/jaudiotagger/tag/id3/framebody/ID3v23FrameBody;
.implements Lorg/jaudiotagger/tag/id3/framebody/ID3v24FrameBody;


# static fields
.field public static final MILLISECONDS:I = 0x2

.field public static final MPEG_FRAMES:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 112
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    const/4 v0, 0x2

    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "TimeStampFormat"

    invoke-virtual {p0, v1, v0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyETCO;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .line 130
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyETCO;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)V

    return-void
.end method

.method private resolveRelativeTimestamps()V
    .locals 8

    const-string v0, "TimedEventList"

    .line 287
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyETCO;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 289
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jaudiotagger/tag/datatype/EventTimingCode;

    .line 291
    invoke-virtual {v5}, Lorg/jaudiotagger/tag/datatype/EventTimingCode;->getTimestamp()J

    move-result-wide v6

    cmp-long v6, v6, v1

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Lorg/jaudiotagger/tag/datatype/EventTimingCode;->getTimestamp()J

    move-result-wide v3

    .line 292
    :goto_1
    invoke-virtual {v5, v3, v4}, Lorg/jaudiotagger/tag/datatype/EventTimingCode;->setTimestamp(J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static varargs toSet([I)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 338
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 339
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .line 341
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public varargs addTimingCode(J[I)V
    .locals 13

    move-object/from16 v6, p3

    const-string v0, "TimedEventList"

    move-object v7, p0

    .line 221
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyETCO;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/List;

    .line 224
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/datatype/EventTimingCode;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/EventTimingCode;->getTimestamp()J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-gtz v0, :cond_2

    .line 226
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v2, 0x0

    move v9, v1

    move-wide v4, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/jaudiotagger/tag/datatype/EventTimingCode;

    .line 228
    invoke-virtual {v10}, Lorg/jaudiotagger/tag/datatype/EventTimingCode;->getTimestamp()J

    move-result-wide v11

    cmp-long v11, v11, v2

    if-nez v11, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v10}, Lorg/jaudiotagger/tag/datatype/EventTimingCode;->getTimestamp()J

    move-result-wide v4

    :goto_1
    cmp-long v10, p1, v4

    if-gez v10, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    move v9, v1

    .line 237
    :cond_3
    :goto_2
    array-length v10, v6

    move v11, v9

    move v9, v1

    :goto_3
    if-ge v9, v10, :cond_4

    aget v3, v6, v9

    .line 238
    new-instance v12, Lorg/jaudiotagger/tag/datatype/EventTimingCode;

    const-string v1, "TimedEvent"

    move-object v0, v12

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/jaudiotagger/tag/datatype/EventTimingCode;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;IJ)V

    invoke-interface {v8, v11, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public clearTimingCodes()V
    .locals 1

    const-string v0, "TimedEventList"

    .line 279
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyETCO;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "ETCO"

    return-object v0
.end method

.method public getTimestampFormat()I
    .locals 1

    const-string v0, "TimeStampFormat"

    .line 144
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyETCO;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public varargs getTimestamps([I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 197
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyETCO;->toSet([I)Ljava/util/Set;

    move-result-object p1

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "TimedEventList"

    .line 199
    invoke-virtual {p0, v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyETCO;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 201
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jaudiotagger/tag/datatype/EventTimingCode;

    .line 203
    invoke-virtual {v6}, Lorg/jaudiotagger/tag/datatype/EventTimingCode;->getTimestamp()J

    move-result-wide v7

    cmp-long v7, v7, v2

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Lorg/jaudiotagger/tag/datatype/EventTimingCode;->getTimestamp()J

    move-result-wide v4

    .line 204
    :goto_1
    invoke-virtual {v6}, Lorg/jaudiotagger/tag/datatype/EventTimingCode;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 206
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTimingCodes()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "[I>;"
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "TimedEventList"

    .line 170
    invoke-virtual {p0, v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyETCO;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 172
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jaudiotagger/tag/datatype/EventTimingCode;

    .line 174
    invoke-virtual {v6}, Lorg/jaudiotagger/tag/datatype/EventTimingCode;->getTimestamp()J

    move-result-wide v7

    cmp-long v7, v7, v2

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Lorg/jaudiotagger/tag/datatype/EventTimingCode;->getTimestamp()J

    move-result-wide v4

    .line 175
    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v7, :cond_1

    .line 177
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    new-array v9, v9, [I

    invoke-virtual {v6}, Lorg/jaudiotagger/tag/datatype/EventTimingCode;->getType()I

    move-result v6

    aput v6, v9, v8

    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 179
    :cond_1
    array-length v10, v7

    add-int/2addr v10, v9

    new-array v10, v10, [I

    .line 180
    array-length v11, v7

    invoke-static {v7, v8, v10, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    array-length v7, v10

    sub-int/2addr v7, v9

    invoke-virtual {v6}, Lorg/jaudiotagger/tag/datatype/EventTimingCode;->getType()I

    move-result v6

    aput v6, v10, v7

    .line 182
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 186
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .locals 10

    .line 300
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->read(Ljava/nio/ByteBuffer;)V

    const-string p1, "TimedEventList"

    .line 303
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyETCO;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 305
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jaudiotagger/tag/datatype/EventTimingCode;

    .line 307
    invoke-virtual {v4}, Lorg/jaudiotagger/tag/datatype/EventTimingCode;->getTimestamp()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-nez v5, :cond_0

    move-wide v5, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lorg/jaudiotagger/tag/datatype/EventTimingCode;->getTimestamp()J

    move-result-wide v5

    .line 308
    :goto_1
    invoke-virtual {v4}, Lorg/jaudiotagger/tag/datatype/EventTimingCode;->getTimestamp()J

    move-result-wide v7

    cmp-long v7, v7, v2

    if-gez v7, :cond_1

    .line 310
    sget-object v7, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyETCO;->logger:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Event codes are not in chronological order. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " is followed by "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/jaudiotagger/tag/datatype/EventTimingCode;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_1
    move-wide v2, v5

    goto :goto_0

    :cond_2
    return-void
.end method

.method public varargs removeTimingCode(J[I)Z
    .locals 5

    .line 254
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyETCO;->resolveRelativeTimestamps()V

    .line 255
    invoke-static {p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyETCO;->toSet([I)Ljava/util/Set;

    move-result-object p3

    const-string v0, "TimedEventList"

    .line 256
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyETCO;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 258
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 260
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/datatype/EventTimingCode;

    .line 261
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/datatype/EventTimingCode;->getTimestamp()J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/datatype/EventTimingCode;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 263
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    const/4 v1, 0x1

    .line 266
    :cond_1
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/datatype/EventTimingCode;->getTimestamp()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    :cond_2
    return v1
.end method

.method public setTimestampFormat(I)V
    .locals 3

    .line 155
    invoke-static {}, Lorg/jaudiotagger/tag/id3/valuepair/EventTimingTimestampTypes;->getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/EventTimingTimestampTypes;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/valuepair/EventTimingTimestampTypes;->getValueForId(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "TimeStampFormat"

    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyETCO;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timestamp format must be 1 or 2 (ID3v2.4, 4.5): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setupObjectList()V
    .locals 4

    .line 332
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyETCO;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/jaudiotagger/tag/datatype/NumberHashMap;

    const-string v2, "TimeStampFormat"

    const/4 v3, 0x1

    invoke-direct {v1, v2, p0, v3}, Lorg/jaudiotagger/tag/datatype/NumberHashMap;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyETCO;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/jaudiotagger/tag/datatype/EventTimingCodeList;

    invoke-direct {v1, p0}, Lorg/jaudiotagger/tag/datatype/EventTimingCodeList;-><init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyETCO;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
