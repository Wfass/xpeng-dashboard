.class Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;
.super Lcom/alibaba/fastjson/JSONValidator;
.source "JSONValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UTF8InputStreamValidator"
.end annotation


# static fields
.field private static final bufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private buf:[B

.field private end:I

.field private final is:Ljava/io/InputStream;

.field private readCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 360
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->bufLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;

    .line 367
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONValidator;-><init>()V

    .line 364
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->end:I

    .line 365
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->readCount:I

    .line 368
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->is:Ljava/io/InputStream;

    .line 369
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->buf:[B

    .line 370
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->buf:[B

    if-eqz v0, :cond_0

    .line 371
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->bufLocal:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 373
    :cond_0
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->buf:[B

    .line 376
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->next()V

    .line 377
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->skipWhiteSpace()V

    .line 378
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

    .line 417
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->bufLocal:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->buf:[B

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 418
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 419
    return-void
.end method

.method next()V
    .locals 5

    .line 381
    iget v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->pos:I

    iget v1, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->end:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 382
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->buf:[B

    iget v1, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->pos:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->pos:I

    aget-byte v0, v0, v1

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->ch:C

    goto :goto_0

    .line 384
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->eof:Z

    if-nez v0, :cond_3

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->is:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->buf:[B

    iget-object v3, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->buf:[B

    array-length v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 388
    .local v0, "len":I
    iget v1, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->readCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->readCount:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    nop

    .line 390
    nop

    .line 393
    if-lez v0, :cond_1

    .line 394
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->buf:[B

    aget-byte v1, v1, v4

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->ch:C

    .line 395
    iput v4, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->pos:I

    .line 396
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->end:I

    goto :goto_0

    .line 398
    :cond_1
    const/4 v1, -0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 399
    iput v4, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->pos:I

    .line 400
    iput v4, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->end:I

    .line 401
    iput-object v3, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->buf:[B

    .line 402
    iput-char v4, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->ch:C

    .line 403
    iput-boolean v2, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->eof:Z

    goto :goto_0

    .line 405
    :cond_2
    iput v4, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->pos:I

    .line 406
    iput v4, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->end:I

    .line 407
    iput-object v3, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->buf:[B

    .line 408
    iput-char v4, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->ch:C

    .line 409
    iput-boolean v2, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->eof:Z

    .line 410
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "read error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 389
    .end local v0    # "len":I
    :catch_0
    move-exception v0

    .line 390
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "read error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 414
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_3
    :goto_0
    return-void
.end method
