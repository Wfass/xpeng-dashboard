.class public final Lbrave/sampler/CountingSampler;
.super Lbrave/sampler/Sampler;
.source "CountingSampler.java"


# instance fields
.field private final counter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final sampleDecisions:Ljava/util/BitSet;


# direct methods
.method constructor <init>(F)V
    .locals 1
    .param p1, "rate"    # F

    .line 38
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, p1, v0}, Lbrave/sampler/CountingSampler;-><init>(FLjava/util/Random;)V

    .line 39
    return-void
.end method

.method constructor <init>(FLjava/util/Random;)V
    .locals 2
    .param p1, "rate"    # F
    .param p2, "random"    # Ljava/util/Random;

    .line 44
    invoke-direct {p0}, Lbrave/sampler/Sampler;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lbrave/sampler/CountingSampler;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 47
    .local v0, "outOf100":I
    const/16 v1, 0x64

    invoke-static {v1, v0, p2}, Lbrave/sampler/CountingSampler;->randomBitSet(IILjava/util/Random;)Ljava/util/BitSet;

    move-result-object v1

    iput-object v1, p0, Lbrave/sampler/CountingSampler;->sampleDecisions:Ljava/util/BitSet;

    .line 48
    return-void
.end method

.method public static create(F)Lbrave/sampler/Sampler;
    .locals 4
    .param p0, "rate"    # F

    .line 25
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    sget-object v0, Lbrave/sampler/CountingSampler;->NEVER_SAMPLE:Lbrave/sampler/Sampler;

    return-object v0

    .line 26
    :cond_0
    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    sget-object v0, Lbrave/sampler/CountingSampler;->ALWAYS_SAMPLE:Lbrave/sampler/Sampler;

    return-object v0

    .line 27
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

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static mod(II)I
    .locals 2
    .param p0, "dividend"    # I
    .param p1, "divisor"    # I

    .line 65
    rem-int v0, p0, p1

    .line 66
    .local v0, "result":I
    if-ltz v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    add-int v1, p1, v0

    :goto_0
    return v1
.end method

.method static randomBitSet(IILjava/util/Random;)Ljava/util/BitSet;
    .locals 5
    .param p0, "size"    # I
    .param p1, "cardinality"    # I
    .param p2, "rnd"    # Ljava/util/Random;

    .line 75
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p0}, Ljava/util/BitSet;-><init>(I)V

    .line 76
    .local v0, "result":Ljava/util/BitSet;
    new-array v1, p1, [I

    .line 78
    .local v1, "chosen":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 79
    aput v2, v1, v2

    .line 80
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_0
    :goto_1
    if-ge v2, p0, :cond_2

    .line 83
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 84
    .local v3, "j":I
    if-ge v3, p1, :cond_1

    .line 85
    aget v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->clear(I)V

    .line 86
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 87
    aput v2, v1, v3

    .line 82
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 90
    :cond_2
    return-object v0
.end method


# virtual methods
.method public isSampled(J)Z
    .locals 3
    .param p1, "traceIdIgnored"    # J

    .line 53
    iget-object v0, p0, Lbrave/sampler/CountingSampler;->sampleDecisions:Ljava/util/BitSet;

    iget-object v1, p0, Lbrave/sampler/CountingSampler;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lbrave/sampler/CountingSampler;->mod(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 58
    const-string v0, "CountingSampler()"

    return-object v0
.end method
