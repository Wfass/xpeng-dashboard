.class public Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0O0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0OO;


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
    iput-object p1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0O0;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0O0;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {p1}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$000(Lcom/loostone/puremic/controller/audio/PMAudioController;)Lcom/loostone/puremic/controller/audio/listener/IDongleListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "PMAudioController"

    const-string v2, "mic on"

    invoke-virtual {p1, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0O0;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {p1}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$000(Lcom/loostone/puremic/controller/audio/PMAudioController;)Lcom/loostone/puremic/controller/audio/listener/IDongleListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/loostone/puremic/controller/audio/listener/IDongleListener;->onMicPowerStatusChanged(Z)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0O0;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {p1}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$000(Lcom/loostone/puremic/controller/audio/PMAudioController;)Lcom/loostone/puremic/controller/audio/listener/IDongleListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v0, "PMAudioController"

    const-string v1, "mic off"

    invoke-virtual {p1, v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0O0;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {p1}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$000(Lcom/loostone/puremic/controller/audio/PMAudioController;)Lcom/loostone/puremic/controller/audio/listener/IDongleListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/loostone/puremic/controller/audio/listener/IDongleListener;->onMicPowerStatusChanged(Z)V

    :cond_1
    :goto_0
    return-void
.end method
