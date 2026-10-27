.class public final LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO$OooO0O0;,
        LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO$OooO0OO;
    }
.end annotation


# static fields
.field public static final OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO$OooO0O0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OooO0O0:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public OooO0OO:Z

.field public OooO0Oo:Ljava/lang/Thread;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public OooO0o:Landroid/media/AudioTrack;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public OooO0o0:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO$OooO0O0;

    .line 1
    invoke-direct {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO$OooO0O0;-><init>()V

    .line 2
    sput-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO$OooO0O0;

    .line 24
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO$OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO$OooO00o;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;->OooO0O0:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final OooO00o()V
    .locals 9

    .line 1
    iget-boolean v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;->OooO0OO:Z

    if-nez v0, :cond_4

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;->OooO0OO:Z

    .line 3
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v2, "MyAudioTrack"

    const-string v3, "start Global AudioTrack"

    invoke-virtual {v1, v2, v3}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0xbb80

    const/16 v3, 0xc

    .line 4
    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    .line 20
    move-object v0, v3

    goto :goto_0

    .line 4
    :cond_0
    mul-int/2addr v2, v4

    .line 10
    new-array v2, v2, [B

    iput-object v2, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;->OooO0o0:[B

    .line 13
    sget-object v2, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;

    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->o0000OO0()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v5

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 14
    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->o0000OO0()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/CharSequence;

    const-string v5, "54"

    const/4 v6, 0x0

    invoke-static {v2, v5, v6, v4, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0xb

    .line 18
    :cond_1
    move v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "createAudioTrack, streamType = "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "MyAudioTrack"

    invoke-virtual {v1, v2, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance v0, Landroid/media/AudioTrack;

    const v4, 0xbb80

    const/16 v5, 0xc

    const/4 v6, 0x2

    const/16 v7, 0x4b00

    const/4 v8, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 20
    :goto_0
    iput-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;->OooO0o:Landroid/media/AudioTrack;

    if-eqz v0, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    .line 24
    :cond_2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 25
    :goto_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO$OooO0OO;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO$OooO0OO;-><init>(LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;->OooO0Oo:Ljava/lang/Thread;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_2

    .line 27
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "can not create audio track"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    return-void
.end method

.method public final OooO0O0()V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "MyAudioTrack"

    const-string v2, "stop Global AudioTrack"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;->OooO0Oo:Ljava/lang/Thread;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 4
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;->OooO0Oo:Ljava/lang/Thread;

    .line 6
    iget-object v1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;->OooO0o:Landroid/media/AudioTrack;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    .line 7
    :goto_1
    iget-object v1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;->OooO0o:Landroid/media/AudioTrack;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    .line 8
    :goto_2
    iput-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;->OooO0o:Landroid/media/AudioTrack;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;->OooO0OO:Z

    return-void
.end method
