.class Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$7;
.super Ljava/lang/Object;
.source "ContextInfoHalService.java"

# interfaces
.implements Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;


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

    .line 345
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$7;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 5
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 348
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    .line 349
    .local v0, "valType":I
    const v1, 0x2141267a

    if-ne v0, v1, :cond_0

    .line 350
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 351
    .local v1, "values":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 352
    .local v2, "result":[I
    if-eqz v1, :cond_0

    array-length v3, v1

    const/4 v4, 0x4

    if-lt v3, v4, :cond_0

    .line 353
    array-length v3, v1

    new-array v2, v3, [I

    .line 354
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$7;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->access$200(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    .line 359
    .end local v1    # "values":[Ljava/lang/Object;
    .end local v2    # "result":[I
    :cond_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 363
    return-void
.end method
