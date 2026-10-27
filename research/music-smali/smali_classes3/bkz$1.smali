.class final Lbkz$1;
.super Ljava/lang/Object;
.source "ReportFlowUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbkz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 48
    invoke-static {}, Lbkz;->a()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lbkz;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lbkz;->b(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 50
    invoke-static {v0}, Lbkz;->c(Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_0
    return-void
.end method
