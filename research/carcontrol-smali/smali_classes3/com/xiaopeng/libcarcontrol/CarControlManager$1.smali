.class Lcom/xiaopeng/libcarcontrol/CarControlManager$1;
.super Landroid/database/ContentObserver;
.source "CarControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/libcarcontrol/CarControlManager;->registerObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/libcarcontrol/CarControlManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/libcarcontrol/CarControlManager;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "x0"
        }
    .end annotation

    .line 623
    iput-object p1, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager$1;->this$0:Lcom/xiaopeng/libcarcontrol/CarControlManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selfChange",
            "uri"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 630
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChange: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarControlManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 636
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "psn_occupied"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 p2, 0x15

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "hvac_out_temp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 p2, 0x14

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "hvac_back_defrost"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 p2, 0x13

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "hvac_psn_temp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 p2, 0x12

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "hvac_psn_sync"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 p2, 0x11

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "hvac_drv_temp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 p2, 0x10

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "hvac_drv_sync"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 p2, 0xf

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "cc_ready"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 p2, 0xe

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "hvac_air_purge_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 p2, 0xd

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "hvac_front_defrost"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 p2, 0xc

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "drive_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 p2, 0xb

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "drv_occupied"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 p2, 0xa

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "hvac_power"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 p2, 0x9

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "central_lock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 p2, 0x8

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "available_distance"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_0

    :cond_10
    const/4 p2, 0x7

    goto :goto_0

    :sswitch_f
    const-string v0, "hvac_wind_mode_color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_0

    :cond_11
    const/4 p2, 0x6

    goto :goto_0

    :sswitch_10
    const-string v0, "hvac_pm25"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_0

    :cond_12
    const/4 p2, 0x5

    goto :goto_0

    :sswitch_11
    const-string v0, "hvac_auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_0

    :cond_13
    const/4 p2, 0x4

    goto :goto_0

    :sswitch_12
    const-string v0, "charge_status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_0

    :cond_14
    const/4 p2, 0x3

    goto :goto_0

    :sswitch_13
    const-string v0, "hvac_wind_level"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_0

    :cond_15
    const/4 p2, 0x2

    goto :goto_0

    :sswitch_14
    const-string v0, "battery_percent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_0

    :cond_16
    const/4 p2, 0x1

    goto :goto_0

    :sswitch_15
    const-string v0, "hvac_blower_ctrl_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_0

    :cond_17
    const/4 p2, 0x0

    :goto_0
    const/high16 v0, 0x42000000    # 32.0f

    const/high16 v1, 0x41900000    # 18.0f

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_3

    .line 704
    :pswitch_0
    iget-object p2, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager$1;->this$0:Lcom/xiaopeng/libcarcontrol/CarControlManager;

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$000(Lcom/xiaopeng/libcarcontrol/CarControlManager;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$2200(Lcom/xiaopeng/libcarcontrol/CarControlManager;Z)V

    goto/16 :goto_3

    .line 666
    :pswitch_1
    iget-object p2, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager$1;->this$0:Lcom/xiaopeng/libcarcontrol/CarControlManager;

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$300(Lcom/xiaopeng/libcarcontrol/CarControlManager;Ljava/lang/String;)F

    move-result p1

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$1100(Lcom/xiaopeng/libcarcontrol/CarControlManager;F)V

    goto/16 :goto_3

    .line 672
    :pswitch_2
    iget-object p2, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager$1;->this$0:Lcom/xiaopeng/libcarcontrol/CarControlManager;

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$000(Lcom/xiaopeng/libcarcontrol/CarControlManager;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$1300(Lcom/xiaopeng/libcarcontrol/CarControlManager;Z)V

    goto/16 :goto_3

    .line 652
    :pswitch_3
    iget-object p2, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager$1;->this$0:Lcom/xiaopeng/libcarcontrol/CarControlManager;

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$300(Lcom/xiaopeng/libcarcontrol/CarControlManager;Ljava/lang/String;)F

    move-result p1

    .line 653
    iget-object p2, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager$1;->this$0:Lcom/xiaopeng/libcarcontrol/CarControlManager;

    cmpg-float v2, p1, v1

    if-gez v2, :cond_18

    move v0, v1

    goto :goto_1

    :cond_18
    cmpl-float v1, p1, v0

    if-lez v1, :cond_19

    goto :goto_1

    :cond_19
    move v0, p1

    :goto_1
    invoke-static {p2, v0}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$600(Lcom/xiaopeng/libcarcontrol/CarControlManager;F)V

    goto/16 :goto_3

    .line 657
    :pswitch_4
    iget-object p2, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager$1;->this$0:Lcom/xiaopeng/libcarcontrol/CarControlManager;

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$000(Lcom/xiaopeng/libcarcontrol/CarControlManager;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$700(Lcom/xiaopeng/libcarcontrol/CarControlManager;Z)V

    goto/16 :goto_3

    .line 644
    :pswitch_5
    iget-object p2, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager$1;->this$0:Lcom/xiaopeng/libcarcontrol/CarControlManager;

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$300(Lcom/xiaopeng/libcarcontrol/CarControlManager;Ljava/lang/String;)F

    move-result p1

    .line 645
    iget-object p2, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager$1;->this$0:Lcom/xiaopeng/libcarcontrol/CarControlManager;

    cmpg-float v2, p1, v1

    if-gez v2, :cond_1a

    move v0, v1

    goto :goto_2

    :cond_1a
    cmpl-float v1, p1, v0

    if-lez v1, :cond_1b

    goto :goto_2

    :cond_1b
    move v0, p1

    :goto_2
    invoke-static {p2, v0}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$400(Lcom/xiaopeng/libcarcontrol/CarControlManager;F)V

    goto/16 :goto_3

    .line 649
    :pswitch_6
    iget-object p2, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager$1;->this$0:Lcom/xiaopeng/libcarcontrol/CarControlManager;

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$000(Lcom/xiaopeng/libcarcontrol/CarControlManager;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$500(Lcom/xiaopeng/libcarcontrol/CarControlManager;Z)V

    goto/16 :goto_3

    .line 708
    :pswitch_7
    iget-object p2, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager$1;->this$0:Lcom/xiaopeng/libcarcontrol/CarControlManager;

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$000(Lcom/xiaopeng/libcarcontrol/CarControlManager;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$2300(Lcom/xiaopeng/libcarcontrol/CarControlManager;Z)V

    goto/16 :goto_3

    .line 678
    :pswitch_8
    iget-object p2, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager$1;->this$0:Lcom/xiaopeng/libcarcontrol/CarControlManager;

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$000(Lcom/xiaopeng/libcarcontrol/CarControlManager;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$1500(Lcom/xiaopeng/libcarcontrol/CarControlManager;Z)V

    goto/16 :goto_3

    .line 669
    :pswitch_9
    iget-object p2, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager$1;->this$0:Lcom/xiaopeng/libcarcontrol/CarControlManager;

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$000(Lcom/xiaopeng/libcarcontrol/CarControlManager;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$1200(Lcom/xiaopeng/libcarcontrol/CarControlManager;Z)V

    goto/16 :goto_3

    .line 712
    :pswitch_a
    iget-object p2, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager$1;->this$0:Lcom/xiaopeng/libcarcontrol/CarControlManager;

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$800(Lcom/xiaopeng/libcarcontrol/CarControlManager;Ljava/lang/String;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$2400(Lcom/xiaopeng/libcarcontrol/CarControlManager;I)V

    goto/16 :goto_3

    .line 701
    :pswitch_b
    iget-object p2, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager$1;->this$0:Lcom/xiaopeng/libcarcontrol/CarControlManager;

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$000(Lcom/xiaopeng/libcarcontrol/CarControlManager;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$2100(Lcom/xiaopeng/libcarcontrol/CarControlManager;Z)V

    goto :goto_3

    .line 638
    :pswitch_c
    iget-object p2, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager$1;->this$0:Lcom/xiaopeng/libcarcontrol/CarControlManager;

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$000(Lcom/xiaopeng/libcarcontrol/CarControlManager;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$100(Lcom/xiaopeng/libcarcontrol/CarControlManager;Z)V

    goto :goto_3

    .line 697
    :pswitch_d
    iget-object p2, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager$1;->this$0:Lcom/xiaopeng/libcarcontrol/CarControlManager;

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$000(Lcom/xiaopeng/libcarcontrol/CarControlManager;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$2000(Lcom/xiaopeng/libcarcontrol/CarControlManager;Z)V

    goto :goto_3

    .line 689
    :pswitch_e
    iget-object p2, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager$1;->this$0:Lcom/xiaopeng/libcarcontrol/CarControlManager;

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$800(Lcom/xiaopeng/libcarcontrol/CarControlManager;Ljava/lang/String;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$1800(Lcom/xiaopeng/libcarcontrol/CarControlManager;I)V

    goto :goto_3

    .line 675
    :pswitch_f
    iget-object p2, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager$1;->this$0:Lcom/xiaopeng/libcarcontrol/CarControlManager;

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$800(Lcom/xiaopeng/libcarcontrol/CarControlManager;Ljava/lang/String;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$1400(Lcom/xiaopeng/libcarcontrol/CarControlManager;I)V

    goto :goto_3

    .line 663
    :pswitch_10
    iget-object p2, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager$1;->this$0:Lcom/xiaopeng/libcarcontrol/CarControlManager;

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$800(Lcom/xiaopeng/libcarcontrol/CarControlManager;Ljava/lang/String;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$1000(Lcom/xiaopeng/libcarcontrol/CarControlManager;I)V

    goto :goto_3

    .line 641
    :pswitch_11
    iget-object p2, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager$1;->this$0:Lcom/xiaopeng/libcarcontrol/CarControlManager;

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$000(Lcom/xiaopeng/libcarcontrol/CarControlManager;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$200(Lcom/xiaopeng/libcarcontrol/CarControlManager;Z)V

    goto :goto_3

    .line 685
    :pswitch_12
    iget-object p2, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager$1;->this$0:Lcom/xiaopeng/libcarcontrol/CarControlManager;

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$800(Lcom/xiaopeng/libcarcontrol/CarControlManager;Ljava/lang/String;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$1700(Lcom/xiaopeng/libcarcontrol/CarControlManager;I)V

    goto :goto_3

    .line 660
    :pswitch_13
    iget-object p2, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager$1;->this$0:Lcom/xiaopeng/libcarcontrol/CarControlManager;

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$800(Lcom/xiaopeng/libcarcontrol/CarControlManager;Ljava/lang/String;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$900(Lcom/xiaopeng/libcarcontrol/CarControlManager;I)V

    goto :goto_3

    .line 693
    :pswitch_14
    iget-object p2, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager$1;->this$0:Lcom/xiaopeng/libcarcontrol/CarControlManager;

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$800(Lcom/xiaopeng/libcarcontrol/CarControlManager;Ljava/lang/String;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$1900(Lcom/xiaopeng/libcarcontrol/CarControlManager;I)V

    goto :goto_3

    .line 681
    :pswitch_15
    iget-object p2, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager$1;->this$0:Lcom/xiaopeng/libcarcontrol/CarControlManager;

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$000(Lcom/xiaopeng/libcarcontrol/CarControlManager;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$1600(Lcom/xiaopeng/libcarcontrol/CarControlManager;Z)V

    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x78d53d23 -> :sswitch_15
        -0x75baa3ed -> :sswitch_14
        -0x75479d84 -> :sswitch_13
        -0x60300823 -> :sswitch_12
        -0x28d36922 -> :sswitch_11
        -0x28ccbdd1 -> :sswitch_10
        -0x28996631 -> :sswitch_f
        -0x1fe5bb55 -> :sswitch_e
        -0x16464e4b -> :sswitch_d
        0xf36f5b6 -> :sswitch_c
        0x1dbbeb55 -> :sswitch_b
        0x226bbf38 -> :sswitch_a
        0x26b2f27e -> :sswitch_9
        0x4380c93b -> :sswitch_8
        0x49af8104 -> :sswitch_7
        0x4ad92081 -> :sswitch_6
        0x4ad949ba -> :sswitch_5
        0x50a6b13e -> :sswitch_4
        0x50a6da77 -> :sswitch_3
        0x5c1b69ba -> :sswitch_2
        0x5ccf37d4 -> :sswitch_1
        0x6ca8d592 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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
