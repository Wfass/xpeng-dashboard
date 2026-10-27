.class public Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;
.super Lcom/xiaopeng/carcontrol/viewmodel/account/AccountBaseViewModel;
.source "AccountViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/account/IAccountViewModel;
.implements Lcom/xiaopeng/carcontrol/model/DataSyncModel$GroupChangeListener;


# static fields
.field public static final EXAM_TASK_NET_FAILURE:I = 0x2

.field public static final EXAM_TASK_OTHER_FAILURE:I = 0x3

.field public static final EXAM_TASK_OTP_FAILURE:I = 0x1

.field private static final HTTP_OK:I = 0xc8

.field public static PENDING_FOR_CLOSE_SMART_DRIVE_SCORE:Z = false

.field public static final TASK_ID_APA:J = 0x4L

.field public static final TASK_ID_CNGP:J = 0x6L

.field public static final TASK_ID_DRIVING:J = 0xcL

.field public static final TASK_ID_DRIVING_WITH_LIDAR:J = 0xaL

.field public static final TASK_ID_FREENGP:J = 0xeL

.field public static final TASK_ID_LCC:J = 0x2L

.field public static final TASK_ID_LCC_L:J = 0x8L

.field public static final TASK_ID_MEM:J = 0x3L

.field public static final TASK_ID_NGP:J = 0x1L

.field public static final TASK_ID_NGP_LIDAR_V2:J = 0x65L

.field public static final TASK_ID_NGP_V2:J = 0x64L

.field public static final TASK_ID_PARKING:J = 0xdL

.field public static final TASK_ID_PARKING_WITH_LIDAR:J = 0xbL

.field public static final TASK_ID_SUPER_VPA:J = 0x7L

.field public static final TASK_ID_VPA_V2:J = 0x67L

.field public static final TASK_ID_XNGP:J = 0x9L


# instance fields
.field private habitRestoreIconStateData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isLogin:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private localExamResultAllPassed:Z

.field private loginExamRequestCompleted:Z

.field private final mAccount:Lcom/xiaopeng/xvs/xid/account/api/IAccount;

.field private final mCheckXPilotExamResultTask:Ljava/lang/Runnable;

.field private final mCreateHabitGroupStateDelayTask:Ljava/lang/Runnable;

.field private final mCreateSyncGroup:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCreateSyncGroupDelayTask:Ljava/lang/Runnable;

.field private final mDeleteHabitGroupStateDelayTask:Ljava/lang/Runnable;

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private final mExamUrlExam:Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamUrlResult;

.field private final mFreeNgpUidResult:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mHabitGroupStateData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHabitList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLccGroupIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mLccNoLidarGroupIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

.field private final mMemParkIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mMemParkNoLidarIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mOtp:Ljava/lang/String;

.field private final mOwnerAccount:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

.field private final mSyncGroupInfo:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/bean/SyncGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskCompleted:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskFailure:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamError;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskListResult:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskLoopResult:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskQrCode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamUrlResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskResult:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamResult;",
            ">;"
        }
    .end annotation
.end field

.field private mUid:Ljava/lang/String;

.field private final mUserInfo:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

