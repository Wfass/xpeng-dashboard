.class Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity$a;
.super Landroid/os/storage/StorageEventListener;
.source "NavTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
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

    .line 192
    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    .line 193
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity$a;->sz:Ljava/lang/ref/WeakReference;

    .line 194
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity$a;)Ljava/lang/String;
    .locals 0

    .line 187
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity$a;->kG()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private kG()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity$a;->Ap:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 202
    invoke-super {p0, p1, p2, p3}, Landroid/os/storage/StorageEventListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v0, "NavTestActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", oldState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", newState = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    const-string p2, "mounted"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 206
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity$a;->sz:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 207
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity$a;->sz:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    .line 208
    const/4 p3, 0x1

    iput p3, p2, Landroid/os/Message;->what:I

    .line 209
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 210
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity$a;->Ap:Ljava/lang/String;

    .line 211
    goto :goto_0

    .line 213
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity$a;->sz:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 214
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity$a;->sz:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 215
    const/4 p2, 0x2

    iput p2, p1, Landroid/os/Message;->what:I

    .line 216
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 217
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity$a;->Ap:Ljava/lang/String;

    .line 220
    :cond_1
    :goto_0
    return-void
.end method
