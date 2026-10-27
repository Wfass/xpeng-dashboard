.class public Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "KaraokeVoiceAppLogic"

.field private static mInstance:Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;


# instance fields
.field private final CHANGBA_PACKAGE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mKaraokeApp:Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeApp;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.changba.sd"

    .line 2
    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;->CHANGBA_PACKAGE:Ljava/lang/String;

    .line 11
    new-instance v0, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeApp;

    invoke-direct {v0}, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeApp;-><init>()V

    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;->mKaraokeApp:Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeApp;

    const-string v1, "com.changba.sd"

    .line 12
    invoke-virtual {v0, v1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeApp;->setFirstPackage(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;->mKaraokeApp:Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeApp;

    sget v1, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeApp;->MODE_DFT:I

    invoke-virtual {v0, v1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeApp;->setType(I)V

    return-void
.end method

.method private getInstalledPackage(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const-string p1, "com.changba.sd"

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;
    .locals 2

    const-class v0, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;->mInstance:Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;

    invoke-direct {v1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;-><init>()V

    sput-object v1, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;->mInstance:Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;

    .line 4
    :cond_0
    sget-object v1, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;->mInstance:Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 0
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 6
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    return v1
.end method


# virtual methods
.method public deinit()V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "KaraokeVoiceAppLogic"

    const-string v2, "deinit"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;->mContext:Landroid/content/Context;

    .line 3
    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;->mKaraokeApp:Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeApp;

    .line 4
    sput-object v0, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;->mInstance:Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;

    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;->mKaraokeApp:Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeApp;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "KaraokeVoiceAppLogic"

    const-string v2, "dft package"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.changba.sd"

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeApp;->getFirstPackage()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;->mKaraokeApp:Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeApp;

    invoke-virtual {v1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeApp;->getType()I

    move-result v1

    sget v2, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeApp;->MODE_DFT_INSTALL:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;->mKaraokeApp:Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeApp;

    invoke-virtual {v1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeApp;->getType()I

    move-result v1

    sget v2, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeApp;->MODE_FIRST_INSTALL:I

    if-ne v1, v2, :cond_2

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;->mKaraokeApp:Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeApp;

    invoke-virtual {v1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeApp;->getSupportList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;->mKaraokeApp:Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeApp;

    invoke-virtual {v1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeApp;->getSupportList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 9
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;->mKaraokeApp:Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeApp;

    invoke-virtual {v0}, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeApp;->getSupportList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;->getInstalledPackage(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 10
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installed package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KaraokeVoiceAppLogic"

    invoke-virtual {v1, v3, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "KaraokeVoiceAppLogic"

    const-string v2, "init"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;->mContext:Landroid/content/Context;

    return-void
.end method

.method public isForceUsePackageName()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;->mKaraokeApp:Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeApp;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeApp;->getType()I

    move-result v0

    sget v2, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeApp;->MODE_FIRST:I

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;->mKaraokeApp:Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeApp;

    invoke-virtual {v0}, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeApp;->getType()I

    move-result v0

    sget v2, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeApp;->MODE_FIRST_INSTALL:I

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method
