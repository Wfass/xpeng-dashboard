.class Lcom/xiaopeng/libbluetooth/g$1;
.super Lcom/xiaopeng/b/c/b$a;
.source "PhoneControlBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libbluetooth/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic XJ:Lcom/xiaopeng/libbluetooth/g;


# direct methods
.method constructor <init>(Lcom/xiaopeng/libbluetooth/g;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/libbluetooth/g$1;->XJ:Lcom/xiaopeng/libbluetooth/g;

    invoke-direct {p0}, Lcom/xiaopeng/b/c/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    move-object v1, p0

    .line 120
    iget-object v0, v1, Lcom/xiaopeng/libbluetooth/g$1;->XJ:Lcom/xiaopeng/libbluetooth/g;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/g;->b(Lcom/xiaopeng/libbluetooth/g;)Lcom/xiaopeng/libbluetooth/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 122
    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/xiaopeng/libbluetooth/g$1;->XJ:Lcom/xiaopeng/libbluetooth/g;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/g;->b(Lcom/xiaopeng/libbluetooth/g;)Lcom/xiaopeng/libbluetooth/c;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/xiaopeng/libbluetooth/c;->a(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    iget-object v1, v1, Lcom/xiaopeng/libbluetooth/g$1;->XJ:Lcom/xiaopeng/libbluetooth/g;

    invoke-static {v1, v0}, Lcom/xiaopeng/libbluetooth/g;->a(Lcom/xiaopeng/libbluetooth/g;Ljava/lang/Exception;)V

    .line 126
    :goto_0
    return-void
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/g$1;->XJ:Lcom/xiaopeng/libbluetooth/g;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/g;->b(Lcom/xiaopeng/libbluetooth/g;)Lcom/xiaopeng/libbluetooth/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 70
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 88
    :pswitch_0
    :try_start_0
    const-string p1, "indKey"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 89
    const-string v0, "indValue"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/g$1;->XJ:Lcom/xiaopeng/libbluetooth/g;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/g;->b(Lcom/xiaopeng/libbluetooth/g;)Lcom/xiaopeng/libbluetooth/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/libbluetooth/c;->v(II)V

    goto :goto_0

    .line 82
    :pswitch_1
    const-string p1, "text"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 83
    const-string v0, "date"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    const-string v1, "number"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 85
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/g$1;->XJ:Lcom/xiaopeng/libbluetooth/g;

    invoke-static {v1}, Lcom/xiaopeng/libbluetooth/g;->b(Lcom/xiaopeng/libbluetooth/g;)Lcom/xiaopeng/libbluetooth/c;

    move-result-object v1

    invoke-virtual {v1, p2, v0, p1}, Lcom/xiaopeng/libbluetooth/c;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    goto :goto_0

    .line 78
    :pswitch_2
    const-string p1, "Value"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 79
    iget-object p2, p0, Lcom/xiaopeng/libbluetooth/g$1;->XJ:Lcom/xiaopeng/libbluetooth/g;

    invoke-static {p2}, Lcom/xiaopeng/libbluetooth/g;->b(Lcom/xiaopeng/libbluetooth/g;)Lcom/xiaopeng/libbluetooth/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaopeng/libbluetooth/c;->dS(I)V

    .line 80
    goto :goto_0

    .line 72
    :pswitch_3
    const-string p1, "CallerNumber"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 73
    const-string v0, "CallerName"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    const-string v1, "Value"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 75
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/g$1;->XJ:Lcom/xiaopeng/libbluetooth/g;

    invoke-static {v1}, Lcom/xiaopeng/libbluetooth/g;->b(Lcom/xiaopeng/libbluetooth/g;)Lcom/xiaopeng/libbluetooth/c;

    move-result-object v1

    invoke-virtual {v1, p2, p1, v0}, Lcom/xiaopeng/libbluetooth/c;->c(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 93
    :catch_0
    move-exception p1

    .line 94
    iget-object p2, p0, Lcom/xiaopeng/libbluetooth/g$1;->XJ:Lcom/xiaopeng/libbluetooth/g;

    invoke-static {p2, p1}, Lcom/xiaopeng/libbluetooth/g;->a(Lcom/xiaopeng/libbluetooth/g;Ljava/lang/Exception;)V

    goto :goto_1

    .line 95
    :goto_0
    nop

    .line 96
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    move-object v1, p0

    .line 110
    iget-object v0, v1, Lcom/xiaopeng/libbluetooth/g$1;->XJ:Lcom/xiaopeng/libbluetooth/g;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/g;->b(Lcom/xiaopeng/libbluetooth/g;)Lcom/xiaopeng/libbluetooth/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 112
    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/xiaopeng/libbluetooth/g$1;->XJ:Lcom/xiaopeng/libbluetooth/g;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/g;->b(Lcom/xiaopeng/libbluetooth/g;)Lcom/xiaopeng/libbluetooth/c;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lcom/xiaopeng/libbluetooth/c;->b(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    iget-object v1, v1, Lcom/xiaopeng/libbluetooth/g$1;->XJ:Lcom/xiaopeng/libbluetooth/g;

    invoke-static {v1, v0}, Lcom/xiaopeng/libbluetooth/g;->a(Lcom/xiaopeng/libbluetooth/g;Ljava/lang/Exception;)V

    .line 116
    :goto_0
    return-void
.end method

.method public c(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    move-object v1, p0

    .line 100
    iget-object v0, v1, Lcom/xiaopeng/libbluetooth/g$1;->XJ:Lcom/xiaopeng/libbluetooth/g;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/g;->b(Lcom/xiaopeng/libbluetooth/g;)Lcom/xiaopeng/libbluetooth/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/xiaopeng/libbluetooth/g$1;->XJ:Lcom/xiaopeng/libbluetooth/g;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/g;->b(Lcom/xiaopeng/libbluetooth/g;)Lcom/xiaopeng/libbluetooth/c;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lcom/xiaopeng/libbluetooth/c;->a(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    iget-object v1, v1, Lcom/xiaopeng/libbluetooth/g$1;->XJ:Lcom/xiaopeng/libbluetooth/g;

    invoke-static {v1, v0}, Lcom/xiaopeng/libbluetooth/g;->a(Lcom/xiaopeng/libbluetooth/g;Ljava/lang/Exception;)V

    .line 106
    :goto_0
    return-void
.end method

.method public h(ILjava/lang/String;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/g$1;->XJ:Lcom/xiaopeng/libbluetooth/g;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/g;->b(Lcom/xiaopeng/libbluetooth/g;)Lcom/xiaopeng/libbluetooth/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/g$1;->XJ:Lcom/xiaopeng/libbluetooth/g;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/g;->b(Lcom/xiaopeng/libbluetooth/g;)Lcom/xiaopeng/libbluetooth/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/libbluetooth/c;->g(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    goto :goto_0

    .line 133
    :catch_0
    move-exception p1

    .line 134
    iget-object p2, p0, Lcom/xiaopeng/libbluetooth/g$1;->XJ:Lcom/xiaopeng/libbluetooth/g;

    invoke-static {p2, p1}, Lcom/xiaopeng/libbluetooth/g;->a(Lcom/xiaopeng/libbluetooth/g;Ljava/lang/Exception;)V

    .line 136
    :goto_0
    return-void
.end method
