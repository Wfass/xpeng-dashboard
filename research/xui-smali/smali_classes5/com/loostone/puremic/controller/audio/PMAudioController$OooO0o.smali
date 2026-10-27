.class public Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0o;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0o;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v0}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$1200(Lcom/loostone/puremic/controller/audio/PMAudioController;)Landroid/media/AudioTrack;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0o;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v0}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$1300(Lcom/loostone/puremic/controller/audio/PMAudioController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0o;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v0}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$1500(Lcom/loostone/puremic/controller/audio/PMAudioController;)LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    move-result-object v0

    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0o;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v1}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$1400(Lcom/loostone/puremic/controller/audio/PMAudioController;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0o;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v2}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$1400(Lcom/loostone/puremic/controller/audio/PMAudioController;)[B

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO00o([BII)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0o;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v1}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$1400(Lcom/loostone/puremic/controller/audio/PMAudioController;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0o;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v2}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$1600(Lcom/loostone/puremic/controller/audio/PMAudioController;)I

    move-result v2

    const/16 v4, 0x64

    invoke-static {v1, v0, v2, v4}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$1700([BIII)V

    .line 6
    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0o;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v1}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$1200(Lcom/loostone/puremic/controller/audio/PMAudioController;)Landroid/media/AudioTrack;

    move-result-object v1

    iget-object v2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0o;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v2}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$1400(Lcom/loostone/puremic/controller/audio/PMAudioController;)[B

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/AudioTrack;->write([BII)I

    .line 7
    iget-object v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0o;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$602(Lcom/loostone/puremic/controller/audio/PMAudioController;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method
