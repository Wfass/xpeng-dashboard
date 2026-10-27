.class Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$StartStopScoReceiver;
.super Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$FlagReceiver;
.source "BluetoothTestUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartStopScoReceiver"
.end annotation


# static fields
.field private static final STATE_CONNECTED_FLAG:I = 0x1

.field private static final STATE_DISCONNECTED_FLAG:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;I)V
    .locals 0
    .param p2, "expectedFlags"    # I

    .line 325
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$StartStopScoReceiver;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;

    .line 326
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$FlagReceiver;-><init>(Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;I)V

    .line 327
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 331
    const-string v0, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    const-string v0, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 335
    .local v0, "state":I
    if-eq v0, v1, :cond_0

    .line 338
    packed-switch v0, :pswitch_data_0

    .end local v0    # "state":I
    goto :goto_0

    .line 340
    .restart local v0    # "state":I
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$StartStopScoReceiver;->setFiredFlag(I)V

    .line 341
    goto :goto_0

    .line 343
    :pswitch_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$StartStopScoReceiver;->setFiredFlag(I)V

    .end local v0    # "state":I
    goto :goto_0

    .line 336
    .restart local v0    # "state":I
    :cond_0
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

    .line 347
    .end local v0    # "state":I
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
