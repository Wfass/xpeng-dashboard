.class Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager$2;
.super Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSourceListener;
.source "XpBluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;

    .line 206
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;

    invoke-direct {p0}, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSourceListener;-><init>()V

    return-void
.end method
