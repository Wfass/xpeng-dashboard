.class Lcom/xiaopeng/aftersales/AfterSalesManager$6;
.super Lcom/xiaopeng/aftersales/IEncryptShListener$Stub;
.source "AfterSalesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/aftersales/AfterSalesManager;->registerEncryptShListener(Lcom/xiaopeng/aftersales/EncryptShListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/aftersales/AfterSalesManager;

.field final synthetic val$l:Lcom/xiaopeng/aftersales/EncryptShListener;


# direct methods
.method constructor <init>(Lcom/xiaopeng/aftersales/AfterSalesManager;Lcom/xiaopeng/aftersales/EncryptShListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/aftersales/AfterSalesManager;

    .line 513
    iput-object p1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager$6;->this$0:Lcom/xiaopeng/aftersales/AfterSalesManager;

    iput-object p2, p0, Lcom/xiaopeng/aftersales/AfterSalesManager$6;->val$l:Lcom/xiaopeng/aftersales/EncryptShListener;

    invoke-direct {p0}, Lcom/xiaopeng/aftersales/IEncryptShListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEncryptShResponse(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "errorcode"    # I
    .param p2, "resultPath"    # Ljava/lang/String;
    .param p3, "outputPath"    # Ljava/lang/String;
    .param p4, "isCloudCmd"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 516
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager$6;->val$l:Lcom/xiaopeng/aftersales/EncryptShListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/aftersales/EncryptShListener;->onEncryptShResponse(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 517
    return-void
.end method
