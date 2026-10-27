.class public final synthetic Lcom/xiaopeng/carcontrol/util/-$$Lambda$ThreadUtils$iXNRQ_8rOxQMlxB4LVpirJG7UXQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/util/-$$Lambda$ThreadUtils$iXNRQ_8rOxQMlxB4LVpirJG7UXQ;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/util/-$$Lambda$ThreadUtils$iXNRQ_8rOxQMlxB4LVpirJG7UXQ;->f$0:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->lambda$doPost$1(Ljava/lang/Runnable;)V

    return-void
.end method
