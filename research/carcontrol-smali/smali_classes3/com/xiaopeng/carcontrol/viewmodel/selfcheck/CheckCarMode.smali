.class public Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;
.super Ljava/lang/Object;
.source "CheckCarMode.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/ICheckCarMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$Holder;
    }
.end annotation


# static fields
.field private static CHECK_DELAY_TIME:J = 0x1770L

.field private static final NEED_UPLOAD:Z = true


# instance fields
.field private final AVATER_EVENT_ID_EXPRESS:I

.field private final AVATER_SUB_ID_INVALID:I

.field protected final TAG:Ljava/lang/String;

.field private mCheckCategoryIndex:I

.field protected mCheckList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckResultLevel:I

.field private mCheckTimer:Landroid/os/CountDownTimer;

.field private mCheckedCount:I

.field protected mCheckedTotal:I

.field private mDoCheckDisposable:Lio/reactivex/disposables/Disposable;

.field private volatile mIsCheckComplete:Z

.field private mIsChecking:Z

.field private volatile mIsReceiveGreet:Z

.field private mUploadCallback:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;

.field private mViewListener:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/ICheckCarListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mIsChecking:Z

    .line 54
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mIsCheckComplete:Z

    .line 55
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mIsReceiveGreet:Z

    .line 56
    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckResultLevel:I

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckList:Ljava/util/List;

    .line 58
    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedTotal:I

    .line 59
    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedCount:I

    .line 60
    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckCategoryIndex:I

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mDoCheckDisposable:Lio/reactivex/disposables/Disposable;

    .line 64
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckTimer:Landroid/os/CountDownTimer;

    const/16 v0, 0xa

    .line 66
    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->AVATER_EVENT_ID_EXPRESS:I

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->AVATER_SUB_ID_INVALID:I

    .line 69
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$1;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mUploadCallback:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckCategoryIndex:I

    return p0
.end method

.method static synthetic access$1008(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;)I
    .locals 2

    .line 51
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckCategoryIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckCategoryIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mDoCheckDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->startCheckInternal()V

    return-void
.end method

.method static synthetic access$208(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;)I
    .locals 2

    .line 51
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;)Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/ICheckCarListener;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mViewListener:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/ICheckCarListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mIsChecking:Z

    return p0
.end method

