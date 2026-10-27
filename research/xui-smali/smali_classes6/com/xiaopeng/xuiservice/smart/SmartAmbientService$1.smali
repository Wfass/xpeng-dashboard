.class Lcom/xiaopeng/xuiservice/smart/SmartAmbientService$1;
.super Ljava/lang/Object;
.source "SmartAmbientService.java"

# interfaces
.implements Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartAmbientService;->addMcuManagerCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartAmbientService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartAmbientService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartAmbientService;

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAmbientService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 0
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 25
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 29
    return-void
.end method
