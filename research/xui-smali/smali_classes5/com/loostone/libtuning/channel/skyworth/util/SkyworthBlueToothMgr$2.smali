.class public Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;
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
    iput-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$2;->this$0:Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    .line 1
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v0, "SkyworthBlueToothMgr"

    const-string v1, "ble onServiceConnected Headset"

    invoke-virtual {p1, v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$2;->this$0:Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {p1, p2}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->access$102(Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    .line 1
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v0, "SkyworthBlueToothMgr"

    const-string v1, "ble onServiceDisconnected Headset"

    invoke-virtual {p1, v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$2;->this$0:Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->access$102(Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    return-void
.end method
