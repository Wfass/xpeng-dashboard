.class public abstract Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;
.super Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;
.source "AbstractCustomKeyControlPanel.java"


# instance fields
.field protected mAdapter:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;

.field private mDividerHeight:I

.field private final mListener:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$OnItemCheckedListener;

.field protected mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;-><init>()V

    .line 39
    new-instance v0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/-$$Lambda$kx4ddqQBOqxAMM-MYhVPela-JDc;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/-$$Lambda$kx4ddqQBOqxAMM-MYhVPela-JDc;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;->mListener:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$OnItemCheckedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;->mDividerHeight:I

    return p0
.end method

.method private handleKeyEvent(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyCode"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleKeyEvent::keyCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3f3

    const-string v3, "/system/media/audio/xiaopeng/cdu/wav/CDU_wheel_scroll_2.wav"

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3f4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3f7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x43b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x43c

    if-eq p1, v0, :cond_2

    return v2

    :cond_0
    const-string p1, "/system/media/audio/xiaopeng/cdu/wav/CDU_wheel_tip_1.wav"

    .line 146
    invoke-static {p1, v2, v1}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->play(Ljava/lang/String;ZZ)V

    .line 147
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;->dismiss()V

    goto :goto_0

    .line 151
    :cond_1
    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->play(Ljava/lang/String;ZZ)V

    .line 152
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;->mAdapter:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->increase()V

    goto :goto_0

    .line 156
    :cond_2
    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->play(Ljava/lang/String;ZZ)V

    .line 157
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;->mAdapter:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->decrease()V

    goto :goto_0

    .line 143
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;->dismiss()V

    :goto_0
    return v1
.end method


# virtual methods
.method protected abstract getBackgroundId()I
.end method

.method protected getLayoutId()I
    .locals 1

    .line 74
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$layout;->custom_key_panel:I

    return v0
.end method

.method protected abstract getTitleId()I
.end method

.method protected abstract getTitleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public synthetic lambda$onInitView$0$AbstractCustomKeyControlPanel(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;->dismiss()V

    return-void
.end method

.method protected needInitVm()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDismiss()V
    .locals 2

    .line 65
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;->onDismiss()V

    .line 66
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$id;->custom_key_bg:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected onInitView()V
    .locals 5

    .line 83
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$id;->close_btn:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    .line 84
    new-instance v1, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/-$$Lambda$AbstractCustomKeyControlPanel$Um3KFlRrxOI9h5ZS2cwal1xMDiE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/-$$Lambda$AbstractCustomKeyControlPanel$Um3KFlRrxOI9h5ZS2cwal1xMDiE;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "generalAct"

    const-string v3, "System.Close"

    .line 88
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 90
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 92
    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiProps(Lorg/json/JSONObject;)V

    .line 93
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;->getTitleId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    sget v1, Lcom/xiaopeng/carcontrolmodule/R$id;->title:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 96
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$id;->title:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiFatherElementId(Ljava/lang/String;)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$dimen;->custom_key_divider_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;->mDividerHeight:I

    .line 100
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$id;->custom_key_list:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRecyclerView;

    .line 101
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 v1, 0x0

    .line 102
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 103
    new-instance v1, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel$1;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 119
    new-instance v1, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;->getTitleList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;->mListener:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$OnItemCheckedListener;

    sget v4, Lcom/xiaopeng/carcontrolmodule/R$id;->title:I

    invoke-direct {v1, v2, v3, v4}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;-><init>(Ljava/util/List;Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$OnItemCheckedListener;I)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;->mAdapter:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;

    .line 120
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 121
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->initRecyclerView(Lcom/xiaopeng/xui/widget/XRecyclerView;Ljava/lang/String;)V

    return-void
.end method

.method protected onInitViewModel()V
    .locals 2

    .line 51
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/meter/IMeterViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    return-void
.end method

.method protected onKey(ILandroid/view/KeyEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 132
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    .line 133
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;->handleKeyEvent(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onShow()V
    .locals 2

    .line 56
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;->onShow()V

    .line 57
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$id;->custom_key_bg:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;->getBackgroundId()I

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;->getBackgroundId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method protected abstract setCustomKey(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
.end method
