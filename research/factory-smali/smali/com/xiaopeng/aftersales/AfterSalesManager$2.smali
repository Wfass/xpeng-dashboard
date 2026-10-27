.class Lcom/xiaopeng/aftersales/AfterSalesManager$2;
.super Lcom/xiaopeng/aftersales/ILogicActionListener$Stub;
.source "AfterSalesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/aftersales/AfterSalesManager;->addLogicActionListener(Lcom/xiaopeng/aftersales/LogicActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/aftersales/AfterSalesManager;

.field final synthetic val$l:Lcom/xiaopeng/aftersales/LogicActionListener;


# direct methods
.method constructor <init>(Lcom/xiaopeng/aftersales/AfterSalesManager;Lcom/xiaopeng/aftersales/LogicActionListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/aftersales/AfterSalesManager;

    .line 163
    iput-object p1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager$2;->this$0:Lcom/xiaopeng/aftersales/AfterSalesManager;

    iput-object p2, p0, Lcom/xiaopeng/aftersales/AfterSalesManager$2;->val$l:Lcom/xiaopeng/aftersales/LogicActionListener;

    invoke-direct {p0}, Lcom/xiaopeng/aftersales/ILogicActionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public uploadLogicAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "issueName"    # Ljava/lang/String;
    .param p2, "conclusion"    # Ljava/lang/String;
    .param p3, "startTime"    # Ljava/lang/String;
    .param p4, "endTime"    # Ljava/lang/String;
    .param p5, "logicactionTime"    # Ljava/lang/String;
    .param p6, "logicactionEntry"    # Ljava/lang/String;
    .param p7, "logictreeVer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager$2;->val$l:Lcom/xiaopeng/aftersales/LogicActionListener;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/xiaopeng/aftersales/LogicActionListener;->uploadLogicAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method
