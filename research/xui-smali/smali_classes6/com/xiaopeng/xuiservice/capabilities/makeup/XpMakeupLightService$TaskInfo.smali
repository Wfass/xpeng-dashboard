.class Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;
.super Ljava/lang/Object;
.source "XpMakeupLightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskInfo"
.end annotation


# instance fields
.field public effect:Ljava/lang/String;

.field public future:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0
    .param p1, "effect"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;)V"
        }
    .end annotation

    .line 127
    .local p2, "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;->effect:Ljava/lang/String;

    .line 129
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 130
    return-void
.end method
