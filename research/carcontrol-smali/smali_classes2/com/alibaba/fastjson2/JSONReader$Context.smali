.class public final Lcom/alibaba/fastjson2/JSONReader$Context;
.super Ljava/lang/Object;
.source "JSONReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Context"
.end annotation


# instance fields
.field arraySupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation
.end field

.field autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

.field bufferSize:I

.field dateFormat:Ljava/lang/String;

.field dateFormatter:Ljava/time/format/DateTimeFormatter;

.field extraProcessor:Lcom/alibaba/fastjson2/filter/ExtraProcessor;

.field features:J

.field formatHasDay:Z

.field formatHasHour:Z

.field formatISO8601:Z

.field formatMillis:Z

.field formatUnixTime:Z

.field formatyyyyMMdd8:Z

.field formatyyyyMMddhhmmss19:Z

.field formatyyyyMMddhhmmssT19:Z

.field locale:Ljava/util/Locale;

.field maxLevel:I

.field objectSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field

.field final provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

.field final symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

.field timeZone:Ljava/util/TimeZone;

.field useSimpleFormatter:Z

.field yyyyMMddhhmm16:Z

.field zoneId:Ljava/time/ZoneId;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V
    .locals 2

    .line 4012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    .line 3997
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->maxLevel:I

    const/high16 v0, 0x80000

    .line 3998
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->bufferSize:I

    .line 4013
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFeatures:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 4014
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 4015
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectSupplier:Ljava/util/function/Supplier;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->objectSupplier:Ljava/util/function/Supplier;

    .line 4016
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->defaultArraySupplier:Ljava/util/function/Supplier;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->arraySupplier:Ljava/util/function/Supplier;

    const/4 p1, 0x0

    .line 4017
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 4018
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderZoneId:Ljava/time/ZoneId;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->zoneId:Ljava/time/ZoneId;

    .line 4020
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFormat:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 4022
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->setDateFormat(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;J)V
    .locals 1

    .line 4026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    .line 3997
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->maxLevel:I

    const/high16 v0, 0x80000

    .line 3998
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->bufferSize:I

    .line 4027
    iput-wide p2, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 4028
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 4029
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectSupplier:Ljava/util/function/Supplier;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->objectSupplier:Ljava/util/function/Supplier;

    .line 4030
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->defaultArraySupplier:Ljava/util/function/Supplier;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->arraySupplier:Ljava/util/function/Supplier;

    const/4 p1, 0x0

    .line 4031
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 4032
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderZoneId:Ljava/time/ZoneId;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->zoneId:Ljava/time/ZoneId;

    .line 4034
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFormat:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 4036
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->setDateFormat(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/SymbolTable;)V
    .locals 2

    .line 4115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    .line 3997
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->maxLevel:I

    const/high16 v0, 0x80000

    .line 3998
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->bufferSize:I

    .line 4116
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFeatures:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 4117
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 4118
    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 4119
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderZoneId:Ljava/time/ZoneId;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->zoneId:Ljava/time/ZoneId;

    .line 4121
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFormat:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 4123
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->setDateFormat(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs constructor <init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/SymbolTable;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 5

    .line 4127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    .line 3997
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->maxLevel:I

    const/high16 v0, 0x80000

    .line 3998
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->bufferSize:I

    .line 4128
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFeatures:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 4129
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 4130
    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 4131
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderZoneId:Ljava/time/ZoneId;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->zoneId:Ljava/time/ZoneId;

    .line 4133
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFormat:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 4135
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->setDateFormat(Ljava/lang/String;)V

    .line 4138
    :cond_0
    array-length p1, p3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    aget-object v0, p3, p2

    .line 4139
    iget-wide v1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    iget-wide v3, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long v0, v1, v3

    iput-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public varargs constructor <init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/SymbolTable;[Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 4

    .line 4143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    .line 3997
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->maxLevel:I

    const/high16 v0, 0x80000

    .line 3998
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->bufferSize:I

    .line 4144
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFeatures:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 4145
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 4146
    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 4147
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderZoneId:Ljava/time/ZoneId;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->zoneId:Ljava/time/ZoneId;

    .line 4149
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson2/JSONReader$Context;->config([Lcom/alibaba/fastjson2/filter/Filter;)V

    .line 4151
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFormat:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 4153
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->setDateFormat(Ljava/lang/String;)V

    .line 4156
    :cond_0
    array-length p1, p4

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    aget-object p3, p4, p2

    .line 4157
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    iget-wide v2, p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public varargs constructor <init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 5

    .line 4095
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    .line 3997
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->maxLevel:I

    const/high16 v0, 0x80000

    .line 3998
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->bufferSize:I

    .line 4096
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFeatures:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 4097
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 4098
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectSupplier:Ljava/util/function/Supplier;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->objectSupplier:Ljava/util/function/Supplier;

    .line 4099
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->defaultArraySupplier:Ljava/util/function/Supplier;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->arraySupplier:Ljava/util/function/Supplier;

    const/4 p1, 0x0

    .line 4100
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 4101
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderZoneId:Ljava/time/ZoneId;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->zoneId:Ljava/time/ZoneId;

    .line 4103
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->config(Lcom/alibaba/fastjson2/filter/Filter;)V

    .line 4105
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFormat:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 4107
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->setDateFormat(Ljava/lang/String;)V

    .line 4110
    :cond_0
    array-length p1, p3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    aget-object v0, p3, p2

    .line 4111
    iget-wide v1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    iget-wide v3, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long v0, v1, v3

    iput-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public varargs constructor <init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 6

    .line 4077
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    .line 3997
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->maxLevel:I

    const/high16 v0, 0x80000

    .line 3998
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->bufferSize:I

    .line 4078
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFeatures:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 4079
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 4080
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectSupplier:Ljava/util/function/Supplier;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->objectSupplier:Ljava/util/function/Supplier;

    .line 4081
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->defaultArraySupplier:Ljava/util/function/Supplier;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->arraySupplier:Ljava/util/function/Supplier;

    const/4 p1, 0x0

    .line 4082
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 4083
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderZoneId:Ljava/time/ZoneId;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->zoneId:Ljava/time/ZoneId;

    .line 4085
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFormat:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 4087
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->setDateFormat(Ljava/lang/String;)V

    .line 4090
    :cond_0
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v1, p2, v0

    .line 4091
    iget-wide v2, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    iget-wide v4, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long v1, v2, v4

    iput-wide v1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 7

    .line 4058
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    .line 3997
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->maxLevel:I

    const/high16 v0, 0x80000

    .line 3998
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->bufferSize:I

    .line 4059
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFeatures:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 4060
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 4061
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectSupplier:Ljava/util/function/Supplier;

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->objectSupplier:Ljava/util/function/Supplier;

    .line 4062
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultArraySupplier:Ljava/util/function/Supplier;

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->arraySupplier:Ljava/util/function/Supplier;

    const/4 v0, 0x0

    .line 4063
    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 4064
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderZoneId:Ljava/time/ZoneId;

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->zoneId:Ljava/time/ZoneId;

    .line 4066
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFormat:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4068
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->setDateFormat(Ljava/lang/String;)V

    .line 4071
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 4072
    iget-wide v3, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    iget-wide v5, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long v2, v3, v5

    iput-wide v2, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4074
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->setDateFormat(Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 7

    .line 4040
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    .line 3997
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->maxLevel:I

    const/high16 v0, 0x80000

    .line 3998
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->bufferSize:I

    .line 4041
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFeatures:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 4042
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 4043
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectSupplier:Ljava/util/function/Supplier;

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->objectSupplier:Ljava/util/function/Supplier;

    .line 4044
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultArraySupplier:Ljava/util/function/Supplier;

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->arraySupplier:Ljava/util/function/Supplier;

    const/4 v0, 0x0

    .line 4045
    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 4046
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderZoneId:Ljava/time/ZoneId;

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->zoneId:Ljava/time/ZoneId;

    .line 4048
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFormat:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4050
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->setDateFormat(Ljava/lang/String;)V

    .line 4053
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 4054
    iget-wide v3, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    iget-wide v5, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long v2, v3, v5

    iput-wide v2, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public config(Lcom/alibaba/fastjson2/JSONReader$Feature;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 4451
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    iget-wide p1, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    goto :goto_0

    .line 4453
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    iget-wide p1, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    not-long p1, p1

    and-long/2addr p1, v0

    iput-wide p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    :goto_0
    return-void
.end method

.method public config(Lcom/alibaba/fastjson2/filter/Filter;)V
    .locals 1

    .line 4408
    instance-of v0, p1, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    if-eqz v0, :cond_0

    .line 4409
    move-object v0, p1

    check-cast v0, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    .line 4412
    :cond_0
    instance-of v0, p1, Lcom/alibaba/fastjson2/filter/ExtraProcessor;

    if-eqz v0, :cond_1

    .line 4413
    check-cast p1, Lcom/alibaba/fastjson2/filter/ExtraProcessor;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->extraProcessor:Lcom/alibaba/fastjson2/filter/ExtraProcessor;

    :cond_1
    return-void
.end method

.method public varargs config(Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 6

    .line 4394
    instance-of v0, p1, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    if-eqz v0, :cond_0

    .line 4395
    move-object v0, p1

    check-cast v0, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    .line 4398
    :cond_0
    instance-of v0, p1, Lcom/alibaba/fastjson2/filter/ExtraProcessor;

    if-eqz v0, :cond_1

    .line 4399
    check-cast p1, Lcom/alibaba/fastjson2/filter/ExtraProcessor;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->extraProcessor:Lcom/alibaba/fastjson2/filter/ExtraProcessor;

    .line 4402
    :cond_1
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    aget-object v1, p2, v0

    .line 4403
    iget-wide v2, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    iget-wide v4, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long v1, v2, v4

    iput-wide v1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public varargs config([Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 5

    const/4 v0, 0x0

    .line 4388
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 4389
    iget-wide v1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    aget-object v3, p1, v0

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public config([Lcom/alibaba/fastjson2/filter/Filter;)V
    .locals 4

    .line 4434
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 4435
    instance-of v3, v2, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    if-eqz v3, :cond_0

    .line 4436
    move-object v3, v2

    check-cast v3, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    iput-object v3, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    .line 4439
    :cond_0
    instance-of v3, v2, Lcom/alibaba/fastjson2/filter/ExtraProcessor;

    if-eqz v3, :cond_1

    .line 4440
    check-cast v2, Lcom/alibaba/fastjson2/filter/ExtraProcessor;

    iput-object v2, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->extraProcessor:Lcom/alibaba/fastjson2/filter/ExtraProcessor;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public varargs config([Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 6

    .line 4418
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 4419
    instance-of v4, v3, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    if-eqz v4, :cond_0

    .line 4420
    move-object v4, v3

    check-cast v4, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    iput-object v4, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    .line 4423
    :cond_0
    instance-of v4, v3, Lcom/alibaba/fastjson2/filter/ExtraProcessor;

    if-eqz v4, :cond_1

    .line 4424
    check-cast v3, Lcom/alibaba/fastjson2/filter/ExtraProcessor;

    iput-object v3, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->extraProcessor:Lcom/alibaba/fastjson2/filter/ExtraProcessor;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4428
    :cond_2
    array-length p1, p2

    :goto_1
    if-ge v1, p1, :cond_3

    aget-object v0, p2, v1

    .line 4429
    iget-wide v2, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public getArraySupplier()Ljava/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier<",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation

    .line 4247
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->arraySupplier:Ljava/util/function/Supplier;

    return-object v0
.end method

.method public getBufferSize()I
    .locals 1

    .line 4360
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->bufferSize:I

    return v0
.end method

.method public getContextAutoTypeBeforeHandler()Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;
    .locals 1

    .line 4215
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    return-object v0
.end method

.method public getDateFormat()Ljava/lang/String;
    .locals 1

    .line 4268
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->dateFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getDateFormatter()Ljava/time/format/DateTimeFormatter;
    .locals 2

    .line 4255
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->dateFormatter:Ljava/time/format/DateTimeFormatter;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->dateFormat:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatMillis:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatISO8601:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatUnixTime:Z

    if-nez v1, :cond_1

    .line 4256
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->locale:Ljava/util/Locale;

    if-nez v1, :cond_0

    .line 4257
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    goto :goto_0

    .line 4258
    :cond_0
    invoke-static {v0, v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->dateFormatter:Ljava/time/format/DateTimeFormatter;

    .line 4260
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->dateFormatter:Ljava/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public getExtraProcessor()Lcom/alibaba/fastjson2/filter/ExtraProcessor;
    .locals 1

    .line 4231
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->extraProcessor:Lcom/alibaba/fastjson2/filter/ExtraProcessor;

    return-object v0
.end method

.method public getFeatures()J
    .locals 2

    .line 4344
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    return-wide v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 4372
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getMaxLevel()I
    .locals 1

    .line 4352
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->maxLevel:I

    return v0
.end method

.method public getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 4

    .line 4190
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4191
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public getObjectReaderAutoType(J)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1

    .line 4199
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 3

    .line 4203
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    if-eqz v0, :cond_1

    .line 4204
    iget-wide v1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4206
    iget-wide p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p1, v1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4207
    :goto_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {p2, v0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1

    .line 4211
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    iget-wide v1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/String;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 3

    .line 4219
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    if-eqz v0, :cond_1

    .line 4220
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4222
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide p1, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4223
    :goto_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {p2, v0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1

    .line 4227
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    iget-wide v1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    or-long/2addr p3, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/String;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public getObjectSupplier()Ljava/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation

    .line 4239
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->objectSupplier:Ljava/util/function/Supplier;

    return-object v0
.end method

.method public getProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;
    .locals 1

    .line 4195
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 4380
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public getZoneId()Ljava/time/ZoneId;
    .locals 1

    .line 4337
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->zoneId:Ljava/time/ZoneId;

    if-nez v0, :cond_0

    .line 4338
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->zoneId:Ljava/time/ZoneId;

    .line 4340
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->zoneId:Ljava/time/ZoneId;

    return-object v0
.end method

.method public isEnabled(Lcom/alibaba/fastjson2/JSONReader$Feature;)Z
    .locals 4

    .line 4446
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    iget-wide v2, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isFormatHasHour()Z
    .locals 1

    .line 4186
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatHasHour:Z

    return v0
.end method

.method public isFormatISO8601()Z
    .locals 1

    .line 4182
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatISO8601:Z

    return v0
.end method

.method public isFormatMillis()Z
    .locals 1

    .line 4178
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatMillis:Z

    return v0
.end method

.method public isFormatUnixTime()Z
    .locals 1

    .line 4162
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatUnixTime:Z

    return v0
.end method

.method public isFormatyyyyMMdd8()Z
    .locals 1

    .line 4174
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMdd8:Z

    return v0
.end method

.method public isFormatyyyyMMddhhmmss19()Z
    .locals 1

    .line 4166
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMddhhmmss19:Z

    return v0
.end method

.method public isFormatyyyyMMddhhmmssT19()Z
    .locals 1

    .line 4170
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMddhhmmssT19:Z

    return v0
.end method

.method public setArraySupplier(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/util/List;",
            ">;)V"
        }
    .end annotation

    .line 4251
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->arraySupplier:Ljava/util/function/Supplier;

    return-void
.end method

.method public setBufferSize(I)Lcom/alibaba/fastjson2/JSONReader$Context;
    .locals 1

    if-ltz p1, :cond_0

    .line 4367
    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->bufferSize:I

    return-object p0

    .line 4365
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "buffer size can not be less than zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4273
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_d

    .line 4280
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    :goto_0
    move v3, v4

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "iso8601"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v3, "yyyy-MM-ddTHH:mm:ss"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x7

    goto :goto_1

    :sswitch_2
    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_3
    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_4
    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v3, "unixtime"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_6
    const-string/jumbo v3, "yyyyMMddHHmmssSSSZ"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_7
    const-string v3, "millis"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_0

    :cond_8
    move v3, v2

    goto :goto_1

    :sswitch_8
    const-string/jumbo v3, "yyyy-MM-dd HH:mm"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_0

    :cond_9
    move v3, v1

    :goto_1
    packed-switch v3, :pswitch_data_0

    const/16 v3, 0x64

    .line 4312
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v4, :cond_a

    move v3, v2

    goto :goto_2

    :cond_a
    move v3, v1

    :goto_2
    const/16 v5, 0x48

    .line 4313
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v4, :cond_c

    const/16 v5, 0x68

    .line 4314
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v4, :cond_c

    const/16 v5, 0x4b

    .line 4315
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v4, :cond_c

    const/16 v5, 0x6b

    .line 4316
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v4, :cond_b

    goto :goto_3

    :cond_b
    move v2, v1

    :cond_c
    :goto_3
    move v6, v1

    move v5, v2

    move v4, v3

    move v2, v6

    goto :goto_6

    :pswitch_0
    move v3, v1

    goto :goto_7

    .line 4299
    :pswitch_1
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMddhhmmssT19:Z

    move v3, v1

    move v6, v3

    move v4, v2

    move v5, v4

    goto :goto_4

    :pswitch_2
    move v3, v1

    goto :goto_5

    .line 4304
    :pswitch_3
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMdd8:Z

    move v3, v1

    move v5, v3

    move v6, v5

    move v4, v2

    goto :goto_4

    :pswitch_4
    move v3, v1

    move v4, v3

    move v5, v4

    move v6, v5

    move v1, v2

    :goto_4
    move v2, v6

    goto :goto_8

    :pswitch_5
    move v3, v2

    .line 4294
    :goto_5
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMddhhmmss19:Z

    move v4, v2

    move v5, v4

    move v6, v3

    move v2, v1

    :goto_6
    move v3, v2

    goto :goto_8

    :pswitch_6
    move v4, v1

    move v5, v4

    move v6, v5

    move v3, v2

    goto :goto_4

    .line 4309
    :pswitch_7
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->yyyyMMddhhmm16:Z

    :cond_d
    move v2, v1

    move v3, v2

    :goto_7
    move v4, v3

    move v5, v4

    move v6, v5

    .line 4323
    :goto_8
    iget-object v7, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->dateFormat:Ljava/lang/String;

    invoke-static {v7, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 4324
    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->dateFormatter:Ljava/time/format/DateTimeFormatter;

    .line 4326
    :cond_e
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->dateFormat:Ljava/lang/String;

    .line 4327
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatUnixTime:Z

    .line 4328
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatMillis:Z

    .line 4329
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatISO8601:Z

    .line 4331
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatHasDay:Z

    .line 4332
    iput-boolean v5, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatHasHour:Z

    .line 4333
    iput-boolean v6, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->useSimpleFormatter:Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x45dc2bc6 -> :sswitch_8
        -0x400565ba -> :sswitch_7
        -0x14bad9d9 -> :sswitch_6
        -0x112ad7ab -> :sswitch_5
        -0x985fe00 -> :sswitch_4
        0x4f76f1a0 -> :sswitch_3
        0x6b2ed43a -> :sswitch_2
        0x6d5d7dd4 -> :sswitch_1
        0x7ce21384 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setDateFormatter(Ljava/time/format/DateTimeFormatter;)V
    .locals 0

    .line 4264
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->dateFormatter:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public setExtraProcessor(Lcom/alibaba/fastjson2/filter/ExtraProcessor;)V
    .locals 0

    .line 4235
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->extraProcessor:Lcom/alibaba/fastjson2/filter/ExtraProcessor;

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    .line 4376
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->locale:Ljava/util/Locale;

    return-void
.end method

.method public setMaxLevel(I)V
    .locals 0

    .line 4356
    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->maxLevel:I

    return-void
.end method

.method public setObjectSupplier(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Map;",
            ">;)V"
        }
    .end annotation

    .line 4243
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->objectSupplier:Ljava/util/function/Supplier;

    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0

    .line 4384
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->timeZone:Ljava/util/TimeZone;

    return-void
.end method

.method public setZoneId(Ljava/time/ZoneId;)V
    .locals 0

    .line 4348
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->zoneId:Ljava/time/ZoneId;

    return-void
.end method
