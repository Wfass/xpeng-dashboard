.class Lcom/xiaopeng/xuiservice/smart/SmartAvasService$4;
.super Ljava/lang/Object;
.source "SmartAvasService.java"

# interfaces
.implements Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->initCarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartAvasService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartAvasService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartAvasService;

    .line 138
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService$4;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAvasService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .param p1, "val"    # Landroid/car/hardware/CarPropertyValue;

    .line 141
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21402403

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService$4;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAvasService;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->access$400(Lcom/xiaopeng/xuiservice/smart/SmartAvasService;I)V

    .line 146
    :goto_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "i1"    # I

    .line 151
    return-void
.end method
