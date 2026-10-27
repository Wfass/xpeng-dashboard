.class public Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;


# instance fields
.field private final ACTION:Ljava/lang/String;

.field private final START_APP_ACTION:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ChangbaKaraokeControl"

    .line 2
    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->TAG:Ljava/lang/String;

    const-string v0, "com.changba.tv.action.control"

    .line 3
    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->ACTION:Ljava/lang/String;

    const-string v0, "com.changba.karaoke.action.VIEW"

    .line 4
    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->START_APP_ACTION:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIntent, cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChangbaKaraokeControl"

    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.changba.tv.action.control"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v1, "Command"

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private sendBroadcast(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public adjustEcho(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "AdjustEffect"

    .line 1
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "+"

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Value"

    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "Value"

    .line 8
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 15
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public adjustMic(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "+"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string v0, "AdjustMicVolume"

    .line 6
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Value"

    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 10
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public adjustMusic(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "+"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string v0, "AdjustMusicVolume"

    .line 6
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Value"

    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 10
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public adjustTone(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "+"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string v0, "AdjustTone"

    .line 6
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Value"

    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 10
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public back()V
    .locals 1

    const-string v0, "Back"

    .line 1
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public closeApp()V
    .locals 1

    const-string v0, "Close App"

    .line 1
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public deleteSong(Ljava/lang/String;)V
    .locals 2

    const-string v0, "DeleteSong"

    .line 1
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    const-string v1, "Index"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :goto_0
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public nextPage()V
    .locals 1

    const-string v0, "NextPage"

    .line 1
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public openApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openApp, singer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", song:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChangbaKaraokeControl"

    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.changba.karaoke.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Command"

    const-string v2, "Search"

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Artist"

    .line 9
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "Command"

    const-string v1, "Search"

    .line 12
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "Song"

    .line 13
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public openSelectedSong()V
    .locals 3

    const-string v0, "OpenPage"

    .line 1
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Page"

    const-string v2, "page_selected_song_list"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public openTuning()V
    .locals 3

    const-string v0, "OpenPage"

    .line 1
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Page"

    const-string v2, "page_adjust_volume"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public pause()V
    .locals 1

    const-string v0, "Pause"

    .line 1
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public play()V
    .locals 1

    const-string v0, "Play"

    .line 1
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public play(I)V
    .locals 2

    const-string v0, "Play"

    .line 2
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    const-string v1, "Index"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public playNext()V
    .locals 1

    const-string v0, "Play next"

    .line 1
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public prePage()V
    .locals 1

    const-string v0, "PrePage"

    .line 1
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public replay()V
    .locals 1

    const-string v0, "ReSing"

    .line 1
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Search"

    .line 1
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "Artist"

    .line 3
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "Song"

    .line 4
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public stop()V
    .locals 1

    const-string v0, "Stop"

    .line 1
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public switchScore(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SwitchScoring"

    .line 1
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "1"

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Flag"

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "ChangbaKaraokeControl"

    const-string v2, "score, 1"

    invoke-virtual {p1, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Flag"

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "ChangbaKaraokeControl"

    const-string v2, "score, 0"

    invoke-virtual {p1, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public switchVocal(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SwitchOriginal"

    .line 1
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "1"

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Flag"

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "ChangbaKaraokeControl"

    const-string v2, "vocal, 1"

    invoke-virtual {p1, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Flag"

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "ChangbaKaraokeControl"

    const-string v2, "vocal, 0"

    invoke-virtual {p1, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public topSong(Ljava/lang/String;)V
    .locals 2

    const-string v0, "TopSong"

    .line 1
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    const-string v1, "Index"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :goto_0
    invoke-direct {p0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
