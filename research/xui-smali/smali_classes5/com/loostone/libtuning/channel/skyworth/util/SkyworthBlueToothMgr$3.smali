.class public Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$3;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;


# direct methods
.method public constructor <init>(Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$3;->this$0:Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    sget-object p2, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive, action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SkyworthBlueToothMgr"

    invoke-virtual {p2, v1, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "SkyworthBlueToothMgr"

    const-string v0, "onBlueToothDeviceChanged"

    .line 4
    invoke-virtual {p2, p1, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$3;->this$0:Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;

    invoke-static {p1}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->access$200(Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;)Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$IBTDeviceConnectedChangedListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$3;->this$0:Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;

    invoke-static {p1}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->access$200(Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;)Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$IBTDeviceConnectedChangedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$IBTDeviceConnectedChangedListener;->onDeviceChanged()V

    :cond_1
    return-void
.end method
