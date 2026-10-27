.class Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$7$1;
.super Ljava/lang/Object;
.source "SmartVolumeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$7;->onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$7;

.field final synthetic val$doorState:[I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$7;[I)V
    .locals 0
    .param p1, "this$1"    # Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$7;

    .line 215
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$7$1;->this$1:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$7;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$7$1;->val$doorState:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$7$1;->this$1:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$7;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$7;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->access$600(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)Landroid/car/hardware/bcm/CarBcmManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$7$1;->this$1:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$7;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$7;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$7$1;->val$doorState:[I

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->access$700(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :cond_0
    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartVolumeService"

    const-string v2, "handleCarDoorChanged error"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
