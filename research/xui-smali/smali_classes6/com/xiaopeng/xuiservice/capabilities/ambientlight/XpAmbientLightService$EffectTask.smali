.class Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;
.super Ljava/lang/Object;
.source "XpAmbientLightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EffectTask"
.end annotation


# instance fields
.field private brights:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private colors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private current:Ljava/lang/String;

.field private dutyBrights:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private effect:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

.field private elapsed:I

.field private fade:I

.field private group:I

.field private hasBright:Z

.field private hasColor:Z

.field private hasDone:Z

.field private hasGroup:Z

.field private hasMode:Z

.field private hasSpeed:Z

.field private index:I

.field private loop:I

.field private mask:I

.field private overlap:Ljava/lang/String;

.field private owner:Ljava/lang/String;

.field private packet:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;

.field private part:Ljava/lang/String;

.field private partition:Ljava/lang/String;

.field private prevBright:I

.field private prevColor:I

.field private prevGroup:I

.field private previous:Ljava/lang/String;

.field private regionBrights:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private status:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;Ljava/lang/String;)V
    .locals 2
    .param p2, "partition"    # Ljava/lang/String;
    .param p3, "effect"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;
    .param p4, "owner"    # Ljava/lang/String;

    .line 346
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->regionBrights:Ljava/util/Map;

    .line 347
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->partition:Ljava/lang/String;

    .line 348
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$900(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    const-string v0, "all"

    :goto_0
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->part:Ljava/lang/String;

    .line 349
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->effect:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    .line 350
    iput-object p4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->owner:Ljava/lang/String;

    .line 351
    iget v0, p3, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->count:I

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    iget-object v0, p3, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->packets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p3, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->count:I

    mul-int/2addr v0, v1

    :goto_1
    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->loop:I

    .line 352
    iget-object v0, p3, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1000(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->hasMode:Z

    .line 353
    const-string v0, "speed"

    iget-object v1, p3, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->hasSpeed:Z

    .line 354
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1100(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->prevGroup:I

    .line 355
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1200(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->prevColor:I

    .line 356
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->getDutyBrights()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->dutyBrights:Ljava/util/Map;

    .line 357
    const/16 v0, 0x64

    invoke-static {p1, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1302(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->prevBright:I

    .line 358
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->hasSpeed:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1400(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I

    move-result v0

    :goto_2
    invoke-static {p1, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1402(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)I

    .line 360
    const-string p1, "XpAmbientLightService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectTask "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method static synthetic access$6000(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->effect:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;

    .line 336
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->stop()V

    return-void
.end method

.method static synthetic access$7000(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->overlap:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7002(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;
    .param p1, "x1"    # Ljava/lang/String;

    .line 336
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->overlap:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;

    .line 336
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->hasMode:Z

    return v0
.end method

.method static synthetic access$8400(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->partition:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8402(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;
    .param p1, "x1"    # Ljava/lang/String;

    .line 336
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->partition:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9002(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;
    .param p1, "x1"    # Ljava/lang/String;

    .line 336
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->part:Ljava/lang/String;

    return-object p1
.end method

.method private getBrights(I)Ljava/util/Map;
    .locals 7
    .param p1, "bright"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 446
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->hasMode:Z

    const/4 v1, 0x5

    const/16 v2, 0x64

    if-eqz v0, :cond_1

    const-string v0, "custom"

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1900(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->part:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$2400(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->part:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 448
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->regionBrights:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    mul-int/2addr v6, p1

    div-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->regionBrights:Ljava/util/Map;

    return-object v0

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-boolean v3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->hasMode:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$2500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->part:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/2addr v1, p1

    div-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getColors(Z)Ljava/util/Map;
    .locals 4
    .param p1, "hasSecond"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->effect:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    iget-boolean v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->hasHue:Z

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->effect:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    iget-boolean v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->hasRhythm:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->prevBright:I

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 413
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->prevColor:I

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1200(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->prevColor:I

    .line 417
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1200(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 420
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->hasColor:Z

    if-eqz v0, :cond_2

    .line 421
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->colors:Ljava/util/Map;

    return-object v0

    .line 424
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1900(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->part:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x5069748f

    if-eq v2, v3, :cond_6

    const v3, -0x4f08842f

    if-eq v2, v3, :cond_5

    const v3, 0x333ae3

    if-eq v2, v3, :cond_4

    const v3, 0x69375c9

    if-eq v2, v3, :cond_3

    goto :goto_0

    :cond_3
    const-string v2, "theme"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x2

    goto :goto_0

    :cond_4
    const-string v2, "mono"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    const-string v2, "double"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    const-string v2, "custom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x3

    :cond_7
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 437
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$2000(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->part:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 434
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->part:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 432
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$2300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$2200(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->part:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$ThemeColor;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$ThemeColor;->colors:Ljava/util/Map;

    return-object v0

    .line 428
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$2100(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->part:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 430
    .local v0, "color":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_8

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    :goto_1
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)Ljava/util/Map;

    move-result-object v1

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    goto :goto_1

    :goto_2
    return-object v1

    .line 426
    .end local v0    # "color":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$2000(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->part:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDutyBrights()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 441
    const-string v0, "custom"

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1900(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->part:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$2400(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->part:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$2500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->part:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)Ljava/util/Map;

    move-result-object v0

    .line 441
    :goto_0
    return-object v0
.end method

.method private getMask(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "overlap"    # Ljava/lang/String;

    .line 392
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1600(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1700(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 397
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->effectPartitionsMap:Ljava/util/Map;

    :goto_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->modePartitionsMap:Ljava/util/Map;

    goto :goto_1

    .line 398
    .local v0, "hexPartition":Ljava/lang/String;
    :goto_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 399
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    move-result-object v2

    iget-object v2, v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->groupsMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->groupsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    :cond_3
    return v1

    .line 402
    :cond_4
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    move-result-object v2

    iget-object v2, v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->effectPartitionsMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 403
    .local v2, "hexOverlap":Ljava/lang/String;
    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 404
    invoke-static {v0, v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/2addr v3, v5

    sub-int/2addr v4, v3

    .line 406
    .local v4, "bitmap":I
    if-eqz v4, :cond_5

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    move-result-object v3

    iget-object v3, v3, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->groupsMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 407
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->groupsMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    .line 406
    :cond_5
    return v1
.end method

.method private getPacket(I)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;
    .locals 2
    .param p1, "index"    # I

    .line 380
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->effect:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->packets:Ljava/util/List;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->effect:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->packets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;

    return-object v0
.end method

.method private hasFinish(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 388
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->loop:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->loop:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasPeriod(II)Z
    .locals 1
    .param p1, "tickPeriod"    # I
    .param p2, "period"    # I

    .line 384
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->elapsed:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->elapsed:I

    if-lt v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$znfQj8LqOvyui6ncUHU4komPIHY(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private parseGroup(I)I
    .locals 1
    .param p1, "data"    # I

    .line 456
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->hasMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$2600(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method private stop()V
    .locals 1

    .line 376
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->hasDone:Z

    .line 377
    return-void
.end method


# virtual methods
.method public cleanStatus()V
    .locals 1

    .line 364
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->previous:Ljava/lang/String;

    .line 365
    return-void
.end method

.method public hasSpeedMode()Z
    .locals 1

    .line 368
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->hasSpeed:Z

    return v0
.end method

.method public hasStop()Z
    .locals 1

    .line 372
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->hasDone:Z

    return v0
.end method

.method public run()V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 460
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->packet:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x32

    iget-object v4, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$2700(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I

    move-result v4

    mul-int/2addr v1, v4

    iget-object v4, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->packet:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;

    iget v4, v4, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;->period:I

    invoke-direct {v0, v1, v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->hasPeriod(II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 462
    :cond_0
    iget v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->index:I

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->hasFinish(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 463
    iget-boolean v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->hasMode:Z

    if-nez v1, :cond_1

    .line 464
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$2800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->access$2902(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;I)I

    .line 465
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$3002(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Landroid/util/Pair;)Landroid/util/Pair;

    .line 466
    iget-object v3, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    const/4 v4, 0x3

    iget-object v5, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->partition:Ljava/lang/String;

    iget-object v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->effect:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    iget-object v6, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->name:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->owner:Ljava/lang/String;

    invoke-static/range {v3 .. v8}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$3100(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 469
    :cond_1
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$2800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->stopEffect(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)V

    .line 470
    return-void

    .line 474
    :cond_2
    iget v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->index:I

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->getPacket(I)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->packet:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;

    .line 475
    iget v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->index:I

    add-int/2addr v1, v2

    const v4, 0x7fffffff

    rem-int/2addr v1, v4

    iput v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->index:I

    .line 476
    iput v3, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->elapsed:I

    .line 478
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->packet:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;->groups:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->packet:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;->groups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v3

    :goto_0
    iput-boolean v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->hasGroup:Z

    .line 479
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->packet:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;->colors:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->packet:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;->colors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    iput-boolean v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->hasColor:Z

    .line 480
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->packet:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;

    iget v1, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;->bright:I

    if-ltz v1, :cond_5

    move v1, v2

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    iput-boolean v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->hasBright:Z

    .line 481
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-boolean v4, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->hasMode:Z

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->packet:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;

    iget v4, v4, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;->fade:I

    goto :goto_3

    :cond_6
    iget-object v4, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$3200(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I

    move-result v4

    :goto_3
    invoke-static {v1, v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$3202(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)I

    .line 482
    iget-boolean v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->hasGroup:Z

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->packet:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;->groups:Ljava/util/List;

    iget-object v4, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$3300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/Random;

    move-result-object v4

    iget-object v5, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->packet:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;

    iget-object v5, v5, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;->groups:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_4

    :cond_7
    iget v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->group:I

    :goto_4
    iput v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->group:I

    .line 483
    iget-boolean v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->hasColor:Z

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v4, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->packet:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;

    iget-object v4, v4, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;->colors:Ljava/util/List;

    iget-object v5, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$3300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/Random;

    move-result-object v5

    iget-object v6, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->packet:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;

    iget-object v6, v6, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;->colors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v1, v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)Ljava/util/Map;

    move-result-object v1

    goto :goto_5

    :cond_8
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->colors:Ljava/util/Map;

    :goto_5
    iput-object v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->colors:Ljava/util/Map;

    .line 486
    :cond_9
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->partition:Ljava/lang/String;

    iget-object v4, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->overlap:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->getMask(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->mask:I

    .line 487
    iget v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->mask:I

    if-ltz v1, :cond_26

    .line 488
    iget-boolean v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->hasMode:Z

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$3400(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    goto :goto_6

    :cond_a
    move v1, v3

    .line 489
    .local v1, "hasManual":Z
    :goto_6
    iget-boolean v4, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->hasMode:Z

    if-eqz v4, :cond_b

    iget-object v4, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$3500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v11, v2

    goto :goto_7

    :cond_b
    move v11, v3

    .line 490
    .local v11, "withFlow":Z
    :goto_7
    iget-boolean v4, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->hasMode:Z

    if-eqz v4, :cond_d

    .line 491
    iget-object v4, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->effect:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    iget-boolean v4, v4, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->hasRhythm:Z

    if-eqz v4, :cond_c

    iget-object v4, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$3600(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v4

    goto :goto_8

    :cond_c
    iget-object v4, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$3700(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v4

    goto :goto_8

    :cond_d
    move v4, v3

    .line 493
    .local v4, "hasBrightManual":Z
    :goto_8
    iget-boolean v5, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->hasGroup:Z

    if-eqz v5, :cond_e

    iget v5, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->group:I

    goto :goto_9

    :cond_e
    iget-object v5, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1100(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I

    move-result v5

    :goto_9
    iput v5, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->group:I

    .line 494
    iget-object v5, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->packet:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;

    iget-boolean v5, v5, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;->has2ndColor:Z

    invoke-direct {v0, v5}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->getColors(Z)Ljava/util/Map;

    move-result-object v5

    iput-object v5, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->colors:Ljava/util/Map;

    .line 495
    nop

    .line 496
    const/16 v5, 0x64

    if-eqz v1, :cond_f

    .line 495
    move v6, v5

    goto :goto_a

    .line 496
    :cond_f
    iget-object v6, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->effect:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    iget-boolean v6, v6, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->hasRhythm:Z

    if-eqz v6, :cond_10

    iget-object v6, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v6}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I

    move-result v6

    goto :goto_a

    :cond_10
    iget-boolean v6, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->hasBright:Z

    if-eqz v6, :cond_11

    iget-object v6, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->packet:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;

    iget v6, v6, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;->bright:I

    goto :goto_a

    :cond_11
    iget-object v6, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v6}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1400(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I

    move-result v6

    .line 495
    :goto_a
    invoke-direct {v0, v6}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->getBrights(I)Ljava/util/Map;

    move-result-object v6

    iput-object v6, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->brights:Ljava/util/Map;

    .line 498
    if-eqz v1, :cond_12

    move v6, v5

    goto :goto_b

    :cond_12
    iget-object v6, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->effect:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    iget-boolean v6, v6, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->hasRhythm:Z

    if-eqz v6, :cond_13

    iget-object v6, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v6}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I

    move-result v6

    iget-object v7, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v7}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$3800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I

    move-result v7

    mul-int/2addr v6, v7

    div-int/2addr v6, v5

    goto :goto_b

    :cond_13
    iget-object v6, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->packet:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;

    iget v6, v6, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;->fade:I

    :goto_b
    iput v6, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->fade:I

    .line 500
    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Integer;

    iget v9, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->mask:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    iget v9, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->group:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v6, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->status:Ljava/util/List;

    .line 501
    iget-object v6, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->status:Ljava/util/List;

    iget-object v8, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->colors:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 502
    iget-object v6, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->status:Ljava/util/List;

    iget-object v8, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->brights:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 503
    iget-object v6, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->status:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    sget-object v8, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/-$$Lambda$XpAmbientLightService$EffectTask$znfQj8LqOvyui6ncUHU4komPIHY;->INSTANCE:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/-$$Lambda$XpAmbientLightService$EffectTask$znfQj8LqOvyui6ncUHU4komPIHY;

    invoke-interface {v6, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v6

    invoke-static {}, Ljava/util/stream/Collectors;->joining()Ljava/util/stream/Collector;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->current:Ljava/lang/String;

    .line 505
    iget-object v6, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->current:Ljava/lang/String;

    iget-object v8, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->previous:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    if-eqz v1, :cond_26

    .line 506
    :cond_14
    const-string v6, "XpAmbientLightService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "run "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->partition:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->effect:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    iget-object v9, v9, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    iget-boolean v9, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->hasMode:Z

    if-eqz v9, :cond_15

    const-string v9, " mode"

    goto :goto_c

    :cond_15
    const-string v9, " effect"

    :goto_c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", hasManual="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 508
    iget-object v9, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->effect:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    iget-boolean v9, v9, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->hasRhythm:Z

    if-eqz v9, :cond_17

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ", hasBrightManual="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", onRatioChange="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->prevBright:I

    iget-object v12, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 509
    invoke-static {v12}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I

    move-result v12

    if-eq v10, v12, :cond_16

    move v10, v2

    goto :goto_d

    :cond_16
    move v10, v3

    :goto_d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_e

    :cond_17
    const-string v9, ""

    :goto_e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 506
    invoke-static {v6, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-boolean v6, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->hasMode:Z

    if-eqz v6, :cond_1c

    iget v6, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->group:I

    iget v8, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->prevGroup:I

    if-eq v6, v8, :cond_1c

    .line 513
    iget v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->group:I

    if-eqz v2, :cond_19

    .line 515
    iget v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->prevGroup:I

    if-nez v2, :cond_18

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$2600(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 516
    const-string v2, "XpAmbientLightService"

    const-string v5, "turn off doorHandle lights"

    invoke-static {v2, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object v12, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    const/4 v13, 0x0

    const/4 v14, 0x1

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)Ljava/util/Map;

    move-result-object v15

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)Ljava/util/Map;

    move-result-object v16

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->packet:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;

    iget v2, v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;->fade:I

    const/16 v18, 0x0

    move/from16 v17, v2

    invoke-static/range {v12 .. v18}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$3900(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;IILjava/util/Map;Ljava/util/Map;IZ)V

    .line 520
    :cond_18
    iget v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->group:I

    if-ne v2, v7, :cond_1b

    .line 521
    const-string v2, "XpAmbientLightService"

    const-string v5, "turn off trebleSpeaker lights"

    invoke-static {v2, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v12, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    const/4 v13, 0x0

    const/4 v14, 0x1

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)Ljava/util/Map;

    move-result-object v15

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)Ljava/util/Map;

    move-result-object v16

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->packet:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;

    iget v2, v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;->fade:I

    const/16 v18, 0x0

    move/from16 v17, v2

    invoke-static/range {v12 .. v18}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$3900(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;IILjava/util/Map;Ljava/util/Map;IZ)V

    .line 523
    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    const/16 v20, 0x0

    const/16 v21, 0x7

    iget-object v5, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v5, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)Ljava/util/Map;

    move-result-object v22

    iget-object v5, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v5, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)Ljava/util/Map;

    move-result-object v23

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->packet:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;

    iget v3, v3, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;->fade:I

    const/16 v25, 0x0

    move-object/from16 v19, v2

    move/from16 v24, v3

    invoke-static/range {v19 .. v25}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$3900(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;IILjava/util/Map;Ljava/util/Map;IZ)V

    goto :goto_f

    .line 527
    :cond_19
    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$2600(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 528
    const-string v2, "XpAmbientLightService"

    const-string v3, "turn on doorHandle lights"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v12, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    const/4 v13, 0x0

    const/4 v14, 0x1

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)Ljava/util/Map;

    move-result-object v15

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v2, v5}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)Ljava/util/Map;

    move-result-object v16

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->packet:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;

    iget v2, v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;->fade:I

    const/16 v18, 0x0

    move/from16 v17, v2

    invoke-static/range {v12 .. v18}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$3900(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;IILjava/util/Map;Ljava/util/Map;IZ)V

    .line 532
    :cond_1a
    iget v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->prevGroup:I

    if-ne v2, v7, :cond_1b

    .line 533
    const-string v2, "XpAmbientLightService"

    const-string v3, "turn on trebleSpeaker lights"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    :cond_1b
    :goto_f
    iget v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->group:I

    iput v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->prevGroup:I

    .line 538
    return-void

    .line 541
    :cond_1c
    if-eqz v1, :cond_1f

    .line 542
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->getDutyBrights()Ljava/util/Map;

    move-result-object v6

    .line 544
    .local v6, "dutyMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v4, :cond_1e

    iget-object v7, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->dutyBrights:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1e

    .line 545
    const-string v7, "XpAmbientLightService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hasBrightChange "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->dutyBrights:Ljava/util/Map;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const/4 v4, 0x1

    .line 548
    iget-object v7, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->effect:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    iget-boolean v7, v7, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->hasRhythm:Z

    if-eqz v7, :cond_1d

    .line 549
    iget-object v7, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v7, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$3602(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Z)Z

    .line 550
    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iput v5, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->prevBright:I

    invoke-static {v2, v5}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1302(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)I

    goto :goto_10

    .line 551
    :cond_1d
    iget-boolean v7, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->hasSpeed:Z

    if-eqz v7, :cond_1e

    .line 552
    iget-object v7, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v7, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$3702(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Z)Z

    .line 553
    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v2, v5}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1402(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)I

    .line 557
    :cond_1e
    :goto_10
    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$3402(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Z)Z

    .line 558
    iput-object v6, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->dutyBrights:Ljava/util/Map;

    .line 561
    .end local v6    # "dutyMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1f
    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$4000(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-boolean v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->hasMode:Z

    if-eqz v2, :cond_20

    .line 562
    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->colors:Ljava/util/Map;

    iget-object v6, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->colors:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$4102(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)I

    .line 563
    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->brights:Ljava/util/Map;

    iget-object v6, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->brights:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$4202(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)I

    .line 566
    :cond_20
    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->effect:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    iget-boolean v2, v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->hasRhythm:Z

    if-eqz v2, :cond_24

    .line 567
    const/16 v2, 0xa

    if-eqz v1, :cond_21

    .line 568
    iget-object v5, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget v6, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->mask:I

    iget v3, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->group:I

    invoke-direct {v0, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->parseGroup(I)I

    move-result v7

    iget-object v8, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->colors:Ljava/util/Map;

    iget-object v9, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->brights:Ljava/util/Map;

    iget v10, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->fade:I

    invoke-static/range {v5 .. v11}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$3900(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;IILjava/util/Map;Ljava/util/Map;IZ)V

    .line 569
    if-nez v4, :cond_25

    .line 570
    iget-object v12, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget v13, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->mask:I

    iget v3, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->group:I

    .line 571
    invoke-direct {v0, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->parseGroup(I)I

    move-result v14

    iget-object v15, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->colors:Ljava/util/Map;

    invoke-direct {v0, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->getBrights(I)Ljava/util/Map;

    move-result-object v16

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->packet:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;

    iget v2, v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;->fade:I

    .line 570
    move/from16 v17, v2

    move/from16 v18, v11

    invoke-static/range {v12 .. v18}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$3900(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;IILjava/util/Map;Ljava/util/Map;IZ)V

    goto/16 :goto_11

    .line 574
    :cond_21
    iget v3, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->prevBright:I

    iget-object v6, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v6}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I

    move-result v6

    if-eq v3, v6, :cond_22

    .line 575
    iget-object v12, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget v13, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->mask:I

    iget v3, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->group:I

    invoke-direct {v0, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->parseGroup(I)I

    move-result v14

    iget-object v15, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->colors:Ljava/util/Map;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->brights:Ljava/util/Map;

    iget-object v5, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$4300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I

    move-result v17

    move-object/from16 v16, v3

    move/from16 v18, v11

    invoke-static/range {v12 .. v18}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$3900(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;IILjava/util/Map;Ljava/util/Map;IZ)V

    .line 576
    iget-object v3, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget v5, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->mask:I

    iget v6, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->group:I

    invoke-direct {v0, v6}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->parseGroup(I)I

    move-result v20

    iget-object v6, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->colors:Ljava/util/Map;

    invoke-direct {v0, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->getBrights(I)Ljava/util/Map;

    move-result-object v22

    iget v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->fade:I

    move-object/from16 v18, v3

    move/from16 v19, v5

    move-object/from16 v21, v6

    move/from16 v23, v2

    move/from16 v24, v11

    invoke-static/range {v18 .. v24}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$3900(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;IILjava/util/Map;Ljava/util/Map;IZ)V

    .line 577
    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I

    move-result v2

    iput v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->prevBright:I

    goto :goto_11

    .line 579
    :cond_22
    iget-object v12, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget v13, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->mask:I

    iget v3, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->group:I

    .line 580
    invoke-direct {v0, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->parseGroup(I)I

    move-result v14

    iget-object v15, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->colors:Ljava/util/Map;

    .line 581
    if-eqz v4, :cond_23

    move v2, v5

    nop

    :cond_23
    invoke-direct {v0, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->getBrights(I)Ljava/util/Map;

    move-result-object v16

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->packet:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;

    iget v2, v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;->fade:I

    .line 579
    move/from16 v17, v2

    move/from16 v18, v11

    invoke-static/range {v12 .. v18}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$3900(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;IILjava/util/Map;Ljava/util/Map;IZ)V

    goto :goto_11

    .line 585
    :cond_24
    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget v3, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->mask:I

    iget v5, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->group:I

    invoke-direct {v0, v5}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->parseGroup(I)I

    move-result v19

    iget-object v5, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->colors:Ljava/util/Map;

    iget-object v6, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->brights:Ljava/util/Map;

    iget v7, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->fade:I

    move-object/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v11

    invoke-static/range {v17 .. v23}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$3900(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;IILjava/util/Map;Ljava/util/Map;IZ)V

    .line 588
    :cond_25
    :goto_11
    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->current:Ljava/lang/String;

    iput-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->previous:Ljava/lang/String;

    .line 591
    .end local v1    # "hasManual":Z
    .end local v4    # "hasBrightManual":Z
    .end local v11    # "withFlow":Z
    :cond_26
    return-void
.end method
