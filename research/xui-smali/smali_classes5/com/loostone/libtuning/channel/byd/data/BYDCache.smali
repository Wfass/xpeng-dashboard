.class public final Lcom/loostone/libtuning/channel/byd/data/BYDCache;
.super LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0O0;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004R#\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR#\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u0008\u001a\u0004\u0008\r\u0010\nR\u0016\u0010\u000f\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0004R\u0016\u0010\u0010\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0004\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/loostone/libtuning/channel/byd/data/BYDCache;",
        "LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0O0;",
        "",
        "REVERB_VOLUME",
        "Ljava/lang/String;",
        "LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;",
        "",
        "reverbVolume$delegate",
        "Lkotlin/Lazy;",
        "getReverbVolume",
        "()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;",
        "reverbVolume",
        "karaokeEffect$delegate",
        "getKaraokeEffect",
        "karaokeEffect",
        "KARAOKE_EFFECT",
        "TAG",
        "<init>",
        "()V",
        "libTuning_CAR_XIAOPENGRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/loostone/libtuning/channel/byd/data/BYDCache;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KARAOKE_EFFECT:Ljava/lang/String; = "karaoke_effect"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final REVERB_VOLUME:Ljava/lang/String; = "reverb_volume"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "BYDCache"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final karaokeEffect$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final reverbVolume$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/loostone/libtuning/channel/byd/data/BYDCache;

    invoke-direct {v0}, Lcom/loostone/libtuning/channel/byd/data/BYDCache;-><init>()V

    sput-object v0, Lcom/loostone/libtuning/channel/byd/data/BYDCache;->INSTANCE:Lcom/loostone/libtuning/channel/byd/data/BYDCache;

    .line 2
    sget-object v0, Lcom/loostone/libtuning/channel/byd/data/BYDCache$reverbVolume$2;->INSTANCE:Lcom/loostone/libtuning/channel/byd/data/BYDCache$reverbVolume$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/loostone/libtuning/channel/byd/data/BYDCache;->reverbVolume$delegate:Lkotlin/Lazy;

    .line 7
    sget-object v0, Lcom/loostone/libtuning/channel/byd/data/BYDCache$karaokeEffect$2;->INSTANCE:Lcom/loostone/libtuning/channel/byd/data/BYDCache$karaokeEffect$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/loostone/libtuning/channel/byd/data/BYDCache;->karaokeEffect$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "BYDCache"

    .line 1
    invoke-direct {p0, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0O0;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getKaraokeEffect()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/loostone/libtuning/channel/byd/data/BYDCache;->karaokeEffect$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    return-object v0
.end method

.method public final getReverbVolume()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/loostone/libtuning/channel/byd/data/BYDCache;->reverbVolume$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    return-object v0
.end method
