.class public Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;
.super Ljava/lang/Object;
.source "PartOfSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/tag/datatype/PartOfSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PartOfSetValue"
.end annotation


# static fields
.field private static final SEPARATOR:Ljava/lang/String; = "/"

.field private static final trackNoPattern:Ljava/util/regex/Pattern;

.field private static final trackNoPatternWithTotalCount:Ljava/util/regex/Pattern;


# instance fields
.field private count:Ljava/lang/Integer;

.field private extra:Ljava/lang/String;

.field private rawCount:Ljava/lang/String;

.field private rawText:Ljava/lang/String;

.field private rawTotal:Ljava/lang/String;

.field private total:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    const-string v1, "([0-9]+)/([0-9]+)(.*)"

    .line 199
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->trackNoPatternWithTotalCount:Ljava/util/regex/Pattern;

    const-string v1, "([0-9]+)(.*)"

    .line 200
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->trackNoPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 213
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    .line 236
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawCount:Ljava/lang/String;

    .line 237
    iput-object p2, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    .line 238
    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawTotal:Ljava/lang/String;

    .line 239
    invoke-direct {p0}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->resetValueFromCounts()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawText:Ljava/lang/String;

    .line 224
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->initFromValue(Ljava/lang/String;)V

    return-void
.end method

.method private initFromValue(Ljava/lang/String;)V
    .locals 4

    .line 252
    :try_start_0
    sget-object v0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->trackNoPatternWithTotalCount:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 p1, 0x3

    .line 255
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->extra:Ljava/lang/String;

    .line 256
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    .line 257
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawCount:Ljava/lang/String;

    .line 258
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    .line 259
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawTotal:Ljava/lang/String;

    return-void

    .line 263
    :cond_0
    sget-object v0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->trackNoPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 264
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->extra:Ljava/lang/String;

    .line 267
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    .line 268
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawCount:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 274
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    :cond_1
    :goto_0
    return-void
.end method

.method private padNumber(Ljava/lang/StringBuffer;Ljava/lang/Integer;Lorg/jaudiotagger/tag/options/PadNumberOption;)V
    .locals 6

    if-eqz p2, :cond_8

    .line 395
    sget-object v0, Lorg/jaudiotagger/tag/options/PadNumberOption;->PAD_ONE_ZERO:Lorg/jaudiotagger/tag/options/PadNumberOption;

    const-string v1, "0"

    const/16 v2, 0xa

    if-ne p3, v0, :cond_1

    .line 397
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-lez p3, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ge p3, v2, :cond_0

    .line 399
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 403
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 406
    :cond_1
    sget-object v0, Lorg/jaudiotagger/tag/options/PadNumberOption;->PAD_TWO_ZERO:Lorg/jaudiotagger/tag/options/PadNumberOption;

    const-string v3, "00"

    const/16 v4, 0x64

    const/16 v5, 0x9

    if-ne p3, v0, :cond_4

    .line 408
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-lez p3, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ge p3, v2, :cond_2

    .line 410
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 412
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-le p3, v5, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ge p3, v4, :cond_3

    .line 414
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 418
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 421
    :cond_4
    sget-object v0, Lorg/jaudiotagger/tag/options/PadNumberOption;->PAD_THREE_ZERO:Lorg/jaudiotagger/tag/options/PadNumberOption;

    if-ne p3, v0, :cond_8

    .line 423
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-lez p3, :cond_5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ge p3, v2, :cond_5

    const-string p3, "000"

    .line 425
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 427
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-le p3, v5, :cond_6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ge p3, v4, :cond_6

    .line 429
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 431
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/16 v0, 0x63

    if-le p3, v0, :cond_7

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/16 v0, 0x3e8

    if-ge p3, v0, :cond_7

    .line 433
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 437
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_8
    :goto_0
    return-void
.end method

