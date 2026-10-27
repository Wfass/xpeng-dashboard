.class public Lcom/alibaba/fastjson2/support/arrow/CSVUtils;
.super Ljava/lang/Object;
.source "CSVUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static genMaxComputeCreateTable(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/reflect/Type;

    .line 12
    invoke-static {p0, v1}, Lcom/alibaba/fastjson2/support/csv/CSVReader;->of(Ljava/io/File;[Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/support/csv/CSVReader;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVReader;->readHeader()Ljava/util/List;

    .line 14
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVReader;->statAll()V

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " (\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVReader;->getColumnStats()Ljava/util/List;

    move-result-object p0

    move p1, v0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_13

    .line 21
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;

    .line 25
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v4, v0

    .line 26
    :goto_1
    iget-object v5, v2, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x5f

    const/16 v7, 0x20

    const v8, 0xfffd

    if-ge v4, v5, :cond_3

    .line 27
    iget-object v5, v2, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_0

    goto :goto_3

    :cond_0
    if-eq v5, v7, :cond_2

    const/16 v7, 0x2d

    if-eq v5, v7, :cond_2

    const/16 v7, 0x2b

    if-eq v5, v7, :cond_2

    const/16 v7, 0x2e

    if-ne v5, v7, :cond_1

    goto :goto_2

    .line 35
    :cond_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 33
    :cond_2
    :goto_2
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 38
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move v4, v0

    .line 42
    :goto_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v9, 0x1

    if-ge v4, v5, :cond_b

    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v10, 0x61

    if-lt v5, v10, :cond_4

    const/16 v10, 0x7a

    if-le v5, v10, :cond_6

    :cond_4
    const/16 v10, 0x41

    if-lt v5, v10, :cond_5

    const/16 v10, 0x5a

    if-le v5, v10, :cond_6

    :cond_5
    if-ne v5, v6, :cond_7

    :cond_6
    move v10, v9

    goto :goto_5

    :cond_7
    move v10, v0

    :goto_5
    if-nez v4, :cond_9

    if-nez v10, :cond_9

    :cond_8
    :goto_6
    move v4, v9

    goto :goto_7

    :cond_9
    if-nez v10, :cond_a

    const/16 v10, 0x30

    if-lt v5, v10, :cond_8

    const/16 v10, 0x39

    if-le v5, v10, :cond_a

    goto :goto_6

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    move v4, v0

    :goto_7
    if-nez v4, :cond_c

    .line 58
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x1e

    if-le v5, v6, :cond_c

    move v4, v9

    :cond_c
    const/16 v5, 0x9

    .line 62
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_d

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "COL_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 67
    :cond_d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :goto_8
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->getInferSQLType()Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_11

    const-string v3, " COMMENT \'"

    .line 76
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v0

    .line 77
    :goto_9
    iget-object v4, v2, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x27

    if-ge v3, v4, :cond_10

    .line 78
    iget-object v4, v2, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_e

    goto :goto_a

    :cond_e
    if-ne v4, v5, :cond_f

    .line 84
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    :cond_f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 88
    :cond_10
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    :cond_11
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v9

    if-eq p1, v2, :cond_12

    const/16 v2, 0x2c

    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_12
    const-string v2, "\n"

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_13
    const-string p0, ");"

    .line 97
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
