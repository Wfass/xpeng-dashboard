.class public abstract Lcom/alibaba/fastjson2/writer/FieldWriter;
.super Ljava/lang/Object;
.source "FieldWriter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable;"
    }
.end annotation


# static fields
.field static final initObjectWriterUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final decimalFormat:Ljava/text/DecimalFormat;

.field defaultValue:Ljava/lang/Object;

.field public final features:J

.field public final field:Ljava/lang/reflect/Field;

.field public final fieldClass:Ljava/lang/Class;

.field final fieldClassSerializable:Z

.field public final fieldName:Ljava/lang/String;

.field protected final fieldOffset:J

.field public final fieldType:Ljava/lang/reflect/Type;

.field public final format:Ljava/lang/String;

.field final hashCode:J

.field volatile initObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

.field public final label:Ljava/lang/String;

.field public final method:Ljava/lang/reflect/Method;

.field final nameJSONB:[B

.field nameSymbolCache:J

.field final nameWithColonUTF16:[C

.field final nameWithColonUTF8:[B

.field public final ordinal:I

.field transient path:Lcom/alibaba/fastjson2/JSONWriter$Path;

.field protected final primitive:Z

.field final raw:Z

.field final rootParentPath:Lcom/alibaba/fastjson2/JSONWriter$Path;

.field final symbol:Z

.field final trim:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 58
    const-class v0, Lcom/alibaba/fastjson2/writer/FieldWriter;

    const-class v1, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    const-string v2, "initObjectWriter"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->initObjectWriterUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 4

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "string"

    .line 75
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Ljava/lang/String;

    if-eq p8, v0, :cond_0

    .line 76
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr p3, v0

    .line 79
    :cond_0
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 80
    iput p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->ordinal:I

    .line 81
    iput-object p5, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    .line 82
    iput-object p6, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->label:Ljava/lang/String;

    .line 83
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    .line 84
    iput-wide p3, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 85
    invoke-static {p7}, Lcom/alibaba/fastjson2/util/TypeUtils;->intern(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldType:Ljava/lang/reflect/Type;

    .line 86
    iput-object p8, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    const/4 p2, 0x0

    const/4 p6, 0x1

    if-eqz p8, :cond_2

    .line 87
    const-class p7, Ljava/io/Serializable;

    invoke-virtual {p7, p8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p7

    if-nez p7, :cond_1

    invoke-virtual {p8}, Ljava/lang/Class;->getModifiers()I

    move-result p7

    invoke-static {p7}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result p7

    if-nez p7, :cond_2

    :cond_1
    move p7, p6

    goto :goto_0

    :cond_2
    move p7, p2

    :goto_0
    iput-boolean p7, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClassSerializable:Z

    .line 88
    iput-object p9, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->field:Ljava/lang/reflect/Field;

    .line 89
    iput-object p10, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->method:Ljava/lang/reflect/Method;

    .line 90
    invoke-virtual {p8}, Ljava/lang/Class;->isPrimitive()Z

    move-result p7

    iput-boolean p7, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->primitive:Z

    .line 92
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONB;->toBytes(Ljava/lang/String;)[B

    move-result-object p7

    iput-object p7, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameJSONB:[B

    const/4 p7, 0x0

    if-eqz p5, :cond_4

    .line 95
    sget-object p10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p8, p10, :cond_3

    const-class p10, [F

    if-eq p8, p10, :cond_3

    const-class p10, Ljava/lang/Float;

    if-eq p8, p10, :cond_3

    const-class p10, [Ljava/lang/Float;

    if-eq p8, p10, :cond_3

    sget-object p10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p8, p10, :cond_3

    const-class p10, [D

    if-eq p8, p10, :cond_3

    const-class p10, Ljava/lang/Double;

    if-eq p8, p10, :cond_3

    const-class p10, [Ljava/lang/Double;

    if-eq p8, p10, :cond_3

    const-class p10, Ljava/math/BigDecimal;

    if-eq p8, p10, :cond_3

    const-class p10, [Ljava/math/BigDecimal;

    if-ne p8, p10, :cond_4

    .line 107
    :cond_3
    new-instance p7, Ljava/text/DecimalFormat;

    invoke-direct {p7, p5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 109
    :cond_4
    iput-object p7, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    const-wide/16 p7, -0x1

    if-eqz p9, :cond_5

    .line 113
    sget-object p7, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {p7, p9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide p7

    .line 115
    :cond_5
    iput-wide p7, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldOffset:J

    const-string/jumbo p7, "symbol"

    .line 117
    invoke-virtual {p7, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    iput-boolean p7, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->symbol:Z

    const-string/jumbo p7, "trim"

    .line 118
    invoke-virtual {p7, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    iput-boolean p5, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->trim:Z

    const-wide/high16 p7, 0x4000000000000L

    and-long/2addr p3, p7

    const-wide/16 p7, 0x0

    cmp-long p3, p3, p7

    if-eqz p3, :cond_6

    move p3, p6

    goto :goto_1

    :cond_6
    move p3, p2

    .line 119
    :goto_1
    iput-boolean p3, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->raw:Z

    .line 120
    new-instance p3, Lcom/alibaba/fastjson2/JSONWriter$Path;

    sget-object p4, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    invoke-direct {p3, p4, p1}, Lcom/alibaba/fastjson2/JSONWriter$Path;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Path;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->rootParentPath:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p4, p3, 0x3

    move p5, p2

    move p7, p4

    :goto_2
    const/16 p8, 0x7f

    const/16 p9, 0x7ff

    if-ge p5, p3, :cond_9

    .line 125
    invoke-virtual {p1, p5}, Ljava/lang/String;->charAt(I)C

    move-result p10

    if-lt p10, p6, :cond_7

    if-gt p10, p8, :cond_7

    goto :goto_3

    :cond_7
    if-le p10, p9, :cond_8

    add-int/lit8 p7, p7, 0x2

    goto :goto_3

    :cond_8
    add-int/lit8 p7, p7, 0x1

    :goto_3
    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    .line 135
    :cond_9
    new-array p5, p7, [B

    const/16 p7, 0x22

    .line 137
    aput-byte p7, p5, p2

    move p10, p2

    move v0, p6

    :goto_4
    if-ge p10, p3, :cond_c

    .line 139
    invoke-virtual {p1, p10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, p6, :cond_a

    if-gt v1, p8, :cond_a

    add-int/lit8 v2, v0, 0x1

    int-to-byte v1, v1

    .line 141
    aput-byte v1, p5, v0

    goto :goto_5

    :cond_a
    if-le v1, p9, :cond_b

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0xf

    or-int/lit16 v3, v3, 0xe0

    int-to-byte v3, v3

    .line 144
    aput-byte v3, p5, v0

    add-int/lit8 v0, v2, 0x1

    shr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 145
    aput-byte v3, p5, v2

    add-int/lit8 v2, v0, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    .line 146
    aput-byte v1, p5, v0

    :goto_5
    move v0, v2

    goto :goto_6

    :cond_b
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x1f

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    .line 148
    aput-byte v3, p5, v0

    add-int/lit8 v0, v2, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    .line 149
    aput-byte v1, p5, v2

    :goto_6
    add-int/lit8 p10, p10, 0x1

    goto :goto_4

    :cond_c
    add-int/lit8 p3, v0, 0x1

    .line 152
    aput-byte p7, p5, v0

    const/16 p8, 0x3a

    .line 153
    aput-byte p8, p5, p3

    .line 154
    iput-object p5, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameWithColonUTF8:[B

    .line 156
    new-array p3, p4, [C

    .line 157
    aput-char p7, p3, p2

    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p5

    invoke-virtual {p1, p2, p5, p3, p6}, Ljava/lang/String;->getChars(II[CI)V

    add-int/lit8 p1, p4, -0x2

    .line 159
    aput-char p7, p3, p1

    sub-int/2addr p4, p6

    .line 160
    aput-char p8, p3, p4

    .line 161
    iput-object p3, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameWithColonUTF16:[C

    return-void
.end method

.method static getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 2

    .line 848
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 849
    invoke-virtual {p1, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 850
    invoke-static {p0, p4}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    move-result-object p0

    return-object p0

    .line 852
    :cond_0
    invoke-static {p4}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->of(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    move-result-object p0

    return-object p0

    .line 855
    :cond_1
    const-class p0, Ljava/util/Calendar;

    invoke-virtual {p0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz p2, :cond_3

    .line 856
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 859
    :cond_2
    new-instance p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCalendar;

    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCalendar;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object p0

    .line 857
    :cond_3
    :goto_0
    sget-object p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCalendar;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplCalendar;

    return-object p0

    .line 862
    :cond_4
    const-class p0, Ljava/time/ZonedDateTime;

    invoke-virtual {p0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_7

    if-eqz p2, :cond_6

    .line 863
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    .line 866
    :cond_5
    new-instance p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplZonedDateTime;

    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplZonedDateTime;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object p0

    .line 864
    :cond_6
    :goto_1
    sget-object p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplZonedDateTime;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplZonedDateTime;

    return-object p0

    .line 870
    :cond_7
    const-class p0, Ljava/time/OffsetDateTime;

    invoke-virtual {p0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_a

    if-eqz p2, :cond_9

    .line 871
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_2

    .line 874
    :cond_8
    invoke-static {p2, p3}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplOffsetDateTime;->of(Ljava/lang/String;Ljava/util/Locale;)Lcom/alibaba/fastjson2/writer/ObjectWriterImplOffsetDateTime;

    move-result-object p0

    return-object p0

    .line 872
    :cond_9
    :goto_2
    sget-object p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplOffsetDateTime;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplOffsetDateTime;

    return-object p0

    .line 878
    :cond_a
    const-class p0, Ljava/time/LocalDateTime;

    invoke-virtual {p0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 879
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectWriterProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    move-result-object p0

    const-class p1, Ljava/time/LocalDateTime;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 880
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalDateTime;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalDateTime;

    if-eq p0, p1, :cond_b

    return-object p0

    :cond_b
    if-eqz p2, :cond_d

    .line 884
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_3

    .line 887
    :cond_c
    new-instance p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalDateTime;

    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalDateTime;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object p0

    .line 885
    :cond_d
    :goto_3
    sget-object p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalDateTime;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalDateTime;

    return-object p0

    .line 891
    :cond_e
    const-class p0, Ljava/time/LocalDate;

    invoke-virtual {p0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 892
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectWriterProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    move-result-object p0

    const-class p1, Ljava/time/LocalDate;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 893
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalDate;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalDate;

    if-eq p0, p1, :cond_f

    return-object p0

    .line 897
    :cond_f
    invoke-static {p2, p3}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalDate;->of(Ljava/lang/String;Ljava/util/Locale;)Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalDate;

    move-result-object p0

    return-object p0

    .line 900
    :cond_10
    const-class p0, Ljava/time/LocalTime;

    invoke-virtual {p0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_14

    .line 901
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectWriterProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    move-result-object p0

    const-class p1, Ljava/time/LocalTime;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 902
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalTime;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalTime;

    if-eq p0, p1, :cond_11

    return-object p0

    :cond_11
    if-eqz p2, :cond_13

    .line 906
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_4

    .line 909
    :cond_12
    new-instance p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalTime;

    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalTime;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object p0

    .line 907
    :cond_13
    :goto_4
    sget-object p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalTime;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalTime;

    return-object p0

    .line 913
    :cond_14
    const-class p0, Ljava/time/Instant;

    if-ne p0, p4, :cond_17

    if-eqz p2, :cond_16

    .line 914
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_5

    .line 917
    :cond_15
    new-instance p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInstant;

    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInstant;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object p0

    .line 915
    :cond_16
    :goto_5
    sget-object p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInstant;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInstant;

    return-object p0

    .line 921
    :cond_17
    const-class p0, Ljava/math/BigDecimal;

    const/4 p1, 0x0

    if-ne p0, p4, :cond_1a

    if-eqz p2, :cond_19

    .line 922
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_18

    goto :goto_6

    .line 925
    :cond_18
    new-instance p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;

    new-instance p3, Ljava/text/DecimalFormat;

    invoke-direct {p3, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;-><init>(Ljava/text/DecimalFormat;Ljava/util/function/Function;)V

    return-object p0

    .line 923
    :cond_19
    :goto_6
    sget-object p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;

    return-object p0

    .line 929
    :cond_1a
    const-class p0, [Ljava/math/BigDecimal;

    if-ne p0, p4, :cond_1d

    if-eqz p2, :cond_1c

    .line 930
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_7

    .line 933
    :cond_1b
    new-instance p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    const-class p1, Ljava/math/BigDecimal;

    new-instance p3, Ljava/text/DecimalFormat;

    invoke-direct {p3, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    return-object p0

    .line 931
    :cond_1c
    :goto_7
    new-instance p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    const-class p2, Ljava/math/BigDecimal;

    invoke-direct {p0, p2, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    return-object p0

    .line 937
    :cond_1d
    const-class p0, Ljava/util/Optional;

    if-ne p0, p4, :cond_1e

    .line 938
    invoke-static {p2, p3}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplOptional;->of(Ljava/lang/String;Ljava/util/Locale;)Lcom/alibaba/fastjson2/writer/ObjectWriterImplOptional;

    move-result-object p0

    return-object p0

    .line 941
    :cond_1e
    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 942
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_8

    :sswitch_0
    const-string v1, "org.joda.time.LocalDateTime"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto :goto_8

    :cond_1f
    const/4 v0, 0x4

    goto :goto_8

    :sswitch_1
    const-string v1, "java.sql.Timestamp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto :goto_8

    :cond_20
    const/4 v0, 0x3

    goto :goto_8

    :sswitch_2
    const-string v1, "java.sql.Time"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    goto :goto_8

    :cond_21
    const/4 v0, 0x2

    goto :goto_8

    :sswitch_3
    const-string v1, "java.sql.Date"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto :goto_8

    :cond_22
    const/4 v0, 0x1

    goto :goto_8

    :sswitch_4
    const-string v1, "org.joda.time.LocalDate"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto :goto_8

    :cond_23
    const/4 v0, 0x0

    :goto_8
    packed-switch v0, :pswitch_data_0

    return-object p1

    .line 952
    :pswitch_0
    invoke-static {p4, p2}, Lcom/alibaba/fastjson2/util/JodaSupport;->createLocalDateTimeWriter(Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    return-object p0

    .line 948
    :pswitch_1
    invoke-static {p4, p2}, Lcom/alibaba/fastjson2/util/JdbcSupport;->createTimestampWriter(Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    return-object p0

    .line 944
    :pswitch_2
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/JdbcSupport;->createTimeWriter(Ljava/lang/String;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    return-object p0

    .line 946
    :pswitch_3
    new-instance p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;

    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object p0

    .line 950
    :pswitch_4
    invoke-static {p4, p2}, Lcom/alibaba/fastjson2/util/JodaSupport;->createLocalDateWriter(Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7295bf66 -> :sswitch_4
        0x40d5de3a -> :sswitch_3
        0x40dd4159 -> :sswitch_2
        0x4aad720a -> :sswitch_1
        0x56ec2a87 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private writeFieldNameSymbol(Lcom/alibaba/fastjson2/JSONWriter;Lcom/alibaba/fastjson2/SymbolTable;)Z
    .locals 5

    .line 223
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 226
    iget-wide v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameSymbolCache:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const/16 v4, 0x20

    if-nez v3, :cond_0

    .line 227
    iget-wide v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    invoke-virtual {p2, v1, v2}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    move-result p2

    int-to-long v1, p2

    shl-long/2addr v1, v4

    int-to-long v3, v0

    or-long v0, v1, v3

    .line 228
    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameSymbolCache:J

    goto :goto_0

    :cond_0
    long-to-int v3, v1

    if-ne v3, v0, :cond_1

    shr-long v0, v1, v4

    long-to-int p2, v0

    goto :goto_0

    .line 233
    :cond_1
    iget-wide v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    invoke-virtual {p2, v1, v2}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    move-result p2

    int-to-long v1, p2

    shl-long/2addr v1, v4

    int-to-long v3, v0

    or-long v0, v1, v3

    .line 234
    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameSymbolCache:J

    :goto_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    neg-int p2, p2

    .line 239
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeSymbol(I)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 14

    .line 343
    check-cast p1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 345
    iget v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->ordinal:I

    .line 346
    iget v1, p1, Lcom/alibaba/fastjson2/writer/FieldWriter;->ordinal:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    return v3

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    iget-object v1, p1, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 362
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->method:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->field:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 365
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->method:Ljava/lang/reflect/Method;

    goto :goto_1

    .line 363
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->field:Ljava/lang/reflect/Field;

    .line 367
    :goto_1
    iget-object v4, p1, Lcom/alibaba/fastjson2/writer/FieldWriter;->method:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_6

    iget-object v4, p1, Lcom/alibaba/fastjson2/writer/FieldWriter;->field:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    .line 370
    :cond_5
    iget-object v4, p1, Lcom/alibaba/fastjson2/writer/FieldWriter;->method:Ljava/lang/reflect/Method;

    goto :goto_3

    .line 368
    :cond_6
    :goto_2
    iget-object v4, p1, Lcom/alibaba/fastjson2/writer/FieldWriter;->field:Ljava/lang/reflect/Field;

    :goto_3
    const/4 v5, 0x0

    if-eqz v1, :cond_e

    if-eqz v4, :cond_e

    .line 374
    invoke-interface {v4}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    .line 375
    invoke-interface {v1}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    if-eq v7, v6, :cond_8

    .line 377
    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_7

    return v3

    .line 379
    :cond_7
    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_8

    return v2

    .line 386
    :cond_8
    instance-of v6, v1, Ljava/lang/reflect/Field;

    if-eqz v6, :cond_9

    .line 387
    move-object v6, v1

    check-cast v6, Ljava/lang/reflect/Field;

    const-class v7, Lcom/alibaba/fastjson2/annotation/JSONField;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson2/annotation/JSONField;

    goto :goto_4

    .line 388
    :cond_9
    instance-of v6, v1, Ljava/lang/reflect/Method;

    if-eqz v6, :cond_a

    .line 389
    move-object v6, v1

    check-cast v6, Ljava/lang/reflect/Method;

    const-class v7, Lcom/alibaba/fastjson2/annotation/JSONField;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson2/annotation/JSONField;

    goto :goto_4

    :cond_a
    move-object v6, v5

    .line 391
    :goto_4
    instance-of v7, v4, Ljava/lang/reflect/Field;

    if-eqz v7, :cond_b

    .line 392
    move-object v7, v4

    check-cast v7, Ljava/lang/reflect/Field;

    const-class v8, Lcom/alibaba/fastjson2/annotation/JSONField;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lcom/alibaba/fastjson2/annotation/JSONField;

    goto :goto_5

    .line 393
    :cond_b
    instance-of v7, v1, Ljava/lang/reflect/Method;

    if-eqz v7, :cond_c

    .line 394
    move-object v7, v4

    check-cast v7, Ljava/lang/reflect/Method;

    const-class v8, Lcom/alibaba/fastjson2/annotation/JSONField;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lcom/alibaba/fastjson2/annotation/JSONField;

    goto :goto_5

    :cond_c
    move-object v7, v5

    :goto_5
    if-eqz v6, :cond_d

    if-nez v7, :cond_d

    return v2

    :cond_d
    if-nez v6, :cond_e

    if-eqz v7, :cond_e

    return v3

    .line 405
    :cond_e
    instance-of v6, v1, Ljava/lang/reflect/Field;

    if-eqz v6, :cond_f

    instance-of v6, v4, Ljava/lang/reflect/Method;

    if-eqz v6, :cond_f

    move-object v6, v1

    check-cast v6, Ljava/lang/reflect/Field;

    .line 407
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    move-object v7, v4

    check-cast v7, Ljava/lang/reflect/Method;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    if-ne v6, v7, :cond_f

    return v2

    .line 412
    :cond_f
    instance-of v6, v1, Ljava/lang/reflect/Method;

    if-eqz v6, :cond_10

    instance-of v7, v4, Ljava/lang/reflect/Field;

    if-eqz v7, :cond_10

    move-object v7, v1

    check-cast v7, Ljava/lang/reflect/Method;

    .line 414
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    move-object v8, v4

    check-cast v8, Ljava/lang/reflect/Field;

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    if-ne v7, v8, :cond_10

    return v3

    .line 419
    :cond_10
    iget-object v7, p1, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    .line 420
    iget-object v8, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    if-eq v8, v7, :cond_12

    if-eqz v8, :cond_12

    if-eqz v7, :cond_12

    .line 422
    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_11

    return v3

    .line 424
    :cond_11
    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_12

    return v2

    .line 429
    :cond_12
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_13

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v7, v9, :cond_13

    return v3

    .line 433
    :cond_13
    const-class v9, Ljava/lang/Boolean;

    if-ne v8, v9, :cond_15

    const-class v9, Ljava/lang/Boolean;

    if-ne v7, v9, :cond_15

    if-eqz v6, :cond_15

    instance-of v9, v4, Ljava/lang/reflect/Method;

    if-eqz v9, :cond_15

    .line 438
    invoke-interface {v1}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v9

    .line 439
    invoke-interface {v4}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "is"

    .line 440
    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    const-string v13, "get"

    if-eqz v12, :cond_14

    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_14

    return v3

    .line 443
    :cond_14
    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_15

    return v2

    :cond_15
    if-eqz v6, :cond_17

    .line 448
    instance-of v6, v4, Ljava/lang/reflect/Method;

    if-eqz v6, :cond_17

    .line 449
    invoke-interface {v1}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v1

    .line 450
    invoke-interface {v4}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v4

    .line 451
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    .line 452
    invoke-static {v1, v5}, Lcom/alibaba/fastjson2/util/BeanUtils;->getterName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 453
    invoke-static {v4, v5}, Lcom/alibaba/fastjson2/util/BeanUtils;->getterName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 454
    iget-object v5, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, p1, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    return v3

    .line 457
    :cond_16
    iget-object v5, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object p1, p1, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    .line 463
    :cond_17
    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-nez p1, :cond_18

    return v2

    .line 467
    :cond_18
    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-nez p1, :cond_19

    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-eqz p1, :cond_19

    return v3

    .line 471
    :cond_19
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "java."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1a

    return v2

    .line 475
    :cond_1a
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1b

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b

    return v3

    :cond_1b
    return v0
.end method

.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "field.get error, "

    if-eqz p1, :cond_2

    .line 324
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->field:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    .line 327
    :try_start_0
    iget-wide v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldOffset:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->primitive:Z

    if-nez v2, :cond_0

    .line 328
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldOffset:J

    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 330
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 334
    :goto_1
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 338
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 321
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFunction()Ljava/util/function/Function;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInitWriter()Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemClass()Ljava/lang/Class;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemType()Ljava/lang/reflect/Type;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    const/4 v0, 0x0

    .line 786
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1
.end method

.method public getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    .line 794
    const-class v0, [Ljava/lang/Float;

    if-ne p2, v0, :cond_1

    .line 795
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    if-eqz p1, :cond_0

    .line 796
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    const-class p2, Ljava/lang/Float;

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-direct {p1, p2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    return-object p1

    .line 798
    :cond_0
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->FLOAT_ARRAY:Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    return-object p1

    .line 802
    :cond_1
    const-class v0, [Ljava/lang/Double;

    if-ne p2, v0, :cond_3

    .line 803
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    if-eqz p1, :cond_2

    .line 804
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    const-class p2, Ljava/lang/Double;

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-direct {p1, p2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    return-object p1

    .line 806
    :cond_2
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->DOUBLE_ARRAY:Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    return-object p1

    .line 810
    :cond_3
    const-class v0, [Ljava/math/BigDecimal;

    if-ne p2, v0, :cond_5

    .line 811
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    if-eqz p1, :cond_4

    .line 812
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    const-class p2, Ljava/math/BigDecimal;

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-direct {p1, p2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    return-object p1

    .line 814
    :cond_4
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->DECIMAL_ARRAY:Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    return-object p1

    .line 818
    :cond_5
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1
.end method

.method public final getPath(Lcom/alibaba/fastjson2/JSONWriter$Path;)Lcom/alibaba/fastjson2/JSONWriter$Path;
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Path;

    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/alibaba/fastjson2/JSONWriter$Path;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Path;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    return-object v0

    .line 254
    :cond_0
    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Path;->parent:Lcom/alibaba/fastjson2/JSONWriter$Path;

    if-ne v0, p1, :cond_1

    .line 255
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    return-object p1

    .line 258
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Path;

    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/alibaba/fastjson2/JSONWriter$Path;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Path;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getRootParentPath()Lcom/alibaba/fastjson2/JSONWriter$Path;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->rootParentPath:Lcom/alibaba/fastjson2/JSONWriter$Path;

    return-object v0
.end method

.method public isDateFormatISO8601()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDateFormatMillis()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFieldClassSerializable()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClassSerializable:Z

    return v0
.end method

.method setDefaultValue(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 277
    const-class v0, Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_7

    const-class v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 285
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 286
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    return-void

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    .line 297
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_6

    return-void

    .line 300
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    goto :goto_1

    .line 310
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_6

    .line 311
    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    if-nez v0, :cond_6

    return-void

    .line 307
    :cond_5
    :goto_1
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_6

    return-void

    .line 316
    :cond_6
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->defaultValue:Ljava/lang/Object;

    :cond_7
    :goto_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public unwrapped()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "TT;)Z"
        }
    .end annotation
.end method

.method public writeBinary(Lcom/alibaba/fastjson2/JSONWriter;[B)V
    .locals 4

    if-nez p2, :cond_1

    .line 489
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteNulls()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 492
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 493
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return-void

    .line 497
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 498
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    const-string v1, "base64"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 499
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    move-result-wide v0

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteByteArrayAsBase64:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    goto :goto_3

    .line 502
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    const-string v1, "hex"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 503
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeHex([B)V

    goto :goto_4

    .line 504
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    const-string v1, "gzip,base64"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    const-string v1, "gzip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 524
    :cond_4
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeBinary([B)V

    goto :goto_4

    :cond_5
    :goto_0
    const/4 v0, 0x0

    .line 507
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 508
    array-length v2, p2

    const/16 v3, 0x200

    if-ge v2, v3, :cond_6

    .line 509
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    array-length v3, p2

    invoke-direct {v2, v1, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    goto :goto_1

    .line 511
    :cond_6
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    :goto_1
    move-object v0, v2

    .line 513
    invoke-virtual {v0, p2}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 514
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 515
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/IOUtils;->close(Ljava/io/Closeable;)V

    .line 522
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeBase64([B)V

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 517
    :try_start_1
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo v1, "write gzipBytes error"

    invoke-direct {p2, v1, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 519
    :goto_2
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/IOUtils;->close(Ljava/io/Closeable;)V

    .line 520
    throw p1

    .line 501
    :cond_7
    :goto_3
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeBase64([B)V

    :goto_4
    return-void
.end method

.method public writeBool(Lcom/alibaba/fastjson2/JSONWriter;Z)V
    .locals 0

    .line 607
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public writeBool(Lcom/alibaba/fastjson2/JSONWriter;[Z)V
    .locals 1

    if-nez p2, :cond_0

    .line 611
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteNulls()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 615
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 616
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool([Z)V

    return-void
.end method

.method public writeDate(Lcom/alibaba/fastjson2/JSONWriter;J)V
    .locals 1

    const/4 v0, 0x1

    .line 667
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeDate(Lcom/alibaba/fastjson2/JSONWriter;ZJ)V

    return-void
.end method

.method public writeDate(Lcom/alibaba/fastjson2/JSONWriter;ZJ)V
    .locals 25

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    .line 671
    iget-boolean v3, v0, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz v3, :cond_0

    .line 672
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeMillis(J)V

    return-void

    .line 678
    :cond_0
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 679
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/writer/FieldWriter;->isDateFormatMillis()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->isDateFormatMillis()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_3

    .line 687
    :cond_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object v4

    .line 689
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getDateFormat()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    .line 691
    invoke-static/range {p3 .. p4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    .line 692
    invoke-virtual {v1}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v2

    .line 694
    invoke-virtual {v4}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v4

    .line 695
    invoke-virtual {v4, v1}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v1

    .line 697
    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    const-wide/32 v4, 0x15180

    .line 698
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v6

    .line 699
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    const-wide/32 v2, 0xafaa8

    add-long/2addr v6, v2

    const-wide/16 v2, 0x3c

    sub-long/2addr v6, v2

    const-wide/16 v4, 0x0

    cmp-long v8, v6, v4

    const-wide/16 v9, 0x1

    const-wide/32 v11, 0x23ab1

    const-wide/16 v13, 0x190

    if-gez v8, :cond_2

    add-long v15, v6, v9

    .line 711
    div-long/2addr v15, v11

    sub-long v2, v15, v9

    mul-long v15, v2, v13

    neg-long v2, v2

    mul-long/2addr v2, v11

    add-long/2addr v6, v2

    goto :goto_0

    :cond_2
    move-wide v15, v4

    :goto_0
    mul-long v2, v6, v13

    const-wide/16 v17, 0x24f

    add-long v2, v2, v17

    .line 715
    div-long/2addr v2, v11

    const-wide/16 v11, 0x16d

    mul-long v17, v2, v11

    const-wide/16 v19, 0x4

    .line 716
    div-long v21, v2, v19

    add-long v17, v17, v21

    const-wide/16 v21, 0x64

    div-long v23, v2, v21

    sub-long v17, v17, v23

    div-long v23, v2, v13

    add-long v17, v17, v23

    sub-long v17, v6, v17

    cmp-long v4, v17, v4

    if-gez v4, :cond_3

    sub-long/2addr v2, v9

    mul-long/2addr v11, v2

    .line 720
    div-long v4, v2, v19

    add-long/2addr v11, v4

    div-long v4, v2, v21

    sub-long/2addr v11, v4

    div-long v4, v2, v13

    add-long/2addr v11, v4

    sub-long v17, v6, v11

    :cond_3
    move-wide/from16 v4, v17

    add-long/2addr v2, v15

    long-to-int v4, v4

    mul-int/lit8 v5, v4, 0x5

    add-int/lit8 v5, v5, 0x2

    .line 726
    div-int/lit16 v5, v5, 0x99

    add-int/lit8 v6, v5, 0x2

    .line 727
    rem-int/lit8 v6, v6, 0xc

    add-int/lit8 v6, v6, 0x1

    mul-int/lit16 v7, v5, 0x132

    add-int/lit8 v7, v7, 0x5

    .line 728
    div-int/lit8 v7, v7, 0xa

    sub-int/2addr v4, v7

    add-int/lit8 v4, v4, 0x1

    .line 729
    div-int/lit8 v5, v5, 0xa

    int-to-long v7, v5

    add-long/2addr v2, v7

    .line 732
    sget-object v5, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v5, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v2

    int-to-long v7, v1

    .line 742
    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1, v7, v8}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    const-wide/16 v9, 0xe10

    .line 743
    div-long v9, v7, v9

    long-to-int v5, v9

    mul-int/lit16 v1, v5, 0xe10

    int-to-long v9, v1

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x3c

    .line 745
    div-long v9, v7, v9

    long-to-int v9, v9

    mul-int/lit8 v1, v9, 0x3c

    int-to-long v10, v1

    sub-long/2addr v7, v10

    long-to-int v7, v7

    if-eqz p2, :cond_4

    .line 754
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    :cond_4
    move-object/from16 v0, p1

    move v1, v2

    move v2, v6

    move v3, v4

    move v4, v5

    move v5, v9

    move v6, v7

    .line 756
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateTime19(IIIIII)V

    goto :goto_1

    .line 760
    :cond_5
    invoke-static/range {p3 .. p4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    .line 759
    invoke-static {v1, v4}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    .line 762
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/writer/FieldWriter;->isDateFormatISO8601()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->isDateFormatISO8601()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    .line 775
    :cond_6
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getDateFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_7

    .line 778
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 780
    :cond_7
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    :goto_1
    return-void

    .line 763
    :cond_8
    :goto_2
    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->getYear()I

    move-result v2

    .line 764
    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->getMonthValue()I

    move-result v3

    .line 765
    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v4

    .line 766
    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->getHour()I

    move-result v5

    .line 767
    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->getMinute()I

    move-result v6

    .line 768
    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->getSecond()I

    move-result v7

    .line 769
    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->getNano()I

    move-result v8

    const v9, 0xf4240

    div-int/2addr v8, v9

    .line 770
    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v9

    const/4 v10, 0x1

    move-object/from16 v0, p1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    .line 771
    invoke-virtual/range {v0 .. v9}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateTimeISO8601(IIIIIIIIZ)V

    return-void

    :cond_9
    :goto_3
    if-eqz p2, :cond_a

    .line 681
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 683
    :cond_a
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    return-void
.end method

.method public writeDate(Lcom/alibaba/fastjson2/JSONWriter;ZLjava/util/Date;)V
    .locals 2

    if-nez p3, :cond_1

    if-eqz p2, :cond_0

    .line 656
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 659
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 663
    :cond_1
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeDate(Lcom/alibaba/fastjson2/JSONWriter;ZJ)V

    return-void
.end method

.method public writeDouble(Lcom/alibaba/fastjson2/JSONWriter;D)V
    .locals 1

    .line 598
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 599
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {p1, p2, p3, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(DLjava/text/DecimalFormat;)V

    goto :goto_0

    .line 602
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(D)V

    :goto_0
    return-void
.end method

.method public writeDouble(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Double;)V
    .locals 6

    if-nez p2, :cond_1

    .line 639
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    move-result-wide v0

    .line 640
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-eqz p2, :cond_0

    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    cmp-long p2, v0, v4

    if-nez p2, :cond_0

    .line 643
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 644
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNumberNull()V

    :cond_0
    return-void

    .line 649
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 650
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(D)V

    return-void
.end method

.method public writeDouble(Lcom/alibaba/fastjson2/JSONWriter;[D)V
    .locals 1

    if-nez p2, :cond_0

    .line 629
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteNulls()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 633
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 634
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble([D)V

    return-void
.end method

.method public writeEnum(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Enum;)V
    .locals 0

    .line 483
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 484
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeEnum(Ljava/lang/Enum;)V

    return-void
.end method

.method public writeEnumJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Enum;)V
    .locals 0

    .line 177
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V
    .locals 4

    .line 197
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    if-eqz v0, :cond_0

    .line 199
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldNameSymbol(Lcom/alibaba/fastjson2/JSONWriter;Lcom/alibaba/fastjson2/SymbolTable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameJSONB:[B

    iget-wide v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([BJ)V

    return-void

    .line 206
    :cond_1
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->useSingleQuote:Z

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getFeatures()J

    move-result-wide v0

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->UnquoteFieldName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 207
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->utf8:Z

    if-eqz v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameWithColonUTF8:[B

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([B)V

    return-void

    .line 212
    :cond_2
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->utf16:Z

    if-eqz v0, :cond_3

    .line 213
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameWithColonUTF16:[C

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([C)V

    return-void

    .line 218
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    return-void
.end method

.method public final writeFieldNameJSONB(Lcom/alibaba/fastjson2/JSONWriter;)V
    .locals 3

    .line 189
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    if-eqz v0, :cond_0

    .line 190
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldNameSymbol(Lcom/alibaba/fastjson2/JSONWriter;Lcom/alibaba/fastjson2/SymbolTable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameJSONB:[B

    iget-wide v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([BJ)V

    return-void
.end method

.method public writeFloat(Lcom/alibaba/fastjson2/JSONWriter;F)V
    .locals 1

    .line 589
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 590
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeFloat(FLjava/text/DecimalFormat;)V

    goto :goto_0

    .line 593
    :cond_0
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeFloat(F)V

    :goto_0
    return-void
.end method

.method public writeFloat(Lcom/alibaba/fastjson2/JSONWriter;[F)V
    .locals 1

    if-nez p2, :cond_0

    .line 620
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteNulls()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 624
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 625
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeFloat([F)V

    return-void
.end method

.method public writeInt16(Lcom/alibaba/fastjson2/JSONWriter;[S)V
    .locals 1

    if-nez p2, :cond_0

    .line 529
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteNulls()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 533
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 534
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt16([S)V

    return-void
.end method

.method public writeInt32(Lcom/alibaba/fastjson2/JSONWriter;I)V
    .locals 0

    .line 538
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 539
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    return-void
.end method

.method public writeInt64(Lcom/alibaba/fastjson2/JSONWriter;J)V
    .locals 4

    .line 543
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 544
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 545
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 547
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    :goto_0
    return-void
.end method

.method public writeList(Lcom/alibaba/fastjson2/JSONWriter;Ljava/util/List;)V
    .locals 0

    .line 834
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public writeListJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/util/List;)V
    .locals 0

    .line 830
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public writeListStr(Lcom/alibaba/fastjson2/JSONWriter;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 838
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public writeListValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/util/List;)V
    .locals 0

    .line 826
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public writeListValueJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/util/List;)V
    .locals 0

    .line 822
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public writeString(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/String;)V
    .locals 6

    .line 552
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    if-nez p2, :cond_0

    .line 554
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v2, v4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-string p2, ""

    .line 555
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void

    .line 559
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->trim:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 560
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 563
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->symbol:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz v0, :cond_2

    .line 564
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeSymbol(Ljava/lang/String;)V

    goto :goto_0

    .line 566
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->raw:Z

    if-eqz v0, :cond_3

    .line 567
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    goto :goto_0

    .line 569
    :cond_3
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public writeString(Lcom/alibaba/fastjson2/JSONWriter;[C)V
    .locals 2

    if-nez p2, :cond_0

    .line 575
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteNulls()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 579
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    if-nez p2, :cond_1

    .line 581
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeStringNull()V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 585
    array-length v1, p2

    invoke-virtual {p1, p2, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString([CII)V

    return-void
.end method

.method public abstract writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "TT;)V"
        }
    .end annotation
.end method
