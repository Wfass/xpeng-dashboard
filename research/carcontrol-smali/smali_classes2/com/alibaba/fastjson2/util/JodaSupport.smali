.class public Lcom/alibaba/fastjson2/util/JodaSupport;
.super Ljava/lang/Object;
.source "JodaSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeWriter;,
        Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateWriter;,
        Lcom/alibaba/fastjson2/util/JodaSupport$ChronologyReader;,
        Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateReader;,
        Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeReader;,
        Lcom/alibaba/fastjson2/util/JodaSupport$InstantReader;,
        Lcom/alibaba/fastjson2/util/JodaSupport$GregorianChronologyWriter;,
        Lcom/alibaba/fastjson2/util/JodaSupport$ISOChronologyWriter;,
        Lcom/alibaba/fastjson2/util/JodaSupport$DateTime2ZDT;,
        Lcom/alibaba/fastjson2/util/JodaSupport$DateTimeFromZDT;
    }
.end annotation


# static fields
.field static final HASH_CHRONOLOGY:J

.field static final HASH_DAY:J

.field static final HASH_HOUR:J

.field static final HASH_MILLIS:J

.field static final HASH_MINUTE:J

.field static final HASH_MONTH:J

.field static final HASH_SECOND:J

.field static final HASH_YEAR:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "year"

    .line 25
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/util/JodaSupport;->HASH_YEAR:J

    const-string v0, "month"

    .line 26
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/util/JodaSupport;->HASH_MONTH:J

    const-string v0, "day"

    .line 27
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/util/JodaSupport;->HASH_DAY:J

    const-string v0, "hour"

    .line 28
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/util/JodaSupport;->HASH_HOUR:J

    const-string v0, "minute"

    .line 29
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/util/JodaSupport;->HASH_MINUTE:J

    const-string/jumbo v0, "second"

    .line 30
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/util/JodaSupport;->HASH_SECOND:J

    const-string v0, "millis"

    .line 31
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/util/JodaSupport;->HASH_MILLIS:J

    const-string v0, "chronology"

    .line 32
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/util/JodaSupport;->HASH_CHRONOLOGY:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createChronologyReader(Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1

    .line 43
    new-instance v0, Lcom/alibaba/fastjson2/util/JodaSupport$ChronologyReader;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/util/JodaSupport$ChronologyReader;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static createGregorianChronologyWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    .line 59
    new-instance v0, Lcom/alibaba/fastjson2/util/JodaSupport$GregorianChronologyWriter;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/util/JodaSupport$GregorianChronologyWriter;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static createISOChronologyWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    .line 63
    new-instance v0, Lcom/alibaba/fastjson2/util/JodaSupport$ISOChronologyWriter;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/util/JodaSupport$ISOChronologyWriter;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static createInstantReader(Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1

    .line 55
    new-instance v0, Lcom/alibaba/fastjson2/util/JodaSupport$InstantReader;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/util/JodaSupport$InstantReader;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static createLocalDateReader(Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1

    .line 47
    new-instance v0, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateReader;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateReader;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static createLocalDateTimeReader(Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1

    .line 51
    new-instance v0, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeReader;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeReader;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static createLocalDateTimeWriter(Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    .line 35
    new-instance v0, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeWriter;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeWriter;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createLocalDateWriter(Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    .line 39
    new-instance v0, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateWriter;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateWriter;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method
