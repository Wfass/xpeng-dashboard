.class public abstract Lcom/alibaba/fastjson/parser/JSONLexerBase;
.super Ljava/lang/Object;
.source "JSONLexerBase.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/JSONLexer;
.implements Ljava/io/Closeable;


# static fields
.field protected static final INT_MULTMIN_RADIX_TEN:I = -0xccccccc

.field protected static final MULTMIN_RADIX_TEN:J = -0xcccccccccccccccL

.field private static final SBUF_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field

.field protected static final digits:[I

.field protected static final typeFieldName:[C


# instance fields
.field protected bp:I

.field protected calendar:Ljava/util/Calendar;

.field protected ch:C

.field protected eofPos:I

.field protected features:I

.field protected hasSpecial:Z

.field protected locale:Ljava/util/Locale;

.field public matchStat:I

.field protected nanos:I

.field protected np:I

.field protected pos:I

.field protected sbuf:[C

.field protected sp:I

.field protected stringDefaultValue:Ljava/lang/String;

.field protected timeZone:Ljava/util/TimeZone;

.field protected token:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 66
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_LOCAL:Ljava/lang/ThreadLocal;

    .line 1119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->typeFieldName:[C

    .line 5294
    const/16 v0, 0x67

    new-array v0, v0, [I

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    .line 5297
    const/16 v0, 0x30

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    .line 5298
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v2, v0, -0x30

    aput v2, v1, v0

    .line 5297
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5301
    .end local v0    # "i":I
    :cond_0
    const/16 v0, 0x61

    .restart local v0    # "i":I
    :goto_1
    const/16 v1, 0x66

    if-gt v0, v1, :cond_1

    .line 5302
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0xa

    aput v2, v1, v0

    .line 5301
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5304
    .end local v0    # "i":I
    :cond_1
    const/16 v0, 0x41

    .restart local v0    # "i":I
    :goto_2
    const/16 v1, 0x46

    if-gt v0, v1, :cond_2

    .line 5305
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v2, v0, -0x41

    add-int/lit8 v2, v2, 0xa

    aput v2, v1, v0

    .line 5304
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5307
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "features"    # I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    .line 61
    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->timeZone:Ljava/util/TimeZone;

    .line 62
    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->locale:Ljava/util/Locale;

    .line 64
    const/4 v1, 0x0

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 68
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

    .line 69
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nanos:I

    .line 72
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    .line 74
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

    .line 78
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 80
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    if-nez v0, :cond_1

    .line 81
    const/16 v0, 0x200

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 83
    :cond_1
    return-void
.end method

.method public static isWhitespace(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 5282
    const/16 v0, 0x20

    if-gt p0, v0, :cond_1

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static readString([CI)Ljava/lang/String;
    .locals 13
    .param p0, "chars"    # [C
    .param p1, "chars_len"    # I

    .line 4814
    new-array v0, p1, [C

    .line 4815
    .local v0, "sbuf":[C
    const/4 v1, 0x0

    .line 4816
    .local v1, "len":I
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    .local v1, "i":I
    .local v3, "len":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 4817
    aget-char v4, p0, v1

    .line 4819
    .local v4, "ch":C
    const/16 v5, 0x5c

    const/4 v6, 0x1

    if-eq v4, v5, :cond_0

    .line 4820
    add-int/lit8 v5, v3, 0x1

    .local v5, "len":I
    aput-char v4, v0, v3

    .line 4821
    .end local v3    # "len":I
    nop

    .line 4816
    .end local v4    # "ch":C
    .end local v5    # "len":I
    .restart local v3    # "len":I
    :goto_1
    move v3, v5

    goto/16 :goto_2

    .line 4823
    .restart local v4    # "ch":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    aget-char v4, p0, v1

    .line 4825
    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x4

    packed-switch v4, :pswitch_data_0

    const/16 v10, 0x10

    packed-switch v4, :pswitch_data_1

    sparse-switch v4, :sswitch_data_0

    .line 4892
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "unclosed.str.lit"

    invoke-direct {v2, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4882
    :sswitch_0
    add-int/lit8 v5, v3, 0x1

    .restart local v5    # "len":I
    sget-object v7, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v1, v1, 0x1

    aget-char v8, p0, v1

    aget v7, v7, v8

    mul-int/2addr v7, v10

    sget-object v8, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/2addr v1, v6

    aget-char v9, p0, v1

    aget v8, v8, v9

    add-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v0, v3

    .line 4883
    .end local v3    # "len":I
    goto :goto_1

    .line 4867
    .end local v5    # "len":I
    .restart local v3    # "len":I
    :sswitch_1
    add-int/lit8 v5, v3, 0x1

    .restart local v5    # "len":I
    const/16 v7, 0xd

    aput-char v7, v0, v3

    .line 4868
    .end local v3    # "len":I
    goto :goto_1

    .line 4857
    .end local v5    # "len":I
    .restart local v3    # "len":I
    :sswitch_2
    add-int/lit8 v5, v3, 0x1

    .restart local v5    # "len":I
    const/16 v7, 0xa

    aput-char v7, v0, v3

    .line 4858
    .end local v3    # "len":I
    goto :goto_1

    .line 4851
    .end local v5    # "len":I
    .restart local v3    # "len":I
    :sswitch_3
    add-int/lit8 v5, v3, 0x1

    .restart local v5    # "len":I
    const/16 v7, 0x8

    aput-char v7, v0, v3

    .line 4852
    .end local v3    # "len":I
    goto :goto_1

    .line 4879
    .end local v5    # "len":I
    .restart local v3    # "len":I
    :sswitch_4
    add-int/lit8 v7, v3, 0x1

    .local v7, "len":I
    aput-char v5, v0, v3

    .line 4880
    .end local v3    # "len":I
    nop

    .line 4816
    move v3, v7

    goto/16 :goto_2

    .line 4864
    .end local v7    # "len":I
    .restart local v3    # "len":I
    :sswitch_5
    add-int/lit8 v5, v3, 0x1

    .restart local v5    # "len":I
    const/16 v7, 0xc

    aput-char v7, v0, v3

    .line 4865
    .end local v3    # "len":I
    goto :goto_1

    .line 4873
    .end local v5    # "len":I
    .restart local v3    # "len":I
    :sswitch_6
    add-int/lit8 v5, v3, 0x1

    .restart local v5    # "len":I
    const/16 v7, 0x27

    aput-char v7, v0, v3

    .line 4874
    .end local v3    # "len":I
    goto :goto_1

    .line 4870
    .end local v5    # "len":I
    .restart local v3    # "len":I
    :sswitch_7
    add-int/lit8 v5, v3, 0x1

    .restart local v5    # "len":I
    const/16 v7, 0x22

    aput-char v7, v0, v3

    .line 4871
    .end local v3    # "len":I
    goto :goto_1

    .line 4860
    .end local v5    # "len":I
    .restart local v3    # "len":I
    :pswitch_0
    add-int/lit8 v5, v3, 0x1

    .restart local v5    # "len":I
    const/16 v7, 0xb

    aput-char v7, v0, v3

    .line 4861
    .end local v3    # "len":I
    goto :goto_1

    .line 4885
    .end local v5    # "len":I
    .restart local v3    # "len":I
    :pswitch_1
    add-int/lit8 v5, v3, 0x1

    .restart local v5    # "len":I
    new-instance v11, Ljava/lang/String;

    new-array v9, v9, [C

    add-int/lit8 v1, v1, 0x1

    aget-char v12, p0, v1

    aput-char v12, v9, v2

    add-int/2addr v1, v6

    aget-char v12, p0, v1

    aput-char v12, v9, v6

    add-int/2addr v1, v6

    aget-char v12, p0, v1

    aput-char v12, v9, v8

    add-int/2addr v1, v6

    aget-char v8, p0, v1

    aput-char v8, v9, v7

    invoke-direct {v11, v9}, Ljava/lang/String;-><init>([C)V

    invoke-static {v11, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-char v7, v7

    aput-char v7, v0, v3

    .line 4890
    .end local v3    # "len":I
    goto/16 :goto_1

    .line 4854
    .end local v5    # "len":I
    .restart local v3    # "len":I
    :pswitch_2
    add-int/lit8 v5, v3, 0x1

    .restart local v5    # "len":I
    const/16 v7, 0x9

    aput-char v7, v0, v3

    .line 4855
    .end local v3    # "len":I
    goto/16 :goto_1

    .line 4848
    .end local v5    # "len":I
    .restart local v3    # "len":I
    :pswitch_3
    add-int/lit8 v5, v3, 0x1

    .restart local v5    # "len":I
    const/4 v7, 0x7

    aput-char v7, v0, v3

    .line 4849
    .end local v3    # "len":I
    goto/16 :goto_1

    .line 4845
    .end local v5    # "len":I
    .restart local v3    # "len":I
    :pswitch_4
    add-int/lit8 v5, v3, 0x1

    .restart local v5    # "len":I
    const/4 v7, 0x6

    aput-char v7, v0, v3

    .line 4846
    .end local v3    # "len":I
    goto/16 :goto_1

    .line 4842
    .end local v5    # "len":I
    .restart local v3    # "len":I
    :pswitch_5
    add-int/lit8 v5, v3, 0x1

    .restart local v5    # "len":I
    const/4 v7, 0x5

    aput-char v7, v0, v3

    .line 4843
    .end local v3    # "len":I
    goto/16 :goto_1

    .line 4839
    .end local v5    # "len":I
    .restart local v3    # "len":I
    :pswitch_6
    add-int/lit8 v5, v3, 0x1

    .restart local v5    # "len":I
    aput-char v9, v0, v3

    .line 4840
    .end local v3    # "len":I
    goto/16 :goto_1

    .line 4836
    .end local v5    # "len":I
    .restart local v3    # "len":I
    :pswitch_7
    add-int/lit8 v5, v3, 0x1

    .restart local v5    # "len":I
    aput-char v7, v0, v3

    .line 4837
    .end local v3    # "len":I
    goto/16 :goto_1

    .line 4833
    .end local v5    # "len":I
    .restart local v3    # "len":I
    :pswitch_8
    add-int/lit8 v5, v3, 0x1

    .restart local v5    # "len":I
    aput-char v8, v0, v3

    .line 4834
    .end local v3    # "len":I
    goto/16 :goto_1

    .line 4830
    .end local v5    # "len":I
    .restart local v3    # "len":I
    :pswitch_9
    add-int/lit8 v5, v3, 0x1

    .restart local v5    # "len":I
    aput-char v6, v0, v3

    .line 4831
    .end local v3    # "len":I
    goto/16 :goto_1

    .line 4827
    .end local v5    # "len":I
    .restart local v3    # "len":I
    :pswitch_a
    add-int/lit8 v5, v3, 0x1

    .restart local v5    # "len":I
    aput-char v2, v0, v3

    .line 4828
    .end local v3    # "len":I
    goto/16 :goto_1

    .line 4876
    .end local v5    # "len":I
    .restart local v3    # "len":I
    :pswitch_b
    add-int/lit8 v5, v3, 0x1

    .restart local v5    # "len":I
    const/16 v7, 0x2f

    aput-char v7, v0, v3

    .line 4877
    .end local v3    # "len":I
    goto/16 :goto_1

    .line 4816
    .end local v4    # "ch":C
    .end local v5    # "len":I
    .restart local v3    # "len":I
    :goto_2
    add-int/2addr v1, v6

    goto/16 :goto_0

    .line 4895
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_7
        0x27 -> :sswitch_6
        0x46 -> :sswitch_5
        0x5c -> :sswitch_4
        0x62 -> :sswitch_3
        0x66 -> :sswitch_5
        0x6e -> :sswitch_2
        0x72 -> :sswitch_1
        0x78 -> :sswitch_0
    .end sparse-switch
.end method

.method private scanStringSingleQuote()V
    .locals 13

    .line 4940
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 4941
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 4944
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    .line 4946
    .local v1, "chLocal":C
    const/16 v2, 0x27

    const/4 v3, 0x4

    if-ne v1, v2, :cond_0

    .line 4947
    nop

    .line 5069
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 5070
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 5071
    return-void

    .line 4950
    :cond_0
    const/16 v4, 0x1a

    if-ne v1, v4, :cond_2

    .line 4951
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEOF()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4952
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 4953
    goto :goto_0

    .line 4955
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "unclosed single-quote string"

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4958
    :cond_2
    const/16 v4, 0x5c

    const/4 v5, 0x1

    if-ne v1, v4, :cond_e

    .line 4959
    iget-boolean v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    const/4 v7, 0x2

    if-nez v6, :cond_4

    .line 4960
    iput-boolean v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 4962
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v8, v8

    if-le v6, v8, :cond_3

    .line 4963
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    mul-int/2addr v6, v7

    new-array v6, v6, [C

    .line 4964
    .local v6, "newsbuf":[C
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v9, v9

    invoke-static {v8, v0, v6, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4965
    iput-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 4969
    .end local v6    # "newsbuf":[C
    :cond_3
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v6, v5

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    invoke-virtual {p0, v6, v8, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->copyTo(II[C)V

    .line 4973
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    .line 4975
    const/4 v6, 0x3

    packed-switch v1, :pswitch_data_0

    const/16 v8, 0x10

    packed-switch v1, :pswitch_data_1

    sparse-switch v1, :sswitch_data_0

    .line 5051
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 5052
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "unclosed single-quote string"

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5032
    :sswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v2

    .line 5033
    .local v2, "x1":C
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v3

    .line 5035
    .local v3, "x2":C
    const/16 v4, 0x46

    const/16 v6, 0x41

    const/16 v7, 0x66

    const/16 v9, 0x61

    const/16 v10, 0x39

    const/16 v11, 0x30

    if-lt v2, v11, :cond_5

    if-le v2, v10, :cond_7

    :cond_5
    if-lt v2, v9, :cond_6

    if-le v2, v7, :cond_7

    :cond_6
    if-lt v2, v6, :cond_8

    if-gt v2, v4, :cond_8

    :cond_7
    move v12, v5

    goto :goto_1

    :cond_8
    move v12, v0

    .line 5038
    .local v12, "hex1":Z
    :goto_1
    if-lt v3, v11, :cond_9

    if-le v3, v10, :cond_b

    :cond_9
    if-lt v3, v9, :cond_a

    if-le v3, v7, :cond_b

    :cond_a
    if-lt v3, v6, :cond_c

    if-gt v3, v4, :cond_c

    :cond_b
    goto :goto_2

    :cond_c
    move v5, v0

    :goto_2
    move v4, v5

    .line 5041
    .local v4, "hex2":Z
    if-eqz v12, :cond_d

    if-eqz v4, :cond_d

    .line 5045
    sget-object v5, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v5, v5, v2

    mul-int/2addr v5, v8

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v6, v6, v3

    add-int/2addr v5, v6

    int-to-char v5, v5

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 5046
    goto/16 :goto_0

    .line 5042
    :cond_d
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid escape character \\x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5017
    .end local v2    # "x1":C
    .end local v3    # "x2":C
    .end local v4    # "hex2":Z
    .end local v12    # "hex1":Z
    :sswitch_1
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 5018
    goto/16 :goto_0

    .line 5007
    :sswitch_2
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 5008
    goto/16 :goto_0

    .line 5001
    :sswitch_3
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 5002
    goto/16 :goto_0

    .line 5029
    :sswitch_4
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 5030
    goto/16 :goto_0

    .line 5014
    :sswitch_5
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 5015
    goto/16 :goto_0

    .line 5023
    :sswitch_6
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 5024
    goto/16 :goto_0

    .line 5020
    :sswitch_7
    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 5021
    goto/16 :goto_0

    .line 5010
    :pswitch_0
    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 5011
    goto/16 :goto_0

    .line 5048
    :pswitch_1
    new-instance v2, Ljava/lang/String;

    new-array v3, v3, [C

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    aput-char v4, v3, v0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    aput-char v4, v3, v5

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    aput-char v4, v3, v7

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    aput-char v4, v3, v6

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-static {v2, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 5049
    goto/16 :goto_0

    .line 5004
    :pswitch_2
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 5005
    goto/16 :goto_0

    .line 4998
    :pswitch_3
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 4999
    goto/16 :goto_0

    .line 4995
    :pswitch_4
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 4996
    goto/16 :goto_0

    .line 4992
    :pswitch_5
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 4993
    goto/16 :goto_0

    .line 4989
    :pswitch_6
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 4990
    goto/16 :goto_0

    .line 4986
    :pswitch_7
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 4987
    goto/16 :goto_0

    .line 4983
    :pswitch_8
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 4984
    goto/16 :goto_0

    .line 4980
    :pswitch_9
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 4981
    goto/16 :goto_0

    .line 4977
    :pswitch_a
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 4978
    goto/16 :goto_0

    .line 5026
    :pswitch_b
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 5027
    goto/16 :goto_0

    .line 5057
    :cond_e
    iget-boolean v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-nez v2, :cond_f

    .line 5058
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5059
    goto/16 :goto_0

    .line 5062
    :cond_f
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v3, v3

    if-ne v2, v3, :cond_10

    .line 5063
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 5065
    :cond_10
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char v1, v2, v3

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_7
        0x27 -> :sswitch_6
        0x46 -> :sswitch_5
        0x5c -> :sswitch_4
        0x62 -> :sswitch_3
        0x66 -> :sswitch_5
        0x6e -> :sswitch_2
        0x72 -> :sswitch_1
        0x78 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public abstract addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
.end method

.method protected abstract arrayCopy(I[CII)V
.end method

.method public abstract bytesValue()[B
.end method

.method protected abstract charArrayCompare([C)Z
.end method

.method public abstract charAt(I)C
.end method

.method public close()V
    .locals 2

    .line 1098
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v0, v0

    const/16 v1, 0x2000

    if-gt v0, v1, :cond_0

    .line 1099
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_LOCAL:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1101
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 1102
    return-void
.end method

.method public config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 2
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;
    .param p2, "state"    # Z

    .line 525
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    invoke-static {v0, p1, p2}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    .line 527
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 528
    const-string v0, ""

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

    .line 530
    :cond_0
    return-void
.end method

.method protected abstract copyTo(II[C)V
.end method

.method public final decimalValue(Z)Ljava/lang/Number;
    .locals 5
    .param p1, "decimal"    # Z

    .line 5258
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 5260
    .local v0, "chLocal":C
    const/16 v1, 0x46

    if-ne v0, v1, :cond_0

    .line 5261
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 5273
    :catch_0
    move-exception v1

    goto :goto_0

    .line 5264
    :cond_0
    const/16 v1, 0x44

    if-ne v0, v1, :cond_1

    .line 5265
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 5268
    :cond_1
    if-eqz p1, :cond_2

    .line 5269
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 5271
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 5273
    :goto_0
    nop

    .line 5274
    .local v1, "ex":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->info()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public abstract decimalValue()Ljava/math/BigDecimal;
.end method

.method public doubleValue()D
    .locals 2

    .line 521
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 6

    .line 509
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "strVal":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 511
    .local v1, "floatValue":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v2, v1, v2

    if-nez v2, :cond_2

    .line 512
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 513
    .local v2, "c0":C
    const/16 v3, 0x30

    if-le v2, v3, :cond_2

    const/16 v3, 0x39

    if-le v2, v3, :cond_1

    .end local v2    # "c0":C
    goto :goto_0

    .line 514
    .restart local v2    # "c0":C
    :cond_1
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "float overflow : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 517
    .end local v2    # "c0":C
    :cond_2
    :goto_0
    return v1
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 1

    .line 1022
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public final getCurrent()C
    .locals 1

    .line 549
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    return v0
.end method

.method public getFeatures()I
    .locals 1

    .line 5325
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 1034
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 1026
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public abstract indexOf(CI)I
.end method

.method public info()Ljava/lang/String;
    .locals 1

    .line 818
    const-string v0, ""

    return-object v0
.end method

.method public final intValue()I
    .locals 11

    .line 1042
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1043
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 1046
    :cond_0
    const/4 v0, 0x0

    .line 1047
    .local v0, "result":I
    const/4 v1, 0x0

    .line 1048
    .local v1, "negative":Z
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .local v2, "i":I
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v3, v4

    .line 1052
    .local v3, "max":I
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_1

    .line 1053
    const/4 v1, 0x1

    .line 1054
    const/high16 v4, -0x80000000

    .line 1055
    .local v4, "limit":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1057
    .end local v4    # "limit":I
    :cond_1
    const v4, -0x7fffffff

    .line 1059
    .restart local v4    # "limit":I
    :goto_0
    const-wide/32 v5, -0xccccccc

    .line 1060
    .local v5, "multmin":J
    if-ge v2, v3, :cond_2

    .line 1061
    add-int/lit8 v7, v2, 0x1

    .local v7, "i":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .end local v2    # "i":I
    add-int/lit8 v2, v2, -0x30

    .line 1062
    .local v2, "digit":I
    neg-int v0, v2

    .line 1064
    .end local v7    # "i":I
    .local v2, "i":I
    :goto_1
    move v2, v7

    :cond_2
    if-ge v2, v3, :cond_7

    .line 1066
    add-int/lit8 v7, v2, 0x1

    .restart local v7    # "i":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 1068
    .local v2, "chLocal":C
    const/16 v8, 0x4c

    if-eq v2, v8, :cond_6

    const/16 v8, 0x53

    if-eq v2, v8, :cond_6

    const/16 v8, 0x42

    if-ne v2, v8, :cond_3

    .line 1069
    goto :goto_2

    .line 1072
    :cond_3
    add-int/lit8 v8, v2, -0x30

    .line 1074
    .local v8, "digit":I
    int-to-long v9, v0

    cmp-long v9, v9, v5

    if-ltz v9, :cond_5

    .line 1077
    mul-int/lit8 v0, v0, 0xa

    .line 1078
    add-int v9, v4, v8

    if-lt v0, v9, :cond_4

    .line 1081
    sub-int/2addr v0, v8

    .line 1082
    .end local v2    # "chLocal":C
    goto :goto_1

    .line 1079
    .restart local v2    # "chLocal":C
    :cond_4
    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1075
    :cond_5
    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1084
    .end local v2    # "chLocal":C
    .end local v8    # "digit":I
    :cond_6
    :goto_2
    move v2, v7

    .end local v7    # "i":I
    .local v2, "i":I
    :cond_7
    if-eqz v1, :cond_9

    .line 1085
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v7, v7, 0x1

    if-le v2, v7, :cond_8

    .line 1086
    return v0

    .line 1088
    :cond_8
    new-instance v7, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1091
    :cond_9
    neg-int v7, v0

    return v7
.end method

.method public final integerValue()Ljava/lang/Number;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 416
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    .line 417
    .local v1, "result":J
    const/4 v3, 0x0

    .line 418
    .local v3, "negative":Z
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 419
    const/4 v4, 0x0

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 421
    :cond_0
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .local v4, "i":I
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v5, v6

    .line 426
    .local v5, "max":I
    const/16 v6, 0x20

    .line 428
    .local v6, "type":C
    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v8, 0x53

    const/16 v9, 0x4c

    const/16 v10, 0x42

    if-eq v7, v10, :cond_3

    if-eq v7, v9, :cond_2

    if-eq v7, v8, :cond_1

    goto :goto_0

    .line 434
    :cond_1
    add-int/lit8 v5, v5, -0x1

    .line 435
    const/16 v6, 0x53

    .line 436
    goto :goto_0

    .line 430
    :cond_2
    add-int/lit8 v5, v5, -0x1

    .line 431
    const/16 v6, 0x4c

    .line 432
    goto :goto_0

    .line 438
    :cond_3
    add-int/lit8 v5, v5, -0x1

    .line 439
    const/16 v6, 0x42

    .line 440
    nop

    .line 445
    :goto_0
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v11, 0x2d

    if-ne v7, v11, :cond_4

    .line 446
    const/4 v3, 0x1

    .line 447
    const-wide/high16 v11, -0x8000000000000000L

    .line 448
    .local v11, "limit":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 450
    .end local v11    # "limit":J
    :cond_4
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 452
    .restart local v11    # "limit":J
    :goto_1
    const-wide v13, -0xcccccccccccccccL

    .line 453
    .local v13, "multmin":J
    if-ge v4, v5, :cond_5

    .line 454
    add-int/lit8 v7, v4, 0x1

    .local v7, "i":I
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    .end local v4    # "i":I
    add-int/lit8 v4, v4, -0x30

    .line 455
    .local v4, "digit":I
    neg-int v15, v4

    int-to-long v1, v15

    .line 457
    .end local v4    # "digit":I
    move v4, v7

    .end local v7    # "i":I
    .local v4, "i":I
    :cond_5
    :goto_2
    if-ge v4, v5, :cond_8

    .line 459
    add-int/lit8 v7, v4, 0x1

    .restart local v7    # "i":I
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    .end local v4    # "i":I
    add-int/lit8 v4, v4, -0x30

    .line 460
    .local v4, "digit":I
    cmp-long v15, v1, v13

    if-gez v15, :cond_6

    .line 461
    new-instance v8, Ljava/math/BigInteger;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v8

    .line 463
    :cond_6
    const-wide/16 v15, 0xa

    mul-long/2addr v1, v15

    .line 464
    int-to-long v8, v4

    add-long/2addr v8, v11

    cmp-long v8, v1, v8

    if-gez v8, :cond_7

    .line 465
    new-instance v8, Ljava/math/BigInteger;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v8

    .line 467
    :cond_7
    int-to-long v8, v4

    sub-long/2addr v1, v8

    .line 457
    move v4, v7

    const/16 v8, 0x53

    const/16 v9, 0x4c

    goto :goto_2

    .line 470
    .end local v7    # "i":I
    .local v4, "i":I
    :cond_8
    if-eqz v3, :cond_d

    .line 471
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v7, v7, 0x1

    if-le v4, v7, :cond_c

    .line 472
    const-wide/32 v7, -0x80000000

    cmp-long v7, v1, v7

    if-ltz v7, :cond_b

    const/16 v7, 0x4c

    if-eq v6, v7, :cond_b

    .line 473
    const/16 v7, 0x53

    if-ne v6, v7, :cond_9

    .line 474
    long-to-int v7, v1

    int-to-short v7, v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    return-object v7

    .line 477
    :cond_9
    if-ne v6, v10, :cond_a

    .line 478
    long-to-int v7, v1

    int-to-byte v7, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    return-object v7

    .line 481
    :cond_a
    long-to-int v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    return-object v7

    .line 483
    :cond_b
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    return-object v7

    .line 485
    :cond_c
    new-instance v7, Ljava/lang/NumberFormatException;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 488
    :cond_d
    neg-long v1, v1

    .line 489
    const-wide/32 v7, 0x7fffffff

    cmp-long v7, v1, v7

    if-gtz v7, :cond_10

    const/16 v7, 0x4c

    if-eq v6, v7, :cond_10

    .line 490
    const/16 v7, 0x53

    if-ne v6, v7, :cond_e

    .line 491
    long-to-int v7, v1

    int-to-short v7, v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    return-object v7

    .line 494
    :cond_e
    if-ne v6, v10, :cond_f

    .line 495
    long-to-int v7, v1

    int-to-byte v7, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    return-object v7

    .line 498
    :cond_f
    long-to-int v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    return-object v7

    .line 500
    :cond_10
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    return-object v7
.end method

.method public isBlankInput()Z
    .locals 4

    .line 4901
    const/4 v0, 0x0

    move v1, v0

    .line 4902
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 4903
    .local v2, "chLocal":C
    const/16 v3, 0x1a

    if-ne v2, v3, :cond_0

    .line 4904
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4905
    nop

    .line 4913
    .end local v1    # "i":I
    .end local v2    # "chLocal":C
    const/4 v0, 0x1

    return v0

    .line 4908
    .restart local v1    # "i":I
    .restart local v2    # "chLocal":C
    :cond_0
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4909
    return v0

    .line 4901
    .end local v2    # "chLocal":C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public abstract isEOF()Z
.end method

.method public final isEnabled(I)Z
    .locals 1
    .param p1, "feature"    # I

    .line 537
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isEnabled(II)Z
    .locals 1
    .param p1, "features"    # I
    .param p2, "feature"    # I

    .line 541
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    and-int/2addr v0, p2

    if-nez v0, :cond_1

    and-int v0, p1, p2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
    .locals 1
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;

    .line 533
    iget v0, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public final isRef()Z
    .locals 5

    .line 1105
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 1106
    return v1

    .line 1109
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v4, 0x24

    if-ne v0, v4, :cond_1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v0, v0, 0x2

    .line 1110
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v4, 0x72

    if-ne v0, v4, :cond_1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v0, v0, 0x3

    .line 1111
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v4, 0x65

    if-ne v0, v4, :cond_1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v0, v2

    .line 1112
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v2, 0x66

    if-ne v0, v2, :cond_1

    .line 1109
    move v1, v3

    goto :goto_0

    .line 1112
    :cond_1
    nop

    .line 1109
    :goto_0
    return v1
.end method

.method protected varargs lexError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 36
    return-void
.end method

.method public final longValue()J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 5204
    const-wide/16 v0, 0x0

    .line 5205
    .local v0, "result":J
    const/4 v2, 0x0

    .line 5209
    .local v2, "negative":Z
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 5210
    const/4 v3, 0x0

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 5213
    :cond_0
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .local v3, "i":I
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v4, v5

    .line 5215
    .local v4, "max":I
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_1

    .line 5216
    const/4 v2, 0x1

    .line 5217
    const-wide/high16 v5, -0x8000000000000000L

    .line 5218
    .local v5, "limit":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5220
    .end local v5    # "limit":J
    :cond_1
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 5222
    .restart local v5    # "limit":J
    :goto_0
    const-wide v7, -0xcccccccccccccccL

    .line 5223
    .local v7, "multmin":J
    if-ge v3, v4, :cond_2

    .line 5224
    add-int/lit8 v9, v3, 0x1

    .local v9, "i":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .end local v3    # "i":I
    add-int/lit8 v3, v3, -0x30

    .line 5225
    .local v3, "digit":I
    neg-int v10, v3

    int-to-long v0, v10

    .line 5227
    .end local v9    # "i":I
    .local v3, "i":I
    :goto_1
    move v3, v9

    :cond_2
    if-ge v3, v4, :cond_7

    .line 5229
    add-int/lit8 v9, v3, 0x1

    .restart local v9    # "i":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 5231
    .local v3, "chLocal":C
    const/16 v10, 0x4c

    if-eq v3, v10, :cond_6

    const/16 v10, 0x53

    if-eq v3, v10, :cond_6

    const/16 v10, 0x42

    if-ne v3, v10, :cond_3

    .line 5232
    goto :goto_2

    .line 5235
    :cond_3
    add-int/lit8 v10, v3, -0x30

    .line 5236
    .local v10, "digit":I
    cmp-long v11, v0, v7

    if-ltz v11, :cond_5

    .line 5239
    const-wide/16 v11, 0xa

    mul-long/2addr v0, v11

    .line 5240
    int-to-long v11, v10

    add-long/2addr v11, v5

    cmp-long v11, v0, v11

    if-ltz v11, :cond_4

    .line 5243
    int-to-long v11, v10

    sub-long/2addr v0, v11

    .line 5244
    .end local v3    # "chLocal":C
    goto :goto_1

    .line 5241
    .restart local v3    # "chLocal":C
    :cond_4
    new-instance v11, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 5237
    :cond_5
    new-instance v11, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 5246
    .end local v3    # "chLocal":C
    .end local v10    # "digit":I
    :cond_6
    :goto_2
    move v3, v9

    .end local v9    # "i":I
    .local v3, "i":I
    :cond_7
    if-eqz v2, :cond_9

    .line 5247
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v9, v9, 0x1

    if-le v3, v9, :cond_8

    .line 5248
    return-wide v0

    .line 5250
    :cond_8
    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 5253
    :cond_9
    neg-long v9, v0

    return-wide v9
.end method

.method public matchField(J)I
    .locals 1
    .param p1, "fieldNameHash"    # J

    .line 1205
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final matchField([C)Z
    .locals 4
    .param p1, "fieldName"    # [C

    .line 1173
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1174
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1175
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1176
    goto :goto_0

    .line 1178
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1184
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1185
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1187
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7b

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 1188
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1189
    const/16 v0, 0xc

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 1190
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_3

    .line 1191
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1192
    const/16 v0, 0xe

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 1193
    :cond_3
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v3, 0x53

    if-ne v0, v3, :cond_4

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v3, 0x65

    if-ne v0, v3, :cond_4

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v3, 0x74

    if-ne v0, v3, :cond_4

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_4

    .line 1194
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1195
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1196
    const/16 v0, 0x15

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 1198
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 1201
    :goto_1
    return v2
.end method

.method public matchField2([C)Z
    .locals 1
    .param p1, "fieldName"    # [C

    .line 5321
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final matchStat()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0
.end method

.method public newCollectionByType(Ljava/lang/Class;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1651
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1652
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 1653
    :cond_0
    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1654
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 1655
    :cond_1
    const-class v0, Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1656
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0

    .line 1659
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1660
    :catch_0
    move-exception v0

    .line 1661
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract next()C
.end method

.method public final nextIdent()V
    .locals 2

    .line 366
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 369
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x24

    if-eq v0, v1, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 372
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    goto :goto_2

    .line 370
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanIdent()V

    .line 374
    :goto_2
    return-void
.end method

.method public final nextToken()V
    .locals 4

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 101
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 103
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipComment()V

    .line 105
    goto :goto_0

    .line 108
    :cond_0
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x22

    if-ne v1, v2, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    .line 110
    return-void

    .line 113
    :cond_1
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_2

    .line 114
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 115
    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 116
    return-void

    .line 119
    :cond_2
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x30

    if-lt v1, v2, :cond_3

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x39

    if-gt v1, v2, :cond_3

    .line 120
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    .line 121
    return-void

    .line 124
    :cond_3
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_4

    .line 125
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    .line 126
    return-void

    .line 129
    :cond_4
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    sparse-switch v1, :sswitch_data_0

    .line 203
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEOF()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 204
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_6

    .line 208
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 209
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->eofPos:I

    goto/16 :goto_1

    .line 180
    :sswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 181
    const/16 v0, 0xd

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 182
    return-void

    .line 176
    :sswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 177
    const/16 v0, 0xc

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 178
    return-void

    .line 200
    :sswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanHex()V

    .line 201
    return-void

    .line 145
    :sswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanTrue()V

    .line 146
    return-void

    .line 151
    :sswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNullOrNew()V

    .line 152
    return-void

    .line 148
    :sswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFalse()V

    .line 149
    return-void

    .line 172
    :sswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 173
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 174
    return-void

    .line 168
    :sswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 169
    const/16 v0, 0xe

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 170
    return-void

    .line 157
    :sswitch_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanIdent()V

    .line 158
    return-void

    .line 188
    :sswitch_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 189
    const/16 v0, 0x18

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 190
    return-void

    .line 184
    :sswitch_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 185
    const/16 v0, 0x11

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 186
    return-void

    .line 192
    :sswitch_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 193
    const/16 v0, 0x19

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 194
    return-void

    .line 196
    :sswitch_c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 197
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    .line 198
    return-void

    .line 164
    :sswitch_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 165
    const/16 v0, 0xb

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 166
    return-void

    .line 160
    :sswitch_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 161
    const/16 v0, 0xa

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 162
    return-void

    .line 131
    :sswitch_f
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 134
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanStringSingleQuote()V

    .line 135
    return-void

    .line 132
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "Feature.AllowSingleQuotes is false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :sswitch_10
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 143
    goto/16 :goto_0

    .line 205
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "EOF error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_7
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x1f

    if-le v1, v2, :cond_9

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_8

    goto :goto_2

    .line 216
    :cond_8
    const-string v1, "illegal.char"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 220
    :goto_1
    return-void

    .line 212
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 213
    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_10
        0x9 -> :sswitch_10
        0xa -> :sswitch_10
        0xc -> :sswitch_10
        0xd -> :sswitch_10
        0x20 -> :sswitch_10
        0x27 -> :sswitch_f
        0x28 -> :sswitch_e
        0x29 -> :sswitch_d
        0x2b -> :sswitch_c
        0x2e -> :sswitch_b
        0x3a -> :sswitch_a
        0x3b -> :sswitch_9
        0x4e -> :sswitch_8
        0x53 -> :sswitch_8
        0x54 -> :sswitch_8
        0x5b -> :sswitch_7
        0x5d -> :sswitch_6
        0x66 -> :sswitch_5
        0x6e -> :sswitch_4
        0x74 -> :sswitch_3
        0x75 -> :sswitch_8
        0x78 -> :sswitch_2
        0x7b -> :sswitch_1
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method public final nextToken(I)V
    .locals 10
    .param p1, "expect"    # I

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 230
    :goto_0
    const/4 v1, 0x2

    const/16 v2, 0x39

    const/16 v3, 0x30

    const/16 v4, 0x22

    const/16 v5, 0xd

    const/16 v6, 0x7b

    const/16 v7, 0xe

    const/16 v8, 0x5b

    const/16 v9, 0xc

    if-eq p1, v1, :cond_d

    const/4 v1, 0x4

    if-eq p1, v1, :cond_9

    if-eq p1, v9, :cond_7

    const/16 v1, 0x12

    if-eq p1, v1, :cond_6

    const/16 v1, 0x1a

    const/16 v2, 0x14

    if-eq p1, v2, :cond_5

    const/16 v3, 0xf

    const/16 v4, 0x5d

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 244
    :pswitch_0
    iget-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v7, 0x2c

    if-ne v6, v7, :cond_0

    .line 245
    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 246
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 247
    return-void

    .line 250
    :cond_0
    iget-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v7, 0x7d

    if-ne v6, v7, :cond_1

    .line 251
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 252
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 253
    return-void

    .line 256
    :cond_1
    iget-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v6, v4, :cond_2

    .line 257
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 258
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 259
    return-void

    .line 262
    :cond_2
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v3, v1, :cond_3

    .line 263
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 264
    return-void

    .line 267
    :cond_3
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_11

    .line 268
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNullOrNew(Z)V

    .line 269
    return-void

    .line 337
    :pswitch_1
    iget-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v6, v4, :cond_5

    .line 338
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 339
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 340
    return-void

    .line 324
    :pswitch_2
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v8, :cond_4

    .line 325
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 326
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 327
    return-void

    .line 330
    :cond_4
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v6, :cond_11

    .line 331
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 332
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 333
    return-void

    .line 343
    :cond_5
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v3, v1, :cond_11

    .line 344
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 345
    return-void

    .line 349
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextIdent()V

    .line 350
    return-void

    .line 232
    :cond_7
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v6, :cond_8

    .line 233
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 234
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 235
    return-void

    .line 237
    :cond_8
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v8, :cond_11

    .line 238
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 239
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 240
    return-void

    .line 299
    :cond_9
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v4, :cond_a

    .line 300
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 301
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    .line 302
    return-void

    .line 305
    :cond_a
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v1, v3, :cond_b

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-gt v1, v2, :cond_b

    .line 306
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 307
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    .line 308
    return-void

    .line 311
    :cond_b
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v8, :cond_c

    .line 312
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 313
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 314
    return-void

    .line 317
    :cond_c
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v6, :cond_11

    .line 318
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 319
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 320
    return-void

    .line 273
    :cond_d
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v1, v3, :cond_e

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-gt v1, v2, :cond_e

    .line 274
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 275
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    .line 276
    return-void

    .line 279
    :cond_e
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v4, :cond_f

    .line 280
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 281
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    .line 282
    return-void

    .line 285
    :cond_f
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v8, :cond_10

    .line 286
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 287
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 288
    return-void

    .line 291
    :cond_10
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v6, :cond_11

    .line 292
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 293
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 294
    return-void

    .line 355
    :cond_11
    :goto_1
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x20

    if-eq v1, v2, :cond_13

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0xa

    if-eq v1, v2, :cond_13

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v1, v5, :cond_13

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x9

    if-eq v1, v2, :cond_13

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v1, v9, :cond_13

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x8

    if-ne v1, v2, :cond_12

    goto :goto_2

    .line 360
    :cond_12
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 361
    nop

    .line 363
    return-void

    .line 356
    :cond_13
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 357
    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final nextTokenWithChar(C)V
    .locals 3
    .param p1, "expect"    # C

    .line 381
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 384
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, p1, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 386
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 387
    return-void

    .line 390
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 395
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", info : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 392
    goto :goto_0
.end method

.method public final nextTokenWithColon()V
    .locals 1

    .line 377
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithChar(C)V

    .line 378
    return-void
.end method

.method public final nextTokenWithColon(I)V
    .locals 1
    .param p1, "expect"    # I

    .line 505
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithChar(C)V

    .line 506
    return-void
.end method

.method public abstract numberString()Ljava/lang/String;
.end method

.method public final pos()I
    .locals 1

    .line 408
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    return v0
.end method

.method protected final putChar(C)V
    .locals 4
    .param p1, "ch"    # C

    .line 5077
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 5078
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 5079
    .local v0, "newsbuf":[C
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5080
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 5082
    .end local v0    # "newsbuf":[C
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char p1, v0, v1

    .line 5083
    return-void
.end method

.method public final resetStringPosition()V
    .locals 1

    .line 814
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 815
    return-void
.end method

.method public scanBoolean(C)Z
    .locals 9
    .param p1, "expectNext"    # C

    .line 2094
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2096
    const/4 v1, 0x0

    .line 2097
    .local v1, "offset":I
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v1, 0x1

    .local v3, "offset":I
    add-int/2addr v2, v1

    .end local v1    # "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2099
    .local v1, "chLocal":C
    const/4 v2, 0x0

    .line 2100
    .local v2, "value":Z
    const/16 v4, 0x65

    const/4 v5, -0x1

    const/4 v6, 0x3

    const/16 v7, 0x74

    if-ne v1, v7, :cond_1

    .line 2101
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v3

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v8, 0x72

    if-ne v7, v8, :cond_0

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x1

    .line 2102
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v8, 0x75

    if-ne v7, v8, :cond_0

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x2

    .line 2103
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    if-ne v7, v4, :cond_0

    .line 2104
    add-int/lit8 v3, v3, 0x3

    .line 2105
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    .local v4, "offset":I
    add-int/2addr v0, v3

    .end local v3    # "offset":I
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2106
    const/4 v2, 0x1

    goto :goto_1

    .line 2108
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    :cond_0
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2109
    return v0

    .line 2111
    :cond_1
    const/16 v7, 0x66

    if-ne v1, v7, :cond_3

    .line 2112
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v3

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v8, 0x61

    if-ne v7, v8, :cond_2

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x1

    .line 2113
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v8, 0x6c

    if-ne v7, v8, :cond_2

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x2

    .line 2114
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v8, 0x73

    if-ne v7, v8, :cond_2

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v3

    add-int/2addr v7, v6

    .line 2115
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    if-ne v7, v4, :cond_2

    .line 2116
    add-int/lit8 v3, v3, 0x4

    .line 2117
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    .restart local v4    # "offset":I
    add-int/2addr v0, v3

    .end local v3    # "offset":I
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2118
    const/4 v2, 0x0

    goto :goto_1

    .line 2120
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    :cond_2
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2121
    return v0

    .line 2123
    :cond_3
    const/16 v0, 0x31

    if-ne v1, v0, :cond_4

    .line 2124
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    .restart local v4    # "offset":I
    add-int/2addr v0, v3

    .end local v3    # "offset":I
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2125
    const/4 v2, 0x1

    goto :goto_1

    .line 2126
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    :cond_4
    const/16 v0, 0x30

    if-ne v1, v0, :cond_5

    .line 2127
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    .restart local v4    # "offset":I
    add-int/2addr v0, v3

    .end local v3    # "offset":I
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2128
    const/4 v2, 0x0

    goto :goto_1

    .line 2132
    :cond_5
    :goto_0
    move v4, v3

    :goto_1
    if-ne v1, p1, :cond_6

    .line 2133
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2134
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2135
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2136
    return v2

    .line 2138
    :cond_6
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2139
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v4, 0x1

    .restart local v3    # "offset":I
    add-int/2addr v0, v4

    .end local v4    # "offset":I
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2140
    goto :goto_0

    .line 2142
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_7
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2143
    return v2
.end method

.method public scanDate(C)Ljava/util/Date;
    .locals 16
    .param p1, "seperator"    # C

    move-object/from16 v1, p0

    .line 4075
    const/4 v0, 0x0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4077
    const/4 v2, 0x0

    .line 4078
    .local v2, "offset":I
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v2, 0x1

    .local v4, "offset":I
    add-int/2addr v3, v2

    .end local v2    # "offset":I
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 4081
    .local v2, "chLocal":C
    const/4 v3, 0x3

    const/16 v5, 0x22

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-ne v2, v5, :cond_5

    .line 4082
    iget v8, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v8, 0x1

    .line 4083
    .local v8, "startIndex":I
    invoke-virtual {v1, v5, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v9

    .line 4084
    .local v9, "endIndex":I
    if-eq v9, v7, :cond_4

    .line 4088
    iget v10, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v10, 0x1

    .line 4089
    .local v10, "startIndex2":I
    sub-int v11, v9, v10

    invoke-virtual {v1, v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v11

    .line 4090
    .local v11, "stringVal":Ljava/lang/String;
    const/16 v12, 0x5c

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-eq v13, v7, :cond_2

    .line 4092
    :goto_0
    const/4 v13, 0x0

    .line 4093
    .local v13, "slashCount":I
    add-int/lit8 v14, v9, -0x1

    .local v14, "i":I
    :goto_1
    if-ltz v14, :cond_0

    .line 4094
    invoke-virtual {v1, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v15

    if-ne v15, v12, :cond_0

    .line 4095
    add-int/lit8 v13, v13, 0x1

    .line 4093
    add-int/lit8 v14, v14, -0x1

    goto :goto_1

    .line 4100
    .end local v14    # "i":I
    :cond_0
    rem-int/lit8 v14, v13, 0x2

    if-nez v14, :cond_1

    .line 4101
    nop

    .line 4106
    .end local v13    # "slashCount":I
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v5, 0x1

    sub-int v5, v9, v5

    .line 4107
    .local v5, "chars_len":I
    iget v12, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v1, v12, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v12

    .line 4109
    .local v12, "chars":[C
    invoke-static {v12, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v11

    .end local v5    # "chars_len":I
    .end local v12    # "chars":[C
    goto :goto_2

    .line 4103
    .restart local v13    # "slashCount":I
    :cond_1
    add-int/lit8 v14, v9, 0x1

    invoke-virtual {v1, v5, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v9

    .line 4104
    .end local v13    # "slashCount":I
    goto :goto_0

    .line 4112
    :cond_2
    :goto_2
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v5, 0x1

    sub-int v5, v9, v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 4113
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v4, 0x1

    .local v12, "offset":I
    add-int/2addr v5, v4

    .end local v4    # "offset":I
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 4115
    new-instance v4, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v4, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 4117
    .local v4, "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :try_start_0
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4118
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 4119
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "calendar":Ljava/util/Calendar;
    move-object v0, v5

    .line 4120
    .local v0, "dateVal":Ljava/util/Date;
    nop

    .line 4122
    nop

    .line 4125
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 4126
    nop

    .line 4125
    .end local v4    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v8    # "startIndex":I
    .end local v9    # "endIndex":I
    .end local v10    # "startIndex2":I
    .end local v11    # "stringVal":Ljava/lang/String;
    nop

    .line 4127
    goto/16 :goto_6

    .line 4121
    .end local v0    # "dateVal":Ljava/util/Date;
    .restart local v4    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .restart local v8    # "startIndex":I
    .restart local v9    # "endIndex":I
    .restart local v10    # "startIndex2":I
    .restart local v11    # "stringVal":Ljava/lang/String;
    :cond_3
    :try_start_1
    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4122
    nop

    .line 4125
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 4122
    return-object v6

    .line 4125
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw v0

    .line 4085
    .end local v10    # "startIndex2":I
    .end local v11    # "stringVal":Ljava/lang/String;
    .end local v12    # "offset":I
    .local v4, "offset":I
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "unclosed str"

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4127
    .end local v8    # "startIndex":I
    .end local v9    # "endIndex":I
    :cond_5
    const/16 v0, 0x2d

    const/16 v5, 0x39

    const/16 v8, 0x30

    if-eq v2, v0, :cond_8

    if-lt v2, v8, :cond_6

    if-gt v2, v5, :cond_6

    goto :goto_3

    .line 4158
    :cond_6
    const/16 v0, 0x6e

    if-ne v2, v0, :cond_7

    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v4

    .line 4159
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v5, 0x75

    if-ne v0, v5, :cond_7

    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    .line 4160
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v5, 0x6c

    if-ne v0, v5, :cond_7

    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x2

    .line 4161
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_7

    .line 4162
    const/4 v0, 0x5

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4163
    const/4 v0, 0x0

    .line 4164
    .restart local v0    # "dateVal":Ljava/util/Date;
    add-int/2addr v4, v3

    .line 4165
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v4, 0x1

    .restart local v12    # "offset":I
    add-int/2addr v5, v4

    .end local v4    # "offset":I
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    goto :goto_6

    .line 4167
    .end local v0    # "dateVal":Ljava/util/Date;
    .end local v12    # "offset":I
    .restart local v4    # "offset":I
    :cond_7
    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4168
    return-object v6

    .line 4128
    :cond_8
    :goto_3
    const-wide/16 v9, 0x0

    .line 4130
    .local v9, "millis":J
    const/4 v11, 0x0

    .line 4131
    .local v11, "negative":Z
    if-ne v2, v0, :cond_9

    .line 4132
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v4, 0x1

    .restart local v12    # "offset":I
    add-int/2addr v0, v4

    .end local v4    # "offset":I
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 4133
    const/4 v11, 0x1

    goto :goto_4

    .line 4136
    .end local v12    # "offset":I
    .restart local v4    # "offset":I
    :cond_9
    move v12, v4

    .end local v4    # "offset":I
    .restart local v12    # "offset":I
    :goto_4
    if-lt v2, v8, :cond_b

    if-gt v2, v5, :cond_b

    .line 4137
    add-int/lit8 v0, v2, -0x30

    int-to-long v9, v0

    .line 4139
    :goto_5
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v12, 0x1

    .restart local v4    # "offset":I
    add-int/2addr v0, v12

    .end local v12    # "offset":I
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 4140
    if-lt v2, v8, :cond_a

    if-gt v2, v5, :cond_a

    .line 4141
    const-wide/16 v12, 0xa

    mul-long/2addr v12, v9

    add-int/lit8 v0, v2, -0x30

    int-to-long v14, v0

    add-long v9, v12, v14

    .line 4139
    move v12, v4

    goto :goto_5

    .line 4148
    :cond_a
    move v12, v4

    .end local v4    # "offset":I
    .restart local v12    # "offset":I
    :cond_b
    const-wide/16 v4, 0x0

    cmp-long v0, v9, v4

    if-gez v0, :cond_c

    .line 4149
    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4150
    return-object v6

    .line 4153
    :cond_c
    if-eqz v11, :cond_d

    .line 4154
    neg-long v9, v9

    .line 4157
    :cond_d
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 4158
    .end local v9    # "millis":J
    .end local v11    # "negative":Z
    .restart local v0    # "dateVal":Ljava/util/Date;
    nop

    .line 4168
    :goto_6
    nop

    .line 4171
    const/16 v4, 0x10

    const/16 v5, 0x2c

    if-ne v2, v5, :cond_e

    .line 4172
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v12

    iput v5, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4173
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    iput-char v5, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 4174
    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4175
    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4176
    return-object v0

    .line 4179
    :cond_e
    const/16 v3, 0x5d

    if-ne v2, v3, :cond_13

    .line 4180
    iget v8, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v12, 0x1

    .local v9, "offset":I
    add-int/2addr v8, v12

    .end local v12    # "offset":I
    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 4181
    if-ne v2, v5, :cond_f

    .line 4182
    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4183
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v9

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4184
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_7

    .line 4185
    :cond_f
    if-ne v2, v3, :cond_10

    .line 4186
    const/16 v3, 0xf

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4187
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v9

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4188
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_7

    .line 4189
    :cond_10
    const/16 v3, 0x7d

    if-ne v2, v3, :cond_11

    .line 4190
    const/16 v3, 0xd

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4191
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v9

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4192
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_7

    .line 4193
    :cond_11
    const/16 v3, 0x1a

    if-ne v2, v3, :cond_12

    .line 4194
    const/16 v3, 0x14

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4195
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v9, -0x1

    add-int/2addr v3, v4

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4196
    const/16 v3, 0x1a

    iput-char v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 4201
    :goto_7
    const/4 v3, 0x4

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4207
    return-object v0

    .line 4198
    :cond_12
    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4199
    return-object v6

    .line 4203
    .end local v9    # "offset":I
    .restart local v12    # "offset":I
    :cond_13
    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4204
    return-object v6
.end method

.method public scanDecimal(C)Ljava/math/BigDecimal;
    .locals 20
    .param p1, "seperator"    # C

    move-object/from16 v0, p0

    .line 2971
    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2973
    const/4 v2, 0x0

    .line 2974
    .local v2, "offset":I
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v2, 0x1

    .local v4, "offset":I
    add-int/2addr v3, v2

    .end local v2    # "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2975
    .local v2, "chLocal":C
    const/16 v3, 0x22

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v1

    .line 2976
    .local v6, "quote":Z
    :goto_0
    if-eqz v6, :cond_1

    .line 2977
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v4, 0x1

    .local v8, "offset":I
    add-int/2addr v7, v4

    .end local v4    # "offset":I
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2980
    move v4, v8

    .end local v8    # "offset":I
    .restart local v4    # "offset":I
    :cond_1
    const/16 v7, 0x2d

    if-ne v2, v7, :cond_2

    move v8, v5

    goto :goto_1

    :cond_2
    move v8, v1

    .line 2981
    .local v8, "negative":Z
    :goto_1
    if-eqz v8, :cond_3

    .line 2982
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v4, 0x1

    .local v10, "offset":I
    add-int/2addr v9, v4

    .end local v4    # "offset":I
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2986
    move v4, v10

    .end local v10    # "offset":I
    .restart local v4    # "offset":I
    :cond_3
    const/4 v10, 0x3

    const/16 v12, 0x2c

    const/16 v13, 0x30

    const/4 v14, 0x0

    const/4 v15, -0x1

    if-lt v2, v13, :cond_15

    const/16 v1, 0x39

    if-gt v2, v1, :cond_15

    .line 2988
    :goto_2
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v4, 0x1

    .local v17, "offset":I
    add-int/2addr v9, v4

    .end local v4    # "offset":I
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2989
    if-lt v2, v13, :cond_4

    if-gt v2, v1, :cond_4

    .line 2990
    nop

    .line 2988
    move/from16 v4, v17

    goto :goto_2

    .line 2996
    :cond_4
    const/16 v4, 0x2e

    if-ne v2, v4, :cond_5

    move v4, v5

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    .line 2997
    .local v4, "small":Z
    :goto_3
    if-eqz v4, :cond_7

    .line 2998
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v18, v17, 0x1

    .local v18, "offset":I
    add-int v9, v9, v17

    .end local v17    # "offset":I
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2999
    if-lt v2, v13, :cond_6

    if-gt v2, v1, :cond_6

    .line 3001
    :goto_4
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v18, 0x1

    .restart local v17    # "offset":I
    add-int v9, v9, v18

    .end local v18    # "offset":I
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3002
    if-lt v2, v13, :cond_7

    if-gt v2, v1, :cond_7

    .line 3003
    nop

    .line 3001
    move/from16 v18, v17

    goto :goto_4

    .line 3009
    .end local v17    # "offset":I
    .restart local v18    # "offset":I
    :cond_6
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3010
    return-object v14

    .line 3014
    .end local v18    # "offset":I
    .restart local v17    # "offset":I
    :cond_7
    const/16 v9, 0x65

    if-eq v2, v9, :cond_9

    const/16 v9, 0x45

    if-ne v2, v9, :cond_8

    goto :goto_5

    :cond_8
    const/16 v16, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    move/from16 v16, v5

    :goto_6
    move/from16 v9, v16

    .line 3015
    .local v9, "exp":Z
    if-eqz v9, :cond_c

    .line 3016
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v16, v17, 0x1

    .local v16, "offset":I
    add-int v11, v11, v17

    .end local v17    # "offset":I
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3017
    const/16 v11, 0x2b

    if-eq v2, v11, :cond_b

    if-ne v2, v7, :cond_a

    goto :goto_7

    .line 3021
    :cond_a
    move/from16 v17, v16

    goto :goto_9

    .line 3018
    :cond_b
    :goto_7
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v16, 0x1

    .local v11, "offset":I
    add-int v7, v7, v16

    .end local v16    # "offset":I
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3021
    .end local v11    # "offset":I
    .restart local v17    # "offset":I
    :goto_8
    move/from16 v17, v11

    :goto_9
    if-lt v2, v13, :cond_c

    if-gt v2, v1, :cond_c

    .line 3022
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v17, 0x1

    .restart local v11    # "offset":I
    add-int v7, v7, v17

    .end local v17    # "offset":I
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    goto :goto_8

    .line 3030
    .end local v11    # "offset":I
    .restart local v17    # "offset":I
    :cond_c
    if-eqz v6, :cond_e

    .line 3031
    if-eq v2, v3, :cond_d

    .line 3032
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3033
    return-object v14

    .line 3035
    :cond_d
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v17, 0x1

    .local v3, "offset":I
    add-int v1, v1, v17

    .end local v17    # "offset":I
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3037
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v5

    .line 3038
    .local v1, "start":I
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v3

    sub-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x2

    .line 3041
    .local v5, "count":I
    move/from16 v17, v3

    goto :goto_a

    .line 3040
    .end local v1    # "start":I
    .end local v3    # "offset":I
    .end local v5    # "count":I
    .restart local v17    # "offset":I
    :cond_e
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3041
    .restart local v1    # "start":I
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v3, v3, v17

    sub-int/2addr v3, v1

    add-int/lit8 v5, v3, -0x1

    .restart local v5    # "count":I
    :goto_a
    move v3, v5

    .line 3044
    .end local v5    # "count":I
    .local v3, "count":I
    invoke-virtual {v0, v1, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v5

    .line 3045
    .local v5, "chars":[C
    new-instance v7, Ljava/math/BigDecimal;

    invoke-direct {v7, v5}, Ljava/math/BigDecimal;-><init>([C)V

    .end local v1    # "start":I
    .end local v3    # "count":I
    .end local v4    # "small":Z
    .end local v5    # "chars":[C
    .end local v9    # "exp":Z
    move-object v1, v7

    .line 3046
    .local v1, "value":Ljava/math/BigDecimal;
    nop

    .line 3079
    nop

    .line 3082
    if-ne v2, v12, :cond_f

    .line 3083
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v3, v3, v17

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3084
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3085
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3086
    const/16 v3, 0x10

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3087
    return-object v1

    .line 3090
    :cond_f
    const/16 v3, 0x5d

    if-ne v2, v3, :cond_14

    .line 3091
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v17, 0x1

    .local v5, "offset":I
    add-int v4, v4, v17

    .end local v17    # "offset":I
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3092
    if-ne v2, v12, :cond_10

    .line 3093
    const/16 v3, 0x10

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3094
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3095
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_b

    .line 3096
    :cond_10
    if-ne v2, v3, :cond_11

    .line 3097
    const/16 v3, 0xf

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3098
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3099
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_b

    .line 3100
    :cond_11
    const/16 v3, 0x7d

    if-ne v2, v3, :cond_12

    .line 3101
    const/16 v3, 0xd

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3102
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3103
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_b

    .line 3104
    :cond_12
    const/16 v3, 0x1a

    if-ne v2, v3, :cond_13

    .line 3105
    const/16 v3, 0x14

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3106
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v5, -0x1

    add-int/2addr v3, v4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3107
    const/16 v3, 0x1a

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3112
    :goto_b
    const/4 v3, 0x4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3118
    return-object v1

    .line 3109
    :cond_13
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3110
    return-object v14

    .line 3114
    .end local v5    # "offset":I
    .restart local v17    # "offset":I
    :cond_14
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3115
    return-object v14

    .line 3046
    .end local v1    # "value":Ljava/math/BigDecimal;
    .end local v17    # "offset":I
    .local v4, "offset":I
    :cond_15
    const/16 v1, 0x6e

    if-ne v2, v1, :cond_1a

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v7, 0x75

    if-ne v1, v7, :cond_1a

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    add-int/2addr v1, v5

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v5, 0x6c

    if-ne v1, v5, :cond_1a

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v5, 0x6c

    if-ne v1, v5, :cond_1a

    .line 3047
    const/4 v1, 0x5

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3048
    const/4 v5, 0x0

    .line 3049
    .local v5, "value":Ljava/math/BigDecimal;
    add-int/2addr v4, v10

    .line 3050
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v4, 0x1

    .local v9, "offset":I
    add-int/2addr v7, v4

    .end local v4    # "offset":I
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3052
    if-eqz v6, :cond_16

    if-ne v2, v3, :cond_16

    .line 3053
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v9, 0x1

    .restart local v4    # "offset":I
    add-int/2addr v3, v9

    .end local v9    # "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    goto :goto_c

    .line 3057
    .end local v4    # "offset":I
    .restart local v9    # "offset":I
    :cond_16
    move v4, v9

    .end local v9    # "offset":I
    .restart local v4    # "offset":I
    :goto_c
    if-ne v2, v12, :cond_17

    .line 3058
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3059
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3060
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3061
    const/16 v3, 0x10

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3062
    return-object v5

    .line 3063
    :cond_17
    const/16 v3, 0x10

    const/16 v7, 0x7d

    if-ne v2, v7, :cond_18

    .line 3064
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3065
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3066
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3067
    const/16 v1, 0xd

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3068
    return-object v5

    .line 3069
    :cond_18
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 3070
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v4, 0x1

    .restart local v10    # "offset":I
    add-int/2addr v9, v4

    .end local v4    # "offset":I
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3071
    nop

    .line 3057
    move v4, v10

    goto :goto_c

    .line 3075
    .end local v10    # "offset":I
    .restart local v4    # "offset":I
    :cond_19
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3076
    return-object v14

    .line 3078
    .end local v5    # "value":Ljava/math/BigDecimal;
    :cond_1a
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3079
    return-object v14
.end method

.method public scanDouble(C)D
    .locals 25
    .param p1, "seperator"    # C

    move-object/from16 v0, p0

    .line 2833
    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2835
    const/4 v2, 0x0

    .line 2836
    .local v2, "offset":I
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v2, 0x1

    .local v4, "offset":I
    add-int/2addr v3, v2

    .end local v2    # "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2837
    .local v2, "chLocal":C
    const/16 v3, 0x22

    if-ne v2, v3, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v1

    .line 2838
    .local v6, "quote":Z
    :goto_0
    if-eqz v6, :cond_1

    .line 2839
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v4, 0x1

    .local v8, "offset":I
    add-int/2addr v7, v4

    .end local v4    # "offset":I
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2842
    move v4, v8

    .end local v8    # "offset":I
    .restart local v4    # "offset":I
    :cond_1
    const/16 v7, 0x2d

    if-ne v2, v7, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    move v8, v1

    .line 2843
    .local v8, "negative":Z
    :goto_1
    if-eqz v8, :cond_3

    .line 2844
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v4, 0x1

    .local v10, "offset":I
    add-int/2addr v9, v4

    .end local v4    # "offset":I
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2848
    move v4, v10

    .end local v10    # "offset":I
    .restart local v4    # "offset":I
    :cond_3
    const-wide/16 v11, 0x0

    const/4 v13, -0x1

    const/16 v14, 0x30

    if-lt v2, v14, :cond_13

    const/16 v15, 0x39

    if-gt v2, v15, :cond_13

    .line 2849
    add-int/lit8 v1, v2, -0x30

    int-to-long v9, v1

    .line 2851
    .local v9, "intVal":J
    :goto_2
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v4, 0x1

    .local v17, "offset":I
    add-int/2addr v1, v4

    .end local v4    # "offset":I
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2852
    const-wide/16 v18, 0xa

    if-lt v2, v14, :cond_4

    if-gt v2, v15, :cond_4

    .line 2853
    mul-long v18, v18, v9

    add-int/lit8 v1, v2, -0x30

    int-to-long v3, v1

    add-long v9, v18, v3

    .line 2854
    nop

    .line 2849
    move/from16 v4, v17

    const/16 v3, 0x22

    goto :goto_2

    .line 2860
    :cond_4
    const-wide/16 v3, 0x1

    .line 2861
    .local v3, "power":J
    const/16 v1, 0x2e

    if-ne v2, v1, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 2862
    .local v1, "small":Z
    :goto_3
    if-eqz v1, :cond_8

    .line 2863
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v20, v17, 0x1

    .local v20, "offset":I
    add-int v5, v5, v17

    .end local v17    # "offset":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2864
    if-lt v2, v14, :cond_7

    if-gt v2, v15, :cond_7

    .line 2865
    mul-long v21, v9, v18

    add-int/lit8 v5, v2, -0x30

    move/from16 v23, v8

    int-to-long v7, v5

    .end local v8    # "negative":Z
    .local v23, "negative":Z
    add-long v21, v21, v7

    .line 2866
    .end local v9    # "intVal":J
    .local v21, "intVal":J
    const-wide/16 v3, 0xa

    .line 2868
    move-wide/from16 v9, v21

    .end local v21    # "intVal":J
    .restart local v9    # "intVal":J
    :goto_4
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v20, 0x1

    .local v7, "offset":I
    add-int v5, v5, v20

    .end local v20    # "offset":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2869
    if-lt v2, v14, :cond_6

    if-gt v2, v15, :cond_6

    .line 2870
    mul-long v20, v9, v18

    add-int/lit8 v5, v2, -0x30

    int-to-long v14, v5

    add-long v9, v20, v14

    .line 2871
    mul-long v3, v3, v18

    .line 2872
    nop

    .line 2868
    move/from16 v20, v7

    const/16 v14, 0x30

    const/16 v15, 0x39

    goto :goto_4

    .line 2883
    :cond_6
    move/from16 v17, v7

    goto :goto_5

    .line 2878
    .end local v7    # "offset":I
    .end local v23    # "negative":Z
    .restart local v8    # "negative":Z
    .restart local v20    # "offset":I
    :cond_7
    move/from16 v23, v8

    .end local v8    # "negative":Z
    .restart local v23    # "negative":Z
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2879
    return-wide v11

    .line 2883
    .end local v20    # "offset":I
    .end local v23    # "negative":Z
    .restart local v8    # "negative":Z
    .restart local v17    # "offset":I
    :cond_8
    move/from16 v23, v8

    .end local v8    # "negative":Z
    .restart local v23    # "negative":Z
    :goto_5
    const/16 v5, 0x65

    if-eq v2, v5, :cond_a

    const/16 v5, 0x45

    if-ne v2, v5, :cond_9

    goto :goto_6

    :cond_9
    const/16 v16, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    const/16 v16, 0x1

    :goto_7
    move/from16 v5, v16

    .line 2884
    .local v5, "exp":Z
    if-eqz v5, :cond_d

    .line 2885
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v17, 0x1

    .local v8, "offset":I
    add-int v7, v7, v17

    .end local v17    # "offset":I
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2886
    const/16 v7, 0x2b

    if-eq v2, v7, :cond_c

    const/16 v7, 0x2d

    if-ne v2, v7, :cond_b

    goto :goto_8

    .line 2890
    :cond_b
    move/from16 v17, v8

    goto :goto_9

    .line 2887
    :cond_c
    :goto_8
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v14, v8, 0x1

    .local v14, "offset":I
    add-int/2addr v7, v8

    .end local v8    # "offset":I
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2890
    move/from16 v17, v14

    .end local v14    # "offset":I
    .restart local v17    # "offset":I
    :goto_9
    const/16 v7, 0x30

    if-lt v2, v7, :cond_d

    const/16 v8, 0x39

    if-gt v2, v8, :cond_d

    .line 2891
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v15, v17, 0x1

    .local v15, "offset":I
    add-int v14, v14, v17

    .end local v17    # "offset":I
    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2890
    move/from16 v17, v15

    goto :goto_9

    .line 2899
    .end local v15    # "offset":I
    .restart local v17    # "offset":I
    :cond_d
    if-eqz v6, :cond_f

    .line 2900
    const/16 v7, 0x22

    if-eq v2, v7, :cond_e

    .line 2901
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2902
    return-wide v11

    .line 2904
    :cond_e
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v17, 0x1

    .restart local v8    # "offset":I
    add-int v7, v7, v17

    .end local v17    # "offset":I
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2906
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v11, 0x1

    add-int/2addr v7, v11

    .line 2907
    .local v7, "start":I
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v11, v8

    sub-int/2addr v11, v7

    add-int/lit8 v11, v11, -0x2

    .line 2910
    .local v11, "count":I
    move/from16 v17, v8

    goto :goto_a

    .line 2909
    .end local v7    # "start":I
    .end local v8    # "offset":I
    .end local v11    # "count":I
    .restart local v17    # "offset":I
    :cond_f
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2910
    .restart local v7    # "start":I
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v8, v8, v17

    sub-int/2addr v8, v7

    const/4 v11, 0x1

    add-int/lit8 v11, v8, -0x1

    .restart local v11    # "count":I
    :goto_a
    move v8, v11

    .line 2913
    .end local v11    # "count":I
    .local v8, "count":I
    if-nez v5, :cond_10

    const/16 v11, 0x11

    if-ge v8, v11, :cond_10

    .line 2914
    long-to-double v11, v9

    long-to-double v14, v3

    div-double/2addr v11, v14

    .line 2915
    .local v11, "value":D
    if-eqz v23, :cond_11

    .line 2916
    neg-double v11, v11

    goto :goto_b

    .line 2919
    .end local v11    # "value":D
    :cond_10
    invoke-virtual {v0, v7, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v11

    .line 2920
    .local v11, "text":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    .end local v1    # "small":Z
    .end local v3    # "power":J
    .end local v5    # "exp":Z
    .end local v7    # "start":I
    .end local v8    # "count":I
    .end local v9    # "intVal":J
    .local v11, "value":D
    :cond_11
    :goto_b
    move-wide v3, v11

    .line 2922
    .end local v11    # "value":D
    .local v3, "value":D
    nop

    .line 2955
    nop

    .line 2958
    move/from16 v1, p1

    if-ne v2, v1, :cond_12

    .line 2959
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v5, v5, v17

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2960
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2961
    const/4 v5, 0x3

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2962
    const/16 v5, 0x10

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2963
    return-wide v3

    .line 2965
    :cond_12
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2966
    return-wide v3

    .line 2922
    .end local v3    # "value":D
    .end local v17    # "offset":I
    .end local v23    # "negative":Z
    .restart local v4    # "offset":I
    .local v8, "negative":Z
    :cond_13
    move/from16 v1, p1

    move/from16 v23, v8

    .end local v8    # "negative":Z
    .restart local v23    # "negative":Z
    const/16 v3, 0x6e

    if-ne v2, v3, :cond_18

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v5, 0x75

    if-ne v3, v5, :cond_18

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v4

    const/4 v5, 0x1

    add-int/2addr v3, v5

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v5, 0x6c

    if-ne v3, v5, :cond_18

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_18

    .line 2923
    const/4 v3, 0x5

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2924
    const-wide/16 v7, 0x0

    .line 2925
    .local v7, "value":D
    const/4 v5, 0x3

    add-int/2addr v4, v5

    .line 2926
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v4, 0x1

    .local v9, "offset":I
    add-int/2addr v5, v4

    .end local v4    # "offset":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2928
    if-eqz v6, :cond_14

    const/16 v4, 0x22

    if-ne v2, v4, :cond_14

    .line 2929
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v9, 0x1

    .local v5, "offset":I
    add-int/2addr v4, v9

    .end local v9    # "offset":I
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    goto :goto_c

    .line 2933
    .end local v5    # "offset":I
    .restart local v9    # "offset":I
    :cond_14
    move v5, v9

    .end local v9    # "offset":I
    .restart local v5    # "offset":I
    :goto_c
    const/16 v4, 0x2c

    if-ne v2, v4, :cond_15

    .line 2934
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v5

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2935
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2936
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2937
    const/16 v4, 0x10

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2938
    return-wide v7

    .line 2939
    :cond_15
    const/16 v4, 0x10

    const/16 v9, 0x5d

    if-ne v2, v9, :cond_16

    .line 2940
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v5

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2941
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2942
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2943
    const/16 v3, 0xf

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2944
    return-wide v7

    .line 2945
    :cond_16
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 2946
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v5, 0x1

    .restart local v10    # "offset":I
    add-int/2addr v9, v5

    .end local v5    # "offset":I
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2947
    nop

    .line 2933
    move v5, v10

    goto :goto_c

    .line 2951
    .end local v10    # "offset":I
    .restart local v5    # "offset":I
    :cond_17
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2952
    return-wide v11

    .line 2954
    .end local v5    # "offset":I
    .end local v7    # "value":D
    .restart local v4    # "offset":I
    :cond_18
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2955
    return-wide v11
.end method

.method public scanEnum(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/Enum;
    .locals 2
    .param p2, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;
    .param p3, "serperator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/parser/SymbolTable;",
            "C)",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    .line 1571
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbolWithSeperator(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    .line 1572
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1573
    const/4 v1, 0x0

    return-object v1

    .line 1575
    :cond_0
    invoke-static {p1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    return-object v1
.end method

.method public scanEnumSymbol([C)J
    .locals 12
    .param p1, "fieldName"    # [C

    .line 1499
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1501
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 1502
    const/4 v0, -0x2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1503
    return-wide v1

    .line 1506
    :cond_0
    array-length v0, p1

    .line 1507
    .local v0, "offset":I
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v0, 0x1

    .local v4, "offset":I
    add-int/2addr v3, v0

    .end local v0    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1509
    .local v0, "chLocal":C
    const/16 v3, 0x22

    const/4 v5, -0x1

    if-eq v0, v3, :cond_1

    .line 1510
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1511
    return-wide v1

    .line 1514
    :cond_1
    const-wide v6, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 1516
    .local v6, "hash":J
    :goto_0
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v4, 0x1

    .local v9, "offset":I
    add-int/2addr v8, v4

    .end local v4    # "offset":I
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1517
    if-ne v0, v3, :cond_8

    .line 1518
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v9, 0x1

    .restart local v4    # "offset":I
    add-int/2addr v3, v9

    .end local v9    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1519
    nop

    .line 1531
    const/16 v3, 0x2c

    if-ne v0, v3, :cond_2

    .line 1532
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1533
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1534
    const/4 v1, 0x3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1535
    return-wide v6

    .line 1538
    :cond_2
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_7

    .line 1539
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v4, 0x1

    .local v10, "offset":I
    add-int/2addr v9, v4

    .end local v4    # "offset":I
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1540
    if-ne v0, v3, :cond_3

    .line 1541
    const/16 v1, 0x10

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1542
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v10

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1543
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    .line 1544
    :cond_3
    const/16 v3, 0x5d

    if-ne v0, v3, :cond_4

    .line 1545
    const/16 v1, 0xf

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1546
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v10

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1547
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    .line 1548
    :cond_4
    if-ne v0, v8, :cond_5

    .line 1549
    const/16 v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1550
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v10

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1551
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    .line 1552
    :cond_5
    const/16 v3, 0x1a

    if-ne v0, v3, :cond_6

    .line 1553
    const/16 v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1554
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v10, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1555
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1560
    :goto_1
    const/4 v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1566
    return-wide v6

    .line 1557
    :cond_6
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1558
    return-wide v1

    .line 1562
    .end local v10    # "offset":I
    .restart local v4    # "offset":I
    :cond_7
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1563
    return-wide v1

    .line 1522
    .end local v4    # "offset":I
    .restart local v9    # "offset":I
    :cond_8
    const/16 v4, 0x41

    if-lt v0, v4, :cond_9

    const/16 v4, 0x5a

    if-gt v0, v4, :cond_9

    add-int/lit8 v4, v0, 0x20

    goto :goto_2

    :cond_9
    move v4, v0

    :goto_2
    int-to-long v10, v4

    xor-long/2addr v6, v10

    .line 1523
    const-wide v10, 0x100000001b3L

    mul-long/2addr v6, v10

    .line 1525
    const/16 v4, 0x5c

    if-ne v0, v4, :cond_a

    .line 1526
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1527
    return-wide v1

    .line 1514
    :cond_a
    move v4, v9

    goto/16 :goto_0
.end method

.method public final scanFalse()V
    .locals 2

    .line 4729
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x66

    if-ne v0, v1, :cond_6

    .line 4732
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4734
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x61

    if-ne v0, v1, :cond_5

    .line 4737
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4739
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_4

    .line 4742
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4744
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x73

    if-ne v0, v1, :cond_3

    .line 4747
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4749
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x65

    if-ne v0, v1, :cond_2

    .line 4752
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4754
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4768
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan false error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4766
    :cond_1
    :goto_0
    const/4 v0, 0x7

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4770
    return-void

    .line 4750
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4745
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4740
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4735
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4730
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scanFieldBigInteger([C)Ljava/math/BigInteger;
    .locals 21
    .param p1, "fieldName"    # [C

    move-object/from16 v0, p0

    .line 3799
    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3801
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 3802
    const/4 v2, -0x2

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3803
    return-object v4

    .line 3806
    :cond_0
    array-length v3, v1

    .line 3807
    .local v3, "offset":I
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v3, 0x1

    .local v6, "offset":I
    add-int/2addr v5, v3

    .end local v3    # "offset":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3808
    .local v3, "chLocal":C
    const/16 v5, 0x22

    const/4 v7, 0x1

    if-ne v3, v5, :cond_1

    move v8, v7

    goto :goto_0

    :cond_1
    move v8, v2

    .line 3809
    .local v8, "quote":Z
    :goto_0
    if-eqz v8, :cond_2

    .line 3810
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v6, 0x1

    .local v10, "offset":I
    add-int/2addr v9, v6

    .end local v6    # "offset":I
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3813
    move v6, v10

    .end local v10    # "offset":I
    .restart local v6    # "offset":I
    :cond_2
    const/16 v9, 0x2d

    if-ne v3, v9, :cond_3

    move v9, v7

    goto :goto_1

    :cond_3
    move v9, v2

    .line 3814
    .local v9, "negative":Z
    :goto_1
    if-eqz v9, :cond_4

    .line 3815
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v6, 0x1

    .local v11, "offset":I
    add-int/2addr v10, v6

    .end local v6    # "offset":I
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3819
    move v6, v11

    .end local v11    # "offset":I
    .restart local v6    # "offset":I
    :cond_4
    const/16 v15, 0x30

    const/4 v2, -0x1

    if-lt v3, v15, :cond_12

    const/16 v10, 0x39

    if-gt v3, v10, :cond_12

    .line 3820
    add-int/lit8 v12, v3, -0x30

    int-to-long v11, v12

    .line 3821
    .local v11, "intVal":J
    const/16 v16, 0x0

    .line 3824
    .local v16, "overflow":Z
    :goto_2
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v6, 0x1

    .local v17, "offset":I
    add-int/2addr v13, v6

    .end local v6    # "offset":I
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3825
    if-lt v3, v15, :cond_6

    if-gt v3, v10, :cond_6

    .line 3826
    const-wide/16 v18, 0xa

    mul-long v18, v18, v11

    add-int/lit8 v6, v3, -0x30

    int-to-long v14, v6

    add-long v18, v18, v14

    .line 3827
    .local v18, "temp":J
    cmp-long v6, v18, v11

    if-gez v6, :cond_5

    .line 3828
    const/16 v16, 0x1

    .line 3829
    goto :goto_3

    .line 3831
    :cond_5
    move-wide/from16 v11, v18

    .line 3832
    nop

    .line 3821
    move/from16 v6, v17

    const/16 v15, 0x30

    goto :goto_2

    .line 3839
    .end local v18    # "temp":J
    :cond_6
    :goto_3
    if-eqz v8, :cond_8

    .line 3840
    if-eq v3, v5, :cond_7

    .line 3841
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3842
    return-object v4

    .line 3844
    :cond_7
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v17, 0x1

    .restart local v6    # "offset":I
    add-int v5, v5, v17

    .end local v17    # "offset":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3846
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v10, v1

    add-int/2addr v5, v10

    add-int/2addr v5, v7

    .line 3847
    .local v5, "start":I
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v6

    sub-int/2addr v7, v5

    add-int/lit8 v7, v7, -0x2

    .line 3850
    .local v7, "count":I
    move/from16 v17, v6

    goto :goto_4

    .line 3849
    .end local v5    # "start":I
    .end local v6    # "offset":I
    .end local v7    # "count":I
    .restart local v17    # "offset":I
    :cond_8
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v6, v1

    add-int/2addr v5, v6

    .line 3850
    .restart local v5    # "start":I
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v6, v6, v17

    sub-int/2addr v6, v5

    add-int/lit8 v7, v6, -0x1

    .restart local v7    # "count":I
    :goto_4
    move v6, v7

    .line 3853
    .end local v7    # "count":I
    .local v6, "count":I
    const/16 v7, 0x14

    if-nez v16, :cond_b

    if-lt v6, v7, :cond_9

    if-eqz v9, :cond_b

    const/16 v10, 0x15

    if-ge v6, v10, :cond_b

    .line 3854
    :cond_9
    if-eqz v9, :cond_a

    neg-long v13, v11

    goto :goto_5

    :cond_a
    move-wide v13, v11

    :goto_5
    invoke-static {v13, v14}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    .line 3860
    .local v10, "value":Ljava/math/BigInteger;
    move-object v13, v10

    goto :goto_6

    .line 3859
    .end local v10    # "value":Ljava/math/BigInteger;
    :cond_b
    invoke-virtual {v0, v5, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v10

    .line 3860
    .local v10, "strVal":Ljava/lang/String;
    new-instance v13, Ljava/math/BigInteger;

    invoke-direct {v13, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .end local v5    # "start":I
    .end local v6    # "count":I
    .end local v10    # "strVal":Ljava/lang/String;
    .end local v11    # "intVal":J
    .end local v16    # "overflow":Z
    .local v13, "value":Ljava/math/BigInteger;
    :goto_6
    move-object v5, v13

    .line 3862
    .end local v13    # "value":Ljava/math/BigInteger;
    .local v5, "value":Ljava/math/BigInteger;
    nop

    .line 3898
    nop

    .line 3901
    const/16 v6, 0x2c

    if-ne v3, v6, :cond_c

    .line 3902
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v2, v2, v17

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3903
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3904
    const/4 v2, 0x3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3905
    const/16 v2, 0x10

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3906
    return-object v5

    .line 3909
    :cond_c
    const/16 v6, 0x7d

    if-ne v3, v6, :cond_11

    .line 3910
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v17, 0x1

    .local v10, "offset":I
    add-int v6, v6, v17

    .end local v17    # "offset":I
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3911
    const/16 v6, 0x2c

    if-ne v3, v6, :cond_d

    .line 3912
    const/16 v2, 0x10

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3913
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v10

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3914
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_7

    .line 3915
    :cond_d
    const/16 v6, 0x5d

    if-ne v3, v6, :cond_e

    .line 3916
    const/16 v2, 0xf

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3917
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v10

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3918
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_7

    .line 3919
    :cond_e
    const/16 v6, 0x7d

    if-ne v3, v6, :cond_f

    .line 3920
    const/16 v2, 0xd

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3921
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v10

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3922
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_7

    .line 3923
    :cond_f
    const/16 v6, 0x1a

    if-ne v3, v6, :cond_10

    .line 3924
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3925
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v10, -0x1

    add-int/2addr v2, v4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3926
    const/16 v2, 0x1a

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3931
    :goto_7
    const/4 v2, 0x4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3937
    return-object v5

    .line 3928
    :cond_10
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3929
    return-object v4

    .line 3933
    .end local v10    # "offset":I
    .restart local v17    # "offset":I
    :cond_11
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3934
    return-object v4

    .line 3862
    .end local v5    # "value":Ljava/math/BigInteger;
    .end local v17    # "offset":I
    .local v6, "offset":I
    :cond_12
    const/16 v10, 0x6e

    if-ne v3, v10, :cond_17

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v10, v6

    .line 3863
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    const/16 v11, 0x75

    if-ne v10, v11, :cond_17

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v10, v6

    add-int/2addr v10, v7

    .line 3864
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v10, 0x6c

    if-ne v7, v10, :cond_17

    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v6

    add-int/lit8 v7, v7, 0x2

    .line 3865
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v10, 0x6c

    if-ne v7, v10, :cond_17

    .line 3866
    const/4 v7, 0x5

    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3867
    const/4 v10, 0x0

    .line 3868
    .local v10, "value":Ljava/math/BigInteger;
    const/4 v11, 0x3

    add-int/2addr v6, v11

    .line 3869
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v6, 0x1

    .local v12, "offset":I
    add-int/2addr v11, v6

    .end local v6    # "offset":I
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3871
    if-eqz v8, :cond_13

    if-ne v3, v5, :cond_13

    .line 3872
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v12, 0x1

    .restart local v6    # "offset":I
    add-int/2addr v5, v12

    .end local v12    # "offset":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3876
    move v12, v6

    .end local v6    # "offset":I
    .restart local v12    # "offset":I
    :cond_13
    :goto_8
    const/16 v5, 0x2c

    if-ne v3, v5, :cond_14

    .line 3877
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v12

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3878
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3879
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3880
    const/16 v6, 0x10

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3881
    return-object v10

    .line 3882
    :cond_14
    const/16 v6, 0x10

    const/16 v11, 0x7d

    if-ne v3, v11, :cond_15

    .line 3883
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v12

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3884
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3885
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3886
    const/16 v13, 0xd

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3887
    return-object v10

    .line 3888
    :cond_15
    const/16 v13, 0xd

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 3889
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v15, v12, 0x1

    .local v15, "offset":I
    add-int/2addr v14, v12

    .end local v12    # "offset":I
    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3890
    nop

    .line 3876
    move v12, v15

    goto :goto_8

    .line 3894
    .end local v15    # "offset":I
    .restart local v12    # "offset":I
    :cond_16
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3895
    return-object v4

    .line 3897
    .end local v10    # "value":Ljava/math/BigInteger;
    .end local v12    # "offset":I
    .restart local v6    # "offset":I
    :cond_17
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3898
    return-object v4
.end method

.method public scanFieldBoolean([C)Z
    .locals 10
    .param p1, "fieldName"    # [C

    .line 2237
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2239
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2240
    const/4 v1, -0x2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2241
    return v0

    .line 2244
    :cond_0
    array-length v1, p1

    .line 2245
    .local v1, "offset":I
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v1, 0x1

    .local v3, "offset":I
    add-int/2addr v2, v1

    .end local v1    # "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2248
    .local v1, "chLocal":C
    const/16 v2, 0x74

    const/16 v4, 0x65

    const/4 v5, -0x1

    if-ne v1, v2, :cond_4

    .line 2249
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v3, 0x1

    .local v6, "offset":I
    add-int/2addr v2, v3

    .end local v3    # "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v3, 0x72

    if-eq v2, v3, :cond_1

    .line 2250
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2251
    return v0

    .line 2253
    :cond_1
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v6, 0x1

    .restart local v3    # "offset":I
    add-int/2addr v2, v6

    .end local v6    # "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v6, 0x75

    if-eq v2, v6, :cond_2

    .line 2254
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2255
    return v0

    .line 2257
    :cond_2
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v3, 0x1

    .restart local v6    # "offset":I
    add-int/2addr v2, v3

    .end local v3    # "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_3

    .line 2258
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2259
    return v0

    .line 2262
    :cond_3
    const/4 v2, 0x1

    .line 2284
    .local v2, "value":Z
    move v3, v6

    goto :goto_0

    .line 2263
    .end local v2    # "value":Z
    .end local v6    # "offset":I
    .restart local v3    # "offset":I
    :cond_4
    const/16 v2, 0x66

    if-ne v1, v2, :cond_f

    .line 2264
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v3, 0x1

    .restart local v6    # "offset":I
    add-int/2addr v2, v3

    .end local v3    # "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v3, 0x61

    if-eq v2, v3, :cond_5

    .line 2265
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2266
    return v0

    .line 2268
    :cond_5
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v6, 0x1

    .restart local v3    # "offset":I
    add-int/2addr v2, v6

    .end local v6    # "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v6, 0x6c

    if-eq v2, v6, :cond_6

    .line 2269
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2270
    return v0

    .line 2272
    :cond_6
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v3, 0x1

    .restart local v6    # "offset":I
    add-int/2addr v2, v3

    .end local v3    # "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v3, 0x73

    if-eq v2, v3, :cond_7

    .line 2273
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2274
    return v0

    .line 2276
    :cond_7
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v6, 0x1

    .restart local v3    # "offset":I
    add-int/2addr v2, v6

    .end local v6    # "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_8

    .line 2277
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2278
    return v0

    .line 2281
    :cond_8
    const/4 v2, 0x0

    .line 2284
    .restart local v2    # "value":Z
    :goto_0
    nop

    .line 2287
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v3, 0x1

    .restart local v6    # "offset":I
    add-int/2addr v4, v3

    .end local v3    # "offset":I
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2288
    const/16 v3, 0x10

    const/16 v4, 0x2c

    if-ne v1, v4, :cond_9

    .line 2289
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2290
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2291
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2292
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2294
    return v2

    .line 2297
    :cond_9
    const/16 v7, 0x7d

    if-ne v1, v7, :cond_e

    .line 2298
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v6, 0x1

    .local v9, "offset":I
    add-int/2addr v8, v6

    .end local v6    # "offset":I
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2299
    if-ne v1, v4, :cond_a

    .line 2300
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2301
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v9

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2302
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    .line 2303
    :cond_a
    const/16 v3, 0x5d

    if-ne v1, v3, :cond_b

    .line 2304
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2305
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v9

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2306
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    .line 2307
    :cond_b
    if-ne v1, v7, :cond_c

    .line 2308
    const/16 v0, 0xd

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2309
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v9

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2310
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    .line 2311
    :cond_c
    const/16 v3, 0x1a

    if-ne v1, v3, :cond_d

    .line 2312
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2313
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v9, -0x1

    add-int/2addr v0, v4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2314
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2319
    :goto_1
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2325
    return v2

    .line 2316
    :cond_d
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2317
    return v0

    .line 2321
    .end local v9    # "offset":I
    .restart local v6    # "offset":I
    :cond_e
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2322
    return v0

    .line 2283
    .end local v2    # "value":Z
    .end local v6    # "offset":I
    .restart local v3    # "offset":I
    :cond_f
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2284
    return v0
.end method

.method public scanFieldDate([C)Ljava/util/Date;
    .locals 16
    .param p1, "fieldName"    # [C

    move-object/from16 v1, p0

    .line 3941
    move-object/from16 v2, p1

    const/4 v0, 0x0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3943
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 3944
    const/4 v0, -0x2

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3945
    return-object v4

    .line 3950
    :cond_0
    array-length v3, v2

    .line 3951
    .local v3, "offset":I
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v3, 0x1

    .local v6, "offset":I
    add-int/2addr v5, v3

    .end local v3    # "offset":I
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3954
    .local v3, "chLocal":C
    const/16 v5, 0x22

    const/4 v7, -0x1

    if-ne v3, v5, :cond_6

    .line 3955
    iget v8, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v9, v2

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    .line 3956
    .local v8, "startIndex":I
    invoke-virtual {v1, v5, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v9

    .line 3957
    .local v9, "endIndex":I
    if-eq v9, v7, :cond_5

    .line 3961
    iget v10, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v11, v2

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x1

    .line 3962
    .local v10, "startIndex2":I
    sub-int v11, v9, v10

    invoke-virtual {v1, v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v11

    .line 3963
    .local v11, "stringVal":Ljava/lang/String;
    const/16 v12, 0x5c

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-eq v13, v7, :cond_3

    .line 3965
    :goto_0
    const/4 v13, 0x0

    .line 3966
    .local v13, "slashCount":I
    add-int/lit8 v14, v9, -0x1

    .local v14, "i":I
    :goto_1
    if-ltz v14, :cond_1

    .line 3967
    invoke-virtual {v1, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v15

    if-ne v15, v12, :cond_1

    .line 3968
    add-int/lit8 v13, v13, 0x1

    .line 3966
    add-int/lit8 v14, v14, -0x1

    goto :goto_1

    .line 3973
    .end local v14    # "i":I
    :cond_1
    rem-int/lit8 v14, v13, 0x2

    if-nez v14, :cond_2

    .line 3974
    nop

    .line 3979
    .end local v13    # "slashCount":I
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v12, v2

    add-int/2addr v5, v12

    add-int/lit8 v5, v5, 0x1

    sub-int v5, v9, v5

    .line 3980
    .local v5, "chars_len":I
    iget v12, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v13, v2

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v1, v12, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v12

    .line 3982
    .local v12, "chars":[C
    invoke-static {v12, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v11

    .end local v5    # "chars_len":I
    .end local v12    # "chars":[C
    goto :goto_2

    .line 3976
    .restart local v13    # "slashCount":I
    :cond_2
    add-int/lit8 v14, v9, 0x1

    invoke-virtual {v1, v5, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v9

    .line 3977
    .end local v13    # "slashCount":I
    goto :goto_0

    .line 3985
    :cond_3
    :goto_2
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v12, v2

    add-int/2addr v5, v12

    add-int/lit8 v5, v5, 0x1

    sub-int v5, v9, v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v6, v5

    .line 3986
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v6, 0x1

    .local v12, "offset":I
    add-int/2addr v5, v6

    .end local v6    # "offset":I
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3988
    new-instance v5, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v5, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 3990
    .local v5, "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :try_start_0
    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3991
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 3992
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "calendar":Ljava/util/Calendar;
    move-object v0, v6

    .line 3993
    .local v0, "dateVal":Ljava/util/Date;
    nop

    .line 3995
    nop

    .line 3998
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 3999
    nop

    .line 3998
    .end local v5    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v8    # "startIndex":I
    .end local v9    # "endIndex":I
    .end local v10    # "startIndex2":I
    .end local v11    # "stringVal":Ljava/lang/String;
    nop

    .line 4000
    goto :goto_6

    .line 3994
    .end local v0    # "dateVal":Ljava/util/Date;
    .restart local v5    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .restart local v8    # "startIndex":I
    .restart local v9    # "endIndex":I
    .restart local v10    # "startIndex2":I
    .restart local v11    # "stringVal":Ljava/lang/String;
    :cond_4
    :try_start_1
    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3995
    nop

    .line 3998
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 3995
    return-object v4

    .line 3998
    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw v0

    .line 3958
    .end local v5    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v10    # "startIndex2":I
    .end local v11    # "stringVal":Ljava/lang/String;
    .end local v12    # "offset":I
    .restart local v6    # "offset":I
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "unclosed str"

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4000
    .end local v8    # "startIndex":I
    .end local v9    # "endIndex":I
    :cond_6
    const/16 v0, 0x2d

    const/16 v5, 0x39

    const/16 v8, 0x30

    if-eq v3, v0, :cond_8

    if-lt v3, v8, :cond_7

    if-gt v3, v5, :cond_7

    goto :goto_3

    .line 4032
    :cond_7
    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4033
    return-object v4

    .line 4001
    :cond_8
    :goto_3
    const-wide/16 v9, 0x0

    .line 4003
    .local v9, "millis":J
    const/4 v11, 0x0

    .line 4004
    .local v11, "negative":Z
    if-ne v3, v0, :cond_9

    .line 4005
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v6, 0x1

    .restart local v12    # "offset":I
    add-int/2addr v0, v6

    .end local v6    # "offset":I
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 4006
    const/4 v11, 0x1

    goto :goto_4

    .line 4009
    .end local v12    # "offset":I
    .restart local v6    # "offset":I
    :cond_9
    move v12, v6

    .end local v6    # "offset":I
    .restart local v12    # "offset":I
    :goto_4
    if-lt v3, v8, :cond_b

    if-gt v3, v5, :cond_b

    .line 4010
    add-int/lit8 v0, v3, -0x30

    int-to-long v9, v0

    .line 4012
    :goto_5
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v12, 0x1

    .restart local v6    # "offset":I
    add-int/2addr v0, v12

    .end local v12    # "offset":I
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 4013
    if-lt v3, v8, :cond_a

    if-gt v3, v5, :cond_a

    .line 4014
    const-wide/16 v12, 0xa

    mul-long/2addr v12, v9

    add-int/lit8 v0, v3, -0x30

    int-to-long v14, v0

    add-long v9, v12, v14

    .line 4012
    move v12, v6

    goto :goto_5

    .line 4021
    :cond_a
    move v12, v6

    .end local v6    # "offset":I
    .restart local v12    # "offset":I
    :cond_b
    const-wide/16 v5, 0x0

    cmp-long v0, v9, v5

    if-gez v0, :cond_c

    .line 4022
    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4023
    return-object v4

    .line 4026
    :cond_c
    if-eqz v11, :cond_d

    .line 4027
    neg-long v9, v9

    .line 4030
    :cond_d
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 4031
    .end local v9    # "millis":J
    .end local v11    # "negative":Z
    .restart local v0    # "dateVal":Ljava/util/Date;
    nop

    .line 4033
    :goto_6
    nop

    .line 4036
    const/16 v5, 0x2c

    if-ne v3, v5, :cond_e

    .line 4037
    iget v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v12

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4038
    iget v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 4039
    const/4 v4, 0x3

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4040
    return-object v0

    .line 4043
    :cond_e
    const/16 v6, 0x7d

    if-ne v3, v6, :cond_13

    .line 4044
    iget v8, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v12, 0x1

    .local v9, "offset":I
    add-int/2addr v8, v12

    .end local v12    # "offset":I
    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 4045
    if-ne v3, v5, :cond_f

    .line 4046
    const/16 v4, 0x10

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4047
    iget v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v9

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4048
    iget v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_7

    .line 4049
    :cond_f
    const/16 v5, 0x5d

    if-ne v3, v5, :cond_10

    .line 4050
    const/16 v4, 0xf

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4051
    iget v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v9

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4052
    iget v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_7

    .line 4053
    :cond_10
    if-ne v3, v6, :cond_11

    .line 4054
    const/16 v4, 0xd

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4055
    iget v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v9

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4056
    iget v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_7

    .line 4057
    :cond_11
    const/16 v5, 0x1a

    if-ne v3, v5, :cond_12

    .line 4058
    const/16 v4, 0x14

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4059
    iget v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v9, -0x1

    add-int/2addr v4, v6

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4060
    iput-char v5, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 4065
    :goto_7
    const/4 v4, 0x4

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4071
    return-object v0

    .line 4062
    :cond_12
    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4063
    return-object v4

    .line 4067
    .end local v9    # "offset":I
    .restart local v12    # "offset":I
    :cond_13
    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4068
    return-object v4
.end method

.method public scanFieldDecimal([C)Ljava/math/BigDecimal;
    .locals 20
    .param p1, "fieldName"    # [C

    move-object/from16 v0, p0

    .line 3640
    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3642
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 3643
    const/4 v2, -0x2

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3644
    return-object v4

    .line 3647
    :cond_0
    array-length v3, v1

    .line 3648
    .local v3, "offset":I
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v3, 0x1

    .local v6, "offset":I
    add-int/2addr v5, v3

    .end local v3    # "offset":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3649
    .local v3, "chLocal":C
    const/16 v5, 0x22

    const/4 v7, 0x1

    if-ne v3, v5, :cond_1

    move v8, v7

    goto :goto_0

    :cond_1
    move v8, v2

    .line 3650
    .local v8, "quote":Z
    :goto_0
    if-eqz v8, :cond_2

    .line 3651
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v6, 0x1

    .local v10, "offset":I
    add-int/2addr v9, v6

    .end local v6    # "offset":I
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3654
    move v6, v10

    .end local v10    # "offset":I
    .restart local v6    # "offset":I
    :cond_2
    const/16 v9, 0x2d

    if-ne v3, v9, :cond_3

    move v10, v7

    goto :goto_1

    :cond_3
    move v10, v2

    .line 3655
    .local v10, "negative":Z
    :goto_1
    if-eqz v10, :cond_4

    .line 3656
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v6, 0x1

    .local v12, "offset":I
    add-int/2addr v11, v6

    .end local v6    # "offset":I
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    goto :goto_2

    .line 3660
    .end local v12    # "offset":I
    .restart local v6    # "offset":I
    :cond_4
    move v12, v6

    .end local v6    # "offset":I
    .restart local v12    # "offset":I
    :goto_2
    const/16 v15, 0x2c

    const/16 v2, 0x30

    const/4 v6, -0x1

    if-lt v3, v2, :cond_16

    const/16 v13, 0x39

    if-gt v3, v13, :cond_16

    .line 3662
    :goto_3
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v12, 0x1

    .local v17, "offset":I
    add-int/2addr v14, v12

    .end local v12    # "offset":I
    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3663
    if-lt v3, v2, :cond_5

    if-gt v3, v13, :cond_5

    .line 3664
    nop

    .line 3662
    move/from16 v12, v17

    goto :goto_3

    .line 3670
    :cond_5
    const/16 v12, 0x2e

    if-ne v3, v12, :cond_6

    move v12, v7

    goto :goto_4

    :cond_6
    const/4 v12, 0x0

    .line 3671
    .local v12, "small":Z
    :goto_4
    if-eqz v12, :cond_8

    .line 3672
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v18, v17, 0x1

    .local v18, "offset":I
    add-int v14, v14, v17

    .end local v17    # "offset":I
    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3673
    if-lt v3, v2, :cond_7

    if-gt v3, v13, :cond_7

    .line 3675
    :goto_5
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v18, 0x1

    .restart local v17    # "offset":I
    add-int v14, v14, v18

    .end local v18    # "offset":I
    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3676
    if-lt v3, v2, :cond_8

    if-gt v3, v13, :cond_8

    .line 3677
    nop

    .line 3675
    move/from16 v18, v17

    goto :goto_5

    .line 3683
    .end local v17    # "offset":I
    .restart local v18    # "offset":I
    :cond_7
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3684
    return-object v4

    .line 3688
    .end local v18    # "offset":I
    .restart local v17    # "offset":I
    :cond_8
    const/16 v14, 0x65

    if-eq v3, v14, :cond_a

    const/16 v14, 0x45

    if-ne v3, v14, :cond_9

    goto :goto_6

    :cond_9
    const/16 v16, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    move/from16 v16, v7

    :goto_7
    move/from16 v14, v16

    .line 3689
    .local v14, "exp":Z
    if-eqz v14, :cond_d

    .line 3690
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v16, v17, 0x1

    .local v16, "offset":I
    add-int v11, v11, v17

    .end local v17    # "offset":I
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3691
    const/16 v11, 0x2b

    if-eq v3, v11, :cond_c

    if-ne v3, v9, :cond_b

    goto :goto_8

    .line 3695
    :cond_b
    move/from16 v17, v16

    goto :goto_a

    .line 3692
    :cond_c
    :goto_8
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v16, 0x1

    .local v11, "offset":I
    add-int v9, v9, v16

    .end local v16    # "offset":I
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3695
    .end local v11    # "offset":I
    .restart local v17    # "offset":I
    :goto_9
    move/from16 v17, v11

    :goto_a
    if-lt v3, v2, :cond_d

    if-gt v3, v13, :cond_d

    .line 3696
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v17, 0x1

    .restart local v11    # "offset":I
    add-int v9, v9, v17

    .end local v17    # "offset":I
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    goto :goto_9

    .line 3704
    .end local v11    # "offset":I
    .restart local v17    # "offset":I
    :cond_d
    if-eqz v8, :cond_f

    .line 3705
    if-eq v3, v5, :cond_e

    .line 3706
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3707
    return-object v4

    .line 3709
    :cond_e
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v17, 0x1

    .local v5, "offset":I
    add-int v2, v2, v17

    .end local v17    # "offset":I
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3711
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v9, v1

    add-int/2addr v2, v9

    add-int/2addr v2, v7

    .line 3712
    .local v2, "start":I
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v5

    sub-int/2addr v7, v2

    add-int/lit8 v7, v7, -0x2

    .line 3715
    .local v7, "count":I
    move/from16 v17, v5

    goto :goto_b

    .line 3714
    .end local v2    # "start":I
    .end local v5    # "offset":I
    .end local v7    # "count":I
    .restart local v17    # "offset":I
    :cond_f
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v5, v1

    add-int/2addr v2, v5

    .line 3715
    .restart local v2    # "start":I
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v5, v5, v17

    sub-int/2addr v5, v2

    add-int/lit8 v7, v5, -0x1

    .restart local v7    # "count":I
    :goto_b
    move v5, v7

    .line 3718
    .end local v7    # "count":I
    .local v5, "count":I
    invoke-virtual {v0, v2, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v7

    .line 3719
    .local v7, "chars":[C
    new-instance v9, Ljava/math/BigDecimal;

    invoke-direct {v9, v7}, Ljava/math/BigDecimal;-><init>([C)V

    .end local v2    # "start":I
    .end local v5    # "count":I
    .end local v7    # "chars":[C
    .end local v12    # "small":Z
    .end local v14    # "exp":Z
    move-object v2, v9

    .line 3720
    .local v2, "value":Ljava/math/BigDecimal;
    nop

    .line 3756
    nop

    .line 3759
    if-ne v3, v15, :cond_10

    .line 3760
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v4, v4, v17

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3761
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3762
    const/4 v4, 0x3

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3763
    const/16 v4, 0x10

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3764
    return-object v2

    .line 3767
    :cond_10
    const/16 v5, 0x7d

    if-ne v3, v5, :cond_15

    .line 3768
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v17, 0x1

    .local v7, "offset":I
    add-int v5, v5, v17

    .end local v17    # "offset":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3769
    if-ne v3, v15, :cond_11

    .line 3770
    const/16 v4, 0x10

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3771
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v7

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3772
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_c

    .line 3773
    :cond_11
    const/16 v5, 0x5d

    if-ne v3, v5, :cond_12

    .line 3774
    const/16 v4, 0xf

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3775
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v7

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3776
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_c

    .line 3777
    :cond_12
    const/16 v5, 0x7d

    if-ne v3, v5, :cond_13

    .line 3778
    const/16 v4, 0xd

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3779
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v7

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3780
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_c

    .line 3781
    :cond_13
    const/16 v5, 0x1a

    if-ne v3, v5, :cond_14

    .line 3782
    const/16 v4, 0x14

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3783
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v7, -0x1

    add-int/2addr v4, v5

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3784
    const/16 v4, 0x1a

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3789
    :goto_c
    const/4 v4, 0x4

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3795
    return-object v2

    .line 3786
    :cond_14
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3787
    return-object v4

    .line 3791
    .end local v7    # "offset":I
    .restart local v17    # "offset":I
    :cond_15
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3792
    return-object v4

    .line 3720
    .end local v2    # "value":Ljava/math/BigDecimal;
    .end local v17    # "offset":I
    .local v12, "offset":I
    :cond_16
    const/16 v2, 0x6e

    if-ne v3, v2, :cond_1b

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v12

    .line 3721
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v9, 0x75

    if-ne v2, v9, :cond_1b

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v12

    add-int/2addr v2, v7

    .line 3722
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v7, 0x6c

    if-ne v2, v7, :cond_1b

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v12

    add-int/lit8 v2, v2, 0x2

    .line 3723
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v7, 0x6c

    if-ne v2, v7, :cond_1b

    .line 3724
    const/4 v2, 0x5

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3725
    const/4 v7, 0x0

    .line 3726
    .local v7, "value":Ljava/math/BigDecimal;
    const/4 v9, 0x3

    add-int/2addr v12, v9

    .line 3727
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v12, 0x1

    .restart local v11    # "offset":I
    add-int/2addr v9, v12

    .end local v12    # "offset":I
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3729
    if-eqz v8, :cond_17

    if-ne v3, v5, :cond_17

    .line 3730
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v11, 0x1

    .local v9, "offset":I
    add-int/2addr v5, v11

    .end local v11    # "offset":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    goto :goto_d

    .line 3734
    .end local v9    # "offset":I
    .restart local v11    # "offset":I
    :cond_17
    move v9, v11

    .end local v11    # "offset":I
    .restart local v9    # "offset":I
    :goto_d
    if-ne v3, v15, :cond_18

    .line 3735
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v9

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3736
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3737
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3738
    const/16 v5, 0x10

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3739
    return-object v7

    .line 3740
    :cond_18
    const/16 v5, 0x10

    const/16 v11, 0x7d

    if-ne v3, v11, :cond_19

    .line 3741
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v9

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3742
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3743
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3744
    const/16 v12, 0xd

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3745
    return-object v7

    .line 3746
    :cond_19
    const/16 v12, 0xd

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 3747
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v14, v9, 0x1

    .local v14, "offset":I
    add-int/2addr v13, v9

    .end local v9    # "offset":I
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3748
    nop

    .line 3734
    move v9, v14

    goto :goto_d

    .line 3752
    .end local v14    # "offset":I
    .restart local v9    # "offset":I
    :cond_1a
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3753
    return-object v4

    .line 3755
    .end local v7    # "value":Ljava/math/BigDecimal;
    .end local v9    # "offset":I
    .restart local v12    # "offset":I
    :cond_1b
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3756
    return-object v4
.end method

.method public final scanFieldDouble([C)D
    .locals 26
    .param p1, "fieldName"    # [C

    move-object/from16 v0, p0

    .line 3466
    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3468
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_0

    .line 3469
    const/4 v2, -0x2

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3470
    return-wide v4

    .line 3473
    :cond_0
    array-length v3, v1

    .line 3474
    .local v3, "offset":I
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v3, 0x1

    .local v7, "offset":I
    add-int/2addr v6, v3

    .end local v3    # "offset":I
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3475
    .local v3, "chLocal":C
    const/16 v6, 0x22

    if-ne v3, v6, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    move v9, v2

    .line 3476
    .local v9, "quote":Z
    :goto_0
    if-eqz v9, :cond_2

    .line 3477
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v7, 0x1

    .local v11, "offset":I
    add-int/2addr v10, v7

    .end local v7    # "offset":I
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3480
    move v7, v11

    .end local v11    # "offset":I
    .restart local v7    # "offset":I
    :cond_2
    const/16 v10, 0x2d

    if-ne v3, v10, :cond_3

    const/4 v11, 0x1

    goto :goto_1

    :cond_3
    move v11, v2

    .line 3481
    .local v11, "negative":Z
    :goto_1
    if-eqz v11, :cond_4

    .line 3482
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v13, v7, 0x1

    .local v13, "offset":I
    add-int/2addr v12, v7

    .end local v7    # "offset":I
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    goto :goto_2

    .line 3486
    .end local v13    # "offset":I
    .restart local v7    # "offset":I
    :cond_4
    move v13, v7

    .end local v7    # "offset":I
    .restart local v13    # "offset":I
    :goto_2
    const/4 v2, -0x1

    const/16 v12, 0x30

    if-lt v3, v12, :cond_19

    const/16 v14, 0x39

    if-gt v3, v14, :cond_19

    .line 3487
    add-int/lit8 v7, v3, -0x30

    int-to-long v6, v7

    .line 3490
    .local v6, "intVal":J
    :goto_3
    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v13, 0x1

    .local v17, "offset":I
    add-int/2addr v15, v13

    .end local v13    # "offset":I
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3491
    const-wide/16 v18, 0xa

    if-lt v3, v12, :cond_5

    if-gt v3, v14, :cond_5

    .line 3492
    mul-long v18, v18, v6

    add-int/lit8 v13, v3, -0x30

    move/from16 v20, v9

    int-to-long v8, v13

    .end local v9    # "quote":Z
    .local v20, "quote":Z
    add-long v6, v18, v8

    .line 3493
    nop

    .line 3487
    move/from16 v13, v17

    move/from16 v9, v20

    goto :goto_3

    .line 3499
    .end local v20    # "quote":Z
    .restart local v9    # "quote":Z
    :cond_5
    move/from16 v20, v9

    .end local v9    # "quote":Z
    .restart local v20    # "quote":Z
    const-wide/16 v8, 0x1

    .line 3500
    .local v8, "power":J
    const/16 v13, 0x2e

    if-ne v3, v13, :cond_6

    const/4 v13, 0x1

    goto :goto_4

    :cond_6
    const/4 v13, 0x0

    .line 3501
    .local v13, "small":Z
    :goto_4
    if-eqz v13, :cond_9

    .line 3502
    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v21, v17, 0x1

    .local v21, "offset":I
    add-int v15, v15, v17

    .end local v17    # "offset":I
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3503
    if-lt v3, v12, :cond_8

    if-gt v3, v14, :cond_8

    .line 3504
    mul-long v22, v6, v18

    add-int/lit8 v15, v3, -0x30

    move/from16 v24, v11

    int-to-long v10, v15

    .end local v11    # "negative":Z
    .local v24, "negative":Z
    add-long v22, v22, v10

    .line 3505
    .end local v6    # "intVal":J
    .local v22, "intVal":J
    const-wide/16 v6, 0xa

    .line 3507
    .end local v8    # "power":J
    .local v6, "power":J
    move-wide v8, v6

    move-wide/from16 v6, v22

    .end local v22    # "intVal":J
    .local v6, "intVal":J
    .restart local v8    # "power":J
    :goto_5
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v21, 0x1

    .local v11, "offset":I
    add-int v10, v10, v21

    .end local v21    # "offset":I
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3508
    if-lt v3, v12, :cond_7

    if-gt v3, v14, :cond_7

    .line 3509
    mul-long v21, v6, v18

    add-int/lit8 v10, v3, -0x30

    int-to-long v14, v10

    add-long v6, v21, v14

    .line 3510
    mul-long v8, v8, v18

    .line 3511
    nop

    .line 3507
    move/from16 v21, v11

    const/16 v14, 0x39

    goto :goto_5

    .line 3522
    :cond_7
    move/from16 v17, v11

    goto :goto_6

    .line 3517
    .end local v24    # "negative":Z
    .local v11, "negative":Z
    .restart local v21    # "offset":I
    :cond_8
    move/from16 v24, v11

    .end local v11    # "negative":Z
    .restart local v24    # "negative":Z
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3518
    return-wide v4

    .line 3522
    .end local v21    # "offset":I
    .end local v24    # "negative":Z
    .restart local v11    # "negative":Z
    .restart local v17    # "offset":I
    :cond_9
    move/from16 v24, v11

    .end local v11    # "negative":Z
    .restart local v24    # "negative":Z
    :goto_6
    const/16 v10, 0x65

    if-eq v3, v10, :cond_b

    const/16 v10, 0x45

    if-ne v3, v10, :cond_a

    goto :goto_7

    :cond_a
    const/16 v16, 0x0

    goto :goto_8

    :cond_b
    :goto_7
    const/16 v16, 0x1

    :goto_8
    move/from16 v10, v16

    .line 3523
    .local v10, "exp":Z
    if-eqz v10, :cond_e

    .line 3524
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v14, v17, 0x1

    .local v14, "offset":I
    add-int v11, v11, v17

    .end local v17    # "offset":I
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3525
    const/16 v11, 0x2b

    if-eq v3, v11, :cond_d

    const/16 v11, 0x2d

    if-ne v3, v11, :cond_c

    goto :goto_9

    .line 3529
    :cond_c
    move/from16 v17, v14

    goto :goto_b

    .line 3526
    :cond_d
    :goto_9
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v15, v14, 0x1

    .local v15, "offset":I
    add-int/2addr v11, v14

    .end local v14    # "offset":I
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3529
    .end local v15    # "offset":I
    .restart local v17    # "offset":I
    :goto_a
    move/from16 v17, v15

    :goto_b
    if-lt v3, v12, :cond_e

    const/16 v11, 0x39

    if-gt v3, v11, :cond_e

    .line 3530
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v15, v17, 0x1

    .restart local v15    # "offset":I
    add-int v14, v14, v17

    .end local v17    # "offset":I
    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    goto :goto_a

    .line 3538
    .end local v15    # "offset":I
    .restart local v17    # "offset":I
    :cond_e
    if-eqz v20, :cond_10

    .line 3539
    const/16 v11, 0x22

    if-eq v3, v11, :cond_f

    .line 3540
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3541
    return-wide v4

    .line 3543
    :cond_f
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v17, 0x1

    .local v12, "offset":I
    add-int v11, v11, v17

    .end local v17    # "offset":I
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3545
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v14, v1

    add-int/2addr v11, v14

    const/4 v14, 0x1

    add-int/2addr v11, v14

    .line 3546
    .local v11, "start":I
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v14, v12

    sub-int/2addr v14, v11

    add-int/lit8 v14, v14, -0x2

    .local v14, "count":I
    goto :goto_c

    .line 3548
    .end local v11    # "start":I
    .end local v12    # "offset":I
    .end local v14    # "count":I
    .restart local v17    # "offset":I
    :cond_10
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v12, v1

    add-int/2addr v11, v12

    .line 3549
    .restart local v11    # "start":I
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v12, v12, v17

    sub-int/2addr v12, v11

    const/4 v14, 0x1

    add-int/lit8 v14, v12, -0x1

    move/from16 v12, v17

    .line 3552
    .end local v17    # "offset":I
    .restart local v12    # "offset":I
    .restart local v14    # "count":I
    :goto_c
    if-nez v10, :cond_11

    const/16 v15, 0x11

    if-ge v14, v15, :cond_11

    .line 3553
    long-to-double v4, v6

    move/from16 v25, v3

    long-to-double v2, v8

    .end local v3    # "chLocal":C
    .local v25, "chLocal":C
    div-double/2addr v4, v2

    .line 3554
    .local v4, "value":D
    if-eqz v24, :cond_12

    .line 3555
    neg-double v4, v4

    goto :goto_d

    .line 3558
    .end local v4    # "value":D
    .end local v25    # "chLocal":C
    .restart local v3    # "chLocal":C
    :cond_11
    move/from16 v25, v3

    .end local v3    # "chLocal":C
    .restart local v25    # "chLocal":C
    invoke-virtual {v0, v11, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v2

    .line 3559
    .local v2, "text":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .end local v2    # "text":Ljava/lang/String;
    .end local v6    # "intVal":J
    .end local v8    # "power":J
    .end local v10    # "exp":Z
    .end local v11    # "start":I
    .end local v13    # "small":Z
    .end local v14    # "count":I
    .restart local v4    # "value":D
    :cond_12
    :goto_d
    move-wide v2, v4

    .line 3561
    .end local v4    # "value":D
    .local v2, "value":D
    nop

    .line 3597
    nop

    .line 3600
    move/from16 v4, v25

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_13

    .line 3601
    .end local v25    # "chLocal":C
    .local v4, "chLocal":C
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v12

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3602
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3603
    const/4 v5, 0x3

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3604
    const/16 v5, 0x10

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3605
    return-wide v2

    .line 3608
    :cond_13
    const/16 v5, 0x7d

    if-ne v4, v5, :cond_18

    .line 3609
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v12, 0x1

    .local v6, "offset":I
    add-int/2addr v5, v12

    .end local v12    # "offset":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    .line 3610
    const/16 v5, 0x2c

    if-ne v4, v5, :cond_14

    .line 3611
    const/16 v5, 0x10

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3612
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3613
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_e

    .line 3614
    :cond_14
    const/16 v5, 0x5d

    if-ne v4, v5, :cond_15

    .line 3615
    const/16 v5, 0xf

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3616
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3617
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_e

    .line 3618
    :cond_15
    const/16 v5, 0x7d

    if-ne v4, v5, :cond_16

    .line 3619
    const/16 v5, 0xd

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3620
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3621
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_e

    .line 3622
    :cond_16
    const/16 v5, 0x1a

    if-ne v4, v5, :cond_17

    .line 3623
    const/16 v5, 0x14

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3624
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v6, -0x1

    add-int/2addr v5, v7

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3625
    const/16 v5, 0x1a

    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3630
    :goto_e
    const/4 v5, 0x4

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3636
    return-wide v2

    .line 3627
    :cond_17
    const/4 v5, -0x1

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3628
    const-wide/16 v7, 0x0

    return-wide v7

    .line 3632
    .end local v6    # "offset":I
    .restart local v12    # "offset":I
    :cond_18
    const/4 v5, -0x1

    const-wide/16 v7, 0x0

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3633
    return-wide v7

    .line 3561
    .end local v2    # "value":D
    .end local v4    # "chLocal":C
    .end local v12    # "offset":I
    .end local v20    # "quote":Z
    .end local v24    # "negative":Z
    .restart local v3    # "chLocal":C
    .restart local v9    # "quote":Z
    .local v11, "negative":Z
    .local v13, "offset":I
    :cond_19
    move/from16 v20, v9

    move/from16 v24, v11

    .end local v9    # "quote":Z
    .end local v11    # "negative":Z
    .restart local v20    # "quote":Z
    .restart local v24    # "negative":Z
    const/16 v2, 0x6e

    if-ne v3, v2, :cond_1e

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v13

    .line 3562
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v4, 0x75

    if-ne v2, v4, :cond_1e

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v13

    const/4 v4, 0x1

    add-int/2addr v2, v4

    .line 3563
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v4, 0x6c

    if-ne v2, v4, :cond_1e

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v13

    add-int/lit8 v2, v2, 0x2

    .line 3564
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v4, 0x6c

    if-ne v2, v4, :cond_1e

    .line 3565
    const/4 v2, 0x5

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3566
    const-wide/16 v4, 0x0

    .line 3567
    .local v4, "value":D
    const/4 v6, 0x3

    add-int/2addr v13, v6

    .line 3568
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v13, 0x1

    .restart local v7    # "offset":I
    add-int/2addr v6, v13

    .end local v13    # "offset":I
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3570
    if-eqz v20, :cond_1a

    const/16 v6, 0x22

    if-ne v3, v6, :cond_1a

    .line 3571
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v7, 0x1

    .local v8, "offset":I
    add-int/2addr v6, v7

    .end local v7    # "offset":I
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3575
    move v7, v8

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    :cond_1a
    :goto_f
    const/16 v6, 0x2c

    if-ne v3, v6, :cond_1b

    .line 3576
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v7

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3577
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3578
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3579
    const/16 v8, 0x10

    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3580
    return-wide v4

    .line 3581
    :cond_1b
    const/16 v8, 0x10

    const/16 v9, 0x7d

    if-ne v3, v9, :cond_1c

    .line 3582
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v7

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3583
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3584
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3585
    const/16 v2, 0xd

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3586
    return-wide v4

    .line 3587
    :cond_1c
    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 3588
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v7, 0x1

    .local v11, "offset":I
    add-int/2addr v10, v7

    .end local v7    # "offset":I
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3589
    nop

    .line 3575
    move v7, v11

    goto :goto_f

    .line 3593
    .end local v11    # "offset":I
    .restart local v7    # "offset":I
    :cond_1d
    const/4 v2, -0x1

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3594
    const-wide/16 v8, 0x0

    return-wide v8

    .line 3596
    .end local v4    # "value":D
    .end local v7    # "offset":I
    .restart local v13    # "offset":I
    :cond_1e
    const/4 v2, -0x1

    const-wide/16 v8, 0x0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3597
    return-wide v8
.end method

.method public final scanFieldFloat([C)F
    .locals 24
    .param p1, "fieldName"    # [C

    move-object/from16 v0, p0

    .line 2509
    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2511
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 2512
    const/4 v2, -0x2

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2513
    return v4

    .line 2516
    :cond_0
    array-length v3, v1

    .line 2517
    .local v3, "offset":I
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v3, 0x1

    .local v6, "offset":I
    add-int/2addr v5, v3

    .end local v3    # "offset":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2519
    .local v3, "chLocal":C
    const/16 v5, 0x22

    if-ne v3, v5, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    move v8, v2

    .line 2520
    .local v8, "quote":Z
    :goto_0
    if-eqz v8, :cond_2

    .line 2521
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v6, 0x1

    .local v10, "offset":I
    add-int/2addr v9, v6

    .end local v6    # "offset":I
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2524
    move v6, v10

    .end local v10    # "offset":I
    .restart local v6    # "offset":I
    :cond_2
    const/16 v9, 0x2d

    if-ne v3, v9, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    move v10, v2

    .line 2525
    .local v10, "negative":Z
    :goto_1
    if-eqz v10, :cond_4

    .line 2526
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v6, 0x1

    .local v12, "offset":I
    add-int/2addr v11, v6

    .end local v6    # "offset":I
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    goto :goto_2

    .line 2530
    .end local v12    # "offset":I
    .restart local v6    # "offset":I
    :cond_4
    move v12, v6

    .end local v6    # "offset":I
    .restart local v12    # "offset":I
    :goto_2
    const/4 v15, -0x1

    const/16 v2, 0x30

    if-lt v3, v2, :cond_19

    const/16 v11, 0x39

    if-gt v3, v11, :cond_19

    .line 2531
    add-int/lit8 v13, v3, -0x30

    int-to-long v6, v13

    .line 2533
    .local v6, "intVal":J
    :goto_3
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v12, 0x1

    .local v17, "offset":I
    add-int/2addr v13, v12

    .end local v12    # "offset":I
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2534
    const-wide/16 v12, 0xa

    if-lt v3, v2, :cond_5

    if-gt v3, v11, :cond_5

    .line 2535
    mul-long/2addr v12, v6

    add-int/lit8 v14, v3, -0x30

    move/from16 v18, v10

    int-to-long v9, v14

    .end local v10    # "negative":Z
    .local v18, "negative":Z
    add-long v6, v12, v9

    .line 2536
    nop

    .line 2531
    move/from16 v12, v17

    move/from16 v10, v18

    const/16 v9, 0x2d

    goto :goto_3

    .line 2542
    .end local v18    # "negative":Z
    .restart local v10    # "negative":Z
    :cond_5
    move/from16 v18, v10

    .end local v10    # "negative":Z
    .restart local v18    # "negative":Z
    const-wide/16 v9, 0x1

    .line 2543
    .local v9, "power":J
    const/16 v14, 0x2e

    if-ne v3, v14, :cond_6

    const/4 v14, 0x1

    goto :goto_4

    :cond_6
    const/4 v14, 0x0

    .line 2544
    .local v14, "small":Z
    :goto_4
    if-eqz v14, :cond_9

    .line 2545
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v19, v17, 0x1

    .local v19, "offset":I
    add-int v5, v5, v17

    .end local v17    # "offset":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2546
    if-lt v3, v2, :cond_8

    if-gt v3, v11, :cond_8

    .line 2547
    mul-long v20, v6, v12

    add-int/lit8 v5, v3, -0x30

    int-to-long v4, v5

    add-long v20, v20, v4

    .line 2548
    .end local v6    # "intVal":J
    .local v20, "intVal":J
    const-wide/16 v4, 0xa

    .line 2550
    .end local v9    # "power":J
    .local v4, "power":J
    move-wide v9, v4

    move-wide/from16 v6, v20

    .end local v4    # "power":J
    .end local v20    # "intVal":J
    .restart local v6    # "intVal":J
    .restart local v9    # "power":J
    :goto_5
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v19, 0x1

    .local v5, "offset":I
    add-int v4, v4, v19

    .end local v19    # "offset":I
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2551
    if-lt v3, v2, :cond_7

    if-gt v3, v11, :cond_7

    .line 2552
    mul-long v19, v6, v12

    add-int/lit8 v4, v3, -0x30

    move/from16 v22, v3

    int-to-long v2, v4

    .end local v3    # "chLocal":C
    .local v22, "chLocal":C
    add-long v6, v19, v2

    .line 2553
    mul-long/2addr v9, v12

    .line 2554
    nop

    .line 2550
    move/from16 v19, v5

    move/from16 v3, v22

    const/16 v2, 0x30

    goto :goto_5

    .line 2565
    .end local v22    # "chLocal":C
    .restart local v3    # "chLocal":C
    :cond_7
    move/from16 v22, v3

    .end local v3    # "chLocal":C
    .restart local v22    # "chLocal":C
    move/from16 v17, v5

    move/from16 v3, v22

    goto :goto_6

    .line 2560
    .end local v5    # "offset":I
    .end local v22    # "chLocal":C
    .restart local v3    # "chLocal":C
    .restart local v19    # "offset":I
    :cond_8
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2561
    const/4 v2, 0x0

    return v2

    .line 2565
    .end local v19    # "offset":I
    .restart local v17    # "offset":I
    :cond_9
    :goto_6
    const/16 v2, 0x65

    if-eq v3, v2, :cond_b

    const/16 v2, 0x45

    if-ne v3, v2, :cond_a

    goto :goto_7

    :cond_a
    const/16 v16, 0x0

    goto :goto_8

    :cond_b
    :goto_7
    const/16 v16, 0x1

    :goto_8
    move/from16 v2, v16

    .line 2566
    .local v2, "exp":Z
    if-eqz v2, :cond_e

    .line 2567
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v17, 0x1

    .restart local v5    # "offset":I
    add-int v4, v4, v17

    .end local v17    # "offset":I
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2568
    const/16 v4, 0x2b

    if-eq v3, v4, :cond_d

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_c

    goto :goto_9

    .line 2572
    :cond_c
    move/from16 v17, v5

    goto :goto_b

    .line 2569
    :cond_d
    :goto_9
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v5, 0x1

    .restart local v12    # "offset":I
    add-int/2addr v4, v5

    .end local v5    # "offset":I
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2572
    .end local v12    # "offset":I
    .restart local v17    # "offset":I
    :goto_a
    move/from16 v17, v12

    :goto_b
    const/16 v4, 0x30

    if-lt v3, v4, :cond_e

    if-gt v3, v11, :cond_e

    .line 2573
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v17, 0x1

    .restart local v12    # "offset":I
    add-int v5, v5, v17

    .end local v17    # "offset":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    goto :goto_a

    .line 2581
    .end local v12    # "offset":I
    .restart local v17    # "offset":I
    :cond_e
    if-eqz v8, :cond_10

    .line 2582
    const/16 v4, 0x22

    if-eq v3, v4, :cond_f

    .line 2583
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2584
    const/4 v4, 0x0

    return v4

    .line 2586
    :cond_f
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v17, 0x1

    .restart local v5    # "offset":I
    add-int v4, v4, v17

    .end local v17    # "offset":I
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2588
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v11, v1

    add-int/2addr v4, v11

    const/4 v11, 0x1

    add-int/2addr v4, v11

    .line 2589
    .local v4, "start":I
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v11, v5

    sub-int/2addr v11, v4

    add-int/lit8 v11, v11, -0x2

    .line 2592
    .local v11, "count":I
    move/from16 v17, v5

    goto :goto_c

    .line 2591
    .end local v4    # "start":I
    .end local v5    # "offset":I
    .end local v11    # "count":I
    .restart local v17    # "offset":I
    :cond_10
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v5, v1

    add-int/2addr v4, v5

    .line 2592
    .restart local v4    # "start":I
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v5, v5, v17

    sub-int/2addr v5, v4

    const/4 v11, 0x1

    add-int/lit8 v11, v5, -0x1

    .restart local v11    # "count":I
    :goto_c
    move v5, v11

    .line 2595
    .end local v11    # "count":I
    .local v5, "count":I
    if-nez v2, :cond_11

    const/16 v11, 0x11

    if-ge v5, v11, :cond_11

    .line 2596
    long-to-double v11, v6

    move/from16 v23, v2

    long-to-double v1, v9

    .end local v2    # "exp":Z
    .local v23, "exp":Z
    div-double/2addr v11, v1

    double-to-float v1, v11

    .line 2597
    .local v1, "value":F
    if-eqz v18, :cond_12

    .line 2598
    neg-float v1, v1

    goto :goto_d

    .line 2601
    .end local v1    # "value":F
    .end local v23    # "exp":Z
    .restart local v2    # "exp":Z
    :cond_11
    move/from16 v23, v2

    .end local v2    # "exp":Z
    .restart local v23    # "exp":Z
    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 2602
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 2604
    .end local v4    # "start":I
    .end local v5    # "count":I
    .end local v6    # "intVal":J
    .end local v9    # "power":J
    .end local v14    # "small":Z
    .end local v23    # "exp":Z
    .local v1, "value":F
    :cond_12
    :goto_d
    nop

    .line 2637
    nop

    .line 2640
    const/16 v2, 0x2c

    if-ne v3, v2, :cond_13

    .line 2641
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v2, v2, v17

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2642
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2643
    const/4 v2, 0x3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2644
    const/16 v2, 0x10

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2645
    return v1

    .line 2648
    :cond_13
    const/16 v2, 0x7d

    if-ne v3, v2, :cond_18

    .line 2649
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v17, 0x1

    .local v4, "offset":I
    add-int v2, v2, v17

    .end local v17    # "offset":I
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2650
    .end local v3    # "chLocal":C
    .local v2, "chLocal":C
    const/16 v3, 0x2c

    if-ne v2, v3, :cond_14

    .line 2651
    const/16 v3, 0x10

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2652
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2653
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_e

    .line 2654
    :cond_14
    const/16 v3, 0x5d

    if-ne v2, v3, :cond_15

    .line 2655
    const/16 v3, 0xf

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2656
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2657
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_e

    .line 2658
    :cond_15
    const/16 v3, 0x7d

    if-ne v2, v3, :cond_16

    .line 2659
    const/16 v3, 0xd

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2660
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2661
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_e

    .line 2662
    :cond_16
    const/16 v3, 0x1a

    if-ne v2, v3, :cond_17

    .line 2663
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v4, -0x1

    add-int/2addr v3, v5

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2664
    const/16 v3, 0x14

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2665
    const/16 v3, 0x1a

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2670
    :goto_e
    const/4 v3, 0x4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2676
    return v1

    .line 2667
    :cond_17
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2668
    const/4 v5, 0x0

    return v5

    .line 2672
    .end local v2    # "chLocal":C
    .end local v4    # "offset":I
    .restart local v3    # "chLocal":C
    .restart local v17    # "offset":I
    :cond_18
    const/4 v5, 0x0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2673
    return v5

    .line 2604
    .end local v1    # "value":F
    .end local v17    # "offset":I
    .end local v18    # "negative":Z
    .restart local v10    # "negative":Z
    .restart local v12    # "offset":I
    :cond_19
    move/from16 v18, v10

    .end local v10    # "negative":Z
    .restart local v18    # "negative":Z
    const/16 v1, 0x6e

    if-ne v3, v1, :cond_1e

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v12

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_1e

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v12

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1e

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v12

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1e

    .line 2605
    const/4 v1, 0x5

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2606
    const/4 v2, 0x0

    .line 2607
    .local v2, "value":F
    const/4 v4, 0x3

    add-int/2addr v12, v4

    .line 2608
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v12, 0x1

    .local v5, "offset":I
    add-int/2addr v4, v12

    .end local v12    # "offset":I
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2610
    if-eqz v8, :cond_1a

    const/16 v4, 0x22

    if-ne v3, v4, :cond_1a

    .line 2611
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    .local v6, "offset":I
    add-int/2addr v4, v5

    .end local v5    # "offset":I
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2615
    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    :cond_1a
    :goto_f
    const/16 v4, 0x2c

    if-ne v3, v4, :cond_1b

    .line 2616
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v5

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2617
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2618
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2619
    const/16 v6, 0x10

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2620
    return v2

    .line 2621
    :cond_1b
    const/16 v6, 0x10

    const/16 v7, 0x7d

    if-ne v3, v7, :cond_1c

    .line 2622
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v5

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2623
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2624
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2625
    const/16 v1, 0xd

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2626
    return v2

    .line 2627
    :cond_1c
    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 2628
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v5, 0x1

    .local v10, "offset":I
    add-int/2addr v9, v5

    .end local v5    # "offset":I
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2629
    nop

    .line 2615
    move v5, v10

    goto :goto_f

    .line 2633
    .end local v10    # "offset":I
    .restart local v5    # "offset":I
    :cond_1d
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2634
    const/4 v1, 0x0

    return v1

    .line 2636
    .end local v2    # "value":F
    .end local v5    # "offset":I
    .restart local v12    # "offset":I
    :cond_1e
    const/4 v1, 0x0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2637
    return v1
.end method

.method public final scanFieldFloatArray([C)[F
    .locals 20
    .param p1, "fieldName"    # [C

    move-object/from16 v0, p0

    .line 3122
    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3124
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v2

    const/4 v3, -0x2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 3125
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3126
    return-object v4

    .line 3129
    :cond_0
    move-object/from16 v2, p1

    array-length v5, v2

    .line 3130
    .local v5, "offset":I
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v5, 0x1

    .local v7, "offset":I
    add-int/2addr v6, v5

    .end local v5    # "offset":I
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 3131
    .local v5, "chLocal":C
    const/16 v6, 0x5b

    if-eq v5, v6, :cond_1

    .line 3132
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3133
    return-object v4

    .line 3135
    :cond_1
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v7, 0x1

    .local v6, "offset":I
    add-int/2addr v3, v7

    .end local v7    # "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3137
    .end local v5    # "chLocal":C
    .local v3, "chLocal":C
    const/16 v5, 0x10

    new-array v7, v5, [F

    .line 3138
    .local v7, "array":[F
    move-object v8, v7

    move v7, v3

    move v3, v1

    .line 3141
    .local v3, "arrayIndex":I
    .local v7, "chLocal":C
    .local v8, "array":[F
    :goto_0
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v9, v6

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    .line 3143
    .local v9, "start":I
    const/16 v11, 0x2d

    if-ne v7, v11, :cond_2

    move v12, v10

    goto :goto_1

    :cond_2
    move v12, v1

    .line 3144
    .local v12, "negative":Z
    :goto_1
    if-eqz v12, :cond_3

    .line 3145
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v14, v6, 0x1

    .local v14, "offset":I
    add-int/2addr v13, v6

    .end local v6    # "offset":I
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    goto :goto_2

    .line 3148
    .end local v14    # "offset":I
    .restart local v6    # "offset":I
    :cond_3
    move v14, v6

    .end local v6    # "offset":I
    .restart local v14    # "offset":I
    :goto_2
    const/4 v6, -0x1

    const/16 v13, 0x30

    if-lt v7, v13, :cond_1a

    const/16 v15, 0x39

    if-gt v7, v15, :cond_1a

    .line 3149
    add-int/lit8 v16, v7, -0x30

    .line 3151
    .local v16, "intVal":I
    :goto_3
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v14, 0x1

    .local v17, "offset":I
    add-int/2addr v5, v14

    .end local v14    # "offset":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    .line 3152
    if-lt v7, v13, :cond_4

    if-gt v7, v15, :cond_4

    .line 3153
    mul-int/lit8 v5, v16, 0xa

    add-int/lit8 v14, v7, -0x30

    add-int v16, v5, v14

    .line 3154
    nop

    .line 3149
    move/from16 v14, v17

    const/16 v5, 0x10

    goto :goto_3

    .line 3160
    :cond_4
    const/4 v5, 0x1

    .line 3161
    .local v5, "power":I
    const/16 v14, 0x2e

    if-ne v7, v14, :cond_5

    move v14, v10

    goto :goto_4

    :cond_5
    move v14, v1

    .line 3162
    .local v14, "small":Z
    :goto_4
    if-eqz v14, :cond_7

    .line 3163
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v18, v17, 0x1

    .local v18, "offset":I
    add-int v1, v1, v17

    .end local v17    # "offset":I
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 3164
    .end local v7    # "chLocal":C
    .local v1, "chLocal":C
    const/16 v5, 0xa

    .line 3165
    if-lt v1, v13, :cond_6

    if-gt v1, v15, :cond_6

    .line 3166
    mul-int/lit8 v7, v16, 0xa

    add-int/lit8 v17, v1, -0x30

    add-int v7, v7, v17

    .line 3168
    .end local v16    # "intVal":I
    .local v7, "intVal":I
    move/from16 v16, v7

    .end local v7    # "intVal":I
    .restart local v16    # "intVal":I
    :goto_5
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v18, 0x1

    .restart local v17    # "offset":I
    add-int v7, v7, v18

    .end local v18    # "offset":I
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 3170
    if-lt v1, v13, :cond_8

    if-gt v1, v15, :cond_8

    .line 3171
    mul-int/lit8 v7, v16, 0xa

    add-int/lit8 v18, v1, -0x30

    add-int v16, v7, v18

    .line 3172
    mul-int/lit8 v5, v5, 0xa

    .line 3173
    nop

    .line 3168
    move/from16 v18, v17

    goto :goto_5

    .line 3179
    .end local v17    # "offset":I
    .restart local v18    # "offset":I
    :cond_6
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3180
    return-object v4

    .line 3184
    .end local v1    # "chLocal":C
    .end local v18    # "offset":I
    .local v7, "chLocal":C
    .restart local v17    # "offset":I
    :cond_7
    move v1, v7

    .end local v16    # "intVal":I
    .restart local v1    # "chLocal":C
    .local v5, "intVal":I
    .local v7, "power":I
    :cond_8
    move v7, v5

    move/from16 v5, v16

    const/16 v4, 0x65

    if-eq v1, v4, :cond_a

    const/16 v4, 0x45

    if-ne v1, v4, :cond_9

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    move v4, v10

    .line 3185
    .local v4, "exp":Z
    :goto_7
    if-eqz v4, :cond_d

    .line 3186
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v16, v17, 0x1

    .local v16, "offset":I
    add-int v6, v6, v17

    .end local v17    # "offset":I
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 3187
    const/16 v6, 0x2b

    if-eq v1, v6, :cond_c

    if-ne v1, v11, :cond_b

    goto :goto_8

    .line 3191
    :cond_b
    move/from16 v17, v16

    goto :goto_a

    .line 3188
    :cond_c
    :goto_8
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v16, 0x1

    .local v11, "offset":I
    add-int v6, v6, v16

    .end local v16    # "offset":I
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 3191
    .end local v11    # "offset":I
    .restart local v17    # "offset":I
    :goto_9
    move/from16 v17, v11

    :goto_a
    if-lt v1, v13, :cond_d

    if-gt v1, v15, :cond_d

    .line 3192
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v17, 0x1

    .restart local v11    # "offset":I
    add-int v6, v6, v17

    .end local v17    # "offset":I
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    goto :goto_9

    .line 3199
    .end local v11    # "offset":I
    .restart local v17    # "offset":I
    :cond_d
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v6, v6, v17

    sub-int/2addr v6, v9

    sub-int/2addr v6, v10

    .line 3202
    .local v6, "count":I
    if-nez v4, :cond_e

    const/16 v10, 0xa

    if-ge v6, v10, :cond_e

    .line 3203
    int-to-float v10, v5

    int-to-float v11, v7

    div-float/2addr v10, v11

    .line 3204
    .local v10, "value":F
    if-eqz v12, :cond_f

    .line 3205
    neg-float v10, v10

    goto :goto_b

    .line 3208
    .end local v10    # "value":F
    :cond_e
    invoke-virtual {v0, v9, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v10

    .line 3209
    .local v10, "text":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 3212
    .local v10, "value":F
    :cond_f
    :goto_b
    array-length v11, v8

    const/4 v13, 0x3

    if-lt v3, v11, :cond_10

    .line 3213
    array-length v11, v8

    mul-int/2addr v11, v13

    div-int/lit8 v11, v11, 0x2

    new-array v11, v11, [F

    .line 3214
    .local v11, "tmp":[F
    const/4 v15, 0x0

    invoke-static {v8, v15, v11, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3215
    move-object v8, v11

    .line 3217
    .end local v11    # "tmp":[F
    :cond_10
    add-int/lit8 v11, v3, 0x1

    .local v11, "arrayIndex":I
    aput v10, v8, v3

    .line 3219
    .end local v3    # "arrayIndex":I
    const/16 v3, 0x2c

    if-ne v1, v3, :cond_11

    .line 3220
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v13, v17, 0x1

    .local v13, "offset":I
    add-int v3, v3, v17

    .end local v17    # "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 3225
    move v7, v1

    move v6, v13

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v13, 0x0

    goto/16 :goto_d

    .line 3221
    .end local v13    # "offset":I
    .restart local v17    # "offset":I
    :cond_11
    const/16 v15, 0x5d

    if-ne v1, v15, :cond_19

    .line 3222
    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v16, v17, 0x1

    .restart local v16    # "offset":I
    add-int v15, v15, v17

    .end local v17    # "offset":I
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 3223
    nop

    .line 3232
    .end local v4    # "exp":Z
    .end local v5    # "intVal":I
    .end local v6    # "count":I
    .end local v7    # "power":I
    .end local v9    # "start":I
    .end local v10    # "value":F
    .end local v12    # "negative":Z
    .end local v14    # "small":Z
    array-length v4, v8

    if-eq v11, v4, :cond_12

    .line 3233
    new-array v4, v11, [F

    .line 3234
    .local v4, "tmp":[F
    const/4 v5, 0x0

    invoke-static {v8, v5, v4, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3235
    move-object v8, v4

    .line 3238
    .end local v4    # "tmp":[F
    :cond_12
    if-ne v1, v3, :cond_13

    .line 3239
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v16, -0x1

    add-int/2addr v3, v4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3240
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 3241
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3242
    const/16 v3, 0x10

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3243
    return-object v8

    .line 3246
    :cond_13
    const/16 v4, 0x7d

    if-ne v1, v4, :cond_18

    .line 3247
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v16, 0x1

    .local v6, "offset":I
    add-int v5, v5, v16

    .end local v16    # "offset":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 3248
    if-ne v1, v3, :cond_14

    .line 3249
    const/16 v4, 0x10

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3250
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v6, -0x1

    add-int/2addr v3, v4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3251
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_c

    .line 3252
    :cond_14
    const/16 v3, 0x5d

    if-ne v1, v3, :cond_15

    .line 3253
    const/16 v3, 0xf

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3254
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v6, -0x1

    add-int/2addr v3, v4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3255
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_c

    .line 3256
    :cond_15
    if-ne v1, v4, :cond_16

    .line 3257
    const/16 v3, 0xd

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3258
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v6, -0x1

    add-int/2addr v3, v4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3259
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_c

    .line 3260
    :cond_16
    const/16 v3, 0x1a

    if-ne v1, v3, :cond_17

    .line 3261
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, -0x1

    add-int/2addr v4, v5

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3262
    const/16 v4, 0x14

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3263
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3268
    :goto_c
    const/4 v3, 0x4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3274
    return-object v8

    .line 3265
    :cond_17
    const/4 v10, -0x1

    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3266
    const/4 v13, 0x0

    return-object v13

    .line 3270
    .end local v6    # "offset":I
    .restart local v16    # "offset":I
    :cond_18
    const/4 v10, -0x1

    const/4 v13, 0x0

    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3271
    return-object v13

    .line 3225
    .end local v16    # "offset":I
    .restart local v9    # "start":I
    .restart local v12    # "negative":Z
    .restart local v17    # "offset":I
    :cond_19
    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v13, 0x0

    move v7, v1

    move/from16 v6, v17

    .line 3229
    .end local v1    # "chLocal":C
    .end local v9    # "start":I
    .end local v12    # "negative":Z
    .end local v17    # "offset":I
    .restart local v6    # "offset":I
    .local v7, "chLocal":C
    :goto_d
    nop

    .line 3138
    move v1, v5

    move v3, v11

    move v5, v4

    move-object v4, v13

    goto/16 :goto_0

    .line 3226
    .end local v6    # "offset":I
    .end local v11    # "arrayIndex":I
    .restart local v3    # "arrayIndex":I
    .restart local v9    # "start":I
    .restart local v12    # "negative":Z
    .local v14, "offset":I
    :cond_1a
    move-object v13, v4

    move v10, v6

    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3227
    return-object v13
.end method

.method public final scanFieldFloatArray2([C)[[F
    .locals 22
    .param p1, "fieldName"    # [C

    move-object/from16 v0, p0

    .line 3278
    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3280
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v2

    const/4 v3, -0x2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 3281
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3282
    check-cast v4, [[F

    return-object v4

    .line 3285
    :cond_0
    move-object/from16 v2, p1

    array-length v5, v2

    .line 3286
    .local v5, "offset":I
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v5, 0x1

    .local v7, "offset":I
    add-int/2addr v6, v5

    .end local v5    # "offset":I
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 3288
    .local v5, "chLocal":C
    const/16 v6, 0x5b

    if-eq v5, v6, :cond_1

    .line 3289
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3290
    check-cast v4, [[F

    return-object v4

    .line 3292
    :cond_1
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v7, 0x1

    .local v8, "offset":I
    add-int/2addr v3, v7

    .end local v7    # "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3294
    .end local v5    # "chLocal":C
    .local v3, "chLocal":C
    const/16 v5, 0x10

    new-array v7, v5, [[F

    .line 3295
    .local v7, "arrayarray":[[F
    move-object v9, v7

    move v7, v3

    move v3, v1

    .line 3298
    .local v3, "arrayarrayIndex":I
    .local v7, "chLocal":C
    .local v9, "arrayarray":[[F
    :goto_0
    const/4 v11, 0x3

    const/4 v13, -0x1

    if-ne v7, v6, :cond_16

    .line 3299
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v15, v8, 0x1

    .local v15, "offset":I
    add-int/2addr v14, v8

    .end local v8    # "offset":I
    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    .line 3301
    new-array v8, v5, [F

    .line 3302
    .local v8, "array":[F
    move-object v14, v8

    move v8, v7

    move v7, v1

    .line 3305
    .local v7, "arrayIndex":I
    .local v8, "chLocal":C
    .local v14, "array":[F
    :goto_1
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v15

    const/16 v16, 0x1

    add-int/lit8 v6, v6, -0x1

    .line 3306
    .local v6, "start":I
    const/16 v5, 0x2d

    if-ne v8, v5, :cond_2

    move/from16 v17, v16

    goto :goto_2

    :cond_2
    move/from16 v17, v1

    .line 3307
    .local v17, "negative":Z
    :goto_2
    if-eqz v17, :cond_3

    .line 3308
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v18, v15, 0x1

    .local v18, "offset":I
    add-int/2addr v10, v15

    .end local v15    # "offset":I
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    .line 3311
    move/from16 v15, v18

    .end local v18    # "offset":I
    .restart local v15    # "offset":I
    :cond_3
    const/16 v10, 0x30

    if-lt v8, v10, :cond_15

    const/16 v12, 0x39

    if-gt v8, v12, :cond_15

    .line 3312
    add-int/lit8 v18, v8, -0x30

    .line 3314
    .local v18, "intVal":I
    :goto_3
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v19, v15, 0x1

    .local v19, "offset":I
    add-int/2addr v1, v15

    .end local v15    # "offset":I
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    .line 3316
    if-lt v8, v10, :cond_4

    if-gt v8, v12, :cond_4

    .line 3317
    mul-int/lit8 v1, v18, 0xa

    add-int/lit8 v15, v8, -0x30

    add-int v18, v1, v15

    .line 3318
    nop

    .line 3312
    move/from16 v15, v19

    const/4 v1, 0x0

    goto :goto_3

    .line 3324
    :cond_4
    const/4 v1, 0x1

    .line 3325
    .local v1, "power":I
    const/16 v15, 0x2e

    if-ne v8, v15, :cond_6

    .line 3326
    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v20, v19, 0x1

    .local v20, "offset":I
    add-int v15, v15, v19

    .end local v19    # "offset":I
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    .line 3328
    if-lt v8, v10, :cond_5

    if-gt v8, v12, :cond_5

    .line 3329
    mul-int/lit8 v15, v18, 0xa

    add-int/lit8 v19, v8, -0x30

    add-int v15, v15, v19

    .line 3330
    .end local v18    # "intVal":I
    .local v15, "intVal":I
    const/16 v1, 0xa

    .line 3332
    move/from16 v18, v15

    .end local v15    # "intVal":I
    .restart local v18    # "intVal":I
    :goto_4
    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v19, v20, 0x1

    .restart local v19    # "offset":I
    add-int v15, v15, v20

    .end local v20    # "offset":I
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    .line 3334
    if-lt v8, v10, :cond_6

    if-gt v8, v12, :cond_6

    .line 3335
    mul-int/lit8 v15, v18, 0xa

    add-int/lit8 v20, v8, -0x30

    add-int v18, v15, v20

    .line 3336
    mul-int/lit8 v1, v1, 0xa

    .line 3337
    nop

    .line 3332
    move/from16 v20, v19

    goto :goto_4

    .line 3343
    .end local v19    # "offset":I
    .restart local v20    # "offset":I
    :cond_5
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3344
    check-cast v4, [[F

    return-object v4

    .line 3348
    .end local v20    # "offset":I
    .restart local v19    # "offset":I
    :cond_6
    move v15, v1

    move/from16 v1, v18

    .end local v18    # "intVal":I
    .local v1, "intVal":I
    .local v15, "power":I
    const/16 v4, 0x65

    if-eq v8, v4, :cond_8

    const/16 v4, 0x45

    if-ne v8, v4, :cond_7

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    move/from16 v4, v16

    .line 3349
    .local v4, "exp":Z
    :goto_6
    if-eqz v4, :cond_b

    .line 3350
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v18, v19, 0x1

    .local v18, "offset":I
    add-int v13, v13, v19

    .end local v19    # "offset":I
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    .line 3351
    const/16 v13, 0x2b

    if-eq v8, v13, :cond_a

    if-ne v8, v5, :cond_9

    goto :goto_7

    .line 3355
    :cond_9
    move/from16 v19, v18

    goto :goto_9

    .line 3352
    :cond_a
    :goto_7
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v13, v18, 0x1

    .local v13, "offset":I
    add-int v5, v5, v18

    .end local v18    # "offset":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 3355
    .end local v8    # "chLocal":C
    .restart local v5    # "chLocal":C
    move v8, v5

    .end local v5    # "chLocal":C
    .end local v13    # "offset":I
    .restart local v8    # "chLocal":C
    .restart local v19    # "offset":I
    :goto_8
    move/from16 v19, v13

    :goto_9
    if-lt v8, v10, :cond_b

    if-gt v8, v12, :cond_b

    .line 3356
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v13, v19, 0x1

    .restart local v13    # "offset":I
    add-int v5, v5, v19

    .end local v19    # "offset":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    goto :goto_8

    .line 3363
    .end local v13    # "offset":I
    .restart local v19    # "offset":I
    :cond_b
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v5, v5, v19

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    .line 3365
    .local v5, "count":I
    if-nez v4, :cond_c

    const/16 v10, 0xa

    if-ge v5, v10, :cond_c

    .line 3366
    int-to-float v10, v1

    int-to-float v12, v15

    div-float/2addr v10, v12

    .line 3367
    .local v10, "value":F
    if-eqz v17, :cond_d

    .line 3368
    neg-float v10, v10

    goto :goto_a

    .line 3371
    .end local v10    # "value":F
    :cond_c
    invoke-virtual {v0, v6, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v10

    .line 3372
    .local v10, "text":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 3375
    .local v10, "value":F
    :cond_d
    :goto_a
    array-length v12, v14

    if-lt v7, v12, :cond_e

    .line 3376
    array-length v12, v14

    mul-int/2addr v12, v11

    div-int/lit8 v12, v12, 0x2

    new-array v12, v12, [F

    .line 3377
    .local v12, "tmp":[F
    const/4 v13, 0x0

    invoke-static {v14, v13, v12, v13, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3378
    nop

    .line 3380
    .end local v14    # "array":[F
    .local v12, "array":[F
    move-object v14, v12

    .end local v12    # "array":[F
    .restart local v14    # "array":[F
    :cond_e
    add-int/lit8 v12, v7, 0x1

    .local v12, "arrayIndex":I
    aput v10, v14, v7

    .line 3382
    .end local v7    # "arrayIndex":I
    const/16 v7, 0x2c

    if-ne v8, v7, :cond_f

    .line 3383
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v13, v19, 0x1

    .restart local v13    # "offset":I
    add-int v7, v7, v19

    .end local v19    # "offset":I
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    .line 3388
    .end local v8    # "chLocal":C
    .local v7, "chLocal":C
    move v8, v7

    move v15, v13

    goto :goto_c

    .line 3384
    .end local v7    # "chLocal":C
    .end local v13    # "offset":I
    .restart local v8    # "chLocal":C
    .restart local v19    # "offset":I
    :cond_f
    const/16 v7, 0x5d

    if-ne v8, v7, :cond_14

    .line 3385
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v13, v19, 0x1

    .restart local v13    # "offset":I
    add-int v7, v7, v19

    .end local v19    # "offset":I
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    .line 3386
    .end local v8    # "chLocal":C
    .restart local v7    # "chLocal":C
    nop

    .line 3395
    .end local v1    # "intVal":I
    .end local v4    # "exp":Z
    .end local v5    # "count":I
    .end local v6    # "start":I
    .end local v10    # "value":F
    .end local v15    # "power":I
    .end local v17    # "negative":Z
    array-length v1, v14

    if-eq v12, v1, :cond_10

    .line 3396
    new-array v1, v12, [F

    .line 3397
    .local v1, "tmp":[F
    const/4 v4, 0x0

    invoke-static {v14, v4, v1, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3398
    move-object v14, v1

    .line 3401
    .end local v1    # "tmp":[F
    :cond_10
    array-length v1, v9

    if-lt v3, v1, :cond_11

    .line 3402
    array-length v1, v9

    mul-int/2addr v1, v11

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [[F

    .line 3403
    .local v1, "tmp":[[F
    const/4 v4, 0x0

    invoke-static {v14, v4, v1, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3404
    nop

    .line 3406
    .end local v9    # "arrayarray":[[F
    .local v1, "arrayarray":[[F
    move-object v9, v1

    .end local v1    # "arrayarray":[[F
    .restart local v9    # "arrayarray":[[F
    :cond_11
    add-int/lit8 v1, v3, 0x1

    .local v1, "arrayarrayIndex":I
    aput-object v14, v9, v3

    .line 3408
    .end local v3    # "arrayarrayIndex":I
    const/16 v3, 0x2c

    if-ne v7, v3, :cond_12

    .line 3409
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v13, 0x1

    .local v4, "offset":I
    add-int/2addr v3, v13

    .end local v13    # "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3414
    .end local v7    # "chLocal":C
    .local v3, "chLocal":C
    move v7, v3

    move v8, v4

    goto :goto_b

    .line 3410
    .end local v3    # "chLocal":C
    .end local v4    # "offset":I
    .restart local v7    # "chLocal":C
    .restart local v13    # "offset":I
    :cond_12
    const/16 v3, 0x5d

    if-ne v7, v3, :cond_13

    .line 3411
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v13, 0x1

    .local v8, "offset":I
    add-int/2addr v3, v13

    .end local v13    # "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    .line 3412
    goto :goto_d

    .line 3414
    .end local v8    # "offset":I
    .end local v12    # "arrayIndex":I
    .end local v14    # "array":[F
    .restart local v13    # "offset":I
    :cond_13
    move v8, v13

    .line 3295
    .end local v13    # "offset":I
    .restart local v8    # "offset":I
    :goto_b
    move v3, v1

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/16 v6, 0x5b

    goto/16 :goto_0

    .line 3388
    .end local v1    # "arrayarrayIndex":I
    .end local v7    # "chLocal":C
    .local v3, "arrayarrayIndex":I
    .restart local v6    # "start":I
    .local v8, "chLocal":C
    .restart local v12    # "arrayIndex":I
    .restart local v14    # "array":[F
    .restart local v17    # "negative":Z
    .restart local v19    # "offset":I
    :cond_14
    move/from16 v15, v19

    .line 3392
    .end local v6    # "start":I
    .end local v17    # "negative":Z
    .end local v19    # "offset":I
    .local v15, "offset":I
    :goto_c
    nop

    .line 3302
    move v7, v12

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/16 v6, 0x5b

    const/4 v13, -0x1

    goto/16 :goto_1

    .line 3389
    .end local v12    # "arrayIndex":I
    .restart local v6    # "start":I
    .local v7, "arrayIndex":I
    .restart local v17    # "negative":Z
    :cond_15
    const/4 v1, -0x1

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3390
    const/4 v1, 0x0

    move-object v4, v1

    check-cast v4, [[F

    return-object v4

    .line 3420
    .end local v6    # "start":I
    .end local v14    # "array":[F
    .end local v15    # "offset":I
    .end local v17    # "negative":Z
    .local v7, "chLocal":C
    .local v8, "offset":I
    :cond_16
    move v1, v3

    .end local v3    # "arrayarrayIndex":I
    .restart local v1    # "arrayarrayIndex":I
    :goto_d
    array-length v3, v9

    if-eq v1, v3, :cond_17

    .line 3421
    new-array v3, v1, [[F

    .line 3422
    .local v3, "tmp":[[F
    const/4 v4, 0x0

    invoke-static {v9, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3423
    move-object v9, v3

    .line 3426
    .end local v3    # "tmp":[[F
    :cond_17
    const/16 v3, 0x2c

    if-ne v7, v3, :cond_18

    .line 3427
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v8, -0x1

    add-int/2addr v3, v4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3428
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 3429
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3430
    const/16 v3, 0x10

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3431
    return-object v9

    .line 3434
    :cond_18
    const/16 v3, 0x7d

    if-ne v7, v3, :cond_1d

    .line 3435
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v8, 0x1

    .restart local v4    # "offset":I
    add-int/2addr v3, v8

    .end local v8    # "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3436
    .end local v7    # "chLocal":C
    .local v3, "chLocal":C
    const/16 v5, 0x2c

    if-ne v3, v5, :cond_19

    .line 3437
    const/16 v5, 0x10

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3438
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v4, -0x1

    add-int/2addr v5, v6

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3439
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_e

    .line 3440
    :cond_19
    const/16 v5, 0x5d

    if-ne v3, v5, :cond_1a

    .line 3441
    const/16 v5, 0xf

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3442
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v4, -0x1

    add-int/2addr v5, v6

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3443
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_e

    .line 3444
    :cond_1a
    const/16 v5, 0x7d

    if-ne v3, v5, :cond_1b

    .line 3445
    const/16 v5, 0xd

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3446
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v4, -0x1

    add-int/2addr v5, v6

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3447
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_e

    .line 3448
    :cond_1b
    const/16 v5, 0x1a

    if-ne v3, v5, :cond_1c

    .line 3449
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v4, -0x1

    add-int/2addr v5, v6

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3450
    const/16 v5, 0x14

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3451
    const/16 v5, 0x1a

    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3456
    :goto_e
    const/4 v5, 0x4

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3462
    return-object v9

    .line 3453
    :cond_1c
    const/4 v5, -0x1

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3454
    const/4 v6, 0x0

    move-object v5, v6

    check-cast v5, [[F

    return-object v5

    .line 3458
    .end local v3    # "chLocal":C
    .end local v4    # "offset":I
    .restart local v7    # "chLocal":C
    .restart local v8    # "offset":I
    :cond_1d
    const/4 v5, -0x1

    const/4 v6, 0x0

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3459
    move-object v4, v6

    check-cast v4, [[F

    return-object v4
.end method

.method public scanFieldInt([C)I
    .locals 11
    .param p1, "fieldName"    # [C

    .line 1904
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1906
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1907
    const/4 v1, -0x2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1908
    return v0

    .line 1911
    :cond_0
    array-length v1, p1

    .line 1912
    .local v1, "offset":I
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v1, 0x1

    .local v3, "offset":I
    add-int/2addr v2, v1

    .end local v1    # "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1914
    .local v1, "chLocal":C
    const/16 v2, 0x2d

    if-ne v1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 1915
    .local v2, "negative":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 1916
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v3, 0x1

    .local v5, "offset":I
    add-int/2addr v4, v3

    .end local v3    # "offset":I
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1920
    move v3, v5

    .end local v5    # "offset":I
    .restart local v3    # "offset":I
    :cond_2
    const/16 v4, 0x30

    const/4 v5, -0x1

    if-lt v1, v4, :cond_10

    const/16 v6, 0x39

    if-gt v1, v6, :cond_10

    .line 1921
    add-int/lit8 v7, v1, -0x30

    .line 1923
    .local v7, "value":I
    :goto_1
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v3, 0x1

    .local v9, "offset":I
    add-int/2addr v8, v3

    .end local v3    # "offset":I
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1924
    if-lt v1, v4, :cond_3

    if-gt v1, v6, :cond_3

    .line 1925
    mul-int/lit8 v3, v7, 0xa

    add-int/lit8 v8, v1, -0x30

    add-int v7, v3, v8

    .line 1921
    move v3, v9

    goto :goto_1

    .line 1926
    :cond_3
    const/16 v3, 0x2e

    if-ne v1, v3, :cond_4

    .line 1927
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1928
    return v0

    .line 1933
    :cond_4
    if-ltz v7, :cond_5

    const/16 v3, 0xe

    array-length v4, p1

    add-int/2addr v3, v4

    if-le v9, v3, :cond_6

    .line 1935
    :cond_5
    const/high16 v3, -0x80000000

    if-ne v7, v3, :cond_f

    const/16 v3, 0x11

    if-ne v9, v3, :cond_f

    if-nez v2, :cond_6

    goto/16 :goto_5

    .line 1944
    :cond_6
    move v3, v7

    .line 1947
    .end local v7    # "value":I
    .local v3, "value":I
    const/16 v4, 0x10

    const/16 v6, 0x2c

    if-ne v1, v6, :cond_8

    .line 1948
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v9

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1949
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1950
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1951
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1952
    if-eqz v2, :cond_7

    neg-int v0, v3

    goto :goto_2

    :cond_7
    move v0, v3

    :goto_2
    return v0

    .line 1955
    :cond_8
    const/16 v7, 0x7d

    if-ne v1, v7, :cond_e

    .line 1956
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v9, 0x1

    .local v10, "offset":I
    add-int/2addr v8, v9

    .end local v9    # "offset":I
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1957
    if-ne v1, v6, :cond_9

    .line 1958
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1959
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1960
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    .line 1961
    :cond_9
    const/16 v4, 0x5d

    if-ne v1, v4, :cond_a

    .line 1962
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1963
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1964
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    .line 1965
    :cond_a
    if-ne v1, v7, :cond_b

    .line 1966
    const/16 v0, 0xd

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1967
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1968
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    .line 1969
    :cond_b
    const/16 v4, 0x1a

    if-ne v1, v4, :cond_d

    .line 1970
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1971
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v10, -0x1

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1972
    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1977
    :goto_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1983
    if-eqz v2, :cond_c

    neg-int v0, v3

    goto :goto_4

    :cond_c
    move v0, v3

    :goto_4
    return v0

    .line 1974
    :cond_d
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1975
    return v0

    .line 1979
    .end local v10    # "offset":I
    .restart local v9    # "offset":I
    :cond_e
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1980
    return v0

    .line 1938
    .end local v3    # "value":I
    .restart local v7    # "value":I
    :cond_f
    :goto_5
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1939
    return v0

    .line 1943
    .end local v7    # "value":I
    .end local v9    # "offset":I
    .local v3, "offset":I
    :cond_10
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1944
    return v0
.end method

.method public final scanFieldIntArray([C)[I
    .locals 19
    .param p1, "fieldName"    # [C

    move-object/from16 v0, p0

    .line 1987
    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1989
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v2

    const/4 v3, -0x2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 1990
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1991
    return-object v4

    .line 1994
    :cond_0
    move-object/from16 v2, p1

    array-length v5, v2

    .line 1995
    .local v5, "offset":I
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v5, 0x1

    .local v7, "offset":I
    add-int/2addr v6, v5

    .end local v5    # "offset":I
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 1997
    .local v5, "chLocal":C
    const/16 v6, 0x5b

    if-eq v5, v6, :cond_1

    .line 1998
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1999
    return-object v4

    .line 2001
    :cond_1
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v7, 0x1

    .local v6, "offset":I
    add-int/2addr v3, v7

    .end local v7    # "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2003
    .end local v5    # "chLocal":C
    .local v3, "chLocal":C
    const/16 v5, 0x10

    new-array v7, v5, [I

    .line 2004
    .local v7, "array":[I
    const/4 v8, 0x0

    .line 2006
    .local v8, "arrayIndex":I
    const/4 v9, 0x3

    const/4 v10, -0x1

    const/16 v11, 0x2c

    const/16 v12, 0x5d

    if-ne v3, v12, :cond_2

    .line 2007
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v14, v6, 0x1

    .local v14, "offset":I
    add-int/2addr v13, v6

    .end local v6    # "offset":I
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2048
    move v6, v8

    goto/16 :goto_4

    .line 2010
    .end local v14    # "offset":I
    .restart local v6    # "offset":I
    :cond_2
    :goto_0
    const/4 v13, 0x0

    .line 2011
    .local v13, "nagative":Z
    const/16 v14, 0x2d

    if-ne v3, v14, :cond_3

    .line 2012
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v15, v6, 0x1

    .local v15, "offset":I
    add-int/2addr v14, v6

    .end local v6    # "offset":I
    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2013
    const/4 v13, 0x1

    goto :goto_1

    .line 2015
    .end local v15    # "offset":I
    .restart local v6    # "offset":I
    :cond_3
    move v15, v6

    .end local v6    # "offset":I
    .restart local v15    # "offset":I
    :goto_1
    const/16 v6, 0x30

    if-lt v3, v6, :cond_10

    const/16 v14, 0x39

    if-gt v3, v14, :cond_10

    .line 2016
    add-int/lit8 v16, v3, -0x30

    .local v16, "value":I
    :goto_2
    move/from16 v17, v16

    .line 2018
    .end local v16    # "value":I
    .local v17, "value":I
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v16, v15, 0x1

    .local v16, "offset":I
    add-int/2addr v4, v15

    .end local v15    # "offset":I
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2020
    if-lt v3, v6, :cond_4

    if-gt v3, v14, :cond_4

    .line 2021
    move/from16 v4, v17

    mul-int/lit8 v17, v4, 0xa

    .end local v17    # "value":I
    .local v4, "value":I
    add-int/lit8 v15, v3, -0x30

    add-int v4, v17, v15

    .line 2016
    move/from16 v15, v16

    move/from16 v16, v4

    const/4 v4, 0x0

    goto :goto_2

    .line 2027
    .end local v4    # "value":I
    .restart local v17    # "value":I
    :cond_4
    move/from16 v4, v17

    .end local v17    # "value":I
    .restart local v4    # "value":I
    array-length v6, v7

    if-lt v8, v6, :cond_5

    .line 2028
    array-length v6, v7

    mul-int/2addr v6, v9

    div-int/lit8 v6, v6, 0x2

    new-array v6, v6, [I

    .line 2029
    .local v6, "tmp":[I
    invoke-static {v7, v1, v6, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2030
    nop

    .line 2032
    .end local v7    # "array":[I
    .local v6, "array":[I
    move-object v7, v6

    .end local v6    # "array":[I
    .restart local v7    # "array":[I
    :cond_5
    add-int/lit8 v6, v8, 0x1

    .local v6, "arrayIndex":I
    if-eqz v13, :cond_6

    neg-int v14, v4

    goto :goto_3

    :cond_6
    move v14, v4

    :goto_3
    aput v14, v7, v8

    .line 2034
    .end local v8    # "arrayIndex":I
    if-ne v3, v11, :cond_7

    .line 2035
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v14, v16, 0x1

    .restart local v14    # "offset":I
    add-int v8, v8, v16

    .end local v16    # "offset":I
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2040
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 2036
    .end local v14    # "offset":I
    .restart local v16    # "offset":I
    :cond_7
    if-ne v3, v12, :cond_f

    .line 2037
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v14, v16, 0x1

    .restart local v14    # "offset":I
    add-int v8, v8, v16

    .end local v16    # "offset":I
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2038
    nop

    .line 2048
    .end local v4    # "value":I
    .end local v13    # "nagative":Z
    :goto_4
    array-length v4, v7

    if-eq v6, v4, :cond_8

    .line 2049
    new-array v4, v6, [I

    .line 2050
    .local v4, "tmp":[I
    invoke-static {v7, v1, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2051
    move-object v7, v4

    .line 2054
    .end local v4    # "tmp":[I
    :cond_8
    if-ne v3, v11, :cond_9

    .line 2055
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v14, -0x1

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2056
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2057
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2058
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2059
    return-object v7

    .line 2062
    :cond_9
    const/16 v1, 0x7d

    if-ne v3, v1, :cond_e

    .line 2063
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v14, 0x1

    .local v8, "offset":I
    add-int/2addr v4, v14

    .end local v14    # "offset":I
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2064
    if-ne v3, v11, :cond_a

    .line 2065
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2066
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v8, -0x1

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2067
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_5

    .line 2068
    :cond_a
    if-ne v3, v12, :cond_b

    .line 2069
    const/16 v1, 0xf

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2070
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v8, -0x1

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2071
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_5

    .line 2072
    :cond_b
    if-ne v3, v1, :cond_c

    .line 2073
    const/16 v1, 0xd

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2074
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v8, -0x1

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2075
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_5

    .line 2076
    :cond_c
    const/16 v1, 0x1a

    if-ne v3, v1, :cond_d

    .line 2077
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v8, -0x1

    add-int/2addr v4, v5

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2078
    const/16 v4, 0x14

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2079
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2084
    :goto_5
    const/4 v1, 0x4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2090
    return-object v7

    .line 2081
    :cond_d
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2082
    const/4 v4, 0x0

    return-object v4

    .line 2086
    .end local v8    # "offset":I
    .restart local v14    # "offset":I
    :cond_e
    const/4 v4, 0x0

    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2087
    return-object v4

    .line 2040
    .end local v14    # "offset":I
    .restart local v13    # "nagative":Z
    .restart local v16    # "offset":I
    :cond_f
    const/4 v4, 0x0

    move/from16 v14, v16

    .line 2044
    .end local v13    # "nagative":Z
    .end local v16    # "offset":I
    .restart local v14    # "offset":I
    :goto_6
    nop

    .line 2010
    move v8, v6

    move v6, v14

    goto/16 :goto_0

    .line 2041
    .end local v6    # "arrayIndex":I
    .end local v14    # "offset":I
    .local v8, "arrayIndex":I
    .restart local v13    # "nagative":Z
    .restart local v15    # "offset":I
    :cond_10
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2042
    return-object v4
.end method

.method public scanFieldLong([C)J
    .locals 19
    .param p1, "fieldName"    # [C

    move-object/from16 v0, p0

    .line 2329
    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2331
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_0

    .line 2332
    const/4 v2, -0x2

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2333
    return-wide v4

    .line 2336
    :cond_0
    array-length v3, v1

    .line 2337
    .local v3, "offset":I
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v3, 0x1

    .local v7, "offset":I
    add-int/2addr v6, v3

    .end local v3    # "offset":I
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2339
    .local v3, "chLocal":C
    const/4 v6, 0x0

    .line 2340
    .local v6, "negative":Z
    const/16 v8, 0x2d

    if-ne v3, v8, :cond_1

    .line 2341
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v7, 0x1

    .local v9, "offset":I
    add-int/2addr v8, v7

    .end local v7    # "offset":I
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2342
    const/4 v6, 0x1

    .line 2346
    move v7, v9

    .end local v9    # "offset":I
    .restart local v7    # "offset":I
    :cond_1
    const/16 v8, 0x30

    const/4 v9, -0x1

    if-lt v3, v8, :cond_f

    const/16 v10, 0x39

    if-gt v3, v10, :cond_f

    .line 2347
    add-int/lit8 v11, v3, -0x30

    int-to-long v11, v11

    .line 2349
    .local v11, "value":J
    :goto_0
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v14, v7, 0x1

    .local v14, "offset":I
    add-int/2addr v13, v7

    .end local v7    # "offset":I
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2350
    if-lt v3, v8, :cond_2

    if-gt v3, v10, :cond_2

    .line 2351
    const-wide/16 v15, 0xa

    mul-long/2addr v15, v11

    add-int/lit8 v7, v3, -0x30

    move-wide/from16 v17, v11

    int-to-long v10, v7

    .end local v11    # "value":J
    .local v17, "value":J
    add-long/2addr v10, v15

    .line 2347
    .end local v17    # "value":J
    .local v10, "value":J
    move-wide v11, v10

    move v7, v14

    const/16 v10, 0x39

    goto :goto_0

    .line 2352
    .end local v10    # "value":J
    .restart local v11    # "value":J
    :cond_2
    move-wide/from16 v17, v11

    .end local v11    # "value":J
    .restart local v17    # "value":J
    const/16 v7, 0x2e

    if-ne v3, v7, :cond_3

    .line 2353
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2354
    return-wide v4

    .line 2360
    :cond_3
    array-length v7, v1

    sub-int v7, v14, v7

    const/16 v8, 0x15

    if-ge v7, v8, :cond_5

    cmp-long v7, v17, v4

    if-gez v7, :cond_4

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v7, v17, v7

    if-nez v7, :cond_5

    if-eqz v6, :cond_5

    :cond_4
    const/4 v2, 0x1

    nop

    .line 2362
    .local v2, "valid":Z
    :cond_5
    if-nez v2, :cond_6

    .line 2363
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2364
    return-wide v4

    .line 2366
    .end local v2    # "valid":Z
    :cond_6
    nop

    .line 2368
    nop

    .line 2371
    const/16 v2, 0x10

    const/16 v7, 0x2c

    if-ne v3, v7, :cond_8

    .line 2372
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v14

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2373
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2374
    const/4 v4, 0x3

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2375
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2376
    if-eqz v6, :cond_7

    move-wide/from16 v10, v17

    neg-long v4, v10

    .end local v17    # "value":J
    .restart local v10    # "value":J
    :goto_1
    goto :goto_2

    .end local v10    # "value":J
    .restart local v17    # "value":J
    :cond_7
    move-wide/from16 v10, v17

    move-wide v4, v10

    goto :goto_1

    .end local v17    # "value":J
    .restart local v10    # "value":J
    :goto_2
    return-wide v4

    .line 2379
    .end local v10    # "value":J
    .restart local v17    # "value":J
    :cond_8
    move-wide/from16 v10, v17

    .end local v17    # "value":J
    .restart local v10    # "value":J
    const/16 v8, 0x7d

    if-ne v3, v8, :cond_e

    .line 2380
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v13, v14, 0x1

    .local v13, "offset":I
    add-int/2addr v12, v14

    .end local v14    # "offset":I
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2381
    if-ne v3, v7, :cond_9

    .line 2382
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2383
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v13

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2384
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    .line 2385
    :cond_9
    const/16 v2, 0x5d

    if-ne v3, v2, :cond_a

    .line 2386
    const/16 v2, 0xf

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2387
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v13

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2388
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    .line 2389
    :cond_a
    if-ne v3, v8, :cond_b

    .line 2390
    const/16 v2, 0xd

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2391
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v13

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2392
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    .line 2393
    :cond_b
    const/16 v2, 0x1a

    if-ne v3, v2, :cond_d

    .line 2394
    const/16 v4, 0x14

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2395
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v13, -0x1

    add-int/2addr v4, v5

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2396
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2401
    :goto_3
    const/4 v2, 0x4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2407
    if-eqz v6, :cond_c

    neg-long v4, v10

    goto :goto_4

    :cond_c
    move-wide v4, v10

    :goto_4
    return-wide v4

    .line 2398
    :cond_d
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2399
    return-wide v4

    .line 2403
    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    :cond_e
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2404
    return-wide v4

    .line 2367
    .end local v10    # "value":J
    .end local v14    # "offset":I
    .restart local v7    # "offset":I
    :cond_f
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2368
    return-wide v4
.end method

.method public scanFieldString([C)Ljava/lang/String;
    .locals 12
    .param p1, "fieldName"    # [C

    .line 1241
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1243
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1244
    const/4 v0, -0x2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1245
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1250
    :cond_0
    array-length v0, p1

    .line 1251
    .local v0, "offset":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v0, 0x1

    .local v2, "offset":I
    add-int/2addr v1, v0

    .end local v0    # "offset":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1253
    .local v0, "chLocal":C
    const/16 v1, 0x22

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1

    .line 1254
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1256
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1261
    :cond_1
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v5, p1

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    .line 1262
    .local v4, "startIndex":I
    invoke-virtual {p0, v1, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v5

    .line 1263
    .local v5, "endIndex":I
    if-eq v5, v3, :cond_b

    .line 1267
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v7, p1

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    .line 1268
    .local v6, "startIndex2":I
    sub-int v7, v5, v6

    invoke-virtual {p0, v6, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v7

    .line 1269
    .local v7, "stringVal":Ljava/lang/String;
    const/16 v8, 0x5c

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-eq v9, v3, :cond_4

    .line 1271
    :goto_0
    const/4 v9, 0x0

    .line 1272
    .local v9, "slashCount":I
    add-int/lit8 v10, v5, -0x1

    .local v10, "i":I
    :goto_1
    if-ltz v10, :cond_2

    .line 1273
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    if-ne v11, v8, :cond_2

    .line 1274
    add-int/lit8 v9, v9, 0x1

    .line 1272
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 1279
    .end local v10    # "i":I
    :cond_2
    rem-int/lit8 v10, v9, 0x2

    if-nez v10, :cond_3

    .line 1280
    nop

    .line 1285
    .end local v9    # "slashCount":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v8, p1

    add-int/2addr v1, v8

    add-int/lit8 v1, v1, 0x1

    sub-int v1, v5, v1

    .line 1286
    .local v1, "chars_len":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v9, p1

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v8, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v8

    .line 1288
    .local v8, "chars":[C
    invoke-static {v8, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v7

    .end local v1    # "chars_len":I
    .end local v8    # "chars":[C
    goto :goto_2

    .line 1282
    .restart local v9    # "slashCount":I
    :cond_3
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0, v1, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v5

    .line 1283
    .end local v9    # "slashCount":I
    goto :goto_0

    .line 1291
    :cond_4
    :goto_2
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v8, p1

    add-int/2addr v1, v8

    add-int/lit8 v1, v1, 0x1

    sub-int v1, v5, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v1

    .line 1292
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v2, 0x1

    .local v8, "offset":I
    add-int/2addr v1, v2

    .end local v2    # "offset":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1293
    nop

    .end local v4    # "startIndex":I
    .end local v5    # "endIndex":I
    .end local v6    # "startIndex2":I
    .end local v7    # "stringVal":Ljava/lang/String;
    move-object v1, v7

    .line 1296
    .local v1, "strVal":Ljava/lang/String;
    const/16 v2, 0x2c

    if-ne v0, v2, :cond_5

    .line 1297
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v8

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1298
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1299
    const/4 v2, 0x3

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1300
    return-object v1

    .line 1303
    :cond_5
    const/16 v4, 0x7d

    if-ne v0, v4, :cond_a

    .line 1304
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v8, 0x1

    .local v6, "offset":I
    add-int/2addr v5, v8

    .end local v8    # "offset":I
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1305
    if-ne v0, v2, :cond_6

    .line 1306
    const/16 v2, 0x10

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1307
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1308
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    .line 1309
    :cond_6
    const/16 v2, 0x5d

    if-ne v0, v2, :cond_7

    .line 1310
    const/16 v2, 0xf

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1311
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1312
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    .line 1313
    :cond_7
    if-ne v0, v4, :cond_8

    .line 1314
    const/16 v2, 0xd

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1315
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1316
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    .line 1317
    :cond_8
    const/16 v2, 0x1a

    if-ne v0, v2, :cond_9

    .line 1318
    const/16 v3, 0x14

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1319
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v6, -0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1320
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1325
    :goto_3
    const/4 v2, 0x4

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1331
    return-object v1

    .line 1322
    :cond_9
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1323
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1327
    .end local v6    # "offset":I
    .restart local v8    # "offset":I
    :cond_a
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1328
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1264
    .end local v1    # "strVal":Ljava/lang/String;
    .end local v8    # "offset":I
    .restart local v2    # "offset":I
    .restart local v4    # "startIndex":I
    .restart local v5    # "endIndex":I
    :cond_b
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "unclosed str"

    invoke-direct {v1, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public scanFieldStringArray([CLjava/lang/Class;)Ljava/util/Collection;
    .locals 19
    .param p1, "fieldName"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    .line 1668
    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1670
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1671
    const/4 v1, -0x2

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1672
    return-object v2

    .line 1675
    :cond_0
    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->newCollectionByType(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v3

    .line 1691
    .local v3, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v4, p1

    array-length v5, v4

    .line 1692
    .local v5, "offset":I
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v5, 0x1

    .local v7, "offset":I
    add-int/2addr v6, v5

    .end local v5    # "offset":I
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 1694
    .local v5, "chLocal":C
    const/16 v6, 0x5b

    const/4 v8, -0x1

    if-eq v5, v6, :cond_1

    .line 1695
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1696
    return-object v2

    .line 1699
    :cond_1
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v7, 0x1

    .local v9, "offset":I
    add-int/2addr v6, v7

    .end local v7    # "offset":I
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 1703
    :goto_0
    const/16 v10, 0x22

    if-ne v5, v10, :cond_6

    .line 1704
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v11, v9

    .line 1705
    .local v11, "startIndex":I
    invoke-virtual {v0, v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v12

    .line 1706
    .local v12, "endIndex":I
    if-eq v12, v8, :cond_5

    .line 1710
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v13, v9

    .line 1711
    .local v13, "startIndex2":I
    sub-int v14, v12, v13

    invoke-virtual {v0, v13, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v14

    .line 1712
    .local v14, "stringVal":Ljava/lang/String;
    const/16 v15, 0x5c

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v8, :cond_4

    .line 1714
    :goto_1
    const/4 v6, 0x0

    .line 1715
    .local v6, "slashCount":I
    add-int/lit8 v16, v12, -0x1

    .local v16, "i":I
    :goto_2
    move/from16 v17, v16

    .end local v16    # "i":I
    .local v17, "i":I
    move/from16 v8, v17

    if-ltz v8, :cond_2

    .line 1716
    .end local v17    # "i":I
    .local v8, "i":I
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    if-ne v7, v15, :cond_2

    .line 1717
    add-int/lit8 v6, v6, 0x1

    .line 1715
    add-int/lit8 v16, v8, -0x1

    .end local v8    # "i":I
    .restart local v16    # "i":I
    const/4 v8, -0x1

    goto :goto_2

    .line 1722
    .end local v16    # "i":I
    :cond_2
    rem-int/lit8 v7, v6, 0x2

    if-nez v7, :cond_3

    .line 1723
    nop

    .line 1728
    .end local v6    # "slashCount":I
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v9

    sub-int v6, v12, v6

    .line 1729
    .local v6, "chars_len":I
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v9

    invoke-virtual {v0, v7, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v7

    .line 1731
    .local v7, "chars":[C
    invoke-static {v7, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v14

    .end local v6    # "chars_len":I
    .end local v7    # "chars":[C
    goto :goto_3

    .line 1725
    .local v6, "slashCount":I
    :cond_3
    add-int/lit8 v7, v12, 0x1

    invoke-virtual {v0, v10, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v12

    .line 1726
    .end local v6    # "slashCount":I
    nop

    .line 1714
    const/4 v8, -0x1

    goto :goto_1

    .line 1734
    :cond_4
    :goto_3
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v9

    sub-int v6, v12, v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v9, v6

    .line 1735
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v9, 0x1

    .local v7, "offset":I
    add-int/2addr v6, v9

    .end local v9    # "offset":I
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 1737
    invoke-interface {v3, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1738
    .end local v11    # "startIndex":I
    .end local v12    # "endIndex":I
    .end local v13    # "startIndex2":I
    .end local v14    # "stringVal":Ljava/lang/String;
    goto :goto_4

    .line 1707
    .end local v7    # "offset":I
    .restart local v9    # "offset":I
    .restart local v11    # "startIndex":I
    .restart local v12    # "endIndex":I
    :cond_5
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "unclosed str"

    invoke-direct {v2, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1738
    .end local v11    # "startIndex":I
    .end local v12    # "endIndex":I
    :cond_6
    const/16 v6, 0x6e

    if-ne v5, v6, :cond_9

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v9

    .line 1739
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    const/16 v7, 0x75

    if-ne v6, v7, :cond_9

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v9

    add-int/lit8 v6, v6, 0x1

    .line 1740
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    const/16 v7, 0x6c

    if-ne v6, v7, :cond_9

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v9

    add-int/lit8 v6, v6, 0x2

    .line 1741
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_9

    .line 1742
    add-int/lit8 v9, v9, 0x3

    .line 1743
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v9, 0x1

    .restart local v7    # "offset":I
    add-int/2addr v6, v9

    .end local v9    # "offset":I
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 1744
    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1752
    :goto_4
    const/16 v6, 0x2c

    if-ne v5, v6, :cond_7

    .line 1753
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v7, 0x1

    .restart local v9    # "offset":I
    add-int/2addr v6, v7

    .end local v7    # "offset":I
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 1754
    nop

    .line 1703
    const/4 v8, -0x1

    goto/16 :goto_0

    .line 1757
    .end local v9    # "offset":I
    .restart local v7    # "offset":I
    :cond_7
    const/16 v6, 0x5d

    if-ne v5, v6, :cond_8

    .line 1758
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v7, 0x1

    .local v8, "offset":I
    add-int/2addr v6, v7

    .end local v7    # "offset":I
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 1759
    goto :goto_5

    .line 1762
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    :cond_8
    const/4 v6, -0x1

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1763
    return-object v2

    .line 1745
    .end local v7    # "offset":I
    .restart local v9    # "offset":I
    :cond_9
    const/16 v6, 0x5d

    if-ne v5, v6, :cond_10

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v6

    if-nez v6, :cond_10

    .line 1746
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v9, 0x1

    .restart local v8    # "offset":I
    add-int/2addr v6, v9

    .end local v9    # "offset":I
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 1747
    nop

    .line 1766
    :goto_5
    const/16 v6, 0x2c

    if-ne v5, v6, :cond_a

    .line 1767
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v8

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1768
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1769
    const/4 v2, 0x3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1770
    return-object v3

    .line 1773
    :cond_a
    const/16 v6, 0x7d

    if-ne v5, v6, :cond_f

    .line 1774
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v8, 0x1

    .restart local v9    # "offset":I
    add-int/2addr v7, v8

    .end local v8    # "offset":I
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 1775
    const/16 v7, 0x2c

    if-ne v5, v7, :cond_b

    .line 1776
    const/16 v2, 0x10

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1777
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v9

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1778
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    .line 1779
    :cond_b
    const/16 v7, 0x5d

    if-ne v5, v7, :cond_c

    .line 1780
    const/16 v2, 0xf

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1781
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v9

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1782
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    .line 1783
    :cond_c
    if-ne v5, v6, :cond_d

    .line 1784
    const/16 v2, 0xd

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1785
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v9

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1786
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    .line 1787
    :cond_d
    const/16 v6, 0x1a

    if-ne v5, v6, :cond_e

    .line 1788
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v9, -0x1

    add-int/2addr v2, v7

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1789
    const/16 v2, 0x14

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1790
    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1795
    :goto_6
    const/4 v2, 0x4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1801
    return-object v3

    .line 1792
    :cond_e
    const/4 v6, -0x1

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1793
    return-object v2

    .line 1797
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :cond_f
    const/4 v6, -0x1

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1798
    return-object v2

    .line 1749
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_10
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "illega str"

    invoke-direct {v2, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public scanFieldStringArray([CILcom/alibaba/fastjson/parser/SymbolTable;)[Ljava/lang/String;
    .locals 1
    .param p1, "fieldName"    # [C
    .param p2, "argTypesCount"    # I
    .param p3, "typeSymbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 5317
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public scanFieldSymbol([C)J
    .locals 12
    .param p1, "fieldName"    # [C

    .line 1428
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1430
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 1431
    const/4 v0, -0x2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1432
    return-wide v1

    .line 1435
    :cond_0
    array-length v0, p1

    .line 1436
    .local v0, "offset":I
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v0, 0x1

    .local v4, "offset":I
    add-int/2addr v3, v0

    .end local v0    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1438
    .local v0, "chLocal":C
    const/16 v3, 0x22

    const/4 v5, -0x1

    if-eq v0, v3, :cond_1

    .line 1439
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1440
    return-wide v1

    .line 1443
    :cond_1
    const-wide v6, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 1445
    .local v6, "hash":J
    :goto_0
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v4, 0x1

    .local v9, "offset":I
    add-int/2addr v8, v4

    .end local v4    # "offset":I
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1446
    if-ne v0, v3, :cond_8

    .line 1447
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v9, 0x1

    .restart local v4    # "offset":I
    add-int/2addr v3, v9

    .end local v9    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1448
    nop

    .line 1460
    const/16 v3, 0x2c

    if-ne v0, v3, :cond_2

    .line 1461
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1462
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1463
    const/4 v1, 0x3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1464
    return-wide v6

    .line 1467
    :cond_2
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_7

    .line 1468
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v4, 0x1

    .local v10, "offset":I
    add-int/2addr v9, v4

    .end local v4    # "offset":I
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1469
    if-ne v0, v3, :cond_3

    .line 1470
    const/16 v1, 0x10

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1471
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v10

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1472
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    .line 1473
    :cond_3
    const/16 v3, 0x5d

    if-ne v0, v3, :cond_4

    .line 1474
    const/16 v1, 0xf

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1475
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v10

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1476
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    .line 1477
    :cond_4
    if-ne v0, v8, :cond_5

    .line 1478
    const/16 v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1479
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v10

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1480
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    .line 1481
    :cond_5
    const/16 v3, 0x1a

    if-ne v0, v3, :cond_6

    .line 1482
    const/16 v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1483
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v10, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1484
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1489
    :goto_1
    const/4 v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1495
    return-wide v6

    .line 1486
    :cond_6
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1487
    return-wide v1

    .line 1491
    .end local v10    # "offset":I
    .restart local v4    # "offset":I
    :cond_7
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1492
    return-wide v1

    .line 1451
    .end local v4    # "offset":I
    .restart local v9    # "offset":I
    :cond_8
    int-to-long v10, v0

    xor-long/2addr v6, v10

    .line 1452
    const-wide v10, 0x100000001b3L

    mul-long/2addr v6, v10

    .line 1454
    const/16 v4, 0x5c

    if-ne v0, v4, :cond_9

    .line 1455
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1456
    return-wide v1

    .line 1443
    :cond_9
    move v4, v9

    goto/16 :goto_0
.end method

.method public scanFieldUUID([C)Ljava/util/UUID;
    .locals 28
    .param p1, "fieldName"    # [C

    move-object/from16 v0, p0

    .line 4211
    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4213
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v3

    const/4 v4, -0x2

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 4214
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4215
    return-object v5

    .line 4220
    :cond_0
    array-length v3, v1

    .line 4221
    .local v3, "offset":I
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v3, 0x1

    .local v7, "offset":I
    add-int/2addr v6, v3

    .end local v3    # "offset":I
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 4224
    .local v3, "chLocal":C
    const/16 v6, 0x22

    const/4 v9, -0x1

    if-ne v3, v6, :cond_22

    .line 4225
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v12, v1

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x1

    .line 4226
    .local v11, "startIndex":I
    invoke-virtual {v0, v6, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v6

    .line 4227
    .local v6, "endIndex":I
    if-eq v6, v9, :cond_21

    .line 4231
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v13, v1

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x1

    .line 4232
    .local v12, "startIndex2":I
    sub-int v13, v6, v12

    .line 4233
    .local v13, "len":I
    const/16 v14, 0x24

    const/16 v15, 0x46

    const/16 v2, 0x66

    const/16 v9, 0x39

    const/16 v8, 0x41

    const/16 v17, 0xa

    const/16 v5, 0x61

    const/16 v4, 0x30

    if-ne v13, v14, :cond_15

    .line 4234
    const-wide/16 v18, 0x0

    .local v18, "mostSigBits":J
    const-wide/16 v20, 0x0

    .line 4235
    .local v20, "leastSigBits":J
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v14, v16

    .end local v16    # "i":I
    .local v14, "i":I
    const/16 v10, 0x8

    if-ge v14, v10, :cond_4

    .line 4236
    add-int v10, v12, v14

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    .line 4238
    .local v10, "ch":C
    if-lt v10, v4, :cond_1

    if-gt v10, v9, :cond_1

    .line 4239
    add-int/lit8 v16, v10, -0x30

    .local v16, "num":I
    :goto_1
    goto :goto_2

    .line 4240
    .end local v16    # "num":I
    :cond_1
    if-lt v10, v5, :cond_2

    if-gt v10, v2, :cond_2

    .line 4241
    add-int/lit8 v16, v10, -0x61

    add-int v16, v17, v16

    goto :goto_1

    .line 4242
    :cond_2
    if-lt v10, v8, :cond_3

    if-gt v10, v15, :cond_3

    .line 4243
    add-int/lit8 v16, v10, -0x41

    add-int v16, v17, v16

    goto :goto_1

    .line 4246
    .restart local v16    # "num":I
    :goto_2
    move/from16 v22, v16

    .line 4249
    .end local v16    # "num":I
    .local v22, "num":I
    const/16 v16, 0x4

    shl-long v18, v18, v16

    .line 4250
    move/from16 v23, v3

    move/from16 v15, v22

    int-to-long v2, v15

    .end local v3    # "chLocal":C
    .end local v22    # "num":I
    .local v15, "num":I
    .local v23, "chLocal":C
    or-long v18, v18, v2

    .line 4235
    .end local v10    # "ch":C
    .end local v15    # "num":I
    add-int/lit8 v16, v14, 0x1

    .end local v14    # "i":I
    .local v16, "i":I
    move/from16 v3, v23

    const/16 v2, 0x66

    const/16 v15, 0x46

    goto :goto_0

    .line 4245
    .end local v16    # "i":I
    .end local v23    # "chLocal":C
    .restart local v3    # "chLocal":C
    .restart local v10    # "ch":C
    .restart local v14    # "i":I
    :cond_3
    move/from16 v23, v3

    .end local v3    # "chLocal":C
    .restart local v23    # "chLocal":C
    const/4 v2, -0x2

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4246
    const/4 v2, 0x0

    return-object v2

    .line 4252
    .end local v10    # "ch":C
    .end local v14    # "i":I
    .end local v23    # "chLocal":C
    .restart local v3    # "chLocal":C
    :cond_4
    move/from16 v23, v3

    .end local v3    # "chLocal":C
    .restart local v23    # "chLocal":C
    const/16 v2, 0x9

    .local v2, "i":I
    :goto_3
    const/16 v3, 0xd

    if-ge v2, v3, :cond_8

    .line 4253
    add-int v3, v12, v2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 4255
    .local v3, "ch":C
    if-lt v3, v4, :cond_5

    if-gt v3, v9, :cond_5

    .line 4256
    add-int/lit8 v10, v3, -0x30

    .local v10, "num":I
    :goto_4
    goto :goto_5

    .line 4257
    .end local v10    # "num":I
    :cond_5
    if-lt v3, v5, :cond_6

    const/16 v10, 0x66

    if-gt v3, v10, :cond_6

    .line 4258
    add-int/lit8 v10, v3, -0x61

    add-int v10, v17, v10

    goto :goto_4

    .line 4259
    :cond_6
    if-lt v3, v8, :cond_7

    const/16 v10, 0x46

    if-gt v3, v10, :cond_7

    .line 4260
    add-int/lit8 v10, v3, -0x41

    add-int v10, v17, v10

    goto :goto_4

    .line 4263
    .restart local v10    # "num":I
    :goto_5
    nop

    .line 4266
    const/4 v14, 0x4

    shl-long v15, v18, v14

    .line 4267
    .end local v18    # "mostSigBits":J
    .local v15, "mostSigBits":J
    move/from16 v24, v6

    int-to-long v5, v10

    .end local v6    # "endIndex":I
    .local v24, "endIndex":I
    or-long v18, v15, v5

    .line 4252
    .end local v3    # "ch":C
    .end local v10    # "num":I
    .end local v15    # "mostSigBits":J
    .restart local v18    # "mostSigBits":J
    add-int/lit8 v2, v2, 0x1

    move/from16 v6, v24

    const/16 v5, 0x61

    goto :goto_3

    .line 4262
    .end local v24    # "endIndex":I
    .restart local v3    # "ch":C
    .restart local v6    # "endIndex":I
    :cond_7
    move/from16 v24, v6

    .end local v6    # "endIndex":I
    .restart local v24    # "endIndex":I
    const/4 v4, -0x2

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4263
    const/4 v4, 0x0

    return-object v4

    .line 4269
    .end local v2    # "i":I
    .end local v3    # "ch":C
    .end local v24    # "endIndex":I
    .restart local v6    # "endIndex":I
    :cond_8
    move/from16 v24, v6

    .end local v6    # "endIndex":I
    .restart local v24    # "endIndex":I
    const/16 v2, 0xe

    move-wide/from16 v5, v18

    .end local v18    # "mostSigBits":J
    .restart local v2    # "i":I
    .local v5, "mostSigBits":J
    :goto_6
    const/16 v3, 0x12

    if-ge v2, v3, :cond_c

    .line 4270
    add-int v3, v12, v2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 4272
    .restart local v3    # "ch":C
    if-lt v3, v4, :cond_9

    if-gt v3, v9, :cond_9

    .line 4273
    add-int/lit8 v10, v3, -0x30

    .restart local v10    # "num":I
    :goto_7
    goto :goto_8

    .line 4274
    .end local v10    # "num":I
    :cond_9
    const/16 v10, 0x61

    if-lt v3, v10, :cond_a

    const/16 v10, 0x66

    if-gt v3, v10, :cond_a

    .line 4275
    add-int/lit8 v10, v3, -0x61

    add-int v10, v17, v10

    goto :goto_7

    .line 4276
    :cond_a
    if-lt v3, v8, :cond_b

    const/16 v10, 0x46

    if-gt v3, v10, :cond_b

    .line 4277
    add-int/lit8 v10, v3, -0x41

    add-int v10, v17, v10

    goto :goto_7

    .line 4280
    .restart local v10    # "num":I
    :goto_8
    nop

    .line 4283
    const/4 v14, 0x4

    shl-long/2addr v5, v14

    .line 4284
    int-to-long v14, v10

    or-long/2addr v5, v14

    .line 4269
    .end local v3    # "ch":C
    .end local v10    # "num":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 4279
    .restart local v3    # "ch":C
    :cond_b
    const/4 v4, -0x2

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4280
    const/4 v4, 0x0

    return-object v4

    .line 4286
    .end local v2    # "i":I
    .end local v3    # "ch":C
    :cond_c
    const/16 v2, 0x13

    .restart local v2    # "i":I
    :goto_9
    const/16 v3, 0x17

    if-ge v2, v3, :cond_10

    .line 4287
    add-int v3, v12, v2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 4289
    .restart local v3    # "ch":C
    if-lt v3, v4, :cond_d

    if-gt v3, v9, :cond_d

    .line 4290
    add-int/lit8 v10, v3, -0x30

    .restart local v10    # "num":I
    :goto_a
    goto :goto_b

    .line 4291
    .end local v10    # "num":I
    :cond_d
    const/16 v10, 0x61

    if-lt v3, v10, :cond_e

    const/16 v10, 0x66

    if-gt v3, v10, :cond_e

    .line 4292
    add-int/lit8 v10, v3, -0x61

    add-int v10, v17, v10

    goto :goto_a

    .line 4293
    :cond_e
    if-lt v3, v8, :cond_f

    const/16 v10, 0x46

    if-gt v3, v10, :cond_f

    .line 4294
    add-int/lit8 v10, v3, -0x41

    add-int v10, v17, v10

    goto :goto_a

    .line 4297
    .restart local v10    # "num":I
    :goto_b
    nop

    .line 4300
    const/4 v14, 0x4

    shl-long v15, v20, v14

    .line 4301
    .end local v20    # "leastSigBits":J
    .local v15, "leastSigBits":J
    int-to-long v8, v10

    or-long v20, v15, v8

    .line 4286
    .end local v3    # "ch":C
    .end local v10    # "num":I
    .end local v15    # "leastSigBits":J
    .restart local v20    # "leastSigBits":J
    add-int/lit8 v2, v2, 0x1

    const/16 v8, 0x41

    const/16 v9, 0x39

    goto :goto_9

    .line 4296
    .restart local v3    # "ch":C
    :cond_f
    const/4 v4, -0x2

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4297
    const/4 v4, 0x0

    return-object v4

    .line 4303
    .end local v2    # "i":I
    .end local v3    # "ch":C
    :cond_10
    const/16 v2, 0x18

    move-wide/from16 v8, v20

    .end local v20    # "leastSigBits":J
    .restart local v2    # "i":I
    .local v8, "leastSigBits":J
    :goto_c
    const/16 v3, 0x24

    if-ge v2, v3, :cond_14

    .line 4304
    add-int v3, v12, v2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 4306
    .restart local v3    # "ch":C
    if-lt v3, v4, :cond_11

    const/16 v10, 0x39

    if-gt v3, v10, :cond_11

    .line 4307
    add-int/lit8 v10, v3, -0x30

    .restart local v10    # "num":I
    :goto_d
    goto :goto_e

    .line 4308
    .end local v10    # "num":I
    :cond_11
    const/16 v10, 0x61

    if-lt v3, v10, :cond_12

    const/16 v10, 0x66

    if-gt v3, v10, :cond_12

    .line 4309
    add-int/lit8 v10, v3, -0x61

    add-int v10, v17, v10

    goto :goto_d

    .line 4310
    :cond_12
    const/16 v10, 0x41

    if-lt v3, v10, :cond_13

    const/16 v10, 0x46

    if-gt v3, v10, :cond_13

    .line 4311
    add-int/lit8 v10, v3, -0x41

    add-int v10, v17, v10

    goto :goto_d

    .line 4314
    .restart local v10    # "num":I
    :goto_e
    nop

    .line 4317
    const/4 v14, 0x4

    shl-long/2addr v8, v14

    .line 4318
    int-to-long v14, v10

    or-long/2addr v8, v14

    .line 4303
    .end local v3    # "ch":C
    .end local v10    # "num":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 4313
    .restart local v3    # "ch":C
    :cond_13
    const/4 v4, -0x2

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4314
    const/4 v4, 0x0

    return-object v4

    .line 4320
    .end local v2    # "i":I
    .end local v3    # "ch":C
    :cond_14
    new-instance v2, Ljava/util/UUID;

    invoke-direct {v2, v5, v6, v8, v9}, Ljava/util/UUID;-><init>(JJ)V

    .line 4322
    .local v2, "uuid":Ljava/util/UUID;
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    sub-int v3, v24, v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v7, v3

    .line 4323
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v7, 0x1

    .local v4, "offset":I
    add-int/2addr v3, v7

    .end local v7    # "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 4324
    .end local v5    # "mostSigBits":J
    .end local v8    # "leastSigBits":J
    .end local v23    # "chLocal":C
    .local v3, "chLocal":C
    goto/16 :goto_14

    .end local v2    # "uuid":Ljava/util/UUID;
    .end local v4    # "offset":I
    .end local v24    # "endIndex":I
    .restart local v6    # "endIndex":I
    .restart local v7    # "offset":I
    :cond_15
    move/from16 v23, v3

    move/from16 v24, v6

    .end local v3    # "chLocal":C
    .end local v6    # "endIndex":I
    .restart local v23    # "chLocal":C
    .restart local v24    # "endIndex":I
    const/16 v2, 0x20

    if-ne v13, v2, :cond_20

    .line 4325
    const-wide/16 v2, 0x0

    .local v2, "mostSigBits":J
    const-wide/16 v5, 0x0

    .line 4326
    .local v5, "leastSigBits":J
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_f
    move/from16 v8, v16

    .end local v16    # "i":I
    .local v8, "i":I
    const/16 v9, 0x10

    if-ge v8, v9, :cond_19

    .line 4327
    add-int v9, v12, v8

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    .line 4329
    .local v9, "ch":C
    if-lt v9, v4, :cond_16

    const/16 v10, 0x39

    if-gt v9, v10, :cond_16

    .line 4330
    add-int/lit8 v10, v9, -0x30

    .restart local v10    # "num":I
    :goto_10
    goto :goto_11

    .line 4331
    .end local v10    # "num":I
    :cond_16
    const/16 v10, 0x61

    if-lt v9, v10, :cond_17

    const/16 v10, 0x66

    if-gt v9, v10, :cond_17

    .line 4332
    add-int/lit8 v10, v9, -0x61

    add-int v10, v17, v10

    goto :goto_10

    .line 4333
    :cond_17
    const/16 v10, 0x41

    if-lt v9, v10, :cond_18

    const/16 v10, 0x46

    if-gt v9, v10, :cond_18

    .line 4334
    add-int/lit8 v10, v9, -0x41

    add-int v10, v17, v10

    goto :goto_10

    .line 4337
    .restart local v10    # "num":I
    :goto_11
    nop

    .line 4340
    const/4 v14, 0x4

    shl-long/2addr v2, v14

    .line 4341
    int-to-long v14, v10

    or-long/2addr v2, v14

    .line 4326
    .end local v9    # "ch":C
    .end local v10    # "num":I
    add-int/lit8 v16, v8, 0x1

    .end local v8    # "i":I
    .restart local v16    # "i":I
    goto :goto_f

    .line 4336
    .end local v16    # "i":I
    .restart local v8    # "i":I
    .restart local v9    # "ch":C
    :cond_18
    const/4 v4, -0x2

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4337
    const/4 v4, 0x0

    return-object v4

    .line 4343
    .end local v8    # "i":I
    .end local v9    # "ch":C
    :cond_19
    move-wide v8, v5

    const/16 v5, 0x10

    .local v5, "i":I
    .local v8, "leastSigBits":J
    :goto_12
    const/16 v6, 0x20

    if-ge v5, v6, :cond_1f

    .line 4344
    add-int v6, v12, v5

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    .line 4346
    .local v6, "ch":C
    if-lt v6, v4, :cond_1a

    const/16 v10, 0x39

    if-gt v6, v10, :cond_1b

    .line 4347
    add-int/lit8 v14, v6, -0x30

    .line 4354
    .local v14, "num":I
    move/from16 v16, v14

    const/16 v4, 0x46

    const/16 v14, 0x61

    const/16 v15, 0x66

    goto :goto_13

    .line 4348
    .end local v14    # "num":I
    :cond_1a
    const/16 v10, 0x39

    :cond_1b
    const/16 v14, 0x61

    if-lt v6, v14, :cond_1c

    const/16 v15, 0x66

    if-gt v6, v15, :cond_1d

    .line 4349
    add-int/lit8 v16, v6, -0x61

    add-int v16, v17, v16

    .line 4354
    .local v16, "num":I
    const/16 v4, 0x46

    goto :goto_13

    .line 4350
    .end local v16    # "num":I
    :cond_1c
    const/16 v15, 0x66

    :cond_1d
    const/16 v4, 0x41

    if-lt v6, v4, :cond_1e

    const/16 v4, 0x46

    if-gt v6, v4, :cond_1e

    .line 4351
    add-int/lit8 v16, v6, -0x41

    add-int v16, v17, v16

    .line 4354
    .restart local v16    # "num":I
    :goto_13
    move/from16 v25, v16

    .line 4357
    .end local v16    # "num":I
    .local v25, "num":I
    const/16 v16, 0x4

    shl-long v8, v8, v16

    .line 4358
    move/from16 v26, v11

    move/from16 v4, v25

    int-to-long v10, v4

    .end local v11    # "startIndex":I
    .end local v25    # "num":I
    .local v4, "num":I
    .local v26, "startIndex":I
    or-long/2addr v8, v10

    .line 4343
    .end local v4    # "num":I
    .end local v6    # "ch":C
    add-int/lit8 v5, v5, 0x1

    move/from16 v11, v26

    const/16 v4, 0x30

    goto :goto_12

    .line 4353
    .end local v26    # "startIndex":I
    .restart local v6    # "ch":C
    .restart local v11    # "startIndex":I
    :cond_1e
    move/from16 v26, v11

    .end local v11    # "startIndex":I
    .restart local v26    # "startIndex":I
    const/4 v4, -0x2

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4354
    const/4 v4, 0x0

    return-object v4

    .line 4361
    .end local v5    # "i":I
    .end local v6    # "ch":C
    .end local v26    # "startIndex":I
    .restart local v11    # "startIndex":I
    :cond_1f
    move/from16 v26, v11

    .end local v11    # "startIndex":I
    .restart local v26    # "startIndex":I
    new-instance v4, Ljava/util/UUID;

    invoke-direct {v4, v2, v3, v8, v9}, Ljava/util/UUID;-><init>(JJ)V

    .line 4363
    .local v4, "uuid":Ljava/util/UUID;
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v6, v1

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    sub-int v6, v24, v5

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v7, v6

    .line 4364
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v7, 0x1

    .local v6, "offset":I
    add-int/2addr v5, v7

    .end local v7    # "offset":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 4365
    .end local v2    # "mostSigBits":J
    .end local v8    # "leastSigBits":J
    .end local v23    # "chLocal":C
    .restart local v3    # "chLocal":C
    nop

    .line 4367
    move-object v2, v4

    move v4, v6

    .line 4369
    .end local v6    # "offset":I
    .end local v12    # "startIndex2":I
    .end local v13    # "len":I
    .end local v24    # "endIndex":I
    .end local v26    # "startIndex":I
    .local v2, "uuid":Ljava/util/UUID;
    .local v4, "offset":I
    :goto_14
    goto :goto_15

    .line 4366
    .end local v2    # "uuid":Ljava/util/UUID;
    .end local v3    # "chLocal":C
    .end local v4    # "offset":I
    .restart local v7    # "offset":I
    .restart local v11    # "startIndex":I
    .restart local v12    # "startIndex2":I
    .restart local v13    # "len":I
    .restart local v23    # "chLocal":C
    .restart local v24    # "endIndex":I
    :cond_20
    move/from16 v26, v11

    .end local v11    # "startIndex":I
    .restart local v26    # "startIndex":I
    const/4 v2, -0x1

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4367
    const/4 v2, 0x0

    return-object v2

    .line 4228
    .end local v12    # "startIndex2":I
    .end local v13    # "len":I
    .end local v23    # "chLocal":C
    .end local v24    # "endIndex":I
    .end local v26    # "startIndex":I
    .restart local v3    # "chLocal":C
    .local v6, "endIndex":I
    .restart local v11    # "startIndex":I
    :cond_21
    move/from16 v23, v3

    move/from16 v24, v6

    move/from16 v26, v11

    .end local v3    # "chLocal":C
    .end local v6    # "endIndex":I
    .end local v11    # "startIndex":I
    .restart local v23    # "chLocal":C
    .restart local v24    # "endIndex":I
    .restart local v26    # "startIndex":I
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "unclosed str"

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4369
    .end local v23    # "chLocal":C
    .end local v24    # "endIndex":I
    .end local v26    # "startIndex":I
    .restart local v3    # "chLocal":C
    :cond_22
    move/from16 v23, v3

    .end local v3    # "chLocal":C
    .restart local v23    # "chLocal":C
    const/16 v2, 0x6e

    if-ne v3, v2, :cond_2a

    .end local v23    # "chLocal":C
    .restart local v3    # "chLocal":C
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v7, 0x1

    .restart local v4    # "offset":I
    add-int/2addr v2, v7

    .line 4370
    .end local v7    # "offset":I
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v5, 0x75

    if-ne v2, v5, :cond_29

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v4, 0x1

    .restart local v7    # "offset":I
    add-int/2addr v2, v4

    .line 4371
    .end local v4    # "offset":I
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v4, 0x6c

    if-ne v2, v4, :cond_2a

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v7, 0x1

    .restart local v4    # "offset":I
    add-int/2addr v2, v7

    .line 4372
    .end local v7    # "offset":I
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v5, 0x6c

    if-ne v2, v5, :cond_29

    .line 4373
    const/4 v2, 0x0

    .line 4374
    .restart local v2    # "uuid":Ljava/util/UUID;
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v4, 0x1

    .local v6, "offset":I
    add-int/2addr v5, v4

    .end local v4    # "offset":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 4377
    move v4, v6

    .line 4380
    .end local v6    # "offset":I
    .restart local v4    # "offset":I
    :goto_15
    const/16 v5, 0x2c

    if-ne v3, v5, :cond_23

    .line 4381
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4382
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 4383
    const/4 v5, 0x3

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4384
    return-object v2

    .line 4387
    :cond_23
    const/16 v5, 0x7d

    if-ne v3, v5, :cond_28

    .line 4388
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v4, 0x1

    .restart local v6    # "offset":I
    add-int/2addr v5, v4

    .end local v4    # "offset":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 4389
    const/16 v4, 0x2c

    if-ne v3, v4, :cond_24

    .line 4390
    const/16 v4, 0x10

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4391
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v6

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4392
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_16

    .line 4393
    :cond_24
    const/16 v4, 0x5d

    if-ne v3, v4, :cond_25

    .line 4394
    const/16 v4, 0xf

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4395
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v6

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4396
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_16

    .line 4397
    :cond_25
    const/16 v4, 0x7d

    if-ne v3, v4, :cond_26

    .line 4398
    const/16 v4, 0xd

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4399
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v6

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4400
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_16

    .line 4401
    :cond_26
    const/16 v4, 0x1a

    if-ne v3, v4, :cond_27

    .line 4402
    const/16 v4, 0x14

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4403
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, -0x1

    add-int/2addr v4, v5

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4404
    const/16 v4, 0x1a

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 4409
    :goto_16
    const/4 v4, 0x4

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4415
    return-object v2

    .line 4406
    :cond_27
    const/4 v5, -0x1

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4407
    const/4 v8, 0x0

    return-object v8

    .line 4411
    .end local v6    # "offset":I
    .restart local v4    # "offset":I
    :cond_28
    const/4 v5, -0x1

    const/4 v8, 0x0

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4412
    return-object v8

    .line 4376
    .end local v2    # "uuid":Ljava/util/UUID;
    :cond_29
    const/4 v5, -0x1

    const/4 v8, 0x0

    goto :goto_17

    .end local v4    # "offset":I
    .restart local v7    # "offset":I
    :cond_2a
    const/4 v5, -0x1

    const/4 v8, 0x0

    move v4, v7

    .end local v7    # "offset":I
    .restart local v4    # "offset":I
    :goto_17
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4377
    return-object v8
.end method

.method public final scanFloat(C)F
    .locals 27
    .param p1, "seperator"    # C

    move-object/from16 v0, p0

    .line 2680
    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2682
    const/4 v2, 0x0

    .line 2683
    .local v2, "offset":I
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v2, 0x1

    .local v4, "offset":I
    add-int/2addr v3, v2

    .end local v2    # "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2684
    .local v2, "chLocal":C
    const/16 v3, 0x22

    if-ne v2, v3, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v1

    .line 2685
    .local v6, "quote":Z
    :goto_0
    if-eqz v6, :cond_1

    .line 2686
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v4, 0x1

    .local v8, "offset":I
    add-int/2addr v7, v4

    .end local v4    # "offset":I
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2689
    move v4, v8

    .end local v8    # "offset":I
    .restart local v4    # "offset":I
    :cond_1
    const/16 v7, 0x2d

    if-ne v2, v7, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    move v8, v1

    .line 2690
    .local v8, "negative":Z
    :goto_1
    if-eqz v8, :cond_3

    .line 2691
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v4, 0x1

    .local v10, "offset":I
    add-int/2addr v9, v4

    .end local v4    # "offset":I
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2695
    move v4, v10

    .end local v10    # "offset":I
    .restart local v4    # "offset":I
    :cond_3
    const/4 v11, 0x0

    const/4 v12, -0x1

    const/16 v13, 0x30

    if-lt v2, v13, :cond_13

    const/16 v14, 0x39

    if-gt v2, v14, :cond_13

    .line 2696
    add-int/lit8 v15, v2, -0x30

    move/from16 v17, v2

    int-to-long v1, v15

    .line 2698
    .end local v2    # "chLocal":C
    .local v1, "intVal":J
    .local v17, "chLocal":C
    :goto_2
    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v18, v4, 0x1

    .local v18, "offset":I
    add-int/2addr v15, v4

    .end local v4    # "offset":I
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    .line 2699
    .end local v17    # "chLocal":C
    .local v4, "chLocal":C
    const-wide/16 v19, 0xa

    if-lt v4, v13, :cond_4

    if-gt v4, v14, :cond_4

    .line 2700
    mul-long v19, v19, v1

    add-int/lit8 v15, v4, -0x30

    int-to-long v9, v15

    add-long v1, v19, v9

    .line 2701
    nop

    .line 2696
    move/from16 v17, v4

    move/from16 v4, v18

    goto :goto_2

    .line 2707
    :cond_4
    const-wide/16 v9, 0x1

    .line 2708
    .local v9, "power":J
    const/16 v15, 0x2e

    if-ne v4, v15, :cond_5

    const/4 v15, 0x1

    goto :goto_3

    :cond_5
    const/4 v15, 0x0

    .line 2709
    .local v15, "small":Z
    :goto_3
    if-eqz v15, :cond_8

    .line 2710
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v18, 0x1

    .local v17, "offset":I
    add-int v5, v5, v18

    .end local v18    # "offset":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    .line 2711
    if-lt v4, v13, :cond_7

    if-gt v4, v14, :cond_7

    .line 2712
    mul-long v21, v1, v19

    add-int/lit8 v5, v4, -0x30

    move/from16 v23, v4

    int-to-long v3, v5

    .end local v4    # "chLocal":C
    .local v23, "chLocal":C
    add-long v21, v21, v3

    .line 2713
    .end local v1    # "intVal":J
    .local v21, "intVal":J
    const-wide/16 v1, 0xa

    .line 2715
    .end local v9    # "power":J
    .local v1, "power":J
    move-wide v9, v1

    move-wide/from16 v1, v21

    .end local v21    # "intVal":J
    .local v1, "intVal":J
    .restart local v9    # "power":J
    :goto_4
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v17, 0x1

    .local v4, "offset":I
    add-int v3, v3, v17

    .end local v17    # "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2716
    .end local v23    # "chLocal":C
    .local v3, "chLocal":C
    if-lt v3, v13, :cond_6

    if-gt v3, v14, :cond_6

    .line 2717
    mul-long v17, v1, v19

    add-int/lit8 v5, v3, -0x30

    move/from16 v24, v15

    int-to-long v14, v5

    .end local v15    # "small":Z
    .local v24, "small":Z
    add-long v1, v17, v14

    .line 2718
    mul-long v9, v9, v19

    .line 2719
    nop

    .line 2715
    move/from16 v23, v3

    move/from16 v17, v4

    move/from16 v15, v24

    const/16 v14, 0x39

    goto :goto_4

    .line 2730
    .end local v24    # "small":Z
    .restart local v15    # "small":Z
    :cond_6
    move/from16 v24, v15

    .end local v15    # "small":Z
    .restart local v24    # "small":Z
    move/from16 v18, v4

    goto :goto_5

    .line 2725
    .end local v3    # "chLocal":C
    .end local v24    # "small":Z
    .local v4, "chLocal":C
    .restart local v15    # "small":Z
    .restart local v17    # "offset":I
    :cond_7
    move/from16 v23, v4

    move/from16 v24, v15

    .end local v4    # "chLocal":C
    .end local v15    # "small":Z
    .restart local v23    # "chLocal":C
    .restart local v24    # "small":Z
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2726
    return v11

    .line 2730
    .end local v17    # "offset":I
    .end local v23    # "chLocal":C
    .end local v24    # "small":Z
    .restart local v4    # "chLocal":C
    .restart local v15    # "small":Z
    .restart local v18    # "offset":I
    :cond_8
    move/from16 v24, v15

    move v3, v4

    .end local v4    # "chLocal":C
    .end local v15    # "small":Z
    .restart local v3    # "chLocal":C
    .restart local v24    # "small":Z
    :goto_5
    const/16 v4, 0x65

    if-eq v3, v4, :cond_a

    const/16 v4, 0x45

    if-ne v3, v4, :cond_9

    goto :goto_6

    :cond_9
    const/16 v16, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    const/16 v16, 0x1

    :goto_7
    move/from16 v4, v16

    .line 2731
    .local v4, "exp":Z
    if-eqz v4, :cond_d

    .line 2732
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v14, v18, 0x1

    .local v14, "offset":I
    add-int v5, v5, v18

    .end local v18    # "offset":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2733
    const/16 v5, 0x2b

    if-eq v3, v5, :cond_c

    if-ne v3, v7, :cond_b

    goto :goto_9

    .line 2737
    .end local v14    # "offset":I
    .restart local v18    # "offset":I
    :cond_b
    :goto_8
    move/from16 v18, v14

    goto :goto_a

    .line 2734
    .end local v18    # "offset":I
    .restart local v14    # "offset":I
    :cond_c
    :goto_9
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v14, 0x1

    .local v7, "offset":I
    add-int/2addr v5, v14

    .end local v14    # "offset":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2737
    move/from16 v18, v7

    .end local v7    # "offset":I
    .restart local v18    # "offset":I
    :goto_a
    if-lt v3, v13, :cond_d

    const/16 v5, 0x39

    if-gt v3, v5, :cond_d

    .line 2738
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v14, v18, 0x1

    .restart local v14    # "offset":I
    add-int v7, v7, v18

    .end local v18    # "offset":I
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    goto :goto_8

    .line 2761
    .end local v14    # "offset":I
    .restart local v18    # "offset":I
    :cond_d
    if-eqz v6, :cond_f

    .line 2762
    const/16 v5, 0x22

    if-eq v3, v5, :cond_e

    .line 2763
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2764
    return v11

    .line 2766
    :cond_e
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v18, 0x1

    .restart local v7    # "offset":I
    add-int v5, v5, v18

    .end local v18    # "offset":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2768
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v11, 0x1

    add-int/2addr v5, v11

    .line 2769
    .local v5, "start":I
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v11, v7

    sub-int/2addr v11, v5

    add-int/lit8 v11, v11, -0x2

    .line 2772
    .local v11, "count":I
    move/from16 v18, v7

    goto :goto_b

    .line 2771
    .end local v5    # "start":I
    .end local v7    # "offset":I
    .end local v11    # "count":I
    .restart local v18    # "offset":I
    :cond_f
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2772
    .restart local v5    # "start":I
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v7, v7, v18

    sub-int/2addr v7, v5

    const/4 v11, 0x1

    add-int/lit8 v11, v7, -0x1

    .restart local v11    # "count":I
    :goto_b
    move v7, v11

    .line 2775
    .end local v11    # "count":I
    .local v7, "count":I
    if-nez v4, :cond_10

    const/16 v11, 0x11

    if-ge v7, v11, :cond_10

    .line 2776
    long-to-double v13, v1

    move-wide/from16 v25, v1

    long-to-double v1, v9

    .end local v1    # "intVal":J
    .local v25, "intVal":J
    div-double/2addr v13, v1

    double-to-float v1, v13

    .line 2777
    .local v1, "value":F
    if-eqz v8, :cond_11

    .line 2778
    neg-float v1, v1

    goto :goto_c

    .line 2781
    .end local v25    # "intVal":J
    .local v1, "intVal":J
    :cond_10
    move-wide/from16 v25, v1

    .end local v1    # "intVal":J
    .restart local v25    # "intVal":J
    invoke-virtual {v0, v5, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 2782
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 2784
    .end local v4    # "exp":Z
    .end local v5    # "start":I
    .end local v7    # "count":I
    .end local v9    # "power":J
    .end local v24    # "small":Z
    .end local v25    # "intVal":J
    .local v1, "value":F
    :cond_11
    :goto_c
    nop

    .line 2817
    nop

    .line 2820
    move/from16 v2, p1

    if-ne v3, v2, :cond_12

    .line 2821
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v4, v4, v18

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2822
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2823
    const/4 v4, 0x3

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2824
    const/16 v4, 0x10

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2825
    return v1

    .line 2827
    :cond_12
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2828
    return v1

    .line 2784
    .end local v1    # "value":F
    .end local v3    # "chLocal":C
    .end local v18    # "offset":I
    .restart local v2    # "chLocal":C
    .local v4, "offset":I
    :cond_13
    move/from16 v17, v2

    move/from16 v2, p1

    .end local v2    # "chLocal":C
    .local v17, "chLocal":C
    const/16 v1, 0x6e

    move/from16 v3, v17

    if-ne v3, v1, :cond_18

    .end local v17    # "chLocal":C
    .restart local v3    # "chLocal":C
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v5, 0x75

    if-ne v1, v5, :cond_18

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    const/4 v5, 0x1

    add-int/2addr v1, v5

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v5, 0x6c

    if-ne v1, v5, :cond_18

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_18

    .line 2785
    const/4 v1, 0x5

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2786
    const/4 v5, 0x0

    .line 2787
    .local v5, "value":F
    const/4 v7, 0x3

    add-int/2addr v4, v7

    .line 2788
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v4, 0x1

    .local v9, "offset":I
    add-int/2addr v7, v4

    .end local v4    # "offset":I
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2790
    if-eqz v6, :cond_14

    const/16 v4, 0x22

    if-ne v3, v4, :cond_14

    .line 2791
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v9, 0x1

    .local v7, "offset":I
    add-int/2addr v4, v9

    .end local v9    # "offset":I
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    goto :goto_d

    .line 2795
    .end local v7    # "offset":I
    .restart local v9    # "offset":I
    :cond_14
    move v7, v9

    .end local v9    # "offset":I
    .restart local v7    # "offset":I
    :goto_d
    const/16 v4, 0x2c

    if-ne v3, v4, :cond_15

    .line 2796
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v7

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2797
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2798
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2799
    const/16 v4, 0x10

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2800
    return v5

    .line 2801
    :cond_15
    const/16 v4, 0x10

    const/16 v9, 0x5d

    if-ne v3, v9, :cond_16

    .line 2802
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v7

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2803
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2804
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2805
    const/16 v1, 0xf

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2806
    return v5

    .line 2807
    :cond_16
    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 2808
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v7, 0x1

    .restart local v10    # "offset":I
    add-int/2addr v9, v7

    .end local v7    # "offset":I
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2809
    nop

    .line 2795
    move v7, v10

    goto :goto_d

    .line 2813
    .end local v10    # "offset":I
    .restart local v7    # "offset":I
    :cond_17
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2814
    return v11

    .line 2816
    .end local v5    # "value":F
    .end local v7    # "offset":I
    .restart local v4    # "offset":I
    :cond_18
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2817
    return v11
.end method

.method public final scanHex()V
    .locals 5

    .line 5086
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x78

    if-ne v0, v1, :cond_6

    .line 5089
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 5090
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_5

    .line 5094
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 5095
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 5097
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x1a

    if-ne v0, v1, :cond_0

    .line 5098
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 5099
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 5100
    return-void

    .line 5103
    :cond_0
    const/4 v0, 0x0

    .line 5104
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v3

    .line 5105
    .local v3, "ch":C
    const/16 v4, 0x30

    if-lt v3, v4, :cond_1

    const/16 v4, 0x39

    if-le v3, v4, :cond_2

    :cond_1
    const/16 v4, 0x41

    if-lt v3, v4, :cond_3

    const/16 v4, 0x46

    if-gt v3, v4, :cond_3

    .line 5106
    :cond_2
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5107
    nop

    .line 5103
    .end local v3    # "ch":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5108
    .restart local v3    # "ch":C
    :cond_3
    if-ne v3, v1, :cond_4

    .line 5109
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5110
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 5111
    nop

    .line 5116
    .end local v0    # "i":I
    .end local v3    # "ch":C
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 5117
    return-void

    .line 5113
    .restart local v0    # "i":I
    .restart local v3    # "ch":C
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal state. "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5091
    .end local v0    # "i":I
    .end local v3    # "ch":C
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal state. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5087
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal state. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanIdent()V
    .locals 2

    .line 4773
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 4774
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 4777
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4779
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4780
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4781
    goto :goto_0

    .line 4784
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 4786
    .local v0, "ident":Ljava/lang/String;
    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4787
    const/16 v1, 0x8

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 4788
    :cond_1
    const-string v1, "new"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4789
    const/16 v1, 0x9

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 4790
    :cond_2
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4791
    const/4 v1, 0x6

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 4792
    :cond_3
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4793
    const/4 v1, 0x7

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 4794
    :cond_4
    const-string v1, "undefined"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4795
    const/16 v1, 0x17

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 4796
    :cond_5
    const-string v1, "Set"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4797
    const/16 v1, 0x15

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 4798
    :cond_6
    const-string v1, "TreeSet"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4799
    const/16 v1, 0x16

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 4801
    :cond_7
    const/16 v1, 0x12

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4803
    :goto_1
    return-void
.end method

.method public scanInt(C)I
    .locals 13
    .param p1, "expectNext"    # C

    .line 2149
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2151
    const/4 v1, 0x0

    .line 2152
    .local v1, "offset":I
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v1, 0x1

    .local v3, "offset":I
    add-int/2addr v2, v1

    .end local v1    # "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2154
    .local v1, "chLocal":C
    const/16 v2, 0x22

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v0

    .line 2155
    .local v5, "quote":Z
    :goto_0
    if-eqz v5, :cond_1

    .line 2156
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v3, 0x1

    .local v7, "offset":I
    add-int/2addr v6, v3

    .end local v3    # "offset":I
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2159
    move v3, v7

    .end local v7    # "offset":I
    .restart local v3    # "offset":I
    :cond_1
    const/16 v6, 0x2d

    if-ne v1, v6, :cond_2

    move v6, v4

    goto :goto_1

    :cond_2
    move v6, v0

    .line 2160
    .local v6, "negative":Z
    :goto_1
    if-eqz v6, :cond_3

    .line 2161
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v3, 0x1

    .local v8, "offset":I
    add-int/2addr v7, v3

    .end local v3    # "offset":I
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2165
    move v3, v8

    .end local v8    # "offset":I
    .restart local v3    # "offset":I
    :cond_3
    const/16 v7, 0x10

    const/4 v8, 0x3

    const/16 v9, 0x30

    const/4 v10, -0x1

    if-lt v1, v9, :cond_b

    const/16 v11, 0x39

    if-gt v1, v11, :cond_b

    .line 2166
    add-int/lit8 v2, v1, -0x30

    .line 2168
    .local v2, "value":I
    :goto_2
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v3, 0x1

    .local v12, "offset":I
    add-int/2addr v4, v3

    .end local v3    # "offset":I
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2169
    if-lt v1, v9, :cond_4

    if-gt v1, v11, :cond_4

    .line 2170
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v4, v1, -0x30

    add-int v2, v3, v4

    .line 2166
    move v3, v12

    goto :goto_2

    .line 2171
    :cond_4
    const/16 v3, 0x2e

    if-ne v1, v3, :cond_5

    .line 2172
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2173
    return v0

    .line 2178
    :cond_5
    if-gez v2, :cond_6

    .line 2179
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2180
    return v0

    .line 2215
    :cond_6
    :goto_3
    nop

    .line 2219
    if-ne v1, p1, :cond_8

    .line 2220
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v12

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2221
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2222
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2223
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2224
    if-eqz v6, :cond_7

    neg-int v0, v2

    goto :goto_4

    :cond_7
    move v0, v2

    :goto_4
    return v0

    .line 2226
    :cond_8
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2227
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v12, 0x1

    .restart local v3    # "offset":I
    add-int/2addr v0, v12

    .end local v12    # "offset":I
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2228
    nop

    .line 2215
    move v12, v3

    goto :goto_3

    .line 2230
    .end local v3    # "offset":I
    .restart local v12    # "offset":I
    :cond_9
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2231
    if-eqz v6, :cond_a

    neg-int v0, v2

    goto :goto_5

    :cond_a
    move v0, v2

    :goto_5
    return v0

    .line 2182
    .end local v2    # "value":I
    .end local v12    # "offset":I
    .restart local v3    # "offset":I
    :cond_b
    const/16 v9, 0x6e

    if-ne v1, v9, :cond_10

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v9, v3

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    const/16 v11, 0x75

    if-ne v9, v11, :cond_10

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v9, v3

    add-int/2addr v9, v4

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v9, 0x6c

    if-ne v4, v9, :cond_10

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_10

    .line 2183
    const/4 v4, 0x5

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2184
    const/4 v9, 0x0

    .line 2185
    .local v9, "value":I
    add-int/2addr v3, v8

    .line 2186
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v3, 0x1

    .local v11, "offset":I
    add-int/2addr v8, v3

    .end local v3    # "offset":I
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2188
    if-eqz v5, :cond_c

    if-ne v1, v2, :cond_c

    .line 2189
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v11, 0x1

    .restart local v3    # "offset":I
    add-int/2addr v2, v11

    .end local v11    # "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    goto :goto_6

    .line 2193
    .end local v3    # "offset":I
    .restart local v11    # "offset":I
    :cond_c
    move v3, v11

    .end local v11    # "offset":I
    .restart local v3    # "offset":I
    :goto_6
    const/16 v2, 0x2c

    if-ne v1, v2, :cond_d

    .line 2194
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2195
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2196
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2197
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2198
    return v9

    .line 2199
    :cond_d
    const/16 v2, 0x5d

    if-ne v1, v2, :cond_e

    .line 2200
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2201
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2202
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2203
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2204
    return v9

    .line 2205
    :cond_e
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2206
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v3, 0x1

    .restart local v8    # "offset":I
    add-int/2addr v2, v3

    .end local v3    # "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2207
    nop

    .line 2193
    move v3, v8

    goto :goto_6

    .line 2211
    .end local v8    # "offset":I
    .restart local v3    # "offset":I
    :cond_f
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2212
    return v0

    .line 2214
    .end local v9    # "value":I
    :cond_10
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2215
    return v0
.end method

.method public scanLong(C)J
    .locals 22
    .param p1, "expectNextChar"    # C

    move-object/from16 v0, p0

    .line 2411
    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2413
    const/4 v2, 0x0

    .line 2414
    .local v2, "offset":I
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v2, 0x1

    .local v4, "offset":I
    add-int/2addr v3, v2

    .end local v2    # "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2415
    .local v2, "chLocal":C
    const/16 v3, 0x22

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v1

    .line 2416
    .local v6, "quote":Z
    :goto_0
    if-eqz v6, :cond_1

    .line 2417
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v4, 0x1

    .local v8, "offset":I
    add-int/2addr v7, v4

    .end local v4    # "offset":I
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2420
    move v4, v8

    .end local v8    # "offset":I
    .restart local v4    # "offset":I
    :cond_1
    const/16 v7, 0x2d

    if-ne v2, v7, :cond_2

    move v7, v5

    goto :goto_1

    :cond_2
    move v7, v1

    .line 2421
    .local v7, "negative":Z
    :goto_1
    if-eqz v7, :cond_3

    .line 2422
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v4, 0x1

    .local v9, "offset":I
    add-int/2addr v8, v4

    .end local v4    # "offset":I
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2426
    move v4, v9

    .end local v9    # "offset":I
    .restart local v4    # "offset":I
    :cond_3
    const/16 v8, 0x10

    const/4 v9, 0x3

    const/16 v10, 0x30

    const-wide/16 v11, 0x0

    const/4 v13, -0x1

    if-lt v2, v10, :cond_e

    const/16 v14, 0x39

    if-gt v2, v14, :cond_e

    .line 2427
    add-int/lit8 v15, v2, -0x30

    move/from16 v17, v2

    int-to-long v1, v15

    .line 2429
    .end local v2    # "chLocal":C
    .local v1, "value":J
    .local v17, "chLocal":C
    :goto_2
    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v18, v4, 0x1

    .local v18, "offset":I
    add-int/2addr v15, v4

    .end local v4    # "offset":I
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    .line 2430
    .end local v17    # "chLocal":C
    .local v4, "chLocal":C
    if-lt v4, v10, :cond_4

    if-gt v4, v14, :cond_4

    .line 2431
    const-wide/16 v19, 0xa

    mul-long v19, v19, v1

    add-int/lit8 v15, v4, -0x30

    int-to-long v14, v15

    add-long v1, v19, v14

    .line 2427
    move/from16 v17, v4

    move/from16 v4, v18

    const/16 v14, 0x39

    goto :goto_2

    .line 2432
    :cond_4
    const/16 v10, 0x2e

    if-ne v4, v10, :cond_5

    .line 2433
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2434
    return-wide v11

    .line 2439
    :cond_5
    cmp-long v10, v1, v11

    if-gez v10, :cond_7

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v10, v1, v14

    if-nez v10, :cond_6

    if-eqz v7, :cond_6

    goto :goto_3

    :cond_6
    const/16 v16, 0x0

    goto :goto_4

    :cond_7
    :goto_3
    move/from16 v16, v5

    :goto_4
    move/from16 v5, v16

    .line 2440
    .local v5, "valid":Z
    if-eqz v5, :cond_d

    .line 2444
    .end local v5    # "valid":Z
    nop

    .line 2477
    nop

    .line 2480
    if-eqz v6, :cond_9

    .line 2481
    if-eq v4, v3, :cond_8

    .line 2482
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2483
    return-wide v11

    .line 2485
    :cond_8
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v18, 0x1

    .local v5, "offset":I
    add-int v3, v3, v18

    .end local v18    # "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    .line 2490
    .end local v5    # "offset":I
    .restart local v18    # "offset":I
    :goto_5
    move/from16 v18, v5

    :cond_9
    move/from16 v10, p1

    if-ne v4, v10, :cond_b

    .line 2491
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v3, v3, v18

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2492
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2493
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2494
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2495
    if-eqz v7, :cond_a

    neg-long v8, v1

    goto :goto_6

    :cond_a
    move-wide v8, v1

    :goto_6
    return-wide v8

    .line 2497
    :cond_b
    invoke-static {v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2498
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v18, 0x1

    .restart local v5    # "offset":I
    add-int v3, v3, v18

    .end local v18    # "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    .line 2499
    goto :goto_5

    .line 2502
    .end local v5    # "offset":I
    .restart local v18    # "offset":I
    :cond_c
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2503
    return-wide v1

    .line 2441
    .local v5, "valid":Z
    :cond_d
    move/from16 v10, p1

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v18, -0x1

    invoke-virtual {v0, v3, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v3

    .line 2442
    .local v3, "val":Ljava/lang/String;
    new-instance v8, Ljava/lang/NumberFormatException;

    invoke-direct {v8, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2444
    .end local v1    # "value":J
    .end local v3    # "val":Ljava/lang/String;
    .end local v5    # "valid":Z
    .end local v18    # "offset":I
    .restart local v2    # "chLocal":C
    .local v4, "offset":I
    :cond_e
    move/from16 v10, p1

    move/from16 v17, v2

    .end local v2    # "chLocal":C
    .restart local v17    # "chLocal":C
    const/16 v1, 0x6e

    move/from16 v2, v17

    if-ne v2, v1, :cond_13

    .end local v17    # "chLocal":C
    .restart local v2    # "chLocal":C
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v14, 0x75

    if-ne v1, v14, :cond_13

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    add-int/2addr v1, v5

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v5, 0x6c

    if-ne v1, v5, :cond_13

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_13

    .line 2445
    const/4 v1, 0x5

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2446
    const-wide/16 v14, 0x0

    .line 2447
    .local v14, "value":J
    add-int/2addr v4, v9

    .line 2448
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v4, 0x1

    .restart local v9    # "offset":I
    add-int/2addr v5, v4

    .end local v4    # "offset":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2450
    if-eqz v6, :cond_f

    if-ne v2, v3, :cond_f

    .line 2451
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v9, 0x1

    .restart local v4    # "offset":I
    add-int/2addr v3, v9

    .end local v9    # "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    goto :goto_7

    .line 2455
    .end local v4    # "offset":I
    .restart local v9    # "offset":I
    :cond_f
    move v4, v9

    .end local v9    # "offset":I
    .restart local v4    # "offset":I
    :goto_7
    const/16 v3, 0x2c

    if-ne v2, v3, :cond_10

    .line 2456
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2457
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2458
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2459
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2460
    return-wide v14

    .line 2461
    :cond_10
    const/16 v3, 0x5d

    if-ne v2, v3, :cond_11

    .line 2462
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2463
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2464
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2465
    const/16 v1, 0xf

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2466
    return-wide v14

    .line 2467
    :cond_11
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2468
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v4, 0x1

    .local v5, "offset":I
    add-int/2addr v3, v4

    .end local v4    # "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2469
    nop

    .line 2455
    move v4, v5

    goto :goto_7

    .line 2473
    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    :cond_12
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2474
    return-wide v11

    .line 2476
    .end local v14    # "value":J
    :cond_13
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2477
    return-wide v11
.end method

.method public final scanNullOrNew()V
    .locals 1

    .line 4661
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNullOrNew(Z)V

    .line 4662
    return-void
.end method

.method public final scanNullOrNew(Z)V
    .locals 12
    .param p1, "acceptColon"    # Z

    .line 4665
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_a

    .line 4668
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4670
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x75

    const/16 v2, 0xc

    const/16 v3, 0x1a

    const/16 v4, 0xd

    const/16 v5, 0xa

    const/16 v6, 0x5d

    const/16 v7, 0x7d

    const/16 v8, 0x2c

    const/16 v9, 0x20

    const/16 v10, 0x8

    const/16 v11, 0x9

    if-ne v0, v1, :cond_5

    .line 4671
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4672
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_4

    .line 4675
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4677
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v1, :cond_3

    .line 4680
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4683
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v9, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v8, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v7, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v6, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v5, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v4, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v11, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v3, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_2

    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v2, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v10, :cond_1

    goto :goto_0

    .line 4697
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan null error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4695
    :cond_2
    :goto_0
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4699
    return-void

    .line 4678
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse null"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4673
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse null"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4702
    :cond_5
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x65

    if-ne v0, v1, :cond_9

    .line 4705
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4707
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x77

    if-ne v0, v1, :cond_8

    .line 4710
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4712
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v9, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v8, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v7, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v6, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v5, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v4, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v11, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v3, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v2, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v10, :cond_6

    goto :goto_1

    .line 4724
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan new error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4722
    :cond_7
    :goto_1
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4726
    return-void

    .line 4708
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse new"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4703
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse new"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4666
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse null or new"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanNumber()V
    .locals 8

    .line 5120
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 5122
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    .line 5123
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5124
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 5128
    :cond_0
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x39

    const/16 v3, 0x30

    if-lt v0, v3, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-gt v0, v2, :cond_1

    .line 5129
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5133
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 5136
    :cond_1
    const/4 v0, 0x0

    .line 5138
    .local v0, "isDouble":Z
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_2

    .line 5139
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5140
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 5141
    const/4 v0, 0x1

    .line 5144
    :goto_1
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v4, v3, :cond_2

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-gt v4, v2, :cond_2

    .line 5145
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5149
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    .line 5153
    :cond_2
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v5, 0x4c

    if-ne v4, v5, :cond_3

    .line 5154
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5155
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_3

    .line 5156
    :cond_3
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v5, 0x53

    if-ne v4, v5, :cond_4

    .line 5157
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5158
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_3

    .line 5159
    :cond_4
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v5, 0x42

    if-ne v4, v5, :cond_5

    .line 5160
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5161
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_3

    .line 5162
    :cond_5
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v5, 0x46

    if-ne v4, v5, :cond_6

    .line 5163
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5164
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 5165
    const/4 v0, 0x1

    goto :goto_3

    .line 5166
    :cond_6
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v6, 0x44

    if-ne v4, v6, :cond_7

    .line 5167
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5168
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 5169
    const/4 v0, 0x1

    goto :goto_3

    .line 5170
    :cond_7
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v7, 0x65

    if-eq v4, v7, :cond_8

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v7, 0x45

    if-ne v4, v7, :cond_e

    .line 5171
    :cond_8
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5172
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 5174
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v7, 0x2b

    if-eq v4, v7, :cond_9

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v4, v1, :cond_a

    .line 5175
    :cond_9
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5176
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 5180
    :cond_a
    :goto_2
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v1, v3, :cond_b

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-gt v1, v2, :cond_b

    .line 5181
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5185
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_2

    .line 5188
    :cond_b
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v1, v6, :cond_c

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v5, :cond_d

    .line 5189
    :cond_c
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5190
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 5193
    :cond_d
    const/4 v0, 0x1

    .line 5196
    :cond_e
    :goto_3
    if-eqz v0, :cond_f

    .line 5197
    const/4 v1, 0x3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_4

    .line 5199
    :cond_f
    const/4 v1, 0x2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 5201
    :goto_4
    return-void
.end method

.method public scanString(C)Ljava/lang/String;
    .locals 12
    .param p1, "expectNextChar"    # C

    .line 1335
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1337
    const/4 v0, 0x0

    .line 1338
    .local v0, "offset":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v0, 0x1

    .local v2, "offset":I
    add-int/2addr v1, v0

    .end local v0    # "offset":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1340
    .local v0, "chLocal":C
    const/4 v1, 0x3

    const/4 v3, -0x1

    const/16 v4, 0x6e

    if-ne v0, v4, :cond_2

    .line 1341
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v2

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v5, 0x75

    const/4 v6, 0x0

    if-ne v4, v5, :cond_1

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v5, 0x6c

    if-ne v4, v5, :cond_1

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_1

    .line 1342
    add-int/2addr v2, v1

    .line 1343
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v2, 0x1

    .local v5, "offset":I
    add-int/2addr v4, v2

    .end local v2    # "offset":I
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1349
    if-ne v0, p1, :cond_0

    .line 1350
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1351
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1352
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1353
    return-object v6

    .line 1355
    :cond_0
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1356
    return-object v6

    .line 1345
    .end local v5    # "offset":I
    .restart local v2    # "offset":I
    :cond_1
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1346
    return-object v6

    .line 1362
    :cond_2
    :goto_0
    const/16 v4, 0x22

    if-ne v0, v4, :cond_a

    .line 1363
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v2

    .line 1364
    .local v5, "startIndex":I
    invoke-virtual {p0, v4, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v6

    .line 1365
    .local v6, "endIndex":I
    if-eq v6, v3, :cond_9

    .line 1369
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v2

    sub-int v8, v6, v5

    invoke-virtual {p0, v7, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v7

    .line 1370
    .local v7, "stringVal":Ljava/lang/String;
    const/16 v8, 0x5c

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-eq v9, v3, :cond_5

    .line 1372
    :goto_1
    const/4 v9, 0x0

    .line 1373
    .local v9, "slashCount":I
    add-int/lit8 v10, v6, -0x1

    .local v10, "i":I
    :goto_2
    if-ltz v10, :cond_3

    .line 1374
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    if-ne v11, v8, :cond_3

    .line 1375
    add-int/lit8 v9, v9, 0x1

    .line 1373
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 1380
    .end local v10    # "i":I
    :cond_3
    rem-int/lit8 v10, v9, 0x2

    if-nez v10, :cond_4

    .line 1381
    nop

    .line 1386
    .end local v9    # "slashCount":I
    sub-int v4, v6, v5

    .line 1387
    .local v4, "chars_len":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v8, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v8

    .line 1389
    .local v8, "chars":[C
    invoke-static {v8, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v7

    .end local v4    # "chars_len":I
    .end local v8    # "chars":[C
    goto :goto_3

    .line 1383
    .restart local v9    # "slashCount":I
    :cond_4
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {p0, v4, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v6

    .line 1384
    .end local v9    # "slashCount":I
    goto :goto_1

    .line 1392
    :cond_5
    :goto_3
    sub-int v4, v6, v5

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 1393
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v2, 0x1

    .local v8, "offset":I
    add-int/2addr v4, v2

    .end local v2    # "offset":I
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1394
    move-object v2, v7

    .line 1395
    .local v2, "strVal":Ljava/lang/String;
    nop

    .line 1402
    .end local v5    # "startIndex":I
    .end local v6    # "endIndex":I
    .end local v7    # "stringVal":Ljava/lang/String;
    :goto_4
    nop

    .line 1407
    if-ne v0, p1, :cond_6

    .line 1408
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v8

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1409
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1410
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1411
    const/16 v1, 0x10

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1412
    return-object v2

    .line 1413
    :cond_6
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1414
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v8, 0x1

    .local v5, "offset":I
    add-int/2addr v4, v8

    .end local v8    # "offset":I
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1415
    nop

    .line 1402
    move v8, v5

    goto :goto_4

    .line 1417
    .end local v5    # "offset":I
    .restart local v8    # "offset":I
    :cond_7
    const/16 v1, 0x5d

    if-ne v0, v1, :cond_8

    .line 1418
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v8

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1419
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1420
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1422
    :cond_8
    return-object v2

    .line 1366
    .end local v8    # "offset":I
    .local v2, "offset":I
    .local v5, "startIndex":I
    .restart local v6    # "endIndex":I
    :cond_9
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "unclosed str"

    invoke-direct {v1, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1396
    .end local v5    # "startIndex":I
    .end local v6    # "endIndex":I
    :cond_a
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1397
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v2, 0x1

    .local v5, "offset":I
    add-int/2addr v4, v2

    .end local v2    # "offset":I
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1398
    nop

    .line 1362
    move v2, v5

    goto/16 :goto_0

    .line 1400
    .end local v5    # "offset":I
    .restart local v2    # "offset":I
    :cond_b
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1402
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final scanString()V
    .locals 13

    .line 878
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 879
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 882
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    .line 884
    .local v1, "ch":C
    const/16 v2, 0x22

    const/4 v3, 0x4

    if-ne v1, v2, :cond_0

    .line 885
    nop

    .line 1017
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1018
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1019
    return-void

    .line 888
    :cond_0
    const/16 v4, 0x1a

    if-ne v1, v4, :cond_2

    .line 889
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEOF()Z

    move-result v2

    if-nez v2, :cond_1

    .line 890
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 891
    goto :goto_0

    .line 893
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unclosed string : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 896
    :cond_2
    const/16 v4, 0x5c

    const/4 v5, 0x1

    if-ne v1, v4, :cond_f

    .line 897
    iget-boolean v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    const/4 v7, 0x2

    if-nez v6, :cond_5

    .line 898
    iput-boolean v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 900
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v8, v8

    if-lt v6, v8, :cond_4

    .line 901
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v6, v6

    mul-int/2addr v6, v7

    .line 902
    .local v6, "newCapcity":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    if-le v8, v6, :cond_3

    .line 903
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 905
    :cond_3
    new-array v8, v6, [C

    .line 906
    .local v8, "newsbuf":[C
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v10, v10

    invoke-static {v9, v0, v8, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 907
    iput-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 910
    .end local v6    # "newCapcity":I
    .end local v8    # "newsbuf":[C
    :cond_4
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v6, v5

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    invoke-virtual {p0, v6, v8, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->copyTo(II[C)V

    .line 915
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    .line 917
    const/4 v6, 0x3

    packed-switch v1, :pswitch_data_0

    const/16 v8, 0x10

    packed-switch v1, :pswitch_data_1

    sparse-switch v1, :sswitch_data_0

    .line 999
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1000
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unclosed string : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 974
    :sswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v2

    .line 975
    .local v2, "x1":C
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v3

    .line 977
    .local v3, "x2":C
    const/16 v4, 0x46

    const/16 v6, 0x41

    const/16 v7, 0x66

    const/16 v9, 0x61

    const/16 v10, 0x39

    const/16 v11, 0x30

    if-lt v2, v11, :cond_6

    if-le v2, v10, :cond_8

    :cond_6
    if-lt v2, v9, :cond_7

    if-le v2, v7, :cond_8

    :cond_7
    if-lt v2, v6, :cond_9

    if-gt v2, v4, :cond_9

    :cond_8
    move v12, v5

    goto :goto_1

    :cond_9
    move v12, v0

    .line 980
    .local v12, "hex1":Z
    :goto_1
    if-lt v3, v11, :cond_a

    if-le v3, v10, :cond_c

    :cond_a
    if-lt v3, v9, :cond_b

    if-le v3, v7, :cond_c

    :cond_b
    if-lt v3, v6, :cond_d

    if-gt v3, v4, :cond_d

    :cond_c
    goto :goto_2

    :cond_d
    move v5, v0

    :goto_2
    move v4, v5

    .line 983
    .local v4, "hex2":Z
    if-eqz v12, :cond_e

    if-eqz v4, :cond_e

    .line 987
    sget-object v5, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v5, v5, v2

    mul-int/2addr v5, v8

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v6, v6, v3

    add-int/2addr v5, v6

    int-to-char v5, v5

    .line 988
    .local v5, "x_char":C
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 989
    goto/16 :goto_0

    .line 984
    .end local v5    # "x_char":C
    :cond_e
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid escape character \\x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 959
    .end local v2    # "x1":C
    .end local v3    # "x2":C
    .end local v4    # "hex2":Z
    .end local v12    # "hex1":Z
    :sswitch_1
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 960
    goto/16 :goto_0

    .line 949
    :sswitch_2
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 950
    goto/16 :goto_0

    .line 943
    :sswitch_3
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 944
    goto/16 :goto_0

    .line 971
    :sswitch_4
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 972
    goto/16 :goto_0

    .line 956
    :sswitch_5
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 957
    goto/16 :goto_0

    .line 965
    :sswitch_6
    const/16 v2, 0x27

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 966
    goto/16 :goto_0

    .line 962
    :sswitch_7
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 963
    goto/16 :goto_0

    .line 952
    :pswitch_0
    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 953
    goto/16 :goto_0

    .line 991
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v2

    .line 992
    .local v2, "u1":C
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    .line 993
    .local v4, "u2":C
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v9

    .line 994
    .local v9, "u3":C
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v10

    .line 995
    .local v10, "u4":C
    new-instance v11, Ljava/lang/String;

    new-array v3, v3, [C

    aput-char v2, v3, v0

    aput-char v4, v3, v5

    aput-char v9, v3, v7

    aput-char v10, v3, v6

    invoke-direct {v11, v3}, Ljava/lang/String;-><init>([C)V

    invoke-static {v11, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 996
    .local v3, "val":I
    int-to-char v5, v3

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 997
    goto/16 :goto_0

    .line 946
    .end local v2    # "u1":C
    .end local v3    # "val":I
    .end local v4    # "u2":C
    .end local v9    # "u3":C
    .end local v10    # "u4":C
    :pswitch_2
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 947
    goto/16 :goto_0

    .line 940
    :pswitch_3
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 941
    goto/16 :goto_0

    .line 937
    :pswitch_4
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 938
    goto/16 :goto_0

    .line 934
    :pswitch_5
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 935
    goto/16 :goto_0

    .line 931
    :pswitch_6
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 932
    goto/16 :goto_0

    .line 928
    :pswitch_7
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 929
    goto/16 :goto_0

    .line 925
    :pswitch_8
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 926
    goto/16 :goto_0

    .line 922
    :pswitch_9
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 923
    goto/16 :goto_0

    .line 919
    :pswitch_a
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 920
    goto/16 :goto_0

    .line 968
    :pswitch_b
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 969
    goto/16 :goto_0

    .line 1005
    :cond_f
    iget-boolean v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-nez v2, :cond_10

    .line 1006
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 1007
    goto/16 :goto_0

    .line 1010
    :cond_10
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v3, v3

    if-ne v2, v3, :cond_11

    .line 1011
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 1013
    :cond_11
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char v1, v2, v3

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_7
        0x27 -> :sswitch_6
        0x46 -> :sswitch_5
        0x5c -> :sswitch_4
        0x62 -> :sswitch_3
        0x66 -> :sswitch_5
        0x6e -> :sswitch_2
        0x72 -> :sswitch_1
        0x78 -> :sswitch_0
    .end sparse-switch
.end method

.method public scanStringArray(Ljava/util/Collection;C)V
    .locals 19
    .param p2, "seperator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;C)V"
        }
    .end annotation

    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1805
    move/from16 v2, p2

    const/4 v3, 0x0

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1807
    const/4 v3, 0x0

    .line 1808
    .local v3, "offset":I
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v3, 0x1

    .local v5, "offset":I
    add-int/2addr v4, v3

    .end local v3    # "offset":I
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 1810
    .local v3, "chLocal":C
    const/16 v4, 0x75

    const/16 v6, 0x6e

    const/4 v7, 0x3

    const/16 v8, 0x6c

    if-ne v3, v6, :cond_0

    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v9, v5

    .line 1811
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    if-ne v9, v4, :cond_0

    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v9, v5

    add-int/lit8 v9, v9, 0x1

    .line 1812
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_0

    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v9, v5

    add-int/lit8 v9, v9, 0x2

    .line 1813
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_0

    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v9, v5

    add-int/2addr v9, v7

    .line 1814
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    if-ne v9, v2, :cond_0

    .line 1816
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v6, 0x5

    add-int/2addr v4, v6

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1817
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1818
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1819
    return-void

    .line 1822
    :cond_0
    const/16 v9, 0x5b

    const/4 v10, -0x1

    if-eq v3, v9, :cond_1

    .line 1823
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1824
    return-void

    .line 1827
    :cond_1
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v5, 0x1

    .local v11, "offset":I
    add-int/2addr v9, v5

    .end local v5    # "offset":I
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 1830
    :goto_0
    const/16 v5, 0x5d

    if-ne v3, v6, :cond_2

    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v9, v11

    .line 1831
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    if-ne v9, v4, :cond_2

    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v9, v11

    add-int/lit8 v9, v9, 0x1

    .line 1832
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_2

    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v9, v11

    add-int/lit8 v9, v9, 0x2

    .line 1833
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_2

    .line 1834
    add-int/lit8 v11, v11, 0x3

    .line 1835
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v11, 0x1

    .local v12, "offset":I
    add-int/2addr v9, v11

    .end local v11    # "offset":I
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 1836
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1837
    .end local v12    # "offset":I
    .restart local v11    # "offset":I
    :cond_2
    if-ne v3, v5, :cond_3

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v9

    if-nez v9, :cond_3

    .line 1838
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v11, 0x1

    .restart local v5    # "offset":I
    add-int/2addr v4, v11

    .end local v11    # "offset":I
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 1839
    goto/16 :goto_5

    .line 1840
    .end local v5    # "offset":I
    .restart local v11    # "offset":I
    :cond_3
    const/16 v9, 0x22

    if-eq v3, v9, :cond_4

    .line 1841
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1842
    return-void

    .line 1844
    :cond_4
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v12, v11

    .line 1845
    .local v12, "startIndex":I
    invoke-virtual {v0, v9, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v13

    .line 1846
    .local v13, "endIndex":I
    if-eq v13, v10, :cond_b

    .line 1850
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v14, v11

    sub-int v15, v13, v12

    invoke-virtual {v0, v14, v15}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v14

    .line 1851
    .local v14, "stringVal":Ljava/lang/String;
    const/16 v15, 0x5c

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v10, :cond_7

    .line 1853
    :goto_1
    const/4 v4, 0x0

    .line 1854
    .local v4, "slashCount":I
    add-int/lit8 v16, v13, -0x1

    .local v16, "i":I
    :goto_2
    move/from16 v17, v16

    .end local v16    # "i":I
    .local v17, "i":I
    move/from16 v6, v17

    if-ltz v6, :cond_5

    .line 1855
    .end local v17    # "i":I
    .local v6, "i":I
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    if-ne v8, v15, :cond_5

    .line 1856
    add-int/lit8 v4, v4, 0x1

    .line 1854
    add-int/lit8 v16, v6, -0x1

    .end local v6    # "i":I
    .restart local v16    # "i":I
    const/16 v6, 0x6e

    const/16 v8, 0x6c

    goto :goto_2

    .line 1861
    .end local v16    # "i":I
    :cond_5
    rem-int/lit8 v6, v4, 0x2

    if-nez v6, :cond_6

    .line 1862
    nop

    .line 1867
    .end local v4    # "slashCount":I
    sub-int v4, v13, v12

    .line 1868
    .local v4, "chars_len":I
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v11

    invoke-virtual {v0, v6, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v6

    .line 1870
    .local v6, "chars":[C
    invoke-static {v6, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v14

    .end local v4    # "chars_len":I
    .end local v6    # "chars":[C
    goto :goto_3

    .line 1864
    .local v4, "slashCount":I
    :cond_6
    add-int/lit8 v6, v13, 0x1

    invoke-virtual {v0, v9, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v13

    .line 1865
    .end local v4    # "slashCount":I
    nop

    .line 1853
    const/16 v6, 0x6e

    const/16 v8, 0x6c

    goto :goto_1

    .line 1873
    :cond_7
    :goto_3
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v11

    sub-int v4, v13, v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v11, v4

    .line 1874
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v11, 0x1

    .local v6, "offset":I
    add-int/2addr v4, v11

    .end local v11    # "offset":I
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 1875
    invoke-interface {v1, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1878
    .end local v12    # "startIndex":I
    .end local v13    # "endIndex":I
    .end local v14    # "stringVal":Ljava/lang/String;
    move v12, v6

    .end local v6    # "offset":I
    .local v12, "offset":I
    :goto_4
    const/16 v4, 0x2c

    if-ne v3, v4, :cond_8

    .line 1879
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v12, 0x1

    .restart local v11    # "offset":I
    add-int/2addr v4, v12

    .end local v12    # "offset":I
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 1880
    nop

    .line 1830
    const/16 v4, 0x75

    const/16 v6, 0x6e

    const/16 v8, 0x6c

    goto/16 :goto_0

    .line 1883
    .end local v11    # "offset":I
    .restart local v12    # "offset":I
    :cond_8
    if-ne v3, v5, :cond_a

    .line 1884
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v12, 0x1

    .restart local v5    # "offset":I
    add-int/2addr v4, v12

    .end local v12    # "offset":I
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 1885
    nop

    .line 1892
    :goto_5
    if-ne v3, v2, :cond_9

    .line 1893
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v5

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1894
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1895
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1896
    return-void

    .line 1898
    :cond_9
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1899
    return-void

    .line 1888
    .end local v5    # "offset":I
    .restart local v12    # "offset":I
    :cond_a
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1889
    return-void

    .line 1847
    .restart local v11    # "offset":I
    .local v12, "startIndex":I
    .restart local v13    # "endIndex":I
    :cond_b
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "unclosed str"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 3
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 597
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 599
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 600
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 603
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_2

    .line 604
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 608
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 605
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 611
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7d

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 612
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 613
    const/16 v0, 0xd

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 614
    return-object v2

    .line 617
    :cond_3
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_4

    .line 618
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 619
    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 620
    return-object v2

    .line 623
    :cond_4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_5

    .line 624
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 625
    return-object v2

    .line 628
    :cond_5
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 632
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 629
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
    .locals 18
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;
    .param p2, "quote"    # C

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 640
    const/4 v2, 0x0

    .line 642
    .local v2, "hash":I
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 643
    const/4 v3, 0x0

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 644
    move v4, v2

    move v2, v3

    .line 647
    .local v2, "hasSpecial":Z
    .local v4, "hash":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v5

    .line 649
    .local v5, "chLocal":C
    const/4 v6, 0x4

    const/4 v7, 0x1

    move/from16 v8, p2

    if-ne v5, v8, :cond_2

    .line 650
    nop

    .line 791
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 794
    if-nez v2, :cond_1

    .line 797
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v9, -0x1

    if-ne v6, v9, :cond_0

    .line 798
    const/4 v6, 0x0

    .local v6, "offset":I
    goto :goto_1

    .line 800
    .end local v6    # "offset":I
    :cond_0
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v6, v7

    .line 802
    .restart local v6    # "offset":I
    :goto_1
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {v0, v6, v7, v4, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v6

    .line 803
    .local v6, "value":Ljava/lang/String;
    goto :goto_2

    .line 804
    .end local v6    # "value":Ljava/lang/String;
    :cond_1
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {v1, v6, v3, v7, v4}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object v6

    .line 807
    .restart local v6    # "value":Ljava/lang/String;
    :goto_2
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 808
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 810
    return-object v6

    .line 653
    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    const/16 v9, 0x1a

    if-eq v5, v9, :cond_9

    .line 657
    const/16 v9, 0x5c

    const/16 v10, 0x1f

    if-ne v5, v9, :cond_6

    .line 658
    const/4 v11, 0x2

    if-nez v2, :cond_5

    .line 659
    const/4 v2, 0x1

    .line 661
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v13, v13

    if-lt v12, v13, :cond_4

    .line 662
    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v12, v12

    mul-int/2addr v12, v11

    .line 663
    .local v12, "newCapcity":I
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    if-le v13, v12, :cond_3

    .line 664
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 666
    :cond_3
    new-array v13, v12, [C

    .line 667
    .local v13, "newsbuf":[C
    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v15, v15

    invoke-static {v14, v3, v13, v3, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 668
    iput-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 673
    .end local v12    # "newCapcity":I
    .end local v13    # "newsbuf":[C
    :cond_4
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v12, v7

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {v0, v12, v13, v3, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->arrayCopy(I[CII)V

    .line 676
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v5

    .line 678
    const/4 v12, 0x3

    packed-switch v5, :pswitch_data_0

    const/16 v13, 0x10

    packed-switch v5, :pswitch_data_1

    sparse-switch v5, :sswitch_data_0

    .line 771
    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 772
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "unclosed.str.lit"

    invoke-direct {v3, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 753
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v6

    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 754
    .local v6, "x1":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v7

    iput-char v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 756
    .local v7, "x2":C
    sget-object v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v9, v9, v6

    mul-int/2addr v9, v13

    sget-object v11, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v11, v11, v7

    add-int/2addr v9, v11

    .line 757
    .local v9, "x_val":I
    int-to-char v11, v9

    .line 758
    .local v11, "x_char":C
    mul-int/2addr v10, v4

    add-int v4, v10, v11

    .line 759
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 760
    goto/16 :goto_0

    .line 733
    .end local v6    # "x1":C
    .end local v7    # "x2":C
    .end local v9    # "x_val":I
    .end local v11    # "x_char":C
    :sswitch_1
    mul-int/2addr v10, v4

    const/16 v6, 0xd

    add-int/lit8 v4, v10, 0xd

    .line 734
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 735
    goto/16 :goto_0

    .line 720
    :sswitch_2
    mul-int/2addr v10, v4

    const/16 v6, 0xa

    add-int/lit8 v4, v10, 0xa

    .line 721
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 722
    goto/16 :goto_0

    .line 712
    :sswitch_3
    mul-int/2addr v10, v4

    const/16 v6, 0x8

    add-int/lit8 v4, v10, 0x8

    .line 713
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 714
    goto/16 :goto_0

    .line 749
    :sswitch_4
    mul-int/2addr v10, v4

    add-int/lit8 v4, v10, 0x5c

    .line 750
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 751
    goto/16 :goto_0

    .line 729
    :sswitch_5
    mul-int/2addr v10, v4

    const/16 v6, 0xc

    add-int/lit8 v4, v10, 0xc

    .line 730
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 731
    goto/16 :goto_0

    .line 741
    :sswitch_6
    mul-int/2addr v10, v4

    const/16 v6, 0x27

    add-int/lit8 v4, v10, 0x27

    .line 742
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 743
    goto/16 :goto_0

    .line 737
    :sswitch_7
    mul-int/2addr v10, v4

    const/16 v6, 0x22

    add-int/lit8 v4, v10, 0x22

    .line 738
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 739
    goto/16 :goto_0

    .line 724
    :pswitch_0
    mul-int/2addr v10, v4

    const/16 v6, 0xb

    add-int/lit8 v4, v10, 0xb

    .line 725
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 726
    goto/16 :goto_0

    .line 762
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v9

    move v5, v9

    .line 763
    .local v9, "c1":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v14

    move v5, v14

    .line 764
    .local v14, "c2":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v15

    move v5, v15

    .line 765
    .local v15, "c3":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v16

    move/from16 v5, v16

    .line 766
    .local v16, "c4":C
    new-instance v10, Ljava/lang/String;

    new-array v6, v6, [C

    aput-char v9, v6, v3

    aput-char v14, v6, v7

    aput-char v15, v6, v11

    aput-char v16, v6, v12

    invoke-direct {v10, v6}, Ljava/lang/String;-><init>([C)V

    invoke-static {v10, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 767
    .local v6, "val":I
    const/16 v10, 0x1f

    mul-int/2addr v10, v4

    add-int v4, v10, v6

    .line 768
    int-to-char v7, v6

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 769
    goto/16 :goto_0

    .line 716
    .end local v6    # "val":I
    .end local v9    # "c1":C
    .end local v14    # "c2":C
    .end local v15    # "c3":C
    .end local v16    # "c4":C
    :pswitch_2
    mul-int/2addr v10, v4

    add-int/lit8 v4, v10, 0x9

    .line 717
    const/16 v6, 0x9

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 718
    goto/16 :goto_0

    .line 708
    :pswitch_3
    mul-int/2addr v10, v4

    add-int v4, v10, v5

    .line 709
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 710
    goto/16 :goto_0

    .line 704
    :pswitch_4
    mul-int/2addr v10, v4

    add-int v4, v10, v5

    .line 705
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 706
    goto/16 :goto_0

    .line 700
    :pswitch_5
    mul-int/2addr v10, v4

    add-int v4, v10, v5

    .line 701
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 702
    goto/16 :goto_0

    .line 696
    :pswitch_6
    mul-int/2addr v10, v4

    add-int v4, v10, v5

    .line 697
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 698
    goto/16 :goto_0

    .line 692
    :pswitch_7
    mul-int/2addr v10, v4

    add-int v4, v10, v5

    .line 693
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 694
    goto/16 :goto_0

    .line 688
    :pswitch_8
    mul-int/2addr v10, v4

    add-int v4, v10, v5

    .line 689
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 690
    goto/16 :goto_0

    .line 684
    :pswitch_9
    mul-int/2addr v10, v4

    add-int v4, v10, v5

    .line 685
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 686
    goto/16 :goto_0

    .line 680
    :pswitch_a
    mul-int/2addr v10, v4

    add-int v4, v10, v5

    .line 681
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 682
    goto/16 :goto_0

    .line 745
    :pswitch_b
    mul-int/2addr v10, v4

    add-int/lit8 v4, v10, 0x2f

    .line 746
    const/16 v6, 0x2f

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 747
    goto/16 :goto_0

    .line 777
    :cond_6
    mul-int/2addr v10, v4

    add-int v4, v10, v5

    .line 779
    if-nez v2, :cond_7

    .line 780
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v6, v7

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 781
    goto/16 :goto_0

    .line 784
    :cond_7
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v7, v7

    if-ne v6, v7, :cond_8

    .line 785
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 787
    :cond_8
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char v5, v6, v7

    goto/16 :goto_0

    .line 654
    :cond_9
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "unclosed.str"

    invoke-direct {v3, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_7
        0x27 -> :sswitch_6
        0x46 -> :sswitch_5
        0x5c -> :sswitch_4
        0x62 -> :sswitch_3
        0x66 -> :sswitch_5
        0x6e -> :sswitch_2
        0x72 -> :sswitch_1
        0x78 -> :sswitch_0
    .end sparse-switch
.end method

.method public final scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 10
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 822
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    if-ne v0, v2, :cond_0

    .line 823
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 825
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    .line 826
    .local v0, "firstIdentifierFlags":[Z
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 828
    .local v3, "first":C
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    array-length v5, v0

    if-ge v4, v5, :cond_2

    aget-boolean v4, v0, v3

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    .line 829
    .local v1, "firstFlag":Z
    :goto_1
    if-eqz v1, :cond_6

    .line 834
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    .line 836
    .local v4, "identifierFlags":[Z
    move v5, v3

    .line 838
    .local v5, "hash":I
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 839
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 842
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v6

    .line 844
    .local v6, "chLocal":C
    array-length v7, v4

    if-ge v6, v7, :cond_5

    .line 845
    aget-boolean v7, v4, v6

    if-nez v7, :cond_5

    .line 846
    nop

    .line 856
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 857
    const/16 v7, 0x12

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 859
    const v7, 0x33c587

    .line 860
    .local v7, "NULL_HASH":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_3

    const v8, 0x33c587

    if-ne v5, v8, :cond_3

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    const/16 v9, 0x6e

    if-ne v8, v9, :cond_3

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v8, v2

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v8, 0x75

    if-ne v2, v8, :cond_3

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v8, 0x6c

    if-ne v2, v8, :cond_3

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v2, v2, 0x3

    .line 861
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_3

    .line 862
    const/4 v2, 0x0

    return-object v2

    .line 867
    :cond_3
    if-nez p1, :cond_4

    .line 868
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {p0, v2, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 871
    :cond_4
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {p0, v2, v8, v5, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 850
    .end local v7    # "NULL_HASH":I
    :cond_5
    const/16 v7, 0x1f

    mul-int/2addr v7, v5

    add-int v5, v7, v6

    .line 852
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 853
    goto :goto_2

    .line 830
    .end local v4    # "identifierFlags":[Z
    .end local v5    # "hash":I
    .end local v6    # "chLocal":C
    :cond_6
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal identifier : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 831
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->info()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public scanSymbolWithSeperator(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
    .locals 10
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;
    .param p2, "serperator"    # C

    .line 1579
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1581
    const/4 v1, 0x0

    .line 1582
    .local v1, "offset":I
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v1, 0x1

    .local v3, "offset":I
    add-int/2addr v2, v1

    .end local v1    # "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1584
    .local v1, "chLocal":C
    const/4 v2, 0x3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x6e

    if-ne v1, v6, :cond_2

    .line 1585
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v6, 0x75

    if-ne v0, v6, :cond_1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v6, 0x6c

    if-ne v0, v6, :cond_1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_1

    .line 1586
    add-int/2addr v3, v2

    .line 1587
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v3, 0x1

    .local v6, "offset":I
    add-int/2addr v0, v3

    .end local v3    # "offset":I
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1593
    .end local v1    # "chLocal":C
    .local v0, "chLocal":C
    if-ne v0, p2, :cond_0

    .line 1594
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v6

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1595
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1596
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1597
    return-object v5

    .line 1599
    :cond_0
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1600
    return-object v5

    .line 1589
    .end local v0    # "chLocal":C
    .end local v6    # "offset":I
    .restart local v1    # "chLocal":C
    .restart local v3    # "offset":I
    :cond_1
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1590
    return-object v5

    .line 1604
    :cond_2
    const/16 v6, 0x22

    if-eq v1, v6, :cond_3

    .line 1605
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1606
    return-object v5

    .line 1611
    :cond_3
    move v7, v1

    move v1, v0

    .line 1613
    .local v1, "hash":I
    .local v7, "chLocal":C
    :goto_0
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v3, 0x1

    .local v9, "offset":I
    add-int/2addr v8, v3

    .end local v3    # "offset":I
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    .line 1614
    if-ne v7, v6, :cond_6

    .line 1617
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    .line 1618
    .local v3, "start":I
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v9

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    .line 1619
    .local v0, "len":I
    invoke-virtual {p0, v3, v0, v1, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v5

    .line 1620
    .local v5, "strVal":Ljava/lang/String;
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v9, 0x1

    .local v8, "offset":I
    add-int/2addr v6, v9

    .end local v9    # "offset":I
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    .line 1621
    .end local v7    # "chLocal":C
    .local v6, "chLocal":C
    nop

    .line 1628
    .end local v0    # "len":I
    .end local v3    # "start":I
    :goto_1
    nop

    .line 1633
    if-ne v6, p2, :cond_4

    .line 1634
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1635
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1636
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1637
    return-object v5

    .line 1639
    :cond_4
    invoke-static {v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1640
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v8, 0x1

    .local v3, "offset":I
    add-int/2addr v0, v8

    .end local v8    # "offset":I
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    .line 1641
    nop

    .line 1628
    move v8, v3

    goto :goto_1

    .line 1644
    .end local v3    # "offset":I
    .restart local v8    # "offset":I
    :cond_5
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1645
    return-object v5

    .line 1624
    .end local v5    # "strVal":Ljava/lang/String;
    .end local v6    # "chLocal":C
    .end local v8    # "offset":I
    .restart local v7    # "chLocal":C
    .restart local v9    # "offset":I
    :cond_6
    const/16 v3, 0x1f

    mul-int/2addr v3, v1

    add-int v1, v3, v7

    .line 1626
    const/16 v3, 0x5c

    if-ne v7, v3, :cond_7

    .line 1627
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1628
    return-object v5

    .line 1611
    :cond_7
    move v3, v9

    goto :goto_0
.end method

.method public final scanTrue()V
    .locals 2

    .line 4622
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x74

    if-ne v0, v1, :cond_5

    .line 4625
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4627
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x72

    if-ne v0, v1, :cond_4

    .line 4630
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4632
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x75

    if-ne v0, v1, :cond_3

    .line 4635
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4637
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x65

    if-ne v0, v1, :cond_2

    .line 4640
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4642
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4656
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan true error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4654
    :cond_1
    :goto_0
    const/4 v0, 0x6

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4658
    return-void

    .line 4638
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4633
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4628
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4623
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanType(Ljava/lang/String;)I
    .locals 7
    .param p1, "type"    # Ljava/lang/String;

    .line 1122
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1124
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->typeFieldName:[C

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1125
    const/4 v0, -0x2

    return v0

    .line 1128
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexerBase;->typeFieldName:[C

    array-length v2, v2

    add-int/2addr v1, v2

    .line 1130
    .local v1, "bpLocal":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1131
    .local v2, "typeLength":I
    nop

    .local v0, "i":I
    :goto_0
    const/4 v3, -0x1

    if-ge v0, v2, :cond_2

    .line 1132
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int v5, v1, v0

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_1

    .line 1133
    return v3

    .line 1131
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1136
    .end local v0    # "i":I
    :cond_2
    add-int/2addr v1, v2

    .line 1137
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v4, 0x22

    if-eq v0, v4, :cond_3

    .line 1138
    return v3

    .line 1141
    :cond_3
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1143
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v4, 0x10

    const/16 v5, 0x2c

    if-ne v0, v5, :cond_4

    .line 1144
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1145
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1146
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1147
    const/4 v0, 0x3

    return v0

    .line 1148
    :cond_4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v6, 0x7d

    if-ne v0, v6, :cond_9

    .line 1149
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1150
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v5, :cond_5

    .line 1151
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1152
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    .line 1153
    :cond_5
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v4, 0x5d

    if-ne v0, v4, :cond_6

    .line 1154
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1155
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    .line 1156
    :cond_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v6, :cond_7

    .line 1157
    const/16 v0, 0xd

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1158
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    .line 1159
    :cond_7
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v4, 0x1a

    if-ne v0, v4, :cond_8

    .line 1160
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1164
    :goto_1
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_2

    .line 1162
    :cond_8
    return v3

    .line 1167
    :cond_9
    :goto_2
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1168
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0
.end method

.method public scanTypeName(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 1
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 1116
    const/4 v0, 0x0

    return-object v0
.end method

.method public scanUUID(C)Ljava/util/UUID;
    .locals 26
    .param p1, "seperator"    # C

    move-object/from16 v0, p0

    .line 4419
    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4423
    const/4 v2, 0x0

    .line 4424
    .local v2, "offset":I
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v2, 0x1

    .local v4, "offset":I
    add-int/2addr v3, v2

    .end local v2    # "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 4427
    .local v2, "chLocal":C
    const/16 v3, 0x22

    const/4 v6, -0x1

    const/4 v7, 0x4

    if-ne v2, v3, :cond_21

    .line 4428
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v9, 0x1

    .line 4429
    .local v9, "startIndex":I
    invoke-virtual {v0, v3, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v3

    .line 4430
    .local v3, "endIndex":I
    if-eq v3, v6, :cond_20

    .line 4434
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v10, 0x1

    .line 4435
    .local v10, "startIndex2":I
    sub-int v11, v3, v10

    .line 4436
    .local v11, "len":I
    const/16 v12, 0x24

    const/16 v14, 0x46

    const/16 v15, 0x66

    const/16 v1, 0x39

    const/16 v6, 0x41

    const/16 v17, 0xa

    const/16 v5, 0x61

    const/16 v8, 0x30

    if-ne v11, v12, :cond_14

    .line 4437
    const-wide/16 v18, 0x0

    .local v18, "mostSigBits":J
    const-wide/16 v20, 0x0

    .line 4438
    .local v20, "leastSigBits":J
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v12, v16

    .end local v16    # "i":I
    .local v12, "i":I
    const/16 v13, 0x8

    if-ge v12, v13, :cond_3

    .line 4439
    add-int v13, v10, v12

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v13

    .line 4441
    .local v13, "ch":C
    if-lt v13, v8, :cond_0

    if-gt v13, v1, :cond_0

    .line 4442
    add-int/lit8 v16, v13, -0x30

    .local v16, "num":I
    :goto_1
    goto :goto_2

    .line 4443
    .end local v16    # "num":I
    :cond_0
    if-lt v13, v5, :cond_1

    if-gt v13, v15, :cond_1

    .line 4444
    add-int/lit8 v16, v13, -0x61

    add-int v16, v17, v16

    goto :goto_1

    .line 4445
    :cond_1
    if-lt v13, v6, :cond_2

    if-gt v13, v14, :cond_2

    .line 4446
    add-int/lit8 v16, v13, -0x41

    add-int v16, v17, v16

    goto :goto_1

    .line 4449
    .restart local v16    # "num":I
    :goto_2
    move/from16 v22, v16

    .line 4452
    .end local v16    # "num":I
    .local v22, "num":I
    shl-long v18, v18, v7

    .line 4453
    move/from16 v7, v22

    int-to-long v14, v7

    .end local v22    # "num":I
    .local v7, "num":I
    or-long v18, v18, v14

    .line 4438
    .end local v7    # "num":I
    .end local v13    # "ch":C
    add-int/lit8 v16, v12, 0x1

    .end local v12    # "i":I
    .local v16, "i":I
    const/4 v7, 0x4

    const/16 v14, 0x46

    const/16 v15, 0x66

    goto :goto_0

    .line 4448
    .end local v16    # "i":I
    .restart local v12    # "i":I
    .restart local v13    # "ch":C
    :cond_2
    const/4 v1, -0x2

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4449
    const/4 v1, 0x0

    return-object v1

    .line 4455
    .end local v12    # "i":I
    .end local v13    # "ch":C
    :cond_3
    const/16 v7, 0x9

    .local v7, "i":I
    :goto_3
    const/16 v12, 0xd

    if-ge v7, v12, :cond_7

    .line 4456
    add-int v12, v10, v7

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    .line 4458
    .local v12, "ch":C
    if-lt v12, v8, :cond_4

    if-gt v12, v1, :cond_4

    .line 4459
    add-int/lit8 v13, v12, -0x30

    .local v13, "num":I
    :goto_4
    goto :goto_5

    .line 4460
    .end local v13    # "num":I
    :cond_4
    if-lt v12, v5, :cond_5

    const/16 v13, 0x66

    if-gt v12, v13, :cond_5

    .line 4461
    add-int/lit8 v13, v12, -0x61

    add-int v13, v17, v13

    goto :goto_4

    .line 4462
    :cond_5
    if-lt v12, v6, :cond_6

    const/16 v13, 0x46

    if-gt v12, v13, :cond_6

    .line 4463
    add-int/lit8 v13, v12, -0x41

    add-int v13, v17, v13

    goto :goto_4

    .line 4466
    .restart local v13    # "num":I
    :goto_5
    nop

    .line 4469
    const/4 v14, 0x4

    shl-long v15, v18, v14

    .line 4470
    .end local v18    # "mostSigBits":J
    .local v15, "mostSigBits":J
    int-to-long v5, v13

    or-long v18, v15, v5

    .line 4455
    .end local v12    # "ch":C
    .end local v13    # "num":I
    .end local v15    # "mostSigBits":J
    .restart local v18    # "mostSigBits":J
    add-int/lit8 v7, v7, 0x1

    const/16 v5, 0x61

    const/16 v6, 0x41

    goto :goto_3

    .line 4465
    .restart local v12    # "ch":C
    :cond_6
    const/4 v1, -0x2

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4466
    const/4 v1, 0x0

    return-object v1

    .line 4472
    .end local v7    # "i":I
    .end local v12    # "ch":C
    :cond_7
    const/16 v5, 0xe

    move-wide/from16 v6, v18

    .end local v18    # "mostSigBits":J
    .local v5, "i":I
    .local v6, "mostSigBits":J
    :goto_6
    const/16 v12, 0x12

    if-ge v5, v12, :cond_b

    .line 4473
    add-int v12, v10, v5

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    .line 4475
    .restart local v12    # "ch":C
    if-lt v12, v8, :cond_8

    if-gt v12, v1, :cond_8

    .line 4476
    add-int/lit8 v13, v12, -0x30

    .restart local v13    # "num":I
    :goto_7
    goto :goto_8

    .line 4477
    .end local v13    # "num":I
    :cond_8
    const/16 v13, 0x61

    if-lt v12, v13, :cond_9

    const/16 v13, 0x66

    if-gt v12, v13, :cond_9

    .line 4478
    add-int/lit8 v13, v12, -0x61

    add-int v13, v17, v13

    goto :goto_7

    .line 4479
    :cond_9
    const/16 v13, 0x41

    if-lt v12, v13, :cond_a

    const/16 v13, 0x46

    if-gt v12, v13, :cond_a

    .line 4480
    add-int/lit8 v13, v12, -0x41

    add-int v13, v17, v13

    goto :goto_7

    .line 4483
    .restart local v13    # "num":I
    :goto_8
    nop

    .line 4486
    const/4 v14, 0x4

    shl-long/2addr v6, v14

    .line 4487
    int-to-long v14, v13

    or-long/2addr v6, v14

    .line 4472
    .end local v12    # "ch":C
    .end local v13    # "num":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 4482
    .restart local v12    # "ch":C
    :cond_a
    const/4 v1, -0x2

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4483
    const/4 v1, 0x0

    return-object v1

    .line 4489
    .end local v5    # "i":I
    .end local v12    # "ch":C
    :cond_b
    const/16 v5, 0x13

    .restart local v5    # "i":I
    :goto_9
    const/16 v12, 0x17

    if-ge v5, v12, :cond_f

    .line 4490
    add-int v12, v10, v5

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    .line 4492
    .restart local v12    # "ch":C
    if-lt v12, v8, :cond_c

    if-gt v12, v1, :cond_c

    .line 4493
    add-int/lit8 v13, v12, -0x30

    .restart local v13    # "num":I
    :goto_a
    goto :goto_b

    .line 4494
    .end local v13    # "num":I
    :cond_c
    const/16 v13, 0x61

    if-lt v12, v13, :cond_d

    const/16 v13, 0x66

    if-gt v12, v13, :cond_d

    .line 4495
    add-int/lit8 v13, v12, -0x61

    add-int v13, v17, v13

    goto :goto_a

    .line 4496
    :cond_d
    const/16 v13, 0x41

    if-lt v12, v13, :cond_e

    const/16 v13, 0x46

    if-gt v12, v13, :cond_e

    .line 4497
    add-int/lit8 v13, v12, -0x41

    add-int v13, v17, v13

    goto :goto_a

    .line 4500
    .restart local v13    # "num":I
    :goto_b
    nop

    .line 4503
    const/4 v14, 0x4

    shl-long v15, v20, v14

    .line 4504
    .end local v20    # "leastSigBits":J
    .local v15, "leastSigBits":J
    move/from16 v23, v2

    int-to-long v1, v13

    .end local v2    # "chLocal":C
    .local v23, "chLocal":C
    or-long v20, v15, v1

    .line 4489
    .end local v12    # "ch":C
    .end local v13    # "num":I
    .end local v15    # "leastSigBits":J
    .restart local v20    # "leastSigBits":J
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v23

    const/16 v1, 0x39

    goto :goto_9

    .line 4499
    .end local v23    # "chLocal":C
    .restart local v2    # "chLocal":C
    .restart local v12    # "ch":C
    :cond_e
    move/from16 v23, v2

    .end local v2    # "chLocal":C
    .restart local v23    # "chLocal":C
    const/4 v1, -0x2

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4500
    const/4 v1, 0x0

    return-object v1

    .line 4506
    .end local v5    # "i":I
    .end local v12    # "ch":C
    .end local v23    # "chLocal":C
    .restart local v2    # "chLocal":C
    :cond_f
    move/from16 v23, v2

    .end local v2    # "chLocal":C
    .restart local v23    # "chLocal":C
    const/16 v1, 0x18

    move-wide/from16 v12, v20

    .end local v20    # "leastSigBits":J
    .local v1, "i":I
    .local v12, "leastSigBits":J
    :goto_c
    const/16 v2, 0x24

    if-ge v1, v2, :cond_13

    .line 4507
    add-int v2, v10, v1

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 4509
    .local v2, "ch":C
    if-lt v2, v8, :cond_10

    const/16 v5, 0x39

    if-gt v2, v5, :cond_10

    .line 4510
    add-int/lit8 v5, v2, -0x30

    .local v5, "num":I
    :goto_d
    goto :goto_e

    .line 4511
    .end local v5    # "num":I
    :cond_10
    const/16 v5, 0x61

    if-lt v2, v5, :cond_11

    const/16 v5, 0x66

    if-gt v2, v5, :cond_11

    .line 4512
    add-int/lit8 v5, v2, -0x61

    add-int v5, v17, v5

    goto :goto_d

    .line 4513
    :cond_11
    const/16 v5, 0x41

    if-lt v2, v5, :cond_12

    const/16 v5, 0x46

    if-gt v2, v5, :cond_12

    .line 4514
    add-int/lit8 v5, v2, -0x41

    add-int v5, v17, v5

    goto :goto_d

    .line 4517
    .restart local v5    # "num":I
    :goto_e
    nop

    .line 4520
    const/4 v14, 0x4

    shl-long/2addr v12, v14

    .line 4521
    int-to-long v14, v5

    or-long/2addr v12, v14

    .line 4506
    .end local v2    # "ch":C
    .end local v5    # "num":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 4516
    .restart local v2    # "ch":C
    :cond_12
    const/4 v5, -0x2

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4517
    const/4 v5, 0x0

    return-object v5

    .line 4523
    .end local v1    # "i":I
    .end local v2    # "ch":C
    :cond_13
    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, v6, v7, v12, v13}, Ljava/util/UUID;-><init>(JJ)V

    .line 4525
    .local v1, "uuid":Ljava/util/UUID;
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, 0x1

    sub-int v2, v3, v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v4, v2

    .line 4526
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v4, 0x1

    .local v5, "offset":I
    add-int/2addr v2, v4

    .end local v4    # "offset":I
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 4527
    .end local v6    # "mostSigBits":J
    .end local v12    # "leastSigBits":J
    .end local v23    # "chLocal":C
    .local v2, "chLocal":C
    nop

    .line 4570
    move v12, v5

    goto/16 :goto_14

    .line 4527
    .end local v1    # "uuid":Ljava/util/UUID;
    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    :cond_14
    move/from16 v23, v2

    .end local v2    # "chLocal":C
    .restart local v23    # "chLocal":C
    const/16 v1, 0x20

    if-ne v11, v1, :cond_1f

    .line 4528
    const-wide/16 v1, 0x0

    .local v1, "mostSigBits":J
    const-wide/16 v5, 0x0

    .line 4529
    .local v5, "leastSigBits":J
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_f
    move/from16 v7, v16

    .end local v16    # "i":I
    .restart local v7    # "i":I
    const/16 v12, 0x10

    if-ge v7, v12, :cond_18

    .line 4530
    add-int v12, v10, v7

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    .line 4532
    .local v12, "ch":C
    if-lt v12, v8, :cond_15

    const/16 v13, 0x39

    if-gt v12, v13, :cond_15

    .line 4533
    add-int/lit8 v13, v12, -0x30

    .restart local v13    # "num":I
    :goto_10
    goto :goto_11

    .line 4534
    .end local v13    # "num":I
    :cond_15
    const/16 v13, 0x61

    if-lt v12, v13, :cond_16

    const/16 v13, 0x66

    if-gt v12, v13, :cond_16

    .line 4535
    add-int/lit8 v13, v12, -0x61

    add-int v13, v17, v13

    goto :goto_10

    .line 4536
    :cond_16
    const/16 v13, 0x41

    if-lt v12, v13, :cond_17

    const/16 v13, 0x46

    if-gt v12, v13, :cond_17

    .line 4537
    add-int/lit8 v13, v12, -0x41

    add-int v13, v17, v13

    goto :goto_10

    .line 4540
    .restart local v13    # "num":I
    :goto_11
    nop

    .line 4543
    const/4 v14, 0x4

    shl-long/2addr v1, v14

    .line 4544
    int-to-long v14, v13

    or-long/2addr v1, v14

    .line 4529
    .end local v12    # "ch":C
    .end local v13    # "num":I
    add-int/lit8 v16, v7, 0x1

    .end local v7    # "i":I
    .restart local v16    # "i":I
    goto :goto_f

    .line 4539
    .end local v16    # "i":I
    .restart local v7    # "i":I
    .restart local v12    # "ch":C
    :cond_17
    const/4 v8, -0x2

    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4540
    const/4 v8, 0x0

    return-object v8

    .line 4546
    .end local v7    # "i":I
    .end local v12    # "ch":C
    :cond_18
    move-wide v6, v5

    const/16 v5, 0x10

    .local v5, "i":I
    .local v6, "leastSigBits":J
    :goto_12
    const/16 v12, 0x20

    if-ge v5, v12, :cond_1e

    .line 4547
    add-int v12, v10, v5

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    .line 4549
    .restart local v12    # "ch":C
    if-lt v12, v8, :cond_19

    const/16 v13, 0x39

    if-gt v12, v13, :cond_1a

    .line 4550
    add-int/lit8 v14, v12, -0x30

    .line 4557
    .local v14, "num":I
    move/from16 v16, v14

    const/16 v8, 0x46

    const/16 v14, 0x61

    const/16 v15, 0x66

    goto :goto_13

    .line 4551
    .end local v14    # "num":I
    :cond_19
    const/16 v13, 0x39

    :cond_1a
    const/16 v14, 0x61

    if-lt v12, v14, :cond_1b

    const/16 v15, 0x66

    if-gt v12, v15, :cond_1c

    .line 4552
    add-int/lit8 v16, v12, -0x61

    add-int v16, v17, v16

    .line 4557
    .local v16, "num":I
    const/16 v8, 0x46

    goto :goto_13

    .line 4553
    .end local v16    # "num":I
    :cond_1b
    const/16 v15, 0x66

    :cond_1c
    const/16 v8, 0x41

    if-lt v12, v8, :cond_1d

    const/16 v8, 0x46

    if-gt v12, v8, :cond_1d

    .line 4554
    add-int/lit8 v16, v12, -0x41

    add-int v16, v17, v16

    .line 4557
    .restart local v16    # "num":I
    :goto_13
    move/from16 v24, v16

    .line 4560
    .end local v16    # "num":I
    .local v24, "num":I
    const/16 v16, 0x4

    shl-long v6, v6, v16

    .line 4561
    move/from16 v8, v24

    int-to-long v13, v8

    .end local v24    # "num":I
    .local v8, "num":I
    or-long/2addr v6, v13

    .line 4546
    .end local v8    # "num":I
    .end local v12    # "ch":C
    add-int/lit8 v5, v5, 0x1

    const/16 v8, 0x30

    goto :goto_12

    .line 4556
    .restart local v12    # "ch":C
    :cond_1d
    const/4 v8, -0x2

    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4557
    const/4 v8, 0x0

    return-object v8

    .line 4564
    .end local v5    # "i":I
    .end local v12    # "ch":C
    :cond_1e
    new-instance v5, Ljava/util/UUID;

    invoke-direct {v5, v1, v2, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    .line 4566
    .local v5, "uuid":Ljava/util/UUID;
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v8, 0x1

    sub-int v8, v3, v8

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v4, v8

    .line 4567
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v4, 0x1

    .local v12, "offset":I
    add-int/2addr v8, v4

    .end local v4    # "offset":I
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 4568
    .end local v1    # "mostSigBits":J
    .end local v6    # "leastSigBits":J
    .end local v23    # "chLocal":C
    .restart local v2    # "chLocal":C
    nop

    .line 4570
    move-object v1, v5

    .line 4572
    .end local v3    # "endIndex":I
    .end local v5    # "uuid":Ljava/util/UUID;
    .end local v9    # "startIndex":I
    .end local v10    # "startIndex2":I
    .end local v11    # "len":I
    .local v1, "uuid":Ljava/util/UUID;
    :goto_14
    goto :goto_15

    .line 4569
    .end local v1    # "uuid":Ljava/util/UUID;
    .end local v2    # "chLocal":C
    .end local v12    # "offset":I
    .restart local v3    # "endIndex":I
    .restart local v4    # "offset":I
    .restart local v9    # "startIndex":I
    .restart local v10    # "startIndex2":I
    .restart local v11    # "len":I
    .restart local v23    # "chLocal":C
    :cond_1f
    const/4 v1, -0x1

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4570
    const/4 v1, 0x0

    return-object v1

    .line 4431
    .end local v10    # "startIndex2":I
    .end local v11    # "len":I
    .end local v23    # "chLocal":C
    .restart local v2    # "chLocal":C
    :cond_20
    move/from16 v23, v2

    .end local v2    # "chLocal":C
    .restart local v23    # "chLocal":C
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "unclosed str"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4572
    .end local v3    # "endIndex":I
    .end local v9    # "startIndex":I
    .end local v23    # "chLocal":C
    .restart local v2    # "chLocal":C
    :cond_21
    move/from16 v23, v2

    .end local v2    # "chLocal":C
    .restart local v23    # "chLocal":C
    const/16 v1, 0x6e

    if-ne v2, v1, :cond_29

    .end local v23    # "chLocal":C
    .restart local v2    # "chLocal":C
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v4, 0x1

    .local v3, "offset":I
    add-int/2addr v1, v4

    .line 4573
    .end local v4    # "offset":I
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v4, 0x75

    if-ne v1, v4, :cond_28

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    .restart local v4    # "offset":I
    add-int/2addr v1, v3

    .line 4574
    .end local v3    # "offset":I
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_29

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v4, 0x1

    .restart local v3    # "offset":I
    add-int/2addr v1, v4

    .line 4575
    .end local v4    # "offset":I
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v4, 0x6c

    if-ne v1, v4, :cond_28

    .line 4576
    const/4 v1, 0x0

    .line 4577
    .restart local v1    # "uuid":Ljava/util/UUID;
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v3, 0x1

    .restart local v12    # "offset":I
    add-int/2addr v4, v3

    .end local v3    # "offset":I
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 4580
    :goto_15
    nop

    .line 4583
    const/16 v3, 0x2c

    if-ne v2, v3, :cond_22

    .line 4584
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v12

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4585
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 4586
    const/4 v3, 0x3

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4587
    return-object v1

    .line 4590
    :cond_22
    const/16 v3, 0x5d

    if-ne v2, v3, :cond_27

    .line 4591
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v12, 0x1

    .restart local v4    # "offset":I
    add-int/2addr v3, v12

    .end local v12    # "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 4592
    const/16 v3, 0x2c

    if-ne v2, v3, :cond_23

    .line 4593
    const/16 v3, 0x10

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4594
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4595
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_16

    .line 4596
    :cond_23
    const/16 v3, 0x5d

    if-ne v2, v3, :cond_24

    .line 4597
    const/16 v3, 0xf

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4598
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4599
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_16

    .line 4600
    :cond_24
    const/16 v3, 0x7d

    if-ne v2, v3, :cond_25

    .line 4601
    const/16 v3, 0xd

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4602
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4603
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_16

    .line 4604
    :cond_25
    const/16 v3, 0x1a

    if-ne v2, v3, :cond_26

    .line 4605
    const/16 v3, 0x14

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4606
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v4, -0x1

    add-int/2addr v3, v5

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4607
    const/16 v3, 0x1a

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 4612
    :goto_16
    const/4 v3, 0x4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4618
    return-object v1

    .line 4609
    :cond_26
    const/4 v5, -0x1

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4610
    const/4 v6, 0x0

    return-object v6

    .line 4614
    .end local v4    # "offset":I
    .restart local v12    # "offset":I
    :cond_27
    const/4 v5, -0x1

    const/4 v6, 0x0

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4615
    return-object v6

    .line 4579
    .end local v1    # "uuid":Ljava/util/UUID;
    .end local v12    # "offset":I
    .restart local v3    # "offset":I
    :cond_28
    const/4 v5, -0x1

    const/4 v6, 0x0

    goto :goto_17

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_29
    const/4 v5, -0x1

    const/4 v6, 0x0

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    :goto_17
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4580
    return-object v6
.end method

.method public seekArrayToItem(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 1209
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public seekObjectToField(JZ)I
    .locals 1
    .param p1, "fieldNameHash"    # J
    .param p3, "deepScan"    # Z

    .line 1213
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public seekObjectToField([J)I
    .locals 1
    .param p1, "fieldNameHash"    # [J

    .line 1217
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public seekObjectToFieldDeepScan(J)I
    .locals 1
    .param p1, "fieldNameHash"    # J

    .line 1221
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    .line 1038
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->locale:Ljava/util/Locale;

    .line 1039
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 1030
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->timeZone:Ljava/util/TimeZone;

    .line 1031
    return-void
.end method

.method public setToken(I)V
    .locals 0
    .param p1, "token"    # I

    .line 94
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 95
    return-void
.end method

.method public skipArray()V
    .locals 1

    .line 1233
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected skipComment()V
    .locals 4

    .line 565
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 566
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_2

    .line 568
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 569
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 570
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 571
    return-void

    .line 572
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v1, :cond_0

    .line 573
    return-void

    .line 576
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v3, 0x2a

    if-ne v0, v3, :cond_6

    .line 577
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 579
    :cond_3
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v1, :cond_5

    .line 580
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v3, :cond_4

    .line 581
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 582
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v2, :cond_3

    .line 583
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 584
    return-void

    .line 589
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 594
    :cond_5
    return-void

    .line 592
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "invalid comment"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skipObject()V
    .locals 1

    .line 1225
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public skipObject(Z)V
    .locals 1
    .param p1, "valid"    # Z

    .line 1229
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final skipWhitespace()V
    .locals 3

    .line 4918
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_2

    .line 4919
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x20

    if-eq v0, v2, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0xc

    if-eq v0, v2, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 4927
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v1, :cond_2

    .line 4928
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipComment()V

    .line 4929
    goto :goto_0

    .line 4925
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4926
    goto :goto_0

    .line 4937
    :cond_2
    return-void
.end method

.method public final stringDefaultValue()Ljava/lang/String;
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public abstract stringVal()Ljava/lang/String;
.end method

.method public abstract subString(II)Ljava/lang/String;
.end method

.method protected abstract sub_chars(II)[C
.end method

.method public final token()I
    .locals 1

    .line 400
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v0
.end method

.method public final tokenName()Ljava/lang/String;
    .locals 1

    .line 404
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