.method static synthetic access$402(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mIsChecking:Z

    return p1
.end method

.method static synthetic access$502(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mIsCheckComplete:Z

    return p1
.end method

.method static synthetic access$602(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckResultLevel:I

    return p1
.end method

.method static synthetic access$700(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;)I
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->calcResultLevel()I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->uploadAIMsg()V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->uploadData()V

    return-void
.end method

.method private calcResultLevel()I
    .locals 4

    .line 636
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;

    .line 637
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->getErrorLevel()I

    move-result v3

    if-le v3, v1, :cond_0

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->getErrorLevel()I

    move-result v1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private callAvatar(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "pkg",
            "eventId",
            "subId"
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callAvatar: pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " eventId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 458
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$4;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;Ljava/lang/String;II)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private doCheck(Lio/reactivex/ObservableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emitter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;",
            ">;)V"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;

    .line 364
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    .line 365
    invoke-interface {p1, v2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 368
    :cond_1
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method

.method private generateExtrasInternal(IIIIZ)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "status",
            "totalCount",
            "checkedCount",
            "faultCount",
            "needDetail"
        }
    .end annotation

    .line 654
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult;-><init>()V

    .line 655
    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult;->setStatus(I)V

    .line 656
    invoke-virtual {v0, p2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult;->setTotalCount(I)V

    .line 657
    invoke-virtual {v0, p3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult;->setCheckedCount(I)V

    .line 658
    invoke-virtual {v0, p4}, Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult;->setFaultCount(I)V

    if-eqz p5, :cond_5

    .line 660
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 661
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;

    .line 662
    invoke-virtual {p3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->getItems()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    .line 663
    invoke-virtual {p4}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->hasIssue()Z

    move-result p5

    if-eqz p5, :cond_1

    .line 664
    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 669
    :cond_2
    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/-$$Lambda$CheckCarMode$UqXX_sxr8uh-Ow5GdVJK5hbY8II;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/-$$Lambda$CheckCarMode$UqXX_sxr8uh-Ow5GdVJK5hbY8II;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 678
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    .line 679
    invoke-virtual {p3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->getTitle()Ljava/lang/String;

    move-result-object p4

    .line 680
    invoke-virtual {p3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->hasIssue()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-virtual {p3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->getLevel()I

    move-result p5

    goto :goto_2

    :cond_3
    const/4 p5, 0x0

    :goto_2
    invoke-static {p5}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/SelfCheckUtil;->level2Str(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->getLevel()I

    move-result p3

    .line 679
    invoke-virtual {v0, p4, p5, p3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult;->addDetailResult(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 682
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 684
    :cond_5
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getTTs()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult;->setTTS(Ljava/lang/String;)V

    .line 685
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;
    .locals 1

    .line 89
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$Holder;->access$000()Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->TAG:Ljava/lang/String;

    const-string v1, " init"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mIsChecking:Z

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mIsCheckComplete:Z

    .line 96
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->generateData()V

    return-void
.end method

.method static synthetic lambda$generateExtrasInternal$2(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "item1",
            "item2"
        }
    .end annotation

    .line 671
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->getLevel()I

    move-result p1

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->getLevel()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method private startCheckInternal()V
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->TAG:Ljava/lang/String;

    const-string v1, " startCheckInternal"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 420
    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedCount:I

    .line 421
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mViewListener:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/ICheckCarListener;

    if-eqz v0, :cond_0

    .line 422
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/ICheckCarListener;->onCheckStart()V

    .line 424
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->subscribeObserver()V

    return-void
.end method

.method private startCheckTimer()V
    .locals 7

    .line 389
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->TAG:Ljava/lang/String;

    const-string v1, " data is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_1

    .line 394
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$3;

    sget-wide v3, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->CHECK_DELAY_TIME:J

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    div-long v5, v3, v1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$3;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;JJ)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckTimer:Landroid/os/CountDownTimer;

    goto :goto_0

    .line 412
    :cond_1
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :goto_0
    const/4 v0, 0x0

    .line 414
    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckCategoryIndex:I

    .line 415
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private subscribeObserver()V
    .locals 2

    .line 299
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/-$$Lambda$CheckCarMode$t3z5a2IpCMFP-57cPGKa4mbkfQk;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/-$$Lambda$CheckCarMode$t3z5a2IpCMFP-57cPGKa4mbkfQk;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 313
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->single()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 314
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->single()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/-$$Lambda$FhY43_fD0ipc2WmeBYLwRCgKVfc;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/-$$Lambda$FhY43_fD0ipc2WmeBYLwRCgKVfc;

    .line 315
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 317
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$2;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;)V

    .line 318
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private unInit()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->TAG:Ljava/lang/String;

    const-string v1, " destroy"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mDoCheckDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    .line 102
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mDoCheckDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mDoCheckDisposable:Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method private uploadAIMsg()V
    .locals 6

    .line 579
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UploadAIMsg, mIsReceiveGreet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mIsReceiveGreet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsCheckComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mIsCheckComplete:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 580
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckList:Ljava/util/List;

    monitor-enter v0

    .line 581
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mIsReceiveGreet:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mIsCheckComplete:Z

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "isSupportNeedReceiveGreet"

    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 582
    invoke-virtual {p0, v1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->generateJsonForUi(IZ)Ljava/lang/String;

    move-result-object v1

    .line 583
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Check_send to infoflow|AIAssistanat extras="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 584
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->uploadForAIAssistant(Ljava/lang/String;)V

    .line 585
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mIsReceiveGreet:Z

    .line 586
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mIsCheckComplete:Z

    .line 588
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private uploadData()V
    .locals 4

    .line 429
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->generateResultJsonForCloud()Ljava/lang/String;

    move-result-object v0

    .line 430
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 431
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uploadForBigData jsonStr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x10

    .line 432
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mUploadCallback:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/NetworkUtil;->doPost(ILjava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    goto :goto_0

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->TAG:Ljava/lang/String;

    const-string v1, " upload data is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected generateData()V
    .locals 6

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedTotal:I

    .line 113
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;-><init>()V

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_category_elec:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->category(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    const-string v1, "BCM"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->ecu(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_category_ecu_elec:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->title(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->bcm_high_beam_fail:I

    .line 114
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ID_BCM_HIGHTBEAM_FAIL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->addItem(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->bcm_low_beam_fail:I

    .line 115
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ID_BCM_LOWBEAM_FAIL"

    invoke-direct {v1, v3, v4, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->addItem(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->bcm_left_turn_lamp_fail:I

    .line 116
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ID_BCM_LTURNLAMP_FAIL"

    invoke-direct {v1, v3, v4, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->addItem(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->bcm_right_turn_lamp_fail:I

    .line 117
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ID_BCM_RTURNLAMP_FAIL"

    invoke-direct {v1, v3, v4, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->addItem(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->bcm_rearflog_fail:I

    .line 118
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ID_BCM_REARFOG_FAIL"

    invoke-direct {v1, v3, v4, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->addItem(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->build()Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedTotal:I

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->getCheckSize()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedTotal:I

    const-string v0, "isSupportAtl"

    .line 135
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;-><init>()V

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_category_elec:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->category(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    const-string v1, "ATLS"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->ecu(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_category_ecu_atls:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->title(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->atls_error:I

    .line 137
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ID_ATLS_ERR_ST"

    invoke-direct {v1, v3, v4, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->addItem(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->build()Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedTotal:I

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->getCheckSize()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedTotal:I

    :cond_0
    const-string v0, "persist.sys.xiaopeng.MSMD"

    .line 143
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ConfigUtil;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "persist.sys.xiaopeng.Package1"

    if-eqz v0, :cond_2

    .line 144
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;-><init>()V

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_category_elec:I

    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->category(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    const-string v2, "MSMD"

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->ecu(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_category_ecu_msmd:I

    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->title(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    sget v3, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_category_ecu_msmd:I

    .line 145
    invoke-virtual {p0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "ID_MSMD_ECU_ERR"

    invoke-direct {v2, v5, v4, v3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->addItem(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->build()Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;

    move-result-object v0

    .line 147
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/util/ConfigUtil;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    new-instance v2, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    sget v3, Lcom/xiaopeng/carcontrolmodule/R$string;->msmd_heating_error:I

    invoke-virtual {p0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "ID_MSMD_HEATSYS_ERR"

    invoke-direct {v2, v5, v4, v3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->addItem(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)V

    .line 151
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedTotal:I

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->getCheckSize()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedTotal:I

    :cond_2
    const-string v0, "persist.sys.xiaopeng.MSMP"

    .line 155
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ConfigUtil;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 156
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;-><init>()V

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_category_elec:I

    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->category(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    const-string v2, "MSMP"

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->ecu(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_category_ecu_msmp:I

    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->title(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    sget v3, Lcom/xiaopeng/carcontrolmodule/R$string;->msmp_ecu_error:I

    .line 157
    invoke-virtual {p0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "ID_MSMP_ECU_ERR"

    invoke-direct {v2, v5, v4, v3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->addItem(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->build()Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;

    move-result-object v0

    .line 159
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/util/ConfigUtil;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 160
    new-instance v1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->msmp_heating_error:I

    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ID_MSMP_HEATSYS_ERR"

    invoke-direct {v1, v3, v4, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->addItem(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)V

    .line 162
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedTotal:I

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->getCheckSize()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedTotal:I

    .line 166
    :cond_4
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;-><init>()V

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_category_elec:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->category(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    const-string v1, "AVAS"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->ecu(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_category_ecu_avas:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->title(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->avas_fault:I

    .line 167
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ID_AVAS_FAUL"

    invoke-direct {v1, v3, v4, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->addItem(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->build()Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedTotal:I

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->getCheckSize()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedTotal:I

    .line 172
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;-><init>()V

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_category_elec:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->category(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    const-string v1, "TPMS"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->ecu(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_category_ecu_tmps:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->title(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->tpms_sys_fault:I

    .line 173
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ID_TPMS_SYSFAULTWARN"

    const/4 v5, 0x3

    invoke-direct {v1, v3, v5, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->addItem(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->tpms_abnormal_pr_warn:I

    .line 174
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ID_TPMS_ABNORMALPRWARN"

    invoke-direct {v1, v3, v5, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->addItem(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->build()Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedTotal:I

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->getCheckSize()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedTotal:I

    .line 179
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;-><init>()V

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_category_elec:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->category(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    const-string v1, "SRS"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->ecu(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_category_ecu_srs:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->title(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->srs_airbag_fault:I

    .line 180
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ID_BCM_AIRBAG_FAULT_ST"

    invoke-direct {v1, v3, v5, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->addItem(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->build()Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedTotal:I

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->getCheckSize()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedTotal:I

    .line 190
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;-><init>()V

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_category_elec:I

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/util/UIUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->category(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    const-string v1, "DHC"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->ecu(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_category_ecu_dhc:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->title(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->dhc_error:I

    .line 191
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ID_DHC_ERR"

    invoke-direct {v1, v3, v4, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->addItem(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->build()Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedTotal:I

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->getCheckSize()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedTotal:I

    .line 196
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;-><init>()V

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_category_multelec:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->category(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    const-string v1, "VCU"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->ecu(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_category_multelec_vcu:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->title(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->vcu_everr_lamp_dsp:I

    .line 197
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ID_VCU_EVERRLAMP_DSP"

    invoke-direct {v1, v3, v5, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->addItem(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->vcu_gear_warning:I

    .line 198
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ID_VCU_GEAR_WARNING"

    invoke-direct {v1, v3, v4, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->addItem(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->vcu_ebs_error:I

    .line 199
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ID_VCU_EBS_ERR_DSP"

    invoke-direct {v1, v3, v4, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->addItem(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->vcu_liquid_temp_hight_error:I

    .line 200
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ID_VCU_LIQUIDHIGHTEMP_ERR"

    invoke-direct {v1, v3, v4, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->addItem(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->vcu_water_sensor_error:I

    .line 201
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ID_VCU_WATERSENSOR_ERR"

    invoke-direct {v1, v3, v4, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->addItem(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->vcu_cruise_error:I

    .line 202
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ID_VCU_BCRUISE_ERR"

    invoke-direct {v1, v3, v4, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->addItem(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->vcu_thermo_run_away_error:I

    .line 203
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ID_VCU_THERMORUNAWAY_ST"

    invoke-direct {v1, v3, v5, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->addItem(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->vcu_power_limitation:I

    .line 204
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ID_VCU_POWERLIMITATION_DSP"

    invoke-direct {v1, v3, v5, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->addItem(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->vcu_chg_port_hot:I

    .line 205
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ID_VCU_CHGPORTHOT_DSP"

    invoke-direct {v1, v3, v5, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->addItem(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->vcu_obc_msg_lost:I

    .line 206
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ID_VCU_OBCMSG_LOST"

    invoke-direct {v1, v3, v4, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->addItem(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->vcu_dead_battery:I

    .line 207
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ID_VCU_DEADBATTERY_FLAG"

    invoke-direct {v1, v3, v5, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->addItem(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->build()Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedTotal:I

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->getCheckSize()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedTotal:I

    const-string v0, "persist.sys.xiaopeng.IPUR"

    .line 212
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ConfigUtil;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 213
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;-><init>()V

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_category_multelec:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->category(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    const-string v1, "IPUR"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->ecu(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_category_multelec_ipur:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->title(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->inpur_fault:I

    .line 214
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " ID_IPUR_FAILST"

    invoke-direct {v1, v3, v5, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->addItem(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->build()Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedTotal:I

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->getCheckSize()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedTotal:I

    :cond_5
    const-string v0, "persist.sys.xiaopeng.IPUF"

    .line 220
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ConfigUtil;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 221
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;-><init>()V

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_category_multelec:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->category(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    const-string v1, "IPUF"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->ecu(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_category_multelec_ipuf:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->title(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->inpuf_fault:I

    .line 222
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ID_IPUF_FAULT"

    invoke-direct {v1, v3, v5, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->addItem(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->build()Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedTotal:I

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->getCheckSize()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedTotal:I

    .line 228
    :cond_6
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;-><init>()V

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_category_chassis:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->category(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    const-string v1, "ESP"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->ecu(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_category_esp:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->title(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->esp_apb_error:I

    .line 230
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ID_ESP_APBERR_ST"

    invoke-direct {v1, v3, v5, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->addItem(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->build()Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedTotal:I

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->getCheckSize()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedTotal:I

    .line 237
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;-><init>()V

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_category_chassis:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->category(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    const-string v1, "IBT"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->ecu(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_category_ibt:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->title(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->ibt_fault:I

    .line 238
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ID_IBT_FAILURE_LAMP"

    invoke-direct {v1, v3, v5, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->addItem(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->build()Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedTotal:I

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->getCheckSize()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedTotal:I

    .line 243
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;-><init>()V

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_category_chassis:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->category(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    const-string v1, "EPS"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->ecu(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_category_eps:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->title(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->esp_warn_lamp:I

    .line 244
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ID_EPS_WARN_LAMP"

    invoke-direct {v1, v3, v5, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->addItem(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->build()Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedTotal:I

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->getCheckSize()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedTotal:I

    .line 249
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;-><init>()V

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_category_chassis:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->category(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    const-string v1, "CDC"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->ecu(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_category_cdc:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->title(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->cdc_dataupload_st:I

    .line 250
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ID_CDC_DATAUPLOAD_ST"

    invoke-direct {v1, v3, v5, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->addItem(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->build()Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedTotal:I

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->getCheckSize()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedTotal:I

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;

    .line 292
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    .line 293
    invoke-virtual {v3, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->setCategory(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;)V

    goto :goto_0

    :cond_8
    return-void
.end method

.method public generateJsonForUi(IZ)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "status",
            "needDetail"
        }
    .end annotation

    .line 644
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckList:Ljava/util/List;

    monitor-enter v0

    .line 645
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getCheckSize()I

    move-result v3

    .line 646
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getCheckedCount()I

    move-result v4

    .line 647
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getFaultCount()I

    move-result v5

    move-object v1, p0

    move v2, p1

    move v6, p2

    .line 648
    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->generateExtrasInternal(IIIIZ)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 649
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public generateMockExtrasForInfoflow(I)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checkedCount"
        }
    .end annotation

    .line 692
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getCategoryItemSize()I

    move-result v2

    .line 694
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getFaultCount()I

    move-result v4

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    .line 690
    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->generateExtrasInternal(IIIIZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected generateResultJsonForCloud()Ljava/lang/String;
    .locals 4

    .line 482
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckUploadData;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckUploadData;-><init>()V

    .line 483
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckUploadData;->setTs(J)V

    .line 484
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->hasIssue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckUploadData;->setStatus(I)V

    .line 485
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getVIN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckUploadData;->setVin(Ljava/lang/String;)V

    .line 486
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getHardwareId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckUploadData;->setCduId(Ljava/lang/String;)V

    .line 487
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;

    .line 488
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->generatorResult()Ljava/util/ArrayList;

    move-result-object v2

    .line 489
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 490
    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckUploadData;->addErrorDetailAll(Ljava/util/ArrayList;)V

    .line 491
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 495
    :cond_1
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryItem(I)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 721
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCategoryItemSize()I
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCheckSize()I
    .locals 1

    .line 616
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedTotal:I

    return v0
.end method

.method public getCheckedCount()I
    .locals 1

    .line 626
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckedCount:I

    return v0
.end method

.method public getFaultCount()I
    .locals 5

    .line 507
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 508
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckList:Ljava/util/List;

    monitor-enter v1

    const/4 v2, 0x0

    .line 509
    :cond_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 510
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->getItems()Ljava/util/List;

    move-result-object v3

    .line 511
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 512
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 513
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    .line 514
    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->hasIssue()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 519
    :cond_2
    monitor-exit v1

    return v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFaultStr()Ljava/lang/String;
    .locals 5

    .line 525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 527
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;

    .line 528
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    .line 529
    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->hasIssue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 530
    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 531
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 535
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 536
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 537
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 538
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_3

    .line 539
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u3002"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 541
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-object v2
.end method

.method public getFirstFaultItem()Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;
    .locals 4

    .line 709
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;

    .line 710
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    .line 711
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->hasIssue()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getString(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resid"
        }
    .end annotation

    .line 732
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/UIUtils;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTTs()Ljava/lang/String;
    .locals 4

    .line 551
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getFaultCount()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, ""

    if-ne v0, v1, :cond_1

    .line 553
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getFirstFaultItem()Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->TAG:Ljava/lang/String;

    const-string v1, " ERROR: fault num do not match falut items"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 558
    :cond_0
    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_tts_one:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_2

    .line 560
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_tts_multi:I

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_0
    return-object v2
.end method

.method public hasIssue()Z
    .locals 1

    .line 500
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getFaultCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCheckComplete()Z
    .locals 1

    .line 704
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mIsCheckComplete:Z

    return v0
.end method

.method public isChecking()Z
    .locals 1

    .line 699
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mIsChecking:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mIsCheckComplete:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isNeedMock()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSeverity()Z
    .locals 2

    .line 631
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckResultLevel:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$subscribeObserver$0$CheckCarMode(Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "emitter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->TAG:Ljava/lang/String;

    const-string v1, " doCheck "

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mIsChecking:Z

    if-eqz v0, :cond_1

    .line 303
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->doCheck(Lio/reactivex/ObservableEmitter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mViewListener:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/ICheckCarListener;

    if-eqz v0, :cond_0

    .line 307
    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/ICheckCarListener;->onCheckError(Ljava/lang/Throwable;)V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mDoCheckDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 310
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mIsChecking:Z

    .line 311
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$uploadForAIAssistant$1$CheckCarMode(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "jsonStr"
        }
    .end annotation

    .line 442
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "com.xiaopeng.aiassistant.AiassistantService"

    .line 443
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "onCarCheckResult"

    .line 444
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "result"

    .line 445
    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 447
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 448
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uploadForAIAssistant, result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 450
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 451
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->TAG:Ljava/lang/String;

    const-string v0, "uploadForAIAssistant() error."

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public receiveGreet()V
    .locals 3

    const-string v0, "isSupportNeedReceiveGreet"

    .line 567
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive Greet,mIsReceiveGreet : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mIsReceiveGreet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mIsReceiveGreet:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 572
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mIsReceiveGreet:Z

    .line 574
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->uploadAIMsg()V

    :cond_1
    return-void
.end method

.method public setViewListener(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/ICheckCarListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewListener"
        }
    .end annotation

    .line 610
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mViewListener:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/ICheckCarListener;

    return-void
.end method

.method public startCheck()V
    .locals 3

    .line 374
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->isChecking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->TAG:Ljava/lang/String;

    const-string v1, " startCheck is checking"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 379
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->init()V

    .line 381
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->startCheckTimer()V

    const-string v0, "isSupportCallAvatar"

    .line 383
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    const/4 v1, -0x1

    const-string v2, "com.xiaopeng.aiassistant"

    .line 384
    invoke-direct {p0, v2, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->callAvatar(Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method public stopCheck()V
    .locals 2

    .line 594
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mViewListener:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/ICheckCarListener;

    if-eqz v0, :cond_0

    .line 595
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/ICheckCarListener;->onCheckStop()V

    .line 597
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mIsChecking:Z

    if-eqz v0, :cond_2

    .line 598
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 599
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 600
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckTimer:Landroid/os/CountDownTimer;

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->TAG:Ljava/lang/String;

    const-string v1, "stopCheck clear mCheckRunnable..."

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->unInit()V

    const/4 v0, 0x0

    .line 604
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mIsChecking:Z

    :cond_2
    return-void
.end method

.method public uploadForAIAssistant(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonStr"
        }
    .end annotation

    .line 441
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/-$$Lambda$CheckCarMode$wduYX8eBWBw3iNIiFdnlDfKyCjM;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/-$$Lambda$CheckCarMode$wduYX8eBWBw3iNIiFdnlDfKyCjM;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
