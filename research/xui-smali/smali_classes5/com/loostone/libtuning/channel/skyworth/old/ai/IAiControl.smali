.class public interface abstract Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.loostone.karaoke.voice"

.field public static final CMD_ENTER_KARAOKE_APP:Ljava/lang/String; = "EnterKaraokeApp"

.field public static final CMD_ENTER_KARAOKE_PLAYER:Ljava/lang/String; = "EnterKaraokePlayer"

.field public static final CMD_EXIT_KARAOKE_APP:Ljava/lang/String; = "ExitKaraokeApp"

.field public static final CMD_EXIT_KARAOKE_PLAYER:Ljava/lang/String; = "ExitKaraokePlayer"

.field public static final CMD_MIC_CHANGED:Ljava/lang/String; = "MicChanged"

.field public static final CMD_MIC_EXIST:Ljava/lang/String; = "MicExist"

.field public static final CMD_MIC_NOT_EXIST:Ljava/lang/String; = "MicNotExist"

.field public static final CMD_VOICE_KEY_DOWN:Ljava/lang/String; = "VoiceKeyDown"

.field public static final CMD_VOICE_KEY_UP:Ljava/lang/String; = "VoiceKeyUp"


# virtual methods
.method public abstract enterKaraokeApp(Ljava/lang/String;)V
.end method

.method public abstract enterKaraokePlayer()V
.end method

.method public abstract exitKaraokeApp()V
.end method

.method public abstract exitKaraokePlayer()V
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract isEnterApp()Z
.end method

.method public abstract isEnterPlayer()Z
.end method

.method public abstract micChanged(I)V
.end method

.method public abstract onMicExist(I)V
.end method

.method public abstract onVoiceKey(I)V
.end method
