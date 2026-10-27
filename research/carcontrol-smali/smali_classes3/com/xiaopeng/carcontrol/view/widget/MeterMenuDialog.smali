.class public Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;
.super Lcom/xiaopeng/xui/app/XDialog;
.source "MeterMenuDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog$IMeterDialogClickListener;
    }
.end annotation


# static fields
.field public static final STATE_MEDIA_SOURCE:I = 0x3

.field public static final STATE_SCREEN_LIGHT:I = 0x2

.field public static final STATE_TEMPERATURE:I = 0x0

.field public static final STATE_WIND_MODE:I = 0x4

.field public static final STATE_WIND_POWER:I = 0x1


# instance fields
.field private mItemValues:Landroid/util/SparseBooleanArray;

.field private mListener:Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog$IMeterDialogClickListener;

.field private mMediaSource:Lcom/xiaopeng/xui/widget/XToggleButton;

.field private mScreenLight:Lcom/xiaopeng/xui/widget/XToggleButton;

.field private mTemperature:Lcom/xiaopeng/xui/widget/XToggleButton;

.field private mWindMode:Lcom/xiaopeng/xui/widget/XToggleButton;

.field private mWindPower:Lcom/xiaopeng/xui/widget/XToggleButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 42
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$style;->XDialogView_Large_Custom:I

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "style"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;I)V

    const/16 p2, 0x7d8

    .line 47
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 49
    sget p2, Lcom/xiaopeng/carcontrolmodule/R$layout;->layout_meter_menu_panel:I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 50
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->initViews(Landroid/view/View;)V

    .line 54
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->setTitleVisibility(Z)Lcom/xiaopeng/xui/app/XDialog;

    .line 55
    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->setCustomView(Landroid/view/View;Z)Lcom/xiaopeng/xui/app/XDialog;

    return-void
.end method

