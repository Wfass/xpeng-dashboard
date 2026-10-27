.class public Lcom/xiaopeng/xuimanager/operation/internal/OperationConstants$PresetPath;
.super Ljava/lang/Object;
.source "OperationConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/operation/internal/OperationConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PresetPath"
.end annotation


# static fields
.field public static final KEY_SPEECH_SETTING_PROVIDER:Ljava/lang/String; = "key_unzipped_speech"

.field public static final KEY_TTS_SETTING_PROVIDER:Ljava/lang/String; = "key_unzipped_tts"

.field public static final PATH_DANCE_RSC:Ljava/lang/String; = "/system/etc/xuiservice/dance/"

.field public static final PATH_DANCE_TARGET:Ljava/lang/String; = "/data/xuiservice/rsc/llu/"

.field public static final PATH_OPERATION:Ljava/lang/String; = "/data/xuiservice/rsc/"

.field public static final PATH_OPERATION_DOWNLOAD:Ljava/lang/String; = "/data/operation/resource/"

.field public static final PATH_PRESET_DANCE_INFO:Ljava/lang/String; = "/system/etc/xuiservice/dance/LocalDance_Info.json"

.field public static final PATH_SPEECH_RSC:Ljava/lang/String; = "/system/speech/"

.field public static final PATH_SPEECH_TARGET:Ljava/lang/String; = "/sdcard/speech/"

.field public static final PATH_TTS_RSC:Ljava/lang/String; = "/system/tts/"

.field public static final PATH_TTS_TARGET:Ljava/lang/String; = "/mnt/tts/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
