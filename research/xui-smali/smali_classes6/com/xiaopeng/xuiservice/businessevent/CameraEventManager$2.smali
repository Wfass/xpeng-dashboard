.class Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager$2;
.super Ljava/lang/Object;
.source "CameraEventManager.java"

# interfaces
.implements Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;->addCanSignalListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;

    .line 112
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager$2;->this$0:Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 1
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager$2;->this$0:Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;->access$200(Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;Landroid/car/hardware/CarPropertyValue;)V

    .line 116
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 120
    return-void
.end method
