.class public final Lbrave/sampler/CountingSampler;
.super Lbrave/sampler/Sampler;
.source "CountingSampler.java"


# instance fields
.field private final counter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final sampleDecisions:Ljava/util/BitSet;


# direct methods
.method constructor <init>(F)V
    .locals 1

    .line 38
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, p1, v0}, Lbrave/sampler/CountingSampler;-><init>(FLjava/util/Random;)V

    return-void
.end method

.method constructor <init>(FLjava/util/Random;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Lbrave/sampler/Sampler;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lbrave/sampler/CountingSampler;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    const/16 v0, 0x64

    .line 47
    invoke-static {v0, p1, p2}, Lbrave/sampler/CountingSampler;->randomBitSet(IILjava/util/Random;)Ljava/util/BitSet;

    move-result-object p1

    iput-object p1, p0, Lbrave/sampler/CountingSampler;->sampleDecisions:Ljava/util/BitSet;

    return-void
.end method

.method public static create(F)Lbrave/sampler/Sampler;
    .locals 4

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    .line 25
    sget-object p0, Lbrave/sampler/CountingSampler;->NEVER_SAMPLE:Lbrave/sampler/Sampler;

    return-object p0

    :cond_0
    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 26
    sget-object p0, Lbrave/sampler/CountingSampler;->ALWAYS_SAMPLE:Lbrave/sampler/Sampler;

    return-object p0

    :cond_1
    const v0, 0x3c23d70a    # 0.01f

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_2

    .line 30
    new-instance v0, Lbrave/sampler/CountingSampler;

    invoke-direct {v0, p0}, Lbrave/sampler/CountingSampler;-><init>(F)V

    return-object v0

    .line 28
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rate should be between 0.01 and 1: was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static mod(II)I
    .locals 0

    .line 65
    rem-int/2addr p0, p1

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method static randomBitSet(IILjava/util/Random;)Ljava/util/BitSet;
    .locals 6

    .line 75
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p0}, Ljava/util/BitSet;-><init>(I)V

    .line 76
    new-array v1, p1, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 79
    aput v2, v1, v2

    .line 80
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, p0, :cond_2

    add-int/lit8 v3, v2, 0x1

    .line 83
    invoke-virtual {p2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    if-ge v4, p1, :cond_1

    .line 85
    aget v5, v1, v4

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->clear(I)V

    .line 86
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 87
    aput v2, v1, v4

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public isSampled(J)Z
    .locals 1

    .line 53
    iget-object p1, p0, Lbrave/sampler/CountingSampler;->sampleDecisions:Ljava/util/BitSet;

    iget-object p2, p0, Lbrave/sampler/CountingSampler;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p2

    const/16 v0, 0x64

    invoke-static {p2, v0}, Lbrave/sampler/CountingSampler;->mod(II)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "CountingSampler()"

    return-object v0
.end method
