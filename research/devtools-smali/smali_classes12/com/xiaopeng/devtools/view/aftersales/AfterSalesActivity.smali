.class public Lcom/xiaopeng/devtools/view/aftersales/AfterSalesActivity;
.super Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;
.source "AfterSalesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private DD:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public fd()V
    .locals 3

    .line 31
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;->fd()V

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesActivity;->theme:I

    .line 33
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesActivity;->DD:Ljava/util/HashMap;

    .line 34
    const-string v1, "UPDATE_NEW_DEVICES_ID"

    invoke-static {v1}, Lcom/xiaopeng/a/a$a;->dZ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesActivity;->DD:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v2, 0x7f100412

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_0
    const-string v0, "MODULE_DIAGNOSIS"

    invoke-static {v0}, Lcom/xiaopeng/a/a$a;->dZ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesActivity;->DD:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100386

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_1
    const-string v0, "DIAGNOSIS_RECORD"

    invoke-static {v0}, Lcom/xiaopeng/a/a$a;->dZ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesActivity;->DD:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100102

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_2
    const-string v0, "ONE_CLICK_DIAGNOSIS"

    invoke-static {v0}, Lcom/xiaopeng/a/a$a;->dZ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesActivity;->DD:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100234

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_3
    const-string v0, "VERSION_INFO"

    invoke-static {v0}, Lcom/xiaopeng/a/a$a;->dZ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesActivity;->DD:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f10004f

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_4
    const-string v0, "CANDATA_COLLECTOR"

    invoke-static {v0}, Lcom/xiaopeng/a/a$a;->dZ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesActivity;->DD:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f1000ba

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_5
    const-string v0, "REALTIME_STATUS"

    invoke-static {v0}, Lcom/xiaopeng/a/a$a;->dZ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesActivity;->DD:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100282

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_6
    const-string v0, "DID_INFO"

    invoke-static {v0}, Lcom/xiaopeng/a/a$a;->dZ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesActivity;->DD:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100120

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_7
    return-void
.end method

.method public fe()V
    .locals 0

    .line 62
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;->fe()V

    .line 63
    return-void
.end method

.method public ff()V
    .locals 0

    .line 73
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;->ff()V

    .line 74
    return-void
.end method

.method public lJ()V
    .locals 1

    .line 67
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;->lJ()V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesActivity;->DD:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesActivity;->a(Ljava/util/HashMap;)V

    .line 69
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 109
    :pswitch_0
    const-class v0, Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesActivity;->a(Ljava/lang/Class;I)V

    .line 110
    goto :goto_0

    .line 105
    :pswitch_1
    const-class v0, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusActivity;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesActivity;->a(Ljava/lang/Class;I)V

    .line 106
    goto :goto_0

    .line 101
    :pswitch_2
    const-class v0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesActivity;->a(Ljava/lang/Class;I)V

    .line 102
    goto :goto_0

    .line 97
    :pswitch_3
    const-class v0, Lcom/xiaopeng/devtools/view/aftersales/BasicInfoActivity;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesActivity;->a(Ljava/lang/Class;I)V

    .line 98
    goto :goto_0

    .line 93
    :pswitch_4
    const-class v0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesActivity;->a(Ljava/lang/Class;I)V

    .line 94
    goto :goto_0

    .line 89
    :pswitch_5
    const-class v0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesActivity;->a(Ljava/lang/Class;I)V

    .line 90
    goto :goto_0

    .line 85
    :pswitch_6
    const-class v0, Lcom/xiaopeng/devtools/view/aftersales/cdu/ModuleDiagnosisActivity;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesActivity;->e(Ljava/lang/Class;)V

    .line 86
    goto :goto_0

    .line 81
    :pswitch_7
    const-class v0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesActivity;->e(Ljava/lang/Class;)V

    .line 82
    nop

    .line 115
    :goto_0
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;->onClick(Landroid/view/View;)V

    .line 116
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
