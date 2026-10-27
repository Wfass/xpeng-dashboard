.class Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$3;
.super Ljava/lang/Object;
.source "XpLightlanuageService.java"

# interfaces
.implements Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    .line 1463
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 1466
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21402e15

    if-ne v0, v1, :cond_0

    .line 1467
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->access$1700(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;I)V

    .line 1469
    :cond_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 1473
    return-void
.end method
