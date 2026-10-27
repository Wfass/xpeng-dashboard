.class final Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;
.super Lcom/alibaba/fastjson2/support/csv/CSVReader;
.source "CSVReaderUTF16.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16$CharArrayConsumerImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/support/csv/CSVReader<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final valueConsumerCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/function/Function<",
            "Ljava/util/function/Consumer;",
            "Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field buf:[C

.field input:Ljava/io/Reader;

.field valueConsumer:Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->valueConsumerCreators:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/io/Reader;Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/alibaba/fastjson2/support/csv/CSVReader;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->valueConsumer:Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer;

    .line 48
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->input:Ljava/io/Reader;

    return-void
.end method

.method constructor <init>(Ljava/io/Reader;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson2/support/csv/CSVReader;-><init>(Ljava/lang/Class;)V

    .line 43
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->input:Ljava/io/Reader;

    return-void
.end method

.method constructor <init>(Ljava/io/Reader;[Ljava/lang/reflect/Type;)V
    .locals 0

    .line 52
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson2/support/csv/CSVReader;-><init>([Ljava/lang/reflect/Type;)V

    .line 53
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->input:Ljava/io/Reader;

    return-void
.end method

.method constructor <init>([CIILcom/alibaba/fastjson2/reader/CharArrayValueConsumer;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/alibaba/fastjson2/support/csv/CSVReader;-><init>()V

    .line 64
    iput-object p4, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->valueConsumer:Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer;

    .line 65
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->buf:[C

    .line 66
    iput p2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->off:I

    add-int/2addr p2, p3

    .line 67
    iput p2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->end:I

    return-void
.end method

.method constructor <init>([CIILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p4}, Lcom/alibaba/fastjson2/support/csv/CSVReader;-><init>(Ljava/lang/Class;)V

    .line 58
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->buf:[C

    .line 59
    iput p2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->off:I

    add-int/2addr p2, p3

    .line 60
    iput p2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->end:I

    return-void
.end method

.method constructor <init>([CII[Ljava/lang/reflect/Type;)V
    .locals 0

    .line 76
    invoke-direct {p0, p4}, Lcom/alibaba/fastjson2/support/csv/CSVReader;-><init>([Ljava/lang/reflect/Type;)V

    .line 77
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->buf:[C

    .line 78
    iput p2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->off:I

    add-int/2addr p2, p3

    .line 79
    iput p2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->end:I

    return-void
.end method

.method varargs constructor <init>([Lcom/alibaba/fastjson2/stream/StreamReader$Feature;)V
    .locals 7

    .line 35
    invoke-direct {p0}, Lcom/alibaba/fastjson2/support/csv/CSVReader;-><init>()V

    .line 36
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 37
    iget-wide v3, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->features:J

    iget-wide v5, v2, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->mask:J

    or-long v2, v3, v5

    iput-wide v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->features:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;)Ljava/util/function/Supplier;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->objectCreator:Ljava/util/function/Supplier;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;)Ljava/util/function/Supplier;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->objectCreator:Ljava/util/function/Supplier;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;)[Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;)[Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->input:Ljava/io/Reader;

    if-eqz v0, :cond_0

    .line 485
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/IOUtils;->close(Ljava/io/Closeable;)V

    :cond_0
    return-void
.end method

.method public isEnd()Z
    .locals 1

    .line 255
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->inputEnd:Z

    return v0
.end method

.method public synthetic lambda$statAll$0$CSVReaderUTF16(II[CII)V
    .locals 0

    .line 491
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->getColumnStat(I)Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;

    move-result-object p1

    .line 492
    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->stat([CII)V

    return-void
.end method

.method public synthetic lambda$statAll$1$CSVReaderUTF16(II[CII)V
    .locals 0

    .line 499
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->getColumnStat(I)Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;

    move-result-object p1

    .line 500
    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->stat([CII)V

    return-void
.end method

.method public readAll()V
    .locals 2

    .line 561
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->valueConsumer:Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer;

    if-eqz v0, :cond_0

    const v1, 0x7fffffff

    .line 565
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->readAll(Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer;I)V

    return-void

    .line 562
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo v1, "unsupported operation, consumer is null"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readAll(I)V
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->valueConsumer:Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer;

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->readAll(Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer;I)V

    return-void

    .line 570
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo v0, "unsupported operation, consumer is null"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readAll(Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer<",
            "TT;>;I)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v8, p2

    .line 577
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer;->start()V

    const/4 v10, 0x0

    :goto_0
    if-lt v10, v8, :cond_0

    if-gez v8, :cond_3

    .line 581
    :cond_0
    :try_start_0
    iget-boolean v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->inputEnd:Z

    if-eqz v2, :cond_1

    goto :goto_1

    .line 585
    :cond_1
    iget-object v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->input:Ljava/io/Reader;

    if-nez v2, :cond_2

    .line 586
    iget v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->off:I

    iget v3, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->end:I

    if-lt v2, v3, :cond_2

    goto :goto_1

    .line 591
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->seekLine()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_4

    .line 697
    :cond_3
    :goto_1
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer;->end()V

    return-void

    .line 600
    :cond_4
    iget v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->rowCount:I

    invoke-interface {v0, v2}, Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer;->beforeRow(I)V

    .line 603
    iget v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineStart:I

    .line 607
    iget v3, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineStart:I

    move v6, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    :goto_2
    iget v5, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineEnd:I

    const/16 v12, 0x22

    const/4 v13, 0x1

    if-ge v3, v5, :cond_f

    .line 608
    iget-object v5, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->buf:[C

    aget-char v5, v5, v3

    const/16 v14, 0x2c

    if-eqz v2, :cond_8

    if-ne v5, v12, :cond_7

    add-int/lit8 v15, v3, 0x1

    .line 613
    iget v9, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineEnd:I

    if-ge v15, v9, :cond_6

    .line 614
    iget-object v9, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->buf:[C

    aget-char v9, v9, v15

    if-ne v9, v12, :cond_5

    add-int/lit8 v7, v7, 0x2

    add-int/lit8 v4, v4, 0x1

    move v3, v15

    goto/16 :goto_6

    :cond_5
    if-ne v9, v14, :cond_9

    move v5, v9

    move v3, v15

    goto :goto_3

    .line 624
    :cond_6
    iget v9, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineEnd:I

    if-ne v15, v9, :cond_9

    goto/16 :goto_7

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_6

    :cond_8
    if-ne v5, v12, :cond_9

    move v2, v13

    goto :goto_6

    :cond_9
    :goto_3
    move v9, v3

    if-ne v5, v14, :cond_e

    if-eqz v2, :cond_d

    if-nez v4, :cond_a

    .line 642
    iget v3, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->rowCount:I

    iget-object v5, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->buf:[C

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, p1

    move v4, v11

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer;->accept(II[CII)V

    goto :goto_5

    :cond_a
    sub-int v14, v7, v4

    .line 644
    new-array v5, v14, [C

    add-int/2addr v7, v6

    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x0

    :goto_4
    if-ge v6, v7, :cond_c

    .line 647
    iget-object v3, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->buf:[C

    aget-char v4, v3, v6

    add-int/lit8 v15, v2, 0x1

    .line 648
    aput-char v4, v5, v2

    if-ne v4, v12, :cond_b

    add-int/lit8 v2, v6, 0x1

    .line 649
    aget-char v3, v3, v2

    if-ne v3, v12, :cond_b

    move v6, v2

    :cond_b
    add-int/2addr v6, v13

    move v2, v15

    goto :goto_4

    .line 654
    :cond_c
    iget v3, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->rowCount:I

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move v4, v11

    move v7, v14

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer;->accept(II[CII)V

    goto :goto_5

    .line 657
    :cond_d
    iget v3, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->rowCount:I

    iget-object v5, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->buf:[C

    move-object/from16 v2, p1

    move v4, v11

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer;->accept(II[CII)V

    :goto_5
    add-int/lit8 v6, v9, 0x1

    add-int/lit8 v11, v11, 0x1

    move v3, v9

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    goto :goto_6

    :cond_e
    add-int/lit8 v7, v7, 0x1

    move v3, v9

    :goto_6
    add-int/2addr v3, v13

    goto/16 :goto_2

    :cond_f
    :goto_7
    if-lez v7, :cond_14

    if-eqz v2, :cond_13

    if-nez v4, :cond_10

    .line 675
    iget v3, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->rowCount:I

    iget-object v5, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->buf:[C

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, p1

    move v4, v11

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer;->accept(II[CII)V

    goto :goto_9

    :cond_10
    sub-int/2addr v7, v4

    .line 677
    new-array v5, v7, [C

    .line 678
    iget v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineEnd:I

    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x0

    :goto_8
    if-ge v6, v2, :cond_12

    .line 680
    iget-object v4, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->buf:[C

    aget-char v9, v4, v6

    add-int/lit8 v14, v3, 0x1

    .line 681
    aput-char v9, v5, v3

    if-ne v9, v12, :cond_11

    add-int/lit8 v3, v6, 0x1

    .line 682
    aget-char v4, v4, v3

    if-ne v4, v12, :cond_11

    move v6, v3

    :cond_11
    add-int/2addr v6, v13

    move v3, v14

    goto :goto_8

    .line 688
    :cond_12
    iget v3, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->rowCount:I

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move v4, v11

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer;->accept(II[CII)V

    goto :goto_9

    .line 692
    :cond_13
    iget v3, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->rowCount:I

    iget-object v5, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->buf:[C

    move-object/from16 v2, p1

    move v4, v11

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer;->accept(II[CII)V

    .line 695
    :cond_14
    :goto_9
    iget v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->rowCount:I

    invoke-interface {v0, v2}, Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer;->afterRow(I)V

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 597
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo v3, "seekLine error"

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public readLineObjectAll(ZLjava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->readHeader()Ljava/util/List;

    .line 510
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 512
    :goto_0
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->readLineValues(Z)[Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 516
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 521
    :cond_2
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object p1

    .line 524
    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    if-nez v1, :cond_3

    .line 525
    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->objectClass:Ljava/lang/Class;

    if-eqz v1, :cond_3

    .line 526
    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->objectClass:Ljava/lang/Class;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;

    .line 527
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getFieldReaders()[Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 528
    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->objectClass:Ljava/lang/Class;

    iget-wide v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->features:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->createObjectCreator(Ljava/lang/Class;J)Ljava/util/function/Supplier;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->objectCreator:Ljava/util/function/Supplier;

    .line 533
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 534
    iget-object v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->objectClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 535
    :goto_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    .line 536
    iget-object v3, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    aget-object v0, v3, v0

    iget-object v0, v0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    aput-object v0, v1, v2

    move v0, v2

    goto :goto_1

    .line 538
    :cond_4
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64([Ljava/lang/String;)J

    move-result-wide v0

    .line 539
    sget-object v2, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->valueConsumerCreators:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/function/Function;

    if-nez v3, :cond_5

    .line 541
    iget-object v3, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->objectClass:Ljava/lang/Class;

    iget-object v4, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 542
    invoke-virtual {p1, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->createCharArrayValueConsumerCreator(Ljava/lang/Class;[Lcom/alibaba/fastjson2/reader/FieldReader;)Ljava/util/function/Function;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 544
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/4 p1, 0x0

    if-eqz v3, :cond_6

    .line 550
    invoke-interface {v3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer;

    :cond_6
    if-nez p1, :cond_7

    .line 554
    new-instance p1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16$CharArrayConsumerImpl;

    invoke-direct {p1, p0, p2}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16$CharArrayConsumerImpl;-><init>(Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;Ljava/util/function/Consumer;)V

    :cond_7
    const p2, 0x7fffffff

    .line 557
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->readAll(Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer;I)V

    return-void
.end method

.method public readLineValues(Z)[Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    .line 260
    :try_start_0
    iget-boolean v0, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->inputEnd:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    .line 264
    :cond_0
    iget-object v0, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->input:Ljava/io/Reader;

    if-nez v0, :cond_1

    .line 265
    iget v0, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->off:I

    iget v3, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->end:I

    if-lt v0, v3, :cond_1

    return-object v2

    .line 270
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->seekLine()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    if-nez v0, :cond_2

    return-object v2

    .line 281
    :cond_2
    iget-object v0, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->columns:Ljava/util/List;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 283
    iget-object v0, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->columns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0

    .line 285
    :cond_3
    iget-object v0, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->columns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_4
    move-object v3, v2

    .line 290
    :goto_1
    iget v0, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineStart:I

    .line 294
    iget v4, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineStart:I

    const/4 v5, 0x0

    move-object v10, v2

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    :goto_2
    iget v11, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineEnd:I

    const/16 v13, 0x22

    const/4 v14, 0x1

    if-ge v4, v11, :cond_1a

    .line 295
    iget-object v11, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->buf:[C

    aget-char v11, v11, v4

    const/16 v15, 0x2c

    if-eqz v6, :cond_8

    if-ne v11, v13, :cond_7

    add-int/lit8 v2, v4, 0x1

    .line 300
    iget v12, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineEnd:I

    if-ge v2, v12, :cond_6

    .line 301
    iget-object v12, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->buf:[C

    aget-char v12, v12, v2

    if-ne v12, v13, :cond_5

    add-int/lit8 v7, v7, 0x2

    add-int/lit8 v9, v9, 0x1

    move v4, v2

    goto/16 :goto_c

    :cond_5
    if-ne v12, v15, :cond_9

    move v4, v2

    move v11, v12

    goto :goto_3

    .line 311
    :cond_6
    iget v12, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineEnd:I

    if-ne v2, v12, :cond_9

    goto/16 :goto_d

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_c

    :cond_8
    if-ne v11, v13, :cond_9

    move v6, v14

    goto/16 :goto_c

    :cond_9
    :goto_3
    if-ne v11, v15, :cond_7

    .line 326
    iget-object v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->types:[Ljava/lang/reflect/Type;

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->types:[Ljava/lang/reflect/Type;

    array-length v2, v2

    if-ge v8, v2, :cond_a

    iget-object v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->types:[Ljava/lang/reflect/Type;

    aget-object v2, v2, v8

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    :goto_4
    if-eqz v6, :cond_12

    if-nez v9, :cond_d

    if-eqz v2, :cond_c

    .line 331
    const-class v6, Ljava/lang/String;

    if-eq v2, v6, :cond_c

    const-class v6, Ljava/lang/Object;

    if-eq v2, v6, :cond_c

    if-eqz p1, :cond_b

    goto :goto_5

    .line 335
    :cond_b
    :try_start_1
    iget-object v6, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->buf:[C

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v6, v0, v7, v2}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->readValue([CIILjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_a

    :catch_0
    move-exception v0

    .line 337
    invoke-virtual {v1, v8, v0}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->error(ILjava/lang/Exception;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_a

    .line 332
    :cond_c
    :goto_5
    new-instance v2, Ljava/lang/String;

    iget-object v6, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->buf:[C

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v2, v6, v0, v7}, Ljava/lang/String;-><init>([CII)V

    :goto_6
    move-object v0, v2

    goto/16 :goto_a

    :cond_d
    sub-int v6, v7, v9

    .line 341
    new-array v9, v6, [C

    add-int/2addr v7, v0

    add-int/lit8 v0, v0, 0x1

    move v11, v5

    :goto_7
    if-ge v0, v7, :cond_f

    .line 344
    iget-object v12, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->buf:[C

    aget-char v15, v12, v0

    add-int/lit8 v16, v11, 0x1

    .line 345
    aput-char v15, v9, v11

    if-ne v15, v13, :cond_e

    add-int/lit8 v11, v0, 0x1

    .line 346
    aget-char v12, v12, v11

    if-ne v12, v13, :cond_e

    move v0, v11

    :cond_e
    add-int/2addr v0, v14

    move/from16 v11, v16

    goto :goto_7

    :cond_f
    if-eqz v2, :cond_11

    .line 351
    const-class v0, Ljava/lang/String;

    if-eq v2, v0, :cond_11

    const-class v0, Ljava/lang/Object;

    if-eq v2, v0, :cond_11

    if-eqz p1, :cond_10

    goto :goto_8

    .line 355
    :cond_10
    :try_start_2
    invoke-virtual {v1, v9, v5, v6, v2}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->readValue([CIILjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_a

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 357
    invoke-virtual {v1, v8, v2}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->error(ILjava/lang/Exception;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a

    .line 352
    :cond_11
    :goto_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v9}, Ljava/lang/String;-><init>([C)V

    goto :goto_a

    :cond_12
    if-eqz v2, :cond_14

    .line 362
    const-class v6, Ljava/lang/String;

    if-eq v2, v6, :cond_14

    const-class v6, Ljava/lang/Object;

    if-eq v2, v6, :cond_14

    if-eqz p1, :cond_13

    goto :goto_9

    .line 372
    :cond_13
    :try_start_3
    iget-object v6, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->buf:[C

    invoke-virtual {v1, v6, v0, v7, v2}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->readValue([CIILjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    .line 374
    invoke-virtual {v1, v8, v0}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->error(ILjava/lang/Exception;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a

    :cond_14
    :goto_9
    if-ne v7, v14, :cond_15

    .line 364
    iget-object v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->buf:[C

    aget-char v0, v2, v0

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toString(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_15
    const/4 v2, 0x2

    if-ne v7, v2, :cond_16

    .line 366
    iget-object v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->buf:[C

    aget-char v6, v2, v0

    add-int/lit8 v0, v0, 0x1

    aget-char v0, v2, v0

    invoke-static {v6, v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toString(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 368
    :cond_16
    new-instance v2, Ljava/lang/String;

    iget-object v6, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->buf:[C

    invoke-direct {v2, v6, v0, v7}, Ljava/lang/String;-><init>([CII)V

    goto :goto_6

    :goto_a
    if-eqz v3, :cond_17

    .line 380
    array-length v2, v3

    if-ge v8, v2, :cond_19

    .line 381
    aput-object v0, v3, v8

    goto :goto_b

    :cond_17
    if-nez v10, :cond_18

    .line 385
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 387
    :cond_18
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    :goto_b
    add-int/lit8 v0, v4, 0x1

    add-int/lit8 v8, v8, 0x1

    move v6, v5

    move v7, v6

    move v9, v7

    :goto_c
    add-int/2addr v4, v14

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_1a
    :goto_d
    if-gtz v7, :cond_1b

    if-eqz v6, :cond_2b

    .line 403
    :cond_1b
    iget-object v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->types:[Ljava/lang/reflect/Type;

    if-eqz v2, :cond_1c

    iget-object v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->types:[Ljava/lang/reflect/Type;

    array-length v2, v2

    if-ge v8, v2, :cond_1c

    iget-object v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->types:[Ljava/lang/reflect/Type;

    aget-object v2, v2, v8

    goto :goto_e

    :cond_1c
    const/4 v2, 0x0

    :goto_e
    if-eqz v6, :cond_24

    if-nez v9, :cond_1f

    if-eqz v2, :cond_1e

    .line 407
    const-class v4, Ljava/lang/String;

    if-eq v2, v4, :cond_1e

    const-class v4, Ljava/lang/Object;

    if-eq v2, v4, :cond_1e

    if-eqz p1, :cond_1d

    goto :goto_f

    .line 410
    :cond_1d
    iget-object v4, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->buf:[C

    add-int/2addr v0, v14

    invoke-virtual {v1, v4, v0, v7, v2}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->readValue([CIILjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_14

    .line 408
    :cond_1e
    :goto_f
    new-instance v2, Ljava/lang/String;

    iget-object v4, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->buf:[C

    add-int/2addr v0, v14

    invoke-direct {v2, v4, v0, v7}, Ljava/lang/String;-><init>([CII)V

    :goto_10
    move-object v0, v2

    goto/16 :goto_14

    :cond_1f
    sub-int/2addr v7, v9

    .line 413
    new-array v4, v7, [C

    .line 414
    iget v6, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineEnd:I

    add-int/2addr v0, v14

    move v9, v5

    :goto_11
    if-ge v0, v6, :cond_21

    .line 416
    iget-object v11, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->buf:[C

    aget-char v12, v11, v0

    add-int/lit8 v15, v9, 0x1

    .line 417
    aput-char v12, v4, v9

    if-ne v12, v13, :cond_20

    add-int/lit8 v9, v0, 0x1

    .line 418
    aget-char v11, v11, v9

    if-ne v11, v13, :cond_20

    move v0, v9

    :cond_20
    add-int/2addr v0, v14

    move v9, v15

    goto :goto_11

    :cond_21
    if-eqz v2, :cond_23

    .line 423
    const-class v0, Ljava/lang/String;

    if-eq v2, v0, :cond_23

    const-class v0, Ljava/lang/Object;

    if-eq v2, v0, :cond_23

    if-eqz p1, :cond_22

    goto :goto_12

    .line 427
    :cond_22
    :try_start_4
    invoke-virtual {v1, v4, v5, v7, v2}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->readValue([CIILjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_14

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 429
    invoke-virtual {v1, v8, v2}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->error(ILjava/lang/Exception;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_14

    .line 424
    :cond_23
    :goto_12
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V

    goto :goto_14

    :cond_24
    if-eqz v2, :cond_26

    .line 434
    const-class v4, Ljava/lang/String;

    if-eq v2, v4, :cond_26

    const-class v4, Ljava/lang/Object;

    if-eq v2, v4, :cond_26

    if-eqz p1, :cond_25

    goto :goto_13

    .line 445
    :cond_25
    :try_start_5
    iget-object v4, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->buf:[C

    invoke-virtual {v1, v4, v0, v7, v2}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->readValue([CIILjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_14

    :catch_4
    move-exception v0

    .line 447
    invoke-virtual {v1, v8, v0}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->error(ILjava/lang/Exception;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_14

    :cond_26
    :goto_13
    if-ne v7, v14, :cond_27

    .line 437
    iget-object v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->buf:[C

    aget-char v0, v2, v0

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toString(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_27
    const/4 v2, 0x2

    if-ne v7, v2, :cond_28

    .line 439
    iget-object v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->buf:[C

    aget-char v4, v2, v0

    add-int/2addr v0, v14

    aget-char v0, v2, v0

    invoke-static {v4, v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toString(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 441
    :cond_28
    new-instance v2, Ljava/lang/String;

    iget-object v4, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->buf:[C

    invoke-direct {v2, v4, v0, v7}, Ljava/lang/String;-><init>([CII)V

    goto :goto_10

    :goto_14
    if-eqz v3, :cond_29

    .line 453
    array-length v2, v3

    if-ge v8, v2, :cond_2b

    .line 454
    aput-object v0, v3, v8

    goto :goto_15

    :cond_29
    if-nez v10, :cond_2a

    .line 458
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 460
    :cond_2a
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    :goto_15
    if-nez v3, :cond_2d

    if-eqz v10, :cond_2d

    if-eqz p1, :cond_2c

    .line 467
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_16

    .line 469
    :cond_2c
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    :goto_16
    move-object v3, v0

    .line 471
    invoke-interface {v10, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 475
    :cond_2d
    iget-object v0, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->input:Ljava/io/Reader;

    if-nez v0, :cond_2e

    iget v0, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->off:I

    iget v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->end:I

    if-ne v0, v2, :cond_2e

    .line 476
    iput-boolean v14, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->inputEnd:Z

    :cond_2e
    return-object v3

    :catch_5
    move-exception v0

    .line 276
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo v3, "seekLine error"

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method readValue([CIILjava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 221
    :cond_0
    const-class v0, Ljava/lang/Integer;

    if-ne p4, v0, :cond_1

    .line 222
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseInt([CII)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 225
    :cond_1
    const-class v0, Ljava/lang/Long;

    if-ne p4, v0, :cond_2

    .line 226
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseLong([CII)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 229
    :cond_2
    const-class v0, Ljava/math/BigDecimal;

    if-ne p4, v0, :cond_3

    .line 230
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseBigDecimal([CII)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 233
    :cond_3
    const-class v0, Ljava/lang/Float;

    if-ne p4, v0, :cond_4

    .line 234
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseFloat([CII)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 237
    :cond_4
    const-class v0, Ljava/lang/Double;

    if-ne p4, v0, :cond_5

    .line 238
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseDouble([CII)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 241
    :cond_5
    const-class v0, Ljava/util/Date;

    if-ne p4, v0, :cond_6

    .line 242
    sget-object p4, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis([CIILjava/time/ZoneId;)J

    move-result-wide p1

    .line 243
    new-instance p3, Ljava/util/Date;

    invoke-direct {p3, p1, p2}, Ljava/util/Date;-><init>(J)V

    return-object p3

    .line 246
    :cond_6
    const-class v0, Ljava/lang/Boolean;

    if-ne p4, v0, :cond_7

    .line 247
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseBoolean([CII)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 250
    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 251
    invoke-static {v0, p4}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected seekLine()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->buf:[C

    .line 84
    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->off:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    .line 86
    iget-object v5, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->input:Ljava/io/Reader;

    if-eqz v5, :cond_1

    const/high16 v0, 0x80000

    new-array v0, v0, [C

    .line 87
    iput-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->buf:[C

    .line 88
    invoke-virtual {v5, v0}, Ljava/io/Reader;->read([C)I

    move-result v5

    if-ne v5, v2, :cond_0

    .line 90
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->inputEnd:Z

    return v3

    .line 93
    :cond_0
    iput v5, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->end:I

    :cond_1
    move v5, v3

    :goto_0
    const/4 v6, 0x3

    if-ge v5, v6, :cond_17

    .line 98
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineTerminated:Z

    move v6, v1

    .line 100
    :goto_1
    iget v7, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->end:I

    if-ge v6, v7, :cond_10

    add-int/lit8 v7, v6, 0x4

    .line 101
    iget v8, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->end:I

    const/16 v9, 0x22

    if-ge v7, v8, :cond_2

    .line 102
    aget-char v7, v0, v6

    add-int/lit8 v8, v6, 0x1

    .line 103
    aget-char v8, v0, v8

    add-int/lit8 v10, v6, 0x2

    .line 104
    aget-char v10, v0, v10

    add-int/lit8 v11, v6, 0x3

    .line 105
    aget-char v12, v0, v11

    if-le v7, v9, :cond_2

    if-le v8, v9, :cond_2

    if-le v10, v9, :cond_2

    if-le v12, v9, :cond_2

    .line 107
    iget v6, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineSize:I

    add-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineSize:I

    move v6, v11

    goto/16 :goto_2

    .line 113
    :cond_2
    aget-char v7, v0, v6

    if-ne v7, v9, :cond_6

    .line 115
    iget v7, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineSize:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineSize:I

    .line 116
    iget-boolean v7, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->quote:Z

    if-nez v7, :cond_3

    .line 117
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->quote:Z

    goto/16 :goto_2

    :cond_3
    add-int/lit8 v7, v6, 0x1

    .line 120
    iget v8, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->end:I

    if-lt v7, v8, :cond_4

    goto/16 :goto_3

    .line 123
    :cond_4
    aget-char v8, v0, v7

    if-ne v8, v9, :cond_5

    .line 124
    iget v6, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineSize:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineSize:I

    move v6, v7

    goto/16 :goto_2

    .line 127
    :cond_5
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->quote:Z

    goto/16 :goto_2

    .line 133
    :cond_6
    iget-boolean v8, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->quote:Z

    if-eqz v8, :cond_7

    .line 134
    iget v7, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineSize:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineSize:I

    goto :goto_2

    :cond_7
    const-wide/16 v8, 0x0

    const/16 v10, 0xa

    if-ne v7, v10, :cond_a

    .line 139
    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineSize:I

    if-gtz v1, :cond_8

    iget-wide v10, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->features:J

    sget-object v1, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->IgnoreEmptyLine:Lcom/alibaba/fastjson2/stream/StreamReader$Feature;

    iget-wide v12, v1, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->mask:J

    and-long/2addr v10, v12

    cmp-long v1, v10, v8

    if-nez v1, :cond_9

    .line 140
    :cond_8
    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->rowCount:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->rowCount:I

    .line 142
    :cond_9
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineTerminated:Z

    .line 143
    iput v3, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineSize:I

    .line 144
    iput v6, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineEnd:I

    .line 145
    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineNextStart:I

    iput v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineStart:I

    add-int/lit8 v1, v6, 0x1

    .line 146
    iput v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineNextStart:I

    goto :goto_3

    :cond_a
    const/16 v11, 0xd

    if-ne v7, v11, :cond_f

    .line 150
    iget v7, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineSize:I

    if-gtz v7, :cond_b

    iget-wide v11, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->features:J

    sget-object v7, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->IgnoreEmptyLine:Lcom/alibaba/fastjson2/stream/StreamReader$Feature;

    iget-wide v13, v7, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->mask:J

    and-long/2addr v11, v13

    cmp-long v7, v11, v8

    if-nez v7, :cond_c

    .line 151
    :cond_b
    iget v7, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->rowCount:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->rowCount:I

    .line 154
    :cond_c
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineTerminated:Z

    .line 155
    iput v3, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineSize:I

    .line 156
    iput v6, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineEnd:I

    add-int/lit8 v7, v6, 0x1

    .line 159
    iget v8, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->end:I

    if-lt v7, v8, :cond_d

    goto :goto_3

    .line 162
    :cond_d
    aget-char v1, v0, v7

    if-ne v1, v10, :cond_e

    move v6, v7

    .line 166
    :cond_e
    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineNextStart:I

    iput v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineStart:I

    add-int/lit8 v1, v6, 0x1

    .line 167
    iput v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineNextStart:I

    goto :goto_3

    .line 171
    :cond_f
    iget v7, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineSize:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineSize:I

    :goto_2
    add-int/2addr v6, v4

    goto/16 :goto_1

    .line 175
    :cond_10
    :goto_3
    iget-boolean v6, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineTerminated:Z

    if-nez v6, :cond_15

    .line 176
    iget-object v6, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->input:Ljava/io/Reader;

    if-eqz v6, :cond_14

    iget-boolean v6, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->inputEnd:Z

    if-nez v6, :cond_14

    .line 177
    iget v6, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->end:I

    sub-int/2addr v6, v1

    if-lez v1, :cond_12

    if-lez v6, :cond_11

    .line 180
    invoke-static {v0, v1, v0, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    :cond_11
    iput v3, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineNextStart:I

    iput v3, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineStart:I

    .line 184
    iput v6, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->end:I

    .line 185
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->quote:Z

    move v1, v3

    .line 188
    :cond_12
    iget-object v6, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->input:Ljava/io/Reader;

    iget v7, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->end:I

    array-length v8, v0

    iget v9, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->end:I

    sub-int/2addr v8, v9

    invoke-virtual {v6, v0, v7, v8}, Ljava/io/Reader;->read([CII)I

    move-result v6

    if-ne v6, v2, :cond_13

    .line 190
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->inputEnd:Z

    .line 191
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->end:I

    if-ne v1, v0, :cond_14

    .line 192
    iput v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->off:I

    return v3

    .line 196
    :cond_13
    iget v7, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->end:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->end:I

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 201
    :cond_14
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineNextStart:I

    iput v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineStart:I

    .line 202
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->end:I

    iput v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineEnd:I

    .line 203
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->rowCount:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->rowCount:I

    .line 204
    iput v3, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineSize:I

    .line 205
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->end:I

    move v1, v0

    .line 208
    :cond_15
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->end:I

    if-ne v1, v0, :cond_16

    move v3, v4

    :cond_16
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->lineTerminated:Z

    .line 212
    :cond_17
    iput v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->off:I

    return v4
.end method

.method public statAll()V
    .locals 2

    .line 490
    new-instance v0, Lcom/alibaba/fastjson2/support/csv/-$$Lambda$CSVReaderUTF16$Nl70CjvAZNX-5NX4DGmBw_moQTU;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/support/csv/-$$Lambda$CSVReaderUTF16$Nl70CjvAZNX-5NX4DGmBw_moQTU;-><init>(Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;)V

    const v1, 0x7fffffff

    .line 494
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->readAll(Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer;I)V

    return-void
.end method

.method public statAll(I)V
    .locals 1

    .line 498
    new-instance v0, Lcom/alibaba/fastjson2/support/csv/-$$Lambda$CSVReaderUTF16$JxuzFxB03tNEm5Vdl3mZXiPYfd4;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/support/csv/-$$Lambda$CSVReaderUTF16$JxuzFxB03tNEm5Vdl3mZXiPYfd4;-><init>(Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;)V

    .line 502
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->readAll(Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer;I)V

    return-void
.end method
