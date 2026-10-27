.class public final LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO$OooO0OO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooO0OO"
.end annotation


# instance fields
.field public final synthetic OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;


# direct methods
.method public constructor <init>(LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO$OooO0OO;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :goto_0
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO$OooO0OO;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;

    .line 2
    iget-object v0, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;->OooO0o:Landroid/media/AudioTrack;

    if-eqz v0, :cond_3

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO$OooO0OO;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;

    .line 8
    iget-object v1, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;->OooO0o:Landroid/media/AudioTrack;

    if-nez v1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;->OooO0o0:[B

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 10
    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/AudioTrack;->write([BII)I

    goto :goto_0

    :cond_2
    const-string v0, "buffer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_3
    :goto_1
    return-void
.end method
