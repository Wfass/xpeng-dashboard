.class public Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;
.super Lcom/xiaopeng/xui/widget/XFrameLayout;
.source "LluDanceStateLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout$OnClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LluDanceStateLayout"

.field private static final VUI_LLU_DANCE_ACTION_DOWNLOAD_LEVEL:I = 0x0

.field private static final VUI_LLU_DANCE_ACTION_PAUSE_DOWNLOAD_LEVEL:I = 0x2

.field private static final VUI_LLU_DANCE_ACTION_PLAY_LEVEL:I = 0x4

.field private static final VUI_LLU_DANCE_ACTION_RESUME_DOWNLOAD_LEVEL:I = 0x1

.field private static final VUI_LLU_DANCE_ACTION_RE_DOWNLOAD_LEVEL:I = 0x3


# instance fields
.field private listener:Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout$OnClickListener;

.field private mBtnLlu:Lcom/xiaopeng/xui/widget/XButton;

.field private mDanceData:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

.field private mEnableLevel:I

.field private mPbDownload:Landroid/widget/ProgressBar;

.field private mTvProgress:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 51
    iput p1, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mEnableLevel:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 51
    iput p2, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mEnableLevel:I

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 67
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/xiaopeng/lludancemanager/R$layout;->layout_llu_status:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 68
    sget p1, Lcom/xiaopeng/lludancemanager/R$id;->llu_activity_dance_video_control_action:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XButton;

    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mBtnLlu:Lcom/xiaopeng/xui/widget/XButton;

    .line 69
    sget p1, Lcom/xiaopeng/lludancemanager/R$id;->llu_activity_dance_download_progress:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mPbDownload:Landroid/widget/ProgressBar;

    .line 70
    sget p1, Lcom/xiaopeng/lludancemanager/R$id;->llu_activity_dance_item_download_progress_value:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mTvProgress:Lcom/xiaopeng/xui/widget/XTextView;

    .line 71
    sget-object p1, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->setVuiElementType(Lcom/xiaopeng/vui/commons/VuiElementType;)V

    .line 72
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mBtnLlu:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, p0}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mTvProgress:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, p0}, Lcom/xiaopeng/xui/widget/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showVuiFloatLayer(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 250
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private updateStateScene(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 137
    iput p1, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mEnableLevel:I

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update llu state level:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LluDanceStateLayout"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v0, Lcom/xiaopeng/lludancemanager/vui/LluStatefulButtonConstructor;

    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/xiaopeng/lludancemanager/vui/LluStatefulButtonConstructor;-><init>(Landroid/content/Context;I)V

    .line 140
    invoke-interface {v0, p0}, Lcom/xiaopeng/speech/vui/constructor/IStatefulButtonConstructor;->construct(Lcom/xiaopeng/vui/commons/IVuiElement;)V

    .line 141
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v2, "LluMain"

    invoke-virtual {p1, v2, v0, v1}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->updateVuiScene(Ljava/lang/String;Landroid/content/Context;[Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "view:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mDanceData:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getState()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LluDanceStateLayout"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mDanceData:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    if-nez p1, :cond_0

    const-string p1, "data is null when click."

    .line 148
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 151
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getState()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 174
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update data default. state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->listener:Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout$OnClickListener;

    if-eqz p1, :cond_1

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mDanceData:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    invoke-interface {p1, v0}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout$OnClickListener;->playDance(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V

    goto :goto_0

    .line 156
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->listener:Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout$OnClickListener;

    if-eqz p1, :cond_1

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mDanceData:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    invoke-interface {p1, v0}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout$OnClickListener;->pauseDownloadDance(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V

    goto :goto_0

    .line 169
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->listener:Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout$OnClickListener;

    if-eqz p1, :cond_1

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mDanceData:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    invoke-interface {p1, v0}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout$OnClickListener;->downloadDance(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onVuiEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)V
    .locals 2
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

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->getId()I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 182
    iget v0, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mEnableLevel:I

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 241
    sget p1, Lcom/xiaopeng/lludancemanager/R$string;->llu_action_disable:I

    invoke-virtual {p0, p1, p0}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->vuiFeedback(ILandroid/view/View;)V

    goto/16 :goto_1

    .line 224
    :cond_0
    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiEvent;->getHitVuiElement()Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/xiaopeng/lludancemanager/R$string;->llu_dance_action_play:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 225
    invoke-static {}, Lcom/xiaopeng/lludancemanager/LluDanceHelper;->getLluStateTips()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    const-string p1, "LluDanceStateLayout"

    const-string v0, "current state not support play llu,vui feedback directly .the reason please check the former log."

    .line 227
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0, p2, p0}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->vuiFeedback(ILandroid/view/View;)V

    goto :goto_0

    .line 231
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->showVuiFloatLayer(Landroid/view/View;)V

    .line 233
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->listener:Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout$OnClickListener;

    if-eqz p1, :cond_f

    .line 234
    iget-object p2, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mDanceData:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    invoke-interface {p1, p2}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout$OnClickListener;->downloadDance(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V

    goto/16 :goto_1

    .line 237
    :cond_2
    sget p1, Lcom/xiaopeng/lludancemanager/R$string;->llu_action_disable:I

    invoke-virtual {p0, p1, p0}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->vuiFeedback(ILandroid/view/View;)V

    goto/16 :goto_1

    .line 214
    :cond_3
    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiEvent;->getHitVuiElement()Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/xiaopeng/lludancemanager/R$string;->llu_dance_action_re_download:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 215
    iget-object p2, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->listener:Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout$OnClickListener;

    if-eqz p2, :cond_4

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mDanceData:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    invoke-interface {p2, v0}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout$OnClickListener;->downloadDance(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V

    .line 218
    :cond_4
    invoke-direct {p0, p1}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->showVuiFloatLayer(Landroid/view/View;)V

    goto/16 :goto_1

    .line 220
    :cond_5
    sget p1, Lcom/xiaopeng/lludancemanager/R$string;->llu_action_disable:I

    invoke-virtual {p0, p1, p0}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->vuiFeedback(ILandroid/view/View;)V

    goto/16 :goto_1

    .line 204
    :cond_6
    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiEvent;->getHitVuiElement()Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/xiaopeng/lludancemanager/R$string;->llu_dance_action_pause_download:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 205
    iget-object p2, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->listener:Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout$OnClickListener;

    if-eqz p2, :cond_7

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mDanceData:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    invoke-interface {p2, v0}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout$OnClickListener;->downloadDance(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V

    .line 208
    :cond_7
    invoke-direct {p0, p1}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->showVuiFloatLayer(Landroid/view/View;)V

    goto :goto_1

    .line 210
    :cond_8
    sget p1, Lcom/xiaopeng/lludancemanager/R$string;->llu_action_disable:I

    invoke-virtual {p0, p1, p0}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->vuiFeedback(ILandroid/view/View;)V

    goto :goto_1

    .line 194
    :cond_9
    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiEvent;->getHitVuiElement()Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/xiaopeng/lludancemanager/R$string;->llu_dance_action_resume_download:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 195
    iget-object p2, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->listener:Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout$OnClickListener;

    if-eqz p2, :cond_a

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mDanceData:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    invoke-interface {p2, v0}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout$OnClickListener;->downloadDance(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V

    .line 198
    :cond_a
    invoke-direct {p0, p1}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->showVuiFloatLayer(Landroid/view/View;)V

    goto :goto_1

    .line 200
    :cond_b
    sget p1, Lcom/xiaopeng/lludancemanager/R$string;->llu_action_disable:I

    invoke-virtual {p0, p1, p0}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->vuiFeedback(ILandroid/view/View;)V

    goto :goto_1

    .line 184
    :cond_c
    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiEvent;->getHitVuiElement()Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/xiaopeng/lludancemanager/R$string;->llu_dance_action_download:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 185
    iget-object p2, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->listener:Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout$OnClickListener;

    if-eqz p2, :cond_d

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mDanceData:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    invoke-interface {p2, v0}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout$OnClickListener;->downloadDance(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V

    .line 188
    :cond_d
    invoke-direct {p0, p1}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->showVuiFloatLayer(Landroid/view/View;)V

    goto :goto_1

    .line 190
    :cond_e
    sget p1, Lcom/xiaopeng/lludancemanager/R$string;->llu_action_disable:I

    invoke-virtual {p0, p1, p0}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->vuiFeedback(ILandroid/view/View;)V

    :cond_f
    :goto_1
    return-void
.end method

.method public setListener(Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->listener:Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout$OnClickListener;

    return-void
.end method

.method public updateData(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const-string v0, "LluDanceStateLayout"

    if-nez p1, :cond_0

    const-string p1, "data is null when update."

    .line 79
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 82
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mDanceData:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    .line 83
    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getState()I

    move-result v1

    .line 84
    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getDownloadedPercentage()D

    move-result-wide v2

    double-to-int p1, v2

    const/4 v2, 0x0

    const/16 v3, 0x8

    packed-switch v1, :pswitch_data_0

    .line 131
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update data default. state : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 103
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mBtnLlu:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 104
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mPbDownload:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 105
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mTvProgress:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 106
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mBtnLlu:Lcom/xiaopeng/xui/widget/XButton;

    sget v0, Lcom/xiaopeng/lludancemanager/R$string;->llu_dance_fragment_item_control_play:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    const/4 p1, 0x4

    .line 107
    invoke-direct {p0, p1}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->updateStateScene(I)V

    goto/16 :goto_0

    .line 124
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mBtnLlu:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 125
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mPbDownload:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 126
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mTvProgress:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 127
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mBtnLlu:Lcom/xiaopeng/xui/widget/XButton;

    sget v0, Lcom/xiaopeng/lludancemanager/R$string;->llu_dance_fragment_item_control_retry_download:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    const/4 p1, 0x3

    .line 128
    invoke-direct {p0, p1}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->updateStateScene(I)V

    goto/16 :goto_0

    .line 116
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mBtnLlu:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 117
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mPbDownload:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 118
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mTvProgress:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 119
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mBtnLlu:Lcom/xiaopeng/xui/widget/XButton;

    sget v0, Lcom/xiaopeng/lludancemanager/R$string;->llu_dance_fragment_item_control_continue_download:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    const/4 p1, 0x1

    .line 120
    invoke-direct {p0, p1}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->updateStateScene(I)V

    goto :goto_0

    .line 95
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mBtnLlu:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mPbDownload:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mTvProgress:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mPbDownload:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mTvProgress:Lcom/xiaopeng/xui/widget/XTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "%"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x2

    .line 100
    invoke-direct {p0, p1}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->updateStateScene(I)V

    goto :goto_0

    .line 110
    :pswitch_5
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mBtnLlu:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 111
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mPbDownload:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 112
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mTvProgress:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 113
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mBtnLlu:Lcom/xiaopeng/xui/widget/XButton;

    sget v0, Lcom/xiaopeng/lludancemanager/R$string;->llu_dance_fragment_item_control_waiting:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    goto :goto_0

    .line 87
    :pswitch_6
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mBtnLlu:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 88
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mPbDownload:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 89
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mTvProgress:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 90
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mBtnLlu:Lcom/xiaopeng/xui/widget/XButton;

    sget v0, Lcom/xiaopeng/lludancemanager/R$string;->llu_dance_fragment_item_control_download:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    .line 91
    invoke-direct {p0, v2}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->updateStateScene(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected vuiFeedback(ILandroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "content",
            "view"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 256
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->state(I)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mContext:Landroid/content/Context;

    .line 257
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->content(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->build()Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    move-result-object p1

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->vuiFeedback(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    :cond_0
    return-void
.end method
