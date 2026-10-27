.class Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;
.super Ljava/lang/Object;
.source "XpAmbientLightService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Tasklet"
.end annotation


# instance fields
.field private current:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;

.field private prevFlowingPlay:Z

.field private priority:I

.field private refCountHue:I

.field private refCountRhythm:I

.field private refCountSpeed:I

.field private taskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

.field private tick:I


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)V
    .locals 2
    .param p2, "effectTask"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;

    .line 730
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 725
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->taskList:Ljava/util/List;

    .line 731
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->taskList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 732
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->refCountRhythm:I

    invoke-static {p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->access$6000(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    move-result-object v1

    iget-boolean v1, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->hasRhythm:Z

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->refCountRhythm:I

    .line 733
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->refCountHue:I

    invoke-static {p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->access$6000(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    move-result-object v1

    iget-boolean v1, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->hasHue:Z

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->refCountHue:I

    .line 734
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->refCountSpeed:I

    invoke-virtual {p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->hasSpeedMode()Z

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->refCountSpeed:I

    .line 735
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$6100(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->prevFlowingPlay:Z

    .line 736
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$3402(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Z)Z

    .line 738
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->refCountRhythm:I

    if-lez v0, :cond_0

    .line 739
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$6200(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)V

    .line 742
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->refCountHue:I

    if-lez v0, :cond_1

    .line 743
    invoke-static {p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->access$6000(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    move-result-object v0

    iget v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->displayId:I

    invoke-static {p1, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$6300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)V

    .line 746
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->refCountSpeed:I

    if-lez v0, :cond_2

    .line 747
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$6402(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Z)Z

    .line 749
    :cond_2
    return-void
.end method

.method static synthetic access$2900(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;

    .line 724
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->priority:I

    return v0
.end method

.method static synthetic access$2902(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;
    .param p1, "x1"    # I

    .line 724
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->priority:I

    return p1
.end method

.method private cleanCacheData()V
    .locals 3

    .line 800
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->iteratorTasks()Ljava/util/Iterator;

    move-result-object v0

    .line 802
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;>;"
    const-string v1, "XpAmbientLightService"

    const-string v2, "cleanCacheData"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 805
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;

    .line 806
    .local v1, "task":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->cleanStatus()V

    .line 807
    .end local v1    # "task":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;
    goto :goto_0

    .line 808
    :cond_0
    return-void
.end method


# virtual methods
.method public addEffect(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)Z
    .locals 3
    .param p1, "task"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;

    .line 756
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->taskList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 758
    .local v0, "res":Z
    if-eqz v0, :cond_2

    .line 759
    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->refCountRhythm:I

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->access$6000(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    move-result-object v2

    iget-boolean v2, v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->hasRhythm:Z

    add-int/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->refCountRhythm:I

    .line 760
    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->refCountHue:I

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->access$6000(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    move-result-object v2

    iget-boolean v2, v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->hasHue:Z

    add-int/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->refCountHue:I

    .line 761
    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->refCountSpeed:I

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->hasSpeedMode()Z

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->refCountSpeed:I

    .line 763
    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->refCountRhythm:I

    if-lez v1, :cond_0

    .line 764
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$6200(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)V

    .line 767
    :cond_0
    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->refCountHue:I

    if-lez v1, :cond_1

    .line 768
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->access$6000(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    move-result-object v2

    iget v2, v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->displayId:I

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$6300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)V

    .line 771
    :cond_1
    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->refCountSpeed:I

    if-lez v1, :cond_2

    .line 772
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$6402(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Z)Z

    .line 776
    :cond_2
    return v0
.end method

.method public iteratorTasks()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;",
            ">;"
        }
    .end annotation

    .line 752
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->taskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 9

    .line 813
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->taskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$6900(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 815
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)Ljava/util/Map;

    move-result-object v5

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)Ljava/util/Map;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$3500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v8

    invoke-static/range {v2 .. v8}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$3900(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;IILjava/util/Map;Ljava/util/Map;IZ)V

    .line 816
    return-void

    .line 819
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->prevFlowingPlay:Z

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$6100(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 820
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->cleanCacheData()V

    .line 821
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->prevFlowingPlay:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->prevFlowingPlay:Z

    .line 824
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->taskList:Ljava/util/List;

    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->tick:I

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->taskList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->current:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;

    .line 825
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->tick:I

    add-int/lit8 v0, v0, 0x1

    const v1, 0x7fffffff

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->tick:I

    .line 827
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->current:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->hasStop()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 828
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->taskList:Ljava/util/List;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->current:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 829
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->taskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;

    .line 830
    .local v1, "task":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->cleanStatus()V

    .line 831
    .end local v1    # "task":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;
    goto :goto_0

    .line 833
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->taskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$2702(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)I

    .line 834
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$3000(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->current:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->access$7000(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 835
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->current:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->access$7002(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;Ljava/lang/String;)Ljava/lang/String;

    .line 837
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->current:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    :cond_4
    goto :goto_1

    .line 839
    :catch_0
    move-exception v0

    .line 840
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EffectTask exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public stopEffect(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)V
    .locals 2
    .param p1, "task"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;

    .line 780
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->refCountRhythm:I

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->access$6000(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    move-result-object v1

    iget-boolean v1, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->hasRhythm:Z

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->refCountRhythm:I

    .line 781
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->refCountHue:I

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->access$6000(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    move-result-object v1

    iget-boolean v1, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->hasHue:Z

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->refCountHue:I

    .line 782
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->refCountSpeed:I

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->hasSpeedMode()Z

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->refCountSpeed:I

    .line 784
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->refCountRhythm:I

    if-nez v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$6500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)V

    .line 788
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->refCountHue:I

    if-nez v0, :cond_1

    .line 789
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$6600(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$6700(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)V

    .line 792
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->refCountSpeed:I

    if-nez v0, :cond_2

    .line 793
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$6402(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Z)Z

    .line 796
    :cond_2
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->access$6800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)V

    .line 797
    return-void
.end method
