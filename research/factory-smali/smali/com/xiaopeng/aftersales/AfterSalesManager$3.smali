.class Lcom/xiaopeng/aftersales/AfterSalesManager$3;
.super Lcom/xiaopeng/aftersales/ILogicTreeUpgrader$Stub;
.source "AfterSalesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/aftersales/AfterSalesManager;->addLogicTreeUpgrader(Lcom/xiaopeng/aftersales/LogicTreeUpgrader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/aftersales/AfterSalesManager;

.field final synthetic val$l:Lcom/xiaopeng/aftersales/LogicTreeUpgrader;


# direct methods
.method constructor <init>(Lcom/xiaopeng/aftersales/AfterSalesManager;Lcom/xiaopeng/aftersales/LogicTreeUpgrader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/aftersales/AfterSalesManager;

    .line 246
    iput-object p1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager$3;->this$0:Lcom/xiaopeng/aftersales/AfterSalesManager;

    iput-object p2, p0, Lcom/xiaopeng/aftersales/AfterSalesManager$3;->val$l:Lcom/xiaopeng/aftersales/LogicTreeUpgrader;

    invoke-direct {p0}, Lcom/xiaopeng/aftersales/ILogicTreeUpgrader$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpgradeStatus(Z)V
    .locals 1
    .param p1, "status"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager$3;->val$l:Lcom/xiaopeng/aftersales/LogicTreeUpgrader;

    invoke-interface {v0, p1}, Lcom/xiaopeng/aftersales/LogicTreeUpgrader;->onUpgradeStatus(Z)V

    .line 250
    return-void
.end method
