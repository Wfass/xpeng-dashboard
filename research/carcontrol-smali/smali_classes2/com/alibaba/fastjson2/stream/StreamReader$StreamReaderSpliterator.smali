.class public Lcom/alibaba/fastjson2/stream/StreamReader$StreamReaderSpliterator;
.super Ljava/lang/Object;
.source "StreamReader.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/stream/StreamReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "StreamReaderSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private csvReader:Lcom/alibaba/fastjson2/support/csv/CSVReader;

.field private final streamReader:Lcom/alibaba/fastjson2/stream/StreamReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/stream/StreamReader<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/stream/StreamReader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/stream/StreamReader<",
            "TT;>;)V"
        }
    .end annotation

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    iput-object p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$StreamReaderSpliterator;->streamReader:Lcom/alibaba/fastjson2/stream/StreamReader;

    .line 562
    instance-of v0, p1, Lcom/alibaba/fastjson2/support/csv/CSVReader;

    if-eqz v0, :cond_0

    .line 563
    check-cast p1, Lcom/alibaba/fastjson2/support/csv/CSVReader;

    .line 564
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/support/csv/CSVReader;->isObjectSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 565
    iput-object p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$StreamReaderSpliterator;->csvReader:Lcom/alibaba/fastjson2/support/csv/CSVReader;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/stream/StreamReader;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/stream/StreamReader<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 571
    iput-object p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$StreamReaderSpliterator;->streamReader:Lcom/alibaba/fastjson2/stream/StreamReader;

    .line 572
    iput-object p2, p0, Lcom/alibaba/fastjson2/stream/StreamReader$StreamReaderSpliterator;->clazz:Ljava/lang/Class;

    .line 573
    instance-of p2, p1, Lcom/alibaba/fastjson2/support/csv/CSVReader;

    if-eqz p2, :cond_0

    .line 574
    check-cast p1, Lcom/alibaba/fastjson2/support/csv/CSVReader;

    .line 575
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/support/csv/CSVReader;->isObjectSupport()Z

    move-result p2

    if-nez p2, :cond_0

    .line 576
    iput-object p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$StreamReaderSpliterator;->csvReader:Lcom/alibaba/fastjson2/support/csv/CSVReader;

    :cond_0
    return-void
.end method

.method private next()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lcom/alibaba/fastjson2/stream/StreamReader$StreamReaderSpliterator;->csvReader:Lcom/alibaba/fastjson2/support/csv/CSVReader;

    if-eqz v0, :cond_2

    .line 597
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/support/csv/CSVReader;->readLineValues()[Ljava/lang/Object;

    move-result-object v0

    .line 598
    iget-object v1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$StreamReaderSpliterator;->clazz:Ljava/lang/Class;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    xor-int/2addr v1, v3

    and-int/2addr v1, v4

    if-nez v1, :cond_1

    return-object v0

    .line 599
    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v4, v2

    iget-object v0, p0, Lcom/alibaba/fastjson2/stream/StreamReader$StreamReaderSpliterator;->clazz:Ljava/lang/Class;

    aput-object v0, v4, v3

    const-string v0, "%s can not cast to %s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 603
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/stream/StreamReader$StreamReaderSpliterator;->streamReader:Lcom/alibaba/fastjson2/stream/StreamReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/stream/StreamReader;->readLineObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    const/16 v0, 0x510

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 614
    iget-object v0, p0, Lcom/alibaba/fastjson2/stream/StreamReader$StreamReaderSpliterator;->streamReader:Lcom/alibaba/fastjson2/stream/StreamReader;

    iget-boolean v0, v0, Lcom/alibaba/fastjson2/stream/StreamReader;->inputEnd:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    return-wide v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 586
    invoke-direct {p0}, Lcom/alibaba/fastjson2/stream/StreamReader$StreamReaderSpliterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 587
    iget-object v1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$StreamReaderSpliterator;->streamReader:Lcom/alibaba/fastjson2/stream/StreamReader;

    iget-boolean v1, v1, Lcom/alibaba/fastjson2/stream/StreamReader;->inputEnd:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 590
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1

    .line 584
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "action must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 609
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "parallel stream not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
