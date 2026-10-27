.class public final synthetic Landroid/os/-$$Lambda$PowerManager$WakeLock$1kj2cLZ8Elk4oMUoKdlvTGNJ2WE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public synthetic constructor <init>(Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/-$$Lambda$PowerManager$WakeLock$1kj2cLZ8Elk4oMUoKdlvTGNJ2WE;->f$0:Landroid/os/PowerManager$WakeLock;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/os/-$$Lambda$PowerManager$WakeLock$1kj2cLZ8Elk4oMUoKdlvTGNJ2WE;->f$0:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->lambda$new$0$PowerManager$WakeLock()V

    return-void
.end method
