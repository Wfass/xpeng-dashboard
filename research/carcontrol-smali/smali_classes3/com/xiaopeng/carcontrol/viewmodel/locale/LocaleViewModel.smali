.class public Lcom/xiaopeng/carcontrol/viewmodel/locale/LocaleViewModel;
.super Ljava/lang/Object;
.source "LocaleViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/locale/ILocaleViewModel;


# static fields
.field private static final TAG:Ljava/lang/String; = "LocaleViewModel"


# instance fields
.field private final mCountryData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentCalls:[Ljava/lang/String;

.field private mCurrentCountry:Ljava/lang/String;

.field private final mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mRescueCallsData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/locale/LocaleViewModel$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/locale/LocaleViewModel$1;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/locale/LocaleViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/locale/LocaleViewModel;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 39
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/locale/LocaleViewModel;->mRescueCallsData:Landroidx/lifecycle/MutableLiveData;

    .line 40
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/locale/LocaleViewModel;->mCountryData:Landroidx/lifecycle/MutableLiveData;

    .line 43
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/locale/LocaleViewModel;->registerLocaleChangedReceiver()V

    .line 44
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/locale/LocaleViewModel;->handleLocaleChanged()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/locale/LocaleViewModel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/viewmodel/locale/LocaleViewModel;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/locale/LocaleViewModel;->handleLocaleChanged()V

    return-void
.end method

.method private handleLocaleChanged()V
    .locals 3

    .line 58
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/locale/LocaleViewModel;->mCurrentCountry:Ljava/lang/String;

    .line 60
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "SE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "NO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "NL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "DK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/locale/LocaleViewModel;->mCurrentCalls:[Ljava/lang/String;

    goto :goto_1

    .line 65
    :pswitch_0
    sget-object v0, Lcom/xiaopeng/carcontrol/GlobalConstant$CALLS;->RESCUE_CALLS_SE:[Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/locale/LocaleViewModel;->mCurrentCalls:[Ljava/lang/String;

    goto :goto_1

    .line 62
    :pswitch_1
    sget-object v0, Lcom/xiaopeng/carcontrol/GlobalConstant$CALLS;->RESCUE_CALLS_NO:[Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/locale/LocaleViewModel;->mCurrentCalls:[Ljava/lang/String;

    goto :goto_1

    .line 71
    :pswitch_2
    sget-object v0, Lcom/xiaopeng/carcontrol/GlobalConstant$CALLS;->RESCUE_CALLS_NL:[Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/locale/LocaleViewModel;->mCurrentCalls:[Ljava/lang/String;

    goto :goto_1

    .line 68
    :pswitch_3
    sget-object v0, Lcom/xiaopeng/carcontrol/GlobalConstant$CALLS;->RESCUE_CALLS_DK:[Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/locale/LocaleViewModel;->mCurrentCalls:[Ljava/lang/String;

    goto :goto_1

    .line 74
    :pswitch_4
    sget-object v0, Lcom/xiaopeng/carcontrol/GlobalConstant$CALLS;->RESCUE_CALLS_CN:[Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/locale/LocaleViewModel;->mCurrentCalls:[Ljava/lang/String;

    .line 81
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/locale/LocaleViewModel;->mCountryData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/locale/LocaleViewModel;->mCurrentCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/locale/LocaleViewModel;->mRescueCallsData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/locale/LocaleViewModel;->mCurrentCalls:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x86b -> :sswitch_4
        0x887 -> :sswitch_3
        0x9be -> :sswitch_2
        0x9c1 -> :sswitch_1
        0xa52 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private registerLocaleChangedReceiver()V
    .locals 3

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/locale/LocaleViewModel;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/carcontrol/App;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 53
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/locale/LocaleViewModel;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/locale/LocaleViewModel;->mCurrentCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/locale/LocaleViewModel;->mCountryData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getRecuseCallsData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/locale/LocaleViewModel;->mRescueCallsData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getRescueCalls()[Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/locale/LocaleViewModel;->mCurrentCalls:[Ljava/lang/String;

    return-object v0
.end method
