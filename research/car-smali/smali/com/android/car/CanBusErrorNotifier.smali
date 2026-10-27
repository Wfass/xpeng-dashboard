.class final Lcom/android/car/CanBusErrorNotifier;
.super Ljava/lang/Object;
.source "CanBusErrorNotifier.java"


# static fields
.field private static final IS_RELEASE_BUILD:Z

.field private static final NOTIFICATION_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CAR.CAN_BUS.NOTIFIER"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mReportedObjects:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/car/CanBusErrorNotifier;->IS_RELEASE_BUILD:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/car/CanBusErrorNotifier;->mReportedObjects:Ljava/util/Set;

    .line 48
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/car/CanBusErrorNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    .line 50
    iput-object p1, p0, Lcom/android/car/CanBusErrorNotifier;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method private hideNotification()V
    .locals 3

    .line 101
    sget-boolean v0, Lcom/android/car/CanBusErrorNotifier;->IS_RELEASE_BUILD:Z

    if-eqz v0, :cond_0

    .line 103
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/car/CanBusErrorNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "CAR.CAN_BUS.NOTIFIER"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 106
    return-void
.end method

.method private setCanBusFailure(ZLjava/lang/Object;)V
    .locals 4
    .param p1, "failed"    # Z
    .param p2, "sender"    # Ljava/lang/Object;

    .line 63
    monitor-enter p0

    .line 64
    if-eqz p1, :cond_0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CanBusErrorNotifier;->mReportedObjects:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/car/CanBusErrorNotifier;->mReportedObjects:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 67
    .local v0, "changed":Z
    :goto_0
    if-nez v0, :cond_1

    .line 68
    monitor-exit p0

    return-void

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/android/car/CanBusErrorNotifier;->mReportedObjects:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .end local v0    # "changed":Z
    move v0, v1

    .line 72
    .local v0, "shouldShowNotification":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    const-string v1, "CAR.CAN_BUS.NOTIFIER"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    const-string v1, "CAR.CAN_BUS.NOTIFIER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changing CAN bus failure state to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_2
    if-eqz v0, :cond_3

    .line 79
    invoke-direct {p0}, Lcom/android/car/CanBusErrorNotifier;->showNotification()V

    goto :goto_1

    .line 81
    :cond_3
    invoke-direct {p0}, Lcom/android/car/CanBusErrorNotifier;->hideNotification()V

    .line 83
    :goto_1
    return-void

    .line 72
    .end local v0    # "shouldShowNotification":Z
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private showNotification()V
    .locals 4

    .line 86
    sget-boolean v0, Lcom/android/car/CanBusErrorNotifier;->IS_RELEASE_BUILD:Z

    if-eqz v0, :cond_0

    .line 88
    return-void

    .line 90
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/car/CanBusErrorNotifier;->mContext:Landroid/content/Context;

    const-string v2, "miscellaneous"

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/car/CanBusErrorNotifier;->mContext:Landroid/content/Context;

    const v2, 0x7f060032

    .line 92
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/CanBusErrorNotifier;->mContext:Landroid/content/Context;

    const v2, 0x7f060033

    .line 93
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/high16 v1, 0x7f020000

    .line 94
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 95
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 97
    .local v0, "notification":Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/car/CanBusErrorNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v3, "CAR.CAN_BUS.NOTIFIER"

    invoke-virtual {v2, v3, v1, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 98
    return-void
.end method


# virtual methods
.method public removeFailureReport(Ljava/lang/Object;)V
    .locals 1
    .param p1, "sender"    # Ljava/lang/Object;

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/car/CanBusErrorNotifier;->setCanBusFailure(ZLjava/lang/Object;)V

    .line 55
    return-void
.end method

.method public reportFailure(Ljava/lang/Object;)V
    .locals 1
    .param p1, "sender"    # Ljava/lang/Object;

    .line 58
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/car/CanBusErrorNotifier;->setCanBusFailure(ZLjava/lang/Object;)V

    .line 59
    return-void
.end method
