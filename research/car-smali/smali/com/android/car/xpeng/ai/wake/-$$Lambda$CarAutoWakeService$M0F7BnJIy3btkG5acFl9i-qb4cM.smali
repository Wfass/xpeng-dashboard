.class public final synthetic Lcom/android/car/xpeng/ai/wake/-$$Lambda$CarAutoWakeService$M0F7BnJIy3btkG5acFl9i-qb4cM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

.field private final synthetic f$1:Landroid/car/xpeng/ai/wake/AutoWakeTask;

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;Landroid/car/xpeng/ai/wake/AutoWakeTask;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/xpeng/ai/wake/-$$Lambda$CarAutoWakeService$M0F7BnJIy3btkG5acFl9i-qb4cM;->f$0:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    iput-object p2, p0, Lcom/android/car/xpeng/ai/wake/-$$Lambda$CarAutoWakeService$M0F7BnJIy3btkG5acFl9i-qb4cM;->f$1:Landroid/car/xpeng/ai/wake/AutoWakeTask;

    iput-boolean p3, p0, Lcom/android/car/xpeng/ai/wake/-$$Lambda$CarAutoWakeService$M0F7BnJIy3btkG5acFl9i-qb4cM;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/-$$Lambda$CarAutoWakeService$M0F7BnJIy3btkG5acFl9i-qb4cM;->f$0:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    iget-object v1, p0, Lcom/android/car/xpeng/ai/wake/-$$Lambda$CarAutoWakeService$M0F7BnJIy3btkG5acFl9i-qb4cM;->f$1:Landroid/car/xpeng/ai/wake/AutoWakeTask;

    iget-boolean v2, p0, Lcom/android/car/xpeng/ai/wake/-$$Lambda$CarAutoWakeService$M0F7BnJIy3btkG5acFl9i-qb4cM;->f$2:Z

    invoke-static {v0, v1, v2}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->lambda$handleAutoWakeTaskEnter$1(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;Landroid/car/xpeng/ai/wake/AutoWakeTask;Z)V

    return-void
.end method