.field private retryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 174
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountBaseViewModel;-><init>()V

    .line 127
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->isLogin:Landroidx/lifecycle/MutableLiveData;

    .line 128
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mSyncGroupInfo:Landroidx/lifecycle/MutableLiveData;

    .line 129
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mCreateSyncGroup:Landroidx/lifecycle/MutableLiveData;

    .line 130
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mHabitGroupStateData:Landroidx/lifecycle/MutableLiveData;

    .line 131
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->habitRestoreIconStateData:Landroidx/lifecycle/MutableLiveData;

    .line 136
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUserInfo:Landroidx/lifecycle/MutableLiveData;

    .line 137
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mHabitList:Landroidx/lifecycle/MutableLiveData;

    .line 138
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mOwnerAccount:Landroidx/lifecycle/MutableLiveData;

    .line 140
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mTaskQrCode:Landroidx/lifecycle/MutableLiveData;

    .line 141
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mTaskResult:Landroidx/lifecycle/MutableLiveData;

    .line 142
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mTaskListResult:Landroidx/lifecycle/MutableLiveData;

    .line 143
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mTaskLoopResult:Landroidx/lifecycle/MutableLiveData;

    .line 144
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mTaskCompleted:Landroidx/lifecycle/MutableLiveData;

    .line 145
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mFreeNgpUidResult:Landroidx/lifecycle/MutableLiveData;

    .line 146
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mTaskFailure:Landroidx/lifecycle/MutableLiveData;

    .line 147
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamUrlResult;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamUrlResult;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mExamUrlExam:Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamUrlResult;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Long;

    const-wide/16 v2, 0x8

    .line 151
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-wide/16 v4, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mLccGroupIds:Ljava/util/List;

    new-array v1, v4, [Ljava/lang/Long;

    aput-object v2, v1, v3

    .line 152
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mLccNoLidarGroupIds:Ljava/util/List;

    new-array v0, v0, [Ljava/lang/Long;

    const-wide/16 v1, 0x3

    .line 153
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v3

    const-wide/16 v5, 0x7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mMemParkIds:Ljava/util/List;

    new-array v0, v4, [Ljava/lang/Long;

    aput-object v1, v0, v3

    .line 154
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mMemParkNoLidarIds:Ljava/util/List;

    .line 157
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$Kbl9G3LLnJL7aZD8mja4YYod5xs;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$Kbl9G3LLnJL7aZD8mja4YYod5xs;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mCreateSyncGroupDelayTask:Ljava/lang/Runnable;

    .line 160
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$qa2fFyWXH_PM49336b3Fr7bzu-Q;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$qa2fFyWXH_PM49336b3Fr7bzu-Q;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mCreateHabitGroupStateDelayTask:Ljava/lang/Runnable;

    .line 162
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$TJjJ5VAXVrqrxHHsuxQuUg05_oU;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$TJjJ5VAXVrqrxHHsuxQuUg05_oU;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mDeleteHabitGroupStateDelayTask:Ljava/lang/Runnable;

    .line 167
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$M1xa5DZ8_fh-Evk4ldhEdDFrY6Q;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$M1xa5DZ8_fh-Evk4ldhEdDFrY6Q;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mCheckXPilotExamResultTask:Ljava/lang/Runnable;

    .line 169
    iput-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->localExamResultAllPassed:Z

    .line 170
    iput-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->loginExamRequestCompleted:Z

    .line 171
    iput v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->retryCount:I

    .line 175
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    const-string/jumbo v1, "xp_scu"

    .line 178
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    .line 180
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    const-string/jumbo v1, "xp_xpu"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    .line 182
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    const-string/jumbo v1, "xp_mcu"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    .line 183
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getAccountApi()Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mAccount:Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    .line 185
    invoke-direct {p0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->handleCreateSyncGroupState(I)V

    .line 186
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getInstance()Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setGroupChangeListener(Lcom/xiaopeng/carcontrol/model/DataSyncModel$GroupChangeListener;)V

    .line 187
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getAccountApi()Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$1;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)V

    invoke-interface {v0, v1, v4}, Lcom/xiaopeng/xvs/xid/account/api/IAccount;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->habitRestoreIconStateData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamUrlResult;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mExamUrlExam:Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamUrlResult;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mFreeNgpUidResult:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)I
    .locals 0

    .line 101
    iget p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->retryCount:I

    return p0
.end method

.method static synthetic access$1302(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;I)I
    .locals 0

    .line 101
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->retryCount:I

    return p1
.end method

.method static synthetic access$1308(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)I
    .locals 2

    .line 101
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->retryCount:I

    return v0
.end method

.method static synthetic access$1402(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;Z)Z
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->loginExamRequestCompleted:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mTaskCompleted:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mTaskListResult:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Ljava/lang/Runnable;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mCheckXPilotExamResultTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mTaskQrCode:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mTaskLoopResult:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;JI)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->saveExamResultToLocal(JI)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mTaskResult:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;J)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->turnOffByExamNotPassed(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mTaskFailure:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Ljava/lang/String;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    return-object p0
.end method

.method private checkOtpAndUid()Z
    .locals 11

    const-string v0, "X_EXAM_AccountViewModel"

    .line 1103
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getAccountManager()Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.xiaopeng.accountservice.ACCOUNT_TYPE_XP_VEHICLE"

    .line 1104
    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 1105
    array-length v2, v1

    const/4 v3, 0x0

    if-lez v2, :cond_1

    .line 1106
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getAccountManager()Landroid/accounts/AccountManager;

    move-result-object v2

    aget-object v4, v1, v3

    const-string v5, "uid"

    .line 1107
    invoke-virtual {v2, v4, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1108
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v4, "app_id"

    const-string/jumbo v5, "xp_car_setting_car"

    .line 1109
    invoke-virtual {v7, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getAccountManager()Landroid/accounts/AccountManager;

    move-result-object v4

    aget-object v5, v1, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v6, "com.xiaopeng.accountservice.AUTH_TYPE_AUTH_OTP"

    .line 1111
    invoke-virtual/range {v4 .. v10}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    .line 1115
    :try_start_0
    invoke-interface {v1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v4, "authtoken"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mOtp:Ljava/lang/String;

    .line 1116
    iput-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    .line 1117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetch the otp and uid otp = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mOtp:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " uid = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1118
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mOtp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    :goto_0
    const-string v2, "check otp occurs an exception!"

    .line 1120
    invoke-static {v0, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1121
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v3
.end method

.method private checkXPilotExamResult()V
    .locals 7

    .line 1129
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1130
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const-string v1, "isSupportNgp"

    .line 1131
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "X_EXAM_AccountViewModel"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 1132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request NGP exam result for Uid: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v4, 0x1

    .line 1133
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "isSupportMemPark"

    .line 1135
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v4, "isSupportLidarSafeExam"

    if-eqz v1, :cond_2

    .line 1136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request VPA exam result for Uid: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1137
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1138
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mMemParkIds:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1140
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mMemParkNoLidarIds:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_0
    const-string v1, "isSupportAutoPark"

    .line 1143
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request APA exam result for Uid: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v5, 0x4

    .line 1145
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v1, "isSupportLcc"

    .line 1147
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request LCC exam result for Uid: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1149
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1150
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mLccGroupIds:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1152
    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mLccNoLidarGroupIds:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    :goto_1
    const-string v1, "isSupportCNgp"

    .line 1155
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request CNGP exam result for Uid: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v1, 0x6

    .line 1157
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const-wide/16 v1, 0xb

    .line 1159
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v1, 0xa

    .line 1160
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v1, 0xd

    .line 1161
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v1, 0xc

    .line 1162
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v1, 0xe

    .line 1163
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1166
    invoke-direct {p0, v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->requestGroupRequest(Ljava/util/List;I)V

    :cond_7
    return-void
.end method

.method private gotoXPilotPage()V
    .locals 5

    .line 1091
    invoke-static {}, Lcom/xiaopeng/carcontrol/direct/ElementDirectManager;->getElementDirect()Lcom/xiaopeng/carcontrol/direct/IElementDirect;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "xiaopeng://carcontrol/xpilotcontrol"

    .line 1093
    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/direct/IElementDirect;->convertUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1094
    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/direct/IElementDirect;->checkSupport(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1095
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGuiPageOpenState 0 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "X_EXAM_AccountViewModel"

    invoke-static {v4, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1096
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/xiaopeng/carcontrol/direct/IElementDirect;->showPageDirect(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private handleCreateSyncGroupState(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1226
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mCreateSyncGroup:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private handleHabitGroupState(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1230
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mHabitGroupStateData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private handleSyncGroupInfo()V
    .locals 4

    .line 1197
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/SyncGroupInfo;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/bean/SyncGroupInfo;-><init>()V

    .line 1198
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getCurrentSyncGroupId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/carcontrol/bean/SyncGroupInfo;->groupId:Ljava/lang/String;

    .line 1199
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getCurrentSyncGroupName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/carcontrol/bean/SyncGroupInfo;->groupName:Ljava/lang/String;

    .line 1201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSyncGroupInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/SyncGroupInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X_EXAM_AccountViewModel"

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mSyncGroupInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1203
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getHabitList()Ljava/lang/String;

    move-result-object v0

    .line 1204
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mHabitList:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSyncGroupInfo getHabitList: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleSyncUserInfo(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 1209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSyncUserInfo UID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X_EXAM_AccountViewModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "-1"

    .line 1210
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1211
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUserInfo:Landroidx/lifecycle/MutableLiveData;

    const-string v0, "guest"

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1212
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mOwnerAccount:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "handleSyncUserInfo"

    .line 1214
    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getCurrentSyncUserInfo()Ljava/lang/String;

    move-result-object p1

    .line 1216
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mOwnerAccount:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->isOwnerAccount()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1217
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUserInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1218
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getHabitList()Ljava/lang/String;

    move-result-object p1

    .line 1219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "habits: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mHabitList:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private isLocalExamResultAllPassed()Z
    .locals 4

    const-string v0, "isSupportCNgp"

    .line 475
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getDrivingWithLidarSafeExamResult(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getParkingWithLidarSafeExamResult(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getDrivingSafeExamResult(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getParkingSafeExamResult(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v1
.end method

.method public static synthetic lambda$2P_pXr5S9bLw282CCOg2Is5xaSc(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->requestFreengpUidResult()V

    return-void
.end method

.method public static synthetic lambda$M1xa5DZ8_fh-Evk4ldhEdDFrY6Q(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->checkXPilotExamResult()V

    return-void
.end method

.method private postResultRequest(JI)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taskId",
            "result"
        }
    .end annotation

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "post test result...,uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " taskId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X_EXAM_AccountViewModel"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 882
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->checkOtpAndUid()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "check otp and uid failure!"

    .line 883
    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mOtp:Ljava/lang/String;

    invoke-static {v0, v2, p1, p2, p3}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->buildPostResultRequest(Ljava/lang/String;Ljava/lang/String;JI)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "Build post result request failure."

    .line 888
    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 891
    :cond_1
    new-instance p2, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/SimpleProcess;

    invoke-direct {p2}, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/SimpleProcess;-><init>()V

    invoke-interface {p1, p2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    return-void
.end method

.method private requestExamResult(JI)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taskId",
            "origin"
        }
    .end annotation

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestExamResult,taskId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " origin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X_EXAM_AccountViewModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 613
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->checkOtpAndUid()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    const-string v3, "check otp and uid failure!"

    .line 614
    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    if-ne p3, v0, :cond_0

    .line 616
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mTaskFailure:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamError;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamError;-><init>(JI)V

    invoke-virtual {p3, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mOtp:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->buildFetchResultRequest(Ljava/lang/String;Ljava/lang/String;J)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    .line 621
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamResultProcess;

    new-instance v2, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$3;

    invoke-direct {v2, p0, p3, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$3;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;IJ)V

    invoke-direct {v1, v2, p3}, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamResultProcess;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/account/response/ExamResultResponseCallback;I)V

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    return-void
.end method

.method private requestExamUrl(J)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskId"
        }
    .end annotation

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestExamUrl,taskId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X_EXAM_AccountViewModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mExamUrlExam:Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamUrlResult;

    iput-wide p1, v0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamUrlResult;->taskId:J

    .line 573
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mExamUrlExam:Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamUrlResult;

    const/4 v2, 0x2

    iput v2, v0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamUrlResult;->examState:I

    .line 574
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->checkOtpAndUid()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 575
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mTaskQrCode:Landroidx/lifecycle/MutableLiveData;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mExamUrlExam:Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamUrlResult;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    const-string p1, "check otp and uid failure!"

    .line 576
    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mOtp:Ljava/lang/String;

    invoke-static {v0, v3, p1, p2}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->buildFetchExamRequest(Ljava/lang/String;Ljava/lang/String;J)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object p1

    if-nez p1, :cond_1

    .line 581
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mTaskQrCode:Landroidx/lifecycle/MutableLiveData;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mExamUrlExam:Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamUrlResult;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    const-string p1, "Request build failure in requestExamUrl!"

    .line 582
    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 585
    :cond_1
    new-instance p2, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamInfoResultProcess;

    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$2;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)V

    invoke-direct {p2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamInfoResultProcess;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/account/response/ExamInfoResponseCallback;)V

    invoke-interface {p1, p2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    return-void
.end method

.method private requestFreengpUidResult()V
    .locals 7

    .line 665
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->checkOtpAndUid()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "X_EXAM_AccountViewModel"

    if-nez v0, :cond_0

    const-string v0, "check otp and uid failure!"

    .line 666
    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 667
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mTaskFailure:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamError;

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamError;-><init>(JI)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    .line 670
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 671
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mOtp:Ljava/lang/String;

    const-string v4, "otp"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/ModuleUtils;->getHttp()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v0, "Http module is null"

    .line 674
    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 677
    :cond_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/EnvironmentUtils;->getAppSecret()Ljava/lang/String;

    move-result-object v1

    .line 678
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getVIN()Ljava/lang/String;

    move-result-object v2

    .line 679
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://xmart.xiaopeng.com/autopilot-op/v1/vehicle/ngp/familiar/road/user/check?vin="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 680
    invoke-interface {v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v3

    .line 681
    invoke-interface {v3, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->get(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v3

    const-string/jumbo v4, "xp_car_setting_car"

    .line 682
    invoke-interface {v3, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->appId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->uid(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v3

    .line 683
    invoke-interface {v3, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->needAuthorizationInfo(Ljava/util/Map;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 684
    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->buildWithSecretKey(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    const-string v4, "XP-Uid"

    .line 685
    invoke-interface {v0, v4, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    const/4 v3, 0x3

    .line 686
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "XP-Encryption-Type"

    invoke-interface {v0, v4, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    .line 688
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mOtp:Ljava/lang/String;

    const-string v4, "GET"

    const-string v5, ""

    invoke-static {v0, v4, v5, v1, v3}, Lcom/xiaopeng/carcontrol/util/NoneSecurityUtils;->getAuthorization(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "XP-Authorization"

    invoke-interface {v0, v6, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    .line 691
    invoke-static {v0, v4, v5, v1}, Lcom/xiaopeng/carcontrol/util/NoneSecurityUtils;->getSignature(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "XP-Signature"

    invoke-interface {v0, v3, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    .line 694
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$4;

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$4;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    return-void
.end method

.method private requestGroupRequest(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taskIds",
            "origin"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_3

    const-wide/16 v2, 0x64

    .line 735
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getNgpSafeExamResult(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v4, v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getLccSafeExamResult(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    invoke-direct {p0, v2, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->saveExamResultToLocal(JI)V

    const-wide/16 v2, 0x65

    .line 736
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v4, v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getNgpSafeExamResult(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v4, v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getCngpSafeExamResult(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v4, v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getLccSafeExamResult(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    invoke-direct {p0, v2, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->saveExamResultToLocal(JI)V

    const-wide/16 v2, 0x67

    .line 737
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v4, v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getMemParkExamResult(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v4, v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getApaSafeExamResult(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v0

    :goto_2
    invoke-direct {p0, v2, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->saveExamResultToLocal(JI)V

    .line 740
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGroupRequest,taskIds:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " origin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "X_EXAM_AccountViewModel"

    invoke-static {v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p2, v1, :cond_4

    move v2, v1

    goto :goto_3

    :cond_4
    move v2, v0

    :goto_3
    if-eqz p1, :cond_9

    .line 742
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    const-string v4, "get task list..."

    .line 746
    invoke-static {v3, v4, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 747
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->checkOtpAndUid()Z

    move-result v4

    if-nez v4, :cond_7

    if-eqz v2, :cond_6

    .line 749
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mTaskFailure:Landroidx/lifecycle/MutableLiveData;

    new-instance p2, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamError;

    const-wide/16 v4, 0x0

    invoke-direct {p2, v4, v5, v1}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamError;-><init>(JI)V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_6
    const-string p1, "check otp and uid failure!"

    .line 751
    invoke-static {v3, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 754
    :cond_7
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mOtp:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->buildFetchGroupResultRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    if-nez v0, :cond_8

    const-string p1, "Build Fetch group request failure."

    .line 756
    invoke-static {v3, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 759
    :cond_8
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcess;

    new-instance v2, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$5;

    invoke-direct {v2, p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$5;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;Ljava/util/List;I)V

    invoke-direct {v1, v2, p2}, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcess;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/account/response/ExamGroupResultResponseCallback;I)V

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    return-void

    :cond_9
    :goto_4
    const-string p1, "task id is empty!"

    .line 743
    invoke-static {v3, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private requestGroupRequestV2(JLjava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "taskId",
            "taskIds",
            "origin"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestGroupRequest V2, taskId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " taskIds:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " origin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X_EXAM_AccountViewModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ne p4, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    if-eqz p3, :cond_5

    .line 830
    invoke-static {p3}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "get task list..."

    .line 834
    invoke-static {v1, v4, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 835
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->checkOtpAndUid()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v3, :cond_2

    .line 837
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mTaskFailure:Landroidx/lifecycle/MutableLiveData;

    new-instance p4, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamError;

    invoke-direct {p4, p1, p2, v2}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamError;-><init>(JI)V

    invoke-virtual {p3, p4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_2
    const-string p1, "check otp and uid failure!"

    .line 839
    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 842
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mOtp:Ljava/lang/String;

    invoke-static {v0, v2, p3}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->buildFetchGroupResultRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object p3

    if-nez p3, :cond_4

    const-string p1, "Build Fetch group request failure."

    .line 844
    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 847
    :cond_4
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcessV2;

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$6;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;J)V

    invoke-direct {v0, p1, p2, v1, p4}, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcessV2;-><init>(JLcom/xiaopeng/carcontrol/viewmodel/account/response/ExamResultResponseCallback;I)V

    invoke-interface {p3, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    return-void

    :cond_5
    :goto_1
    const-string p1, "task id is empty!"

    .line 831
    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private saveCloseResultToLocalByUid(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taskId",
            "uid"
        }
    .end annotation

    .line 1048
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    const-string v1, "uid:"

    const-string v2, "X_EXAM_AccountViewModel"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 1049
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/NgpExamModel;->getInstance()Lcom/xiaopeng/carcontrol/model/NgpExamModel;

    move-result-object v0

    invoke-virtual {v0, p2, v3}, Lcom/xiaopeng/carcontrol/model/NgpExamModel;->setNgpExamResult(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1050
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    .line 1051
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/MemParkExamModel;->getInstance()Lcom/xiaopeng/carcontrol/model/MemParkExamModel;

    move-result-object v0

    invoke-virtual {v0, p2, v3}, Lcom/xiaopeng/carcontrol/model/MemParkExamModel;->setMemParkExamResult(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1052
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 1053
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/LccExamModel;->getInstance()Lcom/xiaopeng/carcontrol/model/LccExamModel;

    move-result-object v0

    invoke-virtual {v0, p2, v3}, Lcom/xiaopeng/carcontrol/model/LccExamModel;->setLccExamResult(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1054
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    .line 1055
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/ApaExamModel;->getInstance()Lcom/xiaopeng/carcontrol/model/ApaExamModel;

    move-result-object v0

    invoke-virtual {v0, p2, v3}, Lcom/xiaopeng/carcontrol/model/ApaExamModel;->setApaExamResult(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1056
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x6

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    .line 1057
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/CngpExamModel;->getInstance()Lcom/xiaopeng/carcontrol/model/CngpExamModel;

    move-result-object v0

    invoke-virtual {v0, p2, v3}, Lcom/xiaopeng/carcontrol/model/CngpExamModel;->setCngpExamResult(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1058
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x7

    cmp-long v0, v4, v6

    if-nez v0, :cond_5

    .line 1059
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/SuperVpaExamModel;->getInstance()Lcom/xiaopeng/carcontrol/model/SuperVpaExamModel;

    move-result-object v0

    invoke-virtual {v0, p2, v3}, Lcom/xiaopeng/carcontrol/model/SuperVpaExamModel;->setSuperVpaExamResult(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1060
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x8

    cmp-long v0, v4, v6

    if-nez v0, :cond_6

    .line 1061
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/SuperLccExamModel;->getInstance()Lcom/xiaopeng/carcontrol/model/SuperLccExamModel;

    move-result-object v0

    invoke-virtual {v0, p2, v3}, Lcom/xiaopeng/carcontrol/model/SuperLccExamModel;->setSuperLccExamResult(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1062
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x9

    cmp-long v0, v4, v6

    if-nez v0, :cond_7

    .line 1063
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/XngpExamModel;->getInstance()Lcom/xiaopeng/carcontrol/model/XngpExamModel;

    move-result-object v0

    invoke-virtual {v0, p2, v3}, Lcom/xiaopeng/carcontrol/model/XngpExamModel;->setXngpExamResult(Ljava/lang/String;Z)V

    .line 1068
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Save close result to local, taskId:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1065
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Save close result to local, invalid task id:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private saveExamResultToLocal(JI)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taskId",
            "result"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-wide/16 v2, 0x1

    cmp-long v2, p1, v2

    const-string v3, "X_EXAM_AccountViewModel"

    if-nez v2, :cond_1

    .line 907
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setNgpSafeExamResult(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_1
    const-wide/16 v4, 0x3

    cmp-long v2, p1, v4

    if-nez v2, :cond_2

    .line 909
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setMemParkSafeExamResult(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_2
    const-wide/16 v4, 0x2

    cmp-long v2, p1, v4

    if-nez v2, :cond_3

    .line 911
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setLccSafeExamResult(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_3
    const-wide/16 v4, 0x4

    cmp-long v2, p1, v4

    if-nez v2, :cond_4

    .line 913
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setApaSafeExamResult(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_4
    const-wide/16 v4, 0x6

    cmp-long v2, p1, v4

    if-nez v2, :cond_5

    .line 915
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setCngpSafeExamResult(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_5
    const-wide/16 v4, 0x9

    cmp-long v2, p1, v4

    if-nez v2, :cond_6

    .line 917
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setXngpSafeExamResult(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_6
    const-wide/16 v4, 0x8

    cmp-long v2, p1, v4

    if-nez v2, :cond_7

    .line 919
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-interface {v2, v4, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setSuperLccSafeExamResult(Ljava/lang/String;Z)V

    if-eqz v1, :cond_10

    .line 921
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setLccSafeExamResult(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_7
    const-wide/16 v4, 0x7

    cmp-long v2, p1, v4

    if-nez v2, :cond_8

    .line 924
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-interface {v2, v4, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setSuperVpaSafeExamResult(Ljava/lang/String;Z)V

    if-eqz v1, :cond_10

    .line 926
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setMemParkSafeExamResult(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_8
    const-wide/16 v4, 0xe

    cmp-long v2, p1, v4

    if-nez v2, :cond_9

    .line 929
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setFreeNgpSafeExamResult(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_9
    const-wide/16 v4, 0xb

    cmp-long v2, p1, v4

    if-nez v2, :cond_a

    .line 932
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-interface {v2, v4, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setParkingWithLidarSafeExamResult(Ljava/lang/String;Z)V

    if-eqz v1, :cond_10

    .line 934
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setApaSafeExamResult(Ljava/lang/String;Z)V

    .line 935
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setMemParkSafeExamResult(Ljava/lang/String;Z)V

    .line 936
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setMemParkSafeExamResultV2(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_a
    const-wide/16 v4, 0xa

    cmp-long v2, p1, v4

    if-nez v2, :cond_b

    .line 939
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-interface {v2, v4, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setDrivingWithLidarSafeExamResult(Ljava/lang/String;Z)V

    if-eqz v1, :cond_10

    .line 941
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setLccSafeExamResult(Ljava/lang/String;Z)V

    .line 942
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setCngpSafeExamResult(Ljava/lang/String;Z)V

    .line 943
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setNgpSafeExamResult(Ljava/lang/String;Z)V

    .line 944
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setNgpWithLidarSafeExamResultV2(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_b
    const-wide/16 v4, 0xd

    cmp-long v2, p1, v4

    if-nez v2, :cond_c

    .line 947
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-interface {v2, v4, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setParkingSafeExamResult(Ljava/lang/String;Z)V

    if-eqz v1, :cond_10

    .line 949
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setApaSafeExamResult(Ljava/lang/String;Z)V

    .line 950
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setMemParkSafeExamResult(Ljava/lang/String;Z)V

    .line 951
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setMemParkSafeExamResultV2(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_c
    const-wide/16 v4, 0xc

    cmp-long v2, p1, v4

    if-nez v2, :cond_d

    .line 954
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-interface {v2, v4, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setDrivingSafeExamResult(Ljava/lang/String;Z)V

    if-eqz v1, :cond_10

    .line 956
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setLccSafeExamResult(Ljava/lang/String;Z)V

    .line 957
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setNgpSafeExamResult(Ljava/lang/String;Z)V

    .line 958
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setNgpSafeExamResultV2(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_d
    const-wide/16 v4, 0x64

    cmp-long v0, p1, v4

    if-nez v0, :cond_e

    .line 961
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setNgpSafeExamResultV2(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_e
    const-wide/16 v4, 0x65

    cmp-long v0, p1, v4

    if-nez v0, :cond_f

    .line 963
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setNgpWithLidarSafeExamResultV2(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_f
    const-wide/16 v4, 0x67

    cmp-long v0, p1, v4

    if-nez v0, :cond_11

    .line 965
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setMemParkSafeExamResultV2(Ljava/lang/String;Z)V

    .line 970
    :cond_10
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Save exam result to local, taskId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " result:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 967
    :cond_11
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Save exam result to local, invalid task id:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private smartDriveScoreRemind()V
    .locals 12

    .line 1075
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->smart_drive_score_remind_title:I

    .line 1077
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->smart_drive_score_remind_content:I

    .line 1078
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->smart_drive_score_remind_prompt_tts:I

    .line 1079
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->smart_drive_score_remind_wake_words:I

    .line 1080
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->smart_drive_score_remind_response_tts:I

    .line 1081
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->smart_drive_score_remind_btn_title:I

    .line 1082
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v11, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$n0jpF50xCoGtpShK3Ku5GIk9JfE;

    invoke-direct {v11, p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$n0jpF50xCoGtpShK3Ku5GIk9JfE;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)V

    const v1, 0x88c1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    .line 1076
    invoke-virtual/range {v0 .. v11}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->sendMessageToMessageCenter(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLcom/xiaopeng/carcontrol/IpcRouterService$ICallback;)V

    return-void
.end method

.method private turnOffByExamNotPassed(J)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskId"
        }
    .end annotation

    const-string v0, "isExamDebug"

    .line 980
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 983
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->isParkStall()Z

    move-result v0

    .line 984
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnOffByExamNotPassed isParkStall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "taskId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X_EXAM_AccountViewModel"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 989
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {p1, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setNgpEnable(Z)V

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x3

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 991
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {p1, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setMemoryParkSw(Z)V

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x7

    cmp-long v0, p1, v0

    const-string v1, "isSupportCNgp"

    if-nez v0, :cond_4

    .line 993
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 994
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {p1, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setMemoryParkSw(Z)V

    goto :goto_1

    :cond_4
    const-wide/16 v4, 0x2

    cmp-long v0, p1, v4

    if-eqz v0, :cond_6

    .line 997
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x8

    cmp-long v0, p1, v0

    if-eqz v0, :cond_6

    const-wide/16 v0, 0x9

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const-wide/16 v0, 0x4

    cmp-long p1, p1, v0

    if-nez p1, :cond_7

    .line 1005
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {p1, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setAutoParkSw(Z)V

    const-string p1, "isSupportMemPark"

    .line 1006
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1007
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {p1, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setMemoryParkSw(Z)V

    goto :goto_1

    .line 999
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {p1, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setLccState(Z)V

    .line 1000
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {p1, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setAlcState(Z)V

    const-string p1, "isSupportNgp"

    .line 1001
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1002
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {p1, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setNgpEnable(Z)V

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public cancelLoop()V
    .locals 1

    .line 1171
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 1172
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public checkAllSafeExamResult()V
    .locals 2

    const-string v0, "isSupportXPilotSafeExam"

    .line 455
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mAccount:Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    .line 456
    invoke-interface {v0}, Lcom/xiaopeng/xvs/xid/account/api/IAccount;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->isLocalExamResultAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckXPilotExamResultTask when onResume, uid :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X_EXAM_AccountViewModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 459
    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->retryCount:I

    .line 460
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->loginExamRequestCompleted:Z

    .line 461
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mCheckXPilotExamResultTask:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public checkLogin()Z
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mAccount:Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    invoke-interface {v0}, Lcom/xiaopeng/xvs/xid/account/api/IAccount;->isLogin()Z

    move-result v0

    return v0
.end method

.method public closeSdsEnterPGear()V
    .locals 2

    const-string v0, "X_EXAM_AccountViewModel"

    const-string v1, "Remind user close smart drive score when enter p gear."

    .line 554
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->smartDriveScoreRemind()V

    return-void
.end method

.method public getCreateSyncGroupData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1193
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mCreateSyncGroup:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getCurrentHabitSum()I
    .locals 1

    .line 388
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getSyncApi()Lcom/xiaopeng/xvs/xid/sync/api/ISync;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xvs/xid/sync/api/ISync;->getCurrentHabitSum()I

    move-result v0

    return v0
.end method

.method public getCurrentSyncGroupId()Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mAccount:Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    invoke-interface {v0}, Lcom/xiaopeng/xvs/xid/account/api/IAccount;->getAccountInfo()Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mAccount:Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    invoke-interface {v0}, Lcom/xiaopeng/xvs/xid/account/api/IAccount;->getAccountInfo()Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->getSyncGroupId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentSyncGroupName()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mAccount:Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    invoke-interface {v0}, Lcom/xiaopeng/xvs/xid/account/api/IAccount;->getAccountInfo()Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mAccount:Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    invoke-interface {v0}, Lcom/xiaopeng/xvs/xid/account/api/IAccount;->getAccountInfo()Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->getSyncGroupName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentSyncUserInfo()Ljava/lang/String;
    .locals 4

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mAccount:Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    invoke-interface {v0}, Lcom/xiaopeng/xvs/xid/account/api/IAccount;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mAccount:Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    invoke-interface {v0}, Lcom/xiaopeng/xvs/xid/account/api/IAccount;->getAccountInfo()Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "name"

    .line 303
    invoke-virtual {v0}, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "avatar"

    .line 304
    invoke-virtual {v0}, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->getAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 307
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v0, ""

    .line 309
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X_EXAM_AccountViewModel"

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    const-string v0, "guest"

    return-object v0
.end method

.method public getFreeNgpUidResult()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mFreeNgpUidResult:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getFreengpUidResult()V
    .locals 2

    .line 512
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getFreeNgpUidResult(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$2P_pXr5S9bLw282CCOg2Is5xaSc;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$2P_pXr5S9bLw282CCOg2Is5xaSc;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 517
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mFreeNgpUidResult:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public getHabitGroupStateData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mHabitGroupStateData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getHabitList()Ljava/lang/String;
    .locals 5

    const-string v0, "data"

    .line 364
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getSyncApi()Lcom/xiaopeng/xvs/xid/sync/api/ISync;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaopeng/xvs/xid/sync/api/ISync;->getHabitList()Ljava/util/List;

    move-result-object v1

    .line 365
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    if-eqz v1, :cond_0

    .line 367
    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 372
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getAccountApi()Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    move-result-object v2

    const-string v3, "user_data_sync_habit_data"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/xvs/xid/account/api/IAccount;->getUserExtraData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 373
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 374
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 376
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 380
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "X_EXAM_AccountViewModel"

    invoke-static {v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-object v1
.end method

.method public getHabitListData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mHabitList:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getHabitRestoreIconStateData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->habitRestoreIconStateData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getIsLogin()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->isLogin:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->isLogin:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getOwnerAccountData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mOwnerAccount:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSyncGroupInfoData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/bean/SyncGroupInfo;",
            ">;"
        }
    .end annotation

    .line 1189
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mSyncGroupInfo:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTaskCompleted()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mTaskCompleted:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mTaskCompleted:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTaskFailure()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamError;",
            ">;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mTaskFailure:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mTaskFailure:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTaskListResult()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamResult;",
            ">;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mTaskListResult:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mTaskListResult:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTaskLoopResult()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamResult;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mTaskLoopResult:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mTaskLoopResult:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTaskQrCode()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamUrlResult;",
            ">;"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mTaskQrCode:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mTaskQrCode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTaskQrCode(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskId"
        }
    .end annotation

    .line 449
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$of_yanSmRXBWOFaiyNYY2z42bRQ;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$of_yanSmRXBWOFaiyNYY2z42bRQ;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;J)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getTaskResult()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamResult;",
            ">;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mTaskResult:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mTaskResult:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTaskResult(JZ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taskId",
            "loop"
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 487
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    const-string v0, "X_EXAM_AccountViewModel"

    const-string v1, "dispose the loop first!"

    .line 488
    invoke-static {v0, v1, p3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 489
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p3}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x5

    .line 491
    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v3, p3}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p3

    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$1lutggs91tgy3J5SbehsJIzYZEo;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$1lutggs91tgy3J5SbehsJIzYZEo;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;J)V

    .line 492
    invoke-virtual {p3, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mDisposable:Lio/reactivex/disposables/Disposable;

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x64

    cmp-long p3, p1, v0

    if-nez p3, :cond_2

    .line 496
    new-instance p3, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$ULGCsnmVlmY4zIeVvkgu3yaj0yA;

    invoke-direct {p3, p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$ULGCsnmVlmY4zIeVvkgu3yaj0yA;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;J)V

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x65

    cmp-long p3, p1, v0

    if-nez p3, :cond_3

    .line 498
    new-instance p3, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$twVFr4kjX9XuBaSwiOxaHEiGjG0;

    invoke-direct {p3, p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$twVFr4kjX9XuBaSwiOxaHEiGjG0;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;J)V

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x67

    cmp-long p3, p1, v0

    if-nez p3, :cond_4

    .line 500
    new-instance p3, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$iMoJw7wh9AQY8D9A3D-VQ35oB8M;

    invoke-direct {p3, p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$iMoJw7wh9AQY8D9A3D-VQ35oB8M;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;J)V

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 503
    :cond_4
    new-instance p3, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$CF8T-mvMP-l6WE3qN8RIFyjGrkA;

    invoke-direct {p3, p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$CF8T-mvMP-l6WE3qN8RIFyjGrkA;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;J)V

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public getUserInfoData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUserInfo:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getVehicleUserBindTime()Ljava/lang/String;
    .locals 1

    .line 393
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getSyncApi()Lcom/xiaopeng/xvs/xid/sync/api/ISync;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xvs/xid/sync/api/ISync;->getVehicleUserBindTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLocalExamResultAvailable()Z
    .locals 4

    .line 467
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->isLocalExamResultAllPassed()Z

    move-result v0

    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLocalExamResultAvailable: localExamResultAllPassed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestCompleted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->loginExamRequestCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X_EXAM_AccountViewModel"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v0, :cond_0

    .line 470
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->loginExamRequestCompleted:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public isOwnerAccount()Z
    .locals 1

    .line 560
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getInstance()Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isOwnerAccount()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$getTaskQrCode$4$AccountViewModel(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "taskId"
        }
    .end annotation

    .line 449
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->requestExamUrl(J)V

    return-void
.end method

.method public synthetic lambda$getTaskResult$5$AccountViewModel(JLjava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "taskId",
            "aLong"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p3, 0x2

    .line 492
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->requestExamResult(JI)V

    return-void
.end method

.method public synthetic lambda$getTaskResult$6$AccountViewModel(J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "taskId"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Long;

    const-wide/16 v1, 0x1

    .line 496
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->requestGroupRequestV2(JLjava/util/List;I)V

    return-void
.end method

.method public synthetic lambda$getTaskResult$7$AccountViewModel(J)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "taskId"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Long;

    const-wide/16 v1, 0x1

    .line 498
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-wide/16 v1, 0x6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-wide/16 v3, 0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->requestGroupRequestV2(JLjava/util/List;I)V

    return-void
.end method

.method public synthetic lambda$getTaskResult$8$AccountViewModel(J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "taskId"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Long;

    const-wide/16 v1, 0x3

    .line 500
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-wide/16 v1, 0x4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->requestGroupRequestV2(JLjava/util/List;I)V

    return-void
.end method

.method public synthetic lambda$getTaskResult$9$AccountViewModel(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "taskId"
        }
    .end annotation

    const/4 v0, 0x1

    .line 503
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->requestExamResult(JI)V

    return-void
.end method

.method public synthetic lambda$new$0$AccountViewModel()V
    .locals 1

    const/4 v0, -0x1

    .line 158
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->handleCreateSyncGroupState(I)V

    return-void
.end method

.method public synthetic lambda$new$1$AccountViewModel()V
    .locals 1

    const/4 v0, -0x1

    .line 160
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->handleHabitGroupState(I)V

    return-void
.end method

.method public synthetic lambda$new$2$AccountViewModel()V
    .locals 1

    const/4 v0, -0x3

    .line 162
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->handleHabitGroupState(I)V

    return-void
.end method

.method public synthetic lambda$onAccountOrGroupChange$3$AccountViewModel(Lcom/xiaopeng/carcontrol/bean/SyncGroupEventMsg;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "msg"
        }
    .end annotation

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveSyncGroupEventMsg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/bean/SyncGroupEventMsg;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X_EXAM_AccountViewModel"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 405
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/bean/SyncGroupEventMsg;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TYPE_SYNC_GROUP_CREATED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mCreateSyncGroupDelayTask:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->removeRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x2

    .line 407
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->handleCreateSyncGroupState(I)V

    .line 408
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mCreateHabitGroupStateDelayTask:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->removeRunnable(Ljava/lang/Runnable;)V

    .line 409
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->handleHabitGroupState(I)V

    .line 410
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->handleSyncGroupInfo()V

    goto/16 :goto_0

    .line 411
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/bean/SyncGroupEventMsg;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TYPE_SYNC_GROUP_SELECTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mCreateSyncGroupDelayTask:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->removeRunnable(Ljava/lang/Runnable;)V

    .line 413
    invoke-direct {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->handleCreateSyncGroupState(I)V

    const/4 p1, 0x5

    .line 414
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->handleHabitGroupState(I)V

    .line 415
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->handleSyncGroupInfo()V

    goto/16 :goto_0

    .line 416
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/bean/SyncGroupEventMsg;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TYPE_SYNC_GROUP_DELETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 417
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mDeleteHabitGroupStateDelayTask:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->removeRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x3

    .line 418
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->handleHabitGroupState(I)V

    .line 419
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->handleSyncGroupInfo()V

    goto/16 :goto_0

    .line 420
    :cond_2
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/bean/SyncGroupEventMsg;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TYPE_SYNC_GROUP_RENAMED_SUCCESS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x4

    .line 421
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->handleHabitGroupState(I)V

    .line 422
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->handleSyncGroupInfo()V

    goto/16 :goto_0

    .line 423
    :cond_3
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/bean/SyncGroupEventMsg;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TYPE_SYNC_GROUP_RENAMED_FAIL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, -0x4

    .line 424
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->handleHabitGroupState(I)V

    goto :goto_0

    .line 425
    :cond_4
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/bean/SyncGroupEventMsg;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TYPE_SYNC_ACCOUNT_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 426
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/bean/SyncGroupEventMsg;->getUid()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    const/4 p1, 0x0

    .line 427
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mOtp:Ljava/lang/String;

    const-string p1, "isSupportXPilotSafeExam"

    .line 428
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "-1"

    if-eqz p1, :cond_5

    .line 429
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckXPilotExamResultTask when onAccountsUpdated, uid :"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->isLocalExamResultAllPassed()Z

    move-result p1

    if-nez p1, :cond_5

    .line 432
    iput v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->retryCount:I

    .line 433
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->loginExamRequestCompleted:Z

    .line 434
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mCheckXPilotExamResultTask:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 437
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 438
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->isLogin:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 439
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->handleSyncGroupInfo()V

    const-string p1, "user login success!"

    .line 440
    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :cond_6
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->handleSyncUserInfo(Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public synthetic lambda$smartDriveScoreRemind$15$AccountViewModel(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "content"
        }
    .end annotation

    .line 1084
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->gotoXPilotPage()V

    return-void
.end method

.method public synthetic lambda$updateApaSafeExamResult$12$AccountViewModel()V
    .locals 3

    .line 537
    sget v0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskResultRequest;->TASK_COMPLETE:I

    const-wide/16 v1, 0x4

    invoke-direct {p0, v1, v2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->postResultRequest(JI)V

    return-void
.end method

.method public synthetic lambda$updateLccSafeExamResult$10$AccountViewModel()V
    .locals 3

    .line 524
    sget v0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskResultRequest;->TASK_COMPLETE:I

    const-wide/16 v1, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->postResultRequest(JI)V

    return-void
.end method

.method public synthetic lambda$updateSuperLccSafeExamResult$14$AccountViewModel()V
    .locals 3

    .line 549
    sget v0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskResultRequest;->TASK_COMPLETE:I

    const-wide/16 v1, 0x8

    invoke-direct {p0, v1, v2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->postResultRequest(JI)V

    return-void
.end method

.method public synthetic lambda$updateSuperVpaSafeExamResult$13$AccountViewModel()V
    .locals 3

    .line 543
    sget v0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskResultRequest;->TASK_COMPLETE:I

    const-wide/16 v1, 0x7

    invoke-direct {p0, v1, v2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->postResultRequest(JI)V

    return-void
.end method

.method public synthetic lambda$updateXngpSafeExamResult$11$AccountViewModel()V
    .locals 3

    .line 530
    sget v0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskResultRequest;->TASK_COMPLETE:I

    const-wide/16 v1, 0x9

    invoke-direct {p0, v1, v2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->postResultRequest(JI)V

    return-void
.end method

.method public onAccountOrGroupChange(Lcom/xiaopeng/carcontrol/bean/SyncGroupEventMsg;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "X_EXAM_AccountViewModel"

    const-string v0, "onReceiveSyncGroupEventMsg with null"

    .line 399
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 403
    :cond_0
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$wYlkhb7-kFDpA9PblPgZz7Yl72A;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$wYlkhb7-kFDpA9PblPgZz7Yl72A;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;Lcom/xiaopeng/carcontrol/bean/SyncGroupEventMsg;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestCreateNewSyncGroup()V
    .locals 5

    .line 320
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    const-string v1, "X_EXAM_AccountViewModel"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 322
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getSyncApi()Lcom/xiaopeng/xvs/xid/sync/api/ISync;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xvs/xid/sync/api/ISync;->requestCreateNewSyncGroup()V

    const/4 v0, 0x1

    .line 323
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->handleCreateSyncGroupState(I)V

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mCreateSyncGroupDelayTask:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    invoke-static {v2, v0, v3, v4}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    .line 327
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mCreateHabitGroupStateDelayTask:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-static {v2, v0, v3, v4}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "requestCreateNewSyncGroup failed"

    .line 329
    invoke-static {v1, v3, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    goto :goto_0

    :cond_0
    const-string v0, "Please invoke requestCreateNewSyncGroup in main process"

    .line 333
    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public requestDeleteSyncGroup(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestDeleteSyncGroup index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X_EXAM_AccountViewModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getSyncApi()Lcom/xiaopeng/xvs/xid/sync/api/ISync;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xvs/xid/sync/api/ISync;->getHabitList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 355
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    if-ge p1, v2, :cond_0

    .line 356
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getSyncApi()Lcom/xiaopeng/xvs/xid/sync/api/ISync;

    move-result-object v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;

    invoke-interface {v1, p1}, Lcom/xiaopeng/xvs/xid/sync/api/ISync;->requestDeleteSyncGroup(Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;)V

    const/4 p1, 0x0

    .line 357
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mDeleteHabitGroupStateDelayTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public requestLogin()V
    .locals 1

    .line 271
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getAccountApi()Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xvs/xid/account/api/IAccount;->login()V

    return-void
.end method

.method public requestLogout()V
    .locals 1

    .line 276
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getAccountApi()Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xvs/xid/account/api/IAccount;->logout()V

    return-void
.end method

.method public requestRenameSyncGroup(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "rename"
        }
    .end annotation

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestRenameSyncGroup index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X_EXAM_AccountViewModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getSyncApi()Lcom/xiaopeng/xvs/xid/sync/api/ISync;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xvs/xid/sync/api/ISync;->getHabitList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    if-ge p1, v2, :cond_0

    .line 347
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getSyncApi()Lcom/xiaopeng/xvs/xid/sync/api/ISync;

    move-result-object v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xvs/xid/sync/api/ISync;->requestRenameSyncGroup(Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public requestSelectSyncGroupIndex(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 339
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getSyncApi()Lcom/xiaopeng/xvs/xid/sync/api/ISync;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/xvs/xid/sync/api/ISync;->requestSelectSyncGroupIndex(I)V

    return-void
.end method

.method public resetExamResultBySDS(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taskList",
            "uid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1014
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getAccountManager()Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.xiaopeng.accountservice.ACCOUNT_TYPE_XP_VEHICLE"

    .line 1015
    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 1016
    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 1017
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getAccountManager()Landroid/accounts/AccountManager;

    move-result-object v1

    aget-object v0, v0, v2

    const-string v3, "uid"

    .line 1018
    invoke-virtual {v1, v0, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "X_EXAM_AccountViewModel"

    if-nez v0, :cond_2

    .line 1021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive push message on uid: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ,and now login user uid is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " Just save the result to local sp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 1024
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-direct {p0, v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->saveCloseResultToLocalByUid(Ljava/lang/Long;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 1028
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Will close task in taskid: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move p2, v2

    .line 1029
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    .line 1030
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->saveExamResultToLocal(JI)V

    .line 1031
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->turnOffByExamNotPassed(J)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 1033
    :cond_3
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->isParkStall()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1035
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->smartDriveScoreRemind()V

    goto :goto_2

    :cond_4
    const/4 p1, 0x1

    .line 1037
    sput-boolean p1, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->PENDING_FOR_CLOSE_SMART_DRIVE_SCORE:Z

    :goto_2
    return-void
.end method

.method public skipXpilotExam()Z
    .locals 6

    .line 1181
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->isFactoryModeActive()Z

    move-result v0

    .line 1182
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isExhibitionOrTetDriveMode()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 1184
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skip xpilot exam :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X_EXAM_AccountViewModel"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v3
.end method

.method public updateApaSafeExamResult()V
    .locals 3

    .line 536
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setApaSafeExamResult(Ljava/lang/String;Z)V

    .line 537
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$ZA2eBADdy8ll2N6erTkdWMLLguo;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$ZA2eBADdy8ll2N6erTkdWMLLguo;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateLccSafeExamResult()V
    .locals 3

    .line 523
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setLccSafeExamResult(Ljava/lang/String;Z)V

    .line 524
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$JteRMxPSNxOfg8TAgTVCAtdoytM;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$JteRMxPSNxOfg8TAgTVCAtdoytM;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateSuperLccSafeExamResult()V
    .locals 3

    .line 548
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setSuperLccSafeExamResult(Ljava/lang/String;Z)V

    .line 549
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$R-rTCSc8Vt1PfjAMcBXplLRW7fU;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$R-rTCSc8Vt1PfjAMcBXplLRW7fU;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateSuperVpaSafeExamResult()V
    .locals 3

    .line 542
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setSuperVpaSafeExamResult(Ljava/lang/String;Z)V

    .line 543
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$UeL_shzu0yskIp45JD02kjsHqq0;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$UeL_shzu0yskIp45JD02kjsHqq0;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateXngpSafeExamResult()V
    .locals 3

    .line 529
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->mUid:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setXngpSafeExamResult(Ljava/lang/String;Z)V

    .line 530
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$yQms0QmJeEyob9xh5pf3Vb4V3Do;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$yQms0QmJeEyob9xh5pf3Vb4V3Do;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
