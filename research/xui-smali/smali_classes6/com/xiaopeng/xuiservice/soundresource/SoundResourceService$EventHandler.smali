.class final Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService$EventHandler;
.super Landroid/os/Handler;
.source "SoundResourceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService$EventHandler;->this$0:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;

    .line 48
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 49
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 53
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService$EventHandler;->this$0:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->access$000(Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;II)V

    .line 58
    :goto_0
    return-void
.end method
