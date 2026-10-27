.class Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;
.super Ljava/lang/Object;
.source "AmbientLightCapability.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->handleEffectData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    .line 1744
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1748
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1600(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectData()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1500(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1402(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    .line 1750
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1400(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getRandomArray()Ljava/util/List;

    move-result-object v0

    .line 1751
    .local v0, "randomArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1800(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1702(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;I)I

    .line 1752
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1600(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEnableUserSelectedColor()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$2000(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$2100(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$2200(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1400(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getColor()I

    move-result v2

    :goto_0
    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1902(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;I)I

    .line 1753
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1400(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getEnableRandom()I

    move-result v1

    const/4 v2, 0x3

    const/4 v4, 0x2

    if-ne v1, v3, :cond_2

    .line 1754
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1400(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getRandomMin()I

    move-result v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    iget-object v8, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v8}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1400(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getRandomMax()I

    move-result v8

    iget-object v9, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v9}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1400(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getRandomMin()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-double v8, v8

    mul-double/2addr v6, v8

    double-to-int v6, v6

    add-int/2addr v5, v6

    invoke-static {v1, v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1702(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;I)I

    goto :goto_1

    .line 1755
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1400(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getEnableRandom()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 1756
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1400(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getRandomMin()I

    move-result v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    iget-object v8, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v8}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1400(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getRandomMax()I

    move-result v8

    iget-object v9, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v9}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1400(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getRandomMin()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-double v8, v8

    mul-double/2addr v6, v8

    double-to-int v6, v6

    add-int/2addr v5, v6

    invoke-static {v1, v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1702(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;I)I

    .line 1757
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide/high16 v7, 0x4034000000000000L    # 20.0

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-static {v1, v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1902(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;I)I

    goto :goto_1

    .line 1758
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1400(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getEnableRandom()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 1759
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v1, v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1702(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;I)I

    .line 1761
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1400(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getBrightness()I

    move-result v5

    invoke-static {v1, v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$2302(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;I)I

    .line 1762
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1400(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getFade()I

    move-result v5

    invoke-static {v1, v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$2402(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;I)I

    .line 1763
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1400(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getTimeInterval()I

    move-result v5

    invoke-static {v1, v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$2502(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;I)I

    .line 1765
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1600(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEnableMusicSpectrum()I

    move-result v1

    if-eq v1, v3, :cond_5

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1600(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEnableMusicSpectrum()I

    move-result v1

    if-eq v1, v4, :cond_5

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1600(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEnableSpeedData()I

    move-result v1

    if-eq v1, v4, :cond_5

    .line 1766
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1700(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)I

    move-result v4

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1900(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)I

    move-result v5

    int-to-byte v5, v5

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v6}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$2300(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)I

    move-result v6

    int-to-byte v6, v6

    iget-object v7, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v7}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$2400(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)I

    move-result v7

    int-to-byte v7, v7

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setGroupLightData(IBBB)V

    .line 1768
    :cond_5
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1400(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getEnableRandom()I

    move-result v1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_6

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1400(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getEnableRandom()I

    move-result v1

    if-ne v1, v2, :cond_7

    .line 1769
    :cond_6
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$2600(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)I

    move-result v2

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setGroupLightData(IBBB)V

    .line 1770
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1700(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$2602(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;I)I

    .line 1772
    :cond_7
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1600(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectType()I

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1500(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$2700(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)I

    move-result v2

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_8

    .line 1773
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$2800(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)V

    .line 1776
    :cond_8
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$2700(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)I

    move-result v1

    sub-int/2addr v1, v3

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$2700(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)I

    move-result v1

    sub-int/2addr v1, v3

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1500(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)I

    move-result v2

    if-gt v1, v2, :cond_9

    goto :goto_2

    .line 1779
    :cond_9
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v1, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1512(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;I)I

    .end local v0    # "randomArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_3

    .line 1777
    .restart local v0    # "randomArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_a
    :goto_2
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v1, v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1502(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1784
    .end local v0    # "randomArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_3
    goto :goto_4

    .line 1782
    :catch_0
    move-exception v0

    .line 1783
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AmbientLightCapability"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEffectData exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method
