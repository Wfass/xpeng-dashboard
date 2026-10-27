.class Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$1;
.super Ljava/lang/Object;
.source "BluetoothTestUtils.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;


# direct methods
.method constructor <init>(Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;

    .line 351
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$1;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 354
    monitor-enter p0

    .line 355
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 366
    :pswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$1;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    invoke-static {v0, v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->access$302(Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    goto :goto_0

    .line 363
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$1;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothHidHost;

    invoke-static {v0, v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->access$202(Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;Landroid/bluetooth/BluetoothHidHost;)Landroid/bluetooth/BluetoothHidHost;

    .line 364
    goto :goto_0

    .line 357
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$1;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0, v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->access$002(Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 358
    goto :goto_0

    .line 360
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$1;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0, v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->access$102(Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 361
    nop

    .line 369
    :goto_0
    monitor-exit p0

    .line 370
    return-void

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .line 374
    monitor-enter p0

    .line 375
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 386
    :pswitch_1
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$1;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;

    invoke-static {v1, v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->access$302(Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    goto :goto_0

    .line 383
    :pswitch_2
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$1;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;

    invoke-static {v1, v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->access$202(Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;Landroid/bluetooth/BluetoothHidHost;)Landroid/bluetooth/BluetoothHidHost;

    .line 384
    goto :goto_0

    .line 377
    :pswitch_3
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$1;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;

    invoke-static {v1, v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->access$002(Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 378
    goto :goto_0

    .line 380
    :pswitch_4
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$1;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;

    invoke-static {v1, v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->access$102(Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 381
    nop

    .line 389
    :goto_0
    monitor-exit p0

    .line 390
    return-void

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
