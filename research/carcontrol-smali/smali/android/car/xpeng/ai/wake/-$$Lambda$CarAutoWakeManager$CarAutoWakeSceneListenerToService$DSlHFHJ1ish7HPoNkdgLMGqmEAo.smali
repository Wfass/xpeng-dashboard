.class public final synthetic Landroid/car/xpeng/ai/wake/-$$Lambda$CarAutoWakeManager$CarAutoWakeSceneListenerToService$DSlHFHJ1ish7HPoNkdgLMGqmEAo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/car/xpeng/ai/wake/CarAutoWakeManager;

.field public final synthetic f$1:Landroid/car/xpeng/ai/scene/CarScene;


# direct methods
.method public synthetic constructor <init>(Landroid/car/xpeng/ai/wake/CarAutoWakeManager;Landroid/car/xpeng/ai/scene/CarScene;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/xpeng/ai/wake/-$$Lambda$CarAutoWakeManager$CarAutoWakeSceneListenerToService$DSlHFHJ1ish7HPoNkdgLMGqmEAo;->f$0:Landroid/car/xpeng/ai/wake/CarAutoWakeManager;

    iput-object p2, p0, Landroid/car/xpeng/ai/wake/-$$Lambda$CarAutoWakeManager$CarAutoWakeSceneListenerToService$DSlHFHJ1ish7HPoNkdgLMGqmEAo;->f$1:Landroid/car/xpeng/ai/scene/CarScene;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/car/xpeng/ai/wake/-$$Lambda$CarAutoWakeManager$CarAutoWakeSceneListenerToService$DSlHFHJ1ish7HPoNkdgLMGqmEAo;->f$0:Landroid/car/xpeng/ai/wake/CarAutoWakeManager;

    iget-object v1, p0, Landroid/car/xpeng/ai/wake/-$$Lambda$CarAutoWakeManager$CarAutoWakeSceneListenerToService$DSlHFHJ1ish7HPoNkdgLMGqmEAo;->f$1:Landroid/car/xpeng/ai/scene/CarScene;

    invoke-static {v0, v1}, Landroid/car/xpeng/ai/wake/CarAutoWakeManager$CarAutoWakeSceneListenerToService;->lambda$onAutoWakeSceneChanged$0(Landroid/car/xpeng/ai/wake/CarAutoWakeManager;Landroid/car/xpeng/ai/scene/CarScene;)V

    return-void
.end method
