.class Lcom/xiaopeng/commonfunc/b/g/a$1;
.super Ljava/lang/Object;
.source "BluetoothTest.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/commonfunc/b/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oV:Lcom/xiaopeng/commonfunc/b/g/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/commonfunc/b/g/a;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a$1;->oV:Lcom/xiaopeng/commonfunc/b/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3

    .line 153
    const-string v0, "BluetoothTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected profile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    monitor-enter p0

    .line 155
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 178
    :pswitch_1
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a$1;->oV:Lcom/xiaopeng/commonfunc/b/g/a;

    check-cast p2, Landroid/bluetooth/BluetoothHearingAid;

    invoke-static {p1, p2}, Lcom/xiaopeng/commonfunc/b/g/a;->a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothHearingAid;)Landroid/bluetooth/BluetoothHearingAid;

    .line 179
    goto :goto_0

    .line 190
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a$1;->oV:Lcom/xiaopeng/commonfunc/b/g/a;

    check-cast p2, Landroid/bluetooth/BluetoothHidDevice;

    invoke-static {p1, p2}, Lcom/xiaopeng/commonfunc/b/g/a;->a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothHidDevice;)Landroid/bluetooth/BluetoothHidDevice;

    .line 191
    goto :goto_0

    .line 181
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a$1;->oV:Lcom/xiaopeng/commonfunc/b/g/a;

    check-cast p2, Landroid/bluetooth/BluetoothMapClient;

    invoke-static {p1, p2}, Lcom/xiaopeng/commonfunc/b/g/a;->a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothMapClient;)Landroid/bluetooth/BluetoothMapClient;

    .line 182
    goto :goto_0

    .line 157
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a$1;->oV:Lcom/xiaopeng/commonfunc/b/g/a;

    check-cast p2, Landroid/bluetooth/BluetoothPbapClient;

    invoke-static {p1, p2}, Lcom/xiaopeng/commonfunc/b/g/a;->a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/BluetoothPbapClient;

    .line 158
    goto :goto_0

    .line 160
    :pswitch_5
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a$1;->oV:Lcom/xiaopeng/commonfunc/b/g/a;

    check-cast p2, Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-static {p1, p2}, Lcom/xiaopeng/commonfunc/b/g/a;->a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;

    .line 161
    goto :goto_0

    .line 193
    :pswitch_6
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a$1;->oV:Lcom/xiaopeng/commonfunc/b/g/a;

    check-cast p2, Landroid/bluetooth/BluetoothAvrcpController;

    invoke-static {p1, p2}, Lcom/xiaopeng/commonfunc/b/g/a;->a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothAvrcpController;)Landroid/bluetooth/BluetoothAvrcpController;

    .line 194
    goto :goto_0

    .line 163
    :pswitch_7
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a$1;->oV:Lcom/xiaopeng/commonfunc/b/g/a;

    check-cast p2, Landroid/bluetooth/BluetoothA2dpSink;

    invoke-static {p1, p2}, Lcom/xiaopeng/commonfunc/b/g/a;->a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothA2dpSink;

    .line 164
    goto :goto_0

    .line 175
    :pswitch_8
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a$1;->oV:Lcom/xiaopeng/commonfunc/b/g/a;

    check-cast p2, Landroid/bluetooth/BluetoothSap;

    invoke-static {p1, p2}, Lcom/xiaopeng/commonfunc/b/g/a;->a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothSap;

    .line 176
    goto :goto_0

    .line 172
    :pswitch_9
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a$1;->oV:Lcom/xiaopeng/commonfunc/b/g/a;

    check-cast p2, Landroid/bluetooth/BluetoothPbap;

    invoke-static {p1, p2}, Lcom/xiaopeng/commonfunc/b/g/a;->a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap;

    .line 173
    goto :goto_0

    .line 187
    :pswitch_a
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a$1;->oV:Lcom/xiaopeng/commonfunc/b/g/a;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    invoke-static {p1, p2}, Lcom/xiaopeng/commonfunc/b/g/a;->a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 188
    goto :goto_0

    .line 184
    :pswitch_b
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a$1;->oV:Lcom/xiaopeng/commonfunc/b/g/a;

    check-cast p2, Landroid/bluetooth/BluetoothHidHost;

    invoke-static {p1, p2}, Lcom/xiaopeng/commonfunc/b/g/a;->a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothHidHost;)Landroid/bluetooth/BluetoothHidHost;

    .line 185
    goto :goto_0

    .line 169
    :pswitch_c
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a$1;->oV:Lcom/xiaopeng/commonfunc/b/g/a;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {p1, p2}, Lcom/xiaopeng/commonfunc/b/g/a;->a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 170
    goto :goto_0

    .line 166
    :pswitch_d
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a$1;->oV:Lcom/xiaopeng/commonfunc/b/g/a;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {p1, p2}, Lcom/xiaopeng/commonfunc/b/g/a;->a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 167
    nop

    .line 198
    :goto_0
    monitor-exit p0

    .line 199
    return-void

    .line 198
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onServiceDisconnected(I)V
    .locals 3

    .line 203
    const-string v0, "BluetoothTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected profile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    monitor-enter p0

    .line 205
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 228
    :pswitch_1
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a$1;->oV:Lcom/xiaopeng/commonfunc/b/g/a;

    invoke-static {p1, v0}, Lcom/xiaopeng/commonfunc/b/g/a;->a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothHearingAid;)Landroid/bluetooth/BluetoothHearingAid;

    .line 229
    goto :goto_0

    .line 240
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a$1;->oV:Lcom/xiaopeng/commonfunc/b/g/a;

    invoke-static {p1, v0}, Lcom/xiaopeng/commonfunc/b/g/a;->a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothHidDevice;)Landroid/bluetooth/BluetoothHidDevice;

    .line 241
    goto :goto_0

    .line 231
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a$1;->oV:Lcom/xiaopeng/commonfunc/b/g/a;

    invoke-static {p1, v0}, Lcom/xiaopeng/commonfunc/b/g/a;->a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothMapClient;)Landroid/bluetooth/BluetoothMapClient;

    .line 232
    goto :goto_0

    .line 207
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a$1;->oV:Lcom/xiaopeng/commonfunc/b/g/a;

    invoke-static {p1, v0}, Lcom/xiaopeng/commonfunc/b/g/a;->a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/BluetoothPbapClient;

    .line 208
    goto :goto_0

    .line 210
    :pswitch_5
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a$1;->oV:Lcom/xiaopeng/commonfunc/b/g/a;

    invoke-static {p1, v0}, Lcom/xiaopeng/commonfunc/b/g/a;->a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;

    .line 211
    goto :goto_0

    .line 243
    :pswitch_6
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a$1;->oV:Lcom/xiaopeng/commonfunc/b/g/a;

    invoke-static {p1, v0}, Lcom/xiaopeng/commonfunc/b/g/a;->a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothAvrcpController;)Landroid/bluetooth/BluetoothAvrcpController;

    .line 244
    goto :goto_0

    .line 213
    :pswitch_7
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a$1;->oV:Lcom/xiaopeng/commonfunc/b/g/a;

    invoke-static {p1, v0}, Lcom/xiaopeng/commonfunc/b/g/a;->a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothA2dpSink;

    .line 214
    goto :goto_0

    .line 225
    :pswitch_8
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a$1;->oV:Lcom/xiaopeng/commonfunc/b/g/a;

    invoke-static {p1, v0}, Lcom/xiaopeng/commonfunc/b/g/a;->a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothSap;

    .line 226
    goto :goto_0

    .line 222
    :pswitch_9
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a$1;->oV:Lcom/xiaopeng/commonfunc/b/g/a;

    invoke-static {p1, v0}, Lcom/xiaopeng/commonfunc/b/g/a;->a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap;

    .line 223
    goto :goto_0

    .line 237
    :pswitch_a
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a$1;->oV:Lcom/xiaopeng/commonfunc/b/g/a;

    invoke-static {p1, v0}, Lcom/xiaopeng/commonfunc/b/g/a;->a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 238
    goto :goto_0

    .line 234
    :pswitch_b
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a$1;->oV:Lcom/xiaopeng/commonfunc/b/g/a;

    invoke-static {p1, v0}, Lcom/xiaopeng/commonfunc/b/g/a;->a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothHidHost;)Landroid/bluetooth/BluetoothHidHost;

    .line 235
    goto :goto_0

    .line 219
    :pswitch_c
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a$1;->oV:Lcom/xiaopeng/commonfunc/b/g/a;

    invoke-static {p1, v0}, Lcom/xiaopeng/commonfunc/b/g/a;->a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 220
    goto :goto_0

    .line 216
    :pswitch_d
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a$1;->oV:Lcom/xiaopeng/commonfunc/b/g/a;

    invoke-static {p1, v0}, Lcom/xiaopeng/commonfunc/b/g/a;->a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 217
    nop

    .line 248
    :goto_0
    monitor-exit p0

    .line 249
    return-void

    .line 248
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
