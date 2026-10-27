.class Lcom/xiaopeng/aftersales/AfterSalesManager$1;
.super Lcom/xiaopeng/aftersales/IAlertListener$Stub;
.source "AfterSalesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/aftersales/AfterSalesManager;->addAlertListener(Lcom/xiaopeng/aftersales/AlertListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/aftersales/AfterSalesManager;

.field final synthetic val$l:Lcom/xiaopeng/aftersales/AlertListener;


# direct methods
.method constructor <init>(Lcom/xiaopeng/aftersales/AfterSalesManager;Lcom/xiaopeng/aftersales/AlertListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/aftersales/AfterSalesManager;

    .line 103
    iput-object p1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager$1;->this$0:Lcom/xiaopeng/aftersales/AfterSalesManager;

    iput-object p2, p0, Lcom/xiaopeng/aftersales/AfterSalesManager$1;->val$l:Lcom/xiaopeng/aftersales/AlertListener;

    invoke-direct {p0}, Lcom/xiaopeng/aftersales/IAlertListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public alertDiagnosisError(IIJLjava/lang/String;)V
    .locals 6
    .param p1, "module"    # I
    .param p2, "errorCode"    # I
    .param p3, "time"    # J
    .param p5, "errorMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager$1;->val$l:Lcom/xiaopeng/aftersales/AlertListener;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/xiaopeng/aftersales/AlertListener;->alertDiagnosisError(IIJLjava/lang/String;)V

    .line 107
    return-void
.end method
