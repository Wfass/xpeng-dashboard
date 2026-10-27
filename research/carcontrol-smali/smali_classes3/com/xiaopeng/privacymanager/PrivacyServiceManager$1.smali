.class Lcom/xiaopeng/privacymanager/PrivacyServiceManager$1;
.super Ljava/lang/Object;
.source "PrivacyServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/privacymanager/PrivacyServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/privacymanager/PrivacyServiceManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/privacymanager/PrivacyServiceManager;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager$1;->this$0:Lcom/xiaopeng/privacymanager/PrivacyServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager$1;->this$0:Lcom/xiaopeng/privacymanager/PrivacyServiceManager;

    invoke-static {v0}, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->access$000(Lcom/xiaopeng/privacymanager/PrivacyServiceManager;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager$1;->this$0:Lcom/xiaopeng/privacymanager/PrivacyServiceManager;

    invoke-virtual {v0}, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager$1;->this$0:Lcom/xiaopeng/privacymanager/PrivacyServiceManager;

    invoke-static {v0}, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->access$200(Lcom/xiaopeng/privacymanager/PrivacyServiceManager;)V

    return-void

    .line 40
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager$1;->this$0:Lcom/xiaopeng/privacymanager/PrivacyServiceManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->access$102(Lcom/xiaopeng/privacymanager/PrivacyServiceManager;I)I

    return-void
.end method
