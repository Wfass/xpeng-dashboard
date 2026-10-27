.class public final Laao;
.super Laai;
.source "StringSchema.java"


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field static final b:Ljava/util/regex/Pattern;

.field static final c:Ljava/util/regex/Pattern;


# instance fields
.field final d:I

.field final e:I

.field final f:Ljava/lang/String;

.field final g:Ljava/lang/String;

.field final h:Ljava/util/regex/Pattern;

.field final i:Z

.field final j:Laac;

.field final k:Laan;

.field final l:Ljava/lang/String;

.field final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final n:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^\\s*?(.+)@(.+?)\\s*$"

    .line 20
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Laao;->a:Ljava/util/regex/Pattern;

    const-string v0, "^\\[(.*)\\]$"

    .line 21
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Laao;->b:Ljava/util/regex/Pattern;

    const-string v0, "^\\s*(((\\\\.)|[^\\s\\p{Cntrl}\\(\\)<>@,;:\'\\\\\\\"\\.\\[\\]]|\')+|(\"[^\"]*\"))(\\.(((\\\\.)|[^\\s\\p{Cntrl}\\(\\)<>@,;:\'\\\\\\\"\\.\\[\\]]|\')+|(\"[^\"]*\")))*$"

    .line 22
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Laao;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/alibaba/fastjson2/e;)V
    .locals 6

    .line 38
    invoke-direct {p0, p1}, Laai;-><init>(Lcom/alibaba/fastjson2/e;)V

    const-string v0, "type"

    .line 39
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "string"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Laao;->i:Z

    const/4 v0, -0x1

    const-string v1, "minLength"

    .line 40
    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Laao;->e:I

    const-string v1, "maxLength"

    .line 41
    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Laao;->d:I

    const-string v1, "pattern"

    .line 42
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Laao;->g:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Laao;->g:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Laao;->h:Ljava/util/regex/Pattern;

    const-string v1, "format"

    .line 44
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Laao;->f:Ljava/lang/String;

    const-string v1, "anyOf"

    .line 46
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 47
    instance-of v3, v1, Lcom/alibaba/fastjson2/JSONArray;

    if-eqz v3, :cond_1

    .line 48
    check-cast v1, Lcom/alibaba/fastjson2/JSONArray;

    const-class v3, Ljava/lang/String;

    invoke-static {v1, v3}, Laao;->a(Lcom/alibaba/fastjson2/JSONArray;Ljava/lang/Class;)Laac;

    move-result-object v1

    iput-object v1, p0, Laao;->j:Laac;

    goto :goto_1

    .line 50
    :cond_1
    iput-object v2, p0, Laao;->j:Laac;

    :goto_1
    const-string v1, "oneOf"

    .line 53
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 54
    instance-of v3, v1, Lcom/alibaba/fastjson2/JSONArray;

    if-eqz v3, :cond_2

    .line 55
    check-cast v1, Lcom/alibaba/fastjson2/JSONArray;

    const-class v3, Ljava/lang/String;

    invoke-static {v1, v3}, Laao;->b(Lcom/alibaba/fastjson2/JSONArray;Ljava/lang/Class;)Laan;

    move-result-object v1

    iput-object v1, p0, Laao;->k:Laan;

    goto :goto_2

    .line 57
    :cond_2
    iput-object v2, p0, Laao;->k:Laan;

    :goto_2
    const-string v1, "const"

    .line 60
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Laao;->l:Ljava/lang/String;

    const-string v1, "enum"

    .line 64
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 65
    instance-of v4, v3, Ljava/util/Collection;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 66
    check-cast v3, Ljava/util/Collection;

    .line 67
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 68
    invoke-interface {p1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 69
    :cond_3
    instance-of v3, v3, [Ljava/lang/Object;

    if-eqz v3, :cond_4

    .line 70
    const-class v3, Ljava/util/LinkedHashSet;

    const-class v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/alibaba/fastjson2/al;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v3

    new-array v4, v5, [Lcom/alibaba/fastjson2/u$d;

    invoke-virtual {p1, v1, v3, v4}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/u$d;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    goto :goto_3

    :cond_4
    move-object p1, v2

    .line 72
    :goto_3
    iput-object p1, p0, Laao;->m:Ljava/util/Set;

    .line 75
    iget-object p1, p0, Laao;->f:Ljava/lang/String;

    if-nez p1, :cond_5

    .line 76
    iput-object v2, p0, Laao;->n:Ljava/util/function/Predicate;

    goto/16 :goto_5

    .line 78
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v1, "email"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move v0, v5

    goto :goto_4

    :sswitch_1
    const-string v1, "uuid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 v0, 0x8

    goto :goto_4

    :sswitch_2
    const-string v1, "time"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v0, 0x6

    goto :goto_4

    :sswitch_3
    const-string v1, "ipv6"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v0, 0x2

    goto :goto_4

    :sswitch_4
    const-string v1, "ipv4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    goto :goto_4

    :sswitch_5
    const-string v1, "date"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v0, 0x5

    goto :goto_4

    :sswitch_6
    const-string v1, "uri"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v0, 0x3

    goto :goto_4

    :sswitch_7
    const-string v1, "date-time"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v0, 0x4

    goto :goto_4

    :sswitch_8
    const-string v1, "duration"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v0, 0x7

    :cond_6
    :goto_4
    packed-switch v0, :pswitch_data_0

    .line 129
    iput-object v2, p0, Laao;->n:Ljava/util/function/Predicate;

    goto :goto_5

    .line 126
    :pswitch_0
    sget-object p1, L-$$Lambda$meDDv1io6bFRMZ5adefhZOiRHXY;->INSTANCE:L-$$Lambda$meDDv1io6bFRMZ5adefhZOiRHXY;

    iput-object p1, p0, Laao;->n:Ljava/util/function/Predicate;

    goto :goto_5

    .line 112
    :pswitch_1
    sget-object p1, L-$$Lambda$aao$TrVAT0bnssmY4xVkJG8-g168vhc;->INSTANCE:L-$$Lambda$aao$TrVAT0bnssmY4xVkJG8-g168vhc;

    iput-object p1, p0, Laao;->n:Ljava/util/function/Predicate;

    goto :goto_5

    .line 109
    :pswitch_2
    sget-object p1, L-$$Lambda$LHqoxvRwaV7ZwYgZsyMg40F8R3E;->INSTANCE:L-$$Lambda$LHqoxvRwaV7ZwYgZsyMg40F8R3E;

    iput-object p1, p0, Laao;->n:Ljava/util/function/Predicate;

    goto :goto_5

    .line 106
    :pswitch_3
    sget-object p1, L-$$Lambda$AjveqY8RqSixJnpSE9QjnhQwnDc;->INSTANCE:L-$$Lambda$AjveqY8RqSixJnpSE9QjnhQwnDc;

    iput-object p1, p0, Laao;->n:Ljava/util/function/Predicate;

    goto :goto_5

    .line 103
    :pswitch_4
    sget-object p1, L-$$Lambda$gTc7F-HWGB3PS5DmLcZuNc_bRhc;->INSTANCE:L-$$Lambda$gTc7F-HWGB3PS5DmLcZuNc_bRhc;

    iput-object p1, p0, Laao;->n:Ljava/util/function/Predicate;

    goto :goto_5

    .line 89
    :pswitch_5
    sget-object p1, L-$$Lambda$aao$fVrUedbPV0DE9ULjNuzJGd5V1Ng;->INSTANCE:L-$$Lambda$aao$fVrUedbPV0DE9ULjNuzJGd5V1Ng;

    iput-object p1, p0, Laao;->n:Ljava/util/function/Predicate;

    goto :goto_5

    .line 86
    :pswitch_6
    sget-object p1, L-$$Lambda$8vQ9pUMsnlOAay3RxtkwRViA_Ps;->INSTANCE:L-$$Lambda$8vQ9pUMsnlOAay3RxtkwRViA_Ps;

    iput-object p1, p0, Laao;->n:Ljava/util/function/Predicate;

    goto :goto_5

    .line 83
    :pswitch_7
    sget-object p1, L-$$Lambda$hSvZYwK5Dn4NHmk69dK5k2lxGVs;->INSTANCE:L-$$Lambda$hSvZYwK5Dn4NHmk69dK5k2lxGVs;

    iput-object p1, p0, Laao;->n:Ljava/util/function/Predicate;

    goto :goto_5

    .line 80
    :pswitch_8
    sget-object p1, L-$$Lambda$nt7vuuSSP5tTckO6yw6HBK3LXko;->INSTANCE:L-$$Lambda$nt7vuuSSP5tTckO6yw6HBK3LXko;

    iput-object p1, p0, Laao;->n:Ljava/util/function/Predicate;

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

.method public static a(Ljava/lang/String;)Z
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
    sget-object v1, Laao;->a:Ljava/util/regex/Pattern;

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
    sget-object v3, Laao;->c:Ljava/util/regex/Pattern;

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
    sget-object v2, Laao;->b:Ljava/util/regex/Pattern;

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
    invoke-static {p0}, Labo;->g(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p0}, Labo;->h(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_5
    :goto_0
    move v0, v1

    goto :goto_1

    .line 243
    :cond_6
    invoke-static {p0}, Laaf;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p0}, Laaf;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_7
    :goto_1
    return v0
.end method

.method private static synthetic b(Ljava/lang/String;)Z
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

.method private static synthetic c(Ljava/lang/String;)Z
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

.method public static synthetic lambda$TrVAT0bnssmY4xVkJG8-g168vhc(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Laao;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$fVrUedbPV0DE9ULjNuzJGd5V1Ng(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Laao;->c(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a()Laai$b;
    .locals 1

    .line 137
    sget-object v0, Laai$b;->String:Laai$b;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Laaq;
    .locals 5

    if-nez p1, :cond_1

    .line 143
    iget-boolean p1, p0, Laao;->i:Z

    if-eqz p1, :cond_0

    .line 144
    sget-object p1, Laao;->D:Laaq;

    return-object p1

    .line 146
    :cond_0
    sget-object p1, Laao;->u:Laaq;

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
    iget v0, p0, Laao;->e:I

    if-gez v0, :cond_2

    iget v0, p0, Laao;->d:I

    if-ltz v0, :cond_4

    .line 153
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    .line 154
    iget v4, p0, Laao;->e:I

    if-ltz v4, :cond_3

    if-ge v0, v4, :cond_3

    .line 155
    new-instance v0, Laaq;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "minLength not match, expect >= %s, but %s"

    invoke-direct {v0, v3, p1, v1}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 158
    :cond_3
    iget v4, p0, Laao;->d:I

    if-ltz v4, :cond_4

    if-le v0, v4, :cond_4

    .line 159
    new-instance v0, Laaq;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "maxLength not match, expect <= %s, but %s"

    invoke-direct {v0, v3, p1, v1}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 163
    :cond_4
    iget-object v0, p0, Laao;->h:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_5

    .line 164
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_5

    .line 165
    new-instance v0, Laaq;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Laao;->g:Ljava/lang/String;

    aput-object v4, v1, v3

    aput-object p1, v1, v2

    const-string p1, "pattern not match, expect %s, but %s"

    invoke-direct {v0, v3, p1, v1}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 169
    :cond_5
    iget-object v0, p0, Laao;->n:Ljava/util/function/Predicate;

    if-eqz v0, :cond_6

    .line 170
    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 171
    new-instance v0, Laaq;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Laao;->f:Ljava/lang/String;

    aput-object v4, v1, v3

    aput-object p1, v1, v2

    const-string p1, "format not match, expect %s, but %s"

    invoke-direct {v0, v3, p1, v1}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 175
    :cond_6
    iget-object v0, p0, Laao;->j:Laac;

    if-eqz v0, :cond_7

    .line 176
    invoke-virtual {v0, p1}, Laac;->a(Ljava/lang/Object;)Laaq;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Laaq;->a()Z

    move-result v4

    if-nez v4, :cond_7

    return-object v0

    .line 182
    :cond_7
    iget-object v0, p0, Laao;->k:Laan;

    if-eqz v0, :cond_8

    .line 183
    invoke-virtual {v0, p1}, Laan;->a(Ljava/lang/Object;)Laaq;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Laaq;->a()Z

    move-result v4

    if-nez v4, :cond_8

    return-object v0

    .line 189
    :cond_8
    iget-object v0, p0, Laao;->l:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 190
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 191
    new-instance v0, Laaq;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Laao;->l:Ljava/lang/String;

    aput-object v4, v1, v3

    aput-object p1, v1, v2

    const-string p1, "must be const %s, but %s"

    invoke-direct {v0, v3, p1, v1}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 195
    :cond_9
    iget-object v0, p0, Laao;->m:Ljava/util/Set;

    if-eqz v0, :cond_a

    .line 196
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 197
    new-instance v0, Laaq;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string p1, "not in enum values, %s"

    invoke-direct {v0, v3, p1, v1}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 201
    :cond_a
    sget-object p1, Laao;->u:Laaq;

    return-object p1

    .line 204
    :cond_b
    iget-boolean v0, p0, Laao;->i:Z

    if-nez v0, :cond_c

    .line 205
    sget-object p1, Laao;->u:Laaq;

    return-object p1

    .line 208
    :cond_c
    new-instance v0, Laaq;

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v4, Laai$b;->String:Laai$b;

    aput-object v4, v1, v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "expect type %s, but %s"

    invoke-direct {v0, v3, p1, v1}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public b()Lcom/alibaba/fastjson2/e;
    .locals 3

    .line 251
    new-instance v0, Lcom/alibaba/fastjson2/e;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/e;-><init>()V

    const-string v1, "type"

    const-string v2, "string"

    .line 253
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson2/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget v1, p0, Laao;->e:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 256
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "minLength"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_0
    iget-object v1, p0, Laao;->f:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "format"

    .line 260
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_1
    iget-object v1, p0, Laao;->g:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 264
    iget-object v1, p0, Laao;->h:Ljava/util/regex/Pattern;

    const-string v2, "pattern"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :cond_2
    iget-object v1, p0, Laao;->j:Laac;

    if-eqz v1, :cond_3

    const-string v2, "anyOf"

    .line 268
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_3
    iget-object v1, p0, Laao;->k:Laan;

    if-eqz v1, :cond_4

    const-string v2, "oneOf"

    .line 272
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_4
    iget-object v1, p0, Laao;->l:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v2, "const"

    .line 276
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_5
    iget-object v1, p0, Laao;->m:Ljava/util/Set;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 280
    iget-object v1, p0, Laao;->m:Ljava/util/Set;

    const-string v2, "enum"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method
