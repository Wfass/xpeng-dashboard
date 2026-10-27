.class public final LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO$OooO0O0;,
        LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO$OooO0OO;
    }
.end annotation


# static fields
.field public static final OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO$OooO0O0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OooO0O0:[Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OooO0OO:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public OooO0Oo:Z

.field public OooO0o:[B

.field public OooO0o0:Ljava/lang/Thread;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public OooO0oO:Landroid/media/AudioRecord;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO$OooO0O0;

    .line 1
    invoke-direct {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO$OooO0O0;-><init>()V

    .line 2
    sput-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO$OooO0O0;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0xbb80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0xac44

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x3e80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;->OooO0O0:[Ljava/lang/Integer;

    .line 25
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO$OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO$OooO00o;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;->OooO0OO:Lkotlin/Lazy;

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
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "MyAudioRecord"

    const-string v2, "stop Global AudioRecord"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;->OooO0o0:Ljava/lang/Thread;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;->OooO0o0:Ljava/lang/Thread;

    .line 5
    iget-object v1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;->OooO0oO:Landroid/media/AudioRecord;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 6
    :goto_1
    iget-object v1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;->OooO0oO:Landroid/media/AudioRecord;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 7
    :goto_2
    iput-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;->OooO0oO:Landroid/media/AudioRecord;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;->OooO0Oo:Z

    return-void
.end method
