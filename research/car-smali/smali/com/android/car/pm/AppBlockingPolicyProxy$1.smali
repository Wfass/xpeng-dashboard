.class Lcom/android/car/pm/AppBlockingPolicyProxy$1;
.super Ljava/lang/Object;
.source "AppBlockingPolicyProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/pm/AppBlockingPolicyProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/pm/AppBlockingPolicyProxy;


# direct methods
.method constructor <init>(Lcom/android/car/pm/AppBlockingPolicyProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/pm/AppBlockingPolicyProxy;

    .line 57
    iput-object p1, p0, Lcom/android/car/pm/AppBlockingPolicyProxy$1;->this$0:Lcom/android/car/pm/AppBlockingPolicyProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 60
    const-string v0, "CAR.PACKAGE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout for policy setting for service:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/pm/AppBlockingPolicyProxy$1;->this$0:Lcom/android/car/pm/AppBlockingPolicyProxy;

    invoke-static {v2}, Lcom/android/car/pm/AppBlockingPolicyProxy;->access$000(Lcom/android/car/pm/AppBlockingPolicyProxy;)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/android/car/pm/AppBlockingPolicyProxy$1;->this$0:Lcom/android/car/pm/AppBlockingPolicyProxy;

    invoke-virtual {v0}, Lcom/android/car/pm/AppBlockingPolicyProxy;->disconnect()V

    .line 62
    iget-object v0, p0, Lcom/android/car/pm/AppBlockingPolicyProxy$1;->this$0:Lcom/android/car/pm/AppBlockingPolicyProxy;

    invoke-static {v0}, Lcom/android/car/pm/AppBlockingPolicyProxy;->access$100(Lcom/android/car/pm/AppBlockingPolicyProxy;)Lcom/android/car/pm/CarPackageManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/pm/AppBlockingPolicyProxy$1;->this$0:Lcom/android/car/pm/AppBlockingPolicyProxy;

    invoke-virtual {v0, v1}, Lcom/android/car/pm/CarPackageManagerService;->onPolicyConnectionFailure(Lcom/android/car/pm/AppBlockingPolicyProxy;)V

    .line 63
    return-void
.end method
