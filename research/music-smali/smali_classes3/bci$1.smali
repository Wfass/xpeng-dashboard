.class Lbci$1;
.super Landroid/os/Handler;
.source "LocalLoveManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbci;


# direct methods
.method constructor <init>(Lbci;Landroid/os/Looper;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lbci$1;->a:Lbci;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 60
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 61
    iget-object p1, p0, Lbci$1;->a:Lbci;

    invoke-virtual {p1}, Lbci;->f()V

    :cond_0
    return-void
.end method
