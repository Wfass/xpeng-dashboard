.class public Layn;
.super Ljava/lang/Object;
.source "NForeBluetoothUtils.java"


# direct methods
.method public static a(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x64

    if-eq p0, v0, :cond_6

    const/16 v0, 0x6e

    if-eq p0, v0, :cond_5

    const/16 v0, 0x7d

    if-eq p0, v0, :cond_4

    const/16 v0, 0x82

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8c

    if-eq p0, v0, :cond_2

    const/16 v0, 0x91

    if-eq p0, v0, :cond_1

    const/16 v0, 0x96

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    goto :goto_0

    :pswitch_0
    const-string v0, "AUTO_CONNECT_OOR_CONNECTING"

    goto :goto_0

    :pswitch_1
    const-string v0, "AUTO_CONNECT_PAIRED_CONNECTING"

    goto :goto_0

    :pswitch_2
    const-string v0, "AUTO_CONNECT_BTON_CONNECTING"

    goto :goto_0

    :pswitch_3
    const-string v0, "CONNECTING"

    goto :goto_0

    :cond_0
    const-string v0, "STREAMING"

    goto :goto_0

    :cond_1
    const-string v0, "BROWSING"

    goto :goto_0

    :cond_2
    const-string v0, "CONNECTED"

    goto :goto_0

    :cond_3
    const-string v0, "LISTENING"

    goto :goto_0

    :cond_4
    const-string v0, "DISCONNECTING"

    goto :goto_0

    :cond_5
    const-string v0, "READY"

    goto :goto_0

    :cond_6
    const-string v0, "NOT_INITIALIZED"

    .line 78
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(I)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_5

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string v0, "UNKNOWN"

    goto :goto_0

    :cond_0
    const-string v0, "REV_SEEK"

    goto :goto_0

    :cond_1
    const-string v0, "FWD_SEEK"

    goto :goto_0

    :cond_2
    const-string v0, "PAUSED"

    goto :goto_0

    :cond_3
    const-string v0, "PLAYING"

    goto :goto_0

    :cond_4
    const-string v0, "STOPPED"

    goto :goto_0

    :cond_5
    const-string v0, "ERROR"

    .line 106
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
