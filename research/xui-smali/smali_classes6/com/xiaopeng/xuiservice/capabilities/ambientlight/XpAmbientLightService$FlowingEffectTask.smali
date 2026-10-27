.class Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;
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
    name = "FlowingEffectTask"
.end annotation


# instance fields
.field private bright:I

.field private bytes:[B

.field private color:I

.field private effect:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;

.field private isCoupled:Z

.field private isFixed:Z

.field private loop:I

.field private period:I

.field private prevData:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

.field private tick:I


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;III)V
    .locals 4
    .param p2, "effect"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;
    .param p3, "loop"    # I
    .param p4, "color"    # I
    .param p5, "bright"    # I

    .line 621
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 622
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->effect:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;

    .line 623
    iput p3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->loop:I

    .line 624
    iput p4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->color:I

    .line 625
    iput p5, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->bright:I

    .line 626
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->isFixed:Z

    .line 627
    iget v1, p2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;->period:I

    const/16 v2, 0x32

    if-lt v1, v2, :cond_0

    iget v1, p2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;->period:I

    div-int/2addr v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->period:I

    .line 629
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->flowing:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Flowing;

    iget-boolean v1, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Flowing;->isLite:Z

    if-eqz v1, :cond_2

    .line 630
    const/16 v1, 0x8

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->bytes:[B

    .line 631
    iget v1, p2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;->fadeTime:I

    if-nez v1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget v2, p2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;->fadeTime:I

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->bytes:[B

    invoke-static {p1, v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$4400(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;ZZI[B)I

    .line 632
    iget v1, p2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;->mode:I

    iget v2, p2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;->rate:I

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->bytes:[B

    invoke-static {p1, v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$4500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;ZII[B)I

    .line 634
    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;IZ)V
    .locals 4
    .param p2, "effect"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;
    .param p3, "loop"    # I
    .param p4, "isCoupled"    # Z

    .line 636
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->effect:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;

    .line 638
    iput p3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->loop:I

    .line 639
    iput-boolean p4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->isCoupled:Z

    .line 640
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->isFixed:Z

    .line 641
    iget v1, p2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;->period:I

    const/16 v2, 0x32

    const/4 v3, 0x1

    if-lt v1, v2, :cond_0

    iget v1, p2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;->period:I

    div-int/2addr v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->period:I

    .line 643
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->flowing:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Flowing;

    iget-boolean v1, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Flowing;->isLite:Z

    if-eqz v1, :cond_2

    .line 644
    const/16 v1, 0x8

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->bytes:[B

    .line 645
    iget v1, p2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;->fadeTime:I

    if-nez v1, :cond_1

    move v0, v3

    nop

    :cond_1
    iget v1, p2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;->fadeTime:I

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->bytes:[B

    invoke-static {p1, v3, v0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$4400(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;ZZI[B)I

    .line 646
    iget v0, p2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;->mode:I

    iget v1, p2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;->rate:I

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->bytes:[B

    invoke-static {p1, v3, v0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$4500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;ZII[B)I

    .line 648
    :cond_2
    return-void
.end method

.method static synthetic access$8500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;

    .line 609
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->effect:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;

    .line 609
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->isFixed:Z

    return v0
.end method

.method static synthetic access$8700(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;

    .line 609
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->color:I

    return v0
.end method

.method static synthetic access$8800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;

    .line 609
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->bright:I

    return v0
.end method

.method static synthetic access$8900(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;

    .line 609
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->isCoupled:Z

    return v0
.end method

.method private hasFinish(I)Z
    .locals 3
    .param p1, "tick"    # I

    .line 655
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->loop:I

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->effect:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;->sdata:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->loop:I

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->period:I

    mul-int/2addr v0, v2

    if-lt p1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method private hasPeriod(I)Z
    .locals 1
    .param p1, "tick"    # I

    .line 651
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->period:I

    rem-int v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private parseEffect(I)Ljava/lang/String;
    .locals 3
    .param p1, "tick"    # I

    .line 659
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->effect:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;->sdata:Ljava/util/List;

    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->period:I

    div-int v1, p1, v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->effect:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;

    iget-object v2, v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;->sdata:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 665
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->flowing:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Flowing;

    iget-boolean v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Flowing;->isLite:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 666
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->isFixed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->bright:I

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->isCoupled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$4200(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$4600(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I

    move-result v0

    .line 667
    .local v0, "curBright":I
    :goto_0
    iget-boolean v3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->isFixed:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->color:I

    goto :goto_1

    :cond_2
    iget-boolean v3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->isCoupled:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$4700(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$4100(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I

    move-result v3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$4800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I

    move-result v3

    .line 669
    .local v3, "curColor":I
    :goto_1
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->bytes:[B

    invoke-static {v4, v0, v5}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$4900(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I[B)I

    .line 670
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->bytes:[B

    invoke-static {v4, v3, v5}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$5000(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I[B)I

    .line 672
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$5100()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_2
    if-ge v2, v5, :cond_6

    aget-object v6, v4, v2

    .line 673
    .local v6, "name":Ljava/lang/String;
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v7}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    move-result-object v7

    iget-object v7, v7, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->flowing:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Flowing;

    iget-object v7, v7, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Flowing;->linsMap:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 674
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v8, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v8}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    move-result-object v8

    iget-object v8, v8, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->flowing:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Flowing;

    iget-object v8, v8, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Flowing;->linsMap:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->bytes:[B

    invoke-static {v7, v8, v9}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$5200(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I[B)I

    .line 676
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v7}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$5300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 677
    invoke-static {v7}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$5300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->bytes:[B

    invoke-static {v8}, Ljava/util/Arrays;->hashCode([B)I

    move-result v8

    if-eq v7, v8, :cond_5

    .line 679
    :cond_4
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v8, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v8, v6}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$5400(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->bytes:[B

    invoke-static {v7, v8, v9}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$5500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;[B)V

    .line 680
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v7}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$5300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/Map;

    move-result-object v7

    iget-object v8, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->bytes:[B

    invoke-static {v8}, Ljava/util/Arrays;->hashCode([B)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    .end local v6    # "name":Ljava/lang/String;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 684
    .end local v0    # "curBright":I
    .end local v3    # "curColor":I
    :cond_6
    goto/16 :goto_6

    .line 685
    :cond_7
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->tick:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->hasFinish(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 686
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->tick:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->parseEffect(I)Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, "data":Ljava/lang/String;
    const-string v3, "%02x"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->effect:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;

    iget v5, v5, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;->fadeTime:I

    div-int/lit8 v5, v5, 0x14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 688
    .local v3, "fadeTime":Ljava/lang/String;
    const-string v4, "%04x"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 689
    .local v4, "length":Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 691
    .local v5, "curData":Ljava/lang/String;
    const-string v6, "full"

    iget-object v7, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->effect:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;

    iget-object v7, v7, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;->protocol:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 692
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "00"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    goto/16 :goto_5

    .line 693
    :cond_8
    const-string v6, "bright"

    iget-object v7, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->effect:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;

    iget-object v7, v7, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;->protocol:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 694
    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->isFixed:Z

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->color:I

    goto :goto_3

    .line 695
    :cond_9
    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->isCoupled:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$4700(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$4100(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I

    move-result v2

    goto :goto_3

    :cond_a
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$4800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I

    move-result v2

    .line 697
    .local v2, "curColor":I
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "02"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v7, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$5600(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 698
    .end local v2    # "curColor":I
    goto :goto_5

    :cond_b
    const-string v6, "color"

    iget-object v7, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->effect:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;

    iget-object v7, v7, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;->protocol:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 699
    iget-boolean v6, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->isFixed:Z

    if-eqz v6, :cond_c

    iget v6, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->bright:I

    goto :goto_4

    :cond_c
    iget-boolean v6, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->isCoupled:Z

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v6}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$4200(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I

    move-result v6

    goto :goto_4

    :cond_d
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v6}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$4600(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I

    move-result v6

    .line 701
    .local v6, "curBright":I
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "03"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "%02x"

    new-array v9, v1, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    .line 704
    .end local v6    # "curBright":I
    :cond_e
    :goto_5
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->prevData:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 705
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v2, v5}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$5700(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;)V

    .line 706
    iput-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->prevData:Ljava/lang/String;

    .line 708
    .end local v0    # "data":Ljava/lang/String;
    .end local v3    # "fadeTime":Ljava/lang/String;
    .end local v4    # "length":Ljava/lang/String;
    .end local v5    # "curData":Ljava/lang/String;
    :cond_f
    goto :goto_6

    :cond_10
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->tick:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->hasPeriod(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 709
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v8

    .line 711
    .local v8, "owner":Ljava/lang/String;
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$5800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 712
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v3, v2, v2, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$5900(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$5700(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;)V

    .line 714
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    const/4 v4, 0x3

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->effect:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;

    iget-object v6, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;->name:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v3 .. v8}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$3100(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 717
    .end local v8    # "owner":Ljava/lang/String;
    :cond_11
    :goto_6
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->tick:I

    add-int/2addr v0, v1

    const v1, 0x7fffffff

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->tick:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    goto :goto_7

    .line 718
    :catch_0
    move-exception v0

    .line 719
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run FlowingEffectTask exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7
    return-void
.end method
