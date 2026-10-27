.class public Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;
.super Lcom/xiaopeng/lludancemanager/view/LluSettingBaseDialog;
.source "LluDanceSettingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Lcom/xiaopeng/vui/commons/IVuiElementListener;


# static fields
.field private static final ONE_DAY_TIME_IN_MILLS:J = 0x5265c00L

.field private static final ORDER_PLAY_TIME_GAP:F = 5.0f

.field private static final ORDER_PLAY_TIME_GAP_IN_MILLS:F = 300000.0f

.field private static final ORDER_PLAY_TIME_INVALID:I = -0x1

.field private static final ORDER_PLAY_TIME_STEP:I = 0x6

.field private static final TAG:Ljava/lang/String; = "LluDanceSettingDialog"


# instance fields
.field private mOrderPlaySwitch:Lcom/xiaopeng/xui/widget/XSwitch;

.field private mOrderPlayTime:Lcom/xiaopeng/xui/widget/XTextView;

.field private mOrderPlayTimePlus:Lcom/xiaopeng/xui/widget/XImageButton;

.field private mOrderPlayTimeReduce:Lcom/xiaopeng/xui/widget/XImageButton;

.field private mOrderTimeLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mOrderTimeTomorrow:Lcom/xiaopeng/xui/widget/XImageView;

.field private mOrderedTimeInMills:J

.field private mPlayDirectlyTips:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1}, Lcom/xiaopeng/lludancemanager/view/LluSettingBaseDialog;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object p1

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    const-string v1, "LluPlaySettingDialog"

    invoke-virtual {p1, p0, v0, v1, p0}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->initVuiDialog(Lcom/xiaopeng/xui/app/XDialog;Landroid/content/Context;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementListener;)V

    return-void
.end method

