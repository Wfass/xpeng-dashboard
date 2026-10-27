.class Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager$Holder;
.super Ljava/lang/Object;
.source "XpBluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static instance:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 62
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;-><init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager$Holder;->instance:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
