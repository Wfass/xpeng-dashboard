.class public Lcom/xiaopeng/devtools/view/log/GrabLogActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "GrabLogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/view/log/GrabLogActivity$a;
    }
.end annotation


# static fields
.field private static final Bc:Z

.field private static PI:[Ljava/lang/String;

.field private static final PJ:[I

.field private static PK:[Ljava/lang/String;


# instance fields
.field private AH:Ljava/lang/String;

.field private final Bj:Lcom/xiaopeng/commonfunc/b/a/a;

.field private CM:Lcom/xiaopeng/devtools/system/a/b;

.field private DT:Lcom/xiaopeng/xui/app/c;

.field private FA:Ljava/lang/Thread;

.field private FF:Landroid/widget/Button;

.field Fw:Ljava/lang/Double;

.field private Fy:Landroid/widget/TextView;

.field private PL:Landroid/widget/CheckBox;

.field private PM:Landroid/widget/CheckBox;

.field private PN:Landroid/widget/CheckBox;

.field private PO:Landroid/widget/CheckBox;

.field private PP:Landroid/widget/CheckBox;

.field private PQ:Landroid/widget/CheckBox;

.field private PR:Landroid/widget/CheckBox;

.field private PS:Landroid/widget/CheckBox;

.field private PT:Landroid/widget/CheckBox;

.field private PU:Landroid/widget/Button;

.field private PV:Landroid/widget/Button;

.field private PW:Landroid/widget/Button;

.field private PY:Landroid/widget/ListView;

.field private PZ:Landroid/view/View;

.field private Qa:Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;

.field private Qb:Lcom/xiaopeng/devtools/presenter/i/a;

.field private Qc:Lcom/xiaopeng/devtools/presenter/b/c;

.field private final Qd:Landroid/content/BroadcastReceiver;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mHandler:Landroid/os/Handler;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private final vU:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PJ:[I

    .line 90
    const-string v0, "SUPPORT_AUDIO_DATA_DUMP"

    invoke-static {v0}, Lcom/xiaopeng/a/a$b;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Bc:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x601
        0xa01
        0x120
        0x1000
        0x2000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    .line 87
    const-string v0, "clear"

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->vU:Ljava/lang/String;

    .line 94
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Fw:Ljava/lang/Double;

    .line 113
    new-instance v0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$1;-><init>(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->mHandler:Landroid/os/Handler;

    .line 134
    new-instance v0, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$EAY5ROetBLqPksKdE8ByWo8rIro;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$EAY5ROetBLqPksKdE8ByWo8rIro;-><init>(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Bj:Lcom/xiaopeng/commonfunc/b/a/a;

    .line 590
    new-instance v0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$2;-><init>(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Qd:Landroid/content/BroadcastReceiver;

    .line 621
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$3;-><init>(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->FA:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)Landroid/widget/Button;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->FF:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->AH:Ljava/lang/String;

    return-object p1
.end method

.method private synthetic a(Lcom/xiaopeng/xui/widget/XCompoundButton;Lcom/xiaopeng/xui/widget/XCompoundButton;Lcom/xiaopeng/xui/widget/XCompoundButton;Lcom/xiaopeng/xui/widget/XCompoundButton;Lcom/xiaopeng/xui/widget/XCompoundButton;Lcom/xiaopeng/xui/app/c;I)V
    .locals 2

    .line 402
    iget-object p6, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Fy:Landroid/widget/TextView;

    const p7, 0x7f10018c

    invoke-virtual {p6, p7}, Landroid/widget/TextView;->setText(I)V

    .line 403
    new-instance p6, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p7

    const-class v0, Lcom/xiaopeng/devtools/system/service/CopyLogService;

    invoke-direct {p6, p7, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 404
    iget-object p7, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->AH:Ljava/lang/String;

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p7

    if-eqz p7, :cond_0

    .line 405
    iget-object p7, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    invoke-virtual {p7}, Lcom/xiaopeng/devtools/system/a/b;->kG()Ljava/lang/String;

    move-result-object p7

    iput-object p7, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->AH:Ljava/lang/String;

    .line 407
    :cond_0
    const-string p7, "GrabLogActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStoragePath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->AH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p7, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    new-instance p7, Ljava/util/ArrayList;

    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    .line 409
    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XCompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 410
    const/16 p1, 0x3e9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_1
    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XCompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 413
    const/16 p1, 0x3ed

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    :cond_2
    invoke-virtual {p3}, Lcom/xiaopeng/xui/widget/XCompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 416
    const/16 p1, 0x3ef

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_3
    invoke-virtual {p4}, Lcom/xiaopeng/xui/widget/XCompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 419
    const/16 p1, 0x3eb

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_4
    invoke-virtual {p5}, Lcom/xiaopeng/xui/widget/XCompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 422
    const/16 p1, 0x3ee

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_5
    const-string p1, "storagePath"

    iget-object p2, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->AH:Ljava/lang/String;

    invoke-virtual {p6, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    const-string p1, "copylogs"

    invoke-virtual {p6, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 426
    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p6, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 427
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->FF:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 428
    return-void
.end method

.method private aE(Z)V
    .locals 2

    .line 340
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.action.LOG_SWITCH_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 341
    const-string v1, "com.xiaopeng.data.collector"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    const-string v1, "log_switch_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 343
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 344
    return-void
.end method

.method private aF(Z)V
    .locals 3

    .line 438
    const-string v0, "GrabLogActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkModemLogStatus isModemLogOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    new-instance v0, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$gU0WUFrXWEDuMdLnv6Qoh43iQIU;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$gU0WUFrXWEDuMdLnv6Qoh43iQIU;-><init>(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 443
    return-void
.end method

.method private aG(Z)V
    .locals 1

    .line 482
    new-instance v0, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$cM6Rvf3jX3vWBiJC_vM6KU1EfpA;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$cM6Rvf3jX3vWBiJC_vM6KU1EfpA;-><init>(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Z)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 489
    return-void
.end method

.method private aH(Z)V
    .locals 1

    .line 492
    new-instance v0, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$CWLUTj_4jZ47hDJxE7hK8ywzg_8;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$CWLUTj_4jZ47hDJxE7hK8ywzg_8;-><init>(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Z)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 514
    return-void
.end method

.method private aI(Z)V
    .locals 3

    .line 525
    const-string v0, "GrabLogActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doModemLogging isChecked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 526
    if-eqz p1, :cond_0

    .line 527
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Qc:Lcom/xiaopeng/devtools/presenter/b/c;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/presenter/b/c;->setTboxModemCapture(I)V

    goto :goto_0

    .line 529
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Qc:Lcom/xiaopeng/devtools/presenter/b/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/presenter/b/c;->setTboxModemCapture(I)V

    .line 531
    :goto_0
    return-void
.end method

.method private aJ(Z)V
    .locals 3

    .line 539
    const-string v0, "GrabLogActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCduRoutingState isRouteEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    new-instance v0, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$4KzBTvsniT-00OPnonSDNvXd9iE;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$4KzBTvsniT-00OPnonSDNvXd9iE;-><init>(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 544
    return-void
.end method

.method private aK(Z)V
    .locals 3

    .line 547
    const-string v0, "GrabLogActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doRoutingForTbox isChecked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 548
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->nE()Z

    move-result v1

    if-nez v1, :cond_0

    .line 549
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f10019e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->du(Ljava/lang/String;)V

    .line 550
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PR:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 551
    :cond_0
    if-nez p1, :cond_1

    .line 552
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Qc:Lcom/xiaopeng/devtools/presenter/b/c;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/presenter/b/c;->setRoutingForTbox(I)V

    goto :goto_0

    .line 554
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Qc:Lcom/xiaopeng/devtools/presenter/b/c;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/presenter/b/c;->setRoutingForTbox(I)V

    .line 555
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f10019d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->du(Ljava/lang/String;)V

    .line 557
    :goto_0
    return-void
.end method

.method private synthetic aL(Z)V
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PR:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 542
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PR:Landroid/widget/CheckBox;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 543
    return-void
.end method

.method private synthetic aM(Z)V
    .locals 3

    .line 493
    const-string v0, "/data/Log/tcpdump/"

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->aW(Ljava/lang/String;)Z

    .line 494
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 495
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 496
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 497
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 498
    if-eqz p1, :cond_0

    .line 499
    const-string p1, "tcpdump_wlan"

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->ds(Ljava/lang/String;)V

    goto :goto_0

    .line 501
    :cond_0
    const-string p1, "tcpdump_wlan"

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->dt(Ljava/lang/String;)V

    goto :goto_0

    .line 503
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 504
    if-eqz p1, :cond_2

    .line 505
    const-string p1, "tcpdump_tbox"

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->ds(Ljava/lang/String;)V

    .line 506
    const-string p1, "tcpdump_eth"

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->ds(Ljava/lang/String;)V

    goto :goto_0

    .line 508
    :cond_2
    const-string p1, "tcpdump_tbox"

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->dt(Ljava/lang/String;)V

    .line 509
    const-string p1, "tcpdump_eth"

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->dt(Ljava/lang/String;)V

    .line 513
    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic aN(Z)V
    .locals 1

    .line 483
    const-string v0, "/data/Log/tcpdump/"

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->aW(Ljava/lang/String;)Z

    .line 484
    const-string v0, "tcpdump_cdc"

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->dt(Ljava/lang/String;)V

    .line 485
    if-eqz p1, :cond_0

    .line 486
    const-string p1, "tcpdump_cdc"

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->ds(Ljava/lang/String;)V

    .line 488
    :cond_0
    return-void
.end method

.method private synthetic aO(Z)V
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PM:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 441
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PM:Landroid/widget/CheckBox;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 442
    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)Landroid/widget/TextView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Fy:Landroid/widget/TextView;

    return-object p0
.end method

.method private synthetic b(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3

    .line 135
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    .line 136
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 137
    const-string v2, "GrabLogActivity"

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    const/4 p1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 147
    :pswitch_0
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 148
    invoke-direct {p0, v2}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->aF(Z)V

    goto :goto_0

    .line 150
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->aF(Z)V

    goto :goto_0

    .line 140
    :pswitch_1
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 141
    invoke-direct {p0, v2}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->aJ(Z)V

    goto :goto_0

    .line 143
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->aJ(Z)V

    .line 145
    nop

    .line 154
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x21401055
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->dt(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)Landroid/widget/CheckBox;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PS:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->ds(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)Landroid/widget/Button;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PV:Landroid/widget/Button;

    return-object p0
.end method

.method private ds(I)V
    .locals 3

    .line 574
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pcm_dump="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pcm_dump="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "success"

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    return-void
.end method

.method private ds(Ljava/lang/String;)V
    .locals 1

    .line 517
    const-string v0, "ctl.start"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method private dt(I)V
    .locals 2

    .line 583
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->DT:Lcom/xiaopeng/xui/app/c;

    const v1, 0x7f10045c

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/c;->dV(I)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 584
    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/c;->f(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    .line 585
    const v0, 0x7f10011d

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$thAEYb9hKfk_zXZhTSl2wfCQdQA;->INSTANCE:Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$thAEYb9hKfk_zXZhTSl2wfCQdQA;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xui/app/c;->a(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    const-string v0, ""

    .line 586
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/c;->h(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    .line 587
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/c;->show()V

    .line 588
    return-void
.end method

.method private dt(Ljava/lang/String;)V
    .locals 1

    .line 521
    const-string v0, "ctl.stop"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    return-void
.end method

.method private du(Ljava/lang/String;)V
    .locals 2

    .line 534
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 535
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 536
    return-void
.end method

.method private synthetic dv(Ljava/lang/String;)V
    .locals 0

    .line 477
    invoke-static {p0, p1}, Lcom/xiaopeng/devtools/utils/m;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 478
    return-void
.end method

.method static synthetic e(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->iq()V

    return-void
.end method

.method static synthetic f(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)Landroid/os/Handler;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getLogLevel()I
    .locals 4

    .line 446
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->getLogLevel()I

    move-result v0

    .line 447
    const-string v1, "GrabLogActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLogLevel :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    if-lez v0, :cond_1

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 450
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 451
    const/4 v0, 0x2

    goto :goto_1

    .line 449
    :cond_1
    :goto_0
    const/16 v0, 0x8

    .line 453
    :cond_2
    :goto_1
    return v0
.end method

.method private synthetic h(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 281
    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 282
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Qa:Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;

    sget-object v0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PI:[Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;->setItems([Ljava/lang/String;)V

    .line 283
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Qa:Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;

    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->nD()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;->setSelectedItem(I)V

    .line 284
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->DT:Lcom/xiaopeng/xui/app/c;

    const v0, 0x7f1002b3

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/app/c;->dV(I)Lcom/xiaopeng/xui/app/c;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PZ:Landroid/view/View;

    .line 285
    invoke-virtual {p2, v0, p1}, Lcom/xiaopeng/xui/app/c;->d(Landroid/view/View;Z)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    const p2, 0x7f10011d

    .line 286
    invoke-virtual {p0, p2}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$qU_22LwYyXmgyE0LtvMc-gi5YUU;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$qU_22LwYyXmgyE0LtvMc-gi5YUU;-><init>(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)V

    invoke-virtual {p1, p2, v0}, Lcom/xiaopeng/xui/app/c;->a(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    const-string p2, ""

    .line 299
    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/app/c;->h(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    .line 300
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/c;->show()V

    goto :goto_0

    .line 302
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->ds(I)V

    .line 303
    sget-boolean p2, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Bc:Z

    if-eqz p2, :cond_1

    .line 304
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/devtools/utils/c;->af(Landroid/content/Context;)V

    .line 306
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PQ:Landroid/widget/CheckBox;

    const v0, 0x7f1000a0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PI:[Ljava/lang/String;

    aget-object v2, v2, p1

    aput-object v2, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 308
    :goto_0
    return-void
.end method

.method private synthetic i(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 266
    invoke-static {p2}, Lcom/xiaopeng/devtools/utils/r;->V(Z)V

    .line 267
    if-eqz p2, :cond_0

    .line 268
    const-string p1, "/data/Log/bluetooth/btsnoop_hci.log"

    invoke-static {p1}, Lcom/xiaopeng/devtools/utils/r;->cI(Ljava/lang/String;)V

    .line 269
    const p1, 0x7f10008c

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->dt(I)V

    .line 271
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set bt hci log "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "success"

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method private iq()V
    .locals 2

    .line 579
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "pcm_dump=clear"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 580
    return-void
.end method

.method private synthetic j(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 258
    invoke-static {p2}, Lcom/xiaopeng/devtools/utils/r;->X(Z)V

    .line 259
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set navi log "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "success"

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method private synthetic k(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 250
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set tcpdump "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "success"

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    if-eqz p2, :cond_0

    const-string p1, "ramdump-on"

    goto :goto_0

    :cond_0
    const-string p1, "ramdump-off"

    :goto_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->reboot(Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method private synthetic l(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 235
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 236
    invoke-direct {p0, p2}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->aK(Z)V

    .line 237
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set tbox routing "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "success"

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_0
    return-void
.end method

.method public static synthetic lambda$4KzBTvsniT-00OPnonSDNvXd9iE(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->aL(Z)V

    return-void
.end method

.method public static synthetic lambda$7AK-Em4eUp9gPtyM-8o16_Ufaho(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->n(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic lambda$APGSejCc5zhZ0p42EEjo70e-NcA(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->o(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic lambda$CWLUTj_4jZ47hDJxE7hK8ywzg_8(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->aM(Z)V

    return-void
.end method

.method public static synthetic lambda$EAY5ROetBLqPksKdE8ByWo8rIro(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->b(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method public static synthetic lambda$M9cEJrIuGhRn7LBEXq_Kh7UZSgY(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->dv(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$PVxIbDiuL-BTh8wECNEojX2XvaY(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->k(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic lambda$VdL43fn2F65YS3SKbdlJlEXSl-o(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->w(Lcom/xiaopeng/xui/app/c;I)V

    return-void
.end method

.method public static synthetic lambda$XnbXgW3qWxOU03wd2dED2-Uxa54(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->i(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic lambda$bcvYLrx66T8mJTZl_kGM1cLEQDM(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->h(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic lambda$c-za4hKBXO-YG0VO9oI3mJZEcK8(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->p(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic lambda$cM6Rvf3jX3vWBiJC_vM6KU1EfpA(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->aN(Z)V

    return-void
.end method

.method public static synthetic lambda$gU0WUFrXWEDuMdLnv6Qoh43iQIU(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->aO(Z)V

    return-void
.end method

.method public static synthetic lambda$hFW8JQ2Ql4hrnaXOcMLO01y0dbM(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->j(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic lambda$if2UbPsLMEG4yOk8hha6W4YSj0o(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->m(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic lambda$qU_22LwYyXmgyE0LtvMc-gi5YUU(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->x(Lcom/xiaopeng/xui/app/c;I)V

    return-void
.end method

.method public static synthetic lambda$sxUdqaV6YFYsf572QPpmQtK1vDo(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Lcom/xiaopeng/xui/widget/XCompoundButton;Lcom/xiaopeng/xui/widget/XCompoundButton;Lcom/xiaopeng/xui/widget/XCompoundButton;Lcom/xiaopeng/xui/widget/XCompoundButton;Lcom/xiaopeng/xui/widget/XCompoundButton;Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->a(Lcom/xiaopeng/xui/widget/XCompoundButton;Lcom/xiaopeng/xui/widget/XCompoundButton;Lcom/xiaopeng/xui/widget/XCompoundButton;Lcom/xiaopeng/xui/widget/XCompoundButton;Lcom/xiaopeng/xui/widget/XCompoundButton;Lcom/xiaopeng/xui/app/c;I)V

    return-void
.end method

.method public static synthetic lambda$tGaXhIvEfSGQLr0ULHfs9_BVBAw(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->l(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic lambda$thAEYb9hKfk_zXZhTSl2wfCQdQA(Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->v(Lcom/xiaopeng/xui/app/c;I)V

    return-void
.end method

.method private synthetic m(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 227
    invoke-direct {p0, p2}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->aG(Z)V

    .line 228
    return-void
.end method

.method private synthetic n(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 216
    invoke-direct {p0, p2}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->aH(Z)V

    .line 217
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set tcpdump "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "success"

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method private nB()V
    .locals 11

    .line 382
    invoke-static {}, Lcom/xiaopeng/devtools/utils/u;->lD()Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    return-void

    .line 385
    :cond_0
    invoke-static {}, Lcom/xiaopeng/devtools/utils/g;->kY()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 386
    const v0, 0x7f1003f8

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {p0, v0, v3}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/app/g;->i(Ljava/lang/CharSequence;)V

    .line 387
    return-void

    .line 389
    :cond_1
    new-instance v0, Lcom/xiaopeng/xui/app/c;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/c;-><init>(Landroid/content/Context;)V

    .line 390
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0c0080

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/c;->qs()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 391
    const v3, 0x7f090166

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/xiaopeng/xui/widget/XCompoundButton;

    .line 392
    const v3, 0x7f090162

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/xiaopeng/xui/widget/XCompoundButton;

    .line 393
    const v3, 0x7f090167

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/xiaopeng/xui/widget/XCompoundButton;

    .line 394
    const v3, 0x7f090164

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/xiaopeng/xui/widget/XCompoundButton;

    .line 395
    const v3, 0x7f090165

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/xiaopeng/xui/widget/XCompoundButton;

    .line 396
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->lh()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 397
    const/16 v3, 0x8

    invoke-virtual {v7, v3}, Lcom/xiaopeng/xui/widget/XCompoundButton;->setVisibility(I)V

    .line 399
    :cond_2
    const v3, 0x7f1002b1

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/app/c;->dV(I)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 400
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/c;->d(Landroid/view/View;Z)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    const v1, 0x7f10011d

    .line 401
    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$sxUdqaV6YFYsf572QPpmQtK1vDo;

    move-object v4, v2

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$sxUdqaV6YFYsf572QPpmQtK1vDo;-><init>(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Lcom/xiaopeng/xui/widget/XCompoundButton;Lcom/xiaopeng/xui/widget/XCompoundButton;Lcom/xiaopeng/xui/widget/XCompoundButton;Lcom/xiaopeng/xui/widget/XCompoundButton;Lcom/xiaopeng/xui/widget/XCompoundButton;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/c;->a(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    const v1, 0x7f10009c

    .line 429
    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/c;->b(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/c;->show()V

    .line 431
    return-void
.end method

.method private nC()V
    .locals 4

    .line 434
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PW:Landroid/widget/Button;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PK:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->getLogLevel()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f1001bf

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 435
    return-void
.end method

.method private nD()I
    .locals 5

    .line 457
    nop

    .line 458
    nop

    .line 460
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "pcm_dump"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 461
    :try_start_1
    const-string v2, "GrabLogActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current PCMDUMP PARAMETER : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 464
    goto :goto_1

    .line 462
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move v1, v0

    .line 463
    :goto_0
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 465
    :goto_1
    move v2, v0

    :goto_2
    sget-object v3, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PJ:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 466
    sget-object v3, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PJ:[I

    aget v3, v3, v2

    if-ne v1, v3, :cond_0

    .line 467
    nop

    .line 468
    nop

    .line 471
    move v0, v2

    goto :goto_3

    .line 465
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 471
    :cond_1
    :goto_3
    return v0
.end method

.method private nE()Z
    .locals 5

    .line 560
    nop

    .line 561
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 562
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 563
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 564
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 565
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/16 v4, 0x9

    if-ne v2, v4, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 567
    :cond_0
    move v1, v3

    goto :goto_0

    .line 565
    :cond_1
    nop

    .line 567
    :goto_0
    const-string v2, "GrabLogActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNonMobileNetworkConnected(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is connected"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 570
    :cond_2
    return v1
.end method

.method private synthetic o(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 205
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 206
    invoke-direct {p0, p2}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->aI(Z)V

    .line 207
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set modem log "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "success"

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_0
    return-void
.end method

.method private synthetic p(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 190
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Qb:Lcom/xiaopeng/devtools/presenter/i/a;

    invoke-interface {p1, p2}, Lcom/xiaopeng/devtools/presenter/i/a;->G(Z)V

    .line 191
    invoke-direct {p0, p2}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->aE(Z)V

    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set auto catch log "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "success"

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method private reboot(Ljava/lang/String;)V
    .locals 3

    .line 475
    const v0, 0x7f100394

    invoke-static {v0}, Lcom/xiaopeng/xui/app/g;->ee(I)V

    .line 476
    new-instance v0, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$M9cEJrIuGhRn7LBEXq_Kh7UZSgY;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$M9cEJrIuGhRn7LBEXq_Kh7UZSgY;-><init>(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Ljava/lang/String;)V

    const/4 p1, 0x0

    const-wide/16 v1, 0xbb8

    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/lib/utils/j;->b(ILjava/lang/Runnable;J)V

    .line 479
    return-void
.end method

.method private static synthetic v(Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    .line 585
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/c;->dismiss()V

    return-void
.end method

.method private synthetic w(Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    .line 366
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Qa:Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;->getSelectedItem()I

    move-result p1

    add-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Lcom/xiaopeng/devtools/utils/r;->cD(I)V

    .line 367
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->nC()V

    .line 368
    const p1, 0x7f1003f5

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->dt(I)V

    .line 369
    return-void
.end method

.method private synthetic x(Lcom/xiaopeng/xui/app/c;I)V
    .locals 4

    .line 287
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Qa:Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;->getSelectedItem()I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 288
    sget-object p1, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PJ:[I

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Qa:Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;->getSelectedItem()I

    move-result v0

    aget p1, p1, v0

    .line 289
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->ds(I)V

    .line 290
    sget-boolean v0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Bc:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PJ:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    if-ne p1, v0, :cond_0

    .line 291
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/devtools/utils/c;->ae(Landroid/content/Context;)V

    .line 293
    :cond_0
    const p1, 0x7f10004c

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->dt(I)V

    .line 294
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PQ:Landroid/widget/CheckBox;

    const v0, 0x7f1000a0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PI:[Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Qa:Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;

    invoke-virtual {v3}, Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;->getSelectedItem()I

    move-result v3

    aget-object v2, v2, v3

    aput-object v2, v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 295
    goto :goto_0

    .line 296
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PQ:Landroid/widget/CheckBox;

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 298
    :goto_0
    return-void
.end method


# virtual methods
.method public fd()V
    .locals 2

    .line 333
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 334
    const v0, 0x7f0c0047

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->setContentView(I)V

    .line 335
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f030000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PI:[Ljava/lang/String;

    .line 336
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PK:[Ljava/lang/String;

    .line 337
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 348
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09009c

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const v0, 0x7f0900af

    if-eq p1, v0, :cond_2

    const v0, 0x7f09018c

    if-eq p1, v0, :cond_1

    const v0, 0x7f0902d7

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 350
    :cond_0
    const-string p1, "reboot system"

    const-string v0, "triggered"

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string p1, "GrabLogActivity"

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->reboot(Ljava/lang/String;)V

    .line 353
    goto :goto_0

    .line 374
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->nB()V

    .line 375
    goto :goto_0

    .line 361
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Qa:Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;

    sget-object v0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PK:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;->setItems([Ljava/lang/String;)V

    .line 362
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Qa:Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;

    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->getLogLevel()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;->setSelectedItem(I)V

    .line 363
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->DT:Lcom/xiaopeng/xui/app/c;

    const v0, 0x7f1001c0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/c;->dV(I)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PZ:Landroid/view/View;

    .line 364
    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xui/app/c;->d(Landroid/view/View;Z)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    const v0, 0x7f10011d

    .line 365
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$VdL43fn2F65YS3SKbdlJlEXSl-o;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$VdL43fn2F65YS3SKbdlJlEXSl-o;-><init>(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xui/app/c;->a(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    const-string v0, ""

    .line 370
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/c;->h(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    .line 371
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/c;->show()V

    .line 372
    goto :goto_0

    .line 356
    :cond_3
    new-instance p1, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$a;-><init>(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Lcom/xiaopeng/devtools/view/log/GrabLogActivity$1;)V

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 357
    const-string p1, "clear log"

    const-string v0, "triggered"

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    nop

    .line 379
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 175
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 176
    new-instance p1, Lcom/xiaopeng/xui/app/c;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/app/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->DT:Lcom/xiaopeng/xui/app/c;

    .line 177
    invoke-static {p0}, Lcom/xiaopeng/devtools/utils/g;->V(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->AH:Ljava/lang/String;

    .line 179
    new-instance p1, Lcom/xiaopeng/devtools/presenter/i/b;

    invoke-direct {p1}, Lcom/xiaopeng/devtools/presenter/i/b;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Qb:Lcom/xiaopeng/devtools/presenter/i/a;

    .line 180
    new-instance p1, Lcom/xiaopeng/devtools/presenter/b/c;

    invoke-direct {p1}, Lcom/xiaopeng/devtools/presenter/b/c;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Qc:Lcom/xiaopeng/devtools/presenter/b/c;

    .line 181
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Qc:Lcom/xiaopeng/devtools/presenter/b/c;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Bj:Lcom/xiaopeng/commonfunc/b/a/a;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/presenter/b/c;->a(Lcom/xiaopeng/commonfunc/b/a/a;)V

    .line 183
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 185
    const-string p1, "audio"

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 187
    const p1, 0x7f090071

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PL:Landroid/widget/CheckBox;

    .line 188
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PL:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->lr()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 189
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PL:Landroid/widget/CheckBox;

    new-instance v0, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$c-za4hKBXO-YG0VO9oI3mJZEcK8;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$c-za4hKBXO-YG0VO9oI3mJZEcK8;-><init>(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 196
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->DT:Lcom/xiaopeng/xui/app/c;

    .line 197
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/c;->qs()Landroid/view/ViewGroup;

    move-result-object v0

    .line 196
    const/4 v1, 0x0

    const v2, 0x7f0c00c3

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PZ:Landroid/view/View;

    .line 198
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PZ:Landroid/view/View;

    const v0, 0x7f09025b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PY:Landroid/widget/ListView;

    .line 199
    new-instance p1, Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;

    invoke-direct {p1}, Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Qa:Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;

    .line 200
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PY:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Qa:Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 202
    const p1, 0x7f090153

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PM:Landroid/widget/CheckBox;

    .line 203
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PM:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 204
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PM:Landroid/widget/CheckBox;

    new-instance v0, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$APGSejCc5zhZ0p42EEjo70e-NcA;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$APGSejCc5zhZ0p42EEjo70e-NcA;-><init>(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 211
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Qc:Lcom/xiaopeng/devtools/presenter/b/c;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/presenter/b/c;->setTboxModemCapture(I)V

    .line 213
    const p1, 0x7f090154

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PS:Landroid/widget/CheckBox;

    .line 214
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PS:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->lz()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 215
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PS:Landroid/widget/CheckBox;

    new-instance v2, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$7AK-Em4eUp9gPtyM-8o16_Ufaho;

    invoke-direct {v2, p0}, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$7AK-Em4eUp9gPtyM-8o16_Ufaho;-><init>(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 222
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->ll()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 223
    const p1, 0x7f090152

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PT:Landroid/widget/CheckBox;

    .line 224
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PT:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 225
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PT:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->lA()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 226
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PT:Landroid/widget/CheckBox;

    new-instance v2, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$if2UbPsLMEG4yOk8hha6W4YSj0o;

    invoke-direct {v2, p0}, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$if2UbPsLMEG4yOk8hha6W4YSj0o;-><init>(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 232
    :cond_0
    const p1, 0x7f0901b3

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PR:Landroid/widget/CheckBox;

    .line 233
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PR:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 234
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PR:Landroid/widget/CheckBox;

    new-instance v2, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$tGaXhIvEfSGQLr0ULHfs9_BVBAw;

    invoke-direct {v2, p0}, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$tGaXhIvEfSGQLr0ULHfs9_BVBAw;-><init>(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 241
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Qc:Lcom/xiaopeng/devtools/presenter/b/c;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/presenter/b/c;->setRoutingForTbox(I)V

    .line 243
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 244
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Qd:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    iget-object v4, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 247
    const p1, 0x7f0902d4

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PN:Landroid/widget/CheckBox;

    .line 248
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PN:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->lu()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 249
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PN:Landroid/widget/CheckBox;

    new-instance v0, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$PVxIbDiuL-BTh8wECNEojX2XvaY;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$PVxIbDiuL-BTh8wECNEojX2XvaY;-><init>(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 255
    const p1, 0x7f090286

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PO:Landroid/widget/CheckBox;

    .line 256
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PO:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->lw()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 257
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PO:Landroid/widget/CheckBox;

    new-instance v0, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$hFW8JQ2Ql4hrnaXOcMLO01y0dbM;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$hFW8JQ2Ql4hrnaXOcMLO01y0dbM;-><init>(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 263
    const p1, 0x7f090151

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PP:Landroid/widget/CheckBox;

    .line 264
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PP:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->lj()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 265
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PP:Landroid/widget/CheckBox;

    new-instance v0, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$XnbXgW3qWxOU03wd2dED2-Uxa54;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$XnbXgW3qWxOU03wd2dED2-Uxa54;-><init>(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 275
    const p1, 0x7f090150

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PQ:Landroid/widget/CheckBox;

    .line 277
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->nD()I

    move-result p1

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PQ:Landroid/widget/CheckBox;

    const v2, 0x7f1000a0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    sget-object v5, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PI:[Ljava/lang/String;

    aget-object v5, v5, p1

    aput-object v5, v4, v1

    invoke-virtual {p0, v2, v4}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PQ:Landroid/widget/CheckBox;

    if-eqz p1, :cond_1

    move v1, v3

    nop

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 280
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PQ:Landroid/widget/CheckBox;

    new-instance v0, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$bcvYLrx66T8mJTZl_kGM1cLEQDM;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$bcvYLrx66T8mJTZl_kGM1cLEQDM;-><init>(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 310
    const p1, 0x7f0902d7

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PU:Landroid/widget/Button;

    .line 311
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PU:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    const p1, 0x7f09009c

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PV:Landroid/widget/Button;

    .line 314
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PV:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    const p1, 0x7f0900af

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PW:Landroid/widget/Button;

    .line 317
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->PW:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->nC()V

    .line 320
    const p1, 0x7f0903ec

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Fy:Landroid/widget/TextView;

    .line 322
    const p1, 0x7f09018c

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->FF:Landroid/widget/Button;

    .line 323
    new-instance p1, Lcom/xiaopeng/devtools/system/a/b;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, v0}, Lcom/xiaopeng/devtools/system/a/b;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    .line 324
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    invoke-virtual {p1, v0}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 325
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->FF:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->AH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 327
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->FF:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 329
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 670
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 671
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 674
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 675
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Qc:Lcom/xiaopeng/devtools/presenter/b/c;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/b/c;->onDestroy()V

    .line 676
    return-void
.end method

.method public onEvent(Ljava/lang/Integer;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 158
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 165
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->FF:Landroid/widget/Button;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    invoke-virtual {v2}, Lcom/xiaopeng/devtools/system/a/b;->kG()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->AH:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    nop

    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 166
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Fy:Landroid/widget/TextView;

    const v0, 0x7f10014b

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 167
    goto :goto_2

    .line 160
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->FF:Landroid/widget/Button;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    invoke-virtual {v2}, Lcom/xiaopeng/devtools/system/a/b;->kG()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->AH:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    nop

    :cond_3
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 161
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Fy:Landroid/widget/TextView;

    const v0, 0x7f100153

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 162
    nop

    .line 171
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
