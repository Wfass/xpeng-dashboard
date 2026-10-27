.class public final Lcom/loostone/libtuning/channel/byd/data/BiYaDiCarModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0011\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004R\u0016\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0004R\u0016\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0004R\u0016\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0004R\u0016\u0010\u0008\u001a\u00020\u00028\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0004R\u0016\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0004R\u0016\u0010\n\u001a\u00020\u00028\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u0004R\u0016\u0010\u000b\u001a\u00020\u00028\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u0004R\u0016\u0010\u000c\u001a\u00020\u00028\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0004R\u0016\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u0004R\u0016\u0010\u000e\u001a\u00020\u00028\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u0004R\u0016\u0010\u000f\u001a\u00020\u00028\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0004R\u0016\u0010\u0010\u001a\u00020\u00028\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0004\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/loostone/libtuning/channel/byd/data/BiYaDiCarModel;",
        "",
        "",
        "QIN_PRO_03",
        "I",
        "QIN_PRO_02",
        "TANG_01",
        "SONG_01",
        "TANG_03",
        "YUAN_01",
        "SONG_PRO_02",
        "HAN_02",
        "QIN_PRO_01",
        "HAN_01",
        "SONG_PRO_01",
        "TANG_02",
        "SONG_02",
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
.field public static final HAN_01:I = 0xf

.field public static final HAN_02:I = 0x5c

.field public static final INSTANCE:Lcom/loostone/libtuning/channel/byd/data/BiYaDiCarModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final QIN_PRO_01:I = 0x65

.field public static final QIN_PRO_02:I = 0x66

.field public static final QIN_PRO_03:I = 0x75

.field public static final SONG_01:I = 0x47

.field public static final SONG_02:I = 0x48

.field public static final SONG_PRO_01:I = 0x6e

.field public static final SONG_PRO_02:I = 0x6f

.field public static final TANG_01:I = 0x34

.field public static final TANG_02:I = 0x72

.field public static final TANG_03:I = 0x73

.field public static final YUAN_01:I = 0x80


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/loostone/libtuning/channel/byd/data/BiYaDiCarModel;

    invoke-direct {v0}, Lcom/loostone/libtuning/channel/byd/data/BiYaDiCarModel;-><init>()V

    sput-object v0, Lcom/loostone/libtuning/channel/byd/data/BiYaDiCarModel;->INSTANCE:Lcom/loostone/libtuning/channel/byd/data/BiYaDiCarModel;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
