.class Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList$CallbackDeathRecipientImpl;
.super Ljava/lang/Object;
.source "CallbackList.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallbackDeathRecipientImpl"
.end annotation


# instance fields
.field private mCallback:Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;

.field private mPid:I

.field final synthetic this$0:Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;ILcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList$CallbackDeathRecipientImpl;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p2, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList$CallbackDeathRecipientImpl;->mPid:I

    .line 36
    iput-object p3, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList$CallbackDeathRecipientImpl;->mCallback:Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList$CallbackDeathRecipientImpl;->mCallback:Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    .line 42
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 43
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList$CallbackDeathRecipientImpl;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;

    invoke-static {v2}, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->access$000(Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList$CallbackDeathRecipientImpl;->mPid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList$CallbackDeathRecipientImpl;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;

    invoke-static {v2}, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->access$100(Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList$CallbackDeathRecipientImpl;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;

    iget v3, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList$CallbackDeathRecipientImpl;->mPid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->findBindingClientPkgName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 47
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    iget v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList$CallbackDeathRecipientImpl;->mPid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const-string v0, "Subscribed.CallbackList"

    const-string v1, "<<<< binder: %d died, client [ pid: %d, %s ]"

    invoke-static {v0, v1, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
