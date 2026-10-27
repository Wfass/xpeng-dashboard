.class public Lcom/xiaopeng/devtools/presenter/factorytest/b/a;
.super Ljava/lang/Object;
.source "SecurityCheckPresenter.java"


# static fields
.field private static final ye:Z

.field private static final yf:I


# instance fields
.field private sa:Ljava/lang/String;

.field private vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

.field private yg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/devtools/model/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private yh:Z

.field private yi:Ljava/lang/String;

.field private yj:Lcom/xiaopeng/devtools/system/nativeImp/Security;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->lh()Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->ye:Z

    .line 78
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->lB()I

    move-result v0

    sput v0, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->yf:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->sa:Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->yh:Z

    .line 83
    const-string v1, ""

    iput-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->yi:Ljava/lang/String;

    .line 90
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->lt()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->lx()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->L(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->jD()V

    .line 94
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->getHardwareId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->cd(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "xiaopeng_aftersales"

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/aftersales/AfterSalesManager;

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    .line 98
    new-instance v0, Lcom/xiaopeng/devtools/system/nativeImp/Security;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/system/nativeImp/Security;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->yj:Lcom/xiaopeng/devtools/system/nativeImp/Security;

    .line 99
    return-void
.end method

.method private B(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 600
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 601
    const-string v1, "string_msg"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->fc()Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const p2, 0xea61

    invoke-interface {p1, p2, v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;->sendData(ILandroid/os/Bundle;[Ljava/lang/String;)V

    .line 603
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1

    .line 606
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 607
    const p2, 0x10008000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 608
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 609
    return-void
.end method

.method private ab(Landroid/content/Context;)V
    .locals 2

    .line 619
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 620
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 622
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 623
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 624
    return-void
.end method

.method private cr(I)V
    .locals 1

    .line 627
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/b/-$$Lambda$a$cRpb3-sTr-oE6_XBt0brFG0KGsg;

    invoke-direct {v0, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/-$$Lambda$a$cRpb3-sTr-oE6_XBt0brFG0KGsg;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 628
    return-void
.end method

.method private static synthetic cs(I)V
    .locals 0

    .line 627
    invoke-static {p0}, Lcom/xiaopeng/xui/app/g;->ee(I)V

    return-void
.end method

.method private e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 612
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 613
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 614
    const p2, 0x10008000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 615
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 616
    return-void
.end method

.method private g(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .line 379
    const-string v0, "SecurityCheckPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " handleActivity() code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "*#9387*2#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "*#7494*121#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x29

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "*#7494*111#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x28

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "*#4227*111#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "*#4227*2#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "*#8#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2a

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "*#9723*211#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x27

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "*#9723*131#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x26

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "*#9723*122#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x25

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "*#9723*121#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x24

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "*#9723*111#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x23

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "*#9387*511#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "*#9387*411#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "*#9387*321#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "*#9387*315#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "*#9387*314#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "*#9387*313#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "*#9387*312#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "*#9387*311#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "*#9387*215#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "*#9387*214#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "*#9387*213#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "*#9387*212#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_17
    const-string v0, "*#9387*211#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "*#9387*171#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_19
    const-string v0, "*#9387*161#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_1a
    const-string v0, "*#9387*151#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_1b
    const-string v0, "*#9387*143#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_1c
    const-string v0, "*#9387*142#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_1d
    const-string v0, "*#9387*141#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_1e
    const-string v0, "*#9387*135#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_1f
    const-string v0, "*#9387*134#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_20
    const-string v0, "*#9387*133#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_21
    const-string v0, "*#9387*132#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_22
    const-string v0, "*#9387*131#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_23
    const-string v0, "*#9387*123#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_24
    const-string v0, "*#9387*122#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_25
    const-string v0, "*#9387*121#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_26
    const-string v0, "*#9387*111#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_27
    const-string v0, "*#400#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_1

    :sswitch_28
    const-string v0, "*#1225#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2d

    goto :goto_1

    :sswitch_29
    const-string v0, "*#1224#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2c

    goto :goto_1

    :sswitch_2a
    const-string v0, "*#0101#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2e

    goto :goto_1

    :sswitch_2b
    const-string v0, "*#9925*211#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x22

    goto :goto_1

    :sswitch_2c
    const-string v0, "*#9925*131#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x21

    goto :goto_1

    :sswitch_2d
    const-string v0, "*#9925*121#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_1

    :sswitch_2e
    const-string v0, "*#9925*111#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 594
    const-string p2, "SecurityCheckPresenter"

    const-string v0, "cannot handleActivity code :"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 590
    :pswitch_0
    const-string p1, "newyear"

    const-string p2, "com.xiaopeng.musicradio"

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->B(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    goto/16 :goto_2

    .line 586
    :pswitch_1
    const-string p1, "christmas"

    const-string p2, "com.xiaopeng.musicradio"

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->B(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    goto/16 :goto_2

    .line 582
    :pswitch_2
    const-string p1, "christmaseve"

    const-string p2, "com.xiaopeng.musicradio"

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->B(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    goto/16 :goto_2

    .line 571
    :pswitch_3
    sget-boolean p1, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->ye:Z

    if-nez p1, :cond_1

    .line 572
    const-string p1, "SecurityCheckPresenter"

    const-string p2, "just chn region support"

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 573
    goto/16 :goto_2

    .line 574
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    invoke-virtual {p1}, Lcom/xiaopeng/aftersales/AfterSalesManager;->getAuthMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 575
    const p1, 0x7f100409

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->cr(I)V

    goto/16 :goto_2

    .line 577
    :cond_2
    new-instance p1, Lcom/xiaopeng/devtools/presenter/aftersales/a;

    invoke-direct {p1, p2}, Lcom/xiaopeng/devtools/presenter/aftersales/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/a;->showDialog()V

    .line 579
    goto/16 :goto_2

    .line 565
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    invoke-virtual {p1}, Lcom/xiaopeng/aftersales/AfterSalesManager;->getRepairMode()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 566
    const-class p1, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesActivity;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_2

    .line 561
    :pswitch_5
    const-class p1, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 562
    goto/16 :goto_2

    .line 557
    :pswitch_6
    const-class p1, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 558
    goto/16 :goto_2

    .line 553
    :pswitch_7
    const-class p1, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 554
    goto/16 :goto_2

    .line 548
    :pswitch_8
    const-class p1, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 549
    goto/16 :goto_2

    .line 540
    :pswitch_9
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.xiaopeng.factorytest.ACTION_FACTORY_CAR_TESTDRIVE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 541
    const-string v0, "com.xiaopeng.autoshow"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 544
    goto/16 :goto_2

    .line 531
    :pswitch_a
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.xiaopeng.factorytest.ACTION_FACTORY_CAR_SHOW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 532
    const-string v0, "com.xiaopeng.autoshow"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 535
    goto/16 :goto_2

    .line 526
    :pswitch_b
    goto/16 :goto_2

    .line 521
    :pswitch_c
    const-class p1, Lcom/xiaopeng/devtools/view/systeminfo/EcuVersionActivity;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 522
    goto/16 :goto_2

    .line 516
    :pswitch_d
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 517
    goto/16 :goto_2

    .line 512
    :pswitch_e
    const-class p1, Lcom/xiaopeng/devtools/view/systeminfo/AppListActivity;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 513
    goto/16 :goto_2

    .line 508
    :pswitch_f
    const-class p1, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 509
    goto/16 :goto_2

    .line 503
    :pswitch_10
    const-class p1, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 504
    goto/16 :goto_2

    .line 499
    :pswitch_11
    const-class p1, Lcom/xiaopeng/devtools/devdebug/drivemode/DriveModeActivity;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 500
    goto/16 :goto_2

    .line 495
    :pswitch_12
    const-class p1, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 496
    goto/16 :goto_2

    .line 492
    :pswitch_13
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 493
    goto/16 :goto_2

    .line 488
    :pswitch_14
    const-class p1, Lcom/xiaopeng/devtools/view/modemui/ModemUiActivity;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 489
    goto/16 :goto_2

    .line 484
    :pswitch_15
    const-class p1, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 485
    goto/16 :goto_2

    .line 480
    :pswitch_16
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/FactoryModeActivity;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 481
    goto/16 :goto_2

    .line 476
    :pswitch_17
    const-class p1, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 477
    goto/16 :goto_2

    .line 468
    :pswitch_18
    const-string p1, "XPU_LVDS"

    invoke-static {p1}, Lcom/xiaopeng/a/a$b;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 469
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuTestActivity;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_2

    .line 471
    :cond_3
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuImageTestActivity;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 473
    goto/16 :goto_2

    .line 465
    :pswitch_19
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 466
    goto/16 :goto_2

    .line 462
    :pswitch_1a
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 463
    goto/16 :goto_2

    .line 459
    :pswitch_1b
    const-class p1, Lcom/xiaopeng/devtools/view/usersettings/NedcModeActivity;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 460
    goto/16 :goto_2

    .line 456
    :pswitch_1c
    const-string p1, "com.xpeng.ai"

    const-string v0, "com.xpeng.ai.HeartBeatActivity"

    invoke-direct {p0, p2, p1, v0}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    goto/16 :goto_2

    .line 453
    :pswitch_1d
    const-class p1, Lcom/xiaopeng/devtools/view/smartdrive/DriveAllTestActivity;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 454
    goto/16 :goto_2

    .line 449
    :pswitch_1e
    const-class p1, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 450
    goto/16 :goto_2

    .line 446
    :pswitch_1f
    const-class p1, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 447
    goto :goto_2

    .line 442
    :pswitch_20
    const-class p1, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 443
    goto :goto_2

    .line 438
    :pswitch_21
    const-class p1, Lcom/xiaopeng/devtools/view/usersettings/LteApnActivity;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 439
    goto :goto_2

    .line 434
    :pswitch_22
    const-class p1, Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 435
    goto :goto_2

    .line 430
    :pswitch_23
    const-class p1, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 431
    goto :goto_2

    .line 426
    :pswitch_24
    const-class p1, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 427
    goto :goto_2

    .line 422
    :pswitch_25
    const-class p1, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 423
    goto :goto_2

    .line 418
    :pswitch_26
    const-class p1, Lcom/xiaopeng/devtools/view/pre_env/PreEnvActivity;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 419
    goto :goto_2

    .line 414
    :pswitch_27
    const-class p1, Lcom/xiaopeng/devtools/view/clean/ClearDataActivity;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 415
    goto :goto_2

    .line 410
    :pswitch_28
    const-class p1, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 411
    goto :goto_2

    .line 406
    :pswitch_29
    const-class p1, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 407
    goto :goto_2

    .line 403
    :pswitch_2a
    const-string p1, "com.aispeech.aios"

    const-string v0, "com.aispeech.aios.SettingActivity"

    invoke-direct {p0, p2, p1, v0}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    goto :goto_2

    .line 396
    :pswitch_2b
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.xiaopeng.secret_code_action"

    const-string v1, "android_secret_code://0808"

    .line 397
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 398
    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 400
    goto :goto_2

    .line 391
    :pswitch_2c
    invoke-direct {p0, p2}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->ab(Landroid/content/Context;)V

    .line 392
    goto :goto_2

    .line 387
    :pswitch_2d
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/vehicle/VehicleFactoryTestActivity;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 388
    goto :goto_2

    .line 384
    :pswitch_2e
    nop

    .line 597
    :cond_4
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x71e57296 -> :sswitch_2e
        -0x71e4fe37 -> :sswitch_2d
        -0x71e489d8 -> :sswitch_2c
        -0x71d75b15 -> :sswitch_2b
        -0x64e2ddde -> :sswitch_2a
        -0x631ef9bd -> :sswitch_29
        -0x631ef5fc -> :sswitch_28
        -0x138d58fe -> :sswitch_27
        -0x126c88e0 -> :sswitch_26
        -0x126c1481 -> :sswitch_25
        -0x126c10c0 -> :sswitch_24
        -0x126c0cff -> :sswitch_23
        -0x126ba022 -> :sswitch_22
        -0x126b9c61 -> :sswitch_21
        -0x126b98a0 -> :sswitch_20
        -0x126b94df -> :sswitch_1f
        -0x126b911e -> :sswitch_1e
        -0x126b2bc3 -> :sswitch_1d
        -0x126b2802 -> :sswitch_1c
        -0x126b2441 -> :sswitch_1b
        -0x126ab764 -> :sswitch_1a
        -0x126a4305 -> :sswitch_19
        -0x1269cea6 -> :sswitch_18
        -0x125e715f -> :sswitch_17
        -0x125e6d9e -> :sswitch_16
        -0x125e69dd -> :sswitch_15
        -0x125e661c -> :sswitch_14
        -0x125e625b -> :sswitch_13
        -0x125059de -> :sswitch_12
        -0x1250561d -> :sswitch_11
        -0x1250525c -> :sswitch_10
        -0x12504e9b -> :sswitch_f
        -0x12504ada -> :sswitch_e
        -0x124fe57f -> :sswitch_d
        -0x1242425d -> :sswitch_c
        -0x12342adc -> :sswitch_b
        -0x43ac71a -> :sswitch_a
        -0x43a52bb -> :sswitch_9
        -0x43a4efa -> :sswitch_8
        -0x439de5c -> :sswitch_7
        -0x42caf99 -> :sswitch_6
        0x2609ac6 -> :sswitch_5
        0x20899fab -> :sswitch_4
        0x2498c54a -> :sswitch_3
        0x62737eff -> :sswitch_2
        0x6273f35e -> :sswitch_1
        0x6712cf01 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static synthetic lambda$cRpb3-sTr-oE6_XBt0brFG0KGsg(I)V
    .locals 0

    invoke-static {p0}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->cs(I)V

    return-void
.end method


# virtual methods
.method public L(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->yh:Z

    .line 104
    return-void
.end method

.method public cd(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->yi:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public ce(Ljava/lang/String;)Z
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->yg:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/model/c/a;

    .line 131
    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/model/c/a;->fB()Z

    move-result p1

    return p1

    .line 134
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public cf(Ljava/lang/String;)V
    .locals 3

    .line 139
    const-string v0, "SecurityCheckPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlockCateIdState id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->yg:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/model/c/a;

    .line 142
    if-eqz p1, :cond_0

    .line 143
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/model/c/a;->E(Z)V

    .line 145
    :cond_0
    return-void
.end method

.method public cg(Ljava/lang/String;)V
    .locals 3

    .line 149
    const-string v0, "SecurityCheckPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockCateIdState id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->yg:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/model/c/a;

    .line 151
    if-eqz p1, :cond_0

    .line 152
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/model/c/a;->E(Z)V

    .line 154
    :cond_0
    return-void
.end method

.method public ch(Ljava/lang/String;)Z
    .locals 4

    .line 176
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->yh:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 178
    const-string p1, "SecurityCheckPresenter"

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f10036b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    return v1

    .line 182
    :cond_0
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/c;->fw()Lcom/xiaopeng/devtools/model/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/a/c;->isFactoryMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    const-string p1, "SecurityCheckPresenter"

    const-string v0, "under factory mode, can use factory code"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    return v1

    .line 188
    :cond_1
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/c;->fw()Lcom/xiaopeng/devtools/model/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/a/c;->fx()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    const-string p1, "SecurityCheckPresenter"

    const-string v0, "factory code is temperarily unlocked by mcu"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    return v1

    .line 194
    :cond_2
    invoke-static {p1}, Lcom/xiaopeng/devtools/model/c/b;->bq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->sa:Ljava/lang/String;

    .line 195
    const-string v0, "SecurityCheckPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " preVerifyFactoryCode() mCateId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->sa:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->yg:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/xiaopeng/devtools/model/c/b;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/xiaopeng/devtools/model/c/b;

    move-result-object p1

    .line 200
    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 201
    return v0

    .line 204
    :cond_3
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/model/c/b;->fF()Z

    move-result v2

    if-nez v2, :cond_4

    .line 206
    const-string p1, "SecurityCheckPresenter"

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f10036a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    return v0

    .line 211
    :cond_4
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/model/c/b;->fH()Z

    move-result v2

    if-nez v2, :cond_5

    .line 214
    const-string p1, "SecurityCheckPresenter"

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f10036c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    return v0

    .line 218
    :cond_5
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/model/c/b;->fG()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 221
    const-string p1, "SecurityCheckPresenter"

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f10036f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    return v1

    .line 226
    :cond_6
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->sa:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->ce(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 229
    const-string p1, "SecurityCheckPresenter"

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f10036d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    return v0

    .line 233
    :cond_7
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->yj:Lcom/xiaopeng/devtools/system/nativeImp/Security;

    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->yg:Ljava/util/Map;

    iget-object v3, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->sa:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/devtools/model/c/a;

    invoke-virtual {v2}, Lcom/xiaopeng/devtools/model/c/a;->fC()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/xiaopeng/devtools/system/nativeImp/Security;->checkUnlockTimeValid(I)Z

    move-result p1

    if-nez p1, :cond_8

    .line 234
    const-string p1, "SecurityCheckPresenter"

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f100370

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->sa:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->cg(Ljava/lang/String;)V

    .line 236
    return v0

    .line 239
    :cond_8
    return v1
.end method

.method public ci(Ljava/lang/String;)Z
    .locals 1

    .line 366
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    const/4 p1, 0x0

    return p1

    .line 369
    :cond_0
    const-string v0, "\\u002A#[0-9]{2,4}\\u002A[0-9]{8}#\\u002A$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public e(Ljava/lang/String;Z)V
    .locals 1

    .line 158
    const-string v0, "factory.verify.times"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/devtools/model/c/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 159
    return-void
.end method

.method public e(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 5

    .line 278
    const-string p2, "SecurityCheckPresenter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " handleSecretKey() keyInput:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    iget-boolean p2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->yh:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 282
    const-string p1, "SecurityCheckPresenter"

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f10036b

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    return v0

    .line 286
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/devtools/model/c/b;->bt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 287
    const-string v1, "SecurityCheckPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " handleSecretKey() preCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 290
    return v2

    .line 293
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    .line 296
    sget-boolean v1, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->ye:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    .line 297
    return v2

    .line 301
    :cond_2
    sget-boolean v1, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->ye:Z

    const/4 v3, 0x4

    if-nez v1, :cond_3

    if-eq p2, v3, :cond_3

    .line 302
    return v2

    .line 305
    :cond_3
    if-ne p2, v3, :cond_4

    .line 306
    invoke-static {p1}, Lcom/xiaopeng/devtools/model/c/b;->bs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->sa:Ljava/lang/String;

    goto :goto_0

    .line 308
    :cond_4
    invoke-static {p1}, Lcom/xiaopeng/devtools/model/c/b;->br(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->sa:Ljava/lang/String;

    .line 311
    :goto_0
    const-string v1, "SecurityCheckPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " handleSecretKey() mCateId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->sa:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->sa:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 314
    return v2

    .line 318
    :cond_5
    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->sa:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->ce(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 319
    const-string p1, "SecurityCheckPresenter"

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f1003b2

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    return v0

    .line 324
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->yj:Lcom/xiaopeng/devtools/system/nativeImp/Security;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/devtools/system/nativeImp/Security;->isUnlockKeyValidV2(Ljava/lang/String;I)Z

    move-result p1

    .line 327
    iget-object p2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->sa:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->e(Ljava/lang/String;Z)V

    .line 329
    if-eqz p1, :cond_7

    .line 330
    const-string p1, "SecurityCheckPresenter"

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f1003b1

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->sa:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->cf(Ljava/lang/String;)V

    goto :goto_1

    .line 335
    :cond_7
    const-string p1, "SecurityCheckPresenter"

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f1003b0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->sa:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->cg(Ljava/lang/String;)V

    .line 338
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->sa:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->ce(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public f(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3

    .line 344
    const-string v0, "SecurityCheckPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " handleFactoryCode() str:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->ch(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 347
    return v1

    .line 350
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->g(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    nop

    .line 355
    const/4 p1, 0x1

    return p1

    .line 351
    :catch_0
    move-exception p1

    .line 352
    const-string p2, "SecurityCheckPresenter"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    return v1
.end method

.method public jD()V
    .locals 1

    .line 108
    invoke-static {}, Lcom/xiaopeng/devtools/model/c/a;->fD()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->yg:Ljava/util/Map;

    .line 109
    return-void
.end method
