.class public Lcom/xiaopeng/xuimanager/ambient/AmbientData;
.super Ljava/lang/Object;
.source "AmbientData.java"


# instance fields
.field private bright:I

.field private colors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fade:I

.field private groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private period:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientData;->groups:Ljava/util/List;

    .line 23
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientData;->colors:Ljava/util/List;

    .line 24
    iput p3, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientData;->bright:I

    .line 25
    iput p4, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientData;->fade:I

    .line 26
    iput p5, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientData;->period:I

    return-void
.end method

.method public constructor <init>([I[IIII)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientData;->groups:Ljava/util/List;

    .line 31
    invoke-static {p2}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    sget-object p2, Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientData$m2ZXP_32Bkx8yK_dgJd4_yUQt8M;->INSTANCE:Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientData$m2ZXP_32Bkx8yK_dgJd4_yUQt8M;

    invoke-interface {p1, p2}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientData;->colors:Ljava/util/List;

    .line 32
    iput p3, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientData;->bright:I

    .line 33
    iput p4, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientData;->fade:I

    .line 34
    iput p5, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientData;->period:I

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/String;III)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientData;->groups:Ljava/util/List;

    .line 39
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientData;->colors:Ljava/util/List;

    .line 40
    iput p3, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientData;->bright:I

    .line 41
    iput p4, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientData;->fade:I

    .line 42
    iput p5, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientData;->period:I

    return-void
.end method

.method public static synthetic lambda$m2ZXP_32Bkx8yK_dgJd4_yUQt8M(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public toJsonObject()Lorg/json/JSONObject;
    .locals 4

    .line 46
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "groups"

    .line 49
    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientData;->groups:Ljava/util/List;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "colors"

    .line 50
    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientData;->colors:Ljava/util/List;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "bright"

    .line 51
    iget v2, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientData;->bright:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "fade"

    .line 52
    iget v2, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientData;->fade:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "period"

    .line 53
    iget v2, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientData;->period:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serialize exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AmbientData"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method
