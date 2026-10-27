.class public Lcom/xiaopeng/devtools/presenter/aftersales/b;
.super Ljava/lang/Object;
.source "CommonCmdPresenter.java"


# instance fields
.field private mAction:Ljava/lang/String;

.field private vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

.field private vo:Lcom/xiaopeng/devtools/view/aftersales/b;

.field private vp:Lcom/xiaopeng/aftersales/ShellCmdListener;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/view/aftersales/b;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/xiaopeng/devtools/presenter/aftersales/b$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/aftersales/b$1;-><init>(Lcom/xiaopeng/devtools/presenter/aftersales/b;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->vp:Lcom/xiaopeng/aftersales/ShellCmdListener;

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->vo:Lcom/xiaopeng/devtools/view/aftersales/b;

    .line 31
    const-string p1, ""

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->mAction:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "xiaopeng_aftersales"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/aftersales/AfterSalesManager;

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    .line 33
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->vp:Lcom/xiaopeng/aftersales/ShellCmdListener;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/aftersales/AfterSalesManager;->registerShellCmdListener(Lcom/xiaopeng/aftersales/ShellCmdListener;)V

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/presenter/aftersales/b;)Lcom/xiaopeng/devtools/view/aftersales/b;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->vo:Lcom/xiaopeng/devtools/view/aftersales/b;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/presenter/aftersales/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->mAction:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/presenter/aftersales/b;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->mAction:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public bQ(Ljava/lang/String;)V
    .locals 3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getprop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->mAction:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/xiaopeng/aftersales/AfterSalesManager;->executeShellCmd(ILjava/lang/String;Z)V

    .line 65
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->mAction:Ljava/lang/String;

    const-string v0, "triggered"

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/utils/b;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public bR(Ljava/lang/String;)V
    .locals 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cat "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->mAction:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/xiaopeng/aftersales/AfterSalesManager;->executeShellCmd(ILjava/lang/String;Z)V

    .line 71
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->mAction:Ljava/lang/String;

    const-string v0, "triggered"

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/utils/b;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public bS(Ljava/lang/String;)V
    .locals 3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "du -sh "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->mAction:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/xiaopeng/aftersales/AfterSalesManager;->executeShellCmd(ILjava/lang/String;Z)V

    .line 89
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->mAction:Ljava/lang/String;

    const-string v0, "triggered"

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/utils/b;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public bT(Ljava/lang/String;)V
    .locals 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "top "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->mAction:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/xiaopeng/aftersales/AfterSalesManager;->executeShellCmd(ILjava/lang/String;Z)V

    .line 95
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->mAction:Ljava/lang/String;

    const-string v0, "triggered"

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/utils/b;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public bU(Ljava/lang/String;)V
    .locals 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ls -al "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->mAction:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/xiaopeng/aftersales/AfterSalesManager;->executeShellCmd(ILjava/lang/String;Z)V

    .line 113
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->mAction:Ljava/lang/String;

    const-string v0, "triggered"

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/utils/b;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public hY()V
    .locals 4

    .line 75
    const-string v0, "df -h"

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->mAction:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    const-string v1, ""

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/xiaopeng/aftersales/AfterSalesManager;->executeShellCmd(ILjava/lang/String;Z)V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->mAction:Ljava/lang/String;

    const-string v1, "triggered"

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/utils/b;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public hZ()V
    .locals 4

    .line 81
    const-string v0, "mount"

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->mAction:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    const-string v1, ""

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/xiaopeng/aftersales/AfterSalesManager;->executeShellCmd(ILjava/lang/String;Z)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->mAction:Ljava/lang/String;

    const-string v1, "triggered"

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/utils/b;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public ia()V
    .locals 4

    .line 99
    const-string v0, "dumpsys meminfo"

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->mAction:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    const-string v1, ""

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/xiaopeng/aftersales/AfterSalesManager;->executeShellCmd(ILjava/lang/String;Z)V

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->mAction:Ljava/lang/String;

    const-string v1, "triggered"

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/utils/b;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public ib()V
    .locals 4

    .line 105
    const-string v0, "ifconfig"

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->mAction:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    const-string v1, ""

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/xiaopeng/aftersales/AfterSalesManager;->executeShellCmd(ILjava/lang/String;Z)V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->mAction:Ljava/lang/String;

    const-string v1, "triggered"

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/utils/b;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b;->vp:Lcom/xiaopeng/aftersales/ShellCmdListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aftersales/AfterSalesManager;->unregisterShellCmdListener(Lcom/xiaopeng/aftersales/ShellCmdListener;)V

    .line 118
    return-void
.end method
