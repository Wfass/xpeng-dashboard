.class final Lcom/xiaopeng/xuimanager/message/MessageManager$MessageListenerToService;
.super Lcom/xiaopeng/xuimanager/message/IMessageListener$Stub;
.source "MessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/message/MessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MessageListenerToService"
.end annotation


# instance fields
.field private final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xuimanager/message/MessageManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuimanager/message/MessageManager;)V
    .locals 1

    .line 219
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/message/IMessageListener$Stub;-><init>()V

    .line 220
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/message/MessageManager$MessageListenerToService;->ref:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onReceiveMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/message/MessageManager$MessageListenerToService;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/message/MessageManager;

    if-eqz v0, :cond_0

    .line 227
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuimanager/message/MessageManager;->access$200(Lcom/xiaopeng/xuimanager/message/MessageManager;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
