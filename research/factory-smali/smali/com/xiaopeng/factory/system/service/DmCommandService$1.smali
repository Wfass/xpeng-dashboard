.class Lcom/xiaopeng/factory/system/service/DmCommandService$1;
.super Ljava/lang/Object;
.source "DmCommandService.java"

# interfaces
.implements Landroid/car/diagnostic/XpDiagnosticManager$XpDiagnosticEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/factory/system/service/DmCommandService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/factory/system/service/DmCommandService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/factory/system/service/DmCommandService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/factory/system/service/DmCommandService;

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/factory/system/service/DmCommandService$1;->this$0:Lcom/xiaopeng/factory/system/service/DmCommandService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 1
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/factory/system/service/DmCommandService$1;->this$0:Lcom/xiaopeng/factory/system/service/DmCommandService;

    invoke-static {v0, p1}, Lcom/xiaopeng/factory/system/service/DmCommandService;->access$000(Lcom/xiaopeng/factory/system/service/DmCommandService;Landroid/car/hardware/CarPropertyValue;)V

    .line 37
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 42
    return-void
.end method
