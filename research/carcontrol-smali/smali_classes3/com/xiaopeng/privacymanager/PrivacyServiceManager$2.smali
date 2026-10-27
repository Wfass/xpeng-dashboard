.class Lcom/xiaopeng/privacymanager/PrivacyServiceManager$2;
.super Lcom/xiaopeng/privacyservice/IPrivacyDialogCallback$Stub;
.source "PrivacyServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->showPrivacyDialog(IILcom/xiaopeng/privacymanager/PrivacyDialogListener;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/privacymanager/PrivacyServiceManager;

.field final synthetic val$listener:Lcom/xiaopeng/privacymanager/PrivacyDialogListener;


# direct methods
.method constructor <init>(Lcom/xiaopeng/privacymanager/PrivacyServiceManager;Lcom/xiaopeng/privacymanager/PrivacyDialogListener;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager$2;->this$0:Lcom/xiaopeng/privacymanager/PrivacyServiceManager;

    iput-object p2, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager$2;->val$listener:Lcom/xiaopeng/privacymanager/PrivacyDialogListener;

    invoke-direct {p0}, Lcom/xiaopeng/privacyservice/IPrivacyDialogCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onDialogClosed$0(Lcom/xiaopeng/privacymanager/PrivacyDialogListener;IZI)V
    .locals 0

    .line 129
    invoke-interface {p0, p1, p2, p3}, Lcom/xiaopeng/privacymanager/PrivacyDialogListener;->onDialogClosed(IZI)V

    return-void
.end method

.method static synthetic lambda$onDialogShown$1(Lcom/xiaopeng/privacymanager/PrivacyDialogListener;I)V
    .locals 0

    .line 134
    invoke-interface {p0, p1}, Lcom/xiaopeng/privacymanager/PrivacyDialogListener;->onDialogShown(I)V

    return-void
.end method


# virtual methods
.method public onDialogClosed(IZI)V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager$2;->this$0:Lcom/xiaopeng/privacymanager/PrivacyServiceManager;

    invoke-static {v0}, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->access$300(Lcom/xiaopeng/privacymanager/PrivacyServiceManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager$2;->val$listener:Lcom/xiaopeng/privacymanager/PrivacyDialogListener;

    new-instance v2, Lcom/xiaopeng/privacymanager/-$$Lambda$PrivacyServiceManager$2$OMchxNnB6H7zO5y40H2PhwNtBbA;

    invoke-direct {v2, v1, p1, p2, p3}, Lcom/xiaopeng/privacymanager/-$$Lambda$PrivacyServiceManager$2$OMchxNnB6H7zO5y40H2PhwNtBbA;-><init>(Lcom/xiaopeng/privacymanager/PrivacyDialogListener;IZI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDialogShown(I)V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager$2;->this$0:Lcom/xiaopeng/privacymanager/PrivacyServiceManager;

    invoke-static {v0}, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->access$300(Lcom/xiaopeng/privacymanager/PrivacyServiceManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager$2;->val$listener:Lcom/xiaopeng/privacymanager/PrivacyDialogListener;

    new-instance v2, Lcom/xiaopeng/privacymanager/-$$Lambda$PrivacyServiceManager$2$lV66DcxpQ3URTYzPnXLtCJA_PFA;

    invoke-direct {v2, v1, p1}, Lcom/xiaopeng/privacymanager/-$$Lambda$PrivacyServiceManager$2$lV66DcxpQ3URTYzPnXLtCJA_PFA;-><init>(Lcom/xiaopeng/privacymanager/PrivacyDialogListener;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
