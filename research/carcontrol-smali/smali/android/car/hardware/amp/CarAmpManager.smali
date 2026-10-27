.class public final Landroid/car/hardware/amp/CarAmpManager;
.super Landroid/car/hardware/CarEcuManager;
.source "CarAmpManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/amp/CarAmpManager$CarAmpEventCallback;,
        Landroid/car/hardware/amp/CarAmpManager$PropertyId;
    }
.end annotation


# static fields
.field public static final AMP_A2B_LINK_STATUS_NG:I = 0x2

.field public static final AMP_A2B_LINK_STATUS_OK:I = 0x1

.field public static final AMP_AFFECT_DYNAUDIO:I = 0x1

.field public static final AMP_AFFECT_SURROUND:I = 0x3

.field public static final AMP_AFFECT_XAUDIO:I = 0x2

.field public static final AMP_DOLBY_2_0:I = 0x0

.field public static final AMP_DOLBY_5_1:I = 0x2

.field public static final AMP_DOLBY_5_1_2:I = 0x3

.field public static final AMP_DOLBY_5_1_4:I = 0x4

.field public static final AMP_DOLBY_7_1:I = 0x5

.field public static final AMP_DOLBY_7_1_2:I = 0x6

.field public static final AMP_DOLBY_7_1_4:I = 0x1

.field public static final AMP_DOLBY_MUSIC_TUNNING_TYPE0:I = 0x1

.field public static final AMP_DOLBY_MUSIC_TUNNING_TYPE1:I = 0x2

.field public static final AMP_DOLBY_MUSIC_TUNNING_TYPE2:I = 0x3

.field public static final AMP_DOLBY_MUSIC_TUNNING_TYPE3:I = 0x4

.field public static final AMP_EFFECT_ST_DYNAUDIO_AUTHENTIC:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AMP_EFFECT_ST_DYNAUDIO_DYNAMIC:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AMP_EFFECT_ST_DYNAUDIO_SOFT:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AMP_EFFECT_ST_DYNAUDIO_SPEECH:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AMP_EFFECT_ST_NO_COMMAND:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AMP_EFFECT_ST_X_SOUND_COMMON:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AMP_EFFECT_ST_X_SOUND_HUMAN_VOICE:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AMP_EFFECT_ST_X_SOUND_JAZZ:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AMP_EFFECT_ST_X_SOUND_ROCK:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AMP_FRONT_LEFT_TRACK:I = 0x1

.field public static final AMP_FRONT_RIGHT_TRACK:I = 0x2

.field public static final AMP_FRONT_TRACK:I = 0x7

.field public static final AMP_HEADREST_LEFT_TRACK:I = 0x5

.field public static final AMP_HEADREST_RIGHT_TRACK:I = 0x6

.field public static final AMP_LEV_1:I = 0x1

.field public static final AMP_LEV_2:I = 0x2

.field public static final AMP_LEV_3:I = 0x3

.field public static final AMP_LEV_4:I = 0x4

.field public static final AMP_LEV_5:I = 0x5

.field public static final AMP_LEV_6:I = 0x6

.field public static final AMP_LEV_7:I = 0x7

.field public static final AMP_LEV_NO_COMMAND:I = 0x14

.field public static final AMP_LEV_OFF:I = 0x0

.field public static final AMP_MUSICSCENE_CHURCH:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AMP_MUSICSCENE_FUNCTION_HALL:I = 0x2

.field public static final AMP_MUSICSCENE_KTV:I = 0x3

.field public static final AMP_MUSICSCENE_MUSIC_HALL:I = 0x4

.field public static final AMP_MUSICSCENE_OFF:I = 0x5

.field public static final AMP_MUSICSCENE_THEATER:I = 0x1

.field public static final AMP_REAR_LEFT_TRACK:I = 0x3

.field public static final AMP_REAR_RIGHT_TRACK:I = 0x4

.field public static final AMP_REAR_TRACK:I = 0x8

.field public static final AMP_SDSSC_LEV_1:I = 0x1

.field public static final AMP_SDSSC_LEV_2:I = 0x2

.field public static final AMP_SDSSC_LEV_3:I = 0x3

.field public static final AMP_SDSSC_LEV_4:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AMP_SDSSC_LEV_OFF:I = 0x0

.field public static final AMP_SOUND_FIELD_ALL:I = 0xf

.field public static final AMP_SOUND_FIELD_DRIVER:I = 0x2

.field public static final AMP_SOUND_FIELD_DRIVER_LEFT_HEADREST:I = 0xd

.field public static final AMP_SOUND_FIELD_DRIVER_RIGHT_HEADREST:I = 0xe

.field public static final AMP_SOUND_FIELD_FRONT_MIDDLE:I = 0xc

