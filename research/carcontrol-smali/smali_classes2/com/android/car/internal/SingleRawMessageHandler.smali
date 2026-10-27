.class public abstract Lcom/android/car/internal/SingleRawMessageHandler;
.super Ljava/lang/Object;
.source "SingleRawMessageHandler.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<EventType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Handler$Callback;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SingleRawMessageHandler"


# instance fields
.field private final mHandledMessageWhat:I

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;I)V
    .locals 0

    .line 42
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/car/internal/SingleRawMessageHandler;-><init>(Landroid/os/Looper;I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;I)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p2, p0, Lcom/android/car/internal/SingleRawMessageHandler;->mHandledMessageWhat:I

    .line 38
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/android/car/internal/SingleRawMessageHandler;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected abstract handleEvent(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEventType;)V"
        }
    .end annotation
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/android/car/internal/SingleRawMessageHandler;->mHandledMessageWhat:I

    if-ne v0, v1, :cond_1

    .line 50
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 51
    sget-boolean v0, Landroid/car/XpDebugLog;->CAR_DEBUG:Z

    const-string v1, "SingleRawMessageHandler"

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "++handleMessage event: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/car/internal/SingleRawMessageHandler;->handleEvent(Ljava/lang/Object;)V

    .line 56
    sget-boolean v0, Landroid/car/XpDebugLog;->CAR_DEBUG:Z

    if-eqz v0, :cond_1

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--handleMessage event: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public removeCallbacksAndMessages(Ljava/lang/Object;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/car/internal/SingleRawMessageHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public sendEvents(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEventType;)V"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/android/car/internal/SingleRawMessageHandler;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/car/internal/SingleRawMessageHandler;->mHandledMessageWhat:I

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
