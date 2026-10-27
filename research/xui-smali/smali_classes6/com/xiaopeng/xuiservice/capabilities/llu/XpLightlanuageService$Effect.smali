.class Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;
.super Ljava/lang/Object;
.source "XpLightlanuageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Effect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private count:I

.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public period:I

.field public retain:Z


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "pack"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;",
            "[TT;)V"
        }
    .end annotation

    .line 198
    .local p0, "this":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;, "Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect<TT;>;"
    .local p2, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iget v0, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;->retain:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->retain:Z

    .line 200
    iget v0, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;->period:I

    const/16 v2, 0xa

    if-lt v0, v2, :cond_1

    iget v0, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;->period:I

    div-int/lit8 v1, v0, 0xa

    nop

    :cond_1
    iput v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->period:I

    .line 201
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->list:Ljava/util/List;

    .line 202
    iget v0, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;->loop:I

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->count:I

    .line 203
    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;F)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;
    .param p1, "x1"    # F

    .line 192
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->parse(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;I)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;
    .param p1, "x1"    # I

    .line 192
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;
    .param p1, "x1"    # I

    .line 192
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->hasPeriod(I)Z

    move-result v0

    return v0
.end method

.method private get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 210
    .local p0, "this":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;, "Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->list:Ljava/util/List;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private hasPeriod(I)Z
    .locals 1
    .param p1, "tick"    # I

    .line 206
    .local p0, "this":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;, "Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect<TT;>;"
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->period:I

    rem-int v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private parse(F)I
    .locals 2
    .param p1, "ratio"    # F

    .line 214
    .local p0, "this":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;, "Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public hasFinish(I)Z
    .locals 3
    .param p1, "tick"    # I

    .line 218
    .local p0, "this":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;, "Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect<TT;>;"
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->count:I

    const/4 v1, 0x0

    if-gez v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->count:I

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->period:I

    mul-int/2addr v0, v2

    if-lt p1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1
.end method
