.class Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$13;
.super Ljava/lang/Object;
.source "ContextInfoHalService.java"

# interfaces
.implements Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->initCarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    .line 484
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$13;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .line 489
    const/16 v0, 0x1c

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_0

    .line 491
    const/4 v0, -0x1

    .local v0, "reason":I
    goto :goto_0

    .line 493
    .end local v0    # "reason":I
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$13;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/power/CarPowerManager;

    invoke-virtual {v0}, Landroid/car/hardware/power/CarPowerManager;->getBootReason()I

    move-result v0

    .line 495
    .restart local v0    # "reason":I
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$13;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    const/4 v2, -0x1

    invoke-static {v1, v2, p1, v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->access$600(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    .end local v0    # "reason":I
    goto :goto_1

    .line 496
    :catch_0
    move-exception v0

    .line 498
    :goto_1
    return-void
.end method
