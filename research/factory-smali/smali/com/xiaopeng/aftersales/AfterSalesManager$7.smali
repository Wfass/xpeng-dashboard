.class Lcom/xiaopeng/aftersales/AfterSalesManager$7;
.super Lcom/xiaopeng/aftersales/IAuthModeListener$Stub;
.source "AfterSalesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/aftersales/AfterSalesManager;->registerAuthModeListener(Lcom/xiaopeng/aftersales/AuthModeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/aftersales/AfterSalesManager;

.field final synthetic val$l:Lcom/xiaopeng/aftersales/AuthModeListener;


# direct methods
.method constructor <init>(Lcom/xiaopeng/aftersales/AfterSalesManager;Lcom/xiaopeng/aftersales/AuthModeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/aftersales/AfterSalesManager;

    .line 595
    iput-object p1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager$7;->this$0:Lcom/xiaopeng/aftersales/AfterSalesManager;

    iput-object p2, p0, Lcom/xiaopeng/aftersales/AfterSalesManager$7;->val$l:Lcom/xiaopeng/aftersales/AuthModeListener;

    invoke-direct {p0}, Lcom/xiaopeng/aftersales/IAuthModeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthModeChanged(ZI)V
    .locals 1
    .param p1, "onoff"    # Z
    .param p2, "switchResult"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 598
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager$7;->val$l:Lcom/xiaopeng/aftersales/AuthModeListener;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/aftersales/AuthModeListener;->onAuthModeChanged(ZI)V

    .line 599
    return-void
.end method
