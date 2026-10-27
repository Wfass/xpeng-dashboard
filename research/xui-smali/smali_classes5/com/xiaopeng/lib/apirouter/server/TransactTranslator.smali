.class public Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;
.super Ljava/lang/Object;
.source "TransactTranslator.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "kind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "java.lang.String"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "java.lang.Double"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "java.lang.Long"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "java.lang.Byte"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "java.lang.Boolean"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "java.lang.Character"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "short"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "float"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :sswitch_8
    const-string v1, "boolean"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_9
    const-string v1, "long"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_a
    const-string v1, "char"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    :sswitch_b
    const-string v1, "byte"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_c
    const-string v1, "int"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_d
    const-string v1, "java.lang.Short"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_e
    const-string v1, "java.lang.Float"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xd

    goto :goto_0

    :sswitch_f
    const-string v1, "double"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xe

    goto :goto_0

    :sswitch_10
    const-string v1, "java.lang.Integer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 107
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    goto/16 :goto_1

    .line 104
    :pswitch_0
    return-object p0

    .line 100
    :pswitch_1
    move-object v0, p0

    .line 101
    .local v0, "string":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 93
    .end local v0    # "string":Ljava/lang/String;
    :pswitch_2
    move-object v0, p0

    .line 94
    .restart local v0    # "string":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    const-string v1, "0"

    move-object v0, v1

    .line 97
    :cond_1
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 89
    .end local v0    # "string":Ljava/lang/String;
    :pswitch_3
    move-object v0, p0

    .line 90
    .restart local v0    # "string":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 82
    .end local v0    # "string":Ljava/lang/String;
    :pswitch_4
    move-object v0, p0

    .line 83
    .restart local v0    # "string":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    const-string v1, "0"

    move-object v0, v1

    .line 86
    :cond_2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 75
    .end local v0    # "string":Ljava/lang/String;
    :pswitch_5
    move-object v0, p0

    .line 76
    .restart local v0    # "string":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 77
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    return-object v1

    .line 79
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    return-object v1

    .line 70
    .end local v0    # "string":Ljava/lang/String;
    :pswitch_6
    move-object v0, p0

    .line 71
    .restart local v0    # "string":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 63
    .end local v0    # "string":Ljava/lang/String;
    :pswitch_7
    move-object v0, p0

    .line 64
    .restart local v0    # "string":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 65
    const-string v1, "0"

    move-object v0, v1

    .line 67
    :cond_4
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 59
    .end local v0    # "string":Ljava/lang/String;
    :pswitch_8
    move-object v0, p0

    .line 60
    .restart local v0    # "string":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 52
    .end local v0    # "string":Ljava/lang/String;
    :pswitch_9
    move-object v0, p0

    .line 53
    .restart local v0    # "string":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 54
    const-string v1, "0"

    move-object v0, v1

    .line 56
    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 48
    .end local v0    # "string":Ljava/lang/String;
    :pswitch_a
    move-object v0, p0

    .line 49
    .restart local v0    # "string":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v1

    return-object v1

    .line 41
    .end local v0    # "string":Ljava/lang/String;
    :pswitch_b
    move-object v0, p0

    .line 42
    .restart local v0    # "string":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 43
    const-string v1, "0"

    move-object v0, v1

    .line 45
    :cond_6
    invoke-static {v0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v1

    return-object v1

    .line 37
    .end local v0    # "string":Ljava/lang/String;
    :pswitch_c
    move-object v0, p0

    .line 38
    .restart local v0    # "string":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v1

    return-object v1

    .line 30
    .end local v0    # "string":Ljava/lang/String;
    :pswitch_d
    move-object v0, p0

    .line 31
    .restart local v0    # "string":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 32
    const-string v1, "0"

    move-object v0, v1

    .line 34
    :cond_7
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v1

    return-object v1

    .line 26
    .end local v0    # "string":Ljava/lang/String;
    :pswitch_e
    move-object v0, p0

    .line 27
    .restart local v0    # "string":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 19
    .end local v0    # "string":Ljava/lang/String;
    :pswitch_f
    move-object v0, p0

    .line 20
    .restart local v0    # "string":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 21
    const-string v1, "false"

    move-object v0, v1

    .line 23
    :cond_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 107
    .end local v0    # "string":Ljava/lang/String;
    :goto_1
    const-string v1, "un support type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/os/RemoteException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a988a96 -> :sswitch_10
        -0x4f08842f -> :sswitch_f
        -0x1f76ce78 -> :sswitch_e
        -0x1ec16c58 -> :sswitch_d
        0x197ef -> :sswitch_c
        0x2e6108 -> :sswitch_b
        0x2e9356 -> :sswitch_a
        0x32c67c -> :sswitch_9
        0x3db6c28 -> :sswitch_8
        0x5d0225c -> :sswitch_7
        0x685847c -> :sswitch_6
        0x9415455 -> :sswitch_5
        0x148d6054 -> :sswitch_4
        0x17c0bc5c -> :sswitch_3
        0x17c521d0 -> :sswitch_2
        0x2d605225 -> :sswitch_1
        0x473e3665 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static reply(Landroid/os/Parcel;Ljava/lang/Object;)V
    .locals 0
    .param p0, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "TT;)V"
        }
    .end annotation

    .line 115
    .local p1, "result":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 116
    return-void
.end method
