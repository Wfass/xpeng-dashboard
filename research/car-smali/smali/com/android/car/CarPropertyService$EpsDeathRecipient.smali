.class Lcom/android/car/CarPropertyService$EpsDeathRecipient;
.super Ljava/lang/Object;
.source "CarPropertyService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarPropertyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EpsDeathRecipient"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EpsDeathRecipient"


# instance fields
.field private mListenerBinder:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/car/CarPropertyService;


# direct methods
.method constructor <init>(Lcom/android/car/CarPropertyService;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/CarPropertyService;
    .param p2, "listenerBinder"    # Landroid/os/IBinder;

    .line 1428
    iput-object p1, p0, Lcom/android/car/CarPropertyService$EpsDeathRecipient;->this$0:Lcom/android/car/CarPropertyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1429
    iput-object p2, p0, Lcom/android/car/CarPropertyService$EpsDeathRecipient;->mListenerBinder:Landroid/os/IBinder;

    .line 1430
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 1439
    const-string v0, "EpsDeathRecipient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/CarPropertyService$EpsDeathRecipient;->mListenerBinder:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    iget-object v0, p0, Lcom/android/car/CarPropertyService$EpsDeathRecipient;->this$0:Lcom/android/car/CarPropertyService;

    iget-object v1, p0, Lcom/android/car/CarPropertyService$EpsDeathRecipient;->mListenerBinder:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/android/car/CarPropertyService;->access$1400(Lcom/android/car/CarPropertyService;Landroid/os/IBinder;)V

    .line 1442
    return-void
.end method

.method release()V
    .locals 2

    .line 1445
    iget-object v0, p0, Lcom/android/car/CarPropertyService$EpsDeathRecipient;->mListenerBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1446
    return-void
.end method