.field public static final AMP_SOUND_FIELD_MIDDLE:I = 0x8

.field public static final AMP_SOUND_FIELD_OFF:I = 0x1

.field public static final AMP_SOUND_FIELD_PASSENGER:I = 0x3

.field public static final AMP_SOUND_FIELD_REAR_MIDDLE:I = 0x7

.field public static final AMP_SOUND_FIELD_RL_PASSENGER:I = 0x9

.field public static final AMP_SOUND_FIELD_RR_PASSENGER:I = 0xa

.field public static final AMP_SOUND_FIELD_SURROUND:I = 0xb

.field public static final AMP_SOUND_FIELD_THIRD_MIDDLE:I = 0x4

.field public static final AMP_SOUND_STYLE_AUTHENTIC:I = 0x0

.field public static final AMP_SOUND_STYLE_DYNAMIC:I = 0x1

.field public static final AMP_SOUND_STYLE_MOVIE:I = 0x2

.field public static final AMP_SOUND_STYLE_SOFT:I = 0x4

.field public static final AMP_SOUND_STYLE_UPSURGE:I = 0x5

.field public static final AMP_SOUND_STYLE_USEREQ:I = 0x3

.field public static final AMP_STATUS_OFF:I = 0x0

.field public static final AMP_STATUS_ON:I = 0x1

.field public static final AMP_STYLE_DYNAUDIO_DYNAMIC:I = 0x7

.field public static final AMP_STYLE_DYNAUDIO_HUMAN_VOICE:I = 0x8

.field public static final AMP_STYLE_DYNAUDIO_SOFT:I = 0x6

.field public static final AMP_STYLE_DYNAUDIO_TRUE:I = 0x5

.field public static final AMP_STYLE_XSOUND_COMMON:I = 0x1

.field public static final AMP_STYLE_XSOUND_HUMAN_VOICE:I = 0x2

.field public static final AMP_STYLE_XSOUND_JAZZ:I = 0x3

.field public static final AMP_STYLE_XSOUND_ROCK:I = 0x4

.field private static final DBG:Z = false

.field public static final ID_AMP_A2B_LINK_STATUS:I = 0x21402019

.field public static final ID_AMP_ALLCHANNEL_STATUS:I = 0x2141200b

.field public static final ID_AMP_ALLCHANNEL_VOLUME:I = 0x2141200a

.field public static final ID_AMP_AUDIOAFFETSW:I = 0x21402002

.field public static final ID_AMP_BODY_CTRL:I = 0x21702001

.field public static final ID_AMP_DOLBY_ATOMS_SW:I = 0x21402011
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_AMP_DOLBY_TONNING_TYPE:I = 0x2140201b

.field public static final ID_AMP_DYN_3D_EFFECT:I = 0x21402014

.field public static final ID_AMP_DYN_SDVC_LEV:I = 0x21402013
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_AMP_EFFECT_ST:I = 0x21402012
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_AMP_FREE_SOUND_FIELD_CONTROL:I = 0x2141201c

.field public static final ID_AMP_FREQ_GAIN_GROUP_CTRL:I = 0x21412018

.field public static final ID_AMP_GROUP_SW_CTRL:I = 0x2170200f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_AMP_GROUP_VOL_CTRL:I = 0x21702010
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_AMP_MUTESW:I = 0x21402003

.field public static final ID_AMP_POWER_REQ:I = 0x21401d11

.field public static final ID_AMP_SCENE:I = 0x21402006

.field public static final ID_AMP_SDSSC_LEV_SW:I = 0x21402015

.field public static final ID_AMP_SOUNDFIELD:I = 0x21402008

.field public static final ID_AMP_SOUND_SOURCE_DOLBY_ST:I = 0x21402016

.field public static final ID_AMP_SOUND_STYLE_SW:I = 0x21402017

.field public static final ID_AMP_STYLE:I = 0x21402005

.field public static final ID_AMP_SW_CTRL:I = 0x2170200d

.field public static final ID_AMP_VOLUME_VALUE:I = 0x2140200c

.field public static final ID_AMP_VOL_CTRL:I = 0x2170200e

.field public static final ID_XCCP_AUDIO_3D_EFFECT_STATUS:I = 0x21405a21

.field public static final ID_XCCP_AUDIO_EQ_FREEGAIN_ST:I = 0x21415a24

.field public static final ID_XCCP_AUDIO_MEDIA_VOLUME:I = 0x21405a23

.field public static final ID_XCCP_AUDIO_MUTE_STATUS:I = 0x21405a30

.field public static final ID_XCCP_AUDIO_SDSSC_LEV_STATUS:I = 0x21405a22

