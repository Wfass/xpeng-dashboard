.class Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;
.super Ljava/lang/Object;
.source "XpLightlanuageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RhythmEffect"
.end annotation


# instance fields
.field private front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

.field private volatile frontIndex:I

.field private name:Ljava/lang/String;

.field private rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

.field private volatile rearIndex:I


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;)V
    .locals 4
    .param p1, "light"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;->frontIndex:I

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;->rearIndex:I

    .line 228
    iget-object v0, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;->name:Ljava/lang/String;

    .line 230
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->access$000()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 231
    iget-object v0, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;->data:[Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    iget-object v2, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iget-object v3, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iget-object v3, v3, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;->data:[Ljava/lang/Integer;

    invoke-direct {v0, v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;-><init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    .line 233
    iget-object v0, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;->data:[Ljava/lang/Integer;

    if-nez v0, :cond_2

    goto :goto_2

    .line 234
    :cond_2
    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    iget-object v0, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iget-object v2, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iget-object v2, v2, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;->data:[Ljava/lang/Integer;

    invoke-direct {v1, v0, v2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;-><init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;[Ljava/lang/Object;)V

    nop

    :cond_3
    :goto_2
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    goto :goto_6

    .line 236
    :cond_4
    iget-object v0, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;->sdata:[Ljava/lang/String;

    if-nez v0, :cond_5

    goto :goto_3

    .line 237
    :cond_5
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    iget-object v2, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iget-object v3, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iget-object v3, v3, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;->sdata:[Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;-><init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    :goto_3
    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    .line 238
    iget-object v0, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;->sdata:[Ljava/lang/String;

    if-nez v0, :cond_7

    goto :goto_5

    .line 239
    :cond_7
    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    iget-object v0, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iget-object v2, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iget-object v2, v2, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;->sdata:[Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;-><init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;[Ljava/lang/Object;)V

    nop

    :cond_8
    :goto_5
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    .line 241
    :goto_6
    return-void
.end method

.method static synthetic access$1400(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;->name:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public get()Landroid/util/Pair;
    .locals 5

    .line 249
    new-instance v0, Landroid/util/Pair;

    .line 250
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 251
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    iget v3, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;->frontIndex:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;->frontIndex:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;->frontIndex:I

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-static {v1, v3}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->access$200(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, ""

    .line 252
    :goto_1
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    iget-object v3, v3, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 253
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    iget v4, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;->rearIndex:I

    if-lez v4, :cond_3

    iget v2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;->rearIndex:I

    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;->rearIndex:I

    nop

    :cond_3
    invoke-static {v3, v2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->access$200(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    :cond_5
    const-string v2, ""

    :goto_2
    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 249
    return-object v0
.end method

.method public seek(F)V
    .locals 2
    .param p1, "ratio"    # F

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->access$100(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;F)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;->frontIndex:I

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->access$100(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;F)I

    move-result v1

    nop

    :cond_1
    iput v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;->rearIndex:I

    .line 246
    return-void
.end method
