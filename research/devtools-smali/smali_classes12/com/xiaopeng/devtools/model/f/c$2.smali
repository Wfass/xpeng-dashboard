.class Lcom/xiaopeng/devtools/model/f/c$2;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/model/f/c;->hm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic uq:Lcom/xiaopeng/devtools/model/f/c;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/model/f/c;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/f/c$2;->uq:Lcom/xiaopeng/devtools/model/f/c;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1

    .line 143
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellLocation;)V

    .line 144
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/c$2;->uq:Lcom/xiaopeng/devtools/model/f/c;

    invoke-static {p1}, Lcom/xiaopeng/devtools/model/f/c;->f(Lcom/xiaopeng/devtools/model/f/c;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x32

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 145
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    .line 123
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 124
    const-string v0, "N/A"

    .line 125
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 134
    :pswitch_0
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f10026b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 131
    :pswitch_1
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f10026c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    goto :goto_0

    .line 127
    :pswitch_2
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f10026a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    nop

    .line 137
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/c$2;->uq:Lcom/xiaopeng/devtools/model/f/c;

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/model/f/c;->b(Lcom/xiaopeng/devtools/model/f/c;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/devtools/bean/event/signal/NetServiceEvent;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/f/c$2;->uq:Lcom/xiaopeng/devtools/model/f/c;

    invoke-static {v1}, Lcom/xiaopeng/devtools/model/f/c;->e(Lcom/xiaopeng/devtools/model/f/c;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/devtools/bean/event/signal/NetServiceEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 139
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 4

    .line 86
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 87
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/f/c$2;->uq:Lcom/xiaopeng/devtools/model/f/c;

    invoke-static {v1}, Lcom/xiaopeng/devtools/model/f/c;->a(Lcom/xiaopeng/devtools/model/f/c;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const/16 v2, 0x9

    const/16 v3, 0xd

    if-ne v1, v3, :cond_0

    .line 93
    aget-object p1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/c$2;->uq:Lcom/xiaopeng/devtools/model/f/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/devtools/model/f/c;->a(Lcom/xiaopeng/devtools/model/f/c;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/c$2;->uq:Lcom/xiaopeng/devtools/model/f/c;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/f/c;->a(Lcom/xiaopeng/devtools/model/f/c;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/c$2;->uq:Lcom/xiaopeng/devtools/model/f/c;

    .line 96
    invoke-static {v0}, Lcom/xiaopeng/devtools/model/f/c;->a(Lcom/xiaopeng/devtools/model/f/c;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/c$2;->uq:Lcom/xiaopeng/devtools/model/f/c;

    .line 97
    invoke-static {v0}, Lcom/xiaopeng/devtools/model/f/c;->a(Lcom/xiaopeng/devtools/model/f/c;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/c$2;->uq:Lcom/xiaopeng/devtools/model/f/c;

    .line 98
    invoke-static {v0}, Lcom/xiaopeng/devtools/model/f/c;->a(Lcom/xiaopeng/devtools/model/f/c;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p1

    .line 115
    const/16 v0, -0x71

    const/4 v1, 0x2

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    .line 116
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/c$2;->uq:Lcom/xiaopeng/devtools/model/f/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/model/f/c;->a(Lcom/xiaopeng/devtools/model/f/c;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 101
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/c$2;->uq:Lcom/xiaopeng/devtools/model/f/c;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/f/c;->ho()Ljava/lang/String;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/f/c$2;->uq:Lcom/xiaopeng/devtools/model/f/c;

    invoke-static {v1}, Lcom/xiaopeng/devtools/model/f/c;->c(Lcom/xiaopeng/devtools/model/f/c;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1000b4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 103
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/c$2;->uq:Lcom/xiaopeng/devtools/model/f/c;

    const-string v0, "0"

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/model/f/c;->a(Lcom/xiaopeng/devtools/model/f/c;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 104
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/f/c$2;->uq:Lcom/xiaopeng/devtools/model/f/c;

    invoke-static {v1}, Lcom/xiaopeng/devtools/model/f/c;->c(Lcom/xiaopeng/devtools/model/f/c;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1000b6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 105
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result p1

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/c$2;->uq:Lcom/xiaopeng/devtools/model/f/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/devtools/model/f/c;->a(Lcom/xiaopeng/devtools/model/f/c;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/f/c$2;->uq:Lcom/xiaopeng/devtools/model/f/c;

    invoke-static {v1}, Lcom/xiaopeng/devtools/model/f/c;->c(Lcom/xiaopeng/devtools/model/f/c;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1000b5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_5

    .line 108
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result p1

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/c$2;->uq:Lcom/xiaopeng/devtools/model/f/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/devtools/model/f/c;->a(Lcom/xiaopeng/devtools/model/f/c;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    :cond_5
    :goto_1
    nop

    .line 118
    :goto_2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/devtools/bean/event/signal/NetStrengthEvent;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/f/c$2;->uq:Lcom/xiaopeng/devtools/model/f/c;

    invoke-static {v1}, Lcom/xiaopeng/devtools/model/f/c;->d(Lcom/xiaopeng/devtools/model/f/c;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/devtools/bean/event/signal/NetStrengthEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 119
    return-void
.end method
