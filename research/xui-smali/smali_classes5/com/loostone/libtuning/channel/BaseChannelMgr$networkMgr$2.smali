.class public final Lcom/loostone/libtuning/channel/BaseChannelMgr$networkMgr$2;
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
        "LOooO00o/OooO0O0/OooO0Oo/OooO00o;",
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
        "LOooO00o/OooO0O0/OooO0Oo/OooO00o;",
        "<anonymous>",
        "()LOooO00o/OooO0O0/OooO0Oo/OooO00o;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/loostone/libtuning/channel/BaseChannelMgr$networkMgr$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/loostone/libtuning/channel/BaseChannelMgr$networkMgr$2;

    invoke-direct {v0}, Lcom/loostone/libtuning/channel/BaseChannelMgr$networkMgr$2;-><init>()V

    sput-object v0, Lcom/loostone/libtuning/channel/BaseChannelMgr$networkMgr$2;->INSTANCE:Lcom/loostone/libtuning/channel/BaseChannelMgr$networkMgr$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()LOooO00o/OooO0O0/OooO0Oo/OooO00o;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, LOooO00o/OooO0O0/OooO0Oo/OooO00o;

    .line 3
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO00o;->OooO0O0:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 4
    invoke-direct {v0, v1}, LOooO00o/OooO0O0/OooO0Oo/OooO00o;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 5
    :cond_0
    const-string v0, "instance"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr$networkMgr$2;->invoke()LOooO00o/OooO0O0/OooO0Oo/OooO00o;

    move-result-object v0

    return-object v0
.end method
