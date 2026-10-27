.class Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;
.super Lcom/alibaba/fastjson/JSONValidator;
.source "JSONValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReaderValidator"
.end annotation


# static fields
.field private static final bufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field


# instance fields
.field private buf:[C

.field private end:I

.field final r:Ljava/io/Reader;

.field private readCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 444
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->bufLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .param p1, "r"    # Ljava/io/Reader;

    .line 452
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONValidator;-><init>()V

    .line 449
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->end:I

    .line 450
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->readCount:I

    .line 453
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->r:Ljava/io/Reader;

    .line 454
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->buf:[C

    .line 455
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->buf:[C

    if-eqz v0, :cond_0

    .line 456
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->bufLocal:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 458
    :cond_0
    const/16 v0, 0x2000

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->buf:[C

    .line 461
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->next()V

    .line 462
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->skipWhiteSpace()V

    .line 463
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->bufLocal:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->buf:[C

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 503
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->r:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 504
    return-void
.end method

.method next()V
    .locals 5

    .line 466
    iget v0, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->pos:I

    iget v1, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->end:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 467
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->pos:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->pos:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->ch:C

    goto :goto_0

    .line 469
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->eof:Z

    if-nez v0, :cond_3

    .line 472
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->r:Ljava/io/Reader;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->buf:[C

    iget-object v3, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->buf:[C

    array-length v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 473
    .local v0, "len":I
    iget v1, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->readCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->readCount:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    nop

    .line 475
    nop

    .line 478
    if-lez v0, :cond_1

    .line 479
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->buf:[C

    aget-char v1, v1, v4

    iput-char v1, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->ch:C

    .line 480
    iput v4, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->pos:I

    .line 481
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->end:I

    goto :goto_0

    .line 483
    :cond_1
    const/4 v1, -0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 484
    iput v4, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->pos:I

    .line 485
    iput v4, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->end:I

    .line 486
    iput-object v3, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->buf:[C

    .line 487
    iput-char v4, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->ch:C

    .line 488
    iput-boolean v2, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->eof:Z

    goto :goto_0

    .line 490
    :cond_2
    iput v4, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->pos:I

    .line 491
    iput v4, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->end:I

    .line 492
    iput-object v3, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->buf:[C

    .line 493
    iput-char v4, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->ch:C

    .line 494
    iput-boolean v2, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->eof:Z

    .line 495
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "read error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 474
    .end local v0    # "len":I
    :catch_0
    move-exception v0

    .line 475
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "read error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 499
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_3
    :goto_0
    return-void
.end method
