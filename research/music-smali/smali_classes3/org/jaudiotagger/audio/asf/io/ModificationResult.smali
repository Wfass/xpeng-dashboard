.class final Lorg/jaudiotagger/audio/asf/io/ModificationResult;
.super Ljava/lang/Object;
.source "ModificationResult.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final byteDifference:J

.field private final chunkDifference:I

.field private final occuredGUIDs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jaudiotagger/audio/asf/data/GUID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IJLjava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/Set<",
            "Lorg/jaudiotagger/audio/asf/data/GUID;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/asf/io/ModificationResult;->occuredGUIDs:Ljava/util/Set;

    .line 59
    iput p1, p0, Lorg/jaudiotagger/audio/asf/io/ModificationResult;->chunkDifference:I

    .line 60
    iput-wide p2, p0, Lorg/jaudiotagger/audio/asf/io/ModificationResult;->byteDifference:J

    .line 61
    iget-object p1, p0, Lorg/jaudiotagger/audio/asf/io/ModificationResult;->occuredGUIDs:Ljava/util/Set;

    invoke-interface {p1, p4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public varargs constructor <init>(IJ[Lorg/jaudiotagger/audio/asf/data/GUID;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/asf/io/ModificationResult;->occuredGUIDs:Ljava/util/Set;

    .line 45
    iput p1, p0, Lorg/jaudiotagger/audio/asf/io/ModificationResult;->chunkDifference:I

    .line 46
    iput-wide p2, p0, Lorg/jaudiotagger/audio/asf/io/ModificationResult;->byteDifference:J

    .line 47
    iget-object p1, p0, Lorg/jaudiotagger/audio/asf/io/ModificationResult;->occuredGUIDs:Ljava/util/Set;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public getByteDifference()J
    .locals 2

    .line 71
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/io/ModificationResult;->byteDifference:J

    return-wide v0
.end method

.method public getChunkCountDifference()I
    .locals 1

    .line 81
    iget v0, p0, Lorg/jaudiotagger/audio/asf/io/ModificationResult;->chunkDifference:I

    return v0
.end method

.method public getOccuredGUIDs()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/jaudiotagger/audio/asf/data/GUID;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/io/ModificationResult;->occuredGUIDs:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
