.class public Lcom/xiaopeng/xuimanager/nova/NovaAppCodes;
.super Ljava/lang/Object;
.source "NovaAppCodes.java"


# static fields
.field public static final COMMON_FILE:I = 0x107d7c

.field public static final EGG:I = 0x107b88

.field public static final LLU:I = 0xf69b5

.field public static final SPEECH:I = 0x186a1

.field public static final SYS_CONFIG:I = 0x107d18

.field public static final TEXT_RRO:I = 0x107de0

.field public static final THEME:I = 0x107b24

.field public static final THEME_CAR_MODEL:I = 0x107b27

.field public static final THEME_ELEMENT_TYPE_END:I = 0x107b87

.field public static final THEME_ELEMENT_TYPE_START:I = 0x107b25

.field public static final THEME_SR:I = 0x107b26

.field public static final THEME_XIAO_P:I = 0x107b25


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static humanReadable(I)Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/xiaopeng/xuimanager/nova/NovaAppCodes;->stringOfAppCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stringOfAppCode(I)Ljava/lang/String;
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const-string p0, "unknown"

    return-object p0

    :sswitch_0
    const-string p0, "TEXT_RRO"

    return-object p0

    :sswitch_1
    const-string p0, "COMMON_FILE"

    return-object p0

    :sswitch_2
    const-string p0, "SYS_CONFIG"

    return-object p0

    :sswitch_3
    const-string p0, "EGG"

    return-object p0

    :sswitch_4
    const-string p0, "THEME_CAR_MODEL"

    return-object p0

    :sswitch_5
    const-string p0, "THEME_SR"

    return-object p0

    :sswitch_6
    const-string p0, "THEME_XIAO_P"

    return-object p0

    :sswitch_7
    const-string p0, "THEME"

    return-object p0

    :sswitch_8
    const-string p0, "LLU"

    return-object p0

    :sswitch_9
    const-string p0, "SPEECH"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x186a1 -> :sswitch_9
        0xf69b5 -> :sswitch_8
        0x107b24 -> :sswitch_7
        0x107b25 -> :sswitch_6
        0x107b26 -> :sswitch_5
        0x107b27 -> :sswitch_4
        0x107b88 -> :sswitch_3
        0x107d18 -> :sswitch_2
        0x107d7c -> :sswitch_1
        0x107de0 -> :sswitch_0
    .end sparse-switch
.end method
