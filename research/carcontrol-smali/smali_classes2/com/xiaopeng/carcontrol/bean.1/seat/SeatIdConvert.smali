.class public Lcom/xiaopeng/carcontrol/bean/seat/SeatIdConvert;
.super Ljava/lang/Object;
.source "SeatIdConvert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static seatConvert(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    .line 31
    sget p0, Lcom/xiaopeng/carcontrolmodule/R$string;->psn_seat_memory_error:I

    invoke-static {p0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 29
    :pswitch_0
    sget p0, Lcom/xiaopeng/carcontrolmodule/R$string;->psn_seat_memory_ten:I

    invoke-static {p0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 27
    :pswitch_1
    sget p0, Lcom/xiaopeng/carcontrolmodule/R$string;->psn_seat_memory_nine:I

    invoke-static {p0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 25
    :pswitch_2
    sget p0, Lcom/xiaopeng/carcontrolmodule/R$string;->psn_seat_memory_eight:I

    invoke-static {p0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 23
    :pswitch_3
    sget p0, Lcom/xiaopeng/carcontrolmodule/R$string;->psn_seat_memory_seven:I

    invoke-static {p0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 21
    :pswitch_4
    sget p0, Lcom/xiaopeng/carcontrolmodule/R$string;->psn_seat_memory_six:I

    invoke-static {p0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 19
    :pswitch_5
    sget p0, Lcom/xiaopeng/carcontrolmodule/R$string;->psn_seat_memory_five:I

    invoke-static {p0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 17
    :pswitch_6
    sget p0, Lcom/xiaopeng/carcontrolmodule/R$string;->psn_seat_memory_four:I

    invoke-static {p0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 15
    :pswitch_7
    sget p0, Lcom/xiaopeng/carcontrolmodule/R$string;->psn_seat_memory_three:I

    invoke-static {p0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 13
    :pswitch_8
    sget p0, Lcom/xiaopeng/carcontrolmodule/R$string;->psn_seat_memory_two:I

    invoke-static {p0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :pswitch_9
    sget p0, Lcom/xiaopeng/carcontrolmodule/R$string;->psn_seat_memory_one:I

    invoke-static {p0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static seatConvertNew(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 44
    sget p0, Lcom/xiaopeng/carcontrolmodule/R$string;->psn_seat_memory_error:I

    invoke-static {p0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 42
    :cond_0
    sget p0, Lcom/xiaopeng/carcontrolmodule/R$string;->psn_seat_memory_nap:I

    invoke-static {p0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 40
    :cond_1
    sget p0, Lcom/xiaopeng/carcontrolmodule/R$string;->psn_seat_memory_relax:I

    invoke-static {p0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 38
    :cond_2
    sget p0, Lcom/xiaopeng/carcontrolmodule/R$string;->psn_seat_memory_normal:I

    invoke-static {p0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
