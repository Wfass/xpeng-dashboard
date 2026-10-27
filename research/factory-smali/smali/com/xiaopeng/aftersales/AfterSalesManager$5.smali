.class Lcom/xiaopeng/aftersales/AfterSalesManager$5;
.super Lcom/xiaopeng/aftersales/IShellCmdListener$Stub;
.source "AfterSalesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/aftersales/AfterSalesManager;->registerShellCmdListener(Lcom/xiaopeng/aftersales/ShellCmdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/aftersales/AfterSalesManager;

.field final synthetic val$l:Lcom/xiaopeng/aftersales/ShellCmdListener;


# direct methods
.method constructor <init>(Lcom/xiaopeng/aftersales/AfterSalesManager;Lcom/xiaopeng/aftersales/ShellCmdListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/aftersales/AfterSalesManager;

    .line 477
    iput-object p1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager$5;->this$0:Lcom/xiaopeng/aftersales/AfterSalesManager;

    iput-object p2, p0, Lcom/xiaopeng/aftersales/AfterSalesManager$5;->val$l:Lcom/xiaopeng/aftersales/ShellCmdListener;

    invoke-direct {p0}, Lcom/xiaopeng/aftersales/IShellCmdListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onShellResponse(ILjava/lang/String;Z)V
    .locals 1
    .param p1, "errorcode"    # I
    .param p2, "resultPath"    # Ljava/lang/String;
    .param p3, "isCloudCmd"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager$5;->val$l:Lcom/xiaopeng/aftersales/ShellCmdListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/aftersales/ShellCmdListener;->onShellResponse(ILjava/lang/String;Z)V

    .line 481
    return-void
.end method
