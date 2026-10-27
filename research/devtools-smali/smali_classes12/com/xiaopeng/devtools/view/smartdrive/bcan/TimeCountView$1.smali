.class Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView$1;
.super Landroid/os/Handler;
.source "TimeCountView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Tv:Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView$1;->Tv:Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 37
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 38
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView$1;->Tv:Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    :goto_0
    return-void
.end method
