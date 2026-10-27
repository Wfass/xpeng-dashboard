.class Lcom/xiaopeng/logictree/handler/a$1;
.super Landroid/os/Handler;
.source "BluetoothLogicAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/logictree/handler/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 40
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 41
    iget p1, p1, Landroid/os/Message;->what:I

    const v0, 0x186a1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pM()V

    .line 46
    :goto_0
    return-void
.end method
