.class Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile$1;
.super Ljava/lang/Object;
.source "HfpClientProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;->access$002(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;->access$102(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;Z)Z

    .line 30
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;->access$102(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;Z)Z

    .line 35
    return-void
.end method