.method private getSelectedItemCount()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 106
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->mItemValues:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 107
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->mItemValues:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private initViews(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 67
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$id;->close_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$id;->btn_meter_temperature:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XToggleButton;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->mTemperature:Lcom/xiaopeng/xui/widget/XToggleButton;

    .line 69
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$id;->btn_meter_media_src:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XToggleButton;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->mMediaSource:Lcom/xiaopeng/xui/widget/XToggleButton;

    .line 70
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$id;->btn_meter_wind_level:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XToggleButton;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->mWindPower:Lcom/xiaopeng/xui/widget/XToggleButton;

    .line 71
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$id;->btn_meter_screen_light:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XToggleButton;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->mScreenLight:Lcom/xiaopeng/xui/widget/XToggleButton;

    .line 72
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$id;->btn_meter_wind_mode:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XToggleButton;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->mWindMode:Lcom/xiaopeng/xui/widget/XToggleButton;

    .line 74
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->mTemperature:Lcom/xiaopeng/xui/widget/XToggleButton;

    invoke-virtual {p1, p0}, Lcom/xiaopeng/xui/widget/XToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 75
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->mMediaSource:Lcom/xiaopeng/xui/widget/XToggleButton;

    invoke-virtual {p1, p0}, Lcom/xiaopeng/xui/widget/XToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 76
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->mWindPower:Lcom/xiaopeng/xui/widget/XToggleButton;

    invoke-virtual {p1, p0}, Lcom/xiaopeng/xui/widget/XToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 77
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->mScreenLight:Lcom/xiaopeng/xui/widget/XToggleButton;

    invoke-virtual {p1, p0}, Lcom/xiaopeng/xui/widget/XToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 78
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->mWindMode:Lcom/xiaopeng/xui/widget/XToggleButton;

    invoke-virtual {p1, p0}, Lcom/xiaopeng/xui/widget/XToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private updateSetting(Landroid/view/View;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "state",
            "ischecked"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->mItemValues:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 85
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->mItemValues:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->getSelectedItemCount()I

    move-result p3

    if-gt p3, v1, :cond_1

    .line 90
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p3

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->meter_item_warning:I

    invoke-virtual {p3, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 91
    check-cast p1, Landroid/widget/Checkable;

    invoke-interface {p1, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 92
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->mItemValues:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void

    .line 95
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->mItemValues:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move v1, v0

    .line 99
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->mListener:Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog$IMeterDialogClickListener;

    if-eqz p1, :cond_2

    .line 100
    invoke-interface {p1, p2, v1}, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog$IMeterDialogClickListener;->onMeterItemClick(IZ)V

    :cond_2
    return-void
.end method


# virtual methods
.method public initData(Landroid/util/SparseBooleanArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initData"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->mItemValues:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->mItemValues:Landroid/util/SparseBooleanArray;

    .line 126
    :cond_0
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->mItemValues:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 127
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    .line 128
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->mItemValues:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 129
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->mTemperature:Lcom/xiaopeng/xui/widget/XToggleButton;

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xui/widget/XToggleButton;->setChecked(Z)V

    const-string v2, "isSupportSwitchMedia"

    .line 131
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    .line 132
    invoke-virtual {p1, v2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    .line 133
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->mItemValues:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 134
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->mMediaSource:Lcom/xiaopeng/xui/widget/XToggleButton;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XToggleButton;->setChecked(Z)V

    .line 137
    :cond_1
    invoke-virtual {p1, v1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    .line 138
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->mItemValues:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 139
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->mWindPower:Lcom/xiaopeng/xui/widget/XToggleButton;

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xui/widget/XToggleButton;->setChecked(Z)V

    const/4 v2, 0x2

    .line 141
    invoke-virtual {p1, v2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    .line 142
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->mItemValues:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 143
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->mScreenLight:Lcom/xiaopeng/xui/widget/XToggleButton;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XToggleButton;->setChecked(Z)V

    const/4 v2, 0x4

    .line 145
    invoke-virtual {p1, v2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    .line 146
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->mItemValues:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 147
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->mWindMode:Lcom/xiaopeng/xui/widget/XToggleButton;

    invoke-virtual {v2, p1}, Lcom/xiaopeng/xui/widget/XToggleButton;->setChecked(Z)V

    .line 150
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->getSelectedItemCount()I

    move-result p1

    if-nez p1, :cond_2

    .line 151
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->mItemValues:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 152
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->mTemperature:Lcom/xiaopeng/xui/widget/XToggleButton;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XToggleButton;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "isChecked"
        }
    .end annotation

    .line 158
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 159
    sget v1, Lcom/xiaopeng/carcontrolmodule/R$id;->btn_meter_temperature:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 160
    invoke-direct {p0, p1, v0, p2}, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->updateSetting(Landroid/view/View;IZ)V

    goto :goto_0

    .line 161
    :cond_0
    sget v1, Lcom/xiaopeng/carcontrolmodule/R$id;->btn_meter_media_src:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    .line 162
    invoke-direct {p0, p1, v0, p2}, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->updateSetting(Landroid/view/View;IZ)V

    goto :goto_0

    .line 163
    :cond_1
    sget v1, Lcom/xiaopeng/carcontrolmodule/R$id;->btn_meter_wind_level:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    .line 164
    invoke-direct {p0, p1, v0, p2}, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->updateSetting(Landroid/view/View;IZ)V

    goto :goto_0

    .line 165
    :cond_2
    sget v1, Lcom/xiaopeng/carcontrolmodule/R$id;->btn_meter_screen_light:I

    if-ne v0, v1, :cond_3

    const/4 v0, 0x2

    .line 166
    invoke-direct {p0, p1, v0, p2}, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->updateSetting(Landroid/view/View;IZ)V

    goto :goto_0

    .line 167
    :cond_3
    sget v1, Lcom/xiaopeng/carcontrolmodule/R$id;->btn_meter_wind_mode:I

    if-ne v0, v1, :cond_4

    const/4 v0, 0x4

    .line 168
    invoke-direct {p0, p1, v0, p2}, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->updateSetting(Landroid/view/View;IZ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 61
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$id;->close_btn:I

    if-ne p1, v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public setClickListener(Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog$IMeterDialogClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog;->mListener:Lcom/xiaopeng/carcontrol/view/widget/MeterMenuDialog$IMeterDialogClickListener;

    return-void
.end method
