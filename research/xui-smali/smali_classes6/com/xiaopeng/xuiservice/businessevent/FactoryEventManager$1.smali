.class Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager$1;
.super Ljava/lang/Object;
.source "FactoryEventManager.java"

# interfaces
.implements Landroid/car/diagnostic/XpDiagnosticManager$XpDiagnosticEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;->addCanSignalListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager$1;->this$0:Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 1
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager$1;->this$0:Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;->access$200(Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;Landroid/car/hardware/CarPropertyValue;)V

    .line 67
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 71
    return-void
.end method
