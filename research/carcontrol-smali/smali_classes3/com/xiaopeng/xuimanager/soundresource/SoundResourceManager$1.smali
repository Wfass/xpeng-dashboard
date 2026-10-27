.class Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager$1;
.super Landroid/os/Handler;
.source "SoundResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;Landroid/os/Looper;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager$1;->this$0:Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 204
    invoke-static {}, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager$1;->this$0:Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->access$300(Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;Landroid/os/Message;)V

    :goto_0
    return-void
.end method