.method private resetValueFromCounts()V
    .locals 3

    .line 280
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 281
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawCount:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string v1, "0"

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 289
    :goto_0
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawTotal:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawTotal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    :cond_1
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->extra:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 503
    :cond_0
    instance-of v1, p1, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 508
    :cond_1
    check-cast p1, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    .line 510
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->getCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->getCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/jaudiotagger/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 511
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->getTotal()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->getTotal()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/jaudiotagger/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getCount()Ljava/lang/Integer;
    .locals 1

    .line 302
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCountAsText()Ljava/lang/String;
    .locals 3

    .line 372
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 373
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isPadNumbers()Z

    move-result v1

    if-nez v1, :cond_0

    .line 375
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawCount:Ljava/lang/String;

    return-object v0

    .line 379
    :cond_0
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getPadNumberTotalLength()Lorg/jaudiotagger/tag/options/PadNumberOption;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->padNumber(Ljava/lang/StringBuffer;Ljava/lang/Integer;Lorg/jaudiotagger/tag/options/PadNumberOption;)V

    .line 381
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawValue()Ljava/lang/String;
    .locals 1

    .line 355
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawText:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()Ljava/lang/Integer;
    .locals 1

    .line 307
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTotalAsText()Ljava/lang/String;
    .locals 3

    .line 450
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 451
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isPadNumbers()Z

    move-result v1

    if-nez v1, :cond_0

    .line 453
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawTotal:Ljava/lang/String;

    return-object v0

    .line 457
    :cond_0
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getPadNumberTotalLength()Lorg/jaudiotagger/tag/options/PadNumberOption;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->padNumber(Ljava/lang/StringBuffer;Ljava/lang/Integer;Lorg/jaudiotagger/tag/options/PadNumberOption;)V

    .line 460
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCount(Ljava/lang/Integer;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    .line 313
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawCount:Ljava/lang/String;

    .line 314
    invoke-direct {p0}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->resetValueFromCounts()V

    return-void
.end method

.method public setCount(Ljava/lang/String;)V
    .locals 1

    .line 329
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    .line 330
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawCount:Ljava/lang/String;

    .line 331
    invoke-direct {p0}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->resetValueFromCounts()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setRawValue(Ljava/lang/String;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawText:Ljava/lang/String;

    .line 361
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->initFromValue(Ljava/lang/String;)V

    return-void
.end method

.method public setTotal(Ljava/lang/Integer;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    .line 320
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawTotal:Ljava/lang/String;

    .line 321
    invoke-direct {p0}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->resetValueFromCounts()V

    return-void
.end method

.method public setTotal(Ljava/lang/String;)V
    .locals 1

    .line 343
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    .line 344
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawTotal:Ljava/lang/String;

    .line 345
    invoke-direct {p0}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->resetValueFromCounts()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 467
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 468
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isPadNumbers()Z

    move-result v1

    if-nez v1, :cond_0

    .line 470
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawText:Ljava/lang/String;

    return-object v0

    .line 474
    :cond_0
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 476
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getPadNumberTotalLength()Lorg/jaudiotagger/tag/options/PadNumberOption;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->padNumber(Ljava/lang/StringBuffer;Ljava/lang/Integer;Lorg/jaudiotagger/tag/options/PadNumberOption;)V

    goto :goto_0

    .line 478
    :cond_1
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 480
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getPadNumberTotalLength()Lorg/jaudiotagger/tag/options/PadNumberOption;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->padNumber(Ljava/lang/StringBuffer;Ljava/lang/Integer;Lorg/jaudiotagger/tag/options/PadNumberOption;)V

    .line 482
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const-string v1, "/"

    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 485
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getPadNumberTotalLength()Lorg/jaudiotagger/tag/options/PadNumberOption;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->padNumber(Ljava/lang/StringBuffer;Ljava/lang/Integer;Lorg/jaudiotagger/tag/options/PadNumberOption;)V

    .line 487
    :cond_3
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->extra:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 492
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
