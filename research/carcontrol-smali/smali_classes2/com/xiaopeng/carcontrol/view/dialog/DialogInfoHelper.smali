.class public final Lcom/xiaopeng/carcontrol/view/dialog/DialogInfoHelper;
.super Ljava/lang/Object;
.source "DialogInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/view/dialog/DialogInfoHelper$SingleHolder;
    }
.end annotation


# static fields
.field private static final DIALOG_TITLE_DIRTY:Ljava/lang/String; = "\n"

.field private static final TAG:Ljava/lang/String; = "DialogInfoHelper"

.field public static final TYPE_ALC:I = 0x7

.field public static final TYPE_AVH:I = 0xa

.field public static final TYPE_BSD:I = 0x2

.field public static final TYPE_CNGP:I = 0x21

.field public static final TYPE_DOW:I = 0xc

.field public static final TYPE_EBW:I = 0xb

.field public static final TYPE_ELK:I = 0xf

.field public static final TYPE_ESP:I = 0x9

.field public static final TYPE_FCW:I = 0x0

.field public static final TYPE_HDC:I = 0x8

.field public static final TYPE_IHB:I = 0x11

.field public static final TYPE_ISLA:I = 0x1e

.field public static final TYPE_ISLC:I = 0x4

.field public static final TYPE_LCC:I = 0x6

.field public static final TYPE_LDW:I = 0x1

.field public static final TYPE_LKA:I = 0xe

.field public static final TYPE_MEM_PARK:I = 0x13

.field public static final TYPE_NGP:I = 0x14

.field public static final TYPE_NRA:I = 0x20

.field public static final TYPE_PARK:I = 0x5

.field public static final TYPE_RCTA:I = 0x3

.field public static final TYPE_RCW:I = 0xd

.field public static final TYPE_SIMPLE_SAS:I = 0x22

.field public static final TYPE_SPECIAL_SAS:I = 0x23

.field public static final TYPE_SSA:I = 0x1f

.field public static final TYPE_XPILOT_35_PURCHASE:I = 0x23

.field public static final TYPE_XPILOT_IHB_PURCHASE:I = 0x1d

.field public static final TYPE_XPILOT_PARK_PURCHASE:I = 0x1c

.field public static final TYPE_XPILOT_PURCHASE:I = 0x1b


# instance fields
.field private mInfoDialog:Lcom/xiaopeng/xui/app/XDialog;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/view/dialog/DialogInfoHelper$1;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/DialogInfoHelper;-><init>()V

    return-void
.end method

.method private getDialogBtn(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 212
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->btn_close:I

    return p1

    .line 209
    :cond_0
    :pswitch_0
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->btn_ok:I

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getHelpPicPart1(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 157
    :cond_0
    :pswitch_0
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$drawable;->img_xpilot_purchase:I

    return p1

    .line 151
    :cond_1
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$drawable;->img_xpilot_ihb_1:I

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getHelpTextPart1(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 194
    :pswitch_0
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->ihb_purchase_help_1:I

    return p1

    .line 191
    :pswitch_1
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->mem_park_purchase_help_1:I

    return p1

    .line 188
    :pswitch_2
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->xpilot_3_purchase_help_1:I

    return p1

    .line 197
    :cond_0
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->xpilot_35_purchase_help_1:I

    return p1

    .line 167
    :cond_1
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->ihb_feature_help_1:I

    return p1

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/view/dialog/DialogInfoHelper;
    .locals 1

    .line 84
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/DialogInfoHelper$SingleHolder;->access$100()Lcom/xiaopeng/carcontrol/view/dialog/DialogInfoHelper;

    move-result-object v0

    return-object v0
.end method

.method private getKeyWords(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    .line 109
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->ihb_keyword:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getTitle(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 141
    :cond_0
    :pswitch_0
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->xpilot_3_purchase_title:I

    return p1

    .line 117
    :cond_1
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->ihb_title:I

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dismissXPilotInfoPanel()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/DialogInfoHelper;->mInfoDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/DialogInfoHelper;->mInfoDialog:Lcom/xiaopeng/xui/app/XDialog;

    :cond_0
    return-void
.end method

.method public releaseInfoPanel()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/DialogInfoHelper;->mInfoDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/DialogInfoHelper;->mInfoDialog:Lcom/xiaopeng/xui/app/XDialog;

    :cond_0
    return-void
.end method
