.class Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$a;
.super Landroid/os/storage/StorageEventListener;
.source "AdasCollectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private Ap:Ljava/lang/String;

.field private sz:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 226
    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    .line 227
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$a;->sz:Ljava/lang/ref/WeakReference;

    .line 228
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$a;)Ljava/lang/String;
    .locals 0

    .line 221
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$a;->kG()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private kG()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$a;->Ap:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 236
    invoke-super {p0, p1, p2, p3}, Landroid/os/storage/StorageEventListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v0, "AdasCollectActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", oldState = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", newState = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    const-string p1, "mounted"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 240
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$a;->sz:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 241
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$a;->sz:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 242
    const/4 p2, 0x1

    iput p2, p1, Landroid/os/Message;->what:I

    .line 243
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 244
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->lm()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$a;->Ap:Ljava/lang/String;

    .line 245
    goto :goto_0

    .line 247
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$a;->sz:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 248
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$a;->sz:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 249
    const/4 p2, 0x2

    iput p2, p1, Landroid/os/Message;->what:I

    .line 250
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 251
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$a;->Ap:Ljava/lang/String;

    .line 254
    :cond_1
    :goto_0
    return-void
.end method
