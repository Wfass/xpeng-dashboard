.class public final synthetic Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FridgeManager$BluetoothCallback$CIk_4xHrdYw62tJpDjMjQIJnhgA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FridgeManager$BluetoothCallback$CIk_4xHrdYw62tJpDjMjQIJnhgA;->f$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FridgeManager$BluetoothCallback$CIk_4xHrdYw62tJpDjMjQIJnhgA;->f$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->lambda$onAdapterStatusChanged$0(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;)V

    return-void
.end method
