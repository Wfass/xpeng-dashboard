.class final Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;
.super Lcom/alibaba/fastjson2/support/csv/CSVReader;
.source "CSVReaderUTF8.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8$ByteArrayConsumerImpl;
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
            "Lcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field buf:[B

.field charset:Ljava/nio/charset/Charset;

.field input:Ljava/io/InputStream;

.field valueConsumer:Lcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->valueConsumerCreators:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Lcom/alibaba/fastjson2/support/csv/CSVReader;-><init>()V

    .line 32
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->charset:Ljava/nio/charset/Charset;

    .line 85
    iput-object p2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->charset:Ljava/nio/charset/Charset;

    .line 86
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->input:Ljava/io/InputStream;

    .line 87
    iput-object p3, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->valueConsumer:Lcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p3}, Lcom/alibaba/fastjson2/support/csv/CSVReader;-><init>(Ljava/lang/Class;)V

    .line 32
    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    iput-object p3, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->charset:Ljava/nio/charset/Charset;

    .line 80
    iput-object p2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->charset:Ljava/nio/charset/Charset;

    .line 81
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->input:Ljava/io/InputStream;

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;[Ljava/lang/reflect/Type;)V
    .locals 0

    .line 73
    invoke-direct {p0, p3}, Lcom/alibaba/fastjson2/support/csv/CSVReader;-><init>([Ljava/lang/reflect/Type;)V

    .line 32
    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    iput-object p3, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->charset:Ljava/nio/charset/Charset;

    .line 74
    iput-object p2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->charset:Ljava/nio/charset/Charset;

    .line 75
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->input:Ljava/io/InputStream;

    return-void
.end method

.method constructor <init>([BIILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p4}, Lcom/alibaba/fastjson2/support/csv/CSVReader;-><init>(Ljava/lang/Class;)V

    .line 32
    sget-object p4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    iput-object p4, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->charset:Ljava/nio/charset/Charset;

    .line 67
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->buf:[B

    .line 68
    iput p2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->off:I

    add-int/2addr p2, p3

    .line 69
    iput p2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->end:I

    return-void
.end method

.method constructor <init>([BIILjava/nio/charset/Charset;Lcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/alibaba/fastjson2/support/csv/CSVReader;-><init>()V

    .line 32
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->charset:Ljava/nio/charset/Charset;

    .line 50
    iput-object p5, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->valueConsumer:Lcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;

    .line 51
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->buf:[B

    .line 52
    iput p2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->off:I

    add-int/2addr p2, p3

    .line 53
    iput p2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->end:I

    .line 54
    iput-object p4, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method constructor <init>([BIILjava/nio/charset/Charset;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p5}, Lcom/alibaba/fastjson2/support/csv/CSVReader;-><init>(Ljava/lang/Class;)V

    .line 32
    sget-object p5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    iput-object p5, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->charset:Ljava/nio/charset/Charset;

    .line 43
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->buf:[B

    .line 44
    iput p2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->off:I

    add-int/2addr p2, p3

    .line 45
    iput p2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->end:I

    .line 46
    iput-object p4, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method constructor <init>([BII[Ljava/lang/reflect/Type;)V
    .locals 1

    .line 58
    invoke-direct {p0, p4}, Lcom/alibaba/fastjson2/support/csv/CSVReader;-><init>([Ljava/lang/reflect/Type;)V

    .line 32
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->charset:Ljava/nio/charset/Charset;

    .line 59
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->buf:[B

    .line 60
    iput p2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->off:I

    add-int/2addr p2, p3

    .line 61
    iput p2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->end:I

    .line 62
    iput-object p4, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->types:[Ljava/lang/reflect/Type;

    return-void
.end method

.method varargs constructor <init>([Lcom/alibaba/fastjson2/stream/StreamReader$Feature;)V
    .locals 7

    .line 35
    invoke-direct {p0}, Lcom/alibaba/fastjson2/support/csv/CSVReader;-><init>()V

    .line 32
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->charset:Ljava/nio/charset/Charset;

    .line 36
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 37
    iget-wide v3, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->features:J

    iget-wide v5, v2, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->mask:J

    or-long v2, v3, v5

    iput-wide v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->features:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;)Ljava/util/function/Supplier;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->objectCreator:Ljava/util/function/Supplier;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;)Ljava/util/function/Supplier;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->objectCreator:Ljava/util/function/Supplier;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;)[Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;)[Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p0
.end method

.method private readAll(Lcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;I)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v9, p2

    .line 626
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;->start()V

    const/4 v11, 0x0

    :goto_0
    if-lt v11, v9, :cond_0

    if-gez v9, :cond_3

    .line 630
    :cond_0
    :try_start_0
    iget-boolean v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->inputEnd:Z

    if-eqz v2, :cond_1

    goto :goto_1

    .line 634
    :cond_1
    iget-object v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->input:Ljava/io/InputStream;

    if-nez v2, :cond_2

    .line 635
    iget v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->off:I

    iget v3, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->end:I

    if-lt v2, v3, :cond_2

    goto :goto_1

    .line 640
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->seekLine()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_4

    .line 752
    :cond_3
    :goto_1
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;->end()V

    return-void

    .line 649
    :cond_4
    iget v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->rowCount:I

    invoke-interface {v0, v2}, Lcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;->beforeRow(I)V

    .line 652
    iget v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineStart:I

    .line 656
    iget v3, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineStart:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    :goto_2
    iget v7, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineEnd:I

    const/16 v8, 0x22

    const/4 v13, 0x1

    if-ge v3, v7, :cond_f

    .line 657
    iget-object v7, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->buf:[B

    aget-byte v7, v7, v3

    const/16 v14, 0x2c

    if-eqz v4, :cond_8

    if-ne v7, v8, :cond_7

    add-int/lit8 v15, v3, 0x1

    .line 662
    iget v10, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineEnd:I

    if-ge v15, v10, :cond_6

    .line 663
    iget-object v10, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->buf:[B

    aget-byte v10, v10, v15

    if-ne v10, v8, :cond_5

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v6, 0x1

    move v3, v15

    goto/16 :goto_7

    :cond_5
    if-ne v10, v14, :cond_9

    move v7, v10

    move v3, v15

    goto :goto_3

    .line 673
    :cond_6
    iget v10, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineEnd:I

    if-ne v15, v10, :cond_9

    goto/16 :goto_8

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_8
    if-ne v7, v8, :cond_9

    move v4, v13

    goto :goto_7

    :cond_9
    :goto_3
    move v10, v3

    if-ne v7, v14, :cond_e

    .line 688
    iget-object v3, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->buf:[B

    if-eqz v4, :cond_d

    if-nez v6, :cond_a

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    sub-int v3, v5, v6

    .line 695
    new-array v4, v3, [B

    add-int/2addr v5, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x0

    :goto_4
    if-ge v2, v5, :cond_c

    .line 698
    iget-object v7, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->buf:[B

    aget-byte v14, v7, v2

    add-int/lit8 v15, v6, 0x1

    .line 699
    aput-byte v14, v4, v6

    if-ne v14, v8, :cond_b

    add-int/lit8 v6, v2, 0x1

    .line 700
    aget-byte v7, v7, v6

    if-ne v7, v8, :cond_b

    move v2, v6

    :cond_b
    add-int/2addr v2, v13

    move v6, v15

    goto :goto_4

    :cond_c
    move v7, v3

    move-object v5, v4

    const/4 v6, 0x0

    goto :goto_6

    :cond_d
    :goto_5
    move v6, v2

    move v7, v5

    move-object v5, v3

    .line 711
    :goto_6
    iget v3, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->rowCount:I

    iget-object v8, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->charset:Ljava/nio/charset/Charset;

    move-object/from16 v2, p1

    move v4, v12

    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;->accept(II[BIILjava/nio/charset/Charset;)V

    add-int/lit8 v2, v10, 0x1

    add-int/lit8 v12, v12, 0x1

    move v3, v10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_7

    :cond_e
    add-int/lit8 v5, v5, 0x1

    move v3, v10

    :goto_7
    add-int/2addr v3, v13

    goto :goto_2

    :cond_f
    :goto_8
    if-lez v5, :cond_14

    .line 725
    iget-object v3, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->buf:[B

    if-eqz v4, :cond_13

    if-nez v6, :cond_10

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_10
    sub-int/2addr v5, v6

    .line 732
    new-array v3, v5, [B

    .line 733
    iget v4, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineEnd:I

    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x0

    :goto_9
    if-ge v2, v4, :cond_12

    .line 735
    iget-object v7, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->buf:[B

    aget-byte v10, v7, v2

    add-int/lit8 v14, v6, 0x1

    .line 736
    aput-byte v10, v3, v6

    if-ne v10, v8, :cond_11

    add-int/lit8 v6, v2, 0x1

    .line 737
    aget-byte v7, v7, v6

    if-ne v7, v8, :cond_11

    move v2, v6

    :cond_11
    add-int/2addr v2, v13

    move v6, v14

    goto :goto_9

    :cond_12
    move v7, v5

    const/4 v6, 0x0

    goto :goto_b

    :cond_13
    :goto_a
    move v6, v2

    move v7, v5

    :goto_b
    move-object v5, v3

    .line 748
    iget v3, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->rowCount:I

    iget-object v8, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->charset:Ljava/nio/charset/Charset;

    move-object/from16 v2, p1

    move v4, v12

    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;->accept(II[BIILjava/nio/charset/Charset;)V

    .line 750
    :cond_14
    iget v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->rowCount:I

    invoke-interface {v0, v2}, Lcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;->afterRow(I)V

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 646
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo v3, "seekLine error"

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->input:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 500
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/IOUtils;->close(Ljava/io/Closeable;)V

    :cond_0
    return-void
.end method

.method public isEnd()Z
    .locals 1

    .line 259
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->inputEnd:Z

    return v0
.end method

.method public synthetic lambda$statAll$0$CSVReaderUTF8(II[BIILjava/nio/charset/Charset;)V
    .locals 0

    .line 506
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->getColumnStat(I)Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;

    move-result-object p1

    .line 507
    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->stat([BIILjava/nio/charset/Charset;)V

    return-void
.end method

.method public synthetic lambda$statAll$1$CSVReaderUTF8(II[BIILjava/nio/charset/Charset;)V
    .locals 0

    .line 514
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->getColumnStat(I)Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;

    move-result-object p1

    .line 515
    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->stat([BIILjava/nio/charset/Charset;)V

    return-void
.end method

.method public readAll()V
    .locals 2

    .line 521
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->valueConsumer:Lcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;

    if-eqz v0, :cond_0

    const v1, 0x7fffffff

    .line 525
    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->readAll(Lcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;I)V

    return-void

    .line 522
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo v1, "unsupported operation, consumer is null"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readAll(I)V
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->valueConsumer:Lcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;

    if-eqz v0, :cond_0

    .line 533
    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->readAll(Lcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;I)V

    return-void

    .line 530
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo v0, "unsupported operation, consumer is null"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 538
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->readHeader()Ljava/util/List;

    .line 541
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 543
    :goto_0
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->readLineValues(Z)[Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 547
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 552
    :cond_2
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object p1

    .line 555
    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    if-nez v1, :cond_3

    .line 556
    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->objectClass:Ljava/lang/Class;

    if-eqz v1, :cond_3

    .line 557
    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->objectClass:Ljava/lang/Class;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;

    .line 558
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getFieldReaders()[Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 559
    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->objectClass:Ljava/lang/Class;

    iget-wide v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->features:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->createObjectCreator(Ljava/lang/Class;J)Ljava/util/function/Supplier;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->objectCreator:Ljava/util/function/Supplier;

    .line 564
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 565
    iget-object v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->objectClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 566
    :goto_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    .line 567
    iget-object v3, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    aget-object v0, v3, v0

    iget-object v0, v0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    aput-object v0, v1, v2

    move v0, v2

    goto :goto_1

    .line 569
    :cond_4
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64([Ljava/lang/String;)J

    move-result-wide v0

    .line 570
    sget-object v2, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->valueConsumerCreators:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/function/Function;

    if-nez v3, :cond_5

    .line 572
    iget-object v3, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->objectClass:Ljava/lang/Class;

    iget-object v4, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 573
    invoke-virtual {p1, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->createValueConsumerCreator(Ljava/lang/Class;[Lcom/alibaba/fastjson2/reader/FieldReader;)Ljava/util/function/Function;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 575
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/4 p1, 0x0

    if-eqz v3, :cond_6

    .line 581
    invoke-interface {v3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;

    :cond_6
    if-nez p1, :cond_7

    .line 585
    new-instance p1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8$ByteArrayConsumerImpl;

    invoke-direct {p1, p0, p2}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8$ByteArrayConsumerImpl;-><init>(Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;Ljava/util/function/Consumer;)V

    :cond_7
    const p2, 0x7fffffff

    .line 588
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->readAll(Lcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;I)V

    return-void
.end method

.method public readLineValues(Z)[Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    .line 264
    :try_start_0
    iget-boolean v0, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->inputEnd:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    .line 268
    :cond_0
    iget-object v0, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->input:Ljava/io/InputStream;

    if-nez v0, :cond_1

    .line 269
    iget v0, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->off:I

    iget v3, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->end:I

    if-lt v0, v3, :cond_1

    return-object v2

    .line 274
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->seekLine()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    if-nez v0, :cond_2

    return-object v2

    .line 285
    :cond_2
    iget-object v0, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->columns:Ljava/util/List;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 287
    iget-object v0, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->columns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0

    .line 289
    :cond_3
    iget-object v0, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->columns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_4
    move-object v3, v2

    .line 294
    :goto_1
    iget v0, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineStart:I

    .line 298
    iget v4, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineStart:I

    const/4 v5, 0x0

    move-object v10, v2

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    :goto_2
    iget v11, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineEnd:I

    const/16 v13, 0x22

    const/4 v14, 0x1

    if-ge v4, v11, :cond_1a

    .line 299
    iget-object v11, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->buf:[B

    aget-byte v11, v11, v4

    const/16 v15, 0x2c

    if-eqz v6, :cond_8

    if-ne v11, v13, :cond_7

    add-int/lit8 v2, v4, 0x1

    .line 304
    iget v12, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineEnd:I

    if-ge v2, v12, :cond_6

    .line 305
    iget-object v12, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->buf:[B

    aget-byte v12, v12, v2

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

    .line 315
    :cond_6
    iget v12, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineEnd:I

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

    .line 330
    iget-object v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->types:[Ljava/lang/reflect/Type;

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->types:[Ljava/lang/reflect/Type;

    array-length v2, v2

    if-ge v8, v2, :cond_a

    iget-object v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->types:[Ljava/lang/reflect/Type;

    aget-object v2, v2, v8

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    :goto_4
    if-eqz v6, :cond_12

    if-nez v9, :cond_d

    if-eqz v2, :cond_c

    .line 335
    const-class v6, Ljava/lang/String;

    if-eq v2, v6, :cond_c

    const-class v6, Ljava/lang/Object;

    if-eq v2, v6, :cond_c

    if-eqz p1, :cond_b

    goto :goto_5

    .line 339
    :cond_b
    :try_start_1
    iget-object v6, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->buf:[B

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v6, v0, v7, v2}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->readValue([BIILjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_a

    :catch_0
    move-exception v0

    .line 341
    invoke-virtual {v1, v8, v0}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->error(ILjava/lang/Exception;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_a

    .line 336
    :cond_c
    :goto_5
    new-instance v2, Ljava/lang/String;

    iget-object v6, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->buf:[B

    add-int/lit8 v0, v0, 0x1

    iget-object v9, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v2, v6, v0, v7, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :goto_6
    move-object v0, v2

    goto/16 :goto_a

    :cond_d
    sub-int v6, v7, v9

    .line 345
    new-array v9, v6, [B

    add-int/2addr v7, v0

    add-int/lit8 v0, v0, 0x1

    move v11, v5

    :goto_7
    if-ge v0, v7, :cond_f

    .line 348
    iget-object v12, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->buf:[B

    aget-byte v15, v12, v0

    add-int/lit8 v16, v11, 0x1

    .line 349
    aput-byte v15, v9, v11

    if-ne v15, v13, :cond_e

    add-int/lit8 v11, v0, 0x1

    .line 350
    aget-byte v12, v12, v11

    if-ne v12, v13, :cond_e

    move v0, v11

    :cond_e
    add-int/2addr v0, v14

    move/from16 v11, v16

    goto :goto_7

    :cond_f
    if-eqz v2, :cond_11

    .line 355
    const-class v0, Ljava/lang/String;

    if-eq v2, v0, :cond_11

    const-class v0, Ljava/lang/Object;

    if-ne v2, v0, :cond_10

    goto :goto_8

    .line 359
    :cond_10
    :try_start_2
    invoke-virtual {v1, v9, v5, v6, v2}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->readValue([BIILjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_a

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 361
    invoke-virtual {v1, v8, v2}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->error(ILjava/lang/Exception;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a

    .line 356
    :cond_11
    :goto_8
    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, v9, v5, v6, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_a

    :cond_12
    if-eqz v2, :cond_14

    .line 366
    const-class v6, Ljava/lang/String;

    if-eq v2, v6, :cond_14

    const-class v6, Ljava/lang/Object;

    if-eq v2, v6, :cond_14

    if-eqz p1, :cond_13

    goto :goto_9

    .line 380
    :cond_13
    :try_start_3
    iget-object v6, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->buf:[B

    invoke-virtual {v1, v6, v0, v7, v2}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->readValue([BIILjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    .line 382
    invoke-virtual {v1, v8, v0}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->error(ILjava/lang/Exception;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a

    :cond_14
    :goto_9
    if-ne v7, v14, :cond_15

    .line 368
    iget-object v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->buf:[B

    aget-byte v2, v2, v0

    if-ltz v2, :cond_15

    int-to-char v0, v2

    .line 369
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toString(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_15
    const/4 v2, 0x2

    if-ne v7, v2, :cond_16

    .line 370
    iget-object v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->buf:[B

    aget-byte v6, v2, v0

    if-ltz v6, :cond_16

    add-int/lit8 v9, v0, 0x1

    aget-byte v2, v2, v9

    if-ltz v2, :cond_16

    int-to-char v0, v6

    int-to-char v2, v2

    .line 374
    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/util/TypeUtils;->toString(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 376
    :cond_16
    new-instance v2, Ljava/lang/String;

    iget-object v6, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->buf:[B

    iget-object v9, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v2, v6, v0, v7, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto/16 :goto_6

    :goto_a
    if-eqz v3, :cond_17

    .line 388
    array-length v2, v3

    if-ge v8, v2, :cond_19

    .line 389
    aput-object v0, v3, v8

    goto :goto_b

    :cond_17
    if-nez v10, :cond_18

    .line 393
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 395
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

    .line 410
    :cond_1b
    iget-object v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->types:[Ljava/lang/reflect/Type;

    if-eqz v2, :cond_1c

    iget-object v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->types:[Ljava/lang/reflect/Type;

    array-length v2, v2

    if-ge v8, v2, :cond_1c

    iget-object v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->types:[Ljava/lang/reflect/Type;

    aget-object v2, v2, v8

    goto :goto_e

    :cond_1c
    const/4 v2, 0x0

    :goto_e
    if-eqz v6, :cond_24

    if-nez v9, :cond_1f

    if-eqz v2, :cond_1e

    .line 415
    const-class v4, Ljava/lang/String;

    if-eq v2, v4, :cond_1e

    const-class v4, Ljava/lang/Object;

    if-eq v2, v4, :cond_1e

    if-eqz p1, :cond_1d

    goto :goto_f

    .line 419
    :cond_1d
    :try_start_4
    iget-object v4, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->buf:[B

    add-int/2addr v0, v14

    invoke-virtual {v1, v4, v0, v7, v2}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->readValue([BIILjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_14

    :catch_3
    move-exception v0

    .line 421
    invoke-virtual {v1, v8, v0}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->error(ILjava/lang/Exception;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_14

    .line 416
    :cond_1e
    :goto_f
    new-instance v2, Ljava/lang/String;

    iget-object v4, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->buf:[B

    add-int/2addr v0, v14

    iget-object v5, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v2, v4, v0, v7, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :goto_10
    move-object v0, v2

    goto/16 :goto_14

    :cond_1f
    sub-int/2addr v7, v9

    .line 425
    new-array v4, v7, [B

    .line 426
    iget v6, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineEnd:I

    add-int/2addr v0, v14

    move v9, v5

    :goto_11
    if-ge v0, v6, :cond_21

    .line 428
    iget-object v11, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->buf:[B

    aget-byte v12, v11, v0

    add-int/lit8 v15, v9, 0x1

    .line 429
    aput-byte v12, v4, v9

    if-ne v12, v13, :cond_20

    add-int/lit8 v9, v0, 0x1

    .line 430
    aget-byte v11, v11, v9

    if-ne v11, v13, :cond_20

    move v0, v9

    :cond_20
    add-int/2addr v0, v14

    move v9, v15

    goto :goto_11

    :cond_21
    if-eqz v2, :cond_23

    .line 435
    const-class v0, Ljava/lang/String;

    if-eq v2, v0, :cond_23

    const-class v0, Ljava/lang/Object;

    if-eq v2, v0, :cond_23

    if-eqz p1, :cond_22

    goto :goto_12

    .line 439
    :cond_22
    :try_start_5
    invoke-virtual {v1, v4, v5, v7, v2}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->readValue([BIILjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_14

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 441
    invoke-virtual {v1, v8, v2}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->error(ILjava/lang/Exception;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_14

    .line 436
    :cond_23
    :goto_12
    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, v4, v5, v7, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_14

    :cond_24
    if-eqz v2, :cond_26

    .line 446
    const-class v4, Ljava/lang/String;

    if-eq v2, v4, :cond_26

    const-class v4, Ljava/lang/Object;

    if-eq v2, v4, :cond_26

    if-eqz p1, :cond_25

    goto :goto_13

    .line 460
    :cond_25
    :try_start_6
    iget-object v4, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->buf:[B

    invoke-virtual {v1, v4, v0, v7, v2}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->readValue([BIILjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_14

    :catch_5
    move-exception v0

    .line 462
    invoke-virtual {v1, v8, v0}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->error(ILjava/lang/Exception;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_14

    :cond_26
    :goto_13
    if-ne v7, v14, :cond_27

    .line 448
    iget-object v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->buf:[B

    aget-byte v2, v2, v0

    if-ltz v2, :cond_27

    int-to-char v0, v2

    .line 449
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toString(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_27
    const/4 v2, 0x2

    if-ne v7, v2, :cond_28

    .line 450
    iget-object v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->buf:[B

    aget-byte v4, v2, v0

    if-ltz v4, :cond_28

    add-int/lit8 v5, v0, 0x1

    aget-byte v2, v2, v5

    if-ltz v2, :cond_28

    int-to-char v0, v4

    int-to-char v2, v2

    .line 454
    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/util/TypeUtils;->toString(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 456
    :cond_28
    new-instance v2, Ljava/lang/String;

    iget-object v4, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->buf:[B

    iget-object v5, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v2, v4, v0, v7, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto/16 :goto_10

    :goto_14
    if-eqz v3, :cond_29

    .line 468
    array-length v2, v3

    if-ge v8, v2, :cond_2b

    .line 469
    aput-object v0, v3, v8

    goto :goto_15

    :cond_29
    if-nez v10, :cond_2a

    .line 473
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 475
    :cond_2a
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    :goto_15
    if-nez v3, :cond_2d

    if-eqz v10, :cond_2d

    if-eqz p1, :cond_2c

    .line 482
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_16

    .line 484
    :cond_2c
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    :goto_16
    move-object v3, v0

    .line 486
    invoke-interface {v10, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 490
    :cond_2d
    iget-object v0, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->input:Ljava/io/InputStream;

    if-nez v0, :cond_2e

    iget v0, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->off:I

    iget v2, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->end:I

    if-ne v0, v2, :cond_2e

    .line 491
    iput-boolean v14, v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->inputEnd:Z

    :cond_2e
    return-object v3

    :catch_6
    move-exception v0

    .line 280
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo v3, "seekLine error"

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method readValue([BIILjava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 225
    :cond_0
    const-class v0, Ljava/lang/Integer;

    if-ne p4, v0, :cond_1

    .line 226
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseInt([BII)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 229
    :cond_1
    const-class v0, Ljava/lang/Long;

    if-ne p4, v0, :cond_2

    .line 230
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseLong([BII)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 233
    :cond_2
    const-class v0, Ljava/math/BigDecimal;

    if-ne p4, v0, :cond_3

    .line 234
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseBigDecimal([BII)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 237
    :cond_3
    const-class v0, Ljava/lang/Float;

    if-ne p4, v0, :cond_4

    .line 238
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseFloat([BII)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 241
    :cond_4
    const-class v0, Ljava/lang/Double;

    if-ne p4, v0, :cond_5

    .line 242
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseDouble([BII)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 245
    :cond_5
    const-class v0, Ljava/util/Date;

    if-ne p4, v0, :cond_6

    .line 246
    iget-object p4, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->charset:Ljava/nio/charset/Charset;

    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {p1, p2, p3, p4, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis([BIILjava/nio/charset/Charset;Ljava/time/ZoneId;)J

    move-result-wide p1

    .line 247
    new-instance p3, Ljava/util/Date;

    invoke-direct {p3, p1, p2}, Ljava/util/Date;-><init>(J)V

    return-object p3

    .line 250
    :cond_6
    const-class v0, Ljava/lang/Boolean;

    if-ne p4, v0, :cond_7

    .line 251
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseBoolean([BII)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 254
    :cond_7
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 255
    invoke-static {v0, p4}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected seekLine()Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 91
    iget-object v1, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->buf:[B

    .line 92
    iget v2, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->off:I

    const/4 v3, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v1, :cond_1

    .line 94
    iget-object v7, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->input:Ljava/io/InputStream;

    if-eqz v7, :cond_1

    const/high16 v1, 0x80000

    new-array v1, v1, [B

    .line 95
    iput-object v1, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->buf:[B

    .line 96
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-ne v7, v3, :cond_0

    .line 98
    iput-boolean v6, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->inputEnd:Z

    return v5

    .line 101
    :cond_0
    iput v7, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->end:I

    .line 103
    iget v7, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->end:I

    if-le v7, v4, :cond_1

    .line 105
    aget-byte v7, v1, v5

    const/16 v8, -0x11

    if-ne v7, v8, :cond_1

    aget-byte v7, v1, v6

    const/16 v8, -0x45

    if-ne v7, v8, :cond_1

    const/4 v7, 0x2

    aget-byte v7, v1, v7

    const/16 v8, -0x41

    if-ne v7, v8, :cond_1

    .line 107
    iput v4, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineNextStart:I

    move v2, v4

    :cond_1
    move v7, v5

    :goto_0
    if-ge v7, v4, :cond_16

    .line 114
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineTerminated:Z

    move v8, v2

    .line 116
    :goto_1
    iget v9, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->end:I

    if-ge v8, v9, :cond_f

    .line 117
    aget-byte v9, v1, v8

    const/16 v10, 0x22

    if-ne v9, v10, :cond_5

    .line 119
    iget v9, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineSize:I

    add-int/2addr v9, v6

    iput v9, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineSize:I

    .line 120
    iget-boolean v9, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->quote:Z

    if-nez v9, :cond_2

    .line 121
    iput-boolean v6, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->quote:Z

    goto/16 :goto_2

    :cond_2
    add-int/lit8 v9, v8, 0x1

    .line 124
    iget v11, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->end:I

    if-lt v9, v11, :cond_3

    goto/16 :goto_3

    .line 127
    :cond_3
    aget-byte v11, v1, v9

    if-ne v11, v10, :cond_4

    .line 128
    iget v8, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineSize:I

    add-int/2addr v8, v6

    iput v8, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineSize:I

    move v8, v9

    goto/16 :goto_2

    .line 131
    :cond_4
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->quote:Z

    goto/16 :goto_2

    .line 137
    :cond_5
    iget-boolean v10, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->quote:Z

    if-eqz v10, :cond_6

    .line 138
    iget v9, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineSize:I

    add-int/2addr v9, v6

    iput v9, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineSize:I

    goto :goto_2

    :cond_6
    const-wide/16 v10, 0x0

    const/16 v12, 0xa

    if-ne v9, v12, :cond_9

    .line 143
    iget v2, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineSize:I

    if-gtz v2, :cond_7

    iget-wide v12, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->IgnoreEmptyLine:Lcom/alibaba/fastjson2/stream/StreamReader$Feature;

    iget-wide v14, v2, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->mask:J

    and-long/2addr v12, v14

    cmp-long v2, v12, v10

    if-nez v2, :cond_8

    .line 144
    :cond_7
    iget v2, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->rowCount:I

    add-int/2addr v2, v6

    iput v2, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->rowCount:I

    .line 146
    :cond_8
    iput-boolean v6, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineTerminated:Z

    .line 147
    iput v5, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineSize:I

    .line 148
    iput v8, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineEnd:I

    .line 149
    iget v2, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineNextStart:I

    iput v2, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineStart:I

    add-int/lit8 v2, v8, 0x1

    .line 150
    iput v2, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineNextStart:I

    goto :goto_3

    :cond_9
    const/16 v13, 0xd

    if-ne v9, v13, :cond_e

    .line 154
    iget v9, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineSize:I

    if-gtz v9, :cond_a

    iget-wide v13, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->features:J

    sget-object v9, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->IgnoreEmptyLine:Lcom/alibaba/fastjson2/stream/StreamReader$Feature;

    iget-wide v3, v9, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->mask:J

    and-long/2addr v3, v13

    cmp-long v3, v3, v10

    if-nez v3, :cond_b

    .line 155
    :cond_a
    iget v3, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->rowCount:I

    add-int/2addr v3, v6

    iput v3, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->rowCount:I

    .line 158
    :cond_b
    iput-boolean v6, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineTerminated:Z

    .line 159
    iput v5, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineSize:I

    .line 160
    iput v8, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineEnd:I

    add-int/lit8 v3, v8, 0x1

    .line 163
    iget v4, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->end:I

    if-lt v3, v4, :cond_c

    goto :goto_3

    .line 166
    :cond_c
    aget-byte v2, v1, v3

    if-ne v2, v12, :cond_d

    move v8, v3

    .line 170
    :cond_d
    iget v2, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineNextStart:I

    iput v2, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineStart:I

    add-int/lit8 v2, v8, 0x1

    .line 171
    iput v2, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineNextStart:I

    goto :goto_3

    .line 175
    :cond_e
    iget v3, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineSize:I

    add-int/2addr v3, v6

    iput v3, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineSize:I

    :goto_2
    add-int/2addr v8, v6

    const/4 v3, -0x1

    const/4 v4, 0x3

    goto/16 :goto_1

    .line 179
    :cond_f
    :goto_3
    iget-boolean v3, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineTerminated:Z

    if-nez v3, :cond_14

    .line 180
    iget-object v3, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->input:Ljava/io/InputStream;

    if-eqz v3, :cond_13

    iget-boolean v3, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->inputEnd:Z

    if-nez v3, :cond_13

    .line 181
    iget v3, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->end:I

    sub-int/2addr v3, v2

    if-lez v2, :cond_11

    if-lez v3, :cond_10

    .line 184
    invoke-static {v1, v2, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    :cond_10
    iput v5, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineNextStart:I

    iput v5, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineStart:I

    .line 188
    iput v3, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->end:I

    .line 189
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->quote:Z

    move v2, v5

    .line 192
    :cond_11
    iget-object v3, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->input:Ljava/io/InputStream;

    iget v4, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->end:I

    array-length v8, v1

    iget v9, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->end:I

    sub-int/2addr v8, v9

    invoke-virtual {v3, v1, v4, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_12

    .line 194
    iput-boolean v6, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->inputEnd:Z

    .line 195
    iget v1, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->end:I

    if-ne v2, v1, :cond_13

    .line 196
    iput v2, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->off:I

    return v5

    .line 200
    :cond_12
    iget v8, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->end:I

    add-int/2addr v8, v3

    iput v8, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->end:I

    add-int/lit8 v7, v7, 0x1

    move v3, v4

    const/4 v4, 0x3

    goto/16 :goto_0

    .line 205
    :cond_13
    iget v1, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineNextStart:I

    iput v1, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineStart:I

    .line 206
    iget v1, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->end:I

    iput v1, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineEnd:I

    .line 207
    iget v1, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->rowCount:I

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->rowCount:I

    .line 208
    iput v5, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineSize:I

    .line 209
    iget v1, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->end:I

    move v2, v1

    .line 212
    :cond_14
    iget v1, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->end:I

    if-ne v2, v1, :cond_15

    move v5, v6

    :cond_15
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lineTerminated:Z

    .line 216
    :cond_16
    iput v2, v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->off:I

    return v6
.end method

.method public statAll()V
    .locals 2

    .line 505
    new-instance v0, Lcom/alibaba/fastjson2/support/csv/-$$Lambda$CSVReaderUTF8$8qw0Ll29JfOmH0i_OU27eVh6TG0;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/support/csv/-$$Lambda$CSVReaderUTF8$8qw0Ll29JfOmH0i_OU27eVh6TG0;-><init>(Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;)V

    const v1, 0x7fffffff

    .line 509
    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->readAll(Lcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;I)V

    return-void
.end method

.method public statAll(I)V
    .locals 1

    .line 513
    new-instance v0, Lcom/alibaba/fastjson2/support/csv/-$$Lambda$CSVReaderUTF8$hkC5VbdK1dQSVf6BSQBYgpJQzho;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/support/csv/-$$Lambda$CSVReaderUTF8$hkC5VbdK1dQSVf6BSQBYgpJQzho;-><init>(Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;)V

    .line 517
    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->readAll(Lcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;I)V

    return-void
.end method
