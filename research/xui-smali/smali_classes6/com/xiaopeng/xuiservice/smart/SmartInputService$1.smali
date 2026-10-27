.class Lcom/xiaopeng/xuiservice/smart/SmartInputService$1;
.super Ljava/lang/Object;
.source "SmartInputService.java"

# interfaces
.implements Landroid/car/hardware/input/CarInputManager$CarInputEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartInputService;->initCarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartInputService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartInputService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartInputService;

    .line 73
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartInputService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartInputService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartInputService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartInputService;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarInputManager.CarInputEventCallback onChangeEvent value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartInputService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartInputService;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartInputService;Landroid/car/hardware/CarPropertyValue;)V

    .line 78
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 2
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartInputService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartInputService;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->TAG:Ljava/lang/String;

    const-string v1, "CarInputManager.CarInputEventCallback onErrorEvent"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method
