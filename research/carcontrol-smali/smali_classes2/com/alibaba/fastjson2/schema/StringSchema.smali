.class public final Lcom/alibaba/fastjson2/schema/StringSchema;
.super Lcom/alibaba/fastjson2/schema/JSONSchema;
.source "StringSchema.java"


# static fields
.field static final EMAIL_PATTERN:Ljava/util/regex/Pattern;

.field static final IP_DOMAIN_PATTERN:Ljava/util/regex/Pattern;

.field static final USER_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field final anyOf:Lcom/alibaba/fastjson2/schema/AnyOf;

.field final constValue:Ljava/lang/String;

.field final enumValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final format:Ljava/lang/String;

.field final formatValidator:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final maxLength:I

.field final minLength:I

.field final oneOf:Lcom/alibaba/fastjson2/schema/OneOf;

.field final pattern:Ljava/util/regex/Pattern;

.field final patternFormat:Ljava/lang/String;

.field final typed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^\\s*?(.+)@(.+?)\\s*$"

    .line 20
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/schema/StringSchema;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^\\[(.*)\\]$"

    .line 21
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/schema/StringSchema;->IP_DOMAIN_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^\\s*(((\\\\.)|[^\\s\\p{Cntrl}\\(\\)<>@,;:\'\\\\\\\"\\.\\[\\]]|\')+|(\"[^\"]*\"))(\\.(((\\\\.)|[^\\s\\p{Cntrl}\\(\\)<>@,;:\'\\\\\\\"\\.\\[\\]]|\')+|(\"[^\"]*\")))*$"

    .line 22
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/schema/StringSchema;->USER_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/alibaba/fastjson2/JSONObject;)V
    .locals 7

    .line 38
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    const-string/jumbo v0, "type"

    .line 39
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "string"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->typed:Z

    const-string v0, "minLength"

    const/4 v1, -0x1

    .line 40
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONObject;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->minLength:I

    const-string v0, "maxLength"

    .line 41
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONObject;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->maxLength:I

    const-string v0, "pattern"

    .line 42
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->patternFormat:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->pattern:Ljava/util/regex/Pattern;

    const-string v0, "format"

    .line 44
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->format:Ljava/lang/String;

    const-string v3, "anyOf"

    .line 46
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 47
    instance-of v4, v3, Lcom/alibaba/fastjson2/JSONArray;

    if-eqz v4, :cond_1

    .line 48
    check-cast v3, Lcom/alibaba/fastjson2/JSONArray;

    const-class v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/alibaba/fastjson2/schema/StringSchema;->anyOf(Lcom/alibaba/fastjson2/JSONArray;Ljava/lang/Class;)Lcom/alibaba/fastjson2/schema/AnyOf;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->anyOf:Lcom/alibaba/fastjson2/schema/AnyOf;

    goto :goto_1

    .line 50
    :cond_1
    iput-object v2, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->anyOf:Lcom/alibaba/fastjson2/schema/AnyOf;

    :goto_1
    const-string v3, "oneOf"

    .line 53
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 54
    instance-of v4, v3, Lcom/alibaba/fastjson2/JSONArray;

    if-eqz v4, :cond_2

    .line 55
    check-cast v3, Lcom/alibaba/fastjson2/JSONArray;

    const-class v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/alibaba/fastjson2/schema/StringSchema;->oneOf(Lcom/alibaba/fastjson2/JSONArray;Ljava/lang/Class;)Lcom/alibaba/fastjson2/schema/OneOf;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->oneOf:Lcom/alibaba/fastjson2/schema/OneOf;

    goto :goto_2

    .line 57
    :cond_2
    iput-object v2, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->oneOf:Lcom/alibaba/fastjson2/schema/OneOf;

    :goto_2
    const-string v3, "const"

    .line 60
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->constValue:Ljava/lang/String;

    const-string v3, "enum"

    .line 64
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 65
    instance-of v5, v4, Ljava/util/Collection;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 66
    check-cast v4, Ljava/util/Collection;

    .line 67
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {p1, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 68
    invoke-interface {p1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 69
    :cond_3
    instance-of v4, v4, [Ljava/lang/Object;

    if-eqz v4, :cond_4

    .line 70
    const-class v4, Ljava/util/LinkedHashSet;

    const-class v5, Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/alibaba/fastjson2/TypeReference;->collectionType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v4

    new-array v5, v6, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    invoke-virtual {p1, v3, v4, v5}, Lcom/alibaba/fastjson2/JSONObject;->getObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    goto :goto_3

    :cond_4
    move-object p1, v2

    .line 72
    :goto_3
    iput-object p1, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->enumValues:Ljava/util/Set;

    if-nez v0, :cond_5

    .line 76
    iput-object v2, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->formatValidator:Ljava/util/function/Predicate;

    goto/16 :goto_5

    .line 78
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string p1, "email"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_4

    :cond_6
    const/16 v1, 0x8

    goto/16 :goto_4

    :sswitch_1
    const-string/jumbo p1, "uuid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v1, 0x7

    goto :goto_4

    :sswitch_2
    const-string/jumbo p1, "time"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v1, 0x6

    goto :goto_4

    :sswitch_3
    const-string p1, "ipv6"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_4

    :cond_9
    const/4 v1, 0x5

    goto :goto_4

    :sswitch_4
    const-string p1, "ipv4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_4

    :cond_a
    const/4 v1, 0x4

    goto :goto_4

    :sswitch_5
    const-string p1, "date"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_4

    :cond_b
    const/4 v1, 0x3

    goto :goto_4

    :sswitch_6
    const-string/jumbo p1, "uri"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_4

    :cond_c
    const/4 v1, 0x2

    goto :goto_4

    :sswitch_7
    const-string p1, "date-time"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_4

    :cond_d
    const/4 v1, 0x1

    goto :goto_4

    :sswitch_8
    const-string p1, "duration"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_4

    :cond_e
    move v1, v6

    :goto_4
    packed-switch v1, :pswitch_data_0

    .line 129
    iput-object v2, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->formatValidator:Ljava/util/function/Predicate;

    goto :goto_5

    .line 80
    :pswitch_0
    sget-object p1, Lcom/alibaba/fastjson2/schema/-$$Lambda$DZvXaAi3mPgk1lqCWGJtY_sU1YU;->INSTANCE:Lcom/alibaba/fastjson2/schema/-$$Lambda$DZvXaAi3mPgk1lqCWGJtY_sU1YU;

    iput-object p1, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->formatValidator:Ljava/util/function/Predicate;

    goto :goto_5

    .line 126
    :pswitch_1
    sget-object p1, Lcom/alibaba/fastjson2/schema/-$$Lambda$WDX9iy9Ss-qra57EvfT-PJ3YH_M;->INSTANCE:Lcom/alibaba/fastjson2/schema/-$$Lambda$WDX9iy9Ss-qra57EvfT-PJ3YH_M;

    iput-object p1, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->formatValidator:Ljava/util/function/Predicate;

    goto :goto_5

    .line 109
    :pswitch_2
    sget-object p1, Lcom/alibaba/fastjson2/schema/-$$Lambda$6GSnsneKALE6SjV4k7I9zq7xXpE;->INSTANCE:Lcom/alibaba/fastjson2/schema/-$$Lambda$6GSnsneKALE6SjV4k7I9zq7xXpE;

    iput-object p1, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->formatValidator:Ljava/util/function/Predicate;

    goto :goto_5

    .line 86
    :pswitch_3
    sget-object p1, Lcom/alibaba/fastjson2/schema/-$$Lambda$pfyJc8Al2uuaaW2NCTWFbSA2tG0;->INSTANCE:Lcom/alibaba/fastjson2/schema/-$$Lambda$pfyJc8Al2uuaaW2NCTWFbSA2tG0;

    iput-object p1, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->formatValidator:Ljava/util/function/Predicate;

    goto :goto_5

    .line 83
    :pswitch_4
    sget-object p1, Lcom/alibaba/fastjson2/schema/-$$Lambda$qmB-OvrOgahZIQS9jhou0PjXMYc;->INSTANCE:Lcom/alibaba/fastjson2/schema/-$$Lambda$qmB-OvrOgahZIQS9jhou0PjXMYc;

    iput-object p1, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->formatValidator:Ljava/util/function/Predicate;

    goto :goto_5

    .line 106
    :pswitch_5
    sget-object p1, Lcom/alibaba/fastjson2/schema/-$$Lambda$iz6GShYrRflLuPWiUp36tDUclIw;->INSTANCE:Lcom/alibaba/fastjson2/schema/-$$Lambda$iz6GShYrRflLuPWiUp36tDUclIw;

    iput-object p1, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->formatValidator:Ljava/util/function/Predicate;

    goto :goto_5

    .line 89
    :pswitch_6
    sget-object p1, Lcom/alibaba/fastjson2/schema/-$$Lambda$StringSchema$Y8KNEY_E-ciTuLorSYvblRC_DoI;->INSTANCE:Lcom/alibaba/fastjson2/schema/-$$Lambda$StringSchema$Y8KNEY_E-ciTuLorSYvblRC_DoI;

    iput-object p1, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->formatValidator:Ljava/util/function/Predicate;

    goto :goto_5

    .line 103
    :pswitch_7
    sget-object p1, Lcom/alibaba/fastjson2/schema/-$$Lambda$4jAjvgyqK9qZIW3RqsRA2Qd1W7Y;->INSTANCE:Lcom/alibaba/fastjson2/schema/-$$Lambda$4jAjvgyqK9qZIW3RqsRA2Qd1W7Y;

    iput-object p1, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->formatValidator:Ljava/util/function/Predicate;

    goto :goto_5

    .line 112
    :pswitch_8
    sget-object p1, Lcom/alibaba/fastjson2/schema/-$$Lambda$StringSchema$Yearhc5eLnf-W3cUGY6BOoY4tkc;->INSTANCE:Lcom/alibaba/fastjson2/schema/-$$Lambda$StringSchema$Yearhc5eLnf-W3cUGY6BOoY4tkc;

    iput-object p1, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->formatValidator:Ljava/util/function/Predicate;

    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x76bbb26c -> :sswitch_8
        -0x1195de74 -> :sswitch_7
        0x1c56c -> :sswitch_6
        0x2eefae -> :sswitch_5
        0x316de5 -> :sswitch_4
        0x316de7 -> :sswitch_3
        0x3652cd -> :sswitch_2
        0x36f3bb -> :sswitch_1
        0x5c24b9c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isEmail(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "."

    .line 216
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 221
    :cond_1
    sget-object v1, Lcom/alibaba/fastjson2/schema/StringSchema;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 222
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    const/4 v1, 0x1

    .line 226
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x40

    if-le v3, v4, :cond_3

    return v0

    .line 231
    :cond_3
    sget-object v3, Lcom/alibaba/fastjson2/schema/StringSchema;->USER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_4

    return v0

    :cond_4
    const/4 v2, 0x2

    .line 235
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 236
    sget-object v2, Lcom/alibaba/fastjson2/schema/StringSchema;->IP_DOMAIN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 239
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 240
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 241
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->validateIPv4(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->validateIPv6(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_5
    :goto_0
    move v0, v1

    goto :goto_1

    .line 243
    :cond_6
    invoke-static {p0}, Lcom/alibaba/fastjson2/schema/DomainValidator;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p0}, Lcom/alibaba/fastjson2/schema/DomainValidator;->isValidTld(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_7
    :goto_1
    return v0
.end method

.method static synthetic lambda$new$0(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method static synthetic lambda$new$1(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 113
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/time/Duration;->parse(Ljava/lang/CharSequence;)Ljava/time/Duration;
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public getType()Lcom/alibaba/fastjson2/schema/JSONSchema$Type;
    .locals 1

    .line 137
    sget-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->String:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    return-object v0
.end method

.method public toJSONObject()Lcom/alibaba/fastjson2/JSONObject;
    .locals 3

    .line 251
    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "string"

    .line 253
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget v1, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->minLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 256
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "minLength"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->format:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "format"

    .line 260
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->patternFormat:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 264
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->pattern:Ljava/util/regex/Pattern;

    const-string v2, "pattern"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->anyOf:Lcom/alibaba/fastjson2/schema/AnyOf;

    if-eqz v1, :cond_3

    const-string v2, "anyOf"

    .line 268
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->oneOf:Lcom/alibaba/fastjson2/schema/OneOf;

    if-eqz v1, :cond_4

    const-string v2, "oneOf"

    .line 272
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->constValue:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v2, "const"

    .line 276
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_5
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->enumValues:Ljava/util/Set;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 280
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->enumValues:Ljava/util/Set;

    const-string v2, "enum"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method

.method public validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;
    .locals 5

    if-nez p1, :cond_1

    .line 143
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->typed:Z

    if-eqz p1, :cond_0

    .line 144
    sget-object p1, Lcom/alibaba/fastjson2/schema/StringSchema;->REQUIRED_NOT_MATCH:Lcom/alibaba/fastjson2/schema/ValidateResult;

    return-object p1

    .line 146
    :cond_0
    sget-object p1, Lcom/alibaba/fastjson2/schema/StringSchema;->SUCCESS:Lcom/alibaba/fastjson2/schema/ValidateResult;

    return-object p1

    .line 149
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    .line 150
    check-cast p1, Ljava/lang/String;

    .line 152
    iget v0, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->minLength:I

    if-gez v0, :cond_2

    iget v0, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->maxLength:I

    if-ltz v0, :cond_4

    .line 153
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    .line 154
    iget v4, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->minLength:I

    if-ltz v4, :cond_3

    if-ge v0, v4, :cond_3

    .line 155
    new-instance v0, Lcom/alibaba/fastjson2/schema/ValidateResult;

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->minLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "minLength not match, expect >= %s, but %s"

    invoke-direct {v0, v3, p1, v1}, Lcom/alibaba/fastjson2/schema/ValidateResult;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 158
    :cond_3
    iget v4, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->maxLength:I

    if-ltz v4, :cond_4

    if-le v0, v4, :cond_4

    .line 159
    new-instance v0, Lcom/alibaba/fastjson2/schema/ValidateResult;

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->maxLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "maxLength not match, expect <= %s, but %s"

    invoke-direct {v0, v3, p1, v1}, Lcom/alibaba/fastjson2/schema/ValidateResult;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 163
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->pattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_5

    .line 164
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_5

    .line 165
    new-instance v0, Lcom/alibaba/fastjson2/schema/ValidateResult;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->patternFormat:Ljava/lang/String;

    aput-object v4, v1, v3

    aput-object p1, v1, v2

    const-string p1, "pattern not match, expect %s, but %s"

    invoke-direct {v0, v3, p1, v1}, Lcom/alibaba/fastjson2/schema/ValidateResult;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 169
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->formatValidator:Ljava/util/function/Predicate;

    if-eqz v0, :cond_6

    .line 170
    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 171
    new-instance v0, Lcom/alibaba/fastjson2/schema/ValidateResult;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->format:Ljava/lang/String;

    aput-object v4, v1, v3

    aput-object p1, v1, v2

    const-string p1, "format not match, expect %s, but %s"

    invoke-direct {v0, v3, p1, v1}, Lcom/alibaba/fastjson2/schema/ValidateResult;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 175
    :cond_6
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->anyOf:Lcom/alibaba/fastjson2/schema/AnyOf;

    if-eqz v0, :cond_7

    .line 176
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/schema/AnyOf;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_7

    return-object v0

    .line 182
    :cond_7
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->oneOf:Lcom/alibaba/fastjson2/schema/OneOf;

    if-eqz v0, :cond_8

    .line 183
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/schema/OneOf;->validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/schema/ValidateResult;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_8

    return-object v0

    .line 189
    :cond_8
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->constValue:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 190
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 191
    new-instance v0, Lcom/alibaba/fastjson2/schema/ValidateResult;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->constValue:Ljava/lang/String;

    aput-object v4, v1, v3

    aput-object p1, v1, v2

    const-string p1, "must be const %s, but %s"

    invoke-direct {v0, v3, p1, v1}, Lcom/alibaba/fastjson2/schema/ValidateResult;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 195
    :cond_9
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->enumValues:Ljava/util/Set;

    if-eqz v0, :cond_a

    .line 196
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 197
    new-instance v0, Lcom/alibaba/fastjson2/schema/ValidateResult;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string p1, "not in enum values, %s"

    invoke-direct {v0, v3, p1, v1}, Lcom/alibaba/fastjson2/schema/ValidateResult;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 201
    :cond_a
    sget-object p1, Lcom/alibaba/fastjson2/schema/StringSchema;->SUCCESS:Lcom/alibaba/fastjson2/schema/ValidateResult;

    return-object p1

    .line 204
    :cond_b
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/schema/StringSchema;->typed:Z

    if-nez v0, :cond_c

    .line 205
    sget-object p1, Lcom/alibaba/fastjson2/schema/StringSchema;->SUCCESS:Lcom/alibaba/fastjson2/schema/ValidateResult;

    return-object p1

    .line 208
    :cond_c
    new-instance v0, Lcom/alibaba/fastjson2/schema/ValidateResult;

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v4, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->String:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    aput-object v4, v1, v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "expect type %s, but %s"

    invoke-direct {v0, v3, p1, v1}, Lcom/alibaba/fastjson2/schema/ValidateResult;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method
