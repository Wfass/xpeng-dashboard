.class public Lcom/xiaopeng/musicradio/utils/g;
.super Ljava/lang/Object;
.source "AudioUtil.java"


# static fields
.field public static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/br;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    sput v0, Lcom/xiaopeng/musicradio/utils/g;->a:I

    return-void
.end method

.method public static a()Landroid/media/AudioManager;
    .locals 2

    .line 22
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method public static a(I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/br;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 p0, p0, 0x2

    .line 102
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMusicVolume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "AudioUtil"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->a()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    const/16 v2, 0x10

    invoke-virtual {v0, v1, p0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public static b(I)I
    .locals 1

    .line 141
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->a()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    return p0
.end method

.method public static b()Z
    .locals 2

    .line 38
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->a()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    return v0
.end method

.method private static c(I)I
    .locals 5

    .line 121
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->a()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    return p0

    .line 125
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->a()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "getLastAudibleStreamVolume"

    .line 124
    invoke-static {v0, v3, v2, v1}, Lcom/xiaopeng/musicradio/utils/bf;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 127
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->a()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    return p0

    .line 129
    :cond_1
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static c()Z
    .locals 1

    .line 42
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static d()Ljava/lang/String;
    .locals 4

    .line 46
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->a()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "getCurrentAudioFocusPackageName"

    invoke-static {v0, v3, v2, v1}, Lcom/xiaopeng/musicradio/utils/bf;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 50
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static e()I
    .locals 5

    .line 54
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->a()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "getCurrentAudioFocusPid"

    invoke-static {v0, v4, v2, v3}, Lcom/xiaopeng/musicradio/utils/bf;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 58
    :cond_0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static f()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    sget v0, Lcom/xiaopeng/musicradio/utils/g;->a:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/g;->a(I)V

    :cond_0
    return-void
.end method

.method public static g()Z
    .locals 1

    .line 79
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->h()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static h()I
    .locals 2

    const/4 v0, 0x3

    .line 113
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/g;->c(I)I

    move-result v0

    .line 114
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/br;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 117
    :cond_0
    div-int/lit8 v0, v0, 0x2

    return v0
.end method
