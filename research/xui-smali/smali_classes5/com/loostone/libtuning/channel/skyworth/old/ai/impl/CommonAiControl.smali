.class public Lcom/loostone/libtuning/channel/skyworth/old/ai/impl/CommonAiControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAppStatus:I

.field private mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;

.field private mPlayerStatus:I

.field private mVoiceKeyStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CommonAiControl"

    .line 2
    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/impl/CommonAiControl;->TAG:Ljava/lang/String;

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/impl/CommonAiControl;->mAppStatus:I

    .line 5
    iput v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/impl/CommonAiControl;->mPlayerStatus:I

    .line 6
    iput v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/impl/CommonAiControl;->mVoiceKeyStatus:I

    .line 10
    iput-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/impl/CommonAiControl;->mContext:Landroid/content/Context;

    return-void
.end method

.method private sendBroadcast(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CommonAiControl"

    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.loostone.karaoke.voice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "cmd"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt p1, v1, :cond_0

    const/high16 p1, 0x10000000

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/impl/CommonAiControl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 8
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CommonAiControl"

    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.loostone.karaoke.voice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "cmd"

    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "value"

    .line 11
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x10

    if-lt p1, p2, :cond_0

    const/high16 p1, 0x10000000

    .line 13
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/impl/CommonAiControl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public enterKaraokeApp(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/impl/CommonAiControl;->mAppStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    iput v1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/impl/CommonAiControl;->mAppStatus:I

    .line 5
    iput-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/impl/CommonAiControl;->mPackageName:Ljava/lang/String;

    const-string p1, "EnterKaraokeApp"

    .line 6
    invoke-direct {p0, p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/impl/CommonAiControl;->sendBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method public enterKaraokePlayer()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/impl/CommonAiControl;->mPlayerStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    iput v1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/impl/CommonAiControl;->mPlayerStatus:I

    const-string v0, "EnterKaraokePlayer"

    .line 5
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/ai/impl/CommonAiControl;->sendBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method public exitKaraokeApp()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/impl/CommonAiControl;->mAppStatus:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/impl/CommonAiControl;->mAppStatus:I

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/impl/CommonAiControl;->mPackageName:Ljava/lang/String;

    const-string v0, "ExitKaraokeApp"

    .line 6
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/ai/impl/CommonAiControl;->sendBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method public exitKaraokePlayer()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/impl/CommonAiControl;->mPlayerStatus:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/impl/CommonAiControl;->mPlayerStatus:I

    const-string v0, "ExitKaraokePlayer"

    .line 6
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/ai/impl/CommonAiControl;->sendBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/impl/CommonAiControl;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isEnterApp()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/impl/CommonAiControl;->mAppStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isEnterPlayer()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/impl/CommonAiControl;->mPlayerStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public micChanged(I)V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "micChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CommonAiControl"

    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MicChanged"

    invoke-direct {p0, v0, p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/impl/CommonAiControl;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onMicExist(I)V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "micExist:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CommonAiControl"

    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "MicExist"

    .line 3
    invoke-direct {p0, p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/impl/CommonAiControl;->sendBroadcast(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "MicNotExist"

    .line 5
    invoke-direct {p0, p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/impl/CommonAiControl;->sendBroadcast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onVoiceKey(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1
    iget p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/impl/CommonAiControl;->mVoiceKeyStatus:I

    if-ne p1, v0, :cond_0

    return-void

    .line 4
    :cond_0
    iput v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/impl/CommonAiControl;->mVoiceKeyStatus:I

    const-string p1, "VoiceKeyDown"

    .line 5
    invoke-direct {p0, p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/impl/CommonAiControl;->sendBroadcast(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    iget p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/impl/CommonAiControl;->mVoiceKeyStatus:I

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/impl/CommonAiControl;->mVoiceKeyStatus:I

    const-string p1, "VoiceKeyUp"

    .line 11
    invoke-direct {p0, p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/impl/CommonAiControl;->sendBroadcast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