.field public static final ID_XCCP_AUDIO_SOUND_STYLE_STATUS:I = 0x21405a20

.field private static final TAG:Ljava/lang/String; = "CarAmpManager"


# instance fields
.field private final mAmpPropertyIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    const/4 p3, 0x0

    const-string p4, "CarAmpManager"

    .line 865
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 819
    new-instance p1, Landroid/util/ArraySet;

    const/16 p2, 0x1a

    new-array p2, p2, [Ljava/lang/Integer;

    const p4, 0x21402005

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const p3, 0x21402006

    .line 820
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, p2, p4

    const p3, 0x21402008

    .line 821
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, p2, p4

    const p3, 0x21402002

    .line 822
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x3

    aput-object p3, p2, p4

    const p3, 0x21402003

    .line 823
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x4

    aput-object p3, p2, p4

    const p3, 0x21702001

    .line 824
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x5

    aput-object p3, p2, p4

    const p3, 0x2141200a

    .line 825
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x6

    aput-object p3, p2, p4

    const p3, 0x2141200b

    .line 826
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x7

    aput-object p3, p2, p4

    const p3, 0x2140200c

    .line 827
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8

    aput-object p3, p2, p4

    const p3, 0x21401d11

    .line 828
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9

    aput-object p3, p2, p4

    const p3, 0x2170200d

    .line 829
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa

    aput-object p3, p2, p4

    const p3, 0x2170200e

    .line 830
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb

    aput-object p3, p2, p4

    const p3, 0x21402014

    .line 831
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc

    aput-object p3, p2, p4

    const p3, 0x21402015

    .line 832
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd

    aput-object p3, p2, p4

    const p3, 0x21402016

    .line 833
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xe

    aput-object p3, p2, p4

    const p3, 0x21402017

    .line 834
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xf

    aput-object p3, p2, p4

    const p3, 0x21412018

    .line 835
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x10

    aput-object p3, p2, p4

    const p3, 0x21402019

    .line 836
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x11

    aput-object p3, p2, p4

    const p3, 0x2140201b

    .line 837
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x12

    aput-object p3, p2, p4

    const p3, 0x2141201c

    .line 838
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x13

    aput-object p3, p2, p4

    const p3, 0x21405a20

    .line 839
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x14

    aput-object p3, p2, p4

    const p3, 0x21405a22

    .line 840
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x15

    aput-object p3, p2, p4

    const p3, 0x21405a21

    .line 841
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x16

    aput-object p3, p2, p4

    const p3, 0x21405a23

    .line 842
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x17

    aput-object p3, p2, p4

    const p3, 0x21415a24

    .line 843
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x18

    aput-object p3, p2, p4

    const p3, 0x21405a30

    .line 844
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x19

    aput-object p3, p2, p4

    .line 819
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/car/hardware/amp/CarAmpManager;->mAmpPropertyIds:Landroid/util/ArraySet;

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_amp"

    return-object v0
.end method

.method public static isZonedProperty(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getA2BLinkStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1590
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAmpA2BLinkStatus()I

    move-result v0

    return v0
.end method

.method public getAllChannelSoundSource()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1150
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getApmAllChannelSoundSource()[I

    move-result-object v0

    return-object v0
.end method

.method public getAllChannelVolume()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1136
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getApmAllChannelVolume()[I

    move-result-object v0

    return-object v0
.end method

.method public getAmpEffectStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1332
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAmpEffectStatus()I

    move-result v0

    return v0
.end method

.method public getAmpFreeSoundFieldCoordinate()[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1678
    fill-array-data v0, :array_0

    .line 1681
    :try_start_0
    iget-object v1, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAmpFreeSoundFieldCoordinate()[I

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 1683
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "throw Exception e "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarAmpManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public getAmpMute()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1084
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->isAmpMute()I

    move-result v0

    return v0
.end method

.method public getAmpPowerRequestSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1198
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAmpPowerRequestSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getAmpSoundField()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 997
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAmpSoundFieldMode()I

    move-result v0

    return v0
.end method

.method public getAudioAffect()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1046
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getApmAudioEffect()I

    move-result v0

    return v0
.end method

.method public getDolbyAtomsMusicTonningType()I
    .locals 4

    const v0, 0x2140201b

    const/4 v1, 0x0

    .line 1637
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/amp/CarAmpManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "throw Exception e "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarAmpManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getDyn3DEffectLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1416
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAmpDyn3DEffectLevel()I

    move-result v0

    return v0
.end method

.method public getDynSdvcLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1377
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAmpDynSdvcLevel()I

    move-result v0

    return v0
.end method

.method public getFreqGainGroupControlValue()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1571
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAmpFreqGainGroupControlValue()[I

    move-result-object v0

    return-object v0
.end method

.method public getMusicScene()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 949
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAmpMusicScene()I

    move-result v0

    return v0
.end method

.method public getMusicStyle()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 908
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAmpMusicStyle()I

    move-result v0

    return v0
.end method

.method protected getPropertyIds()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 880
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mAmpPropertyIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getSdsscLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1454
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAmpSdsscLevel()I

    move-result v0

    return v0
.end method

.method public getSoundSourceDolbyFormat()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1498
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAmpSoundSourceDolbyFormat()I

    move-result v0

    return v0
.end method

.method public getSoundStyle()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1540
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAmpSoundStyle()I

    move-result v0

    return v0
.end method

.method public sendCduVolumeToAmp(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1164
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendCduVolumeToAmp(I)V

    return-void
.end method

.method public setAmpChanVolSource(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1122
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAmpChannelVolAndSource(IIII)V

    return-void
.end method

.method public setAmpChannelSwitchControlStatus([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1212
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAmpChannelSwitchControlStatus([B)V

    return-void
.end method

.method public setAmpChannelVolumeControlValue([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1226
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAmpChannelVolumeControlValue([B)V

    return-void
.end method

.method public setAmpEffectStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1307
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAmpEffectStatus(I)V

    return-void
.end method

.method public setAmpFreeSoundFieldCoordinate(II)I
    .locals 1

    .line 1658
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAmpFreeSoundFieldCoordinate(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 1660
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "throw Exception e "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CarAmpManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setAmpGroupSwitchControlStatus([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1243
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAmpGroupSwitchControlStatus([B)V

    return-void
.end method

.method public setAmpGroupVolumeControlValue([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1260
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAmpGroupVolumeControlValue([B)V

    return-void
.end method

.method public setAmpMute(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1101
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAmpMute(I)V

    return-void
.end method

.method public setAmpPowerRequestSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1181
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAmpPowerRequestSwitchStatus(I)V

    return-void
.end method

.method public setAmpSoundField(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1025
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAmpSoundFieldMode(I)V

    return-void
.end method

.method public setAudioAffect(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1067
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setApmAudioEffect(I)V

    return-void
.end method

.method public setAudioDebugCduVolume(I)I
    .locals 2

    .line 1782
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAudioDebugCduVolume(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 1784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAudioDebugCduVolume throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarAmpManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setAudioDebugDyn3DEffectLevel(I)I
    .locals 2

    .line 1761
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAudioDebugDyn3DEffectLevel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 1763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAudioDebugDyn3DEffectLevel throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarAmpManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setAudioDebugFreqGainGroupControlValue([I)I
    .locals 2

    .line 1801
    array-length v0, p1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 1806
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAudioDebugFreqGainGroupControlValue([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 1808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAudioDebugFreqGainGroupControlValue throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarAmpManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    .line 1802
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setAudioDebugMuteStatus(I)I
    .locals 2

    .line 1831
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAudioDebugMuteStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 1833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAudioDebugMuteStatus throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarAmpManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setAudioDebugSdsscLevel(I)I
    .locals 2

    .line 1734
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAudioDebugSdsscLevel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 1736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAudioDebugSdsscLevel throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarAmpManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setAudioDebugSoundStyle(I)I
    .locals 2

    .line 1709
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAudioDebugSoundStyle(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 1711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAudioDebugSoundStyle throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarAmpManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setDolbyAtomsMusicTonningType(I)I
    .locals 2

    const v0, 0x2140201b

    const/4 v1, 0x0

    .line 1610
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/amp/CarAmpManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 1612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarAmpManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setDolbyAtomsSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1280
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAmpDolbyAtomsSwitchStatus(I)V

    return-void
.end method

.method public setDyn3DEffectLevel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1397
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAmpDyn3DEffectLevel(I)V

    return-void
.end method

.method public setDynSdvcLevel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1355
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAmpDynSdvcLevel(I)V

    return-void
.end method

.method public setFreqGainGroupControlValue([I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1554
    array-length v0, p1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 1557
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAmpFreqGainGroupControlValue([I)V

    return-void

    .line 1555
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setMusicScene(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 969
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAmpMusicScene(I)V

    return-void
.end method

.method public setMusicStyle(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 930
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAmpMusicStyle(I)V

    return-void
.end method

.method public setSdsscLevel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1435
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAmpSdsscLevel(I)V

    return-void
.end method

.method public setSoundSourceDolbyFormat(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1476
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAmpSoundSourceDolbyFormat(I)V

    return-void
.end method

.method public setSoundStyle(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1519
    iget-object v0, p0, Landroid/car/hardware/amp/CarAmpManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAmpSoundStyle(I)V

    return-void
.end method
