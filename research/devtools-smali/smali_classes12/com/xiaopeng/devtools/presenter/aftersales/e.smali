.class public Lcom/xiaopeng/devtools/presenter/aftersales/e;
.super Ljava/lang/Object;
.source "EncryptShPresenter.java"


# instance fields
.field private mAction:Ljava/lang/String;

.field private mStep:I

.field private vA:Lcom/xiaopeng/aftersales/EncryptShListener;

.field private vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

.field private vx:Lcom/xiaopeng/devtools/view/aftersales/c;

.field private vy:Ljava/lang/String;

.field private vz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/view/aftersales/c;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->mStep:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->vy:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->vz:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/xiaopeng/devtools/presenter/aftersales/e$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/aftersales/e$1;-><init>(Lcom/xiaopeng/devtools/presenter/aftersales/e;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->vA:Lcom/xiaopeng/aftersales/EncryptShListener;

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->vx:Lcom/xiaopeng/devtools/view/aftersales/c;

    .line 45
    const-string p1, ""

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->mAction:Ljava/lang/String;

    .line 46
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "xiaopeng_aftersales"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/aftersales/AfterSalesManager;

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    .line 47
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->vA:Lcom/xiaopeng/aftersales/EncryptShListener;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/aftersales/AfterSalesManager;->registerEncryptShListener(Lcom/xiaopeng/aftersales/EncryptShListener;)V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/presenter/aftersales/e;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->vy:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/presenter/aftersales/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->mAction:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/presenter/aftersales/e;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->vz:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/presenter/aftersales/e;)Lcom/xiaopeng/devtools/view/aftersales/c;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->vx:Lcom/xiaopeng/devtools/view/aftersales/c;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaopeng/devtools/presenter/aftersales/e;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->mAction:Ljava/lang/String;

    return-object p0
.end method

.method private synthetic ii()V
    .locals 7

    .line 91
    iget v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->mStep:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 122
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->vx:Lcom/xiaopeng/devtools/view/aftersales/c;

    if-eqz v0, :cond_4

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->vx:Lcom/xiaopeng/devtools/view/aftersales/c;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/view/aftersales/c;->dismissDialog()V

    goto/16 :goto_1

    .line 107
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->vx:Lcom/xiaopeng/devtools/view/aftersales/c;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->vx:Lcom/xiaopeng/devtools/view/aftersales/c;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f10013f

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->vz:Ljava/lang/String;

    aput-object v6, v2, v3

    .line 109
    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-interface {v0, v2}, Lcom/xiaopeng/devtools/view/aftersales/c;->cU(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->vx:Lcom/xiaopeng/devtools/view/aftersales/c;

    invoke-interface {v0, v3}, Lcom/xiaopeng/devtools/view/aftersales/c;->ab(Z)V

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute xiaopeng tool "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->vz:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "md5: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->vy:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->vz:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-static {v2}, Lcom/xiaopeng/devtools/utils/g;->cD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->mAction:Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->vy:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->vz:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/cache/aftersales"

    invoke-static {v0, v2}, Lcom/xiaopeng/devtools/utils/g;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    const-string v2, "/cache/aftersales"

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/aftersales/AfterSalesManager;->executeEncryptSh(Ljava/lang/String;Z)V

    .line 118
    iput v1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->mStep:I

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->mAction:Ljava/lang/String;

    const-string v1, "triggered"

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/utils/b;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    goto :goto_1

    .line 93
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->vx:Lcom/xiaopeng/devtools/view/aftersales/c;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->vx:Lcom/xiaopeng/devtools/view/aftersales/c;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1000b3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/xiaopeng/devtools/view/aftersales/c;->cU(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->vx:Lcom/xiaopeng/devtools/view/aftersales/c;

    invoke-interface {v0, v3}, Lcom/xiaopeng/devtools/view/aftersales/c;->ab(Z)V

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->vy:Ljava/lang/String;

    const-string v4, ".zip"

    invoke-static {v0, v4}, Lcom/xiaopeng/devtools/utils/g;->H(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->vz:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->vz:Ljava/lang/String;

    if-eqz v0, :cond_2

    move v1, v2

    nop

    :cond_2
    iput v1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->mStep:I

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->vx:Lcom/xiaopeng/devtools/view/aftersales/c;

    if-eqz v0, :cond_4

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->vx:Lcom/xiaopeng/devtools/view/aftersales/c;

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->vz:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 101
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f1000d2

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->vz:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 102
    :cond_3
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f100405

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    :goto_0
    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/view/aftersales/c;->cU(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->vx:Lcom/xiaopeng/devtools/view/aftersales/c;

    invoke-interface {v0, v2}, Lcom/xiaopeng/devtools/view/aftersales/c;->ab(Z)V

    .line 127
    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$XICHEAblbyG7yiSp7B-ovNhVpg8(Lcom/xiaopeng/devtools/presenter/aftersales/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/aftersales/e;->ii()V

    return-void
.end method


# virtual methods
.method public bV(Ljava/lang/String;)V
    .locals 1

    .line 86
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char p1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "xptools"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->vy:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public ig()V
    .locals 1

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->mStep:I

    .line 83
    return-void
.end method

.method public ih()V
    .locals 1

    .line 90
    new-instance v0, Lcom/xiaopeng/devtools/presenter/aftersales/-$$Lambda$e$XICHEAblbyG7yiSp7B-ovNhVpg8;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/aftersales/-$$Lambda$e$XICHEAblbyG7yiSp7B-ovNhVpg8;-><init>(Lcom/xiaopeng/devtools/presenter/aftersales/e;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e;->vA:Lcom/xiaopeng/aftersales/EncryptShListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aftersales/AfterSalesManager;->unregisterEncryptShListener(Lcom/xiaopeng/aftersales/EncryptShListener;)V

    .line 132
    return-void
.end method
