.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$c;
.super Landroid/os/Handler;
.source "LongClickButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private KX:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$c;->KX:Ljava/lang/ref/WeakReference;

    .line 92
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 96
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$c;->KX:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

    .line 98
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;->c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 99
    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;->c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$a;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$a;->repeatAction(Landroid/view/View;)V

    .line 101
    :cond_0
    return-void
.end method
