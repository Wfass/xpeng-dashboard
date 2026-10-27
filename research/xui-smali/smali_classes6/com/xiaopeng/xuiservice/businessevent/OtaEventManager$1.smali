.class Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager$1;
.super Ljava/lang/Object;
.source "OtaEventManager.java"

# interfaces
.implements Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager;->addCanSignalListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager;

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager$1;->this$0:Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 1
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager$1;->this$0:Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager;->access$200(Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager;Landroid/car/hardware/CarPropertyValue;)V

    .line 47
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 51
    return-void
.end method