.method private getOrderTimeString()Ljava/lang/String;
    .locals 7

    .line 185
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xc

    .line 187
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    int-to-float v2, v2

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    .line 188
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 189
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    const/4 v2, 0x0

    .line 190
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 191
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 192
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderedTimeInMills:J

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/lludancemanager/helper/LluDanceAlarmHelper;->alarmUpForDance(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "order_play_dance_item_time"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 196
    sget-object v4, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get order time from intent long = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 198
    iput-wide v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderedTimeInMills:J

    .line 200
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOrderTimeString existing intent not null, ordered time in mills = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v5, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderedTimeInMills:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    long extra  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_1
    iget-wide v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderedTimeInMills:J

    invoke-static {v0, v1}, Lcom/xiaopeng/lludancemanager/LluDanceOrderTimeHelper;->getDateFormatForTimeInMills(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVuiPropsJson(Lcom/xiaopeng/xui/vui/VuiView;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 228
    invoke-interface {p1}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiProps()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    .line 230
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    return-object p1
.end method

.method private orderPlayTimeController(Z)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "plus"
        }
    .end annotation

    .line 139
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 140
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 141
    iget-wide v2, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderedTimeInMills:J

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v2, 0xc

    .line 142
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    const/high16 v6, 0x40a00000    # 5.0f

    const/4 v7, 0x1

    if-eqz p1, :cond_0

    add-int/2addr v3, v7

    int-to-float v3, v3

    div-float/2addr v3, v6

    float-to-double v8, v3

    .line 146
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    goto :goto_0

    :cond_0
    sub-int/2addr v3, v7

    int-to-float v3, v3

    div-float/2addr v3, v6

    float-to-double v8, v3

    .line 149
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    :goto_0
    mul-double/2addr v8, v4

    double-to-int v3, v8

    .line 151
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 153
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const v3, 0x48927c00    # 300000.0f

    cmpl-float v2, v2, v3

    const/4 v3, 0x0

    if-lez v2, :cond_1

    move v2, v7

    goto :goto_1

    :cond_1
    move v2, v3

    .line 154
    :goto_1
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    sub-long/2addr v4, v8

    const-wide/32 v8, 0x5265c00

    cmp-long v4, v4, v8

    if-gez v4, :cond_2

    move v4, v7

    goto :goto_2

    :cond_2
    move v4, v3

    .line 155
    :goto_2
    sget-object v5, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "target calendar time = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "    current time = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "     reduce  enable = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "    plus enable ="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderPlayTimeReduce:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XImageButton;->setEnabled(Z)V

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderPlayTimePlus:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XImageButton;->setEnabled(Z)V

    .line 158
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    iget-object v6, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mContext:Landroid/content/Context;

    const/4 v8, 0x2

    new-array v8, v8, [Landroid/view/View;

    iget-object v9, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderPlayTimePlus:Lcom/xiaopeng/xui/widget/XImageButton;

    aput-object v9, v8, v3

    iget-object v9, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderPlayTimeReduce:Lcom/xiaopeng/xui/widget/XImageButton;

    aput-object v9, v8, v7

    const-string v7, "LluPlaySettingDialog"

    invoke-virtual {v0, v7, v6, v8}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->updateVuiScene(Ljava/lang/String;Landroid/content/Context;[Landroid/view/View;)V

    if-nez p1, :cond_3

    if-nez v2, :cond_4

    :cond_3
    if-eqz p1, :cond_5

    if-eqz v4, :cond_5

    .line 160
    :cond_4
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderedTimeInMills:J

    .line 161
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderPlayTime:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-static {v4, v5}, Lcom/xiaopeng/lludancemanager/LluDanceOrderTimeHelper;->getDateFormatForTimeInMills(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 163
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "target time invalid, ignore it plus = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    .line 165
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderPlayTimePlus:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XImageButton;->setEnabled(Z)V

    goto :goto_3

    .line 167
    :cond_6
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderPlayTimeReduce:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XImageButton;->setEnabled(Z)V

    .line 170
    :goto_3
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderTimeTomorrow:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->timeInTomorrow(J)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    const/16 v3, 0x8

    :goto_4
    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 171
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->refreshControllerButtonEnable()V

    return-void
.end method

.method private refreshControllerButtonEnable()V
    .locals 7

    .line 219
    iget-wide v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderedTimeInMills:J

    long-to-float v0, v0

    const v1, 0x48927c00    # 300000.0f

    sub-float/2addr v0, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-float v2, v2

    sub-float/2addr v0, v2

    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 220
    :goto_0
    iget-wide v4, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderedTimeInMills:J

    long-to-float v4, v4

    add-float/2addr v4, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    long-to-float v1, v5

    sub-float/2addr v4, v1

    const v1, 0x4ca4cb80    # 8.64E7f

    cmpg-float v1, v4, v1

    if-gez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 221
    :goto_1
    iget-object v4, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderPlayTimeReduce:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v4, v0}, Lcom/xiaopeng/xui/widget/XImageButton;->setEnabled(Z)V

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderPlayTimePlus:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setEnabled(Z)V

    .line 223
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/view/View;

    iget-object v5, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderPlayTimePlus:Lcom/xiaopeng/xui/widget/XImageButton;

    aput-object v5, v4, v3

    iget-object v3, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderPlayTimeReduce:Lcom/xiaopeng/xui/widget/XImageButton;

    aput-object v3, v4, v2

    const-string v2, "LluPlaySettingDialog"

    invoke-virtual {v0, v2, v1, v4}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->updateVuiScene(Ljava/lang/String;Landroid/content/Context;[Landroid/view/View;)V

    return-void
.end method

.method private timeInTomorrow(J)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetTime"
        }
    .end annotation

    .line 175
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 176
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 177
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x6

    .line 178
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 179
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 180
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orderPlayTimeController target day"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "      current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-le p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected addVuiProp(Lcom/xiaopeng/xui/vui/VuiView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "prop",
            "value"
        }
    .end annotation

    .line 236
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ", value="

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 240
    :cond_0
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addVuiProps prop="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 241
    invoke-direct {p0, p1}, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->getVuiPropsJson(Lcom/xiaopeng/xui/vui/VuiView;)Lorg/json/JSONObject;

    move-result-object v0

    .line 243
    :try_start_0
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 245
    sget-object v1, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addVuiProps "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, " failed :"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 247
    :goto_0
    invoke-interface {p1, v0}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiProps(Lorg/json/JSONObject;)V

    return-void

    .line 237
    :cond_1
    :goto_1
    sget-object p1, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addVuiProps failed with prop="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method getLayout(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 106
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/xiaopeng/lludancemanager/R$layout;->llu_dance_confirm_dialog:I

    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->getContentView()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getOrderedPlayTime()J
    .locals 2

    .line 74
    iget-wide v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderedTimeInMills:J

    return-wide v0
.end method

.method protected initCustomDialog(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 79
    invoke-super {p0, p1}, Lcom/xiaopeng/lludancemanager/view/LluSettingBaseDialog;->initCustomDialog(Landroid/view/View;)V

    .line 80
    sget v0, Lcom/xiaopeng/lludancemanager/R$string;->llu_dance_double_confirm_dialog_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->setTitle(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 81
    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Landroid/animation/LayoutTransition;

    invoke-direct {v1}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 82
    sget v0, Lcom/xiaopeng/lludancemanager/R$id;->llu_double_confirm_dialog_order_play:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/xiaopeng/lludancemanager/R$id;->x_list_action_switch:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XSwitch;

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderPlaySwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    .line 83
    sget v0, Lcom/xiaopeng/lludancemanager/R$id;->llu_double_confirm_dialog_order_time_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderTimeLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 84
    sget v0, Lcom/xiaopeng/lludancemanager/R$id;->llu_double_confirm_dialog_plus_order_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderPlayTimePlus:Lcom/xiaopeng/xui/widget/XImageButton;

    .line 85
    sget v0, Lcom/xiaopeng/lludancemanager/R$id;->llu_double_confirm_dialog_reduce_order_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderPlayTimeReduce:Lcom/xiaopeng/xui/widget/XImageButton;

    .line 86
    sget v0, Lcom/xiaopeng/lludancemanager/R$id;->llu_double_confirm_dialog_order_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderPlayTime:Lcom/xiaopeng/xui/widget/XTextView;

    .line 87
    sget v0, Lcom/xiaopeng/lludancemanager/R$id;->llu_double_confirm_dialog_order_time_tomorrow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderTimeTomorrow:Lcom/xiaopeng/xui/widget/XImageView;

    .line 88
    sget v0, Lcom/xiaopeng/lludancemanager/R$id;->llu_dance_main_fragment_confirm_dialog_play_tips:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mPlayDirectlyTips:Lcom/xiaopeng/xui/widget/XTextView;

    .line 89
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderPlayTimeReduce:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->addHasFeedbackProp(Lcom/xiaopeng/vui/commons/IVuiElement;)V

    .line 90
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderPlayTimePlus:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->addHasFeedbackProp(Lcom/xiaopeng/vui/commons/IVuiElement;)V

    return-void
.end method

.method public isOrderPlaySwitchCheck()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderPlaySwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XSwitch;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "iVuiElementBuilder"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buttonView",
            "isChecked"
        }
    .end annotation

    .line 111
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/lludancemanager/view/LluSettingBaseDialog;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderPlaySwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    const/4 v1, 0x1

    const-string v2, "LluPlaySettingDialog"

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    .line 113
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "order play switched check = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->setLluOrderPlay(Z)V

    const/16 v0, 0x8

    if-eqz p2, :cond_0

    .line 116
    iget-object p2, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderTimeLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {p2, v3}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    .line 117
    iget-object p2, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mPlayDirectlyTips:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 118
    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->refreshOrderedTime()V

    goto :goto_0

    .line 120
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderTimeLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    .line 121
    iget-object p2, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mPlayDirectlyTips:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 123
    :goto_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/view/View;

    aput-object p1, v4, v3

    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderTimeLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    aput-object p1, v4, v1

    invoke-virtual {p2, v2, v0, v4}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->updateVuiScene(Ljava/lang/String;Landroid/content/Context;[Landroid/view/View;)V

    goto :goto_1

    .line 125
    :cond_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mContext:Landroid/content/Context;

    new-array v1, v1, [Landroid/view/View;

    aput-object p1, v1, v3

    invoke-virtual {p2, v2, v0, v1}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->updateVuiScene(Ljava/lang/String;Landroid/content/Context;[Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/xiaopeng/lludancemanager/R$id;->llu_double_confirm_dialog_reduce_order_time:I

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    .line 132
    invoke-direct {p0, p1}, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->orderPlayTimeController(Z)V

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/xiaopeng/lludancemanager/R$id;->llu_double_confirm_dialog_plus_order_time:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    .line 134
    invoke-direct {p0, p1}, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->orderPlayTimeController(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->refreshOrderedTime()V

    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "vuiEvent"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 258
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public refreshOrderedTime()V
    .locals 4

    .line 211
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->getOrderTimeString()Ljava/lang/String;

    move-result-object v0

    .line 212
    sget-object v1, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dance setting dialog on show callback order time string = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderPlayTime:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->refreshControllerButtonEnable()V

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderTimeTomorrow:Lcom/xiaopeng/xui/widget/XImageView;

    iget-wide v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderedTimeInMills:J

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->timeInTomorrow(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 95
    invoke-super {p0}, Lcom/xiaopeng/lludancemanager/view/LluSettingBaseDialog;->setListener()V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderPlaySwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderPlaySwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-static {}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->getLluOrderPlay()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderPlayTimePlus:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderPlayTimeReduce:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {p0, p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)Lcom/xiaopeng/xui/app/XDialog;

    return-void
.end method

.method public setOrderPlaySwitchCheck(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "check"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->mOrderPlaySwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    return-void
.end method

.method public show()V
    .locals 3

    .line 265
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    const-string v2, "LluPlaySettingDialog"

    invoke-virtual {v0, p0, v1, v2, p0}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->initVuiDialog(Lcom/xiaopeng/xui/app/XDialog;Landroid/content/Context;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementListener;)V

    .line 266
    invoke-super {p0}, Lcom/xiaopeng/lludancemanager/view/LluSettingBaseDialog;->show()V

    return-void
.end method
