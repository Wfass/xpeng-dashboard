.class Lcom/xiaopeng/aftersales/AfterSalesManager$4;
.super Lcom/xiaopeng/aftersales/IRepairModeListener$Stub;
.source "AfterSalesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/aftersales/AfterSalesManager;->registerRepairModeListener(Lcom/xiaopeng/aftersales/RepairModeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/aftersales/AfterSalesManager;

.field final synthetic val$l:Lcom/xiaopeng/aftersales/RepairModeListener;


# direct methods
.method constructor <init>(Lcom/xiaopeng/aftersales/AfterSalesManager;Lcom/xiaopeng/aftersales/RepairModeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/aftersales/AfterSalesManager;

    .line 431
    iput-object p1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager$4;->this$0:Lcom/xiaopeng/aftersales/AfterSalesManager;

    iput-object p2, p0, Lcom/xiaopeng/aftersales/AfterSalesManager$4;->val$l:Lcom/xiaopeng/aftersales/RepairModeListener;

    invoke-direct {p0}, Lcom/xiaopeng/aftersales/IRepairModeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRepairModeChanged(ZI)V
    .locals 1
    .param p1, "onoff"    # Z
    .param p2, "switchResult"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager$4;->val$l:Lcom/xiaopeng/aftersales/RepairModeListener;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/aftersales/RepairModeListener;->onRepairModeChanged(ZI)V

    .line 435
    return-void
.end method
