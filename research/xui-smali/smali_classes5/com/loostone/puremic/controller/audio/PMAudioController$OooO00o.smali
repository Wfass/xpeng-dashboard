.class public Lcom/loostone/puremic/controller/audio/PMAudioController$OooO00o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/loostone/libtuning/inf/extern/IDongleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loostone/puremic/controller/audio/PMAudioController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;


# direct methods
.method public constructor <init>(Lcom/loostone/puremic/controller/audio/PMAudioController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO00o;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDongleAttach()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO00o;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v0}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$000(Lcom/loostone/puremic/controller/audio/PMAudioController;)Lcom/loostone/puremic/controller/audio/listener/IDongleListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "PMAudioController"

    const-string v2, "dongle in"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO00o;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v0}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$000(Lcom/loostone/puremic/controller/audio/PMAudioController;)Lcom/loostone/puremic/controller/audio/listener/IDongleListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/loostone/puremic/controller/audio/listener/IDongleListener;->onDongleChanged(Z)V

    :cond_0
    return-void
.end method

.method public onDongleDetach()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO00o;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v0}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$000(Lcom/loostone/puremic/controller/audio/PMAudioController;)Lcom/loostone/puremic/controller/audio/listener/IDongleListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "PMAudioController"

    const-string v2, "dongle out"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO00o;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v0}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$000(Lcom/loostone/puremic/controller/audio/PMAudioController;)Lcom/loostone/puremic/controller/audio/listener/IDongleListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/loostone/puremic/controller/audio/listener/IDongleListener;->onDongleChanged(Z)V

    :cond_0
    return-void
.end method
