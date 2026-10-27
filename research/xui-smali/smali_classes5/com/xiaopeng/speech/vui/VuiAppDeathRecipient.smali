.class public Lcom/xiaopeng/speech/vui/VuiAppDeathRecipient;
.super Ljava/lang/Object;
.source "VuiAppDeathRecipient.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private binder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiAppDeathRecipient;->binder:Landroid/os/IBinder;

    .line 10
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 14
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->insertVuiProviderWhenDeath()V

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiAppDeathRecipient;->binder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiAppDeathRecipient;->binder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiAppDeathRecipient;->binder:Landroid/os/IBinder;

    .line 19
    :cond_0
    return-void
.end method
