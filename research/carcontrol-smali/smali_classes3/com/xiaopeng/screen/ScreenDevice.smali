.class public Lcom/xiaopeng/screen/ScreenDevice;
.super Ljava/lang/Object;
.source "ScreenDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/screen/ScreenDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_CIC:Ljava/lang/String; = "xp_mt_cic"

.field public static final DEVICE_CNSL:Ljava/lang/String; = "xp_mt_cnsl"

.field public static final DEVICE_DLP:Ljava/lang/String; = "xp_mt_dlp"

.field public static final DEVICE_HUD:Ljava/lang/String; = "xp_mt_hud"

.field public static final DEVICE_ICM:Ljava/lang/String; = "xp_mt_icm"

.field public static final DEVICE_IVI:Ljava/lang/String; = "xp_mt_ivi"

.field public static final DEVICE_PSG:Ljava/lang/String; = "xp_mt_psg"

.field public static final DEVICE_RSE:Ljava/lang/String; = "xp_mt_rse"

.field public static final DEVICE_WHUD:Ljava/lang/String; = "xp_mt_whud"

.field public static final SCREEN_CIC:I = 0x6

.field public static final SCREEN_CNSL:I = 0x4

.field public static final SCREEN_DLP:I = 0x7

.field public static final SCREEN_EIGHTH:I = 0x7

.field public static final SCREEN_END:I = 0x8

.field public static final SCREEN_FIFTH:I = 0x4

.field public static final SCREEN_FOURTH:I = 0x3

.field public static final SCREEN_HUD:I = 0x5

.field public static final SCREEN_ICM:I = 0x2

.field public static final SCREEN_IVI:I = 0x0

.field public static final SCREEN_NINTH:I = 0x8

.field public static final SCREEN_PRIMARY:I = 0x0

.field public static final SCREEN_PSG:I = 0x1

.field public static final SCREEN_RSE:I = 0x3

.field public static final SCREEN_SECONDARY:I = 0x1

.field public static final SCREEN_SEVENTH:I = 0x6

.field public static final SCREEN_SIXTH:I = 0x5

.field public static final SCREEN_START:I = 0x0

.field public static final SCREEN_THIRD:I = 0x2

.field public static final SCREEN_WHUD:I = 0x8

.field public static final TYPE_DISPLAY_DEVICE:I = 0x0

.field public static final TYPE_SHARING_DEVICE:I = 0x1

.field public static final UNIQUE_CIC:Ljava/lang/String; = "cic"

.field public static final UNIQUE_CNSL:Ljava/lang/String; = "cnsl"

.field public static final UNIQUE_DLP:Ljava/lang/String; = "dlp"

.field public static final UNIQUE_HUD:Ljava/lang/String; = "hud"

.field public static final UNIQUE_ICM:Ljava/lang/String; = "icm"

.field public static final UNIQUE_IVI:Ljava/lang/String; = "ivi"

.field public static final UNIQUE_PSG:Ljava/lang/String; = "psg"

.field public static final UNIQUE_RSE:Ljava/lang/String; = "rse"

.field public static final UNIQUE_WHUD:Ljava/lang/String; = "whud"


# instance fields
.field public configuration:Lcom/xiaopeng/screen/ScreenItemConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Lcom/xiaopeng/screen/ScreenDevice$1;

    invoke-direct {v0}, Lcom/xiaopeng/screen/ScreenDevice$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/screen/ScreenDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/screen/ScreenItemConfiguration;

    iput-object p1, p0, Lcom/xiaopeng/screen/ScreenDevice;->configuration:Lcom/xiaopeng/screen/ScreenItemConfiguration;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xiaopeng/screen/ScreenDevice$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/xiaopeng/screen/ScreenDevice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/screen/ScreenItemConfiguration;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/xiaopeng/screen/ScreenDevice;->configuration:Lcom/xiaopeng/screen/ScreenItemConfiguration;

    return-void
.end method

