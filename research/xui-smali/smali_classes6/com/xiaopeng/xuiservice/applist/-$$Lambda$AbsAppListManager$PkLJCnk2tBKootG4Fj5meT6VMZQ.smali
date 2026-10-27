.class public final synthetic Lcom/xiaopeng/xuiservice/applist/-$$Lambda$AbsAppListManager$PkLJCnk2tBKootG4Fj5meT6VMZQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

.field private final synthetic f$1:Landroid/os/Bundle;

.field private final synthetic f$2:Landroid/content/Intent;

.field private final synthetic f$3:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;Landroid/os/Bundle;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$AbsAppListManager$PkLJCnk2tBKootG4Fj5meT6VMZQ;->f$0:Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$AbsAppListManager$PkLJCnk2tBKootG4Fj5meT6VMZQ;->f$1:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$AbsAppListManager$PkLJCnk2tBKootG4Fj5meT6VMZQ;->f$2:Landroid/content/Intent;

    iput-object p4, p0, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$AbsAppListManager$PkLJCnk2tBKootG4Fj5meT6VMZQ;->f$3:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$AbsAppListManager$PkLJCnk2tBKootG4Fj5meT6VMZQ;->f$0:Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$AbsAppListManager$PkLJCnk2tBKootG4Fj5meT6VMZQ;->f$1:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$AbsAppListManager$PkLJCnk2tBKootG4Fj5meT6VMZQ;->f$2:Landroid/content/Intent;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$AbsAppListManager$PkLJCnk2tBKootG4Fj5meT6VMZQ;->f$3:Landroid/os/Bundle;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->lambda$extraBundleToStartIntent$0(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;Landroid/os/Bundle;Landroid/content/Intent;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method
