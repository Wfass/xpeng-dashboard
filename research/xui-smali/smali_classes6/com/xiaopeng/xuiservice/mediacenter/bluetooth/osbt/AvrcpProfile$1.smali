.class Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile$1;
.super Ljava/lang/Object;
.source "AvrcpProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile;

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothAvrcpController;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile;->access$002(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile;Landroid/bluetooth/BluetoothAvrcpController;)Landroid/bluetooth/BluetoothAvrcpController;

    .line 51
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 0
    .param p1, "profile"    # I

    .line 56
    return-void
.end method
