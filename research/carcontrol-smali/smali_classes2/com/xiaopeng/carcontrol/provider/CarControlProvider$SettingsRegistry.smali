.class final Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;
.super Ljava/lang/Object;
.source "CarControlProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/provider/CarControlProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SettingsRegistry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry$MyHandler;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mSettingsStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xiaopeng/carcontrol/provider/SettingsState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 366
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->mSettingsStates:Landroid/util/SparseArray;

    .line 367
    new-instance p1, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry$MyHandler;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry$MyHandler;-><init>(Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private ensureSettingsStateLocked(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->mSettingsStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 398
    new-instance v0, Lcom/xiaopeng/carcontrol/provider/SettingsState;

    invoke-direct {v0, p1}, Lcom/xiaopeng/carcontrol/provider/SettingsState;-><init>(I)V

    .line 399
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->mSettingsStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private getNotificationUriFor(ILjava/lang/String;)Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "name"
        }
    .end annotation

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 535
    sget-object p1, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->CONTENT_URI:Landroid/net/Uri;

    if-eqz p2, :cond_0

    invoke-static {p1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :cond_0
    return-object p1

    .line 539
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid control type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 531
    :cond_2
    sget-object p1, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->CONTENT_URI:Landroid/net/Uri;

    if-eqz p2, :cond_3

    invoke-static {p1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :cond_3
    return-object p1

    .line 527
    :cond_4
    sget-object p1, Lcom/xiaopeng/carcontrol/provider/CarControl$Quick;->CONTENT_URI:Landroid/net/Uri;

    if-eqz p2, :cond_5

    invoke-static {p1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :cond_5
    return-object p1
.end method

.method private notifyForSettingsChange(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "name"
        }
    .end annotation

    .line 519
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->getNotificationUriFor(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 520
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 521
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private peekSettingsStateLocked(I)Lcom/xiaopeng/carcontrol/provider/SettingsState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->mSettingsStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/provider/SettingsState;

    if-eqz v0, :cond_0

    return-object v0

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->ensureSettingsLocked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->mSettingsStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/carcontrol/provider/SettingsState;

    return-object p1
.end method


# virtual methods
.method ensureSettingsLocked()Z
    .locals 2

    const/4 v0, 0x0

    .line 371
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->ensureSettingsStateLocked(I)V

    const/4 v0, 0x1

    .line 372
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->ensureSettingsStateLocked(I)V

    const/4 v1, 0x2

    .line 373
    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->ensureSettingsStateLocked(I)V

    return v0
.end method

.method getSettingLocked(ILjava/lang/String;)Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "name"
        }
    .end annotation

    .line 545
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->peekSettingsStateLocked(I)Lcom/xiaopeng/carcontrol/provider/SettingsState;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 551
    :cond_0
    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/provider/SettingsState;->getSettingLocked(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;

    move-result-object p1

    return-object p1
.end method

.method public getSettingsLocked(I)Lcom/xiaopeng/carcontrol/provider/SettingsState;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 393
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->peekSettingsStateLocked(I)Lcom/xiaopeng/carcontrol/provider/SettingsState;

    move-result-object p1

    return-object p1
.end method

.method insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "name",
            "value",
            "makeDefault",
            "forceNotify"
        }
    .end annotation

    .line 556
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 561
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->peekSettingsStateLocked(I)Lcom/xiaopeng/carcontrol/provider/SettingsState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 563
    invoke-virtual {v0, p2, p3, p4}, Lcom/xiaopeng/carcontrol/provider/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    :cond_1
    if-nez p5, :cond_2

    if-eqz v1, :cond_3

    .line 568
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->notifyForSettingsChange(ILjava/lang/String;)V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method updatePrivateControlLocked(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "value",
            "makeDefault",
            "forceNotify"
        }
    .end annotation

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p2

    .line 578
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "isla_sw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x58

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "atl_single_color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x57

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "cngp_safe_exam"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x56

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "rear_fog_sw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x55

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v0, "super_vpa_safe_exam"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x54

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "lock_close_win"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x53

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v0, "wiper_cfg_level"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x52

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "psn_seat_welcome"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x51

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "new_drive_mode_value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x50

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "avh_sw_notify"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x4f

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v0, "wheel_key_protect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x4e

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "nfc_key_enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x4d

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "mem_park_video_watched"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0x4c

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "atl_brightness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x4b

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "avas_volume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0x4a

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "psn_srs_enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0x49

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v0, "say_hi_effect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0x48

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v0, "set_head_lamp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0x47

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v0, "win_high_spd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v3, 0x46

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "avas_external_sw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v3, 0x45

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "avas_effect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v3, 0x44

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "n_protect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v3, 0x43

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "mem_park_safe_exam"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v3, 0x42

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "avas_external_volume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v3, 0x41

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "car_license_plate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v3, 0x40

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "key_door"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v3, 0x3f

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "ngp_safe_exam"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v3, 0x3e

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "energy_recycle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v3, 0x3d

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "boot_effect_before_sw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v3, 0x3c

    goto/16 :goto_0

    :sswitch_1d
    const-string/jumbo v0, "sdc_key_cfg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v3, 0x3b

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "as_welcome"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v3, 0x3a

    goto/16 :goto_0

    :sswitch_1f
    const-string/jumbo v0, "rsw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v3, 0x39

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "esb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v3, 0x38

    goto/16 :goto_0

    :sswitch_21
    const-string v0, "eps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v3, 0x37

    goto/16 :goto_0

    :sswitch_22
    const-string v0, "dhc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v3, 0x36

    goto/16 :goto_0

    :sswitch_23
    const-string v0, "drive_mode_user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v3, 0x35

    goto/16 :goto_0

    :sswitch_24
    const-string/jumbo v0, "set_nra_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v3, 0x34

    goto/16 :goto_0

    :sswitch_25
    const-string/jumbo v0, "sdc_auto_win_down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v3, 0x33

    goto/16 :goto_0

    :sswitch_26
    const-string/jumbo v0, "set_auto_park_sw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v3, 0x32

    goto/16 :goto_0

    :sswitch_27
    const-string v0, "child_right_door_hot_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v3, 0x31

    goto/16 :goto_0

    :sswitch_28
    const-string/jumbo v0, "set_lss_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v3, 0x30

    goto/16 :goto_0

    :sswitch_29
    const-string v0, "child_right_lock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v3, 0x2f

    goto/16 :goto_0

    :sswitch_2a
    const-string/jumbo v0, "super_lcc_safe_exam_notify"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto/16 :goto_0

    :cond_2a
    const/16 v3, 0x2e

    goto/16 :goto_0

    :sswitch_2b
    const-string/jumbo v0, "sdc_max_auto_door_opening_angle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/16 v3, 0x2d

    goto/16 :goto_0

    :sswitch_2c
    const-string/jumbo v0, "user_define_drive_info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto/16 :goto_0

    :cond_2c
    const/16 v3, 0x2c

    goto/16 :goto_0

    :sswitch_2d
    const-string/jumbo v0, "super_lcc_safe_exam"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto/16 :goto_0

    :cond_2d
    const/16 v3, 0x2b

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, "easy_loading"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto/16 :goto_0

    :cond_2e
    const/16 v3, 0x2a

    goto/16 :goto_0

    :sswitch_2f
    const-string v0, "atl_effect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_0

    :cond_2f
    const/16 v3, 0x29

    goto/16 :goto_0

    :sswitch_30
    const-string/jumbo v0, "super_vpa_safe_exam_notify"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto/16 :goto_0

    :cond_30
    const/16 v3, 0x28

    goto/16 :goto_0

    :sswitch_31
    const-string v0, "p_drop_sw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto/16 :goto_0

    :cond_31
    const/16 v3, 0x27

    goto/16 :goto_0

    :sswitch_32
    const-string v0, "rear_seat_welcome"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto/16 :goto_0

    :cond_32
    const/16 v3, 0x26

    goto/16 :goto_0

    :sswitch_33
    const-string v0, "request_car_license_plate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto/16 :goto_0

    :cond_33
    const/16 v3, 0x25

    goto/16 :goto_0

    :sswitch_34
    const-string/jumbo v0, "special_drive_mode_value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto/16 :goto_0

    :cond_34
    const/16 v3, 0x24

    goto/16 :goto_0

    :sswitch_35
    const-string v0, "child_left_lock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto/16 :goto_0

    :cond_35
    const/16 v3, 0x23

    goto/16 :goto_0

    :sswitch_36
    const-string/jumbo v0, "user_define_drive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto/16 :goto_0

    :cond_36
    const/16 v3, 0x22

    goto/16 :goto_0

    :sswitch_37
    const-string/jumbo v0, "seat_welcome"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto/16 :goto_0

    :cond_37
    const/16 v3, 0x21

    goto/16 :goto_0

    :sswitch_38
    const-string v0, "new_drive_xpedal_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto/16 :goto_0

    :cond_38
    const/16 v3, 0x20

    goto/16 :goto_0

    :sswitch_39
    const-string v0, "llu_sw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto/16 :goto_0

    :cond_39
    const/16 v3, 0x1f

    goto/16 :goto_0

    :sswitch_3a
    const-string/jumbo v0, "unlock_response"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto/16 :goto_0

    :cond_3a
    const/16 v3, 0x1e

    goto/16 :goto_0

    :sswitch_3b
    const-string v0, "esp_sw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto/16 :goto_0

    :cond_3b
    const/16 v3, 0x1d

    goto/16 :goto_0

    :sswitch_3c
    const-string/jumbo v0, "set_ngp_sw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto/16 :goto_0

    :cond_3c
    const/16 v3, 0x1c

    goto/16 :goto_0

    :sswitch_3d
    const-string v0, "atl_dual_color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto/16 :goto_0

    :cond_3d
    const/16 v3, 0x1b

    goto/16 :goto_0

    :sswitch_3e
    const-string/jumbo v0, "set_lcc_sw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto/16 :goto_0

    :cond_3e
    const/16 v3, 0x1a

    goto/16 :goto_0

    :sswitch_3f
    const-string/jumbo v0, "set_mem_park_sw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto/16 :goto_0

    :cond_3f
    const/16 v3, 0x19

    goto/16 :goto_0

    :sswitch_40
    const-string v0, "avh_sw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto/16 :goto_0

    :cond_40
    const/16 v3, 0x18

    goto/16 :goto_0

    :sswitch_41
    const-string v0, "atl_sw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto/16 :goto_0

    :cond_41
    const/16 v3, 0x17

    goto/16 :goto_0

    :sswitch_42
    const-string v0, "normal_drive_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto/16 :goto_0

    :cond_42
    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_43
    const-string/jumbo v0, "win_high_spd_notify"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto/16 :goto_0

    :cond_43
    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_44
    const-string v0, "esp_sw_notify"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto/16 :goto_0

    :cond_44
    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_45
    const-string/jumbo v0, "unity_preload"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto/16 :goto_0

    :cond_45
    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_46
    const-string/jumbo v0, "set_cwc_sw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto/16 :goto_0

    :cond_46
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_47
    const-string v0, "key_wheel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto/16 :goto_0

    :cond_47
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_48
    const-string/jumbo v0, "set_alc_sw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto/16 :goto_0

    :cond_48
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_49
    const-string v0, "boot_effect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto/16 :goto_0

    :cond_49
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_4a
    const-string v0, "drive_mode_ui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto/16 :goto_0

    :cond_4a
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_4b
    const-string v0, "ngp_safe_exam_notify"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto/16 :goto_0

    :cond_4b
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_4c
    const-string v0, "park_auto_unlock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto/16 :goto_0

    :cond_4c
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_4d
    const-string v0, "lcc_safe_exam_notify"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto/16 :goto_0

    :cond_4d
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_4e
    const-string v0, "camping_loading"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    goto/16 :goto_0

    :cond_4e
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_4f
    const-string v0, "lcc_safe_exam"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto/16 :goto_0

    :cond_4f
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_50
    const-string v0, "lcc_video_watched"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto/16 :goto_0

    :cond_50
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_51
    const-string v0, "mem_park_safe_exam_notify"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto :goto_0

    :cond_51
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_52
    const-string/jumbo v0, "sdc_brake_close_door_cfg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto :goto_0

    :cond_52
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_53
    const-string v0, "apa_safe_exam"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto :goto_0

    :cond_53
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_54
    const-string v0, "apa_safe_exam_notify"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto :goto_0

    :cond_54
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_55
    const-string v0, "remove_dropdown_menu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    goto :goto_0

    :cond_55
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_56
    const-string v0, "atl_dual_color_sw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    goto :goto_0

    :cond_56
    move v3, v1

    goto :goto_0

    :sswitch_57
    const-string/jumbo v0, "ttm_switch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto :goto_0

    :cond_57
    move v3, v2

    goto :goto_0

    :sswitch_58
    const-string v0, "child_left_door_hot_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    goto :goto_0

    :cond_58
    move v3, v9

    :goto_0
    const-string v10, "for name: "

    const-string v11, " for name: "

    const-string v12, "Invalid value: "

    const-string v13, "CarControlProvider"

    packed-switch v3, :pswitch_data_0

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 1262
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9

    goto/16 :goto_31

    .line 1166
    :pswitch_0
    :try_start_0
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setIslaSw(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1c

    .line 1169
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 832
    :pswitch_1
    :try_start_1
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAtlSingleColor(I)V

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 833
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_31

    .line 835
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 1152
    :pswitch_2
    :try_start_2
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_59

    move v1, v2

    goto :goto_1

    :cond_59
    move v1, v9

    :goto_1
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setCngpSafeExamResult(Z)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1c

    .line 1155
    :catch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 686
    :pswitch_3
    :try_start_3
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampSmartControl;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_5a

    move v1, v2

    goto :goto_2

    :cond_5a
    move v1, v9

    :goto_2
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampSmartControl;->setRearFogSw(Z)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1c

    .line 689
    :catch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 1081
    :pswitch_4
    :try_start_4
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_5b

    move v1, v2

    goto :goto_3

    :cond_5b
    move v1, v9

    :goto_3
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setSuperVpaSafeExamResult(Z)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1c

    .line 1084
    :catch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 787
    :pswitch_5
    :try_start_5
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_5c

    move v1, v2

    goto :goto_4

    :cond_5c
    move v1, v9

    :goto_4
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setLockCloseWin(Z)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_1c

    .line 790
    :catch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 927
    :pswitch_6
    :try_start_6
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setWiperSensitivity(I)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_1c

    .line 930
    :catch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 655
    :pswitch_7
    :try_start_7
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_5d

    move v1, v2

    goto :goto_5

    :cond_5d
    move v1, v9

    :goto_5
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setPsnWelcomeMode(Z)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_1c

    .line 658
    :catch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    :pswitch_8
    const/4 v1, 0x2

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    .line 1246
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9

    goto/16 :goto_31

    :pswitch_9
    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 632
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9

    goto/16 :goto_31

    .line 795
    :pswitch_a
    :try_start_8
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_5e

    move v1, v2

    goto :goto_6

    :cond_5e
    move v1, v9

    :goto_6
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setWheelKeyProtect(Z)V
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_1c

    .line 798
    :catch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 1184
    :pswitch_b
    :try_start_9
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_5f

    move v1, v2

    goto :goto_7

    :cond_5f
    move v1, v9

    :goto_7
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNfcKeyEnable(Z)V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_1c

    .line 1187
    :catch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 1115
    :pswitch_c
    :try_start_a
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_60

    move v1, v2

    goto :goto_8

    :cond_60
    move v1, v9

    :goto_8
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setMemParkVideoWatched(Z)V
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_a

    goto/16 :goto_1c

    .line 1118
    :catch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 816
    :pswitch_d
    :try_start_b
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAtlBright(I)V

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 817
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_b

    goto/16 :goto_31

    .line 819
    :catch_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 867
    :pswitch_e
    :try_start_c
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAvasVolume(I)V

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 868
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_c

    goto/16 :goto_31

    .line 870
    :catch_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 1193
    :pswitch_f
    :try_start_d
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_61

    move v1, v2

    goto :goto_9

    :cond_61
    move v1, v9

    :goto_9
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setPsnSrsEnable(Z)V
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_d

    goto/16 :goto_1c

    .line 1196
    :catch_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 876
    :pswitch_10
    :try_start_e
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setSayHiEffect(I)V

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 877
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_e

    goto/16 :goto_31

    .line 879
    :catch_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 918
    :pswitch_11
    :try_start_f
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setHeadLampState(I)V
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_f

    goto/16 :goto_1c

    .line 921
    :catch_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 721
    :pswitch_12
    :try_start_10
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_62

    goto :goto_a

    :cond_62
    move v2, v9

    :goto_a
    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->setWinHighSpdSw(Z)V

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 722
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_10

    goto/16 :goto_31

    .line 724
    :catch_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 901
    :pswitch_13
    :try_start_11
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/DebugFuncModel;->getInstance()Lcom/xiaopeng/carcontrol/model/DebugFuncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_63

    move v1, v2

    goto :goto_b

    :cond_63
    move v1, v9

    :goto_b
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DebugFuncModel;->setAvasExternalSw(Z)V
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_11

    goto/16 :goto_1c

    .line 904
    :catch_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 858
    :pswitch_14
    :try_start_12
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAvasEffect(I)V

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 859
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_12

    goto/16 :goto_31

    .line 861
    :catch_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 605
    :pswitch_15
    :try_start_13
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_64

    move v1, v2

    goto :goto_c

    :cond_64
    move v1, v9

    :goto_c
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNGearWarningSwitch(Z)V
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_13

    goto/16 :goto_1c

    .line 608
    :catch_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 1073
    :pswitch_16
    :try_start_14
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_65

    move v1, v2

    goto :goto_d

    :cond_65
    move v1, v9

    :goto_d
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setMemParkSafeExamResult(Z)V
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_14} :catch_14

    goto/16 :goto_1c

    .line 1076
    :catch_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 909
    :pswitch_17
    :try_start_15
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAvasOtherVolume(I)V
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_15

    goto/16 :goto_1c

    .line 912
    :catch_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    :pswitch_18
    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 997
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9

    goto/16 :goto_31

    .line 1065
    :pswitch_19
    :try_start_16
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_66

    move v1, v2

    goto :goto_e

    :cond_66
    move v1, v9

    :goto_e
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNgpSafeExamResult(Z)V
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_16} :catch_16

    goto/16 :goto_1c

    .line 1068
    :catch_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 597
    :pswitch_1a
    :try_start_17
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->setEnergyRecycleGrade(I)V
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_17

    goto/16 :goto_1c

    .line 600
    :catch_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 893
    :pswitch_1b
    :try_start_18
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setBootEffectBeforeSw(I)V

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 894
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_18} :catch_18

    goto/16 :goto_31

    .line 896
    :catch_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 962
    :pswitch_1c
    :try_start_19
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setSdcKeyCfg(I)V
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_19} :catch_19

    goto/16 :goto_1c

    .line 965
    :catch_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 1175
    :pswitch_1d
    :try_start_1a
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_67

    move v1, v2

    goto :goto_f

    :cond_67
    move v1, v9

    :goto_f
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAsWelcomeMode(Z)V
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1a} :catch_1a

    goto/16 :goto_1c

    .line 1178
    :catch_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 712
    :pswitch_1e
    :try_start_1b
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_68

    move v1, v2

    goto :goto_10

    :cond_68
    move v1, v9

    :goto_10
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setRsbWarning(Z)V
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1b} :catch_1b

    goto/16 :goto_1c

    .line 715
    :catch_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 704
    :pswitch_1f
    :try_start_1c
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_69

    move v1, v2

    goto :goto_11

    :cond_69
    move v1, v9

    :goto_11
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setDrvSeatEsb(Z)V
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_1c} :catch_1c

    goto/16 :goto_1c

    .line 707
    :catch_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 637
    :pswitch_20
    :try_start_1d
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setSteerMode(I)V

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 638
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1d

    goto/16 :goto_31

    .line 640
    :catch_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 695
    :pswitch_21
    :try_start_1e
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_6a

    move v1, v2

    goto :goto_12

    :cond_6a
    move v1, v9

    :goto_12
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAutoDhc(Z)V
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_1e} :catch_1e

    goto/16 :goto_1c

    .line 698
    :catch_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 589
    :pswitch_22
    :try_start_1f
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_6b

    move v1, v2

    goto :goto_13

    :cond_6b
    move v1, v9

    :goto_13
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setDriveModeChangedByUser(Z)V
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_1f} :catch_1f

    goto/16 :goto_1c

    .line 592
    :catch_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 1024
    :pswitch_23
    :try_start_20
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNraState(I)V

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 1025
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_20} :catch_20

    goto/16 :goto_31

    .line 1027
    :catch_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 971
    :pswitch_24
    :try_start_21
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_6c

    move v1, v2

    goto :goto_14

    :cond_6c
    move v1, v9

    :goto_14
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setSdcWinAutoDown(Z)V
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_21} :catch_21

    goto/16 :goto_1c

    .line 974
    :catch_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 1040
    :pswitch_25
    :try_start_22
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_6d

    move v1, v2

    goto :goto_15

    :cond_6d
    move v1, v9

    :goto_15
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAutoParkSw(Z)V
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_22} :catch_22

    goto/16 :goto_1c

    .line 1043
    :catch_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 779
    :pswitch_26
    :try_start_23
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_6e

    move v1, v2

    goto :goto_16

    :cond_6e
    move v1, v9

    :goto_16
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setRightDoorHotKey(Z)V
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_23} :catch_23

    goto/16 :goto_1c

    .line 782
    :catch_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 1032
    :pswitch_27
    :try_start_24
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setLssState(I)V
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_24} :catch_24

    goto/16 :goto_1c

    .line 1035
    :catch_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 763
    :pswitch_28
    :try_start_25
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_6f

    move v1, v2

    goto :goto_17

    :cond_6f
    move v1, v9

    :goto_17
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setChildRightLock(Z)V
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_25} :catch_25

    goto/16 :goto_1c

    .line 766
    :catch_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    :pswitch_29
    const/4 v1, 0x2

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    .line 1135
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9

    goto/16 :goto_31

    .line 980
    :pswitch_2a
    :try_start_26
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setSdcMaxAutoDoorOpeningAngle(I)V
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_26} :catch_26

    goto/16 :goto_1c

    .line 983
    :catch_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    :pswitch_2b
    const/4 v1, 0x2

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    .line 1250
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9

    goto/16 :goto_31

    .line 1089
    :pswitch_2c
    :try_start_27
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_70

    move v1, v2

    goto :goto_18

    :cond_70
    move v1, v9

    :goto_18
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setSuperLccSafeExamResult(Z)V
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_27} :catch_27

    goto/16 :goto_1c

    .line 1092
    :catch_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 1229
    :pswitch_2d
    :try_start_28
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_71

    move v1, v2

    goto :goto_19

    :cond_71
    move v1, v9

    :goto_19
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setEasyLoadingStatus(Z)V
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_28} :catch_28

    goto/16 :goto_1c

    .line 1232
    :catch_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 811
    :pswitch_2e
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->fromAtlStatus(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->toDataSyncAtlCmd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAtlEffect(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 812
    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->fromAtlStatus(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->toDataSyncAtlCmd()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9

    goto/16 :goto_31

    :pswitch_2f
    const/4 v1, 0x2

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    .line 1131
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9

    goto/16 :goto_31

    .line 945
    :pswitch_30
    :try_start_29
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_72

    goto :goto_1a

    :cond_72
    move v2, v9

    :goto_1a
    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setParkDropdownMenuEnable(Z)V

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 946
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_29} :catch_29

    goto/16 :goto_31

    .line 948
    :catch_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 664
    :pswitch_31
    :try_start_2a
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_73

    move v1, v2

    goto :goto_1b

    :cond_73
    move v1, v9

    :goto_1b
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setRearSeatWelcomeMode(Z)V
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_2a} :catch_2a

    goto :goto_1c

    .line 667
    :catch_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 1000
    :pswitch_32
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$000(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$100(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;

    move-result-object v0

    if-eqz v0, :cond_74

    .line 1001
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$100(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;->requestCarLicensePlate()V

    :cond_74
    :goto_1c
    move v9, v2

    goto/16 :goto_31

    :pswitch_33
    const/4 v1, 0x2

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    .line 1254
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9

    goto/16 :goto_31

    .line 755
    :pswitch_34
    :try_start_2b
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_75

    move v1, v2

    goto :goto_1d

    :cond_75
    move v1, v9

    :goto_1d
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setChildLeftLock(Z)V
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_2b} :catch_2b

    goto :goto_1c

    .line 758
    :catch_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 1211
    :pswitch_35
    :try_start_2c
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setUserDefineDriveMode(I)V

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 1212
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_2c} :catch_2c

    goto/16 :goto_31

    .line 1214
    :catch_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 646
    :pswitch_36
    :try_start_2d
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_76

    move v1, v2

    goto :goto_1e

    :cond_76
    move v1, v9

    :goto_1e
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setWelcomeMode(Z)V
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_2d} :catch_2d

    goto/16 :goto_1c

    .line 649
    :catch_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 1202
    :pswitch_37
    :try_start_2e
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_77

    move v1, v2

    goto :goto_1f

    :cond_77
    move v1, v9

    :goto_1f
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNewDriveXPedalMode(Z)V
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_2e} :catch_2e

    goto/16 :goto_1c

    .line 1205
    :catch_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 850
    :pswitch_38
    :try_start_2f
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_78

    goto :goto_20

    :cond_78
    move v2, v9

    :goto_20
    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setLluSw(Z)V

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 851
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_2f} :catch_2f

    goto/16 :goto_31

    .line 853
    :catch_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 747
    :pswitch_39
    :try_start_30
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setUnlockResponse(I)V

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 748
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_30} :catch_30

    goto/16 :goto_31

    .line 750
    :catch_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 614
    :pswitch_3a
    :try_start_31
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_79

    goto :goto_21

    :cond_79
    move v2, v9

    :goto_21
    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setEsp(Z)V

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 615
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_31

    goto/16 :goto_31

    .line 617
    :catch_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 1056
    :pswitch_3b
    :try_start_32
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_7a

    move v1, v2

    goto :goto_22

    :cond_7a
    move v1, v9

    :goto_22
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNgpSw(Z)V
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_32} :catch_32

    goto/16 :goto_1c

    .line 1059
    :catch_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    :pswitch_3c
    :try_start_33
    const-string v0, ","

    .line 840
    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 841
    iget-object v1, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v1

    aget-object v3, v0, v9

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAtlDualColor(II)V

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 842
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_33} :catch_33

    goto/16 :goto_31

    .line 844
    :catch_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 1008
    :pswitch_3d
    :try_start_34
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_7b

    move v1, v2

    goto :goto_23

    :cond_7b
    move v1, v9

    :goto_23
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setLccSw(Z)V
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_34} :catch_34

    goto/16 :goto_1c

    .line 1011
    :catch_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 1048
    :pswitch_3e
    :try_start_35
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_7c

    move v1, v2

    goto :goto_24

    :cond_7c
    move v1, v9

    :goto_24
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setMemParkSw(Z)V
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_35} :catch_35

    goto/16 :goto_1c

    .line 1051
    :catch_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 625
    :pswitch_3f
    :try_start_36
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_7d

    goto :goto_25

    :cond_7d
    move v2, v9

    :goto_25
    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->setAvhSw(Z)V

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 626
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_36} :catch_36

    goto/16 :goto_31

    .line 628
    :catch_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 804
    :pswitch_40
    :try_start_37
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_7e

    goto :goto_26

    :cond_7e
    move v2, v9

    :goto_26
    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAtlSw(Z)V

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 805
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_37} :catch_37

    goto/16 :goto_31

    .line 807
    :catch_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    :pswitch_41
    const/4 v1, 0x2

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    .line 1258
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9

    goto/16 :goto_31

    :pswitch_42
    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 729
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9

    goto/16 :goto_31

    :pswitch_43
    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 621
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9

    goto/16 :goto_31

    :pswitch_44
    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 954
    :try_start_38
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_38} :catch_38

    goto/16 :goto_31

    .line 956
    :catch_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 936
    :pswitch_45
    :try_start_39
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_7f

    move v1, v2

    goto :goto_27

    :cond_7f
    move v1, v9

    :goto_27
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setCwcSw(Z)V
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_39} :catch_39

    goto/16 :goto_1c

    .line 939
    :catch_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    :pswitch_46
    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 734
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9

    goto/16 :goto_31

    .line 1016
    :pswitch_47
    :try_start_3a
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_80

    move v1, v2

    goto :goto_28

    :cond_80
    move v1, v9

    :goto_28
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAlcSw(Z)V
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_3a} :catch_3a

    goto/16 :goto_1c

    .line 1019
    :catch_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 885
    :pswitch_48
    :try_start_3b
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setBootEffect(I)V

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 886
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_3b} :catch_3b

    goto/16 :goto_31

    .line 888
    :catch_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 581
    :pswitch_49
    :try_start_3c
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->setDriveModeByUser(I)V
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_3c} :catch_3c

    goto/16 :goto_1c

    .line 584
    :catch_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    :pswitch_4a
    const/4 v1, 0x2

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    .line 1123
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9

    goto/16 :goto_31

    .line 739
    :pswitch_4b
    :try_start_3d
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_81

    move v1, v2

    goto :goto_29

    :cond_81
    move v1, v9

    :goto_29
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setParkAutoUnlock(Z)V
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_3d .. :try_end_3d} :catch_3d

    goto/16 :goto_1c

    .line 742
    :catch_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    :pswitch_4c
    const/4 v1, 0x2

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    .line 1139
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9

    goto/16 :goto_31

    .line 1238
    :pswitch_4d
    :try_start_3e
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_82

    move v1, v2

    goto :goto_2a

    :cond_82
    move v1, v9

    :goto_2a
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAsCampingModeStatus(Z)V
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_3e .. :try_end_3e} :catch_3e

    goto/16 :goto_1c

    .line 1241
    :catch_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 1097
    :pswitch_4e
    :try_start_3f
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_83

    move v1, v2

    goto :goto_2b

    :cond_83
    move v1, v9

    :goto_2b
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setLccSafeExamResult(Z)V
    :try_end_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_3f} :catch_3f

    goto/16 :goto_1c

    .line 1100
    :catch_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 1106
    :pswitch_4f
    :try_start_40
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_84

    move v1, v2

    goto :goto_2c

    :cond_84
    move v1, v9

    :goto_2c
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setLccVideoWatched(Z)V
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_40 .. :try_end_40} :catch_40

    goto/16 :goto_1c

    .line 1109
    :catch_40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    :pswitch_50
    const/4 v1, 0x2

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    .line 1127
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9

    goto/16 :goto_31

    .line 989
    :pswitch_51
    :try_start_41
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setSdcBrakeCloseCfg(I)V
    :try_end_41
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_41} :catch_41

    goto/16 :goto_1c

    .line 992
    :catch_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 1144
    :pswitch_52
    :try_start_42
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_85

    move v1, v2

    goto :goto_2d

    :cond_85
    move v1, v9

    :goto_2d
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setApaSafeExamResult(Z)V
    :try_end_42
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_42} :catch_42

    goto/16 :goto_1c

    .line 1147
    :catch_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    :pswitch_53
    const/4 v1, 0x2

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    .line 1161
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9

    goto/16 :goto_31

    .line 673
    :pswitch_54
    :try_start_43
    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 674
    rem-int/2addr v0, v1

    if-nez v0, :cond_86

    .line 675
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager;->resumeAllDropdownMenu()V

    goto/16 :goto_31

    .line 677
    :cond_86
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager;->removeAllDropdownMenu()V
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_43 .. :try_end_43} :catch_43

    goto/16 :goto_31

    .line 680
    :catch_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 824
    :pswitch_55
    :try_start_44
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_87

    goto :goto_2e

    :cond_87
    move v2, v9

    :goto_2e
    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAtlDualColorSw(Z)V

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 825
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9
    :try_end_44
    .catch Ljava/lang/NumberFormatException; {:try_start_44 .. :try_end_44} :catch_44

    goto/16 :goto_31

    .line 827
    :catch_44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    .line 1220
    :pswitch_56
    :try_start_45
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_88

    move v1, v2

    goto :goto_2f

    :cond_88
    move v1, v9

    :goto_2f
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setTrailerHitchStatus(Z)V
    :try_end_45
    .catch Ljava/lang/NumberFormatException; {:try_start_45 .. :try_end_45} :catch_45

    goto/16 :goto_1c

    .line 1223
    :catch_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    .line 771
    :pswitch_57
    :try_start_46
    iget-object v0, v6, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_89

    move v1, v2

    goto :goto_30

    :cond_89
    move v1, v9

    :goto_30
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setLeftDoorHotKey(Z)V
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_46 .. :try_end_46} :catch_46

    goto/16 :goto_1c

    .line 774
    :catch_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_31
    return v9

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d17b34f -> :sswitch_58
        -0x786aa23a -> :sswitch_57
        -0x76bf0a03 -> :sswitch_56
        -0x76baffae -> :sswitch_55
        -0x763f73bc -> :sswitch_54
        -0x742a185c -> :sswitch_53
        -0x738bcfc5 -> :sswitch_52
        -0x725fc97e -> :sswitch_51
        -0x6fdbb749 -> :sswitch_50
        -0x6ec4d122 -> :sswitch_4f
        -0x6e154742 -> :sswitch_4e
        -0x6ace7036 -> :sswitch_4d
        -0x6a62c101 -> :sswitch_4c
        -0x6978c0e1 -> :sswitch_4b
        -0x675d3705 -> :sswitch_4a
        -0x65505882 -> :sswitch_49
        -0x64e39f18 -> :sswitch_48
        -0x61e2c685 -> :sswitch_47
        -0x60deeb4f -> :sswitch_46
        -0x5ec7d8c1 -> :sswitch_45
        -0x5e50a8f9 -> :sswitch_44
        -0x58a09ac5 -> :sswitch_43
        -0x57bdee70 -> :sswitch_42
        -0x53e4ba36 -> :sswitch_41
        -0x53ca5cb0 -> :sswitch_40
        -0x52de31ee -> :sswitch_3f
        -0x529d23cc -> :sswitch_3e
        -0x529a10ba -> :sswitch_3d
        -0x4ef52bb7 -> :sswitch_3c
        -0x4d1d9dbf -> :sswitch_3b
        -0x4bdead24 -> :sswitch_3a
        -0x418c1012 -> :sswitch_39
        -0x3eaf3854 -> :sswitch_38
        -0x3812c4d8 -> :sswitch_37
        -0x34856206 -> :sswitch_36
        -0x32f4f900 -> :sswitch_35
        -0x30a50b90 -> :sswitch_34
        -0x2f152d43 -> :sswitch_33
        -0x2a5aea1d -> :sswitch_32
        -0x22b79f1b -> :sswitch_31
        -0x1cb527ad -> :sswitch_30
        -0x1a943209 -> :sswitch_2f
        -0x1a4b3601 -> :sswitch_2e
        -0x16adc2e6 -> :sswitch_2d
        -0x1658d42d -> :sswitch_2c
        -0x147d977d -> :sswitch_2b
        -0x118ab9f2 -> :sswitch_2a
        -0x10abfb8f -> :sswitch_29
        -0x1012193f -> :sswitch_28
        -0xee6b6de -> :sswitch_27
        -0xdb8aefa -> :sswitch_26
        -0xba14d98 -> :sswitch_25
        -0x79a92ae -> :sswitch_24
        -0x4eb578e -> :sswitch_23
        0x1845f -> :sswitch_22
        0x18928 -> :sswitch_21
        0x18974 -> :sswitch_20
        0x1ba56 -> :sswitch_1f
        0xa0fc55 -> :sswitch_1e
        0x1dd1777 -> :sswitch_1d
        0x2006ba3 -> :sswitch_1c
        0x1abb43dc -> :sswitch_1b
        0x1ca4e529 -> :sswitch_1a
        0x1dd7618e -> :sswitch_19
        0x2264dc6d -> :sswitch_18
        0x24fcbcf6 -> :sswitch_17
        0x25da2726 -> :sswitch_16
        0x2f8c2ffe -> :sswitch_15
        0x302dcda9 -> :sswitch_14
        0x337f3240 -> :sswitch_13
        0x3de7268d -> :sswitch_12
        0x3fc64d3a -> :sswitch_11
        0x4144433b -> :sswitch_10
        0x46bb1022 -> :sswitch_f
        0x4db1fb32 -> :sswitch_e
        0x4eda9db7 -> :sswitch_d
        0x507ddcff -> :sswitch_c
        0x5737ee77 -> :sswitch_b
        0x578a360b -> :sswitch_a
        0x57929718 -> :sswitch_9
        0x62229669 -> :sswitch_8
        0x653b141c -> :sswitch_7
        0x6b8665b5 -> :sswitch_6
        0x742ea301 -> :sswitch_5
        0x74ac7e75 -> :sswitch_4
        0x74d00880 -> :sswitch_3
        0x7569dda6 -> :sswitch_2
        0x7b2b7092 -> :sswitch_1
        0x7ccb1284 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_46
        :pswitch_18
        :pswitch_17
        :pswitch_16
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

