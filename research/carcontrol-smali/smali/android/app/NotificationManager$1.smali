.class Landroid/app/NotificationManager$1;
.super Landroid/app/INotificationStatusCallBack$Stub;
.source "NotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/NotificationManager;


# direct methods
.method constructor <init>(Landroid/app/NotificationManager;)V
    .locals 0

    .line 846
    iput-object p1, p0, Landroid/app/NotificationManager$1;->this$0:Landroid/app/NotificationManager;

    invoke-direct {p0}, Landroid/app/INotificationStatusCallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetNotificationLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x1

    return v0
.end method

.method public onNtfCardStatusCallBack(Ljava/lang/String;JI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 859
    invoke-static {}, Landroid/app/NotificationManager;->access$200()Landroid/app/NotificationManager$INtfCardStatusCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 860
    invoke-static {}, Landroid/app/NotificationManager;->access$200()Landroid/app/NotificationManager$INtfCardStatusCallBack;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/NotificationManager$INtfCardStatusCallBack;->onReceiveNtfCardStatus(Ljava/lang/String;JI)V

    .line 862
    :cond_0
    invoke-static {}, Landroid/app/NotificationManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNtfCardStatusCallBack string notificationArgs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " notificationID:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " status:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReceiveNotificationStatus(Ljava/lang/String;JI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 850
    invoke-static {}, Landroid/app/NotificationManager;->access$000()Landroid/app/NotificationManager$INotificationCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 851
    invoke-static {}, Landroid/app/NotificationManager;->access$000()Landroid/app/NotificationManager$INotificationCallBack;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/NotificationManager$INotificationCallBack;->onReceiveNotificationCallback(Ljava/lang/String;JI)V

    .line 853
    :cond_0
    invoke-static {}, Landroid/app/NotificationManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveNotificationStatus string senderPkgname:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " notificationID:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " status:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSetNotificationLevel(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
