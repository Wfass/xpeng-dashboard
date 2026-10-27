.class public final Lcom/loostone/libtuning/channel/BaseChannelMgr$audioManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loostone/libtuning/channel/BaseChannelMgr;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/media/AudioManager;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Landroid/media/AudioManager;",
        "<anonymous>",
        "()Landroid/media/AudioManager;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/loostone/libtuning/channel/BaseChannelMgr;


# direct methods
.method public constructor <init>(Lcom/loostone/libtuning/channel/BaseChannelMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr$audioManager$2;->this$0:Lcom/loostone/libtuning/channel/BaseChannelMgr;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/media/AudioManager;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr$audioManager$2;->this$0:Lcom/loostone/libtuning/channel/BaseChannelMgr;

    invoke-static {v0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->access$getContext$p(Lcom/loostone/libtuning/channel/BaseChannelMgr;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr$audioManager$2;->invoke()Landroid/media/AudioManager;

    move-result-object v0

    return-object v0
.end method
