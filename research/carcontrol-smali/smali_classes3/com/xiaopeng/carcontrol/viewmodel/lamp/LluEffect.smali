.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;
.super Ljava/lang/Enum;
.source "LluEffect.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

.field public static final enum AcCharged:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

.field public static final enum AwakeWait:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

.field public static final enum AwakeWait2:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

.field public static final enum AwakeWait3:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

.field public static final enum Dance:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

.field public static final enum DcCharged:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

.field public static final enum FindCar:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

.field public static final enum FullCharged:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

.field public static final enum Locking:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

.field public static final enum Locking2:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

.field public static final enum Locking3:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

.field public static final enum SYNC_DANCE_01_SHOW:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

.field public static final enum SYNC_DANCE_02_SHOW:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

.field public static final enum SYNC_DANCE_03_SHOW:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

.field public static final enum SYNC_DANCE_SHOW:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

.field public static final enum SayHi:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

.field public static final enum SayHi2:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

.field public static final enum SayHi3:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

.field public static final enum Sleep:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

.field public static final enum Sleep2:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

.field public static final enum Sleep3:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

.field public static final enum TakePhoto:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;


# instance fields
.field private mDescId:I

.field private mTitleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 17
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_dance:I

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_dance_desc:I

    const-string v3, "Dance"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->Dance:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    .line 22
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_show_off:I

    sget v3, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_show_off_desc:I

    const-string v5, "SayHi"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v3}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->SayHi:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    .line 23
    new-instance v2, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    sget v3, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_show_off:I

    sget v5, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_show_off_desc:I

    const-string v7, "SayHi2"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v3, v5}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->SayHi2:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    .line 24
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    sget v5, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_show_off:I

    sget v7, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_show_off_desc:I

    const-string v9, "SayHi3"

    const/4 v10, 0x3

    invoke-direct {v3, v9, v10, v5, v7}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->SayHi3:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    .line 29
    new-instance v5, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    sget v7, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_find_car:I

    sget v9, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_find_car_desc:I

    const-string v11, "FindCar"

    const/4 v12, 0x4

    invoke-direct {v5, v11, v12, v7, v9}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->FindCar:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    .line 34
    new-instance v7, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    sget v9, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_awake:I

    sget v11, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_awake_desc:I

    const-string v13, "AwakeWait"

    const/4 v14, 0x5

    invoke-direct {v7, v13, v14, v9, v11}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;-><init>(Ljava/lang/String;III)V

    sput-object v7, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->AwakeWait:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    .line 35
    new-instance v9, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    sget v11, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_awake:I

    sget v13, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_awake_desc:I

    const-string v15, "AwakeWait2"

    const/4 v14, 0x6

    invoke-direct {v9, v15, v14, v11, v13}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;-><init>(Ljava/lang/String;III)V

    sput-object v9, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->AwakeWait2:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    .line 36
    new-instance v11, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    sget v13, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_awake:I

    sget v15, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_awake_desc:I

    const-string v14, "AwakeWait3"

    const/4 v12, 0x7

    invoke-direct {v11, v14, v12, v13, v15}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;-><init>(Ljava/lang/String;III)V

    sput-object v11, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->AwakeWait3:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    .line 40
    new-instance v13, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    sget v14, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_sleep:I

    sget v15, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_sleep_desc:I

    const-string v12, "Sleep"

    const/16 v10, 0x8

    invoke-direct {v13, v12, v10, v14, v15}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;-><init>(Ljava/lang/String;III)V

    sput-object v13, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->Sleep:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    .line 41
    new-instance v12, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    sget v14, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_sleep:I

    sget v15, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_sleep_desc:I

    const-string v10, "Sleep2"

    const/16 v8, 0x9

    invoke-direct {v12, v10, v8, v14, v15}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;-><init>(Ljava/lang/String;III)V

    sput-object v12, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->Sleep2:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    .line 42
    new-instance v10, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    sget v14, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_sleep:I

    sget v15, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_sleep_desc:I

    const-string v8, "Sleep3"

    const/16 v6, 0xa

    invoke-direct {v10, v8, v6, v14, v15}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;-><init>(Ljava/lang/String;III)V

    sput-object v10, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->Sleep3:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    .line 46
    new-instance v8, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    sget v14, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_dc_charge:I

    sget v15, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_dc_charge_desc:I

    const-string v6, "DcCharged"

    const/16 v4, 0xb

    invoke-direct {v8, v6, v4, v14, v15}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->DcCharged:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    .line 51
    new-instance v6, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    sget v14, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_ac_charge:I

    sget v15, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_ac_charge_desc:I

    const-string v4, "AcCharged"

    move-object/from16 v16, v8

    const/16 v8, 0xc

    invoke-direct {v6, v4, v8, v14, v15}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;-><init>(Ljava/lang/String;III)V

    sput-object v6, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->AcCharged:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    .line 56
    new-instance v4, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    sget v14, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_full_charged:I

    sget v15, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_full_charged_desc:I

    const-string v8, "FullCharged"

    move-object/from16 v17, v6

    const/16 v6, 0xd

    invoke-direct {v4, v8, v6, v14, v15}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->FullCharged:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    .line 61
    new-instance v8, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    sget v14, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_take_photo:I

    sget v15, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_take_photo:I

    const-string v6, "TakePhoto"

    move-object/from16 v18, v4

    const/16 v4, 0xe

    invoke-direct {v8, v6, v4, v14, v15}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->TakePhoto:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    .line 66
    new-instance v6, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    sget v14, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_sync_dance_show_title:I

    sget v15, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_sync_dance_show_desc:I

    const-string v4, "SYNC_DANCE_SHOW"

    move-object/from16 v19, v8

    const/16 v8, 0xf

    invoke-direct {v6, v4, v8, v14, v15}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;-><init>(Ljava/lang/String;III)V

    sput-object v6, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->SYNC_DANCE_SHOW:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    .line 68
    new-instance v4, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    sget v14, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_sync_remote_show_01_title:I

    sget v15, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_sync_dance_show_desc:I

    const-string v8, "SYNC_DANCE_01_SHOW"

    move-object/from16 v20, v6

    const/16 v6, 0x10

    invoke-direct {v4, v8, v6, v14, v15}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->SYNC_DANCE_01_SHOW:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    .line 70
    new-instance v8, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    sget v14, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_sync_remote_show_02_title:I

    sget v15, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_sync_dance_show_desc:I

    const-string v6, "SYNC_DANCE_02_SHOW"

    move-object/from16 v21, v4

    const/16 v4, 0x11

    invoke-direct {v8, v6, v4, v14, v15}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->SYNC_DANCE_02_SHOW:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    .line 72
    new-instance v6, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    sget v14, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_sync_remote_show_03_title:I

    sget v15, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_sync_dance_show_desc:I

    const-string v4, "SYNC_DANCE_03_SHOW"

    move-object/from16 v22, v8

    const/16 v8, 0x12

    invoke-direct {v6, v4, v8, v14, v15}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;-><init>(Ljava/lang/String;III)V

    sput-object v6, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->SYNC_DANCE_03_SHOW:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    .line 74
    new-instance v4, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    sget v14, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_sleep:I

    sget v15, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_show_off_desc:I

    const-string v8, "Locking"

    move-object/from16 v23, v6

    const/16 v6, 0x13

    invoke-direct {v4, v8, v6, v14, v15}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->Locking:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    .line 76
    new-instance v8, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    sget v14, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_sleep:I

    sget v15, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_show_off_desc:I

    const-string v6, "Locking2"

    move-object/from16 v24, v4

    const/16 v4, 0x14

    invoke-direct {v8, v6, v4, v14, v15}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->Locking2:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    .line 78
    new-instance v6, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    sget v14, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_sleep:I

    sget v15, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_show_off_desc:I

    const-string v4, "Locking3"

    move-object/from16 v25, v8

    const/16 v8, 0x15

    invoke-direct {v6, v4, v8, v14, v15}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;-><init>(Ljava/lang/String;III)V

    sput-object v6, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->Locking3:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    const/16 v4, 0x16

    new-array v4, v4, [Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    const/4 v14, 0x0

    aput-object v0, v4, v14

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    const/4 v0, 0x4

    aput-object v5, v4, v0

    const/4 v0, 0x5

    aput-object v7, v4, v0

    const/4 v0, 0x6

    aput-object v9, v4, v0

    const/4 v0, 0x7

    aput-object v11, v4, v0

    const/16 v0, 0x8

    aput-object v13, v4, v0

    const/16 v0, 0x9

    aput-object v12, v4, v0

    const/16 v0, 0xa

    aput-object v10, v4, v0

    const/16 v0, 0xb

    aput-object v16, v4, v0

    const/16 v0, 0xc

    aput-object v17, v4, v0

    const/16 v0, 0xd

    aput-object v18, v4, v0

    const/16 v0, 0xe

    aput-object v19, v4, v0

    const/16 v0, 0xf

    aput-object v20, v4, v0

    const/16 v0, 0x10

    aput-object v21, v4, v0

    const/16 v0, 0x11

    aput-object v22, v4, v0

    const/16 v0, 0x12

    aput-object v23, v4, v0

    const/16 v0, 0x13

    aput-object v24, v4, v0

    const/16 v0, 0x14

    aput-object v25, v4, v0

    aput-object v6, v4, v8

    .line 13
    sput-object v4, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "titleId",
            "descId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 83
    iput p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->mTitleId:I

    .line 84
    iput p4, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->mDescId:I

    return-void
.end method

.method public static fromLluCmd(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectName"
        }
    .end annotation

    .line 203
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 204
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "android_dc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "android_ac"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "android_unlock_03"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "android_unlock_02"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "android_unlock_01"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "android_lock_03"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "android_lock_02"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "android_lock_01"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "android_sayhi_03"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_9
    const-string v1, "android_sayhi_02"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_a
    const-string v1, "android_sayhi_01"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_b
    const-string v1, "WeddingMarch"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_c
    const-string v1, "android_findcar"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_d
    const-string v1, "android_locking_03"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_e
    const-string v1, "android_locking_02"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_f
    const-string v1, "android_locking_01"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 219
    :pswitch_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->DcCharged:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    goto :goto_2

    .line 216
    :pswitch_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->AcCharged:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    goto :goto_2

    .line 213
    :pswitch_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->AwakeWait:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    goto :goto_2

    .line 227
    :pswitch_3
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->Sleep:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    goto :goto_2

    .line 208
    :pswitch_4
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->SayHi:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    goto :goto_2

    .line 230
    :pswitch_5
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->Dance:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    goto :goto_2

    .line 222
    :pswitch_6
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->FindCar:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    goto :goto_2

    .line 235
    :pswitch_7
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->Locking:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    goto :goto_2

    :cond_10
    :goto_1
    const/4 p0, 0x0

    :goto_2
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x5b7ec3c7 -> :sswitch_f
        -0x5b7ec3c6 -> :sswitch_e
        -0x5b7ec3c5 -> :sswitch_d
        -0x488c7e55 -> :sswitch_c
        -0x4283d291 -> :sswitch_b
        -0x16c5873c -> :sswitch_a
        -0x16c5873b -> :sswitch_9
        -0x16c5873a -> :sswitch_8
        -0x181f03b -> :sswitch_7
        -0x181f03a -> :sswitch_6
        -0x181f039 -> :sswitch_5
        0x8ff470c -> :sswitch_4
        0x8ff470d -> :sswitch_3
        0x8ff470e -> :sswitch_2
        0x2b17eff2 -> :sswitch_1
        0x2b17f04f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 13
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;
    .locals 1

    .line 13
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    return-object v0
.end method


# virtual methods
.method public getDescId()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->mDescId:I

    return v0
.end method

.method public getTitleId()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->mTitleId:I

    return v0
.end method

.method public toLluCmd()Ljava/lang/String;
    .locals 2

    .line 101
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LluEffect:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    const-string v0, "android_locking_03"

    goto :goto_0

    :pswitch_1
    const-string v0, "android_locking_02"

    goto :goto_0

    :pswitch_2
    const-string v0, "android_locking_01"

    goto :goto_0

    :pswitch_3
    const-string v0, "remote_show_03"

    goto :goto_0

    :pswitch_4
    const-string v0, "remote_show_02"

    goto :goto_0

    :pswitch_5
    const-string v0, "remote_show_01"

    goto :goto_0

    :pswitch_6
    const-string v0, "e28s-test"

    goto :goto_0

    :pswitch_7
    const-string v0, "WeddingMarch"

    goto :goto_0

    :pswitch_8
    const-string v0, "takephoto"

    goto :goto_0

    :pswitch_9
    const-string v0, "android_sayhi_03"

    goto :goto_0

    :pswitch_a
    const-string v0, "android_sayhi_02"

    goto :goto_0

    :pswitch_b
    const-string v0, "android_sayhi_01"

    goto :goto_0

    :pswitch_c
    const-string v0, "android_lock_03"

    goto :goto_0

    :pswitch_d
    const-string v0, "android_lock_02"

    goto :goto_0

    :pswitch_e
    const-string v0, "android_lock_01"

    goto :goto_0

    :pswitch_f
    const-string v0, "android_dc"

    goto :goto_0

    :pswitch_10
    const-string v0, "android_ac"

    goto :goto_0

    :pswitch_11
    const-string v0, "fullcharged"

    goto :goto_0

    :pswitch_12
    const-string v0, "android_unlock_03"

    goto :goto_0

    :pswitch_13
    const-string v0, "android_unlock_02"

    goto :goto_0

    :pswitch_14
    const-string v0, "android_unlock_01"

    goto :goto_0

    :pswitch_15
    const-string v0, "android_findcar"

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public toXuiCmd()I
    .locals 3

    .line 175
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LluEffect:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can convert LluEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v0, 0x14

    return v0

    :pswitch_1
    const/16 v0, 0x9

    return v0

    :pswitch_2
    const/16 v0, 0xa

    return v0

    :cond_0
    const/4 v0, 0x5

    return v0

    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
