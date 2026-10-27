.class public Lcom/alibaba/fastjson/parser/DefaultJSONParser;
.super Ljava/lang/Object;
.source "DefaultJSONParser.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final config:Lcom/alibaba/fastjson/parser/ParserConfig;

.field private input:Ljava/lang/Object;

.field private final lexer:Lcom/alibaba/fastjson/parser/JSONScanner;

.field private final reader:Lcom/alibaba/fastjson2/JSONReader;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/JSONReader;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    .line 42
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 43
    new-instance p2, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Lcom/alibaba/fastjson2/JSONReader;)V

    iput-object p2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONScanner;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    move-object v0, p2

    check-cast v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONScanner;

    .line 27
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->getReader()Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    .line 28
    iput-object p3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 29
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->input:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 21
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Lcom/alibaba/fastjson2/JSONReader;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 22
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->input:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 0

    .line 37
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Lcom/alibaba/fastjson2/JSONReader;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 8

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_f

    if-eq p1, v0, :cond_f

    const/4 v0, 0x4

    if-eq p1, v0, :cond_c

    const/4 v0, 0x6

    if-eq p1, v0, :cond_a

    const/4 v0, 0x7

    const-string/jumbo v1, "syntax error, expect false, actual "

    if-eq p1, v0, :cond_8

    const/16 v0, 0x8

    if-eq p1, v0, :cond_6

    const/16 v0, 0x15

    if-eq p1, v0, :cond_4

    const/16 v0, 0x19

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 199
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support accept token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v0, 0x3a

    goto :goto_1

    .line 129
    :pswitch_1
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->hasComma()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "syntax error, expect \',\', actual "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    .line 133
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void

    :pswitch_2
    const/16 v0, 0x5d

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x5b

    goto :goto_1

    :pswitch_4
    const/16 v0, 0x7d

    goto :goto_1

    :pswitch_5
    const/16 v0, 0x7b

    goto :goto_1

    :pswitch_6
    const/16 v0, 0x29

    goto :goto_1

    :pswitch_7
    const/16 v0, 0x28

    goto :goto_1

    :cond_2
    const/16 v0, 0x2e

    .line 202
    :goto_1
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 203
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syntax error, expect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 204
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", actual "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_4
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfSet()Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 171
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "syntax error, expect set, actual "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    .line 172
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 153
    :cond_6
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 154
    :cond_7
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    .line 155
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 146
    :cond_8
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    const/16 v3, 0x66

    const/16 v4, 0x61

    const/16 v5, 0x6c

    const/16 v6, 0x73

    const/16 v7, 0x65

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatchIdent(CCCCC)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 147
    :cond_9
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    .line 148
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 139
    :cond_a
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    const/16 v0, 0x74

    const/16 v1, 0x72

    const/16 v2, 0x75

    const/16 v3, 0x65

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatchIdent(CCCC)Z

    move-result p1

    if-eqz p1, :cond_b

    return-void

    .line 140
    :cond_b
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "syntax error, expect true, actual "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    .line 141
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 160
    :cond_c
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result p1

    const/16 v0, 0x22

    if-eq p1, v0, :cond_e

    const/16 v0, 0x27

    if-ne p1, v0, :cond_d

    goto :goto_2

    .line 165
    :cond_d
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syntax error, expect string, actual "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_e
    :goto_2
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    return-void

    .line 178
    :cond_f
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v2

    const/16 v3, 0x2d

    const-string/jumbo v4, "syntax error, expect int, actual "

    if-eq v2, v3, :cond_11

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_11

    const/16 v3, 0x30

    if-lt v2, v3, :cond_10

    const/16 v3, 0x39

    if-gt v2, v3, :cond_10

    goto :goto_3

    .line 180
    :cond_10
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    .line 181
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 184
    :cond_11
    :goto_3
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readNumber()Ljava/lang/Number;

    move-result-object v2

    .line 185
    instance-of v3, v2, Ljava/lang/Integer;

    if-nez v3, :cond_13

    instance-of v3, v2, Ljava/lang/Long;

    if-nez v3, :cond_13

    instance-of v2, v2, Ljava/math/BigInteger;

    if-eqz v2, :cond_12

    goto :goto_4

    :cond_12
    const/4 v2, 0x0

    goto :goto_5

    :cond_13
    :goto_4
    const/4 v2, 0x1

    :goto_5
    if-eqz v2, :cond_14

    if-ne p1, v1, :cond_15

    return-void

    :cond_14
    if-ne p1, v0, :cond_15

    return-void

    .line 195
    :cond_15
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    .line 196
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0xa
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

.method public close()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    return-void
.end method

.method public config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONScanner;->config(Lcom/alibaba/fastjson/parser/Feature;Z)V

    return-void
.end method

.method public getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    return-object v0
.end method

.method public getInput()Ljava/lang/String;
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->input:Ljava/lang/Object;

    instance-of v1, v0, [C

    if-eqz v1, :cond_0

    .line 230
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->input:Ljava/lang/Object;

    check-cast v1, [C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 232
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONScanner;

    return-object v0
.end method

.method public getRawReader()Lcom/alibaba/fastjson2/JSONReader;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    return-object v0
.end method

.method public handleResolveTasks(Ljava/lang/Object;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    return-void
.end method

.method public handleResovleTask(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    return-void
.end method

.method public isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result p1

    return p1
.end method

.method public parse()Ljava/lang/Object;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parseArray(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONReader;->readArray(Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public parseArray(Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Collection;",
            ")V"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0, p2, p1}, Lcom/alibaba/fastjson2/JSONReader;->readArray(Ljava/util/Collection;Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0, p2, p1}, Lcom/alibaba/fastjson2/JSONReader;->readArray(Ljava/util/Collection;Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public final parseArray(Ljava/util/Collection;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson2/JSONReader;->readArray(Ljava/util/Collection;Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public parseArray([Ljava/lang/reflect/Type;)[Ljava/lang/Object;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONReader;->readArray([Ljava/lang/reflect/Type;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parseObject()Lcom/alibaba/fastjson/JSONObject;
    .locals 4

    .line 210
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 214
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isOrderedField()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    .line 215
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    return-object v0
.end method

.method public parseObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parseObject(Ljava/lang/Object;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->reader:Lcom/alibaba/fastjson2/JSONReader;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson2/JSONReader;->readObject(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    return-void
.end method
