.class Landroid/os/PowerManager$3;
.super Landroid/os/IThermalStatusListener$Stub;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/PowerManager;->addThermalStatusListener(Ljava/util/concurrent/Executor;Landroid/os/PowerManager$OnThermalStatusChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/PowerManager;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$listener:Landroid/os/PowerManager$OnThermalStatusChangedListener;


# direct methods
.method constructor <init>(Landroid/os/PowerManager;Ljava/util/concurrent/Executor;Landroid/os/PowerManager$OnThermalStatusChangedListener;)V
    .locals 0

    .line 2740
    iput-object p1, p0, Landroid/os/PowerManager$3;->this$0:Landroid/os/PowerManager;

    iput-object p2, p0, Landroid/os/PowerManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/os/PowerManager$3;->val$listener:Landroid/os/PowerManager$OnThermalStatusChangedListener;

    invoke-direct {p0}, Landroid/os/IThermalStatusListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onStatusChange$0(Landroid/os/PowerManager$OnThermalStatusChangedListener;I)V
    .locals 0

    .line 2746
    invoke-interface {p0, p1}, Landroid/os/PowerManager$OnThermalStatusChangedListener;->onThermalStatusChanged(I)V

    return-void
.end method


# virtual methods
.method public onStatusChange(I)V
    .locals 5

    .line 2743
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2745
    :try_start_0
    iget-object v2, p0, Landroid/os/PowerManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/os/PowerManager$3;->val$listener:Landroid/os/PowerManager$OnThermalStatusChangedListener;

    new-instance v4, Landroid/os/-$$Lambda$PowerManager$3$8snH8Z_XjRb6l2wzhedRFyMgjXo;

    invoke-direct {v4, v3, p1}, Landroid/os/-$$Lambda$PowerManager$3$8snH8Z_XjRb6l2wzhedRFyMgjXo;-><init>(Landroid/os/PowerManager$OnThermalStatusChangedListener;I)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2749
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2750
    throw p1
.end method
