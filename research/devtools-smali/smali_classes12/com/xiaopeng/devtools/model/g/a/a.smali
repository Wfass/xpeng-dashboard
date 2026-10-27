.class public Lcom/xiaopeng/devtools/model/g/a/a;
.super Ljava/lang/Object;
.source "AdasCollectModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/model/g/a/a$b;,
        Lcom/xiaopeng/devtools/model/g/a/a$a;
    }
.end annotation


# instance fields
.field private mHandlerThread:Landroid/os/HandlerThread;

.field private uH:Lcom/xiaopeng/devtools/model/g/a/a$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "adas_collect"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/g/a/a;->mHandlerThread:Landroid/os/HandlerThread;

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/g/a/a;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 34
    new-instance v0, Lcom/xiaopeng/devtools/model/g/a/a$b;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/g/a/a;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/devtools/model/g/a/a$b;-><init>(Lcom/xiaopeng/devtools/model/g/a/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/g/a/a;->uH:Lcom/xiaopeng/devtools/model/g/a/a$b;

    .line 35
    return-void
.end method


# virtual methods
.method public hE()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/g/a/a;->uH:Lcom/xiaopeng/devtools/model/g/a/a$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/model/g/a/a$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 46
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 47
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/g/a/a;->uH:Lcom/xiaopeng/devtools/model/g/a/a$b;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/devtools/model/g/a/a$b;->sendMessage(Landroid/os/Message;)Z

    .line 48
    return-void
.end method

.method public hF()V
    .locals 2

    .line 51
    new-instance v0, Lcom/xiaopeng/devtools/model/g/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/devtools/model/g/a/a$a;-><init>(Lcom/xiaopeng/devtools/model/g/a/a;Lcom/xiaopeng/devtools/model/g/a/a$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/model/g/a/a$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 52
    return-void
.end method
