.class public final Lcom/loostone/libtuning/PuremicTuning$OooO00o;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loostone/libtuning/PuremicTuning;-><init>()V
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


# instance fields
.field public final synthetic OooO00o:Lcom/loostone/libtuning/PuremicTuning;


# direct methods
.method public constructor <init>(Lcom/loostone/libtuning/PuremicTuning;)V
    .locals 0

    iput-object p1, p0, Lcom/loostone/libtuning/PuremicTuning$OooO00o;->OooO00o:Lcom/loostone/libtuning/PuremicTuning;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/PuremicTuning$OooO00o;->OooO00o:Lcom/loostone/libtuning/PuremicTuning;

    invoke-static {v0}, Lcom/loostone/libtuning/PuremicTuning;->access$createChannelMgr(Lcom/loostone/libtuning/PuremicTuning;)Lcom/loostone/libtuning/channel/BaseChannelMgr;

    move-result-object v0

    return-object v0
.end method
