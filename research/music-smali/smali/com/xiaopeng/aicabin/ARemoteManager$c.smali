.class public Lcom/xiaopeng/aicabin/ARemoteManager$c;
.super Ljava/lang/Object;
.source "ARemoteManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aicabin/ARemoteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Landroid/os/IBinder;

.field public b:Lcom/xiaopeng/aicabin/IAiCabinService;

.field public c:Ljava/lang/String;

.field public final synthetic d:Lcom/xiaopeng/aicabin/ARemoteManager;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/aicabin/ARemoteManager;Ljava/lang/String;Landroid/os/IBinder;Lcom/xiaopeng/aicabin/IAiCabinService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaopeng/aicabin/ARemoteManager$c;->d:Lcom/xiaopeng/aicabin/ARemoteManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/xiaopeng/aicabin/ARemoteManager$c;->c:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/xiaopeng/aicabin/ARemoteManager$c;->a:Landroid/os/IBinder;

    .line 4
    iput-object p4, p0, Lcom/xiaopeng/aicabin/ARemoteManager$c;->b:Lcom/xiaopeng/aicabin/IAiCabinService;

    const/4 p1, 0x0

    .line 6
    :try_start_0
    invoke-interface {p3, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-static {}, Lcom/xiaopeng/aicabin/ARemoteManager;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "AICabinServiceRecord: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/xiaopeng/aicabin/ARemoteManager$c;->c:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " e:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/xiaopeng/aicabin/ARemoteManager;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xiaopeng/aicabin/ARemoteManager;->access$200(Lcom/xiaopeng/aicabin/ARemoteManager;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/xiaopeng/aicabin/ARemoteManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AICabinServiceRecord binderDied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/aicabin/ARemoteManager$c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/xiaopeng/aicabin/ARemoteManager$c;->d:Lcom/xiaopeng/aicabin/ARemoteManager;

    invoke-static {v0}, Lcom/xiaopeng/aicabin/ARemoteManager;->access$100(Lcom/xiaopeng/aicabin/ARemoteManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/aicabin/ARemoteManager$c;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/xiaopeng/aicabin/ARemoteManager$c;->d:Lcom/xiaopeng/aicabin/ARemoteManager;

    iget-object v1, v0, Lcom/xiaopeng/aicabin/ARemoteManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v2, Lcom/xiaopeng/aicabin/-$$Lambda$SnjTcFMFOe5Z7Z4uecNr9TvjhWw;

    invoke-direct {v2, v0}, Lcom/xiaopeng/aicabin/-$$Lambda$SnjTcFMFOe5Z7Z4uecNr9TvjhWw;-><init>(Lcom/xiaopeng/aicabin/ARemoteManager;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
