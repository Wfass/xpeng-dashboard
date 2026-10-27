.class public Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;
.super Ljava/lang/Object;
.source "AmbientEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/ambient/AmbientEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCount:I

.field private mDisplayId:I

.field private mFlowing:Z

.field private mHue:Z

.field private final mName:Ljava/lang/String;

.field private final mPackets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/ambient/AmbientData;",
            ">;"
        }
    .end annotation
.end field

.field private mPriority:I

.field private mRhythm:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput v0, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;->mCount:I

    .line 43
    iput v0, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;->mPriority:I

    const/4 v1, 0x0

    .line 44
    iput v1, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;->mDisplayId:I

    .line 45
    iput-boolean v1, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;->mRhythm:Z

    .line 46
    iput-boolean v1, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;->mHue:Z

    .line 47
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;->mFlowing:Z

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;->mPackets:Ljava/util/List;

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;->mName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic lambda$m2ZXP_32Bkx8yK_dgJd4_yUQt8M(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setSequence$0(I)[Ljava/lang/String;
    .locals 0

    .line 96
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method static synthetic lambda$setSequence$1(I)[Ljava/lang/String;
    .locals 0

    .line 123
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/xiaopeng/xuimanager/ambient/AmbientEffect;
    .locals 11

    .line 137
    new-instance v10, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;->mName:Ljava/lang/String;

    iget v2, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;->mCount:I

    iget v3, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;->mPriority:I

    iget v4, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;->mDisplayId:I

    iget-boolean v5, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;->mRhythm:Z

    iget-boolean v6, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;->mHue:Z

    iget-boolean v7, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;->mFlowing:Z

    iget-object v8, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;->mPackets:Ljava/util/List;

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect;-><init>(Ljava/lang/String;IIIZZZLjava/util/List;Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$1;)V

    return-object v10
.end method

.method public setCount(I)Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;
    .locals 0

    .line 55
    iput p1, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;->mCount:I

    return-object p0
.end method

.method public setFlowing(Z)Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;->mFlowing:Z

    return-object p0
.end method

.method public setHue(I)Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;->mHue:Z

    .line 71
    iput p1, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;->mDisplayId:I

    return-object p0
.end method

.method public setPriority(I)Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;
    .locals 0

    .line 60
    iput p1, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;->mPriority:I

    return-object p0
.end method

.method public setRhythm()Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;->mRhythm:Z

    return-object p0
.end method

.method public setSequence(IIIII)Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;
    .locals 7

    const/4 v0, 0x1

    new-array v2, v0, [I

    const/4 v1, 0x0

    aput p1, v2, v1

    new-array v3, v0, [Ljava/lang/String;

    .line 82
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    move-object v1, p0

    move v4, p3

    move v5, p4

    move v6, p5

    .line 84
    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;->setSequence([I[Ljava/lang/String;III)Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;

    return-object p0
.end method

.method public setSequence(ILjava/lang/String;III)Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;
    .locals 7

    const/4 v0, 0x1

    new-array v2, v0, [I

    const/4 v0, 0x0

    aput p1, v2, v0

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 91
    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;->setSequence([ILjava/lang/String;III)Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;

    return-object p0
.end method

.method public setSequence(I[IIII)Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;
    .locals 7

    const/4 v0, 0x1

    new-array v2, v0, [I

    const/4 v0, 0x0

    aput p1, v2, v0

    .line 123
    invoke-static {p2}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    sget-object p2, Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientEffect$Builder$m2ZXP_32Bkx8yK_dgJd4_yUQt8M;->INSTANCE:Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientEffect$Builder$m2ZXP_32Bkx8yK_dgJd4_yUQt8M;

    invoke-interface {p1, p2}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientEffect$Builder$X-wqD0RVsGI4jgAVBtMLxlVZ07o;->INSTANCE:Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientEffect$Builder$X-wqD0RVsGI4jgAVBtMLxlVZ07o;

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, [Ljava/lang/String;

    move-object v1, p0

    move v4, p3

    move v5, p4

    move v6, p5

    .line 125
    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;->setSequence([I[Ljava/lang/String;III)Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;

    return-object p0
.end method

.method public setSequence(I[Ljava/lang/String;III)Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;
    .locals 7

    const/4 v0, 0x1

    new-array v2, v0, [I

    const/4 v0, 0x0

    aput p1, v2, v0

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 132
    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;->setSequence([I[Ljava/lang/String;III)Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;

    return-object p0
.end method

.method public setSequence([IIIII)Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;
    .locals 7

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    .line 108
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, v3, v0

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    .line 110
    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;->setSequence([I[Ljava/lang/String;III)Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;

    return-object p0
.end method

.method public setSequence([ILjava/lang/String;III)Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;
    .locals 7

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v3, v0

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    .line 117
    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;->setSequence([I[Ljava/lang/String;III)Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;

    return-object p0
.end method

.method public setSequence([I[IIII)Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;
    .locals 6

    .line 96
    invoke-static {p2}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p2

    sget-object v0, Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientEffect$Builder$m2ZXP_32Bkx8yK_dgJd4_yUQt8M;->INSTANCE:Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientEffect$Builder$m2ZXP_32Bkx8yK_dgJd4_yUQt8M;

    invoke-interface {p2, v0}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p2

    sget-object v0, Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientEffect$Builder$Y5FkncOITiKX3WECBSt_ledO5uA;->INSTANCE:Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientEffect$Builder$Y5FkncOITiKX3WECBSt_ledO5uA;

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    .line 98
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;->setSequence([I[Ljava/lang/String;III)Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;

    return-object p0
.end method

.method public setSequence([I[Ljava/lang/String;III)Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;
    .locals 8

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;->mPackets:Ljava/util/List;

    new-instance v7, Lcom/xiaopeng/xuimanager/ambient/AmbientData;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuimanager/ambient/AmbientData;-><init>([I[Ljava/lang/String;III)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
