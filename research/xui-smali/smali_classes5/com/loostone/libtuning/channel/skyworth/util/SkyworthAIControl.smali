.class public final Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 (2\u00020\u0001:\u0001(B\u0011\u0012\u0008\u0008\u0002\u0010\"\u001a\u00020!\u00a2\u0006\u0004\u0008&\u0010\'J#\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\t\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\r\u0010\u000b\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\r\u0010\r\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\r\u0010\u000e\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u000e\u0010\u000cJ\u0015\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0015\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0014\u0010\u0012J\u0015\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\r\u0010\u001b\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u001b\u0010\u001aJ\r\u0010\u001c\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u0016\u0010\u001e\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0016\u0010 \u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u001fR\u0016\u0010\"\u001a\u00020!8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0016\u0010\u0008\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010$R\u0016\u0010%\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010\u001f\u00a8\u0006)"
    }
    d2 = {
        "Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;",
        "",
        "",
        "cmd",
        "value",
        "",
        "sendBroadcast",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "packageName",
        "enterKaraokeApp",
        "(Ljava/lang/String;)V",
        "exitKaraokeApp",
        "()V",
        "enterKaraokePlayer",
        "exitKaraokePlayer",
        "",
        "actionDown",
        "onVoiceKey",
        "(Z)V",
        "micExist",
        "onMicExist",
        "",
        "status",
        "micChanged",
        "(I)V",
        "isEnterApp",
        "()Z",
        "isEnterPlayer",
        "getPackageName",
        "()Ljava/lang/String;",
        "appStatus",
        "I",
        "voiceKeyStatus",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Context;",
        "Ljava/lang/String;",
        "playerStatus",
        "<init>",
        "(Landroid/content/Context;)V",
        "Companion",
        "libTuning_CAR_XIAOPENGRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.loostone.karaoke.voice"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CMD_ENTER_KARAOKE_APP:Ljava/lang/String; = "EnterKaraokeApp"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CMD_ENTER_KARAOKE_PLAYER:Ljava/lang/String; = "EnterKaraokePlayer"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CMD_EXIT_KARAOKE_APP:Ljava/lang/String; = "ExitKaraokeApp"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CMD_EXIT_KARAOKE_PLAYER:Ljava/lang/String; = "ExitKaraokePlayer"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CMD_MIC_CHANGED:Ljava/lang/String; = "MicChanged"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CMD_MIC_EXIST:Ljava/lang/String; = "MicExist"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CMD_MIC_NOT_EXIST:Ljava/lang/String; = "MicNotExist"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CMD_VOICE_KEY_DOWN:Ljava/lang/String; = "VoiceKeyDown"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CMD_VOICE_KEY_UP:Ljava/lang/String; = "VoiceKeyUp"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SkyworthAIControl"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private appStatus:I

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private packageName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private playerStatus:I

.field private voiceKeyStatus:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;->Companion:Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;-><init>(Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;->context:Landroid/content/Context;

    const-string p1, ""

    .line 24
    iput-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;->packageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    .line 1
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO00o;->OooO0O0:Landroid/content/Context;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "instance"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 2
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private final sendBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SkyworthAIControl"

    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.loostone.karaoke.voice"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cmd"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string p1, "value"

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/high16 p1, 0x10000000

    .line 8
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 10
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic sendBroadcast$default(Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final enterKaraokeApp(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;->appStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    iput v1, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;->appStatus:I

    .line 5
    iput-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;->packageName:Ljava/lang/String;

    const-string p1, "EnterKaraokeApp"

    const/4 v0, 0x2

    .line 6
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;->sendBroadcast$default(Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final enterKaraokePlayer()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;->playerStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    iput v1, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;->playerStatus:I

    const-string v0, "EnterKaraokePlayer"

    const/4 v1, 0x2

    .line 5
    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;->sendBroadcast$default(Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final exitKaraokeApp()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;->appStatus:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;->appStatus:I

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;->packageName:Ljava/lang/String;

    const-string v0, "ExitKaraokeApp"

    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;->sendBroadcast$default(Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final exitKaraokePlayer()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;->playerStatus:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;->playerStatus:I

    const-string v0, "ExitKaraokePlayer"

    const/4 v1, 0x2

    .line 5
    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;->sendBroadcast$default(Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final isEnterApp()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;->appStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isEnterPlayer()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;->playerStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final micChanged(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MicChanged"

    invoke-direct {p0, v0, p1}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onMicExist(Z)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string p1, "MicExist"

    .line 1
    invoke-static {p0, p1, v1, v0, v1}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;->sendBroadcast$default(Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "MicNotExist"

    .line 3
    invoke-static {p0, p1, v1, v0, v1}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;->sendBroadcast$default(Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final onVoiceKey(Z)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget p1, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;->voiceKeyStatus:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    return-void

    .line 4
    :cond_0
    iput v2, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;->voiceKeyStatus:I

    const-string p1, "VoiceKeyDown"

    .line 5
    invoke-static {p0, p1, v1, v0, v1}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;->sendBroadcast$default(Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    iget p1, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;->voiceKeyStatus:I

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;->voiceKeyStatus:I

    const-string p1, "VoiceKeyUp"

    .line 11
    invoke-static {p0, p1, v1, v0, v1}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;->sendBroadcast$default(Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method
