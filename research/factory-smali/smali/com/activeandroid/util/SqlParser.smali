.class public Lcom/activeandroid/util/SqlParser;
.super Ljava/lang/Object;
.source "SqlParser.java"


# static fields
.field public static final STATE_COMMENT:I = 0x2

.field public static final STATE_COMMENT_BLOCK:I = 0x3

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_STRING:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isNewLine(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 104
    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

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

.method private static isWhitespace(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 108
    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

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

.method public static parse(Ljava/io/InputStream;)Ljava/util/List;
    .locals 9
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 37
    .local v0, "buffer":Ljava/io/BufferedInputStream;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v1, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 41
    .local v2, "sb":Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v3, Lcom/activeandroid/util/Tokenizer;

    invoke-direct {v3, v0}, Lcom/activeandroid/util/Tokenizer;-><init>(Ljava/io/InputStream;)V

    .line 42
    .local v3, "tokenizer":Lcom/activeandroid/util/Tokenizer;
    const/4 v4, 0x0

    move v5, v4

    .line 44
    .local v5, "state":I
    :cond_0
    :goto_0
    invoke-virtual {v3}, Lcom/activeandroid/util/Tokenizer;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 45
    invoke-virtual {v3}, Lcom/activeandroid/util/Tokenizer;->next()I

    move-result v6

    int-to-char v6, v6

    .line 47
    .local v6, "c":C
    const/4 v7, 0x3

    if-ne v5, v7, :cond_1

    .line 48
    const-string v7, "*/"

    invoke-virtual {v3, v7}, Lcom/activeandroid/util/Tokenizer;->skip(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 49
    const/4 v5, 0x0

    goto :goto_0

    .line 53
    :cond_1
    const/4 v7, 0x2

    if-ne v5, v7, :cond_2

    .line 54
    invoke-static {v6}, Lcom/activeandroid/util/SqlParser;->isNewLine(C)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 55
    const/4 v5, 0x0

    goto :goto_0

    .line 59
    :cond_2
    if-nez v5, :cond_3

    const-string v7, "/*"

    invoke-virtual {v3, v7}, Lcom/activeandroid/util/Tokenizer;->skip(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 60
    const/4 v5, 0x3

    .line 61
    goto :goto_0

    .line 63
    :cond_3
    if-nez v5, :cond_4

    const-string v7, "--"

    invoke-virtual {v3, v7}, Lcom/activeandroid/util/Tokenizer;->skip(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 64
    const/4 v5, 0x2

    .line 65
    goto :goto_0

    .line 67
    :cond_4
    if-nez v5, :cond_5

    const/16 v7, 0x3b

    if-ne v6, v7, :cond_5

    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 69
    .local v7, "command":Ljava/lang/String;
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 71
    goto :goto_0

    .line 73
    .end local v7    # "command":Ljava/lang/String;
    :cond_5
    const/16 v7, 0x27

    const/4 v8, 0x1

    if-nez v5, :cond_6

    if-ne v6, v7, :cond_6

    .line 74
    const/4 v5, 0x1

    goto :goto_1

    .line 76
    :cond_6
    if-ne v5, v8, :cond_7

    if-ne v6, v7, :cond_7

    .line 77
    const/4 v5, 0x0

    .line 81
    :cond_7
    :goto_1
    if-eqz v5, :cond_8

    if-ne v5, v8, :cond_a

    .line 82
    :cond_8
    if-nez v5, :cond_9

    invoke-static {v6}, Lcom/activeandroid/util/SqlParser;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_a

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-eq v7, v8, :cond_a

    .line 84
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 87
    :cond_9
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .end local v6    # "c":C
    :cond_a
    :goto_2
    goto/16 :goto_0

    .line 93
    .end local v3    # "tokenizer":Lcom/activeandroid/util/Tokenizer;
    .end local v5    # "state":I
    :cond_b
    invoke-static {v0}, Lcom/activeandroid/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 94
    nop

    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_c

    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_c
    return-object v1

    .line 93
    :catchall_0
    move-exception v3

    invoke-static {v0}, Lcom/activeandroid/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v3
.end method
