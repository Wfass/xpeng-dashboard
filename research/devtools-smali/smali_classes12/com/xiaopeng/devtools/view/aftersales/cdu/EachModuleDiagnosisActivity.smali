.class public Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;
.super Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;
.source "EachModuleDiagnosisActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private EZ:I

.field private Fj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/devtools/bean/ButtonData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->EZ:I

    return-void
.end method


# virtual methods
.method public fd()V
    .locals 3

    .line 41
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;->fd()V

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->theme:I

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "diagnosis_module"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->EZ:I

    .line 44
    return-void
.end method

.method public fe()V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;->fe()V

    .line 49
    return-void
.end method

.method public ff()V
    .locals 0

    .line 124
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;->ff()V

    .line 125
    return-void
.end method

.method public lJ()V
    .locals 4

    .line 53
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;->lJ()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->Fj:Ljava/util/ArrayList;

    .line 55
    iget v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->EZ:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->Fj:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/devtools/bean/ButtonData;

    const v2, 0x7f100102

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/devtools/bean/ButtonData;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_0
    iget v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->EZ:I

    const/16 v1, 0xd

    const v2, 0x7f1002d1

    if-eq v0, v1, :cond_7

    const/16 v1, 0xf

    if-eq v0, v1, :cond_6

    const v1, 0x16eb0

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    .line 108
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->Fj:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/devtools/bean/ButtonData;

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/devtools/view/aftersales/cdu/StorageMemoryActivity;

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/devtools/bean/ButtonData;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->Cr:Lcom/xiaopeng/devtools/view/ActionBar;

    const v1, 0x7f100117

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/ActionBar;->setCenterText(Ljava/lang/String;)V

    .line 110
    goto/16 :goto_1

    .line 88
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->Fj:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/devtools/bean/ButtonData;

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/devtools/bean/ButtonData;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->Cr:Lcom/xiaopeng/devtools/view/ActionBar;

    const v1, 0x7f100107

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/ActionBar;->setCenterText(Ljava/lang/String;)V

    .line 90
    goto/16 :goto_1

    .line 68
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->Fj:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/devtools/bean/ButtonData;

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/devtools/bean/ButtonData;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    const-string v0, "SUPPORT_NAVI_ACTIVATE_UUID"

    invoke-static {v0}, Lcom/xiaopeng/a/a$b;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->Fj:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/devtools/bean/ButtonData;

    const v2, 0x7f100204

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/devtools/view/navi/NaviActivity;

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/devtools/bean/ButtonData;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->Cr:Lcom/xiaopeng/devtools/view/ActionBar;

    const v1, 0x7f100112

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/ActionBar;->setCenterText(Ljava/lang/String;)V

    .line 73
    goto/16 :goto_1

    .line 92
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->Fj:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/devtools/bean/ButtonData;

    const v2, 0x7f1002d7

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/devtools/bean/ButtonData;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->Fj:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/devtools/bean/ButtonData;

    const v2, 0x7f1002d2

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/devtools/bean/ButtonData;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->Fj:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/devtools/bean/ButtonData;

    const v2, 0x7f1002d4

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/devtools/bean/ButtonData;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    const-string v0, "SUPPORT_LCD_SELF_DIAGNOSIS"

    invoke-static {v0}, Lcom/xiaopeng/a/a$b;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->Fj:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/devtools/bean/ButtonData;

    const v2, 0x7f1001b8

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelftestActivity;

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/devtools/bean/ButtonData;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_2
    const-string v0, "SUPPORT_TOUCH_KEY"

    invoke-static {v0}, Lcom/xiaopeng/a/a$b;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->Fj:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/devtools/bean/ButtonData;

    const v2, 0x7f1002d6

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/devtools/bean/ButtonData;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->Cr:Lcom/xiaopeng/devtools/view/ActionBar;

    const v1, 0x7f100110

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/ActionBar;->setCenterText(Ljava/lang/String;)V

    .line 102
    goto/16 :goto_1

    .line 60
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->Fj:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/devtools/bean/ButtonData;

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/devtools/bean/ButtonData;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->Cr:Lcom/xiaopeng/devtools/view/ActionBar;

    const v1, 0x7f100119

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/ActionBar;->setCenterText(Ljava/lang/String;)V

    .line 62
    goto/16 :goto_1

    .line 64
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->Fj:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/devtools/bean/ButtonData;

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/devtools/bean/ButtonData;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->Cr:Lcom/xiaopeng/devtools/view/ActionBar;

    const v1, 0x7f100109

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/ActionBar;->setCenterText(Ljava/lang/String;)V

    .line 66
    goto/16 :goto_1

    .line 80
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->Fj:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/devtools/bean/ButtonData;

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/devtools/bean/ButtonData;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->Cr:Lcom/xiaopeng/devtools/view/ActionBar;

    const v1, 0x7f10010a

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/ActionBar;->setCenterText(Ljava/lang/String;)V

    .line 82
    goto/16 :goto_1

    .line 75
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->Fj:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/devtools/bean/ButtonData;

    const v2, 0x7f1002d5

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/devtools/bean/ButtonData;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->Fj:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/devtools/bean/ButtonData;

    const v2, 0x7f1002d3

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/devtools/bean/ButtonData;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->Cr:Lcom/xiaopeng/devtools/view/ActionBar;

    const v1, 0x7f100108

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/ActionBar;->setCenterText(Ljava/lang/String;)V

    .line 78
    goto :goto_1

    .line 112
    :cond_4
    const-string v0, "XPU_LVDS"

    invoke-static {v0}, Lcom/xiaopeng/a/a$b;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->Fj:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/devtools/bean/ButtonData;

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuTestActivity;

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/devtools/bean/ButtonData;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->Fj:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/devtools/bean/ButtonData;

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuImageTestActivity;

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/devtools/bean/ButtonData;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->Cr:Lcom/xiaopeng/devtools/view/ActionBar;

    const v1, 0x7f10011a

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/ActionBar;->setCenterText(Ljava/lang/String;)V

    goto :goto_1

    .line 104
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->Fj:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/devtools/bean/ButtonData;

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/devtools/bean/ButtonData;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->Cr:Lcom/xiaopeng/devtools/view/ActionBar;

    const v1, 0x7f100113

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/ActionBar;->setCenterText(Ljava/lang/String;)V

    .line 106
    goto :goto_1

    .line 84
    :cond_7
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->Fj:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/devtools/bean/ButtonData;

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/devtools/bean/ButtonData;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->Cr:Lcom/xiaopeng/devtools/view/ActionBar;

    const v1, 0x7f100118

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/ActionBar;->setCenterText(Ljava/lang/String;)V

    .line 86
    nop

    .line 119
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->Fj:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->b(Ljava/util/ArrayList;)V

    .line 120
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->Fj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 140
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->Fj:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/bean/ButtonData;

    .line 143
    if-eqz v0, :cond_3

    .line 144
    iget v1, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->EZ:I

    const/16 v3, 0x13

    if-le v1, v3, :cond_1

    .line 145
    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/ButtonData;->getTriggerClass()Ljava/lang/Class;

    move-result-object p1

    iget v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->theme:I

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->a(Ljava/lang/Class;I)V

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne p1, v2, :cond_2

    .line 147
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/ButtonData;->getTriggerClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    const-string v0, "diagnosis_module"

    iget v1, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->EZ:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    iget v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->theme:I

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->b(Landroid/content/Intent;I)V

    .line 150
    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/ButtonData;->getTriggerClass()Ljava/lang/Class;

    move-result-object p1

    iget v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->theme:I

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;->a(Ljava/lang/Class;I)V

    .line 155
    :cond_3
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 134
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;->onDestroy()V

    .line 135
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 129
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;->onResume()V

    .line 130
    return-void
.end method
