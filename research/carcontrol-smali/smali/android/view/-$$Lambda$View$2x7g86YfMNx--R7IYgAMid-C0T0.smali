.class public final synthetic Landroid/view/-$$Lambda$View$2x7g86YfMNx--R7IYgAMid-C0T0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/Bundle;

.field public final synthetic f$1:Landroid/view/displayhash/DisplayHashResultCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;Landroid/view/displayhash/DisplayHashResultCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$View$2x7g86YfMNx--R7IYgAMid-C0T0;->f$0:Landroid/os/Bundle;

    iput-object p2, p0, Landroid/view/-$$Lambda$View$2x7g86YfMNx--R7IYgAMid-C0T0;->f$1:Landroid/view/displayhash/DisplayHashResultCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/view/-$$Lambda$View$2x7g86YfMNx--R7IYgAMid-C0T0;->f$0:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/view/-$$Lambda$View$2x7g86YfMNx--R7IYgAMid-C0T0;->f$1:Landroid/view/displayhash/DisplayHashResultCallback;

    invoke-static {v0, v1}, Landroid/view/View;->lambda$generateDisplayHash$5(Landroid/os/Bundle;Landroid/view/displayhash/DisplayHashResultCallback;)V

    return-void
.end method
