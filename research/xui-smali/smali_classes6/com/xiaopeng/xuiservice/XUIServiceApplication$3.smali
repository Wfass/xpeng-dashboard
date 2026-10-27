.class Lcom/xiaopeng/xuiservice/XUIServiceApplication$3;
.super Ljava/lang/Object;
.source "XUIServiceApplication.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/XUIServiceApplication;->lambda$initOpenSdkManagers$1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/XUIServiceApplication;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    .line 251
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/XUIServiceApplication$3;->this$0:Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 254
    const-string v0, "XUIService##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected,c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/XUIServiceApplication$3;->this$0:Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->access$500(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)V

    .line 256
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 260
    const-string v0, "XUIService##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected,c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/XUIServiceApplication$3;->this$0:Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->access$600(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)V

    .line 262
    return-void
.end method
