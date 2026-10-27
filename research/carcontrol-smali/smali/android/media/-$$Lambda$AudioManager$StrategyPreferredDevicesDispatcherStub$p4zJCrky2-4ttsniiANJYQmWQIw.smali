.class public final synthetic Landroid/media/-$$Lambda$AudioManager$StrategyPreferredDevicesDispatcherStub$p4zJCrky2-4ttsniiANJYQmWQIw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/AudioManager$PrefDevListenerInfo;

.field public final synthetic f$1:Landroid/media/audiopolicy/AudioProductStrategy;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/media/AudioManager$PrefDevListenerInfo;Landroid/media/audiopolicy/AudioProductStrategy;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$AudioManager$StrategyPreferredDevicesDispatcherStub$p4zJCrky2-4ttsniiANJYQmWQIw;->f$0:Landroid/media/AudioManager$PrefDevListenerInfo;

    iput-object p2, p0, Landroid/media/-$$Lambda$AudioManager$StrategyPreferredDevicesDispatcherStub$p4zJCrky2-4ttsniiANJYQmWQIw;->f$1:Landroid/media/audiopolicy/AudioProductStrategy;

    iput-object p3, p0, Landroid/media/-$$Lambda$AudioManager$StrategyPreferredDevicesDispatcherStub$p4zJCrky2-4ttsniiANJYQmWQIw;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/media/-$$Lambda$AudioManager$StrategyPreferredDevicesDispatcherStub$p4zJCrky2-4ttsniiANJYQmWQIw;->f$0:Landroid/media/AudioManager$PrefDevListenerInfo;

    iget-object v1, p0, Landroid/media/-$$Lambda$AudioManager$StrategyPreferredDevicesDispatcherStub$p4zJCrky2-4ttsniiANJYQmWQIw;->f$1:Landroid/media/audiopolicy/AudioProductStrategy;

    iget-object v2, p0, Landroid/media/-$$Lambda$AudioManager$StrategyPreferredDevicesDispatcherStub$p4zJCrky2-4ttsniiANJYQmWQIw;->f$2:Ljava/util/List;

    invoke-static {v0, v1, v2}, Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;->lambda$dispatchPrefDevicesChanged$0(Landroid/media/AudioManager$PrefDevListenerInfo;Landroid/media/audiopolicy/AudioProductStrategy;Ljava/util/List;)V

    return-void
.end method
