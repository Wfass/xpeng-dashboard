.class Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$BluetoothReceiver;
.super Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$FlagReceiver;
.source "BluetoothTestUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothReceiver"
.end annotation


# static fields
.field private static final DISCOVERY_FINISHED_FLAG:I = 0x2

.field private static final DISCOVERY_STARTED_FLAG:I = 0x1

.field private static final SCAN_MODE_CONNECTABLE_DISCOVERABLE_FLAG:I = 0x10

.field private static final SCAN_MODE_CONNECTABLE_FLAG:I = 0x8

.field private static final SCAN_MODE_NONE_FLAG:I = 0x4

.field private static final STATE_OFF_FLAG:I = 0x20

.field private static final STATE_ON_FLAG:I = 0x80

.field private static final STATE_TURNING_OFF_FLAG:I = 0x100

.field private static final STATE_TURNING_ON_FLAG:I = 0x40


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;I)V
    .locals 0
    .param p2, "expectedFlags"    # I

    .line 121
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$BluetoothReceiver;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$FlagReceiver;-><init>(Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;I)V

    .line 123
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 127
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$BluetoothReceiver;->setFiredFlag(I)V

    goto/16 :goto_1

    .line 129
    :cond_0
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$BluetoothReceiver;->setFiredFlag(I)V

    goto/16 :goto_1

    .line 131
    :cond_1
    const-string v0, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 132
    const-string v0, "android.bluetooth.adapter.extra.SCAN_MODE"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 134
    .local v0, "mode":I
    if-eq v0, v1, :cond_2

    .line 137
    packed-switch v0, :pswitch_data_0

    .end local v0    # "mode":I
    :pswitch_0
    goto :goto_0

    .line 145
    .restart local v0    # "mode":I
    :pswitch_1
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$BluetoothReceiver;->setFiredFlag(I)V

    .end local v0    # "mode":I
    goto :goto_0

    .line 142
    .restart local v0    # "mode":I
    :pswitch_2
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$BluetoothReceiver;->setFiredFlag(I)V

    .line 143
    goto :goto_0

    .line 139
    :pswitch_3
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$BluetoothReceiver;->setFiredFlag(I)V

    .line 140
    nop

    .line 148
    .end local v0    # "mode":I
    :goto_0
    goto :goto_1

    .line 135
    .restart local v0    # "mode":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mode= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    .end local v0    # "mode":I
    :cond_3
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 149
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 151
    .local v0, "state":I
    if-eq v0, v1, :cond_4

    .line 154
    packed-switch v0, :pswitch_data_1

    .end local v0    # "state":I
    goto :goto_1

    .line 165
    .restart local v0    # "state":I
    :pswitch_4
    const/16 v1, 0x100

    invoke-virtual {p0, v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$BluetoothReceiver;->setFiredFlag(I)V

    .end local v0    # "state":I
    goto :goto_1

    .line 162
    .restart local v0    # "state":I
    :pswitch_5
    const/16 v1, 0x80

    invoke-virtual {p0, v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$BluetoothReceiver;->setFiredFlag(I)V

    .line 163
    goto :goto_1

    .line 159
    :pswitch_6
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$BluetoothReceiver;->setFiredFlag(I)V

    .line 160
    goto :goto_1

    .line 156
    :pswitch_7
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$BluetoothReceiver;->setFiredFlag(I)V

    .line 157
    goto :goto_1

    .line 152
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    .end local v0    # "state":I
    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
