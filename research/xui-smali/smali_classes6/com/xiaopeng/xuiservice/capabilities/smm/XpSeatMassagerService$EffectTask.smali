.class Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;
.super Ljava/lang/Object;
.source "XpSeatMassagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EffectTask"
.end annotation


# instance fields
.field private effect:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;

.field private elapsed:I

.field private hasStart:Z

.field private id:I

.field private index:I

.field private intensity:I

.field private loop:I

.field private packet:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Packet;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;ILcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;I)V
    .locals 2
    .param p2, "id"    # I
    .param p3, "effect"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;
    .param p4, "intensity"    # I

    .line 236
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->index:I

    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->elapsed:I

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->packet:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Packet;

    .line 234
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->hasStart:Z

    .line 237
    iput p2, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->id:I

    .line 238
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->effect:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;

    .line 239
    iput p4, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->intensity:I

    .line 240
    iget-object p1, p3, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->custom:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Custom;

    iget p1, p1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Custom;->loop:I

    if-gez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 241
    :cond_0
    iget-object p1, p3, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->custom:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Custom;

    iget-object p1, p1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Custom;->packets:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p3, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->custom:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Custom;

    iget v0, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Custom;->loop:I

    mul-int/2addr p1, v0

    :goto_0
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->loop:I

    .line 243
    const-string p1, "XpSeatMassagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectTask "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hasPreset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->custom:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Custom;

    iget-boolean v1, v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Custom;->hasPreset:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", loop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->loop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method private getIntensity()I
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->effect:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->name:Ljava/lang/String;

    iget v2, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->id:I

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$000(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getPacket(I)Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Packet;
    .locals 2
    .param p1, "index"    # I

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->effect:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->custom:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Custom;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Custom;->packets:Ljava/util/List;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->effect:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->custom:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Custom;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Custom;->packets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Packet;

    return-object v0
.end method

.method private hasFinish(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 253
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->loop:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->loop:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasPeriod(I)Z
    .locals 2
    .param p1, "period"    # I

    .line 257
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->elapsed:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->elapsed:I

    if-lt v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->packet:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Packet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->packet:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Packet;

    iget v0, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Packet;->period:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->hasPeriod(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 269
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->index:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->hasFinish(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 270
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$100()Ljava/util/Map;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->id:I

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$200(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;I)V

    .line 272
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    iget v3, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->id:I

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->effect:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;

    iget-object v5, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->name:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->getIntensity()I

    move-result v6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$300(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;IILjava/lang/String;ILjava/lang/String;)V

    .line 274
    return-void

    .line 278
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->index:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->index:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->getPacket(I)Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Packet;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->packet:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Packet;

    .line 279
    iput v1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->elapsed:I

    .line 281
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->index:I

    if-gez v0, :cond_2

    .line 282
    iput v1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->index:I

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->effect:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->custom:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Custom;

    iget-boolean v0, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Custom;->hasPreset:Z

    if-eqz v0, :cond_3

    .line 286
    const-string v0, "XpSeatMassagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run seat["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->effect:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;

    iget-object v2, v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", inner mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->packet:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Packet;

    iget v2, v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Packet;->data:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->loop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 291
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->id:I

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->packet:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Packet;

    iget v2, v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Packet;->data:I

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$400(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 294
    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "XpSeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set inner mode failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->hasStart:Z

    if-nez v0, :cond_3

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->hasStart:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 300
    :try_start_3
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->id:I

    iget v2, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->intensity:I

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$500(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 303
    goto :goto_1

    .line 301
    :catch_1
    move-exception v0

    .line 302
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string v1, "XpSeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set intensity failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$600()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 306
    :try_start_5
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$600()Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 307
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 313
    :cond_3
    :goto_2
    goto :goto_3

    .line 311
    :catch_2
    move-exception v0

    .line 312
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "XpSeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run seat["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] massager failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method
