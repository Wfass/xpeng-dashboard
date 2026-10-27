.class Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;
.super Ljava/lang/Object;
.source "XpLightlanuageService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EffectTask"
.end annotation


# instance fields
.field private count:I

.field private front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

.field private light:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;

.field private prev:Landroid/util/Pair;

.field private rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

.field private source:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

.field private tick:I


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;Ljava/lang/String;I)V
    .locals 7
    .param p2, "light"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "count"    # I

    .line 266
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->tick:I

    .line 264
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/util/Pair;

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->prev:Landroid/util/Pair;

    .line 267
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->light:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;

    .line 268
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->source:Ljava/lang/String;

    .line 269
    iput p4, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->count:I

    .line 271
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->access$000()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 272
    iget-object p1, p2, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    if-eqz p1, :cond_2

    iget-object p1, p2, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iget-object p1, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;->data:[Ljava/lang/Integer;

    if-nez p1, :cond_1

    goto :goto_1

    .line 273
    :cond_1
    new-instance p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    iget-object v0, p2, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iget-object v1, p2, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;->data:[Ljava/lang/Integer;

    invoke-direct {p1, v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;-><init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    :goto_1
    move-object p1, v2

    :goto_2
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    .line 274
    iget-object p1, p2, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    if-eqz p1, :cond_4

    iget-object p1, p2, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iget-object p1, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;->data:[Ljava/lang/Integer;

    if-nez p1, :cond_3

    goto :goto_3

    .line 275
    :cond_3
    new-instance v2, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    iget-object p1, p2, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iget-object v0, p2, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;->data:[Ljava/lang/Integer;

    invoke-direct {v2, p1, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;-><init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;[Ljava/lang/Object;)V

    nop

    :cond_4
    :goto_3
    iput-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    goto/16 :goto_a

    .line 277
    :cond_5
    iget-object v1, p2, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    if-eqz v1, :cond_7

    iget-object v1, p2, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;->sdata:[Ljava/lang/String;

    if-nez v1, :cond_6

    goto :goto_4

    .line 278
    :cond_6
    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    iget-object v3, p2, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iget-object v4, p2, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iget-object v4, v4, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;->sdata:[Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;-><init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_7
    :goto_4
    move-object v1, v2

    :goto_5
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    .line 279
    iget-object v1, p2, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    if-eqz v1, :cond_9

    iget-object v1, p2, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;->sdata:[Ljava/lang/String;

    if-nez v1, :cond_8

    goto :goto_6

    .line 280
    :cond_8
    new-instance v2, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    iget-object v1, p2, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iget-object v3, p2, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iget-object v3, v3, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;->sdata:[Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;-><init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;[Ljava/lang/Object;)V

    nop

    :cond_9
    :goto_6
    iput-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    .line 282
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->access$200(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_7

    :cond_a
    const-string v1, ""

    .line 283
    .local v1, "fdata":Ljava/lang/String;
    :goto_7
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    invoke-static {v2, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->access$200(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_8

    :cond_b
    const-string v2, ""

    .line 285
    .local v2, "rdata":Ljava/lang/String;
    :goto_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    iget-boolean v4, p2, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->withAngle:Z

    const/4 v5, 0x4

    if-eqz v4, :cond_c

    move v4, v5

    goto :goto_9

    :cond_c
    move v4, v0

    :goto_9
    sub-int/2addr v3, v4

    invoke-static {p1, v3}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->access$302(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;I)I

    .line 287
    const-string p1, "XpLightlanuageService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EffectTask "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", withAngle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p2, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->withAngle:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", front size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    iget-boolean v6, p2, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->withAngle:Z

    if-eqz v6, :cond_d

    move v0, v5

    nop

    :cond_d
    sub-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", rear size="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-static {p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .end local v1    # "fdata":Ljava/lang/String;
    .end local v2    # "rdata":Ljava/lang/String;
    :goto_a
    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->source:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;)Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->light:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;

    return-object v0
.end method

.method private doneEffect(Z)V
    .locals 8
    .param p1, "retain"    # Z

    .line 331
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 332
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/util/Pair;

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    invoke-static {v1, v0, v2, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->access$500(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;ZLandroid/util/Pair;Z)V

    .line 335
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->access$900(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 337
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->count:I

    if-nez v0, :cond_2

    .line 338
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->access$1000(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;J)V

    goto :goto_1

    .line 340
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    new-instance v7, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->light:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->source:Ljava/lang/String;

    iget v4, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->count:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;-><init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;Ljava/lang/String;IZLjava/lang/String;)V

    const-wide/16 v1, 0x7d0

    invoke-static {v0, v7, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->access$1100(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;J)Z

    .line 342
    :goto_1
    return-void
.end method

.method private hasFinish(I)Z
    .locals 1
    .param p1, "tick"    # I

    .line 294
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->hasFinish(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    .line 295
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->hasFinish(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 294
    :goto_1
    return v0
.end method

.method private hasPeriod(I)Z
    .locals 1
    .param p1, "tick"    # I

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->access$400(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->access$400(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private needRetain()Z
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    iget-boolean v0, v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->retain:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    iget-boolean v0, v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->retain:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private parseEffect(I)Landroid/util/Pair;
    .locals 4
    .param p1, "tick"    # I

    .line 299
    new-instance v0, Landroid/util/Pair;

    .line 300
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    invoke-static {v1, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->access$400(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    iget v2, v2, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->period:I

    div-int v2, p1, v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->access$200(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->prev:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 302
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    iget-object v2, v2, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    invoke-static {v2, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->access$400(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 303
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;

    iget v3, v3, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->period:I

    div-int v3, p1, v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;->access$200(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->prev:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    :goto_1
    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 299
    return-object v0
.end method

.method private showEffect(Landroid/util/Pair;)V
    .locals 3
    .param p1, "cur"    # Landroid/util/Pair;

    .line 316
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->prev:Landroid/util/Pair;

    invoke-virtual {v0, p1}, Landroid/util/Pair;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 317
    const-string v0, "XpLightlanuageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->light:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;

    iget-boolean v2, v2, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->withAngle:Z

    invoke-static {v0, v1, p1, v2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->access$500(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;ZLandroid/util/Pair;Z)V

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->light:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;

    iget-boolean v0, v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->withAngle:Z

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->access$600(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;Landroid/util/Pair;)V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->access$700(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;Landroid/util/Pair;)V

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->access$800(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;Landroid/util/Pair;)V

    .line 326
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->prev:Landroid/util/Pair;

    .line 328
    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 347
    :try_start_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->tick:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->hasFinish(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->tick:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->parseEffect(I)Landroid/util/Pair;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->showEffect(Landroid/util/Pair;)V

    goto :goto_0

    .line 349
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->tick:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->hasPeriod(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->needRetain()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->doneEffect(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :cond_1
    :goto_0
    goto :goto_1

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpLightlanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->tick:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->tick:I

    if-gez v0, :cond_2

    .line 357
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->tick:I

    .line 359
    :cond_2
    return-void
.end method
