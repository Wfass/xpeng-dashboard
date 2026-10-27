.class public abstract Lcom/alibaba/fastjson/JSON;
.super Ljava/lang/Object;
.source "JSON.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/JSON$Cache;
    }
.end annotation


# static fields
.field static final CACHE:Lcom/alibaba/fastjson/JSON$Cache;

.field static final CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/alibaba/fastjson/JSON$Cache;",
            "[C>;"
        }
    .end annotation
.end field

.field public static DEFAULT_GENERATE_FEATURE:I = 0x0

.field public static DEFAULT_PARSER_FEATURE:I = 0x0

.field private static DEFAULT_TIME_ZONE:Ljava/util/TimeZone; = null

.field public static DEFAULT_TYPE_KEY:Ljava/lang/String; = null

.field public static DEFFAULT_DATE_FORMAT:Ljava/lang/String; = null

.field public static final VERSION:Ljava/lang/String; = "2.0.43"

.field static final arraySupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation
.end field

.field public static defaultLocale:Ljava/util/Locale;

.field static final defaultSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field

.field public static defaultTimeZone:Ljava/util/TimeZone;

.field static final orderedSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_TIME_ZONE:Ljava/util/TimeZone;

    .line 43
    new-instance v0, Lcom/alibaba/fastjson/JSON$Cache;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSON$Cache;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/JSON;->CACHE:Lcom/alibaba/fastjson/JSON$Cache;

    .line 44
    const-class v0, Lcom/alibaba/fastjson/JSON$Cache;

    const-class v1, [C

    const-string v2, "chars"

    .line 45
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/JSON;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 46
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_TIME_ZONE:Ljava/util/TimeZone;

    sput-object v0, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    .line 47
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    const-string v0, "@type"

    .line 48
    sput-object v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    .line 49
    sput-object v0, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AutoCloseSource:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 56
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->InternFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 57
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 58
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 59
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 60
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 61
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->SortFeidFastMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 62
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 63
    sput v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 68
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 69
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 70
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 71
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 73
    sput v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    .line 76
    sget-object v0, Lcom/alibaba/fastjson/-$$Lambda$dS5n1fVRcrsI0ZZyt-Kg624LR4Y;->INSTANCE:Lcom/alibaba/fastjson/-$$Lambda$dS5n1fVRcrsI0ZZyt-Kg624LR4Y;

    sput-object v0, Lcom/alibaba/fastjson/JSON;->arraySupplier:Ljava/util/function/Supplier;

    .line 77
    sget-object v0, Lcom/alibaba/fastjson/JSONObject$Creator;->INSTANCE:Lcom/alibaba/fastjson/JSONObject$Creator;

    sput-object v0, Lcom/alibaba/fastjson/JSON;->defaultSupplier:Ljava/util/function/Supplier;

    .line 78
    sget-object v0, Lcom/alibaba/fastjson/-$$Lambda$JSON$dPbhLQkjvKUqpWnhZGZTLZ75H7w;->INSTANCE:Lcom/alibaba/fastjson/-$$Lambda$JSON$dPbhLQkjvKUqpWnhZGZTLZ75H7w;

    sput-object v0, Lcom/alibaba/fastjson/JSON;->orderedSupplier:Ljava/util/function/Supplier;

    .line 81
    sget-boolean v0, Labf;->r:Z

    .line 82
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v1

    if-nez v0, :cond_0

    .line 84
    sget-object v2, Laar;->f:Laar;

    invoke-virtual {v1, v2}, Lzx;->a(Lsm;)Z

    .line 86
    :cond_0
    new-instance v2, Lcom/alibaba/fastjson/Fastjson1xReaderModule;

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson/Fastjson1xReaderModule;-><init>(Lzx;)V

    invoke-virtual {v1, v2}, Lzx;->a(Lsm;)Z

    .line 88
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->DEFAULT_PROVIDER:Lahq;

    if-nez v0, :cond_1

    .line 90
    sget-object v0, Laas;->a:Laas;

    invoke-virtual {v1, v0}, Lahq;->a(Lso;)Z

    .line 93
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/Fastjson1xWriterModule;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/Fastjson1xWriterModule;-><init>(Lahq;)V

    invoke-virtual {v1, v0}, Lahq;->a(Lso;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMixInAnnotations(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 2160
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    .line 2161
    check-cast p0, Ljava/lang/Class;

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {v0, p0, p1}, Lzx;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 2163
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->DEFAULT_PROVIDER:Lahq;

    .line 2164
    invoke-virtual {v0, p0, p1}, Lahq;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static clearMixInAnnotations()V
    .locals 1

    .line 2177
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    .line 2178
    invoke-virtual {v0}, Lzx;->a()V

    .line 2180
    invoke-static {}, Lcom/alibaba/fastjson2/d;->d()Lahq;

    move-result-object v0

    .line 2181
    invoke-virtual {v0}, Lahq;->b()V

    return-void
.end method

.method public static configFilter(Lcom/alibaba/fastjson2/ab$a;Lcom/alibaba/fastjson/serializer/SerializeFilter;)V
    .locals 1

    .line 1279
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/NameFilter;

    if-eqz v0, :cond_0

    .line 1280
    move-object v0, p1

    check-cast v0, Lcom/alibaba/fastjson/serializer/NameFilter;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/ab$a;->a(Lqr;)V

    .line 1283
    :cond_0
    instance-of v0, p1, Lqw;

    if-eqz v0, :cond_1

    .line 1284
    move-object v0, p1

    check-cast v0, Lqw;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/ab$a;->a(Lqw;)V

    .line 1287
    :cond_1
    instance-of v0, p1, Lqu;

    if-eqz v0, :cond_2

    .line 1288
    move-object v0, p1

    check-cast v0, Lqu;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/ab$a;->a(Lqu;)V

    .line 1291
    :cond_2
    instance-of v0, p1, Lqt;

    if-eqz v0, :cond_3

    .line 1292
    move-object v0, p1

    check-cast v0, Lqt;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/ab$a;->a(Lqt;)V

    .line 1295
    :cond_3
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    if-eqz v0, :cond_4

    .line 1296
    move-object v0, p1

    check-cast v0, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/ab$a;->a(Lqj;)V

    .line 1299
    :cond_4
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/AfterFilter;

    if-eqz v0, :cond_5

    .line 1300
    move-object v0, p1

    check-cast v0, Lcom/alibaba/fastjson/serializer/AfterFilter;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/ab$a;->a(Lqh;)V

    .line 1303
    :cond_5
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/LabelFilter;

    if-eqz v0, :cond_6

    .line 1304
    move-object v0, p1

    check-cast v0, Lcom/alibaba/fastjson/serializer/LabelFilter;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/ab$a;->a(Lqp;)V

    .line 1307
    :cond_6
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/ContextValueFilter;

    if-eqz v0, :cond_7

    .line 1308
    check-cast p1, Lcom/alibaba/fastjson/serializer/ContextValueFilter;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/ab$a;->a(Lqm;)V

    :cond_7
    return-void
.end method

.method public static varargs createReadContext(I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/u$c;
    .locals 1

    .line 97
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/alibaba/fastjson/JSON;->createReadContext(Lzx;I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/u$c;

    move-result-object p0

    return-object p0
.end method

.method static varargs createReadContext(Lzx;I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/u$c;
    .locals 4

    .line 101
    array-length v0, p2

    const/4 v1, 0x0

    move v2, p1

    move p1, v1

    :goto_0
    if-ge p1, v0, :cond_0

    aget-object v3, p2, p1

    .line 102
    iget v3, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v2, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 105
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson2/u$c;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/u$c;-><init>(Lzx;)V

    .line 107
    sget-object p0, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    iget p0, p0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p0, v2

    const/4 p2, 0x1

    if-nez p0, :cond_1

    .line 108
    new-array p0, p2, [Lcom/alibaba/fastjson2/u$d;

    sget-object v0, Lcom/alibaba/fastjson2/u$d;->UseBigDecimalForDoubles:Lcom/alibaba/fastjson2/u$d;

    aput-object v0, p0, v1

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/u$c;->a([Lcom/alibaba/fastjson2/u$d;)V

    .line 111
    :cond_1
    sget-object p0, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    iget p0, p0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_2

    .line 112
    new-array p0, p2, [Lcom/alibaba/fastjson2/u$d;

    sget-object v0, Lcom/alibaba/fastjson2/u$d;->SupportArrayToBean:Lcom/alibaba/fastjson2/u$d;

    aput-object v0, p0, v1

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/u$c;->a([Lcom/alibaba/fastjson2/u$d;)V

    .line 115
    :cond_2
    sget-object p0, Lcom/alibaba/fastjson/parser/Feature;->ErrorOnEnumNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget p0, p0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_3

    .line 116
    new-array p0, p2, [Lcom/alibaba/fastjson2/u$d;

    sget-object v0, Lcom/alibaba/fastjson2/u$d;->ErrorOnEnumNotMatch:Lcom/alibaba/fastjson2/u$d;

    aput-object v0, p0, v1

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/u$c;->a([Lcom/alibaba/fastjson2/u$d;)V

    .line 119
    :cond_3
    sget-object p0, Lcom/alibaba/fastjson/parser/Feature;->SupportNonPublicField:Lcom/alibaba/fastjson/parser/Feature;

    iget p0, p0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_4

    .line 120
    new-array p0, p2, [Lcom/alibaba/fastjson2/u$d;

    sget-object v0, Lcom/alibaba/fastjson2/u$d;->FieldBased:Lcom/alibaba/fastjson2/u$d;

    aput-object v0, p0, v1

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/u$c;->a([Lcom/alibaba/fastjson2/u$d;)V

    .line 123
    :cond_4
    sget-object p0, Lcom/alibaba/fastjson/parser/Feature;->SupportClassForName:Lcom/alibaba/fastjson/parser/Feature;

    iget p0, p0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_5

    .line 124
    new-array p0, p2, [Lcom/alibaba/fastjson2/u$d;

    sget-object v0, Lcom/alibaba/fastjson2/u$d;->SupportClassForName:Lcom/alibaba/fastjson2/u$d;

    aput-object v0, p0, v1

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/u$c;->a([Lcom/alibaba/fastjson2/u$d;)V

    .line 127
    :cond_5
    sget-object p0, Lcom/alibaba/fastjson/parser/Feature;->TrimStringFieldValue:Lcom/alibaba/fastjson/parser/Feature;

    iget p0, p0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_6

    .line 128
    new-array p0, p2, [Lcom/alibaba/fastjson2/u$d;

    sget-object v0, Lcom/alibaba/fastjson2/u$d;->TrimString:Lcom/alibaba/fastjson2/u$d;

    aput-object v0, p0, v1

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/u$c;->a([Lcom/alibaba/fastjson2/u$d;)V

    .line 131
    :cond_6
    sget-object p0, Lcom/alibaba/fastjson/parser/Feature;->ErrorOnNotSupportAutoType:Lcom/alibaba/fastjson/parser/Feature;

    iget p0, p0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_7

    .line 132
    new-array p0, p2, [Lcom/alibaba/fastjson2/u$d;

    sget-object v0, Lcom/alibaba/fastjson2/u$d;->ErrorOnNotSupportAutoType:Lcom/alibaba/fastjson2/u$d;

    aput-object v0, p0, v1

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/u$c;->a([Lcom/alibaba/fastjson2/u$d;)V

    .line 135
    :cond_7
    sget-object p0, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    iget p0, p0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_8

    .line 136
    new-array p0, p2, [Lcom/alibaba/fastjson2/u$d;

    sget-object v0, Lcom/alibaba/fastjson2/u$d;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson2/u$d;

    aput-object v0, p0, v1

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/u$c;->a([Lcom/alibaba/fastjson2/u$d;)V

    .line 139
    :cond_8
    sget-object p0, Lcom/alibaba/fastjson/parser/Feature;->UseNativeJavaObject:Lcom/alibaba/fastjson/parser/Feature;

    iget p0, p0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_9

    .line 140
    new-array p0, p2, [Lcom/alibaba/fastjson2/u$d;

    sget-object v0, Lcom/alibaba/fastjson2/u$d;->UseNativeObject:Lcom/alibaba/fastjson2/u$d;

    aput-object v0, p0, v1

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/u$c;->a([Lcom/alibaba/fastjson2/u$d;)V

    goto :goto_2

    .line 142
    :cond_9
    sget-object p0, Lcom/alibaba/fastjson/JSON;->arraySupplier:Ljava/util/function/Supplier;

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/u$c;->b(Ljava/util/function/Supplier;)V

    .line 144
    sget-object p0, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget p0, p0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_a

    .line 145
    sget-object p0, Lcom/alibaba/fastjson/JSON;->orderedSupplier:Ljava/util/function/Supplier;

    goto :goto_1

    .line 146
    :cond_a
    sget-object p0, Lcom/alibaba/fastjson/JSON;->defaultSupplier:Ljava/util/function/Supplier;

    .line 143
    :goto_1
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/u$c;->a(Ljava/util/function/Supplier;)V

    .line 150
    :goto_2
    sget-object p0, Lcom/alibaba/fastjson/parser/Feature;->NonStringKeyAsString:Lcom/alibaba/fastjson/parser/Feature;

    iget p0, p0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_b

    .line 151
    new-array p0, p2, [Lcom/alibaba/fastjson2/u$d;

    sget-object v0, Lcom/alibaba/fastjson2/u$d;->NonStringKeyAsString:Lcom/alibaba/fastjson2/u$d;

    aput-object v0, p0, v1

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/u$c;->a([Lcom/alibaba/fastjson2/u$d;)V

    .line 154
    :cond_b
    sget-object p0, Lcom/alibaba/fastjson/parser/Feature;->DisableFieldSmartMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget p0, p0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p0, v2

    if-nez p0, :cond_c

    .line 155
    new-array p0, p2, [Lcom/alibaba/fastjson2/u$d;

    sget-object v0, Lcom/alibaba/fastjson2/u$d;->SupportSmartMatch:Lcom/alibaba/fastjson2/u$d;

    aput-object v0, p0, v1

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/u$c;->a([Lcom/alibaba/fastjson2/u$d;)V

    .line 158
    :cond_c
    sget-object p0, Lcom/alibaba/fastjson/parser/Feature;->SupportAutoType:Lcom/alibaba/fastjson/parser/Feature;

    iget p0, p0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_d

    .line 159
    new-array p0, p2, [Lcom/alibaba/fastjson2/u$d;

    sget-object v0, Lcom/alibaba/fastjson2/u$d;->SupportAutoType:Lcom/alibaba/fastjson2/u$d;

    aput-object v0, p0, v1

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/u$c;->a([Lcom/alibaba/fastjson2/u$d;)V

    .line 162
    :cond_d
    sget-object p0, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    .line 163
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 164
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/u$c;->a(Ljava/lang/String;)V

    .line 167
    :cond_e
    new-array p0, p2, [Lcom/alibaba/fastjson2/u$d;

    sget-object p2, Lcom/alibaba/fastjson2/u$d;->Base64StringAsByteArray:Lcom/alibaba/fastjson2/u$d;

    aput-object p2, p0, v1

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/u$c;->a([Lcom/alibaba/fastjson2/u$d;)V

    return-object p1
.end method

.method public static varargs createWriteContext(Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Lcom/alibaba/fastjson2/ab$a;
    .locals 4

    .line 1072
    array-length v0, p2

    const/4 v1, 0x0

    move v2, p1

    move p1, v1

    :goto_0
    if-ge p1, v0, :cond_0

    aget-object v3, p2, p1

    .line 1073
    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v2, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1076
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getProvider()Lahq;

    move-result-object p1

    .line 1077
    sget-boolean p2, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithFieldName:Z

    invoke-virtual {p1, p2}, Lahq;->a(Z)V

    .line 1079
    new-instance p2, Lcom/alibaba/fastjson2/ab$a;

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/ab$a;-><init>(Lahq;)V

    .line 1081
    iget-boolean p1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->fieldBased:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1082
    new-array p1, v0, [Lcom/alibaba/fastjson2/ab$b;

    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->FieldBased:Lcom/alibaba/fastjson2/ab$b;

    aput-object v3, p1, v1

    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/ab$a;->a([Lcom/alibaba/fastjson2/ab$b;)V

    .line 1085
    :cond_1
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    sget-object v3, Lcom/alibaba/fastjson/PropertyNamingStrategy;->NeverUseThisValueExceptDefaultValue:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    if-eq p1, v3, :cond_2

    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    sget-object v3, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase1x:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    if-eq p1, v3, :cond_2

    .line 1089
    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-static {p0}, Lcom/alibaba/fastjson/serializer/NameFilter;->of(Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/serializer/NameFilter;

    move-result-object p0

    .line 1090
    invoke-static {p2, p0}, Lcom/alibaba/fastjson/JSON;->configFilter(Lcom/alibaba/fastjson2/ab$a;Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    .line 1093
    :cond_2
    sget-object p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p0, v2

    if-nez p0, :cond_3

    .line 1094
    new-array p0, v0, [Lcom/alibaba/fastjson2/ab$b;

    sget-object p1, Lcom/alibaba/fastjson2/ab$b;->ReferenceDetection:Lcom/alibaba/fastjson2/ab$b;

    aput-object p1, p0, v1

    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/ab$a;->a([Lcom/alibaba/fastjson2/ab$b;)V

    .line 1097
    :cond_3
    sget-object p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_4

    const-string p0, "iso8601"

    .line 1098
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p0, "millis"

    .line 1100
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/String;)V

    .line 1103
    :goto_1
    sget-object p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_5

    .line 1104
    new-array p0, v0, [Lcom/alibaba/fastjson2/ab$b;

    sget-object p1, Lcom/alibaba/fastjson2/ab$b;->WriteMapNullValue:Lcom/alibaba/fastjson2/ab$b;

    aput-object p1, p0, v1

    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/ab$a;->a([Lcom/alibaba/fastjson2/ab$b;)V

    .line 1107
    :cond_5
    sget-object p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_6

    .line 1108
    new-array p0, v0, [Lcom/alibaba/fastjson2/ab$b;

    sget-object p1, Lcom/alibaba/fastjson2/ab$b;->WriteNullListAsEmpty:Lcom/alibaba/fastjson2/ab$b;

    aput-object p1, p0, v1

    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/ab$a;->a([Lcom/alibaba/fastjson2/ab$b;)V

    .line 1111
    :cond_6
    sget-object p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_7

    .line 1112
    new-array p0, v0, [Lcom/alibaba/fastjson2/ab$b;

    sget-object p1, Lcom/alibaba/fastjson2/ab$b;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/ab$b;

    aput-object p1, p0, v1

    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/ab$a;->a([Lcom/alibaba/fastjson2/ab$b;)V

    .line 1115
    :cond_7
    sget-object p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_8

    .line 1116
    new-array p0, v0, [Lcom/alibaba/fastjson2/ab$b;

    sget-object p1, Lcom/alibaba/fastjson2/ab$b;->WriteNullNumberAsZero:Lcom/alibaba/fastjson2/ab$b;

    aput-object p1, p0, v1

    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/ab$a;->a([Lcom/alibaba/fastjson2/ab$b;)V

    .line 1119
    :cond_8
    sget-object p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_9

    .line 1120
    new-array p0, v0, [Lcom/alibaba/fastjson2/ab$b;

    sget-object p1, Lcom/alibaba/fastjson2/ab$b;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson2/ab$b;

    aput-object p1, p0, v1

    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/ab$a;->a([Lcom/alibaba/fastjson2/ab$b;)V

    .line 1123
    :cond_9
    sget-object p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_a

    .line 1124
    new-array p0, v0, [Lcom/alibaba/fastjson2/ab$b;

    sget-object p1, Lcom/alibaba/fastjson2/ab$b;->BrowserCompatible:Lcom/alibaba/fastjson2/ab$b;

    aput-object p1, p0, v1

    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/ab$a;->a([Lcom/alibaba/fastjson2/ab$b;)V

    .line 1127
    :cond_a
    sget-object p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_b

    .line 1128
    new-array p0, v0, [Lcom/alibaba/fastjson2/ab$b;

    sget-object p1, Lcom/alibaba/fastjson2/ab$b;->BrowserSecure:Lcom/alibaba/fastjson2/ab$b;

    aput-object p1, p0, v1

    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/ab$a;->a([Lcom/alibaba/fastjson2/ab$b;)V

    .line 1131
    :cond_b
    sget-object p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_c

    .line 1132
    new-array p0, v0, [Lcom/alibaba/fastjson2/ab$b;

    sget-object p1, Lcom/alibaba/fastjson2/ab$b;->WriteClassName:Lcom/alibaba/fastjson2/ab$b;

    aput-object p1, p0, v1

    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/ab$a;->a([Lcom/alibaba/fastjson2/ab$b;)V

    .line 1135
    :cond_c
    sget-object p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_d

    .line 1136
    new-array p0, v0, [Lcom/alibaba/fastjson2/ab$b;

    sget-object p1, Lcom/alibaba/fastjson2/ab$b;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/ab$b;

    aput-object p1, p0, v1

    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/ab$a;->a([Lcom/alibaba/fastjson2/ab$b;)V

    .line 1139
    :cond_d
    sget-object p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_e

    .line 1140
    new-array p0, v0, [Lcom/alibaba/fastjson2/ab$b;

    sget-object p1, Lcom/alibaba/fastjson2/ab$b;->WriteEnumUsingToString:Lcom/alibaba/fastjson2/ab$b;

    aput-object p1, p0, v1

    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/ab$a;->a([Lcom/alibaba/fastjson2/ab$b;)V

    .line 1143
    :cond_e
    sget-object p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_f

    .line 1144
    new-array p0, v0, [Lcom/alibaba/fastjson2/ab$b;

    sget-object p1, Lcom/alibaba/fastjson2/ab$b;->WriteEnumsUsingName:Lcom/alibaba/fastjson2/ab$b;

    aput-object p1, p0, v1

    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/ab$a;->a([Lcom/alibaba/fastjson2/ab$b;)V

    .line 1147
    :cond_f
    sget-object p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteRootClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_10

    .line 1148
    new-array p0, v0, [Lcom/alibaba/fastjson2/ab$b;

    sget-object p1, Lcom/alibaba/fastjson2/ab$b;->NotWriteRootClassName:Lcom/alibaba/fastjson2/ab$b;

    aput-object p1, p0, v1

    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/ab$a;->a([Lcom/alibaba/fastjson2/ab$b;)V

    .line 1151
    :cond_10
    sget-object p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreErrorGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_11

    .line 1152
    new-array p0, v0, [Lcom/alibaba/fastjson2/ab$b;

    sget-object p1, Lcom/alibaba/fastjson2/ab$b;->IgnoreErrorGetter:Lcom/alibaba/fastjson2/ab$b;

    aput-object p1, p0, v1

    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/ab$a;->a([Lcom/alibaba/fastjson2/ab$b;)V

    .line 1155
    :cond_11
    sget-object p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_12

    .line 1156
    sget-object p0, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/String;)V

    .line 1159
    :cond_12
    sget-object p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_13

    .line 1160
    new-array p0, v0, [Lcom/alibaba/fastjson2/ab$b;

    sget-object p1, Lcom/alibaba/fastjson2/ab$b;->BeanToArray:Lcom/alibaba/fastjson2/ab$b;

    aput-object p1, p0, v1

    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/ab$a;->a([Lcom/alibaba/fastjson2/ab$b;)V

    .line 1163
    :cond_13
    sget-object p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_14

    .line 1164
    new-array p0, v0, [Lcom/alibaba/fastjson2/ab$b;

    sget-object p1, Lcom/alibaba/fastjson2/ab$b;->UseSingleQuotes:Lcom/alibaba/fastjson2/ab$b;

    aput-object p1, p0, v1

    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/ab$a;->a([Lcom/alibaba/fastjson2/ab$b;)V

    .line 1167
    :cond_14
    sget-object p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->MapSortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_15

    .line 1168
    new-array p0, v0, [Lcom/alibaba/fastjson2/ab$b;

    sget-object p1, Lcom/alibaba/fastjson2/ab$b;->MapSortField:Lcom/alibaba/fastjson2/ab$b;

    aput-object p1, p0, v1

    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/ab$a;->a([Lcom/alibaba/fastjson2/ab$b;)V

    .line 1171
    :cond_15
    sget-object p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_16

    .line 1172
    new-array p0, v0, [Lcom/alibaba/fastjson2/ab$b;

    sget-object p1, Lcom/alibaba/fastjson2/ab$b;->PrettyFormat:Lcom/alibaba/fastjson2/ab$b;

    aput-object p1, p0, v1

    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/ab$a;->a([Lcom/alibaba/fastjson2/ab$b;)V

    .line 1175
    :cond_16
    sget-object p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_17

    .line 1176
    new-array p0, v0, [Lcom/alibaba/fastjson2/ab$b;

    sget-object p1, Lcom/alibaba/fastjson2/ab$b;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson2/ab$b;

    aput-object p1, p0, v1

    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/ab$a;->a([Lcom/alibaba/fastjson2/ab$b;)V

    .line 1179
    :cond_17
    sget-object p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreNonFieldGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_18

    .line 1180
    new-array p0, v0, [Lcom/alibaba/fastjson2/ab$b;

    sget-object p1, Lcom/alibaba/fastjson2/ab$b;->IgnoreNonFieldGetter:Lcom/alibaba/fastjson2/ab$b;

    aput-object p1, p0, v1

    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/ab$a;->a([Lcom/alibaba/fastjson2/ab$b;)V

    .line 1183
    :cond_18
    sget-object p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_19

    .line 1184
    new-array p0, v0, [Lcom/alibaba/fastjson2/ab$b;

    sget-object p1, Lcom/alibaba/fastjson2/ab$b;->NotWriteDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    aput-object p1, p0, v1

    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/ab$a;->a([Lcom/alibaba/fastjson2/ab$b;)V

    .line 1187
    :cond_19
    sget-object p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteBigDecimalAsPlain:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_1a

    .line 1188
    new-array p0, v0, [Lcom/alibaba/fastjson2/ab$b;

    sget-object p1, Lcom/alibaba/fastjson2/ab$b;->WriteBigDecimalAsPlain:Lcom/alibaba/fastjson2/ab$b;

    aput-object p1, p0, v1

    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/ab$a;->a([Lcom/alibaba/fastjson2/ab$b;)V

    .line 1191
    :cond_1a
    sget-object p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p0, v2

    if-nez p0, :cond_1b

    sget-object p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p0, v2

    if-nez p0, :cond_1b

    .line 1194
    new-array p0, v0, [Lcom/alibaba/fastjson2/ab$b;

    sget-object p1, Lcom/alibaba/fastjson2/ab$b;->UnquoteFieldName:Lcom/alibaba/fastjson2/ab$b;

    aput-object p1, p0, v1

    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/ab$a;->a([Lcom/alibaba/fastjson2/ab$b;)V

    .line 1197
    :cond_1b
    sget-object p0, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    if-eqz p0, :cond_1c

    sget-object p1, Lcom/alibaba/fastjson/JSON;->DEFAULT_TIME_ZONE:Ljava/util/TimeZone;

    if-eq p0, p1, :cond_1c

    .line 1198
    invoke-virtual {p0}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/time/ZoneId;)V

    .line 1201
    :cond_1c
    new-array p0, v0, [Lcom/alibaba/fastjson2/ab$b;

    sget-object p1, Lcom/alibaba/fastjson2/ab$b;->WriteByteArrayAsBase64:Lcom/alibaba/fastjson2/ab$b;

    aput-object p1, p0, v1

    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/ab$a;->a([Lcom/alibaba/fastjson2/ab$b;)V

    .line 1202
    new-array p0, v0, [Lcom/alibaba/fastjson2/ab$b;

    sget-object p1, Lcom/alibaba/fastjson2/ab$b;->WriteThrowableClassName:Lcom/alibaba/fastjson2/ab$b;

    aput-object p1, p0, v1

    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/ab$a;->a([Lcom/alibaba/fastjson2/ab$b;)V

    return-object p2
.end method

.method public static getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    .line 2185
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    .line 2186
    check-cast p0, Ljava/lang/Class;

    invoke-virtual {v0, p0}, Lzx;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2188
    invoke-static {}, Lcom/alibaba/fastjson2/d;->d()Lahq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lahq;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static isValid(Ljava/lang/String;)Z
    .locals 0

    .line 2068
    invoke-static {p0}, Lcom/alibaba/fastjson2/a;->c(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isValidArray(Ljava/lang/String;)Z
    .locals 0

    .line 2072
    invoke-static {p0}, Lcom/alibaba/fastjson2/a;->e(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isValidObject(Ljava/lang/String;)Z
    .locals 0

    .line 2076
    invoke-static {p0}, Lcom/alibaba/fastjson2/a;->d(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$static$0()Ljava/util/Map;
    .locals 2

    .line 78
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    if-eqz p0, :cond_5

    .line 820
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 825
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/alibaba/fastjson/parser/Feature;

    .line 824
    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/JSON;->createReadContext(Lzx;I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/u$c;

    move-result-object v0

    .line 828
    :try_start_0
    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/String;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 829
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson2/u;->d(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 830
    const-class v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p0, :cond_1

    .line 833
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    return-object v0

    .line 832
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->aY()Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz p0, :cond_3

    .line 833
    :try_start_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    if-eqz p0, :cond_4

    .line 828
    :try_start_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_1
    move-exception p0

    :try_start_6
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception p0

    .line 834
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1

    .line 839
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {p0, v0, p1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 2

    if-eqz p0, :cond_5

    .line 879
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 883
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getProvider()Lzx;

    move-result-object p1

    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p1, v0, v1}, Lcom/alibaba/fastjson/JSON;->createReadContext(Lzx;I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/u$c;

    move-result-object p1

    .line 884
    :try_start_0
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/String;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 885
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->t()Z

    move-result p1

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson2/u;->d(J)Z

    move-result p1

    if-nez p1, :cond_2

    .line 886
    const-class p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p0, :cond_1

    .line 889
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    return-object p1

    .line 888
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->aY()Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz p0, :cond_3

    .line 889
    :try_start_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    return-object p1

    :catch_0
    move-exception p1

    if-eqz p0, :cond_4

    .line 884
    :try_start_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_1
    move-exception p0

    :try_start_6
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception p0

    .line 890
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_5

    .line 895
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 899
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getProvider()Lzx;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p1, p2, v0}, Lcom/alibaba/fastjson/JSON;->createReadContext(Lzx;I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/u$c;

    move-result-object p1

    .line 900
    :try_start_0
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/String;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 901
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->t()Z

    move-result p1

    if-eqz p1, :cond_2

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/u;->d(J)Z

    move-result p1

    if-nez p1, :cond_2

    .line 902
    const-class p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p0, :cond_1

    .line 905
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    return-object p1

    .line 904
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->aY()Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz p0, :cond_3

    .line 905
    :try_start_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    return-object p1

    :catch_0
    move-exception p1

    if-eqz p0, :cond_4

    .line 900
    :try_start_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_1
    move-exception p0

    :try_start_6
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception p0

    .line 906
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parse(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_5

    .line 863
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 867
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getProvider()Lzx;

    move-result-object p1

    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p1, v0, p2}, Lcom/alibaba/fastjson/JSON;->createReadContext(Lzx;I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/u$c;

    move-result-object p1

    .line 868
    :try_start_0
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/String;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 869
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->t()Z

    move-result p1

    if-eqz p1, :cond_2

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/u;->d(J)Z

    move-result p1

    if-nez p1, :cond_2

    .line 870
    const-class p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p0, :cond_1

    .line 873
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    return-object p1

    .line 872
    :cond_2
    :try_start_3
    const-class p1, Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz p0, :cond_3

    .line 873
    :try_start_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    return-object p1

    :catch_0
    move-exception p1

    if-eqz p0, :cond_4

    .line 868
    :try_start_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_1
    move-exception p0

    :try_start_6
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception p0

    .line 874
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parse(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 2

    if-eqz p0, :cond_5

    .line 843
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 848
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 847
    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson/JSON;->createReadContext(Lzx;I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/u$c;

    move-result-object p1

    .line 852
    :try_start_0
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/String;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 853
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->t()Z

    move-result p1

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson2/u;->d(J)Z

    move-result p1

    if-nez p1, :cond_2

    .line 854
    const-class p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p0, :cond_1

    .line 857
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    return-object p1

    .line 856
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->aY()Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz p0, :cond_3

    .line 857
    :try_start_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    return-object p1

    :catch_0
    move-exception p1

    if-eqz p0, :cond_4

    .line 852
    :try_start_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_1
    move-exception p0

    :try_start_6
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception p0

    .line 858
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parse([BIILjava/nio/charset/CharsetDecoder;I)Ljava/lang/Object;
    .locals 7

    .line 944
    invoke-virtual {p3}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    int-to-double v0, p2

    .line 946
    invoke-virtual {p3}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 947
    sget-object v1, Lcom/alibaba/fastjson/JSON;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v2, Lcom/alibaba/fastjson/JSON;->CACHE:Lcom/alibaba/fastjson/JSON$Cache;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    if-eqz v1, :cond_0

    .line 948
    array-length v2, v1

    if-ge v2, v0, :cond_1

    .line 949
    :cond_0
    new-array v1, v0, [C

    :cond_1
    const/high16 v0, 0x10000

    .line 953
    :try_start_0
    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 954
    invoke-static {v1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 955
    invoke-static {p3, p0, p1}, Lcom/alibaba/fastjson/util/IOUtils;->decode(Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V

    .line 957
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result p0

    .line 960
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object p1

    const/4 p2, 0x0

    new-array p3, p2, [Lcom/alibaba/fastjson/parser/Feature;

    .line 959
    invoke-static {p1, p4, p3}, Lcom/alibaba/fastjson/JSON;->createReadContext(Lzx;I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/u$c;

    move-result-object p1

    .line 963
    invoke-static {v1, p2, p0, p1}, Lcom/alibaba/fastjson2/u;->a([CIILcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0

    .line 965
    invoke-static {}, Lcom/alibaba/fastjson/parser/Feature;->values()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object p3

    array-length v2, p3

    move v3, p2

    :goto_0
    if-ge v3, v2, :cond_7

    aget-object v4, p3, v3

    .line 966
    iget v5, v4, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v5, p4

    if-eqz v5, :cond_6

    .line 967
    sget-object v5, Lcom/alibaba/fastjson/JSON$1;->$SwitchMap$com$alibaba$fastjson$parser$Feature:[I

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/Feature;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    const/4 v6, 0x2

    if-eq v4, v6, :cond_4

    const/4 v6, 0x3

    if-eq v4, v6, :cond_2

    const/4 v6, 0x4

    if-eq v4, v6, :cond_3

    goto :goto_1

    .line 975
    :cond_2
    new-array v4, v5, [Lcom/alibaba/fastjson2/u$d;

    sget-object v6, Lcom/alibaba/fastjson2/u$d;->ErrorOnEnumNotMatch:Lcom/alibaba/fastjson2/u$d;

    aput-object v6, v4, p2

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson2/u$c;->a([Lcom/alibaba/fastjson2/u$d;)V

    .line 977
    :cond_3
    new-array v4, v5, [Lcom/alibaba/fastjson2/u$d;

    sget-object v5, Lcom/alibaba/fastjson2/u$d;->FieldBased:Lcom/alibaba/fastjson2/u$d;

    aput-object v5, v4, p2

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson2/u$c;->a([Lcom/alibaba/fastjson2/u$d;)V

    goto :goto_1

    .line 972
    :cond_4
    new-array v4, v5, [Lcom/alibaba/fastjson2/u$d;

    sget-object v5, Lcom/alibaba/fastjson2/u$d;->SupportAutoType:Lcom/alibaba/fastjson2/u$d;

    aput-object v5, v4, p2

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson2/u$c;->a([Lcom/alibaba/fastjson2/u$d;)V

    goto :goto_1

    .line 969
    :cond_5
    new-array v4, v5, [Lcom/alibaba/fastjson2/u$d;

    sget-object v5, Lcom/alibaba/fastjson2/u$d;->SupportArrayToBean:Lcom/alibaba/fastjson2/u$d;

    aput-object v5, v4, p2

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson2/u$c;->a([Lcom/alibaba/fastjson2/u$d;)V

    :cond_6
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 984
    :cond_7
    const-class p1, Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 986
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 990
    :cond_8
    array-length p0, v1

    if-gt p0, v0, :cond_9

    .line 991
    sget-object p0, Lcom/alibaba/fastjson/JSON;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object p2, Lcom/alibaba/fastjson/JSON;->CACHE:Lcom/alibaba/fastjson/JSON$Cache;

    invoke-virtual {p0, p2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    return-object p1

    :catchall_0
    move-exception p0

    .line 990
    array-length p1, v1

    if-gt p1, v0, :cond_a

    .line 991
    sget-object p1, Lcom/alibaba/fastjson/JSON;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object p2, Lcom/alibaba/fastjson/JSON;->CACHE:Lcom/alibaba/fastjson/JSON$Cache;

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 993
    :cond_a
    throw p0
.end method

.method public static varargs parse([BIILjava/nio/charset/CharsetDecoder;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 5

    if-eqz p0, :cond_2

    .line 931
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 935
    :cond_0
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 936
    array-length v1, p4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p4, v2

    const/4 v4, 0x1

    .line 937
    invoke-static {v0, v3, v4}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 940
    :cond_1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/JSON;->parse([BIILjava/nio/charset/CharsetDecoder;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parse([B[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 2

    if-eqz p0, :cond_5

    .line 911
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 916
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 915
    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson/JSON;->createReadContext(Lzx;I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/u$c;

    move-result-object p1

    .line 920
    :try_start_0
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/u;->a([BLcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 921
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->t()Z

    move-result p1

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson2/u;->d(J)Z

    move-result p1

    if-nez p1, :cond_2

    .line 922
    const-class p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p0, :cond_1

    .line 925
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    return-object p1

    .line 924
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->aY()Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz p0, :cond_3

    .line 925
    :try_start_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    return-object p1

    :catch_0
    move-exception p1

    if-eqz p0, :cond_4

    .line 920
    :try_start_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_1
    move-exception p0

    :try_start_6
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception p0

    .line 926
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 1973
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1978
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v1

    sget v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/alibaba/fastjson/parser/Feature;

    .line 1977
    invoke-static {v1, v2, v3}, Lcom/alibaba/fastjson/JSON;->createReadContext(Lzx;I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/u$c;

    move-result-object v1

    .line 1981
    invoke-static {p0, v1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/String;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0

    .line 1984
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 1988
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1989
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/u;->a(Ljava/util/List;)V

    .line 1990
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONArray;-><init>(Ljava/util/List;)V

    .line 1991
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 1994
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, p0

    .line 1998
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static varargs parseArray(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson/JSONArray;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 1954
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1960
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v1

    sget v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-static {v1, v2, p1}, Lcom/alibaba/fastjson/JSON;->createReadContext(Lzx;I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/u$c;

    move-result-object p1

    .line 1958
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/String;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0

    .line 1962
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->g()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    if-eqz p0, :cond_1

    .line 1969
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V

    :cond_1
    return-object v0

    .line 1966
    :cond_2
    :try_start_1
    new-instance p1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1967
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p0, :cond_3

    .line 1969
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V

    :cond_3
    return-object p1

    :catch_0
    move-exception p1

    if-eqz p0, :cond_4

    .line 1958
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw p1

    :cond_5
    :goto_1
    return-object v0
.end method

.method public static parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 2003
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2006
    :cond_0
    new-instance v1, Labm;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-class p1, Ljava/util/List;

    invoke-direct {v1, v2, v0, p1}, Labm;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 2010
    :try_start_0
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object p1

    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    new-array v2, v3, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p1, v0, v2}, Lcom/alibaba/fastjson/JSON;->createReadContext(Lzx;I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/u$c;

    move-result-object p1

    .line 2008
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/String;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_2

    .line 2012
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p0, :cond_1

    .line 2013
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/c; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    return-object p1

    :catch_0
    move-exception p1

    if-eqz p0, :cond_2

    .line 2008
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/alibaba/fastjson2/c; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p1
    :try_end_4
    .catch Lcom/alibaba/fastjson2/c; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p0

    .line 2014
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_3

    move-object p1, p0

    .line 2018
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public static parseArray(Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 2023
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    .line 2028
    sget-object p2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 2031
    :cond_1
    new-instance v1, Labm;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-class p1, Ljava/util/List;

    invoke-direct {v1, v2, v0, p1}, Labm;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 2035
    :try_start_0
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/ParserConfig;->getProvider()Lzx;

    move-result-object p1

    sget p2, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    new-array v0, v3, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p1, p2, v0}, Lcom/alibaba/fastjson/JSON;->createReadContext(Lzx;I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/u$c;

    move-result-object p1

    .line 2033
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/String;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_2

    .line 2037
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p0, :cond_2

    .line 2038
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/c; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    return-object p1

    :catch_0
    move-exception p1

    if-eqz p0, :cond_3

    .line 2033
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/alibaba/fastjson2/c; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw p1
    :try_end_4
    .catch Lcom/alibaba/fastjson2/c; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p0

    .line 2039
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    move-object p1, p0

    .line 2043
    :cond_4
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_5
    :goto_1
    return-object v0
.end method

.method public static varargs parseArray(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 2048
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2051
    :cond_0
    new-instance v1, Labm;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-class p1, Ljava/util/List;

    invoke-direct {v1, v2, v0, p1}, Labm;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 2055
    :try_start_0
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object p1

    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p1, v0, p2}, Lcom/alibaba/fastjson/JSON;->createReadContext(Lzx;I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/u$c;

    move-result-object p1

    .line 2053
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/String;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_2

    .line 2057
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p0, :cond_1

    .line 2058
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/c; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    return-object p1

    :catch_0
    move-exception p1

    if-eqz p0, :cond_2

    .line 2053
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/alibaba/fastjson2/c; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p1
    :try_end_4
    .catch Lcom/alibaba/fastjson2/c; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p0

    .line 2059
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_3

    move-object p1, p0

    .line 2063
    :cond_3
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    :goto_1
    return-object v0
.end method

.method public static parseArray(Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 2137
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2140
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    array-length v1, p1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 2144
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v1

    sget v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    const/4 v3, 0x0

    new-array v4, v3, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v1, v2, v4}, Lcom/alibaba/fastjson/JSON;->createReadContext(Lzx;I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/u$c;

    move-result-object v1

    .line 2142
    invoke-static {p0, v1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/String;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0

    .line 2146
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->p()I

    .line 2147
    array-length v1, p1

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v2, p1, v3

    .line 2149
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .line 2148
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2152
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->w()V

    .line 2153
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    .line 2155
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V

    :cond_2
    return-object v0

    :catch_0
    move-exception p1

    if-eqz p0, :cond_3

    .line 2142
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p1

    :cond_4
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 173
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v1

    sget v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/alibaba/fastjson/parser/Feature;

    .line 177
    invoke-static {v1, v2, v3}, Lcom/alibaba/fastjson/JSON;->createReadContext(Lzx;I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/u$c;

    move-result-object v1

    .line 181
    invoke-static {p0, v1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/String;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0

    .line 184
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 188
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v1, 0x0

    .line 189
    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson2/u;->a(Ljava/util/Map;J)V

    .line 190
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .line 191
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 194
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, p0

    .line 198
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static varargs parseObject(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson/JSONObject;
    .locals 5

    if-eqz p0, :cond_6

    .line 203
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 208
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 207
    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson/JSON;->createReadContext(Lzx;I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/u$c;

    move-result-object v0

    .line 212
    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/String;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0

    .line 214
    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    .line 215
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 216
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/u$c;->a(Ljava/lang/String;)V

    .line 220
    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 221
    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 228
    :try_start_0
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :goto_2
    const-wide/16 v0, 0x0

    .line 229
    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/u;->a(Ljava/util/Map;J)V

    .line 230
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .line 231
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 234
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_5

    move-object p1, p0

    .line 238
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_6
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseObject([B[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")",
            "Lcom/alibaba/fastjson/JSONObject;"
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 725
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_3

    .line 730
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 729
    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson/JSON;->createReadContext(Lzx;I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/u$c;

    move-result-object v0

    .line 734
    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/u;->a([BLcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0

    .line 737
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 738
    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 745
    :try_start_0
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :goto_2
    const-wide/16 v0, 0x0

    .line 746
    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/u;->a(Ljava/util/Map;J)V

    .line 747
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .line 748
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 751
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    move-object p1, p0

    .line 755
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/io/InputStream;Ljava/lang/Class;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 631
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0, p1, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/io/InputStream;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 624
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0, p1, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p3, :cond_1

    .line 648
    sget-object p3, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 652
    :cond_1
    invoke-virtual {p3}, Lcom/alibaba/fastjson/parser/ParserConfig;->getProvider()Lzx;

    move-result-object p3

    .line 651
    invoke-static {p3, p5, p6}, Lcom/alibaba/fastjson/JSON;->createReadContext(Lzx;I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/u$c;

    move-result-object p3

    if-eqz p4, :cond_2

    .line 658
    invoke-virtual {p3, p4}, Lcom/alibaba/fastjson2/u$c;->a(Lqo;)V

    .line 661
    :cond_2
    invoke-static {p0, p1, p3}, Lcom/alibaba/fastjson2/u;->a(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0

    .line 664
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    .line 665
    invoke-interface/range {v0 .. v5}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 667
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object p1

    :catch_0
    move-exception p0

    .line 671
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    move-object p1, p0

    .line 675
    :cond_4
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static varargs parseObject(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 686
    sget v5, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 699
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 698
    invoke-static {v0, v1, p3}, Lcom/alibaba/fastjson/JSON;->createReadContext(Lzx;I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/u$c;

    move-result-object p3

    .line 703
    invoke-static {p0, p1, p3}, Lcom/alibaba/fastjson2/u;->a(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0

    .line 706
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    .line 707
    invoke-interface/range {v0 .. v5}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 709
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p1

    :catch_0
    move-exception p0

    .line 713
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_2

    move-object p1, p0

    .line 717
    :cond_2
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static varargs parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/TypeReference<",
            "TT;>;[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 494
    invoke-virtual {p1}, Lcom/alibaba/fastjson/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 502
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 507
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/alibaba/fastjson/parser/Feature;

    .line 506
    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/JSON;->createReadContext(Lzx;I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/u$c;

    move-result-object v0

    .line 510
    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/String;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0

    .line 513
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v2, p0

    .line 514
    invoke-interface/range {v1 .. v6}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 516
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p1

    :catch_0
    move-exception p0

    .line 520
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_2

    move-object p1, p0

    .line 524
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 464
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 469
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 468
    invoke-static {v0, v1, p3}, Lcom/alibaba/fastjson/JSON;->createReadContext(Lzx;I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/u$c;

    move-result-object p3

    .line 473
    invoke-static {p0, p3}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/String;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0

    .line 474
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson2/u$c;->a(Lqo;)V

    .line 477
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    .line 478
    invoke-interface/range {v0 .. v5}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 480
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p1

    :catch_0
    move-exception p0

    .line 484
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_2

    move-object p1, p0

    .line 488
    :cond_2
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 529
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 534
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 533
    invoke-static {v0, v1, p2}, Lcom/alibaba/fastjson/JSON;->createReadContext(Lzx;I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/u$c;

    move-result-object p2

    .line 538
    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/String;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0

    .line 541
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    .line 542
    invoke-interface/range {v0 .. v5}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 544
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p1

    :catch_0
    move-exception p0

    .line 548
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_2

    move-object p1, p0

    .line 552
    :cond_2
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 498
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {p0, p1, v0, p2, p3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    .line 430
    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 396
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 401
    sget-object p2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 405
    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/ParserConfig;->getProvider()Lzx;

    move-result-object p2

    .line 404
    invoke-static {p2, p4, p5}, Lcom/alibaba/fastjson/JSON;->createReadContext(Lzx;I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/u$c;

    move-result-object p2

    .line 409
    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/String;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0

    .line 410
    invoke-virtual {p2, p3}, Lcom/alibaba/fastjson2/u$c;->a(Lqo;)V

    .line 413
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    .line 414
    invoke-interface/range {v0 .. v5}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 416
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p1

    :catch_0
    move-exception p0

    .line 420
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_3

    move-object p1, p0

    .line 424
    :cond_3
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 588
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 593
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/ParserConfig;->getProvider()Lzx;

    move-result-object v0

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 592
    invoke-static {v0, v1, p3}, Lcom/alibaba/fastjson/JSON;->createReadContext(Lzx;I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/u$c;

    move-result-object p3

    .line 598
    iget-boolean p2, p2, Lcom/alibaba/fastjson/parser/ParserConfig;->fieldBase:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 599
    new-array p2, p2, [Lcom/alibaba/fastjson2/u$d;

    const/4 v0, 0x0

    sget-object v1, Lcom/alibaba/fastjson2/u$d;->FieldBased:Lcom/alibaba/fastjson2/u$d;

    aput-object v1, p2, v0

    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson2/u$c;->a([Lcom/alibaba/fastjson2/u$d;)V

    .line 602
    :cond_1
    invoke-static {p0, p3}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/String;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0

    .line 605
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v3, p0

    .line 606
    invoke-interface/range {v2 .. v7}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 608
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p1

    :catch_0
    move-exception p0

    .line 612
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_3

    move-object p1, p0

    .line 616
    :cond_3
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 434
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 439
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 438
    invoke-static {v0, v1, p3}, Lcom/alibaba/fastjson/JSON;->createReadContext(Lzx;I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/u$c;

    move-result-object p3

    .line 443
    invoke-static {p0, p3}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/String;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0

    .line 444
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson2/u$c;->a(Lqo;)V

    .line 447
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    .line 448
    invoke-interface/range {v0 .. v5}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 450
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p1

    :catch_0
    move-exception p0

    .line 454
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_2

    move-object p1, p0

    .line 458
    :cond_2
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 557
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 562
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 561
    invoke-static {v0, v1, p2}, Lcom/alibaba/fastjson/JSON;->createReadContext(Lzx;I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/u$c;

    move-result-object p2

    .line 566
    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/String;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0

    .line 569
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    .line 570
    invoke-interface/range {v0 .. v5}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 572
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p1

    :catch_0
    move-exception p0

    .line 576
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_2

    move-object p1, p0

    .line 580
    :cond_2
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseObject([BIILjava/nio/charset/Charset;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 297
    array-length v0, p0

    if-eqz v0, :cond_5

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    .line 302
    sget-object p5, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 306
    :cond_1
    invoke-virtual {p5}, Lcom/alibaba/fastjson/parser/ParserConfig;->getProvider()Lzx;

    move-result-object p5

    .line 305
    invoke-static {p5, p7, p8}, Lcom/alibaba/fastjson/JSON;->createReadContext(Lzx;I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/u$c;

    move-result-object p5

    if-eqz p6, :cond_2

    .line 311
    invoke-virtual {p5, p6}, Lcom/alibaba/fastjson2/u$c;->a(Lqo;)V

    .line 314
    :cond_2
    invoke-static {p0, p1, p2, p3, p5}, Lcom/alibaba/fastjson2/u;->a([BIILjava/nio/charset/Charset;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0

    .line 317
    :try_start_0
    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    .line 318
    invoke-interface/range {v0 .. v5}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 320
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object p1

    :catch_0
    move-exception p0

    .line 324
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    move-object p1, p0

    .line 328
    :cond_4
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_5
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseObject([BIILjava/nio/charset/Charset;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 1053
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 1052
    invoke-static {v0, v1, p5}, Lcom/alibaba/fastjson/JSON;->createReadContext(Lzx;I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/u$c;

    move-result-object p5

    .line 1047
    invoke-static {p0, p1, p2, p3, p5}, Lcom/alibaba/fastjson2/u;->a([BIILjava/nio/charset/Charset;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0

    .line 1059
    :try_start_0
    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1061
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-eqz p0, :cond_1

    .line 1064
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V

    :cond_1
    return-object p1

    :catch_0
    move-exception p1

    if-eqz p0, :cond_2

    .line 1046
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p1
.end method

.method public static varargs parseObject([BIILjava/nio/charset/CharsetDecoder;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/nio/charset/CharsetDecoder;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 1004
    invoke-virtual {p3}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    int-to-double v0, p2

    .line 1006
    invoke-virtual {p3}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 1008
    sget-object v1, Lcom/alibaba/fastjson/JSON;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v2, Lcom/alibaba/fastjson/JSON;->CACHE:Lcom/alibaba/fastjson/JSON$Cache;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    if-eqz v1, :cond_0

    .line 1009
    array-length v2, v1

    if-ge v2, v0, :cond_1

    .line 1010
    :cond_0
    new-array v1, v0, [C

    :cond_1
    const/high16 v0, 0x10000

    .line 1014
    :try_start_0
    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 1015
    invoke-static {v1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 1016
    invoke-static {p3, p0, p1}, Lcom/alibaba/fastjson/util/IOUtils;->decode(Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V

    .line 1018
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result p0

    .line 1021
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object p1

    sget p2, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 1020
    invoke-static {p1, p2, p5}, Lcom/alibaba/fastjson/JSON;->createReadContext(Lzx;I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/u$c;

    move-result-object p1

    const/4 p2, 0x0

    .line 1025
    invoke-static {v1, p2, p0, p1}, Lcom/alibaba/fastjson2/u;->a([CIILcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0

    .line 1027
    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1029
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1033
    :cond_2
    array-length p0, v1

    if-gt p0, v0, :cond_3

    .line 1034
    sget-object p0, Lcom/alibaba/fastjson/JSON;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object p2, Lcom/alibaba/fastjson/JSON;->CACHE:Lcom/alibaba/fastjson/JSON$Cache;

    invoke-virtual {p0, p2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p0

    .line 1033
    array-length p1, v1

    if-gt p1, v0, :cond_4

    .line 1034
    sget-object p1, Lcom/alibaba/fastjson/JSON;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object p2, Lcom/alibaba/fastjson/JSON;->CACHE:Lcom/alibaba/fastjson/JSON$Cache;

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1036
    :cond_4
    throw p0
.end method

.method public static varargs parseObject([BLjava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/serializer/SerializeFilter;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 793
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 792
    invoke-static {v0, v1, p3}, Lcom/alibaba/fastjson/JSON;->createReadContext(Lzx;I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/u$c;

    move-result-object p3

    .line 797
    invoke-static {p0, p3}, Lcom/alibaba/fastjson2/u;->a([BLcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0

    .line 799
    instance-of v0, p2, Lqo;

    if-eqz v0, :cond_1

    .line 800
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson2/u$c;->a(Lqo;)V

    .line 804
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    .line 805
    invoke-interface/range {v0 .. v5}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 807
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p1

    :catch_0
    move-exception p0

    .line 811
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_3

    move-object p1, p0

    .line 815
    :cond_3
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static varargs parseObject([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 765
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 764
    invoke-static {v0, v1, p2}, Lcom/alibaba/fastjson/JSON;->createReadContext(Lzx;I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/u$c;

    move-result-object p2

    .line 769
    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/u;->a([BLcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0

    .line 772
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    .line 773
    invoke-interface/range {v0 .. v5}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 775
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p1

    :catch_0
    move-exception p0

    .line 779
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_2

    move-object p1, p0

    .line 783
    :cond_2
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static varargs parseObject([BLjava/nio/charset/Charset;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 251
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 256
    sget-object p3, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 260
    :cond_1
    invoke-virtual {p3}, Lcom/alibaba/fastjson/parser/ParserConfig;->getProvider()Lzx;

    move-result-object p3

    .line 259
    invoke-static {p3, p5, p6}, Lcom/alibaba/fastjson/JSON;->createReadContext(Lzx;I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/u$c;

    move-result-object p3

    if-eqz p4, :cond_2

    .line 265
    invoke-virtual {p3, p4}, Lcom/alibaba/fastjson2/u$c;->a(Lqo;)V

    :cond_2
    const/4 p4, 0x0

    .line 268
    array-length p5, p0

    invoke-static {p0, p4, p5, p1, p3}, Lcom/alibaba/fastjson2/u;->a([BIILjava/nio/charset/Charset;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0

    .line 271
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    .line 272
    invoke-interface/range {v0 .. v5}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 274
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object p1

    :catch_0
    move-exception p0

    .line 278
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    move-object p1, p0

    .line 282
    :cond_4
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_5
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseObject([CILjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([CI",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 333
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 338
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 337
    invoke-static {v0, v1, p3}, Lcom/alibaba/fastjson/JSON;->createReadContext(Lzx;I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/u$c;

    move-result-object p3

    const/4 v0, 0x0

    .line 342
    invoke-static {p0, v0, p1, p3}, Lcom/alibaba/fastjson2/u;->a([CIILcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0

    .line 345
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v2, p0

    .line 346
    invoke-interface/range {v1 .. v6}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 348
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p1

    :catch_0
    move-exception p0

    .line 352
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_2

    move-object p1, p0

    .line 356
    :cond_2
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseObject([CLjava/lang/Class;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([C",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 361
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 366
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 365
    invoke-static {v0, v1, p2}, Lcom/alibaba/fastjson/JSON;->createReadContext(Lzx;I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/u$c;

    move-result-object p2

    .line 370
    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/u;->a([CLcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0

    .line 373
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    .line 374
    invoke-interface/range {v0 .. v5}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 376
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p1

    :catch_0
    move-exception p0

    .line 380
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_2

    move-object p1, p0

    .line 384
    :cond_2
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static removeMixInAnnotations(Ljava/lang/reflect/Type;)V
    .locals 2

    .line 2169
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    .line 2170
    check-cast p0, Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lzx;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 2172
    invoke-static {}, Lcom/alibaba/fastjson2/d;->d()Lahq;

    move-result-object v0

    .line 2173
    invoke-virtual {v0, p0, v1}, Lahq;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method public static toJSON(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2098
    instance-of v0, p0, Lcom/alibaba/fastjson/JSON;

    if-eqz v0, :cond_0

    return-object p0

    .line 2102
    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2103
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 2104
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2105
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONArray;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method public static toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 1

    .line 2124
    instance-of v0, p0, Lcom/alibaba/fastjson/JSON;

    if-eqz v0, :cond_0

    return-object p0

    .line 2128
    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2129
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    .line 2130
    instance-of p1, p0, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 2131
    new-instance p1, Lcom/alibaba/fastjson/JSONArray;

    check-cast p0, Ljava/util/List;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/JSONArray;-><init>(Ljava/util/List;)V

    return-object p1

    :cond_1
    return-object p0
.end method

.method public static toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/lang/Object;
    .locals 1

    .line 2111
    instance-of v0, p0, Lcom/alibaba/fastjson/JSON;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 2115
    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    .line 2116
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 2117
    instance-of p1, p0, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 2118
    new-instance p1, Lcom/alibaba/fastjson/JSONArray;

    check-cast p0, Ljava/util/List;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/JSONArray;-><init>(Ljava/util/List;)V

    return-object p1

    :cond_1
    return-object p0
.end method

.method public static toJSONBytes(Ljava/lang/Object;)[B
    .locals 10

    const-string v0, "toJSONBytes error"

    .line 1554
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->global:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v1, v2, v3}, Lcom/alibaba/fastjson/JSON;->createWriteContext(Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Lcom/alibaba/fastjson2/ab$a;

    move-result-object v1

    .line 1555
    :try_start_0
    invoke-static {v1}, Lcom/alibaba/fastjson2/ab;->b(Lcom/alibaba/fastjson2/ab$a;)Lcom/alibaba/fastjson2/ab;

    move-result-object v9
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p0, :cond_0

    .line 1557
    :try_start_1
    invoke-virtual {v9}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_0

    .line 1559
    :cond_0
    invoke-virtual {v9, p0}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;)V

    .line 1560
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1561
    invoke-virtual {v1, v2, v2}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Laem;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v3, v9

    move-object v4, p0

    .line 1562
    invoke-interface/range {v2 .. v8}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 1565
    :goto_0
    invoke-virtual {v9}, Lcom/alibaba/fastjson2/ab;->v()[B

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v9, :cond_1

    .line 1566
    :try_start_2
    invoke-virtual {v9}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/c; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    return-object p0

    :catch_0
    move-exception p0

    if-eqz v9, :cond_2

    .line 1555
    :try_start_3
    invoke-virtual {v9}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/alibaba/fastjson2/c; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_4
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0
    :try_end_4
    .catch Lcom/alibaba/fastjson2/c; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p0

    .line 1570
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception p0

    .line 1567
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 1568
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 8

    const-string v0, "toJSONBytes error"

    .line 1579
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->global:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-static {v1, p1, p2}, Lcom/alibaba/fastjson/JSON;->createWriteContext(Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Lcom/alibaba/fastjson2/ab$a;

    move-result-object p1

    .line 1581
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/ab;->b(Lcom/alibaba/fastjson2/ab$a;)Lcom/alibaba/fastjson2/ab;

    move-result-object p2
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p0, :cond_0

    .line 1583
    :try_start_1
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_0

    .line 1585
    :cond_0
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;)V

    .line 1586
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1587
    invoke-virtual {p1, v1, v1}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Laem;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p2

    move-object v3, p0

    .line 1588
    invoke-interface/range {v1 .. v7}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 1591
    :goto_0
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/ab;->v()[B

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p2, :cond_1

    .line 1592
    :try_start_2
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/c; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    return-object p0

    :catch_0
    move-exception p0

    if-eqz p2, :cond_2

    .line 1581
    :try_start_3
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/alibaba/fastjson2/c; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0
    :try_end_4
    .catch Lcom/alibaba/fastjson2/c; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p0

    .line 1596
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 1593
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 1594
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 1

    const/4 v0, 0x0

    .line 1679
    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    invoke-static {p0, p1, v0, p2, p3}, Lcom/alibaba/fastjson/JSON;->toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 8

    const-string v0, "toJSONBytes error"

    .line 1349
    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p1, v1, p3}, Lcom/alibaba/fastjson/JSON;->createWriteContext(Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Lcom/alibaba/fastjson2/ab$a;

    move-result-object p1

    .line 1350
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/ab;->b(Lcom/alibaba/fastjson2/ab$a;)Lcom/alibaba/fastjson2/ab;

    move-result-object p3
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1351
    :try_start_1
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/JSON;->configFilter(Lcom/alibaba/fastjson2/ab$a;Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    if-nez p0, :cond_0

    .line 1354
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_0

    .line 1356
    :cond_0
    invoke-virtual {p3, p0}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;)V

    .line 1357
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 1358
    invoke-virtual {p1, p2, p2}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Laem;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p3

    move-object v3, p0

    .line 1359
    invoke-interface/range {v1 .. v7}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 1362
    :goto_0
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/ab;->v()[B

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p3, :cond_1

    .line 1363
    :try_start_2
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/c; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    return-object p0

    :catch_0
    move-exception p0

    if-eqz p3, :cond_2

    .line 1350
    :try_start_3
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/alibaba/fastjson2/c; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0
    :try_end_4
    .catch Lcom/alibaba/fastjson2/c; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p0

    .line 1367
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 1364
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 1365
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 8

    const-string v0, "toJSONBytes error"

    .line 1319
    invoke-static {p1, p3, p4}, Lcom/alibaba/fastjson/JSON;->createWriteContext(Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Lcom/alibaba/fastjson2/ab$a;

    move-result-object p1

    .line 1320
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/ab;->b(Lcom/alibaba/fastjson2/ab$a;)Lcom/alibaba/fastjson2/ab;

    move-result-object p3
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1321
    :try_start_1
    array-length p4, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_0

    aget-object v2, p2, v1

    .line 1322
    invoke-static {p1, v2}, Lcom/alibaba/fastjson/JSON;->configFilter(Lcom/alibaba/fastjson2/ab$a;Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    .line 1326
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_1

    .line 1328
    :cond_1
    invoke-virtual {p3, p0}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;)V

    .line 1329
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 1330
    invoke-virtual {p1, p2, p2}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Laem;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p3

    move-object v3, p0

    .line 1331
    invoke-interface/range {v1 .. v7}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 1334
    :goto_1
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/ab;->v()[B

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p3, :cond_2

    .line 1335
    :try_start_2
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/c; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    return-object p0

    :catch_0
    move-exception p0

    if-eqz p3, :cond_3

    .line 1320
    :try_start_3
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/alibaba/fastjson2/c; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p0
    :try_end_4
    .catch Lcom/alibaba/fastjson2/c; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p0

    .line 1339
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 1336
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 1337
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 8

    const-string v0, "toJSONBytes error"

    .line 1622
    invoke-static {p1, p4, p5}, Lcom/alibaba/fastjson/JSON;->createWriteContext(Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Lcom/alibaba/fastjson2/ab$a;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 1624
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_0

    .line 1625
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/String;)V

    .line 1628
    :cond_0
    array-length p3, p2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_1

    aget-object p5, p2, p4

    .line 1629
    invoke-static {p1, p5}, Lcom/alibaba/fastjson/JSON;->configFilter(Lcom/alibaba/fastjson2/ab$a;Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 1632
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/ab;->b(Lcom/alibaba/fastjson2/ab$a;)Lcom/alibaba/fastjson2/ab;

    move-result-object p2
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p0, :cond_2

    .line 1634
    :try_start_1
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_1

    .line 1636
    :cond_2
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;)V

    .line 1637
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    .line 1638
    invoke-virtual {p1, p3, p3}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Laem;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p2

    move-object v3, p0

    .line 1639
    invoke-interface/range {v1 .. v7}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 1642
    :goto_1
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/ab;->v()[B

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p2, :cond_3

    .line 1643
    :try_start_2
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/c; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    return-object p0

    :catch_0
    move-exception p0

    if-eqz p2, :cond_4

    .line 1632
    :try_start_3
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/alibaba/fastjson2/c; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p0
    :try_end_4
    .catch Lcom/alibaba/fastjson2/c; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p0

    .line 1647
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 1644
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 1645
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 8

    const-string v0, "toJSONBytes error"

    .line 1434
    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p1, v1, p2}, Lcom/alibaba/fastjson/JSON;->createWriteContext(Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Lcom/alibaba/fastjson2/ab$a;

    move-result-object p1

    .line 1435
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/ab;->b(Lcom/alibaba/fastjson2/ab$a;)Lcom/alibaba/fastjson2/ab;

    move-result-object p2
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p0, :cond_0

    .line 1437
    :try_start_1
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_0

    .line 1439
    :cond_0
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;)V

    .line 1440
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1441
    invoke-virtual {p1, v1, v1}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Laem;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p2

    move-object v3, p0

    .line 1442
    invoke-interface/range {v1 .. v7}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 1445
    :goto_0
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/ab;->v()[B

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p2, :cond_1

    .line 1446
    :try_start_2
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/c; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    return-object p0

    :catch_0
    move-exception p0

    if-eqz p2, :cond_2

    .line 1435
    :try_start_3
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/alibaba/fastjson2/c; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0
    :try_end_4
    .catch Lcom/alibaba/fastjson2/c; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p0

    .line 1450
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 1447
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 1448
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeFilter;)[B
    .locals 3

    .line 1601
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->global:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget p1, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    new-array v2, v2, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {p0, v0, v1, p1, v2}, Lcom/alibaba/fastjson/JSON;->toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 3

    .line 1605
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->global:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget p1, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p0, v0, v1, p1, p2}, Lcom/alibaba/fastjson/JSON;->toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializeFilter;)[B
    .locals 1

    const/4 v0, 0x0

    .line 1575
    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/JSON;->toJSONBytes(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 9

    const-string v0, "toJSONBytes error"

    .line 1409
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->global:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {v1, v2, p2}, Lcom/alibaba/fastjson/JSON;->createWriteContext(Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Lcom/alibaba/fastjson2/ab$a;

    move-result-object p2

    .line 1410
    :try_start_0
    invoke-static {p2}, Lcom/alibaba/fastjson2/ab;->b(Lcom/alibaba/fastjson2/ab$a;)Lcom/alibaba/fastjson2/ab;

    move-result-object v8
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1411
    :try_start_1
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 1412
    invoke-static {p2, v3}, Lcom/alibaba/fastjson/JSON;->configFilter(Lcom/alibaba/fastjson2/ab$a;Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    .line 1416
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_1

    .line 1418
    :cond_1
    invoke-virtual {v8, p0}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;)V

    .line 1419
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 1420
    invoke-virtual {p2, p1, p1}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Laem;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, v8

    move-object v3, p0

    .line 1421
    invoke-interface/range {v1 .. v7}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 1424
    :goto_1
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/ab;->v()[B

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v8, :cond_2

    .line 1425
    :try_start_2
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/c; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    return-object p0

    :catch_0
    move-exception p0

    if-eqz v8, :cond_3

    .line 1410
    :try_start_3
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/alibaba/fastjson2/c; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p0
    :try_end_4
    .catch Lcom/alibaba/fastjson2/c; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p0

    .line 1429
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 1426
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 1427
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 9

    const-string v0, "toJSONBytes error"

    .line 1652
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->global:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {v1, v2, p1}, Lcom/alibaba/fastjson/JSON;->createWriteContext(Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Lcom/alibaba/fastjson2/ab$a;

    move-result-object p1

    .line 1654
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/ab;->b(Lcom/alibaba/fastjson2/ab$a;)Lcom/alibaba/fastjson2/ab;

    move-result-object v8
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p0, :cond_0

    .line 1656
    :try_start_1
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_0

    .line 1658
    :cond_0
    invoke-virtual {v8, p0}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;)V

    .line 1659
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1660
    invoke-virtual {p1, v1, v1}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Laem;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, v8

    move-object v3, p0

    .line 1661
    invoke-interface/range {v1 .. v7}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 1664
    :goto_0
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/ab;->v()[B

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v8, :cond_1

    .line 1665
    :try_start_2
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/c; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    return-object p0

    :catch_0
    move-exception p0

    if-eqz v8, :cond_2

    .line 1654
    :try_start_3
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/alibaba/fastjson2/c; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0
    :try_end_4
    .catch Lcom/alibaba/fastjson2/c; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p0

    .line 1669
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 1666
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 1667
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static varargs toJSONBytes(Ljava/nio/charset/Charset;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 8

    const-string v0, "toJSONBytes error"

    .line 1380
    invoke-static {p2, p5, p6}, Lcom/alibaba/fastjson/JSON;->createWriteContext(Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Lcom/alibaba/fastjson2/ab$a;

    move-result-object p2

    if-eqz p4, :cond_0

    .line 1381
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_0

    .line 1382
    invoke-virtual {p2, p4}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/String;)V

    .line 1385
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/alibaba/fastjson2/ab;->b(Lcom/alibaba/fastjson2/ab$a;)Lcom/alibaba/fastjson2/ab;

    move-result-object p4
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1386
    :try_start_1
    array-length p5, p3

    const/4 p6, 0x0

    :goto_0
    if-ge p6, p5, :cond_1

    aget-object v1, p3, p6

    .line 1387
    invoke-static {p2, v1}, Lcom/alibaba/fastjson/JSON;->configFilter(Lcom/alibaba/fastjson2/ab$a;Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 1391
    invoke-virtual {p4}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_1

    .line 1393
    :cond_2
    invoke-virtual {p4, p1}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;)V

    .line 1394
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    .line 1395
    invoke-virtual {p2, p3, p3}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Laem;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p4

    move-object v3, p1

    .line 1396
    invoke-interface/range {v1 .. v7}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 1399
    :goto_1
    invoke-virtual {p4, p0}, Lcom/alibaba/fastjson2/ab;->a(Ljava/nio/charset/Charset;)[B

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p4, :cond_3

    .line 1400
    :try_start_2
    invoke-virtual {p4}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/c; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    return-object p0

    :catch_0
    move-exception p0

    if-eqz p4, :cond_4

    .line 1385
    :try_start_3
    invoke-virtual {p4}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/alibaba/fastjson2/c; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p0
    :try_end_4
    .catch Lcom/alibaba/fastjson2/c; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p0

    .line 1404
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 1401
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 1402
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 9

    .line 1481
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->global:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/JSON;->createWriteContext(Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Lcom/alibaba/fastjson2/ab$a;

    move-result-object v0

    .line 1482
    :try_start_0
    invoke-static {v0}, Lcom/alibaba/fastjson2/ab;->a(Lcom/alibaba/fastjson2/ab$a;)Lcom/alibaba/fastjson2/ab;

    move-result-object v8
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p0, :cond_0

    .line 1484
    :try_start_1
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_0

    .line 1486
    :cond_0
    invoke-virtual {v8, p0}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;)V

    .line 1487
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1488
    invoke-virtual {v0, v1, v1}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Laem;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, v8

    move-object v3, p0

    .line 1489
    invoke-interface/range {v1 .. v7}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 1492
    :goto_0
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v8, :cond_1

    .line 1493
    :try_start_2
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/c; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    return-object p0

    :catch_0
    move-exception p0

    if-eqz v8, :cond_2

    .line 1482
    :try_start_3
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/alibaba/fastjson2/c; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0
    :try_end_4
    .catch Lcom/alibaba/fastjson2/c; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p0

    .line 1497
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "toJSONString error"

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p0

    .line 1494
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, p0

    .line 1495
    :goto_2
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static varargs toJSONString(Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 7

    .line 1750
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->global:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-static {v0, p1, p2}, Lcom/alibaba/fastjson/JSON;->createWriteContext(Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Lcom/alibaba/fastjson2/ab$a;

    move-result-object p1

    .line 1751
    invoke-static {p1}, Lcom/alibaba/fastjson2/ab;->a(Lcom/alibaba/fastjson2/ab$a;)Lcom/alibaba/fastjson2/ab;

    move-result-object p2

    if-nez p0, :cond_0

    .line 1753
    :try_start_0
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_0

    .line 1755
    :cond_0
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;)V

    .line 1756
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/Class;)Laem;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p2

    move-object v2, p0

    .line 1757
    invoke-interface/range {v0 .. v6}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 1759
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_1

    .line 1760
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/ab;->close()V

    :cond_1
    return-object p0

    :catch_0
    move-exception p0

    if-eqz p2, :cond_2

    .line 1751
    :try_start_1
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 8

    .line 1704
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p1, v0, p3}, Lcom/alibaba/fastjson/JSON;->createWriteContext(Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Lcom/alibaba/fastjson2/ab$a;

    move-result-object p3

    .line 1705
    invoke-static {p3}, Lcom/alibaba/fastjson2/ab;->a(Lcom/alibaba/fastjson2/ab$a;)Lcom/alibaba/fastjson2/ab;

    move-result-object v7

    .line 1706
    :try_start_0
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->NeverUseThisValueExceptDefaultValue:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    if-eq v0, v1, :cond_1

    .line 1708
    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-static {p1}, Lcom/alibaba/fastjson/serializer/NameFilter;->of(Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/serializer/NameFilter;

    move-result-object p1

    .line 1709
    instance-of v0, p2, Lcom/alibaba/fastjson/serializer/NameFilter;

    if-eqz v0, :cond_0

    .line 1710
    check-cast p2, Lcom/alibaba/fastjson/serializer/NameFilter;

    invoke-static {p1, p2}, Lcom/alibaba/fastjson/serializer/NameFilter;->compose(Lcom/alibaba/fastjson/serializer/NameFilter;Lcom/alibaba/fastjson/serializer/NameFilter;)Lcom/alibaba/fastjson/serializer/NameFilter;

    move-result-object p2

    goto :goto_0

    .line 1712
    :cond_0
    invoke-static {p3, p1}, Lcom/alibaba/fastjson/JSON;->configFilter(Lcom/alibaba/fastjson2/ab$a;Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    .line 1716
    :cond_1
    :goto_0
    invoke-static {p3, p2}, Lcom/alibaba/fastjson/JSON;->configFilter(Lcom/alibaba/fastjson2/ab$a;Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    if-nez p0, :cond_2

    .line 1719
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_1

    .line 1721
    :cond_2
    invoke-virtual {v7, p0}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;)V

    .line 1722
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 1723
    invoke-virtual {p3, p1, p1}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Laem;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, v7

    move-object v2, p0

    .line 1724
    invoke-interface/range {v0 .. v6}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 1726
    :goto_1
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_3

    .line 1727
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/ab;->close()V

    :cond_3
    return-object p0

    :catch_0
    move-exception p0

    if-eqz v7, :cond_4

    .line 1705
    :try_start_1
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 8

    const-string v0, "toJSONString error"

    .line 1215
    invoke-static {p1, p4, p5}, Lcom/alibaba/fastjson/JSON;->createWriteContext(Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Lcom/alibaba/fastjson2/ab$a;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 1216
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_0

    .line 1217
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/String;)V

    .line 1220
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/ab;->a(Lcom/alibaba/fastjson2/ab$a;)Lcom/alibaba/fastjson2/ab;

    move-result-object p3
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1221
    :try_start_1
    array-length p4, p2

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p4, :cond_1

    aget-object v1, p2, p5

    .line 1222
    invoke-static {p1, v1}, Lcom/alibaba/fastjson/JSON;->configFilter(Lcom/alibaba/fastjson2/ab$a;Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    .line 1226
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_1

    .line 1228
    :cond_2
    invoke-virtual {p3, p0}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;)V

    .line 1229
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 1230
    invoke-virtual {p1, p2, p2}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Laem;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p3

    move-object v3, p0

    .line 1231
    invoke-interface/range {v1 .. v7}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 1234
    :goto_1
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p3, :cond_3

    .line 1235
    :try_start_2
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/c; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    return-object p0

    :catch_0
    move-exception p0

    if-eqz p3, :cond_4

    .line 1220
    :try_start_3
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/alibaba/fastjson2/c; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p0
    :try_end_4
    .catch Lcom/alibaba/fastjson2/c; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p0

    .line 1239
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 1236
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 1237
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6

    .line 1249
    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 1

    .line 1687
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p1, v0, p2}, Lcom/alibaba/fastjson/JSON;->createWriteContext(Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Lcom/alibaba/fastjson2/ab$a;

    move-result-object p1

    .line 1688
    invoke-static {p1}, Lcom/alibaba/fastjson2/ab;->a(Lcom/alibaba/fastjson2/ab$a;)Lcom/alibaba/fastjson2/ab;

    move-result-object p1

    .line 1689
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;)V

    .line 1690
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/ab;->h(Ljava/lang/Object;)V

    .line 1691
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 1692
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->close()V

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    if-eqz p1, :cond_1

    .line 1688
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeFilter;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializeFilter;)Ljava/lang/String;
    .locals 11

    const-string v0, "toJSONString error"

    .line 1505
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->global:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    const/4 v3, 0x0

    new-array v4, v3, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v1, v2, v4}, Lcom/alibaba/fastjson/JSON;->createWriteContext(Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Lcom/alibaba/fastjson2/ab$a;

    move-result-object v1

    .line 1506
    invoke-static {v1, p1}, Lcom/alibaba/fastjson/JSON;->configFilter(Lcom/alibaba/fastjson2/ab$a;Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    .line 1507
    invoke-static {v1, p2}, Lcom/alibaba/fastjson/JSON;->configFilter(Lcom/alibaba/fastjson2/ab$a;Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    .line 1508
    array-length p1, p3

    :goto_0
    if-ge v3, p1, :cond_0

    aget-object p2, p3, v3

    .line 1509
    invoke-static {v1, p2}, Lcom/alibaba/fastjson/JSON;->configFilter(Lcom/alibaba/fastjson2/ab$a;Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1512
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/alibaba/fastjson2/ab;->a(Lcom/alibaba/fastjson2/ab$a;)Lcom/alibaba/fastjson2/ab;

    move-result-object p1
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p0, :cond_1

    .line 1514
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_1

    .line 1516
    :cond_1
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;)V

    .line 1517
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 1518
    invoke-virtual {v1, p2, p2}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Laem;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-object v5, p1

    move-object v6, p0

    .line 1519
    invoke-interface/range {v4 .. v10}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 1522
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p1, :cond_2

    .line 1523
    :try_start_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/c; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    return-object p0

    :catch_0
    move-exception p0

    if-eqz p1, :cond_3

    .line 1512
    :try_start_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/alibaba/fastjson2/c; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p0
    :try_end_4
    .catch Lcom/alibaba/fastjson2/c; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p0

    .line 1527
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 1524
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 1525
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 7

    .line 1734
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->global:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {v0, v1, p2}, Lcom/alibaba/fastjson/JSON;->createWriteContext(Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Lcom/alibaba/fastjson2/ab$a;

    move-result-object p2

    .line 1735
    invoke-static {p2, p1}, Lcom/alibaba/fastjson/JSON;->configFilter(Lcom/alibaba/fastjson2/ab$a;Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    .line 1737
    invoke-static {p2}, Lcom/alibaba/fastjson2/ab;->a(Lcom/alibaba/fastjson2/ab$a;)Lcom/alibaba/fastjson2/ab;

    move-result-object p1

    if-nez p0, :cond_0

    .line 1739
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_0

    .line 1741
    :cond_0
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;)V

    .line 1742
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/Class;)Laem;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p1

    move-object v2, p0

    .line 1743
    invoke-interface/range {v0 .. v6}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 1745
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    .line 1746
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->close()V

    :cond_1
    return-object p0

    :catch_0
    move-exception p0

    if-eqz p1, :cond_2

    .line 1737
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0
.end method

.method public static toJSONString(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 9

    const-string v0, "toJSONString error"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1456
    new-array p1, p1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, p1, v1

    goto :goto_0

    .line 1457
    :cond_0
    new-array p1, v1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1458
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->global:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    .line 1459
    invoke-static {v1, v2, p1}, Lcom/alibaba/fastjson/JSON;->createWriteContext(Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Lcom/alibaba/fastjson2/ab$a;

    move-result-object p1

    .line 1461
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/ab;->a(Lcom/alibaba/fastjson2/ab$a;)Lcom/alibaba/fastjson2/ab;

    move-result-object v8
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p0, :cond_1

    .line 1463
    :try_start_1
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_1

    .line 1465
    :cond_1
    invoke-virtual {v8, p0}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;)V

    .line 1466
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1467
    invoke-virtual {p1, v1, v1}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Laem;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, v8

    move-object v3, p0

    .line 1468
    invoke-interface/range {v1 .. v7}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 1471
    :goto_1
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v8, :cond_2

    .line 1472
    :try_start_2
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/c; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    return-object p0

    :catch_0
    move-exception p0

    if-eqz v8, :cond_3

    .line 1461
    :try_start_3
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/alibaba/fastjson2/c; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p0
    :try_end_4
    .catch Lcom/alibaba/fastjson2/c; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p0

    .line 1476
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 1473
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 1474
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static varargs toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 9

    const-string v0, "toJSONString error"

    .line 1253
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->global:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {v1, v2, p2}, Lcom/alibaba/fastjson/JSON;->createWriteContext(Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Lcom/alibaba/fastjson2/ab$a;

    move-result-object p2

    .line 1255
    :try_start_0
    invoke-static {p2}, Lcom/alibaba/fastjson2/ab;->a(Lcom/alibaba/fastjson2/ab$a;)Lcom/alibaba/fastjson2/ab;

    move-result-object v8
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1256
    :try_start_1
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 1257
    invoke-static {p2, v3}, Lcom/alibaba/fastjson/JSON;->configFilter(Lcom/alibaba/fastjson2/ab$a;Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    .line 1261
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_1

    .line 1263
    :cond_1
    invoke-virtual {v8, p0}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;)V

    .line 1264
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 1265
    invoke-virtual {p2, p1, p1}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Laem;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, v8

    move-object v3, p0

    .line 1266
    invoke-interface/range {v1 .. v7}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 1269
    :goto_1
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v8, :cond_2

    .line 1270
    :try_start_2
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/c; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    return-object p0

    :catch_0
    move-exception p0

    if-eqz v8, :cond_3

    .line 1255
    :try_start_3
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/alibaba/fastjson2/c; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p0
    :try_end_4
    .catch Lcom/alibaba/fastjson2/c; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p0

    .line 1274
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 1271
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 1272
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static varargs toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 9

    const-string v0, "toJSONString error"

    .line 1532
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->global:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {v1, v2, p1}, Lcom/alibaba/fastjson/JSON;->createWriteContext(Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Lcom/alibaba/fastjson2/ab$a;

    move-result-object p1

    .line 1534
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/ab;->a(Lcom/alibaba/fastjson2/ab$a;)Lcom/alibaba/fastjson2/ab;

    move-result-object v8
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p0, :cond_0

    .line 1536
    :try_start_1
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_0

    .line 1538
    :cond_0
    invoke-virtual {v8, p0}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;)V

    .line 1539
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1540
    invoke-virtual {p1, v1, v1}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Laem;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, v8

    move-object v3, p0

    .line 1541
    invoke-interface/range {v1 .. v7}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 1544
    :goto_0
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v8, :cond_1

    .line 1545
    :try_start_2
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/c; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    return-object p0

    :catch_0
    move-exception p0

    if-eqz v8, :cond_2

    .line 1534
    :try_start_3
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/alibaba/fastjson2/c; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0
    :try_end_4
    .catch Lcom/alibaba/fastjson2/c; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p0

    .line 1549
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 1546
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 1547
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static varargs toJSONStringWithDateFormat(Ljava/lang/Object;Ljava/lang/String;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 8

    .line 1768
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->global:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {v0, v1, p2}, Lcom/alibaba/fastjson/JSON;->createWriteContext(Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Lcom/alibaba/fastjson2/ab$a;

    move-result-object p2

    .line 1769
    invoke-static {p2}, Lcom/alibaba/fastjson2/ab;->a(Lcom/alibaba/fastjson2/ab$a;)Lcom/alibaba/fastjson2/ab;

    move-result-object v7

    .line 1770
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/String;)V

    if-nez p0, :cond_0

    .line 1773
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_0

    .line 1775
    :cond_0
    invoke-virtual {v7, p0}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;)V

    .line 1776
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/Class;)Laem;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, v7

    move-object v2, p0

    .line 1777
    invoke-interface/range {v0 .. v6}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 1779
    :goto_0
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_1

    .line 1780
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/ab;->close()V

    :cond_1
    return-object p0

    :catch_0
    move-exception p0

    if-eqz v7, :cond_2

    .line 1769
    :try_start_1
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0
.end method

.method public static varargs toJSONStringZ(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 1696
    new-array v3, v0, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toJavaObject(Lcom/alibaba/fastjson/JSON;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/JSON;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2089
    instance-of v0, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_0

    .line 2090
    check-cast p0, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->toJavaObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 2093
    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2094
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs writeJSONString(Ljava/io/OutputStream;Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I
    .locals 8

    const-string v0, "writeJSONString error"

    .line 1862
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->global:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-static {v1, p2, p3}, Lcom/alibaba/fastjson/JSON;->createWriteContext(Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Lcom/alibaba/fastjson2/ab$a;

    move-result-object p2

    .line 1864
    :try_start_0
    invoke-static {p2}, Lcom/alibaba/fastjson2/ab;->b(Lcom/alibaba/fastjson2/ab$a;)Lcom/alibaba/fastjson2/ab;

    move-result-object p3
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1865
    :try_start_1
    invoke-virtual {p3, p1}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 1868
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_0

    .line 1870
    :cond_0
    invoke-virtual {p3, p1}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;)V

    .line 1871
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/Class;)Laem;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p3

    move-object v3, p1

    .line 1872
    invoke-interface/range {v1 .. v7}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 1874
    :goto_0
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/ab;->v()[B

    move-result-object p1

    .line 1875
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 1876
    array-length p0, p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p3, :cond_1

    .line 1877
    :try_start_2
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/c; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    return p0

    :catch_0
    move-exception p0

    if-eqz p3, :cond_2

    .line 1864
    :try_start_3
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/alibaba/fastjson2/c; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0
    :try_end_4
    .catch Lcom/alibaba/fastjson2/c; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p0

    .line 1881
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 1878
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 1879
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final writeJSONString(Ljava/io/OutputStream;Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializeFilter;)I
    .locals 1

    const/4 v0, 0x0

    .line 1794
    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/fastjson/JSON;->writeJSONString(Ljava/io/OutputStream;Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result p0

    return p0
.end method

.method public static final varargs writeJSONString(Ljava/io/OutputStream;Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I
    .locals 9

    const-string v0, "writeJSONString error"

    .line 1929
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->global:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {v1, v2, p3}, Lcom/alibaba/fastjson/JSON;->createWriteContext(Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Lcom/alibaba/fastjson2/ab$a;

    move-result-object p3

    .line 1930
    :try_start_0
    invoke-static {p3}, Lcom/alibaba/fastjson2/ab;->b(Lcom/alibaba/fastjson2/ab$a;)Lcom/alibaba/fastjson2/ab;

    move-result-object v8
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1931
    :try_start_1
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 1932
    invoke-static {p3, v3}, Lcom/alibaba/fastjson/JSON;->configFilter(Lcom/alibaba/fastjson2/ab$a;Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 1936
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_1

    .line 1938
    :cond_1
    invoke-virtual {v8, p1}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;)V

    .line 1939
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/Class;)Laem;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, v8

    move-object v3, p1

    .line 1940
    invoke-interface/range {v1 .. v7}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 1942
    :goto_1
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/ab;->v()[B

    move-result-object p1

    .line 1943
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 1944
    array-length p0, p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v8, :cond_2

    .line 1945
    :try_start_2
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/c; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    return p0

    :catch_0
    move-exception p0

    if-eqz v8, :cond_3

    .line 1930
    :try_start_3
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/alibaba/fastjson2/c; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p0
    :try_end_4
    .catch Lcom/alibaba/fastjson2/c; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p0

    .line 1949
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 1946
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 1947
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final varargs writeJSONString(Ljava/io/OutputStream;Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I
    .locals 1

    const/4 v0, 0x0

    .line 1787
    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/fastjson/JSON;->writeJSONString(Ljava/io/OutputStream;Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result p0

    return p0
.end method

.method public static final varargs writeJSONString(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I
    .locals 8

    const-string v0, "writeJSONString error"

    .line 1895
    invoke-static {p3, p6, p7}, Lcom/alibaba/fastjson/JSON;->createWriteContext(Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Lcom/alibaba/fastjson2/ab$a;

    move-result-object p3

    if-eqz p5, :cond_0

    .line 1896
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p6

    if-nez p6, :cond_0

    .line 1897
    invoke-virtual {p3, p5}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/String;)V

    .line 1900
    :cond_0
    :try_start_0
    invoke-static {p3}, Lcom/alibaba/fastjson2/ab;->b(Lcom/alibaba/fastjson2/ab$a;)Lcom/alibaba/fastjson2/ab;

    move-result-object p5
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1901
    :try_start_1
    array-length p6, p4

    const/4 p7, 0x0

    :goto_0
    if-ge p7, p6, :cond_1

    aget-object v1, p4, p7

    .line 1902
    invoke-static {p3, v1}, Lcom/alibaba/fastjson/JSON;->configFilter(Lcom/alibaba/fastjson2/ab$a;Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    add-int/lit8 p7, p7, 0x1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 1906
    invoke-virtual {p5}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_1

    .line 1908
    :cond_2
    invoke-virtual {p5, p2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;)V

    .line 1909
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/Class;)Laem;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p5

    move-object v3, p2

    .line 1910
    invoke-interface/range {v1 .. v7}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 1912
    :goto_1
    invoke-virtual {p5, p1}, Lcom/alibaba/fastjson2/ab;->a(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 1913
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 1914
    array-length p0, p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p5, :cond_3

    .line 1915
    :try_start_2
    invoke-virtual {p5}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/c; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    return p0

    :catch_0
    move-exception p0

    if-eqz p5, :cond_4

    .line 1900
    :try_start_3
    invoke-virtual {p5}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/alibaba/fastjson2/c; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p0
    :try_end_4
    .catch Lcom/alibaba/fastjson2/c; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p0

    .line 1919
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 1916
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 1917
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final varargs writeJSONString(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I
    .locals 9

    const-string v0, "writeJSONString error"

    .line 1803
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->global:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {v1, v2, p3}, Lcom/alibaba/fastjson/JSON;->createWriteContext(Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Lcom/alibaba/fastjson2/ab$a;

    move-result-object p3

    .line 1805
    :try_start_0
    invoke-static {p3}, Lcom/alibaba/fastjson2/ab;->b(Lcom/alibaba/fastjson2/ab$a;)Lcom/alibaba/fastjson2/ab;

    move-result-object v8
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p2, :cond_0

    .line 1807
    :try_start_1
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_0

    .line 1809
    :cond_0
    invoke-virtual {v8, p2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;)V

    .line 1810
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/Class;)Laem;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, v8

    move-object v3, p2

    .line 1811
    invoke-interface/range {v1 .. v7}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 1813
    :goto_0
    invoke-virtual {v8, p1}, Lcom/alibaba/fastjson2/ab;->a(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 1814
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 1815
    array-length p0, p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v8, :cond_1

    .line 1816
    :try_start_2
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/c; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    return p0

    :catch_0
    move-exception p0

    if-eqz v8, :cond_2

    .line 1805
    :try_start_3
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/alibaba/fastjson2/c; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0
    :try_end_4
    .catch Lcom/alibaba/fastjson2/c; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p0

    .line 1820
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 1817
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 1818
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static varargs writeJSONString(Ljava/io/Writer;Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 8

    const-string v0, "writeJSONString error"

    .line 1834
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->global:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-static {v1, p2, p3}, Lcom/alibaba/fastjson/JSON;->createWriteContext(Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Lcom/alibaba/fastjson2/ab$a;

    move-result-object p2

    .line 1836
    :try_start_0
    invoke-static {p2}, Lcom/alibaba/fastjson2/ab;->b(Lcom/alibaba/fastjson2/ab$a;)Lcom/alibaba/fastjson2/ab;

    move-result-object p3
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1837
    :try_start_1
    invoke-virtual {p3, p1}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 1840
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_0

    .line 1842
    :cond_0
    invoke-virtual {p3, p1}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;)V

    .line 1843
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/Class;)Laem;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p3

    move-object v3, p1

    .line 1844
    invoke-interface/range {v1 .. v7}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 1847
    :goto_0
    invoke-virtual {p3, p0}, Lcom/alibaba/fastjson2/ab;->a(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p3, :cond_1

    .line 1848
    :try_start_2
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/c; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    return-void

    :catch_0
    move-exception p0

    if-eqz p3, :cond_2

    .line 1836
    :try_start_3
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/alibaba/fastjson2/c; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0
    :try_end_4
    .catch Lcom/alibaba/fastjson2/c; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p0

    .line 1852
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 1849
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/c;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 1850
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static varargs writeJSONString(Ljava/io/Writer;Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 1

    .line 1825
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/fastjson/JSON;->writeJSONString(Ljava/io/Writer;Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void
.end method


# virtual methods
.method public toJSONString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    .line 2198
    new-array v0, v0, [Lcom/alibaba/fastjson2/ab$b;

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->ReferenceDetection:Lcom/alibaba/fastjson2/ab$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/a;->a(Ljava/lang/Object;[Lcom/alibaba/fastjson2/ab$b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJavaObject(Lcom/alibaba/fastjson/TypeReference;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/TypeReference<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2084
    invoke-virtual {p1}, Lcom/alibaba/fastjson/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-class p1, Ljava/lang/Object;

    .line 2085
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSON;->toJavaObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract toJavaObject(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract toJavaObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation
.end method

.method public varargs toString([Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 0

    .line 2202
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public writeJSONString(Ljava/lang/Appendable;)V
    .locals 2

    .line 2206
    instance-of v0, p1, Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 2207
    check-cast p1, Ljava/io/Writer;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {p1, p0, v0}, Lcom/alibaba/fastjson/JSON;->writeJSONString(Ljava/io/Writer;Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void

    .line 2212
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2214
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
