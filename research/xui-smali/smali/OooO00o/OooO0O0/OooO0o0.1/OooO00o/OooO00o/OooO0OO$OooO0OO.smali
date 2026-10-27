.class public final LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO$OooO0OO;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;",
        ">;"
    }
.end annotation


# static fields
.field public static final OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO$OooO0OO;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO$OooO0OO;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO$OooO0OO;-><init>()V

    sput-object v0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO$OooO0OO;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO$OooO0OO;

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

    invoke-virtual {v0}, Lcom/loostone/libtuning/PuremicTuning;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v0

    return-object v0
.end method