.method public static getDeviceName(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_mt_ivi"

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string/jumbo v0, "xp_mt_whud"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "xp_mt_dlp"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "xp_mt_cic"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "xp_mt_hud"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "xp_mt_cnsl"

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "xp_mt_rse"

    goto :goto_0

    :pswitch_6
    const-string/jumbo v0, "xp_mt_icm"

    goto :goto_0

    :pswitch_7
    const-string/jumbo v0, "xp_mt_psg"

    :goto_0
    :pswitch_8
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static getPropertyName(I)Ljava/lang/String;
    .locals 2

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.sys.xp.display.id."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getScreenId(Ljava/lang/String;)I
    .locals 11

    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v0, "xp_mt_rse"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v10, 0x11

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v0, "xp_mt_psg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v10, 0x10

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v0, "xp_mt_ivi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v10, 0xf

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v0, "xp_mt_icm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v10, 0xe

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v0, "xp_mt_hud"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v10, 0xd

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v0, "xp_mt_dlp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v10, 0xc

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v0, "xp_mt_cic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v10, 0xb

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v0, "xp_mt_whud"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v10, 0xa

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v0, "xp_mt_cnsl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v10, 0x9

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v0, "whud"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    move v10, v1

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "cnsl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    move v10, v2

    goto :goto_0

    :sswitch_b
    const-string v0, "rse"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    move v10, v3

    goto :goto_0

    :sswitch_c
    const-string v0, "psg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    move v10, v4

    goto :goto_0

    :sswitch_d
    const-string v0, "ivi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_0

    :cond_d
    move v10, v5

    goto :goto_0

    :sswitch_e
    const-string v0, "icm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_0

    :cond_e
    move v10, v6

    goto :goto_0

    :sswitch_f
    const-string v0, "hud"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_0

    :cond_f
    move v10, v7

    goto :goto_0

    :sswitch_10
    const-string v0, "dlp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_0

    :cond_10
    move v10, v8

    goto :goto_0

    :sswitch_11
    const-string v0, "cic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_0

    :cond_11
    move v10, v9

    :goto_0
    packed-switch v10, :pswitch_data_0

    :pswitch_0
    move v1, v9

    goto :goto_1

    :pswitch_1
    move v1, v5

    goto :goto_1

    :pswitch_2
    move v1, v6

    goto :goto_1

    :pswitch_3
    move v1, v8

    goto :goto_1

    :pswitch_4
    move v1, v7

    goto :goto_1

    :pswitch_5
    move v1, v4

    goto :goto_1

    :pswitch_6
    move v1, v2

    goto :goto_1

    :pswitch_7
    move v1, v3

    :goto_1
    :pswitch_8
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x180bd -> :sswitch_11
        0x184e8 -> :sswitch_10
        0x194f7 -> :sswitch_f
        0x19693 -> :sswitch_e
        0x198dc -> :sswitch_d
        0x1b2c4 -> :sswitch_c
        0x1ba44 -> :sswitch_b
        0x2eac04 -> :sswitch_a
        0x37ad20 -> :sswitch_9
        0x3e500555 -> :sswitch_8
        0x3e590671 -> :sswitch_7
        0x5497394c -> :sswitch_6
        0x54973d77 -> :sswitch_5
        0x54974d86 -> :sswitch_4
        0x54974f22 -> :sswitch_3
        0x5497516b -> :sswitch_2
        0x54976b53 -> :sswitch_1
        0x549772d3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_8
        :pswitch_1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static getUniqueName(I)Ljava/lang/String;
    .locals 1

    const-string v0, "ivi"

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string/jumbo v0, "whud"

    goto :goto_0

    :pswitch_1
    const-string v0, "dlp"

    goto :goto_0

    :pswitch_2
    const-string v0, "cic"

    goto :goto_0

    :pswitch_3
    const-string v0, "hud"

    goto :goto_0

    :pswitch_4
    const-string v0, "cnsl"

    goto :goto_0

    :pswitch_5
    const-string v0, "rse"

    goto :goto_0

    :pswitch_6
    const-string v0, "icm"

    goto :goto_0

    :pswitch_7
    const-string v0, "psg"

    :goto_0
    :pswitch_8
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static hasScreenDevice(Ljava/lang/String;)Z
    .locals 4

    .line 198
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 199
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v2, "whud"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "cnsl"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_2
    const-string v2, "rse"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_3
    const-string v2, "psg"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_4
    const-string v2, "ivi"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "icm"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_6
    const-string v2, "hud"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_7
    const-string v2, "dlp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    move v0, v3

    goto :goto_0

    :sswitch_8
    const-string v2, "cic"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    move v0, v1

    :goto_0
    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x180bd -> :sswitch_8
        0x184e8 -> :sswitch_7
        0x194f7 -> :sswitch_6
        0x19693 -> :sswitch_5
        0x198dc -> :sswitch_4
        0x1b2c4 -> :sswitch_3
        0x1ba44 -> :sswitch_2
        0x2eac04 -> :sswitch_1
        0x37ad20 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 67
    iget-object p2, p0, Lcom/xiaopeng/screen/ScreenDevice;->configuration:Lcom/xiaopeng/screen/ScreenItemConfiguration;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-object p2, p0, Lcom/xiaopeng/screen/ScreenDevice;->configuration:Lcom/xiaopeng/screen/ScreenItemConfiguration;

    invoke-virtual {p2, p1, v0}, Lcom/xiaopeng/screen/ScreenItemConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method
