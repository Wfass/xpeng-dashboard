.class Lcom/xiaopeng/libbluetooth/f$1;
.super Lcom/xiaopeng/b/b/b$a;
.source "GeneralControlBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libbluetooth/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic XE:Lcom/xiaopeng/libbluetooth/f;


# direct methods
.method constructor <init>(Lcom/xiaopeng/libbluetooth/f;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/libbluetooth/f$1;->XE:Lcom/xiaopeng/libbluetooth/f;

    invoke-direct {p0}, Lcom/xiaopeng/b/b/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 7

    .line 68
    if-nez p2, :cond_0

    return-void

    .line 69
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/f$1;->XE:Lcom/xiaopeng/libbluetooth/f;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/f;->b(Lcom/xiaopeng/libbluetooth/f;)Lcom/xiaopeng/libbluetooth/b;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 70
    :cond_1
    const/16 v0, 0x9

    if-eq p1, v0, :cond_3

    const/16 v0, 0x14

    const/4 v1, -0x1

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 83
    :pswitch_0
    const-string p1, "Address"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 84
    const-string v0, "DeviceName"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    const-string v2, "PINCode"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 86
    const-string v2, "SSP"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 87
    iget-object v2, p0, Lcom/xiaopeng/libbluetooth/f$1;->XE:Lcom/xiaopeng/libbluetooth/f;

    invoke-static {v2}, Lcom/xiaopeng/libbluetooth/f;->b(Lcom/xiaopeng/libbluetooth/f;)Lcom/xiaopeng/libbluetooth/b;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1, p2}, Lcom/xiaopeng/libbluetooth/b;->a(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 88
    goto :goto_2

    .line 77
    :pswitch_1
    const-string p1, "Status"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 78
    const-string v0, "Address"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/f$1;->XE:Lcom/xiaopeng/libbluetooth/f;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/f;->b(Lcom/xiaopeng/libbluetooth/f;)Lcom/xiaopeng/libbluetooth/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/libbluetooth/b;->f(ILjava/lang/String;)V

    .line 80
    goto :goto_2

    .line 72
    :pswitch_2
    const-string p1, "Value"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 73
    iget-object p2, p0, Lcom/xiaopeng/libbluetooth/f$1;->XE:Lcom/xiaopeng/libbluetooth/f;

    invoke-static {p2}, Lcom/xiaopeng/libbluetooth/f;->b(Lcom/xiaopeng/libbluetooth/f;)Lcom/xiaopeng/libbluetooth/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaopeng/libbluetooth/b;->onBtPower(Z)V

    .line 74
    goto :goto_2

    .line 106
    :cond_2
    const-string p1, "Address"

    const-string v0, ""

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 107
    const-string v0, "Value"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/f$1;->XE:Lcom/xiaopeng/libbluetooth/f;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/f;->b(Lcom/xiaopeng/libbluetooth/f;)Lcom/xiaopeng/libbluetooth/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/libbluetooth/b;->r(Ljava/lang/String;I)V

    .line 109
    goto :goto_2

    .line 91
    :cond_3
    const-string p1, "Value"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 93
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 94
    nop

    .line 98
    :goto_0
    move v3, v0

    goto :goto_1

    .line 96
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 98
    :goto_1
    const-string p1, "Address"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    const-string p1, "Linklost"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 100
    const-string p1, "Profile"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 101
    const-string p1, "Index"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 102
    iget-object p1, p0, Lcom/xiaopeng/libbluetooth/f$1;->XE:Lcom/xiaopeng/libbluetooth/f;

    invoke-static {p1}, Lcom/xiaopeng/libbluetooth/f;->b(Lcom/xiaopeng/libbluetooth/f;)Lcom/xiaopeng/libbluetooth/b;

    move-result-object v1

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/libbluetooth/b;->a(Ljava/lang/String;ZIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    nop

    .line 116
    :goto_2
    goto :goto_3

    .line 114
    :catch_0
    move-exception p1

    .line 115
    iget-object p2, p0, Lcom/xiaopeng/libbluetooth/f$1;->XE:Lcom/xiaopeng/libbluetooth/f;

    invoke-static {p2, p1}, Lcom/xiaopeng/libbluetooth/f;->a(Lcom/xiaopeng/libbluetooth/f;Ljava/lang/Exception;)V

    .line 117
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(I[BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/f$1;->XE:Lcom/xiaopeng/libbluetooth/f;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/f;->b(Lcom/xiaopeng/libbluetooth/f;)Lcom/xiaopeng/libbluetooth/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/f$1;->XE:Lcom/xiaopeng/libbluetooth/f;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/f;->b(Lcom/xiaopeng/libbluetooth/f;)Lcom/xiaopeng/libbluetooth/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/libbluetooth/b;->a(I[BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    goto :goto_0

    .line 140
    :catch_0
    move-exception p1

    .line 141
    iget-object p2, p0, Lcom/xiaopeng/libbluetooth/f$1;->XE:Lcom/xiaopeng/libbluetooth/f;

    invoke-static {p2, p1}, Lcom/xiaopeng/libbluetooth/f;->a(Lcom/xiaopeng/libbluetooth/f;Ljava/lang/Exception;)V

    .line 143
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 7

    .line 122
    if-eqz p5, :cond_0

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/f$1;->XE:Lcom/xiaopeng/libbluetooth/f;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/f;->c(Lcom/xiaopeng/libbluetooth/f;)Lcom/xiaopeng/libbluetooth/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/f$1;->XE:Lcom/xiaopeng/libbluetooth/f;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/f;->c(Lcom/xiaopeng/libbluetooth/f;)Lcom/xiaopeng/libbluetooth/f$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/libbluetooth/f$a;->pz()V

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/f$1;->XE:Lcom/xiaopeng/libbluetooth/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/libbluetooth/f;->a(Lcom/xiaopeng/libbluetooth/f;Lcom/xiaopeng/libbluetooth/f$a;)Lcom/xiaopeng/libbluetooth/f$a;

    goto :goto_0

    .line 130
    :catch_0
    move-exception p1

    goto :goto_1

    .line 128
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/f$1;->XE:Lcom/xiaopeng/libbluetooth/f;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/f;->b(Lcom/xiaopeng/libbluetooth/f;)Lcom/xiaopeng/libbluetooth/b;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/f$1;->XE:Lcom/xiaopeng/libbluetooth/f;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/f;->b(Lcom/xiaopeng/libbluetooth/f;)Lcom/xiaopeng/libbluetooth/b;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/libbluetooth/b;->a(Ljava/lang/String;Ljava/lang/String;IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    goto :goto_2

    .line 130
    :goto_1
    nop

    .line 131
    iget-object p2, p0, Lcom/xiaopeng/libbluetooth/f$1;->XE:Lcom/xiaopeng/libbluetooth/f;

    invoke-static {p2, p1}, Lcom/xiaopeng/libbluetooth/f;->a(Lcom/xiaopeng/libbluetooth/f;Ljava/lang/Exception;)V

    .line 133
    :goto_2
    return-void
.end method
