.class Layi$4;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/xiaopeng/lib_xpbt/bluetooth/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layi;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Layi;


# direct methods
.method constructor <init>(Layi;)V
    .locals 0

    .line 230
    iput-object p1, p0, Layi$4;->a:Layi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 233
    invoke-super {p0}, Lcom/xiaopeng/lib_xpbt/bluetooth/a;->a()V

    const-string v0, "Bluetooth_Manager"

    const-string v1, "BluetoothEventManager initBlueTootSDK ready: "

    .line 234
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Layi$4;->a:Layi;

    invoke-static {v0}, Layi;->c(Layi;)V

    return-void
.end method

.method public b(Lapj;III)V
    .locals 2

    .line 240
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/lib_xpbt/bluetooth/a;->b(Lapj;III)V

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothEventManager initBlueTootSDK device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ,prevState : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", newState: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", moduleType: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Bluetooth_Manager"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 243
    :goto_0
    iget-object p2, p0, Layi$4;->a:Layi;

    invoke-static {p2, p1}, Layi;->a(Layi;Z)V

    return-void
.end method
