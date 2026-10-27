.class public final Lcom/google/zxing/client/result/EmailAddressResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "EmailAddressResultParser.java"


# static fields
.field private static final COMMA:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/EmailAddressResultParser;->COMMA:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;
    .locals 16
    .param p1, "result"    # Lcom/google/zxing/Result;

    .line 36
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/EmailAddressResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "rawText":Ljava/lang/String;
    const-string v1, "mailto:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "MAILTO:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {v0}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->isBasicallyValidEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    const/4 v1, 0x0

    return-object v1

    .line 77
    :cond_1
    new-instance v1, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    invoke-direct {v1, v0}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 39
    :cond_2
    :goto_0
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "hostEmail":Ljava/lang/String;
    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 41
    .local v2, "queryStart":I
    if-ltz v2, :cond_3

    .line 42
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 44
    :cond_3
    invoke-static {v1}, Lcom/google/zxing/client/result/EmailAddressResultParser;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    const/4 v3, 0x0

    .line 46
    .local v3, "tos":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 47
    sget-object v4, Lcom/google/zxing/client/result/EmailAddressResultParser;->COMMA:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    .line 49
    :cond_4
    invoke-static {v0}, Lcom/google/zxing/client/result/EmailAddressResultParser;->parseNameValuePairs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 50
    .local v4, "nameValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 51
    .local v5, "ccs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 52
    .local v6, "bccs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 53
    .local v7, "subject":Ljava/lang/String;
    const/4 v8, 0x0

    .line 54
    .local v8, "body":Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 55
    if-nez v3, :cond_5

    .line 56
    const-string v9, "to"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 57
    .local v9, "tosString":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 58
    sget-object v10, Lcom/google/zxing/client/result/EmailAddressResultParser;->COMMA:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    .line 61
    .end local v9    # "tosString":Ljava/lang/String;
    :cond_5
    const-string v9, "cc"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 62
    .local v9, "ccString":Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 63
    sget-object v10, Lcom/google/zxing/client/result/EmailAddressResultParser;->COMMA:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v5

    .line 65
    :cond_6
    const-string v10, "bcc"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 66
    .local v10, "bccString":Ljava/lang/String;
    if-eqz v10, :cond_7

    .line 67
    sget-object v11, Lcom/google/zxing/client/result/EmailAddressResultParser;->COMMA:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v10}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v6

    .line 69
    :cond_7
    const-string v11, "subject"

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v7, v11

    check-cast v7, Ljava/lang/String;

    .line 70
    const-string v11, "body"

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v8, v11

    check-cast v8, Ljava/lang/String;

    .line 72
    .end local v9    # "ccString":Ljava/lang/String;
    .end local v10    # "bccString":Ljava/lang/String;
    :cond_8
    new-instance v15, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    move-object v9, v15

    move-object v10, v3

    move-object v11, v5

    move-object v12, v6

    move-object v13, v7

    move-object v14, v8

    invoke-direct/range {v9 .. v14}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v15
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/EmailAddressResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;

    move-result-object p1

    return-object p1
.end method