.method updateQuickControlLocked(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "value",
            "makeDefault",
            "forceNotify"
        }
    .end annotation

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateQuickControlLocked name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarControlProvider"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v4, "left_charge_port"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "mirror_fold_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "open_rear_trunk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x6

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "right_charge_port_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "left_charge_port_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v7, 0x4

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v7, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "mirror_fold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v7, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "reset_charge_port"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move v7, v6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v0, "right_charge_port"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    move v7, v5

    :goto_0
    const-string v0, " for name: "

    const-string v8, "Invalid value: "

    packed-switch v7, :pswitch_data_0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 511
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v5

    goto/16 :goto_5

    :pswitch_0
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 477
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v5

    goto/16 :goto_5

    .line 506
    :pswitch_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->unlockTrunk()V

    :goto_1
    move v5, v6

    goto/16 :goto_5

    :pswitch_2
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 502
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v5

    goto/16 :goto_5

    .line 469
    :pswitch_3
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;

    move-result-object v4

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v6, :cond_8

    move v7, v6

    goto :goto_2

    :cond_8
    move v7, v5

    :goto_2
    invoke-virtual {v4, v7}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->controlMirrorFold(Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 472
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 482
    :pswitch_4
    :try_start_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodySmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodySmartControl;

    move-result-object v4

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v6, :cond_9

    move v7, v6

    goto :goto_3

    :cond_9
    move v7, v5

    :goto_3
    invoke-virtual {v4, v7}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodySmartControl;->resetChargePort(Z)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 485
    :catch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 492
    :pswitch_5
    :try_start_2
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodySmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodySmartControl;

    move-result-object v7

    .line 493
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v6, :cond_a

    move v9, v6

    goto :goto_4

    :cond_a
    move v9, v5

    .line 492
    :goto_4
    invoke-virtual {v7, v4, v9}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodySmartControl;->controlChargePort(ZZ)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 496
    :catch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return v5

    :sswitch_data_0
    .sparse-switch
        -0x7af46a77 -> :sswitch_7
        -0x708c43c4 -> :sswitch_6
        -0x67fa277f -> :sswitch_5
        -0x3956150c -> :sswitch_4
        -0x15d5f47a -> :sswitch_3
        0x4924b25b -> :sswitch_2
        0x4b516c6e -> :sswitch_1
        0x52eedb53 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method updateSystemControlLocked(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "value",
            "makeDefault",
            "forceNotify"
        }
    .end annotation

    const-string v0, "hvac"

    .line 405
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "hvac_pm25"

    .line 409
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "CarControlProvider"

    if-nez v0, :cond_1

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateSystemControlLocked name: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", value: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "drive_mode_set"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string v5, "cc_ready"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v5, "central_lock_set"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :sswitch_3
    const-string v5, "hvac_back_defrost_set"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_0

    :cond_5
    move v0, v6

    :goto_0
    const-string v5, " for name: "

    const-string v7, "Invalid value: "

    const-string v8, "Service ViewModel not initialized"

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 455
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v1

    goto/16 :goto_4

    .line 443
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$000(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$100(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 445
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$100(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;

    move-result-object v0

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;->setDriveMode(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 448
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 451
    :cond_6
    invoke-static {v4, v8}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_1
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 440
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->insertSettingLocked(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v1

    goto/16 :goto_4

    .line 428
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$000(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$100(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 430
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$100(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;

    move-result-object v0

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v1, :cond_7

    move v8, v1

    goto :goto_1

    :cond_7
    move v8, v6

    :goto_1
    invoke-interface {v0, v8}, Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;->setCentralLock(Z)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 433
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 436
    :cond_8
    invoke-static {v4, v8}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 415
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$000(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$100(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 418
    :try_start_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->access$100(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;

    move-result-object v0

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v1, :cond_9

    move v8, v1

    goto :goto_2

    :cond_9
    move v8, v6

    :goto_2
    invoke-interface {v0, v8}, Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;->setMirrorHeatEnable(Z)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 421
    :catch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 424
    :cond_a
    invoke-static {v4, v8}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move v1, v6

    :goto_4
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x575717a3 -> :sswitch_3
        0x2d9cbad8 -> :sswitch_2
        0x49af8104 -> :sswitch_1
        0x7bb64edb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
