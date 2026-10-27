.class public Lcom/xiaopeng/devtools/presenter/aftersales/f;
.super Ljava/lang/Object;
.source "StorageMemoryPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/presenter/aftersales/f$a;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final vU:Ljava/lang/String;

.field private vV:Lcom/xiaopeng/devtools/presenter/aftersales/f$a;

.field private vW:Lcom/xiaopeng/devtools/view/aftersales/cdu/b;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/view/aftersales/cdu/b;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "clear"

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/f;->vU:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/xiaopeng/devtools/presenter/aftersales/f$a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/aftersales/f$a;-><init>(Lcom/xiaopeng/devtools/presenter/aftersales/f;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/f;->vV:Lcom/xiaopeng/devtools/presenter/aftersales/f$a;

    .line 37
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/f;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/f;->vW:Lcom/xiaopeng/devtools/view/aftersales/cdu/b;

    .line 39
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/f;->mAudioManager:Landroid/media/AudioManager;

    .line 40
    return-void
.end method

.method private iq()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/f;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "pcm_dump=clear"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method private synthetic ir()V
    .locals 6

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/f;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 66
    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/aftersales/f;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/devtools/presenter/aftersales/f;->vV:Lcom/xiaopeng/devtools/presenter/aftersales/f$a;

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/aftersales/f;->iq()V

    .line 69
    sget-object v0, Lcom/xiaopeng/devtools/a;->nF:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 70
    const-string v5, "/data/Log/log0"

    invoke-static {v4, v5, v2}, Lcom/xiaopeng/devtools/utils/g;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 69
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 72
    :cond_1
    const-string v0, "free storage"

    const-string v1, "triggered"

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/utils/b;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/f;->vW:Lcom/xiaopeng/devtools/view/aftersales/cdu/b;

    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/f;->vW:Lcom/xiaopeng/devtools/view/aftersales/cdu/b;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/view/aftersales/cdu/b;->mh()V

    .line 77
    :cond_2
    return-void
.end method

.method private synthetic is()V
    .locals 6

    .line 44
    nop

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/f;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 47
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/xiaopeng/devtools/utils/g;->h(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 48
    goto :goto_0

    .line 50
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v3, Lcom/xiaopeng/devtools/a;->nF:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 51
    sget-object v3, Lcom/xiaopeng/devtools/a;->nF:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/xiaopeng/devtools/utils/g;->cB(Ljava/lang/String;)J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 52
    const-string v3, "StorageMemoryPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkRemovableSize "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/xiaopeng/devtools/a;->nF:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/f;->vW:Lcom/xiaopeng/devtools/view/aftersales/cdu/b;

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/f;->vW:Lcom/xiaopeng/devtools/view/aftersales/cdu/b;

    invoke-static {v1, v2}, Lcom/xiaopeng/devtools/utils/d;->k(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/view/aftersales/cdu/b;->dg(Ljava/lang/String;)V

    .line 59
    :cond_2
    return-void
.end method

.method public static synthetic lambda$WioMcCKM5y3BgYBsjZQhc2yxW-4(Lcom/xiaopeng/devtools/presenter/aftersales/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/aftersales/f;->is()V

    return-void
.end method

.method public static synthetic lambda$jaqjsdxWIGjFQIEQho9bmBbT8Vw(Lcom/xiaopeng/devtools/presenter/aftersales/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/aftersales/f;->ir()V

    return-void
.end method


# virtual methods
.method public io()V
    .locals 1

    .line 43
    new-instance v0, Lcom/xiaopeng/devtools/presenter/aftersales/-$$Lambda$f$WioMcCKM5y3BgYBsjZQhc2yxW-4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/aftersales/-$$Lambda$f$WioMcCKM5y3BgYBsjZQhc2yxW-4;-><init>(Lcom/xiaopeng/devtools/presenter/aftersales/f;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 60
    return-void
.end method

.method public ip()V
    .locals 1

    .line 63
    new-instance v0, Lcom/xiaopeng/devtools/presenter/aftersales/-$$Lambda$f$jaqjsdxWIGjFQIEQho9bmBbT8Vw;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/aftersales/-$$Lambda$f$jaqjsdxWIGjFQIEQho9bmBbT8Vw;-><init>(Lcom/xiaopeng/devtools/presenter/aftersales/f;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 78
    return-void
.end method
