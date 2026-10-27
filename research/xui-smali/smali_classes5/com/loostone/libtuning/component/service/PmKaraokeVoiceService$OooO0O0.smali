.class public final Lcom/loostone/libtuning/component/service/PmKaraokeVoiceService$OooO0O0;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loostone/libtuning/component/service/PmKaraokeVoiceService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/loostone/libtuning/channel/BaseChannelMgr;",
        ">;"
    }
.end annotation


# static fields
.field public static final OooO00o:Lcom/loostone/libtuning/component/service/PmKaraokeVoiceService$OooO0O0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/loostone/libtuning/component/service/PmKaraokeVoiceService$OooO0O0;

    invoke-direct {v0}, Lcom/loostone/libtuning/component/service/PmKaraokeVoiceService$OooO0O0;-><init>()V

    sput-object v0, Lcom/loostone/libtuning/component/service/PmKaraokeVoiceService$OooO0O0;->OooO00o:Lcom/loostone/libtuning/component/service/PmKaraokeVoiceService$OooO0O0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/loostone/libtuning/PuremicTuning;->Companion:Lcom/loostone/libtuning/PuremicTuning$Companion;

    invoke-virtual {v0}, Lcom/loostone/libtuning/PuremicTuning$Companion;->getInstance()Lcom/loostone/libtuning/PuremicTuning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loostone/libtuning/PuremicTuning;->getChannelMgr()Lcom/loostone/libtuning/channel/BaseChannelMgr;

    move-result-object v0

    return-object v0
.end method
