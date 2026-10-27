.class Lcom/xiaopeng/xuimanager/systemui/SystemUIClient$1;
.super Landroid/os/Handler;
.source "SystemUIClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;Landroid/os/Looper;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient$1;->this$0:Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Client"

    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 43
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient$1;->this$0:Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;->access$000(Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;)V

    :cond_0
    return-void
.end method
