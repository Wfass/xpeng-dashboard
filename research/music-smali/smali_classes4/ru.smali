.class public Lru;
.super Ljava/lang/Object;
.source "CodeGenUtils.java"


# direct methods
.method public static a(I)Ljava/lang/String;
    .locals 4

    packed-switch p0, :pswitch_data_0

    const/16 v0, 0xb

    .line 43
    invoke-static {p0}, Labe;->a(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 44
    new-array v1, v1, [C

    const/4 v2, 0x0

    const-string v3, "fieldReader"

    .line 45
    invoke-virtual {v3, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 46
    invoke-static {v1, v0, p0}, Labe;->c([CII)I

    .line 47
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :pswitch_0
    const-string p0, "fieldReader15"

    return-object p0

    :pswitch_1
    const-string p0, "fieldReader14"

    return-object p0

    :pswitch_2
    const-string p0, "fieldReader13"

    return-object p0

    :pswitch_3
    const-string p0, "fieldReader12"

    return-object p0

    :pswitch_4
    const-string p0, "fieldReader11"

    return-object p0

    :pswitch_5
    const-string p0, "fieldReader10"

    return-object p0

    :pswitch_6
    const-string p0, "fieldReader9"

    return-object p0

    :pswitch_7
    const-string p0, "fieldReader8"

    return-object p0

    :pswitch_8
    const-string p0, "fieldReader7"

    return-object p0

    :pswitch_9
    const-string p0, "fieldReader6"

    return-object p0

    :pswitch_a
    const-string p0, "fieldReader5"

    return-object p0

    :pswitch_b
    const-string p0, "fieldReader4"

    return-object p0

    :pswitch_c
    const-string p0, "fieldReader3"

    return-object p0

    :pswitch_d
    const-string p0, "fieldReader2"

    return-object p0

    :pswitch_e
    const-string p0, "fieldReader1"

    return-object p0

    :pswitch_f
    const-string p0, "fieldReader0"

    return-object p0

    nop

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
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
