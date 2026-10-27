.class public Lcom/ta/utdid2/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/utdid2/a/a/a$b;,
        Lcom/ta/utdid2/a/a/a$a;
    }
.end annotation


# static fields
.field static final synthetic d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ta/utdid2/a/a/a;->d:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 740
    return-void
.end method

.method public static encode([BI)[B
    .locals 2
    .param p0, "input"    # [B
    .param p1, "flags"    # I

    .line 486
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/ta/utdid2/a/a/a;->encode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([BIII)[B
    .locals 5
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "flags"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Assert"
        }
    .end annotation

    .line 501
    new-instance v0, Lcom/ta/utdid2/a/a/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/ta/utdid2/a/a/a$b;-><init>(I[B)V

    .line 504
    div-int/lit8 v1, p2, 0x3

    mul-int/lit8 v1, v1, 0x4

    .line 507
    iget-boolean v2, v0, Lcom/ta/utdid2/a/a/a$b;->e:Z

    if-eqz v2, :cond_0

    .line 508
    rem-int/lit8 v2, p2, 0x3

    if-lez v2, :cond_1

    .line 509
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 512
    :cond_0
    rem-int/lit8 v2, p2, 0x3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 519
    :pswitch_0
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    .line 516
    :pswitch_1
    add-int/lit8 v1, v1, 0x2

    .line 517
    goto :goto_0

    .line 514
    :pswitch_2
    nop

    .line 525
    :cond_1
    :goto_0
    iget-boolean v2, v0, Lcom/ta/utdid2/a/a/a$b;->f:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-lez p2, :cond_3

    .line 526
    add-int/lit8 v2, p2, -0x1

    div-int/lit8 v2, v2, 0x39

    add-int/2addr v2, v3

    iget-boolean v4, v0, Lcom/ta/utdid2/a/a/a$b;->g:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    mul-int/2addr v2, v4

    add-int/2addr v1, v2

    .line 530
    :cond_3
    new-array v2, v1, [B

    iput-object v2, v0, Lcom/ta/utdid2/a/a/a$b;->a:[B

    .line 531
    invoke-virtual {v0, p0, p1, p2, v3}, Lcom/ta/utdid2/a/a/a$b;->a([BIIZ)Z

    .line 533
    sget-boolean v2, Lcom/ta/utdid2/a/a/a;->d:Z

    if-nez v2, :cond_5

    iget v2, v0, Lcom/ta/utdid2/a/a/a$b;->b:I

    if-ne v2, v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 535
    :cond_5
    :goto_2
    iget-object v0, v0, Lcom/ta/utdid2/a/a/a$b;->a:[B

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static encodeToString([BI)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # [B
    .param p1, "flags"    # I

    .line 450
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/ta/utdid2/a/a/a;->encode([BI)[B

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 451
    :catch_0
    move-exception v0

    .line 453
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
