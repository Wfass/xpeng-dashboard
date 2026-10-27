.class public Laff;
.super Lafe;
.source "ObjectWriterCreatorASM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laff$a;
    }
.end annotation


# static fields
.field static final A:Ljava/lang/String;

.field static final B:Ljava/lang/String;

.field static final C:Ljava/lang/String;

.field static final D:Ljava/lang/String;

.field static final E:Ljava/lang/String;

.field static final F:Ljava/lang/String;

.field static final G:Ljava/lang/String;

.field public static final e:Laff;

.field protected static final f:Ljava/util/concurrent/atomic/AtomicLong;

.field static final h:[Ljava/lang/String;

.field static final i:Ljava/lang/String;

.field static final j:Ljava/lang/String;

.field static final k:Ljava/lang/String;

.field static final l:Ljava/lang/String;

.field static final m:Ljava/lang/String;

.field static final n:Ljava/lang/String;

.field static final o:Ljava/lang/String;

.field static final p:Ljava/lang/String;

.field static final q:Ljava/lang/String;

.field static final r:Ljava/lang/String;

.field static final s:Ljava/lang/String;

.field static final t:Ljava/lang/String;

.field static final u:Ljava/lang/String;

.field static final v:Ljava/lang/String;

.field static final w:Ljava/lang/String;

.field static final x:Ljava/lang/String;

.field static final y:Ljava/lang/String;

.field static final z:Ljava/lang/String;


# instance fields
.field protected final g:Laba;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 34
    new-instance v0, Laff;

    .line 35
    invoke-static {}, Laba;->b()Laba;

    move-result-object v1

    invoke-direct {v0, v1}, Laff;-><init>(Ljava/lang/ClassLoader;)V

    sput-object v0, Laff;->e:Laff;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Laff;->f:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x1

    .line 41
    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lrv;->I:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Laff;->h:[Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lrv;->Q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Ljava/lang/Object;)V"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laff;->i:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lrv;->Q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laff;->j:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lrv;->Q:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")V"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laff;->k:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lrv;->Q:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laff;->l:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lrv;->Q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "J)V"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laff;->m:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lrv;->Q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "D)V"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laff;->n:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lrv;->Q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "F)V"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laff;->o:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lrv;->Q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ZLjava/util/Date;)V"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laff;->p:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lrv;->Q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Z)V"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laff;->q:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lrv;->Q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[Z)V"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laff;->r:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lrv;->Q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[F)V"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laff;->s:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lrv;->Q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[D)V"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laff;->t:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lrv;->Q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "I)V"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laff;->u:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lrv;->Q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[S)V"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laff;->v:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lrv;->Q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[B)V"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laff;->w:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lrv;->Q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[C)V"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laff;->x:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lrv;->Q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Ljava/lang/Enum;)V"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laff;->y:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lrv;->Q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Ljava/util/List;)V"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laff;->z:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lrv;->Q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Ljava/lang/Object;)Z"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laff;->A:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lrv;->Q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Ljava/lang/Class;)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lrv;->S:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laff;->B:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lrv;->Q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Ljava/lang/reflect/Type;)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lrv;->S:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laff;->C:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lrv;->Q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")Z"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laff;->D:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lrv;->Q:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laff;->E:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lrv;->L:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Ljava/lang/Object;)Ljava/lang/String;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laff;->F:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lrv;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laff;->G:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 121
    invoke-direct {p0}, Lafe;-><init>()V

    .line 122
    new-instance v0, Laba;

    invoke-direct {v0}, Laba;-><init>()V

    iput-object v0, p0, Laff;->g:Laba;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    .line 125
    invoke-direct {p0}, Lafe;-><init>()V

    .line 126
    instance-of v0, p1, Laba;

    if-eqz v0, :cond_0

    .line 127
    check-cast p1, Laba;

    goto :goto_0

    .line 128
    :cond_0
    new-instance v0, Laba;

    invoke-direct {v0, p1}, Laba;-><init>(Ljava/lang/ClassLoader;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Laff;->g:Laba;

    return-void
.end method

.method private a(Ljava/lang/Class;Lahq;Lqe;Ljava/util/List;J)Laez;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Lahq;",
            "Lqe;",
            "Ljava/util/List<",
            "Labq;",
            ">;J)",
            "Laez;"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v0, p3

    move-object/from16 v13, p4

    .line 429
    new-instance v14, Lry;

    const/4 v1, 0x0

    invoke-direct {v14, v1}, Lry;-><init>(Ljava/util/function/Function;)V

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OWG_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Laff;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v12, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 435
    const-class v2, Laff;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    const/4 v15, 0x0

    if-eqz v2, :cond_3

    .line 437
    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    .line 438
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    .line 439
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    .line 440
    new-array v5, v5, [C

    .line 441
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v15, v6, v5, v15}, Ljava/lang/String;->getChars(II[CI)V

    const/16 v2, 0x2e

    .line 442
    aput-char v2, v5, v3

    .line 443
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v15, v6, v5, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 444
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([C)V

    const/16 v4, 0x2f

    .line 446
    aput-char v4, v5, v3

    move v6, v15

    :goto_1
    if-ge v6, v3, :cond_2

    .line 448
    aget-char v7, v5, v6

    if-ne v7, v2, :cond_1

    .line 449
    aput-char v4, v5, v6

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 452
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([C)V

    move-object v9, v1

    move-object v10, v2

    goto :goto_2

    :cond_3
    move-object v9, v1

    move-object v10, v9

    .line 459
    :goto_2
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 497
    sget-object v1, Lrv;->b:Ljava/lang/String;

    :goto_3
    move-object v7, v1

    goto :goto_4

    .line 494
    :pswitch_0
    sget-object v1, Lrv;->n:Ljava/lang/String;

    goto :goto_3

    .line 491
    :pswitch_1
    sget-object v1, Lrv;->m:Ljava/lang/String;

    goto :goto_3

    .line 488
    :pswitch_2
    sget-object v1, Lrv;->l:Ljava/lang/String;

    goto :goto_3

    .line 485
    :pswitch_3
    sget-object v1, Lrv;->k:Ljava/lang/String;

    goto :goto_3

    .line 482
    :pswitch_4
    sget-object v1, Lrv;->j:Ljava/lang/String;

    goto :goto_3

    .line 479
    :pswitch_5
    sget-object v1, Lrv;->i:Ljava/lang/String;

    goto :goto_3

    .line 476
    :pswitch_6
    sget-object v1, Lrv;->h:Ljava/lang/String;

    goto :goto_3

    .line 473
    :pswitch_7
    sget-object v1, Lrv;->g:Ljava/lang/String;

    goto :goto_3

    .line 470
    :pswitch_8
    sget-object v1, Lrv;->f:Ljava/lang/String;

    goto :goto_3

    .line 467
    :pswitch_9
    sget-object v1, Lrv;->e:Ljava/lang/String;

    goto :goto_3

    .line 464
    :pswitch_a
    sget-object v1, Lrv;->d:Ljava/lang/String;

    goto :goto_3

    .line 461
    :pswitch_b
    sget-object v1, Lrv;->c:Ljava/lang/String;

    goto :goto_3

    :goto_4
    const/16 v2, 0x34

    const/16 v3, 0x31

    .line 501
    sget-object v6, Laff;->h:[Ljava/lang/String;

    move-object v1, v14

    move-object v4, v10

    move-object v5, v7

    invoke-virtual/range {v1 .. v6}, Lry;->a(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 509
    invoke-direct {v11, v13, v14, v7}, Laff;->a(Ljava/util/List;Lry;Ljava/lang/String;)V

    .line 512
    invoke-direct {v11, v13, v14, v10, v7}, Laff;->a(Ljava/util/List;Lry;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object v5, v14

    move-object v6, v10

    move-wide/from16 v7, p5

    .line 523
    invoke-direct/range {v1 .. v8}, Laff;->b(Lahq;Ljava/lang/Class;Ljava/util/List;Lry;Ljava/lang/String;J)V

    .line 525
    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->BeanToArray:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long v1, p5, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    const-string v3, "write"

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p1

    move-wide/from16 v5, p5

    move-object/from16 v7, p4

    move-object v8, v14

    move-object v15, v9

    move-object v9, v10

    .line 526
    invoke-direct/range {v1 .. v9}, Laff;->a(Lahq;Ljava/lang/String;Ljava/lang/Class;JLjava/util/List;Lry;Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    move-object v15, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object v5, v14

    move-object v6, v10

    move-wide/from16 v7, p5

    .line 528
    invoke-direct/range {v1 .. v8}, Laff;->a(Lahq;Ljava/lang/Class;Ljava/util/List;Lry;Ljava/lang/String;J)V

    :goto_5
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-wide/from16 v4, p5

    move-object/from16 v6, p4

    move-object v7, v14

    move-object v8, v10

    move-object/from16 v16, v10

    move-wide/from16 v9, p5

    .line 531
    invoke-direct/range {v1 .. v10}, Laff;->a(Lahq;Ljava/lang/Class;JLjava/util/List;Lry;Ljava/lang/String;J)V

    const-string v3, "writeArrayMapping"

    move-object/from16 v4, p1

    move-wide/from16 v5, p5

    move-object/from16 v7, p4

    move-object v8, v14

    move-object/from16 v9, v16

    .line 533
    invoke-direct/range {v1 .. v9}, Laff;->a(Lahq;Ljava/lang/String;Ljava/lang/Class;JLjava/util/List;Lry;Ljava/lang/String;)V

    .line 535
    invoke-virtual {v14}, Lry;->a()[B

    move-result-object v1

    .line 537
    iget-object v2, v11, Laff;->g:Laba;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v15, v1, v4, v3}, Laba;->a(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x5

    .line 540
    :try_start_0
    new-array v3, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Class;

    aput-object v5, v3, v4

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x3

    aput-object v4, v3, v7

    const-class v4, Ljava/util/List;

    const/4 v8, 0x4

    aput-object v4, v3, v8

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 541
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    iget-object v3, v0, Lqe;->a:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, v0, Lqe;->b:Ljava/lang/String;

    aput-object v3, v2, v6

    .line 545
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v13, v2, v8

    .line 541
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laez;

    .line 548
    iget-object v2, v0, Lqe;->x:[Ljava/lang/Class;

    if-eqz v2, :cond_5

    .line 549
    invoke-static {v0, v1}, Laff;->a(Lqe;Laez;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object v1

    :catch_0
    move-exception v0

    .line 553
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create objectWriter error, objectType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static a(I)Ljava/lang/String;
    .locals 4

    packed-switch p0, :pswitch_data_0

    .line 113
    invoke-static {p0}, Labe;->a(I)I

    move-result v0

    const/16 v1, 0xb

    add-int/2addr v0, v1

    .line 114
    new-array v0, v0, [C

    const/4 v2, 0x0

    const-string v3, "fieldWriter"

    .line 115
    invoke-virtual {v3, v2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 116
    array-length v1, v0

    invoke-static {p0, v1, v0}, Labe;->a(II[C)V

    .line 117
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :pswitch_0
    const-string p0, "fieldWriter15"

    return-object p0

    :pswitch_1
    const-string p0, "fieldWriter14"

    return-object p0

    :pswitch_2
    const-string p0, "fieldWriter13"

    return-object p0

    :pswitch_3
    const-string p0, "fieldWriter12"

    return-object p0

    :pswitch_4
    const-string p0, "fieldWriter11"

    return-object p0

    :pswitch_5
    const-string p0, "fieldWriter10"

    return-object p0

    :pswitch_6
    const-string p0, "fieldWriter9"

    return-object p0

    :pswitch_7
    const-string p0, "fieldWriter8"

    return-object p0

    :pswitch_8
    const-string p0, "fieldWriter7"

    return-object p0

    :pswitch_9
    const-string p0, "fieldWriter6"

    return-object p0

    :pswitch_a
    const-string p0, "fieldWriter5"

    return-object p0

    :pswitch_b
    const-string p0, "fieldWriter4"

    return-object p0

    :pswitch_c
    const-string p0, "fieldWriter3"

    return-object p0

    :pswitch_d
    const-string p0, "fieldWriter2"

    return-object p0

    :pswitch_e
    const-string p0, "fieldWriter1"

    return-object p0

    :pswitch_f
    const-string p0, "fieldWriter0"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(JLse;IIILsc;)V
    .locals 6

    .line 715
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->WriteClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/16 p0, 0x19

    .line 716
    invoke-virtual {p2, p0, p3}, Lse;->b(II)V

    const/16 p1, 0xc6

    .line 717
    invoke-virtual {p2, p1, p6}, Lse;->a(ILsc;)V

    .line 719
    invoke-virtual {p2, p0, p3}, Lse;->b(II)V

    const/16 v1, 0xb6

    const/4 v5, 0x0

    const-string v2, "java/lang/Object"

    const-string v3, "getClass"

    const-string v4, "()Ljava/lang/Class;"

    move-object v0, p2

    .line 720
    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 721
    invoke-virtual {p2, p0, p4}, Lse;->b(II)V

    const/16 p1, 0xa5

    .line 722
    invoke-virtual {p2, p1, p6}, Lse;->a(ILsc;)V

    const/4 p1, 0x1

    .line 724
    invoke-virtual {p2, p0, p1}, Lse;->b(II)V

    .line 725
    invoke-virtual {p2, p0, p3}, Lse;->b(II)V

    .line 726
    invoke-virtual {p2, p0, p4}, Lse;->b(II)V

    const/16 p0, 0x16

    .line 727
    invoke-virtual {p2, p0, p5}, Lse;->b(II)V

    .line 728
    sget-object v2, Lrv;->J:Ljava/lang/String;

    const-string v3, "isWriteTypeInfo"

    const-string v4, "(Ljava/lang/Object;Ljava/lang/reflect/Type;J)Z"

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 p0, 0x99

    .line 729
    invoke-virtual {p2, p0, p6}, Lse;->a(ILsc;)V

    :cond_0
    return-void
.end method

.method private a(Labq;ILaff$a;IZ)V
    .locals 24

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    .line 920
    iget-object v4, v0, Labq;->c:Ljava/lang/Class;

    .line 921
    iget-object v5, v0, Labq;->a:Ljava/lang/String;

    .line 923
    iget-object v6, v2, Laff$a;->d:Ljava/lang/String;

    .line 924
    iget-object v13, v2, Laff$a;->e:Lse;

    .line 925
    invoke-virtual {v2, v4}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v14

    const-string v7, "REF_PATH"

    .line 926
    invoke-virtual {v2, v7}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v15

    .line 928
    new-instance v12, Lsc;

    invoke-direct {v12}, Lsc;-><init>()V

    new-instance v11, Lsc;

    invoke-direct {v11}, Lsc;-><init>()V

    move-object/from16 v10, p0

    .line 930
    invoke-virtual {v10, v2, v0, v3, v1}, Laff;->a(Laff$a;Labq;II)V

    const/16 v9, 0x59

    .line 931
    invoke-virtual {v13, v9}, Lse;->a(I)V

    const/16 v8, 0x3a

    .line 932
    invoke-virtual {v13, v8, v14}, Lse;->b(II)V

    const/16 v7, 0xc7

    .line 934
    invoke-virtual {v13, v7, v11}, Lse;->a(ILsc;)V

    const/4 v7, 0x1

    move-object/from16 v16, v12

    const/16 v12, 0x19

    .line 935
    invoke-virtual {v13, v12, v7}, Lse;->b(II)V

    .line 936
    sget-object v17, Lrv;->J:Ljava/lang/String;

    const/16 v18, 0xb6

    const-string v19, "writeNull"

    const-string v20, "()V"

    const/16 v21, 0x0

    move-object v7, v13

    move/from16 v8, v18

    move-object/from16 v9, v17

    move-object/from16 v10, v19

    move-object/from16 v22, v11

    move-object/from16 v11, v20

    move v0, v12

    move-object/from16 v3, v16

    move/from16 v12, v21

    invoke-virtual/range {v7 .. v12}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v12, 0xa7

    .line 937
    invoke-virtual {v13, v12, v3}, Lse;->a(ILsc;)V

    move-object/from16 v7, v22

    .line 939
    invoke-virtual {v13, v7}, Lse;->a(Lsc;)V

    .line 941
    invoke-static {v4}, Lahq;->d(Ljava/lang/Class;)Z

    move-result v4

    const/4 v11, 0x1

    xor-int/2addr v4, v11

    if-eqz v4, :cond_0

    .line 943
    new-instance v8, Lsc;

    invoke-direct {v8}, Lsc;-><init>()V

    new-instance v7, Lsc;

    invoke-direct {v7}, Lsc;-><init>()V

    .line 945
    sget-object v9, Lcom/alibaba/fastjson2/ab$b;->ReferenceDetection:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v10, v9, Lcom/alibaba/fastjson2/ab$b;->mask:J

    invoke-virtual {v2, v10, v11, v8}, Laff$a;->a(JLsc;)V

    .line 947
    invoke-virtual {v13, v0, v1}, Lse;->b(II)V

    .line 948
    invoke-virtual {v13, v0, v14}, Lse;->b(II)V

    const/16 v1, 0xa6

    .line 949
    invoke-virtual {v13, v1, v7}, Lse;->a(ILsc;)V

    const/4 v1, 0x1

    .line 951
    invoke-virtual {v13, v0, v1}, Lse;->b(II)V

    const-string v9, ".."

    .line 952
    invoke-virtual {v13, v9}, Lse;->a(Ljava/lang/String;)V

    const/16 v9, 0xb6

    .line 953
    sget-object v10, Lrv;->J:Ljava/lang/String;

    const/16 v18, 0x0

    const-string v11, "writeReference"

    const-string v19, "(Ljava/lang/String;)V"

    move-object v1, v7

    move-object v7, v13

    move-object/from16 v23, v8

    move v8, v9

    move-object v9, v10

    move-object v10, v11

    const/4 v0, 0x1

    move-object/from16 v11, v19

    move v0, v12

    move/from16 v12, v18

    invoke-virtual/range {v7 .. v12}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 955
    invoke-virtual {v13, v0, v3}, Lse;->a(ILsc;)V

    .line 957
    invoke-virtual {v13, v1}, Lse;->a(Lsc;)V

    const/4 v1, 0x1

    const/16 v7, 0x19

    .line 959
    invoke-virtual {v13, v7, v1}, Lse;->b(II)V

    const/4 v1, 0x0

    .line 960
    invoke-virtual {v13, v7, v1}, Lse;->b(II)V

    .line 961
    invoke-static/range {p4 .. p4}, Laff;->a(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lrv;->L:Ljava/lang/String;

    const/16 v12, 0xb4

    invoke-virtual {v13, v12, v6, v8, v9}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    invoke-virtual {v13, v7, v14}, Lse;->b(II)V

    const/16 v8, 0xb6

    .line 963
    sget-object v9, Lrv;->J:Ljava/lang/String;

    sget-object v11, Laff;->F:Ljava/lang/String;

    const/16 v17, 0x0

    const-string v10, "setPath"

    move-object v7, v13

    move/from16 v12, v17

    invoke-virtual/range {v7 .. v12}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v7, 0x59

    .line 964
    invoke-virtual {v13, v7}, Lse;->a(I)V

    const/16 v7, 0x3a

    .line 965
    invoke-virtual {v13, v7, v15}, Lse;->b(II)V

    const/16 v7, 0xc6

    move-object/from16 v12, v23

    .line 966
    invoke-virtual {v13, v7, v12}, Lse;->a(ILsc;)V

    const/4 v7, 0x1

    const/16 v8, 0x19

    .line 968
    invoke-virtual {v13, v8, v7}, Lse;->b(II)V

    .line 969
    invoke-virtual {v13, v8, v15}, Lse;->b(II)V

    const/16 v8, 0xb6

    .line 970
    sget-object v9, Lrv;->J:Ljava/lang/String;

    const/4 v15, 0x0

    const-string v10, "writeReference"

    const-string v11, "(Ljava/lang/String;)V"

    move-object v7, v13

    move-object v1, v12

    move v12, v15

    invoke-virtual/range {v7 .. v12}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v7, 0x1

    const/16 v8, 0x19

    .line 972
    invoke-virtual {v13, v8, v7}, Lse;->b(II)V

    .line 973
    invoke-virtual {v13, v8, v14}, Lse;->b(II)V

    const/16 v8, 0xb6

    .line 974
    sget-object v9, Lrv;->J:Ljava/lang/String;

    const/4 v12, 0x0

    const-string v10, "popPath"

    const-string v11, "(Ljava/lang/Object;)V"

    move-object v7, v13

    invoke-virtual/range {v7 .. v12}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 975
    invoke-virtual {v13, v0, v3}, Lse;->a(ILsc;)V

    .line 977
    invoke-virtual {v13, v1}, Lse;->a(Lsc;)V

    const/4 v0, 0x0

    const/16 v1, 0x19

    goto :goto_0

    :cond_0
    move v1, v0

    const/4 v0, 0x0

    .line 981
    :goto_0
    invoke-virtual {v13, v1, v0}, Lse;->b(II)V

    .line 982
    invoke-static/range {p4 .. p4}, Laff;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lrv;->L:Ljava/lang/String;

    const/16 v8, 0xb4

    invoke-virtual {v13, v8, v6, v0, v7}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 983
    invoke-virtual {v13, v1, v0}, Lse;->b(II)V

    .line 984
    invoke-virtual {v13, v1, v14}, Lse;->b(II)V

    const/16 v8, 0xb6

    const/4 v12, 0x0

    const-string v9, "java/lang/Object"

    const-string v10, "getClass"

    const-string v11, "()Ljava/lang/Class;"

    move-object v7, v13

    .line 985
    invoke-virtual/range {v7 .. v12}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 986
    sget-object v9, Lrv;->K:Ljava/lang/String;

    sget-object v11, Laff;->B:Ljava/lang/String;

    const-string v10, "getObjectWriter"

    invoke-virtual/range {v7 .. v12}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const/16 v1, 0x19

    .line 993
    invoke-virtual {v13, v1, v0}, Lse;->b(II)V

    .line 994
    invoke-virtual {v13, v1, v14}, Lse;->b(II)V

    .line 995
    invoke-virtual {v13, v5}, Lse;->a(Ljava/lang/String;)V

    move-object/from16 v0, p1

    .line 996
    iget-object v5, v0, Labq;->b:Ljava/lang/reflect/Type;

    move-object v6, v3

    move/from16 v3, p4

    invoke-static {v2, v3, v5}, Laff$a;->a(Laff$a;ILjava/lang/reflect/Type;)V

    .line 997
    iget-wide v2, v0, Labq;->d:J

    invoke-virtual {v13, v2, v3}, Lse;->a(J)V

    const/16 v8, 0xb9

    .line 998
    sget-object v9, Lrv;->I:Ljava/lang/String;

    if-eqz p5, :cond_1

    const-string v0, "writeJSONB"

    goto :goto_1

    :cond_1
    const-string v0, "writeArrayMappingJSONB"

    :goto_1
    move-object v10, v0

    .line 1001
    sget-object v11, Laff;->l:Ljava/lang/String;

    const/4 v12, 0x1

    move-object v7, v13

    .line 998
    invoke-virtual/range {v7 .. v12}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    .line 1007
    invoke-virtual {v13, v1, v0}, Lse;->b(II)V

    .line 1008
    invoke-virtual {v13, v1, v14}, Lse;->b(II)V

    const/16 v8, 0xb6

    .line 1009
    sget-object v9, Lrv;->J:Ljava/lang/String;

    const/4 v12, 0x0

    const-string v10, "popPath"

    const-string v11, "(Ljava/lang/Object;)V"

    move-object v7, v13

    invoke-virtual/range {v7 .. v12}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1012
    :cond_2
    invoke-virtual {v13, v6}, Lse;->a(Lsc;)V

    return-void
.end method

.method private a(Labq;Laff$a;II)V
    .locals 8

    .line 1355
    iget-object v0, p2, Laff$a;->b:Ljava/lang/Class;

    .line 1356
    iget-object v1, p1, Labq;->c:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java/lang/Object"

    goto :goto_0

    .line 1358
    :cond_0
    invoke-static {v0}, Lrv;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v7, v0

    .line 1361
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    if-eq v1, v0, :cond_1

    const-class v0, Ljava/lang/Long;

    if-eq v1, v0, :cond_1

    const-class v0, [J

    if-ne v1, v0, :cond_2

    :cond_1
    iget-object v0, p2, Laff$a;->a:Lahq;

    iget-wide v3, v0, Lahq;->g:J

    const-wide/16 v5, 0x4

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    .line 1363
    iget-object v0, p2, Laff$a;->a:Lahq;

    const-class v3, Ljava/lang/Long;

    invoke-virtual {v0, v3}, Lahq;->b(Ljava/lang/Class;)Laem;

    move-result-object v0

    sget-object v3, Lagm;->a:Lagm;

    if-eq v0, v3, :cond_2

    const/4 v0, 0x1

    move v2, v0

    .line 1366
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v1, v0, :cond_7

    const-class v0, [Z

    if-eq v1, v0, :cond_7

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v1, v0, :cond_7

    const-class v0, [C

    if-eq v1, v0, :cond_7

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v1, v0, :cond_7

    const-class v0, [B

    if-eq v1, v0, :cond_7

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v1, v0, :cond_7

    const-class v0, [S

    if-eq v1, v0, :cond_7

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v1, v0, :cond_7

    const-class v0, [I

    if-eq v1, v0, :cond_7

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v1, v0, :cond_7

    const-class v0, [J

    if-ne v1, v0, :cond_3

    if-eqz v2, :cond_7

    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v1, v0, :cond_7

    const-class v0, [F

    if-eq v1, v0, :cond_7

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v1, v0, :cond_7

    const-class v0, [D

    if-eq v1, v0, :cond_7

    const-class v0, Ljava/lang/String;

    if-eq v1, v0, :cond_7

    const-class v0, Ljava/lang/Integer;

    if-eq v1, v0, :cond_7

    const-class v0, Ljava/lang/Long;

    if-eq v1, v0, :cond_7

    const-class v0, Ljava/math/BigDecimal;

    if-eq v1, v0, :cond_7

    .line 1386
    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 1389
    :cond_4
    const-class v0, Ljava/util/Date;

    if-ne v1, v0, :cond_5

    .line 1390
    invoke-direct {p0, p2, p1, p3, p4}, Laff;->c(Laff$a;Labq;II)V

    goto :goto_2

    .line 1391
    :cond_5
    instance-of v0, p1, Ladr;

    if-eqz v0, :cond_6

    .line 1392
    invoke-direct {p0, p2, p3, p4, p1}, Laff;->a(Laff$a;IILabq;)V

    goto :goto_2

    :cond_6
    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p1

    .line 1394
    invoke-direct/range {v2 .. v7}, Laff;->a(Laff$a;IILabq;Ljava/lang/String;)V

    goto :goto_2

    .line 1388
    :cond_7
    :goto_1
    invoke-direct {p0, p2, p1, p3, p4}, Laff;->d(Laff$a;Labq;II)V

    :goto_2
    return-void
.end method

.method private a(Laff$a;IILabq;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    .line 1543
    iget-object v5, v4, Labq;->b:Ljava/lang/reflect/Type;

    .line 1544
    iget-object v6, v4, Labq;->c:Ljava/lang/Class;

    .line 1545
    invoke-virtual {v1, v6}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v7

    .line 1546
    iget-object v14, v1, Laff$a;->e:Lse;

    .line 1551
    instance-of v8, v5, Ljava/lang/reflect/ParameterizedType;

    const/4 v15, 0x0

    const/4 v13, 0x1

    if-eqz v8, :cond_2

    .line 1552
    move-object v8, v5

    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    .line 1553
    invoke-interface {v8}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v8

    .line 1555
    array-length v9, v8

    if-ne v9, v13, :cond_2

    .line 1556
    aget-object v8, v8, v15

    .line 1557
    invoke-static {v8}, Labo;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v9

    .line 1558
    const-class v10, Ljava/lang/String;

    if-eq v8, v10, :cond_1

    const-class v10, Ljava/lang/Integer;

    if-eq v8, v10, :cond_1

    const-class v10, Ljava/lang/Long;

    if-ne v8, v10, :cond_0

    goto :goto_0

    :cond_0
    move v8, v15

    goto :goto_1

    :cond_1
    :goto_0
    move v8, v13

    :goto_1
    move/from16 v16, v8

    move-object v12, v9

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    move-object v12, v8

    move/from16 v16, v15

    .line 1562
    :goto_2
    new-instance v11, Lsc;

    invoke-direct {v11}, Lsc;-><init>()V

    new-instance v10, Lsc;

    invoke-direct {v10}, Lsc;-><init>()V

    .line 1564
    invoke-virtual {v0, v1, v4, v3, v2}, Laff;->a(Laff$a;Labq;II)V

    const/16 v9, 0x59

    .line 1565
    invoke-virtual {v14, v9}, Lse;->a(I)V

    const/16 v8, 0x3a

    .line 1566
    invoke-virtual {v14, v8, v7}, Lse;->b(II)V

    const/16 v15, 0xc7

    .line 1567
    invoke-virtual {v14, v15, v10}, Lse;->a(ILsc;)V

    const/16 v15, 0x19

    .line 1569
    invoke-virtual {v14, v15, v13}, Lse;->b(II)V

    const/16 v18, 0xb6

    .line 1570
    sget-object v19, Lrv;->J:Ljava/lang/String;

    const/16 v20, 0x0

    const-string v21, "writeNull"

    const-string v22, "()V"

    move v15, v8

    move-object v8, v14

    move/from16 v9, v18

    move-object v15, v10

    move-object/from16 v10, v19

    move-object/from16 v24, v11

    move-object/from16 v11, v21

    move-object/from16 v19, v12

    move-object/from16 v12, v22

    move-object/from16 v21, v5

    move v5, v13

    move/from16 v13, v20

    invoke-virtual/range {v8 .. v13}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v13, 0xa7

    move-object/from16 v12, v24

    .line 1571
    invoke-virtual {v14, v13, v12}, Lse;->a(ILsc;)V

    .line 1573
    invoke-virtual {v14, v15}, Lse;->a(Lsc;)V

    if-eqz v16, :cond_3

    .line 1576
    invoke-virtual {v0, v1, v4, v3, v2}, Laff;->a(Laff$a;Labq;II)V

    const/16 v2, 0x3a

    .line 1577
    invoke-virtual {v14, v2, v7}, Lse;->b(II)V

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object v3, v14

    move-object v4, v6

    move-object/from16 v5, v19

    move v6, v7

    .line 1578
    invoke-static/range {v1 .. v6}, Laff;->a(Laff$a;ILse;Ljava/lang/Class;Ljava/lang/Class;I)V

    move-object v0, v12

    goto/16 :goto_3

    :cond_3
    const-string v2, "LIST_SIZE"

    .line 1580
    invoke-virtual {v1, v2}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v2

    const-string v6, "J"

    .line 1581
    invoke-virtual {v1, v6}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v6

    .line 1583
    const-class v8, Ljava/lang/Class;

    invoke-virtual {v1, v8}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v15

    const-string v8, "PREVIOUS_CLASS"

    .line 1584
    invoke-virtual {v1, v8}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v11

    const-string v8, "ITEM_OBJECT_WRITER"

    .line 1585
    invoke-virtual {v1, v8}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v10

    .line 1587
    invoke-virtual {v14, v5}, Lse;->a(I)V

    const/16 v9, 0x59

    .line 1588
    invoke-virtual {v14, v9}, Lse;->a(I)V

    const/16 v8, 0x3a

    .line 1589
    invoke-virtual {v14, v8, v11}, Lse;->b(II)V

    .line 1590
    invoke-virtual {v14, v8, v10}, Lse;->b(II)V

    const/16 v8, 0x19

    .line 1593
    invoke-virtual {v14, v8, v7}, Lse;->b(II)V

    const/16 v16, 0xb9

    const/16 v20, 0x1

    const-string v22, "java/util/List"

    const-string v23, "size"

    const-string v24, "()I"

    move-object v8, v14

    move/from16 v9, v16

    move/from16 v25, v10

    move-object/from16 v10, v22

    move/from16 v26, v11

    move-object/from16 v11, v23

    move-object/from16 v27, v12

    move-object/from16 v12, v24

    move/from16 v13, v20

    .line 1594
    invoke-virtual/range {v8 .. v13}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v13, 0x36

    .line 1595
    invoke-virtual {v14, v13, v2}, Lse;->b(II)V

    const/16 v8, 0x19

    .line 1598
    invoke-virtual {v14, v8, v5}, Lse;->b(II)V

    const/16 v9, 0xb6

    .line 1599
    sget-object v10, Lrv;->J:Ljava/lang/String;

    const/16 v16, 0x0

    const-string v11, "startArray"

    const-string v12, "()V"

    move-object v8, v14

    move v5, v13

    move/from16 v13, v16

    invoke-virtual/range {v8 .. v13}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1601
    new-instance v13, Lsc;

    invoke-direct {v13}, Lsc;-><init>()V

    new-instance v12, Lsc;

    invoke-direct {v12}, Lsc;-><init>()V

    new-instance v11, Lsc;

    invoke-direct {v11}, Lsc;-><init>()V

    new-instance v10, Lsc;

    invoke-direct {v10}, Lsc;-><init>()V

    const/4 v8, 0x3

    .line 1602
    invoke-virtual {v14, v8}, Lse;->a(I)V

    .line 1603
    invoke-virtual {v14, v5, v6}, Lse;->b(II)V

    .line 1605
    invoke-virtual {v14, v13}, Lse;->a(Lsc;)V

    const/16 v5, 0x15

    .line 1606
    invoke-virtual {v14, v5, v6}, Lse;->b(II)V

    .line 1607
    invoke-virtual {v14, v5, v2}, Lse;->b(II)V

    const/16 v2, 0xa2

    .line 1608
    invoke-virtual {v14, v2, v12}, Lse;->a(ILsc;)V

    .line 1610
    invoke-virtual {v14, v5, v6}, Lse;->b(II)V

    const/16 v2, 0x99

    .line 1611
    invoke-virtual {v14, v2, v10}, Lse;->a(ILsc;)V

    const/4 v2, 0x1

    const/16 v8, 0x19

    .line 1613
    invoke-virtual {v14, v8, v2}, Lse;->b(II)V

    .line 1614
    sget-object v2, Lrv;->J:Ljava/lang/String;

    const-string v22, "writeComma"

    const-string v23, "()V"

    move-object v8, v14

    move-object v5, v10

    move-object v10, v2

    move-object v2, v11

    move-object/from16 v11, v22

    move-object/from16 v28, v12

    move-object/from16 v12, v23

    move-object v0, v13

    move/from16 v13, v16

    invoke-virtual/range {v8 .. v13}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1615
    invoke-virtual {v14, v5}, Lse;->a(Lsc;)V

    move-object/from16 v8, v19

    .line 1617
    invoke-virtual {v1, v8}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v5

    .line 1618
    new-instance v13, Lsc;

    invoke-direct {v13}, Lsc;-><init>()V

    new-instance v12, Lsc;

    invoke-direct {v12}, Lsc;-><init>()V

    const/16 v8, 0x19

    .line 1620
    invoke-virtual {v14, v8, v7}, Lse;->b(II)V

    const/16 v7, 0x15

    .line 1621
    invoke-virtual {v14, v7, v6}, Lse;->b(II)V

    const/16 v9, 0xb9

    const/4 v7, 0x1

    const-string v10, "java/util/List"

    const-string v11, "get"

    const-string v16, "(I)Ljava/lang/Object;"

    move-object v8, v14

    move-object/from16 v29, v12

    move-object/from16 v12, v16

    move-object/from16 v16, v0

    move-object v0, v13

    move v13, v7

    .line 1622
    invoke-virtual/range {v8 .. v13}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v7, 0x59

    .line 1623
    invoke-virtual {v14, v7}, Lse;->a(I)V

    const/16 v8, 0x3a

    .line 1624
    invoke-virtual {v14, v8, v5}, Lse;->b(II)V

    const/16 v8, 0xc7

    .line 1627
    invoke-virtual {v14, v8, v0}, Lse;->a(ILsc;)V

    const/4 v8, 0x1

    const/16 v9, 0x19

    .line 1628
    invoke-virtual {v14, v9, v8}, Lse;->b(II)V

    const/16 v9, 0xb6

    .line 1629
    sget-object v10, Lrv;->J:Ljava/lang/String;

    const/4 v13, 0x0

    const-string v11, "writeNull"

    const-string v12, "()V"

    move-object v8, v14

    invoke-virtual/range {v8 .. v13}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v13, 0xa7

    .line 1630
    invoke-virtual {v14, v13, v2}, Lse;->a(ILsc;)V

    .line 1632
    invoke-virtual {v14, v0}, Lse;->a(Lsc;)V

    const/16 v0, 0x19

    .line 1634
    invoke-virtual {v14, v0, v5}, Lse;->b(II)V

    const/4 v0, 0x0

    const-string v10, "java/lang/Object"

    const-string v11, "getClass"

    const-string v12, "()Ljava/lang/Class;"

    move v13, v0

    .line 1635
    invoke-virtual/range {v8 .. v13}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1636
    invoke-virtual {v14, v7}, Lse;->a(I)V

    const/16 v0, 0x3a

    .line 1637
    invoke-virtual {v14, v0, v15}, Lse;->b(II)V

    move/from16 v0, v26

    const/16 v7, 0x19

    .line 1640
    invoke-virtual {v14, v7, v0}, Lse;->b(II)V

    const/16 v8, 0xa5

    move-object/from16 v13, v29

    .line 1641
    invoke-virtual {v14, v8, v13}, Lse;->a(ILsc;)V

    const/4 v8, 0x0

    .line 1644
    invoke-virtual {v14, v7, v8}, Lse;->b(II)V

    const/16 v8, 0xb4

    .line 1645
    iget-object v9, v1, Laff$a;->d:Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Laff;->a(I)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lrv;->L:Ljava/lang/String;

    invoke-virtual {v14, v8, v9, v10, v11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    .line 1646
    invoke-virtual {v14, v7, v8}, Lse;->b(II)V

    .line 1647
    invoke-virtual {v14, v7, v15}, Lse;->b(II)V

    const/16 v9, 0xb6

    .line 1649
    sget-object v10, Lrv;->K:Ljava/lang/String;

    sget-object v12, Laff;->C:Ljava/lang/String;

    const/4 v7, 0x0

    const-string v11, "getItemWriter"

    move-object v8, v14

    move-object/from16 v17, v2

    move-object v2, v13

    move v13, v7

    invoke-virtual/range {v8 .. v13}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move/from16 v7, v25

    const/16 v8, 0x3a

    .line 1654
    invoke-virtual {v14, v8, v7}, Lse;->b(II)V

    const/16 v9, 0x19

    .line 1656
    invoke-virtual {v14, v9, v15}, Lse;->b(II)V

    .line 1657
    invoke-virtual {v14, v8, v0}, Lse;->b(II)V

    .line 1659
    invoke-virtual {v14, v2}, Lse;->a(Lsc;)V

    .line 1660
    invoke-virtual {v14, v9, v7}, Lse;->b(II)V

    const/4 v0, 0x1

    .line 1661
    invoke-virtual {v14, v9, v0}, Lse;->b(II)V

    .line 1662
    invoke-virtual {v14, v9, v5}, Lse;->b(II)V

    const/16 v0, 0x15

    .line 1663
    invoke-virtual {v14, v0, v6}, Lse;->b(II)V

    const/16 v9, 0xb8

    const/4 v13, 0x0

    const-string v10, "java/lang/Integer"

    const-string v11, "valueOf"

    const-string v12, "(I)Ljava/lang/Integer;"

    move-object v8, v14

    .line 1664
    invoke-virtual/range {v8 .. v13}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, v21

    .line 1665
    invoke-static {v1, v3, v0}, Laff$a;->a(Laff$a;ILjava/lang/reflect/Type;)V

    .line 1666
    iget-wide v0, v4, Labq;->d:J

    invoke-virtual {v14, v0, v1}, Lse;->a(J)V

    const/16 v9, 0xb9

    .line 1667
    sget-object v10, Lrv;->I:Ljava/lang/String;

    sget-object v12, Laff;->l:Ljava/lang/String;

    const/4 v13, 0x1

    const-string v11, "write"

    invoke-virtual/range {v8 .. v13}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, v17

    .line 1669
    invoke-virtual {v14, v0}, Lse;->a(Lsc;)V

    const/4 v0, 0x1

    .line 1670
    invoke-virtual {v14, v6, v0}, Lse;->c(II)V

    move-object/from16 v1, v16

    const/16 v2, 0xa7

    .line 1671
    invoke-virtual {v14, v2, v1}, Lse;->a(ILsc;)V

    move-object/from16 v1, v28

    .line 1673
    invoke-virtual {v14, v1}, Lse;->a(Lsc;)V

    const/16 v1, 0x19

    .line 1675
    invoke-virtual {v14, v1, v0}, Lse;->b(II)V

    const/16 v9, 0xb6

    .line 1676
    sget-object v10, Lrv;->J:Ljava/lang/String;

    const/4 v13, 0x0

    const-string v11, "endArray"

    const-string v12, "()V"

    invoke-virtual/range {v8 .. v13}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, v27

    .line 1679
    :goto_3
    invoke-virtual {v14, v0}, Lse;->a(Lsc;)V

    return-void
.end method

.method private a(Laff$a;IILabq;Ljava/lang/String;)V
    .locals 23

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    .line 1405
    iget-object v4, v3, Labq;->c:Ljava/lang/Class;

    .line 1406
    iget-object v5, v3, Labq;->a:Ljava/lang/String;

    .line 1408
    iget-object v5, v0, Laff$a;->e:Lse;

    .line 1409
    invoke-virtual {v0, v4}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v12

    const-string v6, "REF_PATH"

    .line 1410
    invoke-virtual {v0, v6}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v13

    .line 1412
    new-instance v14, Lsc;

    invoke-direct {v14}, Lsc;-><init>()V

    new-instance v15, Lsc;

    invoke-direct {v15}, Lsc;-><init>()V

    move-object/from16 v11, p0

    .line 1414
    invoke-virtual {v11, v0, v3, v2, v1}, Laff;->a(Laff$a;Labq;II)V

    const/16 v10, 0x59

    .line 1415
    invoke-virtual {v5, v10}, Lse;->a(I)V

    const/16 v9, 0x3a

    .line 1416
    invoke-virtual {v5, v9, v12}, Lse;->b(II)V

    const/16 v6, 0xc7

    .line 1418
    invoke-virtual {v5, v6, v15}, Lse;->a(ILsc;)V

    const/4 v8, 0x1

    const/16 v7, 0x19

    .line 1419
    invoke-virtual {v5, v7, v8}, Lse;->b(II)V

    .line 1420
    sget-object v16, Lrv;->J:Ljava/lang/String;

    const/16 v17, 0xb6

    const-string v18, "writeNull"

    const-string v19, "()V"

    const/16 v20, 0x0

    move-object v6, v5

    move/from16 v7, v17

    move-object/from16 v8, v16

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    move/from16 v11, v20

    invoke-virtual/range {v6 .. v11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v11, 0xa7

    .line 1421
    invoke-virtual {v5, v11, v14}, Lse;->a(ILsc;)V

    .line 1423
    invoke-virtual {v5, v15}, Lse;->a(Lsc;)V

    .line 1425
    const-class v6, Ljava/lang/Double;

    const/16 v10, 0xb4

    if-eq v4, v6, :cond_3

    const-class v6, Ljava/lang/Float;

    if-eq v4, v6, :cond_3

    const-class v6, Ljava/math/BigDecimal;

    if-ne v4, v6, :cond_0

    goto/16 :goto_1

    .line 1465
    :cond_0
    invoke-static {v4}, Lahq;->d(Ljava/lang/Class;)Z

    move-result v6

    const/4 v9, 0x1

    xor-int/lit8 v16, v6, 0x1

    if-eqz v16, :cond_1

    .line 1467
    new-instance v8, Lsc;

    invoke-direct {v8}, Lsc;-><init>()V

    new-instance v7, Lsc;

    invoke-direct {v7}, Lsc;-><init>()V

    const/16 v6, 0x19

    .line 1469
    invoke-virtual {v5, v6, v9}, Lse;->b(II)V

    const/16 v17, 0xb6

    .line 1470
    sget-object v18, Lrv;->J:Ljava/lang/String;

    const/16 v19, 0x0

    const-string v20, "isRefDetect"

    const-string v21, "()Z"

    move v15, v6

    move-object v6, v5

    move-object/from16 v22, v7

    move/from16 v7, v17

    move-object v15, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    move v2, v11

    move/from16 v11, v19

    invoke-virtual/range {v6 .. v11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v6, 0x99

    .line 1471
    invoke-virtual {v5, v6, v15}, Lse;->a(ILsc;)V

    const/16 v6, 0x19

    .line 1473
    invoke-virtual {v5, v6, v1}, Lse;->b(II)V

    .line 1474
    invoke-virtual {v5, v6, v12}, Lse;->b(II)V

    const/16 v1, 0xa6

    move-object/from16 v11, v22

    .line 1475
    invoke-virtual {v5, v1, v11}, Lse;->a(ILsc;)V

    const/4 v1, 0x1

    .line 1477
    invoke-virtual {v5, v6, v1}, Lse;->b(II)V

    const-string v6, ".."

    .line 1478
    invoke-virtual {v5, v6}, Lse;->a(Ljava/lang/String;)V

    const/16 v7, 0xb6

    .line 1479
    sget-object v8, Lrv;->J:Ljava/lang/String;

    const/16 v18, 0x0

    const-string v9, "writeReference"

    const-string v10, "(Ljava/lang/String;)V"

    move-object v6, v5

    move-object v1, v11

    move/from16 v11, v18

    invoke-virtual/range {v6 .. v11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1481
    invoke-virtual {v5, v2, v14}, Lse;->a(ILsc;)V

    .line 1483
    invoke-virtual {v5, v1}, Lse;->a(Lsc;)V

    const/4 v1, 0x1

    const/16 v6, 0x19

    .line 1485
    invoke-virtual {v5, v6, v1}, Lse;->b(II)V

    const/4 v1, 0x0

    .line 1486
    invoke-virtual {v5, v6, v1}, Lse;->b(II)V

    .line 1487
    iget-object v1, v0, Laff$a;->d:Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Laff;->a(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lrv;->L:Ljava/lang/String;

    const/16 v11, 0xb4

    invoke-virtual {v5, v11, v1, v7, v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    invoke-virtual {v5, v6, v12}, Lse;->b(II)V

    const/16 v7, 0xb6

    .line 1489
    sget-object v8, Lrv;->J:Ljava/lang/String;

    sget-object v10, Laff;->F:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v9, "setPath"

    move-object v6, v5

    move v11, v1

    invoke-virtual/range {v6 .. v11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0x59

    .line 1490
    invoke-virtual {v5, v1}, Lse;->a(I)V

    const/16 v1, 0x3a

    .line 1491
    invoke-virtual {v5, v1, v13}, Lse;->b(II)V

    const/16 v1, 0xc6

    .line 1492
    invoke-virtual {v5, v1, v15}, Lse;->a(ILsc;)V

    const/4 v1, 0x1

    const/16 v6, 0x19

    .line 1494
    invoke-virtual {v5, v6, v1}, Lse;->b(II)V

    .line 1495
    invoke-virtual {v5, v6, v13}, Lse;->b(II)V

    .line 1496
    sget-object v8, Lrv;->J:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v9, "writeReference"

    const-string v10, "(Ljava/lang/String;)V"

    move-object v6, v5

    invoke-virtual/range {v6 .. v11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    const/16 v6, 0x19

    .line 1498
    invoke-virtual {v5, v6, v1}, Lse;->b(II)V

    .line 1499
    invoke-virtual {v5, v6, v12}, Lse;->b(II)V

    .line 1500
    sget-object v8, Lrv;->J:Ljava/lang/String;

    const-string v9, "popPath"

    const-string v10, "(Ljava/lang/Object;)V"

    move-object v6, v5

    invoke-virtual/range {v6 .. v11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1501
    invoke-virtual {v5, v2, v14}, Lse;->a(ILsc;)V

    .line 1503
    invoke-virtual {v5, v15}, Lse;->a(Lsc;)V

    .line 1506
    :cond_1
    const-class v1, [Ljava/lang/String;

    if-ne v4, v1, :cond_2

    const/4 v1, 0x1

    const/16 v2, 0x19

    .line 1507
    invoke-virtual {v5, v2, v1}, Lse;->b(II)V

    .line 1508
    invoke-virtual {v5, v2, v12}, Lse;->b(II)V

    const/16 v7, 0xb6

    .line 1509
    sget-object v8, Lrv;->J:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v9, "writeString"

    const-string v10, "([Ljava/lang/String;)V"

    move-object v6, v5

    invoke-virtual/range {v6 .. v11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/16 v2, 0x19

    .line 1512
    invoke-virtual {v5, v2, v1}, Lse;->b(II)V

    .line 1513
    iget-object v1, v0, Laff$a;->d:Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Laff;->a(I)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lrv;->L:Ljava/lang/String;

    const/16 v13, 0xb4

    invoke-virtual {v5, v13, v1, v4, v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 1514
    invoke-virtual {v5, v2, v1}, Lse;->b(II)V

    .line 1515
    invoke-virtual {v5, v2, v12}, Lse;->b(II)V

    const/16 v7, 0xb6

    const/4 v11, 0x0

    const-string v8, "java/lang/Object"

    const-string v9, "getClass"

    const-string v10, "()Ljava/lang/Class;"

    move-object v6, v5

    .line 1516
    invoke-virtual/range {v6 .. v11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1517
    sget-object v8, Lrv;->K:Ljava/lang/String;

    sget-object v10, Laff;->B:Ljava/lang/String;

    const-string v9, "getObjectWriter"

    invoke-virtual/range {v6 .. v11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    const/16 v2, 0x19

    .line 1524
    invoke-virtual {v5, v2, v1}, Lse;->b(II)V

    .line 1525
    invoke-virtual {v5, v2, v12}, Lse;->b(II)V

    .line 1526
    iget-object v1, v3, Labq;->a:Ljava/lang/String;

    invoke-virtual {v5, v1}, Lse;->a(Ljava/lang/String;)V

    .line 1527
    iget-object v1, v3, Labq;->b:Ljava/lang/reflect/Type;

    move/from16 v2, p3

    invoke-static {v0, v2, v1}, Laff$a;->a(Laff$a;ILjava/lang/reflect/Type;)V

    .line 1528
    iget-wide v0, v3, Labq;->d:J

    invoke-virtual {v5, v0, v1}, Lse;->a(J)V

    const/16 v7, 0xb9

    .line 1529
    sget-object v8, Lrv;->I:Ljava/lang/String;

    sget-object v10, Laff;->l:Ljava/lang/String;

    const/4 v11, 0x1

    const-string v9, "write"

    invoke-virtual/range {v6 .. v11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    if-eqz v16, :cond_9

    const/4 v0, 0x1

    const/16 v1, 0x19

    .line 1533
    invoke-virtual {v5, v1, v0}, Lse;->b(II)V

    .line 1534
    invoke-virtual {v5, v1, v12}, Lse;->b(II)V

    const/16 v7, 0xb6

    .line 1535
    sget-object v8, Lrv;->J:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v9, "popPath"

    const-string v10, "(Ljava/lang/Object;)V"

    move-object v6, v5

    invoke-virtual/range {v6 .. v11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_3
    :goto_1
    move v13, v10

    const/4 v1, 0x1

    const/16 v6, 0x19

    .line 1426
    invoke-virtual {v5, v6, v1}, Lse;->b(II)V

    .line 1427
    iget-object v1, v3, Labq;->g:Ljava/text/DecimalFormat;

    if-eqz v1, :cond_6

    .line 1428
    invoke-virtual {v5, v6, v12}, Lse;->b(II)V

    .line 1429
    const-class v1, Ljava/lang/Double;

    const-string v12, "Ljava/text/DecimalFormat;"

    const-string v15, "decimalFormat"

    if-ne v4, v1, :cond_4

    const/16 v7, 0xb6

    const/4 v11, 0x0

    const-string v8, "java/lang/Double"

    const-string v9, "doubleValue"

    const-string v10, "()D"

    move-object v6, v5

    .line 1430
    invoke-virtual/range {v6 .. v11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    const/16 v3, 0x19

    .line 1431
    invoke-virtual {v5, v3, v1}, Lse;->b(II)V

    .line 1432
    iget-object v0, v0, Laff$a;->d:Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Laff;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lrv;->L:Ljava/lang/String;

    invoke-virtual {v5, v13, v0, v1, v2}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    sget-object v0, Lrv;->K:Ljava/lang/String;

    invoke-virtual {v5, v13, v0, v15, v12}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    sget-object v8, Lrv;->J:Ljava/lang/String;

    const-string v9, "writeDouble"

    const-string v10, "(DLjava/text/DecimalFormat;)V"

    invoke-virtual/range {v6 .. v11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 1435
    :cond_4
    const-class v1, Ljava/lang/Float;

    if-ne v4, v1, :cond_5

    const/16 v7, 0xb6

    const/4 v11, 0x0

    const-string v8, "java/lang/Float"

    const-string v9, "floatValue"

    const-string v10, "()F"

    move-object v6, v5

    .line 1436
    invoke-virtual/range {v6 .. v11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    const/16 v3, 0x19

    .line 1437
    invoke-virtual {v5, v3, v1}, Lse;->b(II)V

    .line 1438
    iget-object v0, v0, Laff$a;->d:Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Laff;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lrv;->L:Ljava/lang/String;

    invoke-virtual {v5, v13, v0, v1, v2}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    sget-object v0, Lrv;->K:Ljava/lang/String;

    invoke-virtual {v5, v13, v0, v15, v12}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    sget-object v8, Lrv;->J:Ljava/lang/String;

    const-string v9, "writeFloat"

    const-string v10, "(FLjava/text/DecimalFormat;)V"

    invoke-virtual/range {v6 .. v11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 1442
    :cond_5
    iget-wide v3, v3, Labq;->d:J

    .line 1443
    invoke-virtual {v5, v3, v4}, Lse;->a(J)V

    const/4 v1, 0x0

    const/16 v3, 0x19

    .line 1444
    invoke-virtual {v5, v3, v1}, Lse;->b(II)V

    .line 1445
    iget-object v0, v0, Laff$a;->d:Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Laff;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lrv;->L:Ljava/lang/String;

    invoke-virtual {v5, v13, v0, v1, v2}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    sget-object v0, Lrv;->K:Ljava/lang/String;

    invoke-virtual {v5, v13, v0, v15, v12}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0xb6

    .line 1447
    sget-object v8, Lrv;->J:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v9, "writeDecimal"

    const-string v10, "(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V"

    move-object v6, v5

    invoke-virtual/range {v6 .. v11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_6
    move v0, v6

    .line 1450
    invoke-virtual {v5, v0, v12}, Lse;->b(II)V

    .line 1451
    const-class v0, Ljava/lang/Double;

    if-ne v4, v0, :cond_7

    const/16 v7, 0xb6

    const/4 v11, 0x0

    const-string v8, "java/lang/Double"

    const-string v9, "doubleValue"

    const-string v10, "()D"

    move-object v6, v5

    .line 1452
    invoke-virtual/range {v6 .. v11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1453
    sget-object v8, Lrv;->J:Ljava/lang/String;

    const-string v9, "writeDouble"

    const-string v10, "(D)V"

    invoke-virtual/range {v6 .. v11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 1454
    :cond_7
    const-class v0, Ljava/lang/Float;

    if-ne v4, v0, :cond_8

    const/16 v7, 0xb6

    const/4 v11, 0x0

    const-string v8, "java/lang/Float"

    const-string v9, "floatValue"

    const-string v10, "()F"

    move-object v6, v5

    .line 1455
    invoke-virtual/range {v6 .. v11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1456
    sget-object v8, Lrv;->J:Ljava/lang/String;

    const-string v9, "writeFloat"

    const-string v10, "(F)V"

    invoke-virtual/range {v6 .. v11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 1458
    :cond_8
    iget-wide v0, v3, Labq;->d:J

    .line 1459
    invoke-virtual {v5, v0, v1}, Lse;->a(J)V

    const/4 v0, 0x1

    .line 1460
    invoke-virtual {v5, v0}, Lse;->a(I)V

    const/16 v7, 0xb6

    .line 1461
    sget-object v8, Lrv;->J:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v9, "writeDecimal"

    const-string v10, "(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V"

    move-object v6, v5

    invoke-virtual/range {v6 .. v11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1539
    :cond_9
    :goto_2
    invoke-virtual {v5, v14}, Lse;->a(Lsc;)V

    return-void
.end method

.method private static a(Laff$a;ILse;Ljava/lang/Class;Ljava/lang/Class;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laff$a;",
            "I",
            "Lse;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class;",
            "I)V"
        }
    .end annotation

    .line 2658
    iget-boolean v0, p0, Laff$a;->g:Z

    const/4 v1, 0x1

    const/16 v2, 0x19

    if-eqz v0, :cond_0

    .line 2659
    invoke-virtual {p2, v2, v1}, Lse;->b(II)V

    .line 2660
    invoke-virtual {p2, v2, p5}, Lse;->b(II)V

    .line 2661
    invoke-static {p0, p1, p3}, Laff$a;->a(Laff$a;ILjava/lang/Class;)V

    const/16 v4, 0xb6

    .line 2662
    sget-object v5, Lrv;->J:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v6, "checkAndWriteTypeName"

    const-string v7, "(Ljava/lang/Object;Ljava/lang/Class;)V"

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2671
    :cond_0
    const-class p0, Ljava/lang/Integer;

    if-ne p4, p0, :cond_1

    .line 2672
    invoke-virtual {p2, v2, v1}, Lse;->b(II)V

    .line 2673
    invoke-virtual {p2, v2, p5}, Lse;->b(II)V

    const/16 v4, 0xb6

    .line 2674
    sget-object v5, Lrv;->J:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v6, "writeListInt32"

    const-string v7, "(Ljava/util/List;)V"

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 2678
    :cond_1
    const-class p0, Ljava/lang/Long;

    if-ne p4, p0, :cond_2

    .line 2679
    invoke-virtual {p2, v2, v1}, Lse;->b(II)V

    .line 2680
    invoke-virtual {p2, v2, p5}, Lse;->b(II)V

    const/16 v4, 0xb6

    .line 2681
    sget-object v5, Lrv;->J:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v6, "writeListInt64"

    const-string v7, "(Ljava/util/List;)V"

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 2685
    :cond_2
    const-class p0, Ljava/lang/String;

    if-ne p4, p0, :cond_3

    .line 2686
    invoke-virtual {p2, v2, v1}, Lse;->b(II)V

    .line 2687
    invoke-virtual {p2, v2, p5}, Lse;->b(II)V

    const/16 v4, 0xb6

    .line 2688
    sget-object v5, Lrv;->J:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v6, "writeString"

    const-string v7, "(Ljava/util/List;)V"

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 2692
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/c;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "TOOD "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(Laff$a;Labq;I)V
    .locals 19

    move-object/from16 v0, p1

    .line 2865
    iget-object v7, v0, Laff$a;->e:Lse;

    .line 2866
    iget-object v8, v0, Laff$a;->d:Ljava/lang/String;

    .line 2868
    new-instance v9, Lsc;

    invoke-direct {v9}, Lsc;-><init>()V

    new-instance v10, Lsc;

    invoke-direct {v10}, Lsc;-><init>()V

    .line 2870
    iget-boolean v1, v0, Laff$a;->g:Z

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v1, :cond_2

    move-object/from16 v1, p2

    .line 2871
    iget-object v1, v1, Labq;->a:Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 2872
    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    const/16 v4, 0xf

    if-gt v2, v4, :cond_2

    .line 2876
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x8

    .line 2879
    new-array v6, v5, [B

    const/16 v15, 0x9

    const-string v11, "(JJ)V"

    const/16 v16, 0x3a

    const/4 v14, 0x7

    const/16 v17, 0x22

    const-string v18, "(J)V"

    packed-switch v2, :pswitch_data_0

    .line 3026
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    aput-byte v17, v6, v13

    .line 3019
    invoke-static {v1, v13, v6, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3021
    sget-object v2, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v3, Labf;->b:J

    const-wide/16 v14, 0x7

    add-long/2addr v3, v14

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "writeName15Raw"

    goto/16 :goto_0

    :pswitch_1
    aput-byte v17, v6, v13

    .line 3002
    invoke-static {v1, v13, v6, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3004
    new-array v2, v5, [B

    .line 3005
    aget-byte v4, v1, v14

    aput-byte v4, v2, v13

    .line 3006
    aget-byte v4, v1, v5

    aput-byte v4, v2, v12

    .line 3007
    aget-byte v4, v1, v15

    aput-byte v4, v2, v3

    const/16 v3, 0xa

    .line 3008
    aget-byte v3, v1, v3

    const/4 v4, 0x3

    aput-byte v3, v2, v4

    const/16 v3, 0xb

    .line 3009
    aget-byte v3, v1, v3

    const/4 v4, 0x4

    aput-byte v3, v2, v4

    const/16 v3, 0xc

    .line 3010
    aget-byte v3, v1, v3

    const/4 v4, 0x5

    aput-byte v3, v2, v4

    const/16 v3, 0xd

    .line 3011
    aget-byte v1, v1, v3

    const/4 v3, 0x6

    aput-byte v1, v2, v3

    aput-byte v17, v2, v14

    .line 3013
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v3, Labf;->b:J

    invoke-virtual {v1, v2, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "writeName14Raw"

    goto/16 :goto_0

    :pswitch_2
    aput-byte v17, v6, v13

    .line 2985
    invoke-static {v1, v13, v6, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2987
    new-array v2, v5, [B

    .line 2988
    aget-byte v4, v1, v14

    aput-byte v4, v2, v13

    .line 2989
    aget-byte v4, v1, v5

    aput-byte v4, v2, v12

    .line 2990
    aget-byte v4, v1, v15

    aput-byte v4, v2, v3

    const/16 v3, 0xa

    .line 2991
    aget-byte v3, v1, v3

    const/4 v4, 0x3

    aput-byte v3, v2, v4

    const/16 v3, 0xb

    .line 2992
    aget-byte v3, v1, v3

    const/4 v4, 0x4

    aput-byte v3, v2, v4

    const/16 v3, 0xc

    .line 2993
    aget-byte v1, v1, v3

    const/4 v3, 0x5

    aput-byte v1, v2, v3

    const/4 v1, 0x6

    aput-byte v17, v2, v1

    aput-byte v16, v2, v14

    .line 2996
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v3, Labf;->b:J

    invoke-virtual {v1, v2, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "writeName13Raw"

    goto/16 :goto_0

    :pswitch_3
    aput-byte v17, v6, v13

    .line 2969
    invoke-static {v1, v13, v6, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2971
    new-array v2, v5, [B

    .line 2972
    aget-byte v4, v1, v14

    aput-byte v4, v2, v13

    .line 2973
    aget-byte v4, v1, v5

    aput-byte v4, v2, v12

    .line 2974
    aget-byte v4, v1, v15

    aput-byte v4, v2, v3

    const/16 v3, 0xa

    .line 2975
    aget-byte v3, v1, v3

    const/4 v4, 0x3

    aput-byte v3, v2, v4

    const/16 v3, 0xb

    .line 2976
    aget-byte v1, v1, v3

    const/4 v3, 0x4

    aput-byte v1, v2, v3

    const/4 v1, 0x5

    aput-byte v17, v2, v1

    const/4 v1, 0x6

    aput-byte v16, v2, v1

    .line 2979
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v3, Labf;->b:J

    invoke-virtual {v1, v2, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "writeName12Raw"

    goto :goto_0

    :pswitch_4
    aput-byte v17, v6, v13

    .line 2954
    invoke-static {v1, v13, v6, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2956
    new-array v2, v5, [B

    .line 2957
    aget-byte v4, v1, v14

    aput-byte v4, v2, v13

    .line 2958
    aget-byte v4, v1, v5

    aput-byte v4, v2, v12

    .line 2959
    aget-byte v4, v1, v15

    aput-byte v4, v2, v3

    const/16 v3, 0xa

    .line 2960
    aget-byte v1, v1, v3

    const/4 v3, 0x3

    aput-byte v1, v2, v3

    const/4 v1, 0x4

    aput-byte v17, v2, v1

    const/4 v1, 0x5

    aput-byte v16, v2, v1

    .line 2963
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v3, Labf;->b:J

    invoke-virtual {v1, v2, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "writeName11Raw"

    goto :goto_0

    :pswitch_5
    aput-byte v17, v6, v13

    .line 2940
    invoke-static {v1, v13, v6, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2942
    new-array v2, v5, [B

    .line 2943
    aget-byte v4, v1, v14

    aput-byte v4, v2, v13

    .line 2944
    aget-byte v4, v1, v5

    aput-byte v4, v2, v12

    .line 2945
    aget-byte v1, v1, v15

    aput-byte v1, v2, v3

    const/4 v1, 0x3

    aput-byte v17, v2, v1

    const/4 v4, 0x4

    aput-byte v16, v2, v4

    .line 2948
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v3, Labf;->b:J

    invoke-virtual {v1, v2, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "writeName10Raw"

    :goto_0
    move-object v14, v1

    move-object v5, v11

    goto/16 :goto_3

    :pswitch_6
    const/4 v4, 0x4

    aput-byte v17, v6, v13

    .line 2927
    invoke-static {v1, v13, v6, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2929
    new-array v2, v4, [B

    .line 2930
    aget-byte v4, v1, v14

    aput-byte v4, v2, v13

    .line 2931
    aget-byte v1, v1, v5

    aput-byte v1, v2, v12

    aput-byte v17, v2, v3

    const/4 v1, 0x3

    aput-byte v16, v2, v1

    .line 2934
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v3, Labf;->b:J

    invoke-virtual {v1, v2, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v1, "(JI)V"

    const-string v2, "writeName9Raw"

    move-object v5, v1

    move-object v14, v2

    goto :goto_3

    :pswitch_7
    const-string v2, "writeName8Raw"

    move-object v6, v1

    move-object v14, v2

    goto :goto_2

    :pswitch_8
    aput-byte v17, v6, v13

    .line 2917
    invoke-static {v1, v13, v6, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v1, "writeName7Raw"

    goto :goto_1

    :pswitch_9
    aput-byte v17, v6, v13

    const/4 v2, 0x6

    .line 2911
    invoke-static {v1, v13, v6, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v17, v6, v14

    const-string v1, "writeName6Raw"

    goto :goto_1

    :pswitch_a
    const/4 v2, 0x6

    aput-byte v17, v6, v13

    const/4 v3, 0x5

    .line 2904
    invoke-static {v1, v13, v6, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v17, v6, v2

    aput-byte v16, v6, v14

    const-string v1, "writeName5Raw"

    goto :goto_1

    :pswitch_b
    const/4 v2, 0x6

    const/4 v3, 0x5

    aput-byte v17, v6, v13

    const/4 v5, 0x4

    .line 2897
    invoke-static {v1, v13, v6, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v17, v6, v3

    aput-byte v16, v6, v2

    const-string v1, "writeName4Raw"

    goto :goto_1

    :pswitch_c
    const/4 v3, 0x5

    const/4 v5, 0x4

    aput-byte v17, v6, v13

    const/4 v2, 0x3

    .line 2890
    invoke-static {v1, v13, v6, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v17, v6, v5

    aput-byte v16, v6, v3

    const-string v1, "writeName3Raw"

    goto :goto_1

    :pswitch_d
    const/4 v2, 0x3

    const/4 v5, 0x4

    aput-byte v17, v6, v13

    .line 2883
    invoke-static {v1, v13, v6, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v17, v6, v2

    aput-byte v16, v6, v5

    const-string v1, "writeName2Raw"

    :goto_1
    move-object v14, v1

    :goto_2
    move-object/from16 v5, v18

    .line 3028
    :goto_3
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    invoke-virtual {v1, v6, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    const/16 v3, 0x15

    const-string v6, "UTF8_DIRECT"

    .line 3030
    invoke-virtual {v0, v6}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v7, v3, v6}, Lse;->b(II)V

    const/16 v3, 0x99

    .line 3031
    invoke-virtual {v7, v3, v9}, Lse;->a(ILsc;)V

    const/16 v3, 0x19

    .line 3033
    invoke-virtual {v7, v3, v12}, Lse;->b(II)V

    .line 3034
    invoke-virtual {v7, v1, v2}, Lse;->a(J)V

    const-string v1, "(JI)V"

    .line 3035
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3036
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v7, v1}, Lse;->b(I)V

    goto :goto_4

    .line 3037
    :cond_0
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3038
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v7, v1, v2}, Lse;->a(J)V

    :cond_1
    :goto_4
    const/16 v2, 0xb6

    .line 3040
    sget-object v3, Lrv;->J:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v4, v14

    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0xa7

    .line 3048
    invoke-virtual {v7, v1, v10}, Lse;->a(ILsc;)V

    move v6, v12

    goto :goto_5

    :cond_2
    move v6, v13

    :goto_5
    if-eqz v6, :cond_3

    .line 3053
    invoke-virtual {v7, v9}, Lse;->a(Lsc;)V

    :cond_3
    const/16 v1, 0x19

    .line 3056
    invoke-virtual {v7, v1, v13}, Lse;->b(II)V

    const/16 v2, 0xb4

    .line 3057
    invoke-static/range {p3 .. p3}, Laff;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lrv;->L:Ljava/lang/String;

    invoke-virtual {v7, v2, v8, v3, v4}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3058
    invoke-virtual {v7, v1, v12}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 3059
    sget-object v2, Lrv;->K:Ljava/lang/String;

    .line 3062
    iget-boolean v0, v0, Laff$a;->g:Z

    if-eqz v0, :cond_4

    const-string v0, "writeFieldNameJSONB"

    goto :goto_6

    :cond_4
    const-string v0, "writeFieldName"

    :goto_6
    move-object v3, v0

    sget-object v4, Laff;->k:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v7

    .line 3059
    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v6, :cond_5

    .line 3068
    invoke-virtual {v7, v10}, Lse;->a(Lsc;)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static a(Laff$a;ZZI)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 2696
    iget-object v8, v0, Laff$a;->e:Lse;

    .line 2698
    new-instance v0, Lsc;

    invoke-direct {v0}, Lsc;-><init>()V

    new-instance v9, Lsc;

    invoke-direct {v9}, Lsc;-><init>()V

    const/16 v10, 0xa7

    const/4 v11, 0x1

    const/16 v12, 0x19

    if-eqz p2, :cond_0

    .line 2700
    invoke-virtual {v8, v12, v1}, Lse;->b(II)V

    const/16 v2, 0xc7

    .line 2701
    invoke-virtual {v8, v2, v0}, Lse;->a(ILsc;)V

    .line 2702
    invoke-virtual {v8, v12, v11}, Lse;->b(II)V

    const/16 v3, 0xb6

    .line 2703
    sget-object v4, Lrv;->J:Ljava/lang/String;

    const/4 v7, 0x0

    const-string v5, "writeStringNull"

    const-string v6, "()V"

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2704
    invoke-virtual {v8, v10, v9}, Lse;->a(ILsc;)V

    .line 2706
    invoke-virtual {v8, v0}, Lse;->a(Lsc;)V

    .line 2709
    :cond_0
    sget v0, Labf;->d:I

    const/16 v13, 0xc0

    const/16 v2, 0x8

    const-string v14, "Lsun/misc/Unsafe;"

    const-string v15, "UNSAFE"

    const/16 v7, 0xb2

    if-ne v0, v2, :cond_1

    sget-boolean v0, Labf;->t:Z

    if-nez v0, :cond_1

    sget-boolean v0, Labf;->i:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 2714
    invoke-virtual {v8, v12, v11}, Lse;->b(II)V

    .line 2715
    sget-object v0, Lafg;->a:Ljava/lang/String;

    invoke-virtual {v8, v7, v0, v15, v14}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2716
    invoke-virtual {v8, v12, v1}, Lse;->b(II)V

    .line 2717
    sget-wide v0, Labf;->h:J

    invoke-virtual {v8, v0, v1}, Lse;->a(J)V

    const/16 v1, 0xb6

    const/4 v5, 0x0

    const-string v2, "sun/misc/Unsafe"

    const-string v3, "getObject"

    const-string v4, "(Ljava/lang/Object;J)Ljava/lang/Object;"

    move-object v0, v8

    .line 2718
    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "[C"

    .line 2719
    invoke-virtual {v8, v13, v0}, Lse;->a(ILjava/lang/String;)V

    .line 2720
    sget-object v2, Lrv;->J:Ljava/lang/String;

    const-string v3, "writeString"

    const-string v4, "([C)V"

    move-object v0, v8

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 2727
    :cond_1
    sget v0, Labf;->d:I

    if-le v0, v2, :cond_2

    sget-boolean v0, Labf;->t:Z

    if-nez v0, :cond_2

    sget-wide v2, Labf;->m:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    sget-wide v2, Labf;->h:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 2733
    new-instance v0, Lsc;

    invoke-direct {v0}, Lsc;-><init>()V

    new-instance v6, Lsc;

    invoke-direct {v6}, Lsc;-><init>()V

    .line 2734
    invoke-virtual {v8, v12, v11}, Lse;->b(II)V

    .line 2735
    sget-object v2, Lafg;->a:Ljava/lang/String;

    invoke-virtual {v8, v7, v2, v15, v14}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2736
    invoke-virtual {v8, v12, v1}, Lse;->b(II)V

    .line 2737
    sget-wide v2, Labf;->h:J

    invoke-virtual {v8, v2, v3}, Lse;->a(J)V

    const/16 v3, 0xb6

    const/4 v11, 0x0

    const-string v4, "sun/misc/Unsafe"

    const-string v5, "getObject"

    const-string v16, "(Ljava/lang/Object;J)Ljava/lang/Object;"

    move-object v2, v8

    move-object v10, v6

    move-object/from16 v6, v16

    move v12, v7

    move v7, v11

    .line 2738
    invoke-virtual/range {v2 .. v7}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "[B"

    .line 2739
    invoke-virtual {v8, v13, v2}, Lse;->a(ILjava/lang/String;)V

    .line 2741
    sget-object v2, Lafg;->a:Ljava/lang/String;

    invoke-virtual {v8, v12, v2, v15, v14}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x19

    .line 2742
    invoke-virtual {v8, v2, v1}, Lse;->b(II)V

    .line 2743
    sget-wide v1, Labf;->m:J

    invoke-virtual {v8, v1, v2}, Lse;->a(J)V

    const/16 v1, 0xb6

    const/4 v5, 0x0

    const-string v2, "sun/misc/Unsafe"

    const-string v3, "getByte"

    const-string v4, "(Ljava/lang/Object;J)B"

    move-object v6, v0

    move-object v0, v8

    .line 2744
    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0x9a

    .line 2745
    invoke-virtual {v8, v0, v6}, Lse;->a(ILsc;)V

    .line 2747
    sget-object v2, Lrv;->J:Ljava/lang/String;

    const-string v3, "writeStringLatin1"

    const-string v4, "([B)V"

    move-object v0, v8

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0xa7

    .line 2754
    invoke-virtual {v8, v0, v10}, Lse;->a(ILsc;)V

    .line 2755
    invoke-virtual {v8, v6}, Lse;->a(Lsc;)V

    .line 2756
    sget-object v2, Lrv;->J:Ljava/lang/String;

    const-string v3, "writeStringUTF16"

    const-string v4, "([B)V"

    move-object v0, v8

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2763
    invoke-virtual {v8, v10}, Lse;->a(Lsc;)V

    goto :goto_1

    :cond_2
    move v0, v12

    .line 2765
    invoke-virtual {v8, v0, v11}, Lse;->b(II)V

    .line 2766
    invoke-virtual {v8, v0, v1}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 2767
    sget-object v2, Lrv;->J:Ljava/lang/String;

    if-eqz p1, :cond_3

    const-string v0, "writeSymbol"

    goto :goto_0

    :cond_3
    const-string v0, "writeString"

    :goto_0
    move-object v3, v0

    const/4 v5, 0x0

    const-string v4, "(Ljava/lang/String;)V"

    move-object v0, v8

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    if-eqz p2, :cond_4

    .line 2777
    invoke-virtual {v8, v9}, Lse;->a(Lsc;)V

    :cond_4
    return-void
.end method

.method private a(Lahq;Ljava/lang/Class;JLjava/util/List;Lry;Ljava/lang/String;J)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lahq;",
            "Ljava/lang/Class;",
            "J",
            "Ljava/util/List<",
            "Labq;",
            ">;",
            "Lry;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 811
    sget-object v0, Laff;->j:Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "writeArrayMappingJSONB"

    const/16 v3, 0x200

    move-object/from16 v4, p6

    invoke-virtual {v4, v1, v2, v0, v3}, Lry;->a(ILjava/lang/String;Ljava/lang/String;I)Lse;

    move-result-object v0

    .line 824
    new-instance v2, Lsc;

    invoke-direct {v2}, Lsc;-><init>()V

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x5

    move-wide/from16 v4, p3

    move-object v6, v0

    move-object v10, v2

    .line 825
    invoke-static/range {v4 .. v10}, Laff;->a(JLse;IIILsc;)V

    const/4 v3, 0x0

    const/16 v10, 0x19

    .line 827
    invoke-virtual {v0, v10, v3}, Lse;->b(II)V

    .line 828
    invoke-virtual {v0, v10, v1}, Lse;->b(II)V

    .line 829
    sget-object v8, Laff;->G:Ljava/lang/String;

    const/16 v5, 0xb6

    const-string v7, "writeClassInfo"

    const/4 v9, 0x0

    move-object v4, v0

    move-object/from16 v6, p7

    invoke-virtual/range {v4 .. v9}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 831
    invoke-virtual {v0, v2}, Lse;->a(Lsc;)V

    .line 834
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    .line 836
    invoke-virtual {v0, v10, v1}, Lse;->b(II)V

    const/16 v4, 0x80

    if-lt v2, v4, :cond_0

    const/16 v4, 0x11

    .line 838
    invoke-virtual {v0, v4, v2}, Lse;->a(II)V

    goto :goto_0

    :cond_0
    const/16 v4, 0x10

    .line 840
    invoke-virtual {v0, v4, v2}, Lse;->a(II)V

    :goto_0
    const/16 v5, 0xb6

    .line 842
    sget-object v6, Lrv;->J:Ljava/lang/String;

    const/4 v9, 0x0

    const-string v7, "startArray"

    const-string v8, "(I)V"

    move-object v4, v0

    invoke-virtual/range {v4 .. v9}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 844
    new-instance v15, Laff$a;

    const/4 v11, 0x7

    const/4 v12, 0x1

    move-object v4, v15

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-wide/from16 v7, p3

    move-object/from16 v9, p7

    move-object v10, v0

    invoke-direct/range {v4 .. v12}, Laff$a;-><init>(Lahq;Ljava/lang/Class;JLjava/lang/String;Lse;IZ)V

    .line 846
    invoke-virtual {v15, v1}, Laff$a;->a(Z)V

    :goto_1
    if-ge v3, v2, :cond_1

    move-object/from16 v4, p5

    .line 851
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Labq;

    const/4 v13, 0x2

    const/4 v5, 0x0

    move-object/from16 v10, p0

    move-object v11, v15

    move v14, v3

    move-object v6, v15

    move v15, v5

    .line 849
    invoke-direct/range {v10 .. v15}, Laff;->b(Laff$a;Labq;IIZ)V

    add-int/lit8 v3, v3, 0x1

    move-object v15, v6

    goto :goto_1

    :cond_1
    move-object v6, v15

    const/16 v2, 0xb1

    .line 858
    invoke-virtual {v0, v2}, Lse;->a(I)V

    .line 859
    iget v2, v6, Laff$a;->h:I

    add-int/2addr v2, v1

    iget v3, v6, Laff$a;->h:I

    add-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Lse;->d(II)V

    return-void
.end method

.method private a(Lahq;Ljava/lang/Class;Ljava/util/List;Lry;Ljava/lang/String;J)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lahq;",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "Labq;",
            ">;",
            "Lry;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    move-object/from16 v9, p2

    .line 565
    sget-object v0, Laff;->j:Ljava/lang/String;

    .line 569
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    const/16 v1, 0x200

    goto :goto_0

    :cond_0
    const/16 v1, 0x400

    :goto_0
    const/4 v10, 0x1

    const-string v2, "write"

    move-object/from16 v3, p4

    .line 565
    invoke-virtual {v3, v10, v2, v0, v1}, Lry;->a(ILjava/lang/String;Ljava/lang/String;I)Lse;

    move-result-object v11

    .line 578
    new-instance v12, Lsc;

    invoke-direct {v12}, Lsc;-><init>()V

    new-instance v13, Lsc;

    invoke-direct {v13}, Lsc;-><init>()V

    new-instance v14, Lsc;

    invoke-direct {v14}, Lsc;-><init>()V

    .line 580
    new-instance v15, Laff$a;

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p6

    move-object/from16 v5, p5

    move-object v6, v11

    invoke-direct/range {v0 .. v8}, Laff$a;-><init>(Lahq;Ljava/lang/Class;JLjava/lang/String;Lse;IZ)V

    const/4 v0, 0x0

    .line 581
    invoke-virtual {v15, v0}, Laff$a;->a(Z)V

    .line 583
    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->IgnoreErrorGetter:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/ab$b;->mask:J

    invoke-virtual {v15, v1, v2, v14}, Laff$a;->a(JLsc;)V

    const/16 v1, 0x19

    .line 585
    invoke-virtual {v11, v1, v0}, Lse;->b(II)V

    .line 586
    invoke-virtual {v11, v1, v10}, Lse;->b(II)V

    const/4 v2, 0x2

    .line 587
    invoke-virtual {v11, v1, v2}, Lse;->b(II)V

    const/4 v8, 0x3

    .line 588
    invoke-virtual {v11, v1, v8}, Lse;->b(II)V

    const/4 v7, 0x4

    .line 589
    invoke-virtual {v11, v1, v7}, Lse;->b(II)V

    const/4 v6, 0x5

    const/16 v5, 0x16

    .line 590
    invoke-virtual {v11, v5, v6}, Lse;->b(II)V

    const/16 v4, 0xb7

    .line 591
    sget-object v16, Lrv;->b:Ljava/lang/String;

    sget-object v17, Laff;->l:Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "write"

    move-object v3, v11

    move-object/from16 v5, v16

    move-object/from16 v6, v19

    move-object/from16 v7, v17

    move/from16 v8, v18

    invoke-virtual/range {v3 .. v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v8, 0xb1

    .line 592
    invoke-virtual {v11, v8}, Lse;->a(I)V

    .line 594
    invoke-virtual {v11, v14}, Lse;->a(Lsc;)V

    .line 596
    invoke-virtual {v11, v1, v10}, Lse;->b(II)V

    const/16 v3, 0xb4

    .line 597
    sget-object v4, Lrv;->J:Ljava/lang/String;

    const-string v5, "jsonb"

    const-string v6, "Z"

    invoke-virtual {v11, v3, v4, v5, v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0x99

    .line 598
    invoke-virtual {v11, v14, v12}, Lse;->a(ILsc;)V

    .line 600
    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->BeanToArray:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    invoke-virtual {v15, v3, v4, v13}, Laff$a;->a(JLsc;)V

    .line 602
    invoke-virtual {v11, v1, v0}, Lse;->b(II)V

    .line 603
    invoke-virtual {v11, v1, v10}, Lse;->b(II)V

    .line 604
    invoke-virtual {v11, v1, v2}, Lse;->b(II)V

    const/4 v7, 0x3

    .line 605
    invoke-virtual {v11, v1, v7}, Lse;->b(II)V

    const/4 v6, 0x4

    .line 606
    invoke-virtual {v11, v1, v6}, Lse;->b(II)V

    const/16 v4, 0x16

    const/4 v5, 0x5

    .line 607
    invoke-virtual {v11, v4, v5}, Lse;->b(II)V

    const/16 v16, 0xb6

    .line 608
    sget-object v17, Laff;->l:Ljava/lang/String;

    const-string v19, "writeArrayMappingJSONB"

    move-object v3, v11

    move v14, v4

    move/from16 v4, v16

    move v14, v5

    move-object/from16 v5, p5

    move v14, v6

    move-object/from16 v6, v19

    move v14, v7

    move-object/from16 v7, v17

    move v14, v8

    move/from16 v8, v18

    invoke-virtual/range {v3 .. v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 609
    invoke-virtual {v11, v14}, Lse;->a(I)V

    .line 611
    invoke-virtual {v11, v13}, Lse;->a(Lsc;)V

    .line 612
    invoke-virtual {v11, v1, v0}, Lse;->b(II)V

    .line 613
    invoke-virtual {v11, v1, v10}, Lse;->b(II)V

    .line 614
    invoke-virtual {v11, v1, v2}, Lse;->b(II)V

    const/4 v3, 0x3

    .line 615
    invoke-virtual {v11, v1, v3}, Lse;->b(II)V

    const/4 v3, 0x4

    .line 616
    invoke-virtual {v11, v1, v3}, Lse;->b(II)V

    const/4 v3, 0x5

    const/16 v4, 0x16

    .line 617
    invoke-virtual {v11, v4, v3}, Lse;->b(II)V

    const/16 v4, 0xb6

    .line 618
    sget-object v7, Laff;->l:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v6, "writeJSONB"

    move-object v3, v11

    invoke-virtual/range {v3 .. v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 619
    invoke-virtual {v11, v14}, Lse;->a(I)V

    .line 621
    invoke-virtual {v11, v12}, Lse;->a(Lsc;)V

    .line 623
    new-instance v12, Lsc;

    invoke-direct {v12}, Lsc;-><init>()V

    .line 625
    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->BeanToArray:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    invoke-virtual {v15, v3, v4, v12}, Laff$a;->a(JLsc;)V

    .line 627
    invoke-virtual {v11, v1, v0}, Lse;->b(II)V

    .line 628
    invoke-virtual {v11, v1, v10}, Lse;->b(II)V

    .line 629
    invoke-virtual {v11, v1, v2}, Lse;->b(II)V

    const/4 v3, 0x3

    .line 630
    invoke-virtual {v11, v1, v3}, Lse;->b(II)V

    const/4 v3, 0x4

    .line 631
    invoke-virtual {v11, v1, v3}, Lse;->b(II)V

    const/4 v3, 0x5

    const/16 v4, 0x16

    .line 632
    invoke-virtual {v11, v4, v3}, Lse;->b(II)V

    const/16 v4, 0xb6

    .line 633
    sget-object v7, Laff;->l:Ljava/lang/String;

    const-string v6, "writeArrayMapping"

    move-object v3, v11

    invoke-virtual/range {v3 .. v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 634
    invoke-virtual {v11, v14}, Lse;->a(I)V

    .line 636
    invoke-virtual {v11, v12}, Lse;->a(Lsc;)V

    .line 638
    new-instance v12, Lsc;

    invoke-direct {v12}, Lsc;-><init>()V

    .line 639
    invoke-virtual {v11, v1, v0}, Lse;->b(II)V

    .line 640
    invoke-virtual {v11, v1, v10}, Lse;->b(II)V

    const/16 v4, 0xb9

    .line 641
    sget-object v5, Lrv;->I:Ljava/lang/String;

    sget-object v7, Laff;->E:Ljava/lang/String;

    const/4 v8, 0x1

    const-string v6, "hasFilter"

    invoke-virtual/range {v3 .. v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v3, 0x99

    .line 642
    invoke-virtual {v11, v3, v12}, Lse;->a(ILsc;)V

    .line 644
    invoke-virtual {v11, v1, v0}, Lse;->b(II)V

    .line 645
    invoke-virtual {v11, v1, v10}, Lse;->b(II)V

    .line 646
    invoke-virtual {v11, v1, v2}, Lse;->b(II)V

    const/4 v3, 0x3

    .line 647
    invoke-virtual {v11, v1, v3}, Lse;->b(II)V

    const/4 v3, 0x4

    .line 648
    invoke-virtual {v11, v1, v3}, Lse;->b(II)V

    const/4 v3, 0x5

    const/16 v4, 0x16

    .line 649
    invoke-virtual {v11, v4, v3}, Lse;->b(II)V

    const/16 v4, 0xb6

    .line 650
    sget-object v7, Laff;->l:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v6, "writeWithFilter"

    move-object v3, v11

    move-object/from16 v5, p5

    invoke-virtual/range {v3 .. v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 651
    invoke-virtual {v11, v14}, Lse;->a(I)V

    .line 653
    invoke-virtual {v11, v12}, Lse;->a(Lsc;)V

    .line 655
    new-instance v12, Lsc;

    invoke-direct {v12}, Lsc;-><init>()V

    if-eqz v9, :cond_1

    .line 656
    const-class v3, Ljava/io/Serializable;

    invoke-virtual {v3, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 657
    :cond_1
    new-instance v9, Lsc;

    invoke-direct {v9}, Lsc;-><init>()V

    .line 658
    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    invoke-virtual {v15, v3, v4, v9}, Laff$a;->a(JLsc;)V

    .line 660
    invoke-virtual {v11, v1, v10}, Lse;->b(II)V

    const/16 v4, 0xb6

    .line 661
    sget-object v5, Lrv;->J:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v6, "writeNull"

    const-string v7, "()V"

    move-object v3, v11

    invoke-virtual/range {v3 .. v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v13, 0xa7

    .line 662
    invoke-virtual {v11, v13, v12}, Lse;->a(ILsc;)V

    .line 664
    invoke-virtual {v11, v9}, Lse;->a(Lsc;)V

    .line 666
    new-instance v9, Lsc;

    invoke-direct {v9}, Lsc;-><init>()V

    .line 668
    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    invoke-virtual {v15, v3, v4, v9}, Laff$a;->a(JLsc;)V

    .line 669
    invoke-virtual {v11, v1, v0}, Lse;->b(II)V

    const/16 v4, 0xb6

    .line 670
    iget-object v5, v15, Laff$a;->d:Ljava/lang/String;

    const-string v6, "errorOnNoneSerializable"

    const-string v7, "()V"

    move-object v3, v11

    invoke-virtual/range {v3 .. v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 671
    invoke-virtual {v11, v13, v12}, Lse;->a(ILsc;)V

    .line 673
    invoke-virtual {v11, v9}, Lse;->a(Lsc;)V

    .line 676
    :cond_2
    invoke-virtual {v11, v1, v10}, Lse;->b(II)V

    const/16 v4, 0xb6

    .line 677
    sget-object v5, Lrv;->J:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v6, "startObject"

    const-string v7, "()V"

    move-object v3, v11

    invoke-virtual/range {v3 .. v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v3, 0x4

    .line 679
    invoke-virtual {v11, v3}, Lse;->a(I)V

    const/4 v13, 0x7

    const/16 v9, 0x36

    .line 680
    invoke-virtual {v11, v9, v13}, Lse;->b(II)V

    .line 682
    new-instance v8, Lsc;

    invoke-direct {v8}, Lsc;-><init>()V

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/16 v16, 0x5

    move-wide/from16 v3, p6

    move-object v5, v11

    move-object/from16 p1, v8

    move/from16 v8, v16

    move v14, v9

    move-object/from16 v9, p1

    .line 683
    invoke-static/range {v3 .. v9}, Laff;->a(JLse;IIILsc;)V

    .line 685
    invoke-virtual {v11, v1, v0}, Lse;->b(II)V

    .line 686
    invoke-virtual {v11, v1, v10}, Lse;->b(II)V

    const/16 v4, 0xb9

    .line 687
    sget-object v5, Lrv;->I:Ljava/lang/String;

    sget-object v7, Laff;->D:Ljava/lang/String;

    const/4 v8, 0x1

    const-string v6, "writeTypeInfo"

    move-object v3, v11

    invoke-virtual/range {v3 .. v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v3, 0x4

    .line 688
    invoke-virtual {v11, v3}, Lse;->a(I)V

    const/16 v3, 0x82

    .line 689
    invoke-virtual {v11, v3}, Lse;->a(I)V

    .line 690
    invoke-virtual {v11, v14, v13}, Lse;->b(II)V

    move-object/from16 v3, p1

    .line 692
    invoke-virtual {v11, v3}, Lse;->a(Lsc;)V

    .line 694
    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    move-object/from16 v3, p3

    .line 695
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labq;

    move-object/from16 v5, p0

    .line 696
    invoke-direct {v5, v15, v4, v2, v0}, Laff;->f(Laff$a;Labq;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v5, p0

    .line 699
    invoke-virtual {v11, v1, v10}, Lse;->b(II)V

    const/16 v0, 0xb6

    .line 700
    sget-object v1, Lrv;->J:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "endObject"

    const-string v4, "()V"

    move-object/from16 p1, v11

    move/from16 p2, v0

    move-object/from16 p3, v1

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move/from16 p6, v2

    invoke-virtual/range {p1 .. p6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 702
    invoke-virtual {v11, v12}, Lse;->a(Lsc;)V

    const/16 v0, 0xb1

    .line 703
    invoke-virtual {v11, v0}, Lse;->a(I)V

    .line 704
    iget v0, v15, Laff$a;->h:I

    add-int/2addr v0, v10

    iget v1, v15, Laff$a;->h:I

    add-int/2addr v1, v10

    invoke-virtual {v11, v0, v1}, Lse;->d(II)V

    return-void
.end method

.method private a(Lahq;Ljava/lang/String;Ljava/lang/Class;JLjava/util/List;Lry;Ljava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lahq;",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            "J",
            "Ljava/util/List<",
            "Labq;",
            ">;",
            "Lry;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1278
    sget-object v0, Laff;->j:Ljava/lang/String;

    const/4 v1, 0x1

    const/16 v2, 0x200

    move-object/from16 v6, p2

    move-object/from16 v3, p7

    invoke-virtual {v3, v1, v6, v0, v2}, Lry;->a(ILjava/lang/String;Ljava/lang/String;I)Lse;

    move-result-object v0

    .line 1289
    new-instance v2, Lsc;

    invoke-direct {v2}, Lsc;-><init>()V

    const/16 v13, 0x19

    .line 1291
    invoke-virtual {v0, v13, v1}, Lse;->b(II)V

    .line 1292
    sget-object v3, Lrv;->J:Ljava/lang/String;

    const/16 v4, 0xb4

    const-string v5, "jsonb"

    const-string v7, "Z"

    invoke-virtual {v0, v4, v3, v5, v7}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x99

    .line 1293
    invoke-virtual {v0, v3, v2}, Lse;->a(ILsc;)V

    const/4 v14, 0x0

    .line 1295
    invoke-virtual {v0, v13, v14}, Lse;->b(II)V

    .line 1296
    invoke-virtual {v0, v13, v1}, Lse;->b(II)V

    const/4 v15, 0x2

    .line 1297
    invoke-virtual {v0, v13, v15}, Lse;->b(II)V

    const/4 v4, 0x3

    .line 1298
    invoke-virtual {v0, v13, v4}, Lse;->b(II)V

    const/4 v5, 0x4

    .line 1299
    invoke-virtual {v0, v13, v5}, Lse;->b(II)V

    const/4 v12, 0x5

    const/16 v11, 0x16

    .line 1300
    invoke-virtual {v0, v11, v12}, Lse;->b(II)V

    .line 1301
    sget-object v16, Laff;->l:Ljava/lang/String;

    const/16 v8, 0xb6

    const-string v10, "writeArrayMappingJSONB"

    const/16 v17, 0x0

    move-object v7, v0

    move-object/from16 v9, p8

    move-object/from16 v11, v16

    move/from16 v12, v17

    invoke-virtual/range {v7 .. v12}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v12, 0xb1

    .line 1302
    invoke-virtual {v0, v12}, Lse;->a(I)V

    .line 1304
    invoke-virtual {v0, v2}, Lse;->a(Lsc;)V

    .line 1306
    new-instance v2, Lsc;

    invoke-direct {v2}, Lsc;-><init>()V

    .line 1307
    invoke-virtual {v0, v13, v14}, Lse;->b(II)V

    .line 1308
    invoke-virtual {v0, v13, v1}, Lse;->b(II)V

    .line 1309
    sget-object v9, Lrv;->I:Ljava/lang/String;

    sget-object v11, Laff;->E:Ljava/lang/String;

    const/16 v8, 0xb9

    const-string v10, "hasFilter"

    const/16 v16, 0x1

    move/from16 v12, v16

    invoke-virtual/range {v7 .. v12}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1310
    invoke-virtual {v0, v3, v2}, Lse;->a(ILsc;)V

    .line 1312
    invoke-virtual {v0, v13, v14}, Lse;->b(II)V

    .line 1313
    invoke-virtual {v0, v13, v1}, Lse;->b(II)V

    .line 1314
    invoke-virtual {v0, v13, v15}, Lse;->b(II)V

    .line 1315
    invoke-virtual {v0, v13, v4}, Lse;->b(II)V

    .line 1316
    invoke-virtual {v0, v13, v5}, Lse;->b(II)V

    const/4 v3, 0x5

    const/16 v4, 0x16

    .line 1317
    invoke-virtual {v0, v4, v3}, Lse;->b(II)V

    .line 1318
    sget-object v5, Lrv;->b:Ljava/lang/String;

    sget-object v7, Laff;->j:Ljava/lang/String;

    const/16 v4, 0xb7

    const/4 v8, 0x0

    move-object v3, v0

    invoke-virtual/range {v3 .. v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v12, 0xb1

    .line 1319
    invoke-virtual {v0, v12}, Lse;->a(I)V

    .line 1321
    invoke-virtual {v0, v2}, Lse;->a(Lsc;)V

    .line 1323
    invoke-virtual {v0, v13, v1}, Lse;->b(II)V

    .line 1324
    sget-object v5, Lrv;->J:Ljava/lang/String;

    const/16 v4, 0xb6

    const-string v6, "startArray"

    const-string v7, "()V"

    invoke-virtual/range {v3 .. v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1326
    new-instance v2, Laff$a;

    const/4 v10, 0x7

    const/4 v11, 0x0

    move-object v3, v2

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p8

    move-object v9, v0

    invoke-direct/range {v3 .. v11}, Laff$a;-><init>(Lahq;Ljava/lang/Class;JLjava/lang/String;Lse;IZ)V

    .line 1328
    :goto_0
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v3

    if-ge v14, v3, :cond_1

    if-eqz v14, :cond_0

    .line 1330
    invoke-virtual {v0, v13, v1}, Lse;->b(II)V

    const/16 v4, 0xb6

    .line 1331
    sget-object v5, Lrv;->J:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v6, "writeComma"

    const-string v7, "()V"

    move-object v3, v0

    invoke-virtual/range {v3 .. v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    move-object/from16 v3, p6

    .line 1335
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labq;

    move-object/from16 v5, p0

    .line 1334
    invoke-direct {v5, v4, v2, v15, v14}, Laff;->a(Labq;Laff$a;II)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v5, p0

    .line 1342
    invoke-virtual {v0, v13, v1}, Lse;->b(II)V

    const/16 v3, 0xb6

    .line 1343
    sget-object v4, Lrv;->J:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "endArray"

    const-string v8, "()V"

    move-object/from16 p1, v0

    move/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v7

    move-object/from16 p5, v8

    move/from16 p6, v6

    invoke-virtual/range {p1 .. p6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1345
    invoke-virtual {v0, v12}, Lse;->a(I)V

    .line 1346
    iget v3, v2, Laff$a;->h:I

    add-int/2addr v3, v1

    iget v2, v2, Laff$a;->h:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v3, v2}, Lse;->d(II)V

    return-void
.end method

.method private a(Ljava/util/List;Lry;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Labq;",
            ">;",
            "Lry;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3460
    sget-object v0, Lrv;->b:Ljava/lang/String;

    if-eq p3, v0, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x0

    .line 3464
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_1

    .line 3467
    invoke-static {p3}, Laff;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lrv;->L:Ljava/lang/String;

    const/4 v2, 0x1

    .line 3465
    invoke-virtual {p2, v2, v0, v1}, Lry;->a(ILjava/lang/String;Ljava/lang/String;)Lsa;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Ljava/util/List;Lry;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Labq;",
            ">;",
            "Lry;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "<init>"

    const-string v2, "(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V"

    const/16 v3, 0x40

    move-object/from16 v4, p2

    .line 3402
    invoke-virtual {v4, v0, v1, v2, v3}, Lry;->a(ILjava/lang/String;Ljava/lang/String;I)Lse;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x19

    .line 3408
    invoke-virtual {v1, v3, v2}, Lse;->b(II)V

    .line 3409
    invoke-virtual {v1, v3, v0}, Lse;->b(II)V

    const/4 v10, 0x2

    .line 3410
    invoke-virtual {v1, v3, v10}, Lse;->b(II)V

    const/4 v11, 0x3

    .line 3411
    invoke-virtual {v1, v3, v11}, Lse;->b(II)V

    const/4 v12, 0x4

    const/16 v4, 0x16

    .line 3412
    invoke-virtual {v1, v4, v12}, Lse;->b(II)V

    const/4 v13, 0x6

    .line 3413
    invoke-virtual {v1, v3, v13}, Lse;->b(II)V

    const/16 v5, 0xb7

    const-string v7, "<init>"

    const-string v8, "(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V"

    const/4 v9, 0x0

    move-object v4, v1

    move-object/from16 v6, p4

    .line 3414
    invoke-virtual/range {v4 .. v9}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3416
    sget-object v4, Lrv;->b:Ljava/lang/String;

    const/4 v5, 0x7

    if-ne v6, v4, :cond_7

    move v4, v2

    .line 3417
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_7

    .line 3418
    invoke-virtual {v1, v3, v2}, Lse;->b(II)V

    const/16 v6, 0x59

    .line 3419
    invoke-virtual {v1, v6}, Lse;->a(I)V

    const/16 v6, 0xb4

    .line 3421
    sget-object v7, Lrv;->b:Ljava/lang/String;

    sget-object v8, Lrv;->M:Ljava/lang/String;

    const-string v9, "fieldWriterArray"

    invoke-virtual {v1, v6, v7, v9, v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_6

    if-eq v4, v0, :cond_5

    const/4 v6, 0x5

    if-eq v4, v10, :cond_4

    if-eq v4, v11, :cond_3

    if-eq v4, v12, :cond_2

    if-eq v4, v6, :cond_1

    const/16 v6, 0x80

    if-lt v4, v6, :cond_0

    const/16 v6, 0x11

    .line 3443
    invoke-virtual {v1, v6, v4}, Lse;->a(II)V

    goto :goto_1

    :cond_0
    const/16 v6, 0x10

    .line 3445
    invoke-virtual {v1, v6, v4}, Lse;->a(II)V

    goto :goto_1

    :cond_1
    const/16 v6, 0x8

    .line 3439
    invoke-virtual {v1, v6}, Lse;->a(I)V

    goto :goto_1

    .line 3436
    :cond_2
    invoke-virtual {v1, v5}, Lse;->a(I)V

    goto :goto_1

    .line 3433
    :cond_3
    invoke-virtual {v1, v13}, Lse;->a(I)V

    goto :goto_1

    .line 3430
    :cond_4
    invoke-virtual {v1, v6}, Lse;->a(I)V

    goto :goto_1

    .line 3427
    :cond_5
    invoke-virtual {v1, v12}, Lse;->a(I)V

    goto :goto_1

    .line 3424
    :cond_6
    invoke-virtual {v1, v11}, Lse;->a(I)V

    :goto_1
    const/16 v6, 0x32

    .line 3449
    invoke-virtual {v1, v6}, Lse;->a(I)V

    const/16 v6, 0xc0

    .line 3450
    sget-object v7, Lrv;->K:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lse;->a(ILjava/lang/String;)V

    const/16 v6, 0xb5

    .line 3451
    invoke-static {v4}, Laff;->a(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lrv;->L:Ljava/lang/String;

    move-object/from16 v9, p3

    invoke-virtual {v1, v6, v9, v7, v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    const/16 v0, 0xb1

    .line 3455
    invoke-virtual {v1, v0}, Lse;->a(I)V

    .line 3456
    invoke-virtual {v1, v5, v5}, Lse;->d(II)V

    return-void
.end method

.method private synthetic a(Lqg;JLqe;Lahq;Ljava/lang/Class;ZLjava/util/Map;Ljava/lang/reflect/Method;)V
    .locals 18

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v0, p4

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    .line 234
    invoke-virtual/range {p1 .. p1}, Lqg;->b()V

    .line 235
    iget-wide v1, v13, Lqg;->e:J

    or-long v1, v1, p2

    iput-wide v1, v13, Lqg;->e:J

    .line 236
    iget-object v1, v0, Lqe;->z:Ljava/lang/String;

    iput-object v1, v13, Lqg;->b:Ljava/lang/String;

    move-object/from16 v11, p5

    move-object/from16 v10, p6

    .line 238
    invoke-virtual {v11, v0, v13, v10, v15}, Lahq;->a(Lqe;Lqg;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    .line 239
    iget-boolean v1, v13, Lqg;->f:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    move-object/from16 v1, p6

    move-object/from16 v2, p5

    move-object/from16 v3, p4

    move/from16 v4, p7

    move-object/from16 v5, p1

    move-object/from16 v6, p9

    .line 243
    invoke-static/range {v1 .. v6}, Laff;->a(Ljava/lang/Class;Lahq;Lqe;ZLqg;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v9

    .line 245
    iget-object v1, v0, Lqe;->r:[Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    move v1, v3

    move v4, v1

    .line 247
    :goto_0
    iget-object v5, v0, Lqe;->r:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 248
    iget-object v5, v0, Lqe;->r:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 249
    iput v1, v13, Lqg;->d:I

    move v4, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    .line 254
    iget v1, v13, Lqg;->d:I

    if-nez v1, :cond_3

    .line 255
    iget-object v1, v0, Lqe;->r:[Ljava/lang/String;

    array-length v1, v1

    iput v1, v13, Lqg;->d:I

    .line 260
    :cond_3
    iget-object v1, v0, Lqe;->s:[Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lqe;->s:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_6

    .line 262
    iget-object v1, v0, Lqe;->s:[Ljava/lang/String;

    array-length v4, v1

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_5

    aget-object v6, v1, v5

    .line 263
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    move v1, v3

    :goto_2
    if-nez v1, :cond_6

    return-void

    .line 274
    :cond_6
    iget-wide v4, v0, Lqe;->n:J

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->WriteClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v6, v1, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_7

    iget-object v0, v0, Lqe;->a:Ljava/lang/String;

    .line 275
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 279
    :cond_7
    invoke-virtual/range {p9 .. p9}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 281
    invoke-static {v0}, Labo;->d(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_e

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_8

    goto/16 :goto_7

    .line 285
    :cond_8
    invoke-virtual {v15, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 288
    iget-object v0, v13, Lqg;->h:Ljava/lang/Class;

    const/16 v16, 0x0

    if-eqz v0, :cond_9

    .line 290
    :try_start_0
    iget-object v0, v13, Lqg;->h:Ljava/lang/Class;

    new-array v1, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 291
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 292
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 294
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create writeUsing Writer error, method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", serializer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lqg;->h:Ljava/lang/Class;

    .line 296
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_9
    move-object/from16 v0, v16

    :goto_3
    if-nez v0, :cond_a

    .line 301
    iget-boolean v1, v13, Lqg;->l:Z

    if-eqz v1, :cond_a

    .line 302
    sget-object v0, Lafc$a;->a:Lafc$a;

    :cond_a
    move-object/from16 v17, v0

    .line 306
    iget-wide v0, v13, Lqg;->e:J

    const-wide/high16 v4, 0x40000000000000L

    and-long/2addr v0, v4

    cmp-long v0, v0, v6

    if-eqz v0, :cond_b

    goto :goto_4

    :cond_b
    move v2, v3

    :goto_4
    if-eqz v2, :cond_c

    .line 309
    :try_start_1
    iget v5, v13, Lqg;->d:I

    iget-wide v6, v13, Lqg;->e:J

    iget-object v8, v13, Lqg;->b:Ljava/lang/String;

    iget-object v0, v13, Lqg;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object v4, v9

    move-object/from16 p2, v9

    move-object v9, v0

    move-object/from16 v10, p9

    move-object/from16 v11, v17

    :try_start_2
    invoke-virtual/range {v1 .. v11}, Laff;->b(Lahq;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Laem;)Labq;

    move-result-object v16
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 p2, v9

    .line 321
    :goto_5
    iget-object v1, v12, Laff;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 322
    iput-object v0, v12, Laff;->d:Ljava/lang/Throwable;

    goto :goto_6

    :cond_c
    move-object/from16 p2, v9

    :goto_6
    if-nez v16, :cond_d

    .line 326
    iget v5, v13, Lqg;->d:I

    iget-wide v6, v13, Lqg;->e:J

    iget-object v8, v13, Lqg;->b:Ljava/lang/String;

    iget-object v9, v13, Lqg;->c:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p2

    move-object/from16 v10, p9

    move-object/from16 v11, v17

    invoke-virtual/range {v1 .. v11}, Laff;->a(Lahq;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Laem;)Labq;

    move-result-object v16

    :cond_d
    move-object/from16 v1, p2

    move-object/from16 v0, v16

    .line 339
    invoke-interface {v14, v1, v0}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labq;

    if-eqz v2, :cond_e

    .line 341
    invoke-virtual {v2, v0}, Labq;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_e

    .line 342
    invoke-interface {v14, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_7
    return-void
.end method

.method private synthetic a(Lqg;Ljava/lang/Class;JLahq;Lqe;Ljava/util/Map;Ljava/lang/reflect/Field;)V
    .locals 8

    .line 349
    invoke-virtual {p1}, Lqg;->b()V

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    move-object/from16 v7, p8

    .line 350
    invoke-virtual/range {v0 .. v7}, Laff;->a(Ljava/lang/Class;JLahq;Lqe;Lqg;Ljava/lang/reflect/Field;)Labq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v1, v0, Labq;->a:Ljava/lang/String;

    move-object v2, p7

    invoke-interface {p7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private b(Laff$a;Labq;II)V
    .locals 22

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 1021
    iget-object v3, v1, Labq;->b:Ljava/lang/reflect/Type;

    .line 1022
    iget-object v4, v1, Labq;->c:Ljava/lang/Class;

    .line 1024
    iget-object v5, v0, Laff$a;->d:Ljava/lang/String;

    .line 1025
    iget-object v12, v0, Laff$a;->e:Lse;

    .line 1026
    invoke-virtual {v0, v4}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v13

    const-string v6, "REF_PATH"

    .line 1027
    invoke-virtual {v0, v6}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v14

    .line 1032
    instance-of v6, v3, Ljava/lang/reflect/ParameterizedType;

    const/4 v15, 0x0

    const/4 v11, 0x1

    if-eqz v6, :cond_2

    .line 1033
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 1034
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 1036
    array-length v6, v3

    if-ne v6, v11, :cond_2

    .line 1037
    aget-object v3, v3, v15

    .line 1038
    invoke-static {v3}, Labo;->d(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    .line 1039
    const-class v7, Ljava/lang/String;

    if-eq v3, v7, :cond_1

    const-class v7, Ljava/lang/Integer;

    if-eq v3, v7, :cond_1

    const-class v7, Ljava/lang/Long;

    if-ne v3, v7, :cond_0

    goto :goto_0

    :cond_0
    move v3, v15

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v11

    :goto_1
    move-object/from16 v16, v6

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    move-object/from16 v16, v3

    move v3, v15

    .line 1043
    :goto_2
    new-instance v10, Lsc;

    invoke-direct {v10}, Lsc;-><init>()V

    new-instance v9, Lsc;

    invoke-direct {v9}, Lsc;-><init>()V

    move-object/from16 v8, p0

    move/from16 v7, p4

    .line 1045
    invoke-virtual {v8, v0, v1, v7, v2}, Laff;->a(Laff$a;Labq;II)V

    const/16 v1, 0x59

    .line 1046
    invoke-virtual {v12, v1}, Lse;->a(I)V

    const/16 v6, 0x3a

    .line 1047
    invoke-virtual {v12, v6, v13}, Lse;->b(II)V

    const/16 v6, 0xc7

    .line 1048
    invoke-virtual {v12, v6, v9}, Lse;->a(ILsc;)V

    const/16 v6, 0x19

    .line 1050
    invoke-virtual {v12, v6, v11}, Lse;->b(II)V

    const/16 v17, 0xb6

    .line 1051
    sget-object v18, Lrv;->J:Ljava/lang/String;

    const/16 v19, 0x0

    const-string v20, "writeNull"

    const-string v21, "()V"

    move v1, v6

    move-object v6, v12

    move/from16 v7, v17

    move-object/from16 v8, v18

    move-object v15, v9

    move-object/from16 v9, v20

    move-object v1, v10

    move-object/from16 v10, v21

    move-object/from16 v20, v4

    move v4, v11

    move/from16 v11, v19

    invoke-virtual/range {v6 .. v11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v11, 0xa7

    .line 1052
    invoke-virtual {v12, v11, v1}, Lse;->a(ILsc;)V

    .line 1054
    invoke-virtual {v12, v15}, Lse;->a(Lsc;)V

    .line 1057
    new-instance v15, Lsc;

    invoke-direct {v15}, Lsc;-><init>()V

    new-instance v10, Lsc;

    invoke-direct {v10}, Lsc;-><init>()V

    .line 1059
    sget-object v6, Lcom/alibaba/fastjson2/ab$b;->ReferenceDetection:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v6, v6, Lcom/alibaba/fastjson2/ab$b;->mask:J

    invoke-virtual {v0, v6, v7, v15}, Laff$a;->a(JLsc;)V

    const/16 v6, 0x19

    .line 1061
    invoke-virtual {v12, v6, v2}, Lse;->b(II)V

    .line 1062
    invoke-virtual {v12, v6, v13}, Lse;->b(II)V

    const/16 v2, 0xa6

    .line 1063
    invoke-virtual {v12, v2, v10}, Lse;->a(ILsc;)V

    .line 1065
    invoke-virtual {v12, v6, v4}, Lse;->b(II)V

    const-string v2, ".."

    .line 1066
    invoke-virtual {v12, v2}, Lse;->a(Ljava/lang/String;)V

    const/16 v7, 0xb6

    .line 1067
    sget-object v8, Lrv;->J:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v9, "writeReference"

    const-string v19, "(Ljava/lang/String;)V"

    move-object v6, v12

    move-object v4, v10

    move-object/from16 v10, v19

    move v0, v11

    move v11, v2

    invoke-virtual/range {v6 .. v11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1069
    invoke-virtual {v12, v0, v1}, Lse;->a(ILsc;)V

    .line 1071
    invoke-virtual {v12, v4}, Lse;->a(Lsc;)V

    const/4 v2, 0x1

    const/16 v4, 0x19

    .line 1073
    invoke-virtual {v12, v4, v2}, Lse;->b(II)V

    const/4 v2, 0x0

    .line 1074
    invoke-virtual {v12, v4, v2}, Lse;->b(II)V

    .line 1075
    invoke-static/range {p4 .. p4}, Laff;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lrv;->L:Ljava/lang/String;

    const/16 v11, 0xb4

    invoke-virtual {v12, v11, v5, v2, v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    invoke-virtual {v12, v4, v13}, Lse;->b(II)V

    .line 1077
    sget-object v8, Lrv;->J:Ljava/lang/String;

    sget-object v10, Laff;->F:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v9, "setPath"

    move-object v6, v12

    move v4, v11

    move v11, v2

    invoke-virtual/range {v6 .. v11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v2, 0x59

    .line 1078
    invoke-virtual {v12, v2}, Lse;->a(I)V

    const/16 v2, 0x3a

    .line 1079
    invoke-virtual {v12, v2, v14}, Lse;->b(II)V

    const/16 v6, 0xc6

    .line 1080
    invoke-virtual {v12, v6, v15}, Lse;->a(ILsc;)V

    const/4 v6, 0x1

    const/16 v7, 0x19

    .line 1082
    invoke-virtual {v12, v7, v6}, Lse;->b(II)V

    .line 1083
    invoke-virtual {v12, v7, v14}, Lse;->b(II)V

    const/16 v7, 0xb6

    .line 1084
    sget-object v8, Lrv;->J:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v9, "writeReference"

    const-string v10, "(Ljava/lang/String;)V"

    move-object v6, v12

    invoke-virtual/range {v6 .. v11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v6, 0x1

    const/16 v7, 0x19

    .line 1086
    invoke-virtual {v12, v7, v6}, Lse;->b(II)V

    .line 1087
    invoke-virtual {v12, v7, v13}, Lse;->b(II)V

    const/16 v7, 0xb6

    .line 1088
    sget-object v8, Lrv;->J:Ljava/lang/String;

    const-string v9, "popPath"

    const-string v10, "(Ljava/lang/Object;)V"

    move-object v6, v12

    invoke-virtual/range {v6 .. v11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1089
    invoke-virtual {v12, v0, v1}, Lse;->a(ILsc;)V

    .line 1091
    invoke-virtual {v12, v15}, Lse;->a(Lsc;)V

    if-eqz v3, :cond_3

    move-object/from16 v0, p1

    move-object v14, v1

    move/from16 v1, p4

    move-object v2, v12

    move-object/from16 v3, v20

    move-object/from16 v4, v16

    move v5, v13

    .line 1095
    invoke-static/range {v0 .. v5}, Laff;->a(Laff$a;ILse;Ljava/lang/Class;Ljava/lang/Class;I)V

    goto :goto_3

    :cond_3
    move-object v14, v1

    const-string v0, "ITEM_CLASS"

    move-object/from16 v1, p1

    .line 1097
    invoke-virtual {v1, v0}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v0

    const-string v3, "ITEM_OBJECT_WRITER"

    .line 1098
    invoke-virtual {v1, v3}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v1

    const/4 v3, 0x1

    .line 1099
    invoke-virtual {v12, v3}, Lse;->a(I)V

    const/16 v6, 0x59

    .line 1100
    invoke-virtual {v12, v6}, Lse;->a(I)V

    .line 1101
    invoke-virtual {v12, v2, v0}, Lse;->b(II)V

    .line 1102
    invoke-virtual {v12, v2, v1}, Lse;->b(II)V

    const/4 v0, 0x0

    const/16 v1, 0x19

    .line 1105
    invoke-virtual {v12, v1, v0}, Lse;->b(II)V

    .line 1106
    invoke-static/range {p4 .. p4}, Laff;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lrv;->L:Ljava/lang/String;

    invoke-virtual {v12, v4, v5, v0, v2}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    invoke-virtual {v12, v1, v3}, Lse;->b(II)V

    .line 1108
    invoke-virtual {v12, v1, v13}, Lse;->b(II)V

    const/16 v7, 0xb6

    .line 1109
    sget-object v8, Lrv;->K:Ljava/lang/String;

    sget-object v10, Laff;->z:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v9, "writeListValueJSONB"

    move-object v6, v12

    invoke-virtual/range {v6 .. v11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const/16 v1, 0x19

    .line 1117
    invoke-virtual {v12, v1, v0}, Lse;->b(II)V

    .line 1118
    invoke-virtual {v12, v1, v13}, Lse;->b(II)V

    .line 1119
    sget-object v8, Lrv;->J:Ljava/lang/String;

    const-string v9, "popPath"

    const-string v10, "(Ljava/lang/Object;)V"

    invoke-virtual/range {v6 .. v11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1122
    :goto_3
    invoke-virtual {v12, v14}, Lse;->a(Lsc;)V

    return-void
.end method

.method private b(Laff$a;Labq;IIZ)V
    .locals 13

    move-object v3, p1

    move-object v1, p2

    .line 869
    iget-wide v4, v1, Labq;->d:J

    iget-wide v6, v3, Laff$a;->c:J

    or-long/2addr v4, v6

    .line 870
    iget-object v0, v1, Labq;->c:Ljava/lang/Class;

    .line 872
    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->BeanToArray:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v6, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_1

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    move v8, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v8, v4

    .line 874
    :goto_1
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_2

    const-class v2, Ljava/lang/Long;

    if-eq v0, v2, :cond_2

    const-class v2, [J

    if-ne v0, v2, :cond_3

    :cond_2
    iget-object v2, v3, Laff$a;->a:Lahq;

    iget-wide v9, v2, Lahq;->g:J

    const-wide/16 v11, 0x4

    and-long/2addr v9, v11

    cmp-long v2, v9, v6

    if-eqz v2, :cond_3

    .line 876
    iget-object v2, v3, Laff$a;->a:Lahq;

    const-class v6, Ljava/lang/Long;

    invoke-virtual {v2, v6}, Lahq;->b(Ljava/lang/Class;)Laem;

    move-result-object v2

    sget-object v6, Lagm;->a:Lagm;

    if-eq v2, v6, :cond_3

    move v5, v4

    .line 879
    :cond_3
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_9

    const-class v2, [Z

    if-eq v0, v2, :cond_9

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_9

    const-class v2, [C

    if-eq v0, v2, :cond_9

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_9

    const-class v2, [B

    if-eq v0, v2, :cond_9

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_9

    const-class v2, [S

    if-eq v0, v2, :cond_9

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_9

    const-class v2, [I

    if-eq v0, v2, :cond_9

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_9

    const-class v2, [J

    if-ne v0, v2, :cond_4

    if-eqz v5, :cond_9

    :cond_4
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_9

    const-class v2, [F

    if-eq v0, v2, :cond_9

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_9

    const-class v2, [D

    if-eq v0, v2, :cond_9

    const-class v2, Ljava/lang/String;

    if-eq v0, v2, :cond_9

    const-class v2, Ljava/lang/Integer;

    if-eq v0, v2, :cond_9

    const-class v2, Ljava/lang/Long;

    if-eq v0, v2, :cond_9

    const-class v2, Ljava/math/BigDecimal;

    if-eq v0, v2, :cond_9

    .line 899
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    .line 902
    :cond_5
    const-class v2, Ljava/util/Date;

    if-ne v0, v2, :cond_6

    .line 903
    invoke-direct/range {p0 .. p4}, Laff;->c(Laff$a;Labq;II)V

    goto :goto_3

    .line 904
    :cond_6
    instance-of v2, v1, Ladr;

    if-eqz v2, :cond_7

    .line 905
    invoke-direct/range {p0 .. p4}, Laff;->b(Laff$a;Labq;II)V

    goto :goto_3

    .line 906
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 907
    invoke-direct/range {p0 .. p4}, Laff;->e(Laff$a;Labq;II)V

    goto :goto_3

    :cond_8
    move-object v0, p0

    move-object v1, p2

    move/from16 v2, p3

    move-object v3, p1

    move/from16 v4, p4

    move v5, v8

    .line 909
    invoke-direct/range {v0 .. v5}, Laff;->a(Labq;ILaff$a;IZ)V

    goto :goto_3

    .line 901
    :cond_9
    :goto_2
    invoke-direct/range {p0 .. p4}, Laff;->d(Laff$a;Labq;II)V

    :goto_3
    return-void
.end method

.method private b(Lahq;Ljava/lang/Class;Ljava/util/List;Lry;Ljava/lang/String;J)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lahq;",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "Labq;",
            ">;",
            "Lry;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    move-object/from16 v9, p2

    .line 741
    sget-object v0, Laff;->j:Ljava/lang/String;

    .line 745
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    const/16 v1, 0x200

    goto :goto_0

    :cond_0
    const/16 v1, 0x400

    :goto_0
    const/4 v10, 0x1

    const-string v2, "writeJSONB"

    move-object/from16 v3, p4

    .line 741
    invoke-virtual {v3, v10, v2, v0, v1}, Lry;->a(ILjava/lang/String;Ljava/lang/String;I)Lse;

    move-result-object v11

    .line 753
    new-instance v12, Laff$a;

    const/4 v7, 0x7

    const/4 v8, 0x1

    move-object v0, v12

    move-object v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p6

    move-object/from16 v5, p5

    move-object v6, v11

    invoke-direct/range {v0 .. v8}, Laff$a;-><init>(Lahq;Ljava/lang/Class;JLjava/lang/String;Lse;IZ)V

    .line 754
    invoke-virtual {v12, v10}, Laff$a;->a(Z)V

    .line 756
    new-instance v0, Lsc;

    invoke-direct {v0}, Lsc;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x19

    if-eqz v9, :cond_1

    .line 757
    const-class v3, Ljava/io/Serializable;

    invoke-virtual {v3, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 758
    :cond_1
    new-instance v9, Lsc;

    invoke-direct {v9}, Lsc;-><init>()V

    .line 759
    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    invoke-virtual {v12, v3, v4, v9}, Laff$a;->a(JLsc;)V

    .line 761
    invoke-virtual {v11, v2, v10}, Lse;->b(II)V

    const/16 v4, 0xb6

    .line 762
    sget-object v5, Lrv;->J:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v6, "writeNull"

    const-string v7, "()V"

    move-object v3, v11

    invoke-virtual/range {v3 .. v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v13, 0xa7

    .line 763
    invoke-virtual {v11, v13, v0}, Lse;->a(ILsc;)V

    .line 765
    invoke-virtual {v11, v9}, Lse;->a(Lsc;)V

    .line 767
    new-instance v9, Lsc;

    invoke-direct {v9}, Lsc;-><init>()V

    .line 769
    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    invoke-virtual {v12, v3, v4, v9}, Laff$a;->a(JLsc;)V

    .line 770
    invoke-virtual {v11, v2, v1}, Lse;->b(II)V

    const/16 v4, 0xb6

    .line 771
    iget-object v5, v12, Laff$a;->d:Ljava/lang/String;

    const-string v6, "errorOnNoneSerializable"

    const-string v7, "()V"

    move-object v3, v11

    invoke-virtual/range {v3 .. v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 772
    invoke-virtual {v11, v13, v0}, Lse;->a(ILsc;)V

    .line 774
    invoke-virtual {v11, v9}, Lse;->a(Lsc;)V

    .line 777
    :cond_2
    new-instance v13, Lsc;

    invoke-direct {v13}, Lsc;-><init>()V

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x5

    move-wide/from16 v3, p6

    move-object v5, v11

    move-object v9, v13

    .line 778
    invoke-static/range {v3 .. v9}, Laff;->a(JLse;IIILsc;)V

    .line 780
    invoke-virtual {v11, v2, v1}, Lse;->b(II)V

    .line 781
    invoke-virtual {v11, v2, v10}, Lse;->b(II)V

    const/16 v4, 0xb6

    .line 782
    sget-object v7, Laff;->G:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v6, "writeClassInfo"

    move-object v3, v11

    move-object/from16 v5, p5

    invoke-virtual/range {v3 .. v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 784
    invoke-virtual {v11, v13}, Lse;->a(Lsc;)V

    .line 786
    invoke-virtual {v11, v2, v10}, Lse;->b(II)V

    .line 787
    sget-object v5, Lrv;->J:Ljava/lang/String;

    const-string v6, "startObject"

    const-string v7, "()V"

    invoke-virtual/range {v3 .. v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 789
    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    move-object/from16 v3, p3

    .line 790
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labq;

    const/4 v5, 0x2

    move-object v6, p0

    .line 791
    invoke-direct {p0, v12, v4, v5, v1}, Laff;->j(Laff$a;Labq;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move-object v6, p0

    .line 794
    invoke-virtual {v11, v2, v10}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 795
    sget-object v2, Lrv;->J:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "endObject"

    const-string v5, "()V"

    move-object p1, v11

    move/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move/from16 p6, v3

    invoke-virtual/range {p1 .. p6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 797
    invoke-virtual {v11, v0}, Lse;->a(Lsc;)V

    const/16 v0, 0xb1

    .line 798
    invoke-virtual {v11, v0}, Lse;->a(I)V

    .line 799
    iget v0, v12, Laff$a;->h:I

    add-int/2addr v0, v10

    iget v1, v12, Laff$a;->h:I

    add-int/2addr v1, v10

    invoke-virtual {v11, v0, v1}, Lse;->d(II)V

    return-void
.end method

.method private synthetic b(Lqg;Ljava/lang/Class;JLahq;Lqe;Ljava/util/Map;Ljava/lang/reflect/Field;)V
    .locals 11

    move-object/from16 v0, p7

    .line 216
    invoke-virtual {p1}, Lqg;->b()V

    .line 217
    invoke-virtual/range {p8 .. p8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    invoke-virtual/range {p8 .. p8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    move-object v1, p1

    iput-boolean v2, v1, Lqg;->f:Z

    move-object v3, p0

    move-object v4, p2

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object v9, p1

    move-object/from16 v10, p8

    .line 219
    invoke-virtual/range {v3 .. v10}, Laff;->a(Ljava/lang/Class;JLahq;Lqe;Lqg;Ljava/lang/reflect/Field;)Labq;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 221
    iget-object v2, v1, Labq;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labq;

    if-eqz v2, :cond_2

    .line 223
    invoke-virtual {v2, v1}, Labq;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_2

    .line 225
    iget-object v2, v1, Labq;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private c(Laff$a;Labq;II)V
    .locals 6

    .line 1126
    iget-object v0, p1, Laff$a;->e:Lse;

    const/16 v1, 0x19

    const/4 v2, 0x0

    .line 1127
    invoke-virtual {v0, v1, v2}, Lse;->b(II)V

    .line 1128
    iget-object v2, p1, Laff$a;->d:Ljava/lang/String;

    invoke-static {p4}, Laff;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lrv;->L:Ljava/lang/String;

    const/16 v5, 0xb4

    invoke-virtual {v0, v5, v2, v3, v4}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 1129
    invoke-virtual {v0, v1, v2}, Lse;->b(II)V

    const/4 v1, 0x3

    .line 1130
    invoke-virtual {v0, v1}, Lse;->a(I)V

    .line 1132
    invoke-virtual {p0, p1, p2, p4, p3}, Laff;->a(Laff$a;Labq;II)V

    .line 1133
    sget-object v2, Lrv;->K:Ljava/lang/String;

    sget-object v4, Laff;->p:Ljava/lang/String;

    const/16 v1, 0xb6

    const-string v3, "writeDate"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private c(Laff$a;Labq;IIZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    .line 3079
    iget-object v10, v1, Laff$a;->e:Lse;

    .line 3080
    iget-object v4, v2, Labq;->c:Ljava/lang/Class;

    .line 3082
    invoke-virtual {v1, v4}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v11

    .line 3084
    new-instance v12, Lsc;

    invoke-direct {v12}, Lsc;-><init>()V

    new-instance v13, Lsc;

    invoke-direct {v13}, Lsc;-><init>()V

    new-instance v4, Lsc;

    invoke-direct {v4}, Lsc;-><init>()V

    move/from16 v5, p3

    .line 3086
    invoke-virtual {v0, v1, v2, v3, v5}, Laff;->a(Laff$a;Labq;II)V

    const/16 v5, 0x59

    .line 3087
    invoke-virtual {v10, v5}, Lse;->a(I)V

    const/16 v5, 0x3a

    .line 3088
    invoke-virtual {v10, v5, v11}, Lse;->b(II)V

    const/16 v5, 0xc7

    .line 3090
    invoke-virtual {v10, v5, v13}, Lse;->a(ILsc;)V

    const-string v5, "WRITE_NULLS"

    .line 3092
    invoke-virtual {v1, v5}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v5

    const/16 v6, 0x15

    invoke-virtual {v10, v6, v5}, Lse;->b(II)V

    const/16 v5, 0x9a

    .line 3093
    invoke-virtual {v10, v5, v4}, Lse;->a(ILsc;)V

    const/16 v14, 0xa7

    .line 3095
    invoke-virtual {v10, v14, v12}, Lse;->a(ILsc;)V

    .line 3097
    invoke-virtual {v10, v4}, Lse;->a(Lsc;)V

    .line 3099
    invoke-direct {v0, v1, v2, v3}, Laff;->a(Laff$a;Labq;I)V

    const/4 v15, 0x1

    const/16 v9, 0x19

    .line 3102
    invoke-virtual {v10, v9, v15}, Lse;->b(II)V

    .line 3103
    sget-object v6, Lrv;->J:Ljava/lang/String;

    const/16 v5, 0xb6

    const-string v7, "writeArrayNull"

    const-string v8, "()V"

    const/16 v16, 0x0

    move-object v4, v10

    move v15, v9

    move/from16 v9, v16

    invoke-virtual/range {v4 .. v9}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3105
    invoke-virtual {v10, v14, v12}, Lse;->a(ILsc;)V

    .line 3107
    invoke-virtual {v10, v13}, Lse;->a(Lsc;)V

    .line 3109
    invoke-direct {v0, v1, v2, v3}, Laff;->a(Laff$a;Labq;I)V

    const/4 v1, 0x1

    .line 3111
    invoke-virtual {v10, v15, v1}, Lse;->b(II)V

    .line 3112
    invoke-virtual {v10, v15, v11}, Lse;->b(II)V

    .line 3113
    sget-object v3, Lrv;->J:Ljava/lang/String;

    const/16 v2, 0xb6

    const-string v4, "writeInt64"

    const-string v5, "([J)V"

    const/4 v6, 0x0

    move-object v1, v10

    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3115
    invoke-virtual {v10, v12}, Lse;->a(Lsc;)V

    return-void
.end method

.method private d(Laff$a;Labq;II)V
    .locals 8

    .line 1137
    iget-object v0, p1, Laff$a;->e:Lse;

    .line 1138
    iget-object v1, p2, Labq;->c:Ljava/lang/Class;

    .line 1140
    const-class v2, Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    .line 1141
    invoke-virtual {p0, p1, p2, p4, p3}, Laff;->a(Laff$a;Labq;II)V

    const/16 p3, 0xc0

    const-string p4, "java/lang/String"

    .line 1142
    invoke-virtual {v0, p3, p4}, Lse;->a(ILjava/lang/String;)V

    .line 1143
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "FIELD_VALUE_"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Labq;->c:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Laff$a;->a(Ljava/lang/Object;)I

    move-result p2

    const/16 p3, 0x3a

    .line 1144
    invoke-virtual {v0, p3, p2}, Lse;->b(II)V

    .line 1146
    invoke-static {p1, v4, v3, p2}, Laff;->a(Laff$a;ZZI)V

    return-void

    :cond_0
    const/16 v2, 0x19

    .line 1150
    invoke-virtual {v0, v2, v3}, Lse;->b(II)V

    .line 1151
    invoke-virtual {p0, p1, p2, p4, p3}, Laff;->a(Laff$a;Labq;II)V

    .line 1153
    iget-object p3, p2, Labq;->g:Ljava/text/DecimalFormat;

    if-eqz p3, :cond_4

    .line 1154
    sget-object p3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v3, "Ljava/text/DecimalFormat;"

    const-string v5, "decimalFormat"

    const/16 v6, 0xb4

    if-ne v1, p3, :cond_1

    .line 1155
    invoke-virtual {v0, v2, v4}, Lse;->b(II)V

    .line 1156
    iget-object p1, p1, Laff$a;->d:Ljava/lang/String;

    invoke-static {p4}, Laff;->a(I)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lrv;->L:Ljava/lang/String;

    invoke-virtual {v0, v6, p1, p2, p3}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    sget-object p1, Lrv;->K:Ljava/lang/String;

    invoke-virtual {v0, v6, p1, v5, v3}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb6

    .line 1158
    sget-object v2, Lrv;->J:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "writeDouble"

    const-string v4, "(DLjava/text/DecimalFormat;)V"

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1159
    :cond_1
    sget-object p3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, p3, :cond_2

    .line 1160
    invoke-virtual {v0, v2, v4}, Lse;->b(II)V

    .line 1161
    iget-object p1, p1, Laff$a;->d:Ljava/lang/String;

    invoke-static {p4}, Laff;->a(I)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lrv;->L:Ljava/lang/String;

    invoke-virtual {v0, v6, p1, p2, p3}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    sget-object p1, Lrv;->K:Ljava/lang/String;

    invoke-virtual {v0, v6, p1, v5, v3}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb6

    .line 1163
    sget-object v2, Lrv;->J:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "writeFloat"

    const-string v4, "(FLjava/text/DecimalFormat;)V"

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1164
    :cond_2
    const-class p3, Ljava/math/BigDecimal;

    if-ne v1, p3, :cond_3

    .line 1165
    iget-wide p2, p2, Labq;->d:J

    invoke-virtual {v0, p2, p3}, Lse;->a(J)V

    .line 1166
    invoke-virtual {v0, v2, v4}, Lse;->b(II)V

    .line 1167
    iget-object p1, p1, Laff$a;->d:Ljava/lang/String;

    invoke-static {p4}, Laff;->a(I)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lrv;->L:Ljava/lang/String;

    invoke-virtual {v0, v6, p1, p2, p3}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    sget-object p1, Lrv;->K:Ljava/lang/String;

    invoke-virtual {v0, v6, p1, v5, v3}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb6

    .line 1169
    sget-object v2, Lrv;->J:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "writeDecimal"

    const-string v4, "(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V"

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    .line 1171
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 1177
    :cond_4
    sget-object p3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string p4, "writeDouble"

    const-string v2, "writeFloat"

    const-string v4, "writeInt16"

    const-string v5, "writeBool"

    const-string v6, "writeInt64"

    const-string v7, "writeInt32"

    if-ne v1, p3, :cond_5

    const-string p1, "(Z)V"

    :goto_1
    move-object v4, p1

    move-object v3, v5

    goto/16 :goto_8

    .line 1180
    :cond_5
    sget-object p3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v1, p3, :cond_6

    const-string p1, "writeChar"

    const-string p2, "(C)V"

    :goto_2
    move-object v3, p1

    move-object v4, p2

    goto/16 :goto_8

    .line 1183
    :cond_6
    sget-object p3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, p3, :cond_7

    const-string p1, "writeInt8"

    const-string p2, "(B)V"

    goto :goto_2

    .line 1186
    :cond_7
    sget-object p3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, p3, :cond_8

    const-string p1, "(S)V"

    :goto_3
    move-object v3, v4

    move-object v4, p1

    goto/16 :goto_8

    .line 1189
    :cond_8
    sget-object p3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, p3, :cond_9

    const-string p1, "(I)V"

    :goto_4
    move-object v4, p1

    move-object v3, v7

    goto/16 :goto_8

    .line 1192
    :cond_9
    const-class p3, Ljava/lang/Integer;

    if-ne v1, p3, :cond_a

    const-string p1, "(Ljava/lang/Integer;)V"

    goto :goto_4

    .line 1195
    :cond_a
    sget-object p3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, p3, :cond_b

    const-string p1, "(J)V"

    :goto_5
    move-object v4, p1

    move-object v3, v6

    goto/16 :goto_8

    .line 1198
    :cond_b
    const-class p3, Ljava/lang/Long;

    if-ne v1, p3, :cond_c

    const-string p1, "(Ljava/lang/Long;)V"

    goto :goto_5

    .line 1201
    :cond_c
    sget-object p3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, p3, :cond_d

    const-string p1, "(F)V"

    :goto_6
    move-object v4, p1

    move-object v3, v2

    goto/16 :goto_8

    .line 1204
    :cond_d
    sget-object p3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, p3, :cond_e

    const-string p1, "(D)V"

    :goto_7
    move-object v4, p1

    move-object v3, p4

    goto/16 :goto_8

    .line 1207
    :cond_e
    const-class p3, [Z

    if-ne v1, p3, :cond_f

    const-string p1, "([Z)V"

    goto :goto_1

    .line 1210
    :cond_f
    const-class p3, [C

    if-ne v1, p3, :cond_10

    const-string p1, "writeString"

    const-string p2, "([C)V"

    goto :goto_2

    .line 1213
    :cond_10
    const-class p3, [B

    if-ne v1, p3, :cond_11

    const-string p1, "writeBinary"

    const-string p2, "([B)V"

    goto :goto_2

    .line 1216
    :cond_11
    const-class p3, [S

    if-ne v1, p3, :cond_12

    const-string p1, "([S)V"

    goto :goto_3

    .line 1219
    :cond_12
    const-class p3, [I

    if-ne v1, p3, :cond_13

    const-string p1, "([I)V"

    goto :goto_4

    .line 1222
    :cond_13
    const-class p3, [J

    if-ne v1, p3, :cond_14

    iget-object p1, p1, Laff$a;->a:Lahq;

    const-class p3, Ljava/lang/Long;

    invoke-virtual {p1, p3}, Lahq;->b(Ljava/lang/Class;)Laem;

    move-result-object p1

    sget-object p3, Lagm;->a:Lagm;

    if-ne p1, p3, :cond_14

    const-string p1, "([J)V"

    goto :goto_5

    .line 1225
    :cond_14
    const-class p1, [F

    if-ne v1, p1, :cond_15

    const-string p1, "([F)V"

    goto :goto_6

    .line 1228
    :cond_15
    const-class p1, [D

    if-ne v1, p1, :cond_16

    const-string p1, "([D)V"

    goto :goto_7

    .line 1231
    :cond_16
    const-class p1, Ljava/math/BigDecimal;

    if-ne v1, p1, :cond_17

    .line 1234
    iget-wide p1, p2, Labq;->d:J

    invoke-virtual {v0, p1, p2}, Lse;->a(J)V

    .line 1235
    invoke-virtual {v0, v3}, Lse;->a(I)V

    const-string p1, "writeDecimal"

    const-string p2, "(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V"

    goto/16 :goto_2

    .line 1236
    :cond_17
    const-class p1, Ljava/lang/Enum;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_18

    const-string p1, "writeEnum"

    const-string p2, "(Ljava/lang/Enum;)V"

    goto/16 :goto_2

    :goto_8
    const/16 v1, 0xb6

    .line 1246
    sget-object v2, Lrv;->J:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1243
    :cond_18
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method private d(Laff$a;Labq;IIZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    .line 3125
    iget-object v7, v1, Laff$a;->e:Lse;

    .line 3126
    iget-object v4, v2, Labq;->f:Ljava/lang/String;

    .line 3127
    iget-object v5, v1, Laff$a;->d:Ljava/lang/String;

    .line 3129
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v6}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v6

    const-string v8, "WRITE_DEFAULT_VALUE"

    .line 3130
    invoke-virtual {v1, v8}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v8

    .line 3131
    new-instance v9, Lsc;

    invoke-direct {v9}, Lsc;-><init>()V

    new-instance v10, Lsc;

    invoke-direct {v10}, Lsc;-><init>()V

    move/from16 v11, p3

    .line 3133
    invoke-virtual {v0, v1, v2, v3, v11}, Laff;->a(Laff$a;Labq;II)V

    const/16 v11, 0x5c

    .line 3134
    invoke-virtual {v7, v11}, Lse;->a(I)V

    const/16 v11, 0x37

    .line 3135
    invoke-virtual {v7, v11, v6}, Lse;->b(II)V

    const/16 v11, 0x9

    .line 3136
    invoke-virtual {v7, v11}, Lse;->a(I)V

    const/16 v11, 0x94

    .line 3137
    invoke-virtual {v7, v11}, Lse;->a(I)V

    const/16 v11, 0x9a

    .line 3138
    invoke-virtual {v7, v11, v9}, Lse;->a(ILsc;)V

    .line 3140
    iget-object v11, v2, Labq;->y:Ljava/lang/Object;

    if-nez v11, :cond_0

    const/16 v11, 0x15

    .line 3141
    invoke-virtual {v7, v11, v8}, Lse;->b(II)V

    const/16 v8, 0x99

    .line 3142
    invoke-virtual {v7, v8, v9}, Lse;->a(ILsc;)V

    const/16 v8, 0xa7

    .line 3143
    invoke-virtual {v7, v8, v10}, Lse;->a(ILsc;)V

    .line 3145
    :cond_0
    invoke-virtual {v7, v9}, Lse;->a(Lsc;)V

    const-string v8, "iso8601"

    .line 3147
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v11, 0x19

    if-nez v4, :cond_2

    .line 3148
    iget-wide v12, v2, Labq;->d:J

    sget-object v14, Lcom/alibaba/fastjson2/ab$b;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v14, v14, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object v8, Lcom/alibaba/fastjson2/ab$b;->WriteLongAsString:Lcom/alibaba/fastjson2/ab$b;

    move-object/from16 p5, v10

    iget-wide v9, v8, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long v8, v14, v9

    sget-object v10, Lcom/alibaba/fastjson2/ab$b;->BrowserCompatible:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v14, v10, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v8, v14

    and-long/2addr v8, v12

    const-wide/16 v12, 0x0

    cmp-long v8, v8, v12

    if-eqz v8, :cond_1

    goto :goto_1

    .line 3163
    :cond_1
    invoke-direct {v0, v1, v2, v3}, Laff;->a(Laff$a;Labq;I)V

    const/4 v1, 0x1

    .line 3165
    invoke-virtual {v7, v11, v1}, Lse;->b(II)V

    const/16 v1, 0x16

    .line 3166
    invoke-virtual {v7, v1, v6}, Lse;->b(II)V

    const/16 v2, 0xb6

    .line 3167
    sget-object v3, Lrv;->J:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v4, "writeInt64"

    const-string v5, "(J)V"

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    move-object/from16 v1, p5

    goto :goto_3

    :cond_2
    move-object/from16 p5, v10

    :goto_1
    const/4 v1, 0x0

    .line 3149
    invoke-virtual {v7, v11, v1}, Lse;->b(II)V

    const/16 v1, 0xb4

    .line 3150
    invoke-static/range {p4 .. p4}, Laff;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lrv;->L:Ljava/lang/String;

    invoke-virtual {v7, v1, v5, v2, v3}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 3152
    invoke-virtual {v7, v11, v1}, Lse;->b(II)V

    const/16 v1, 0x16

    .line 3153
    invoke-virtual {v7, v1, v6}, Lse;->b(II)V

    const/16 v2, 0xb6

    .line 3155
    sget-object v3, Lrv;->K:Ljava/lang/String;

    if-eqz v4, :cond_3

    const-string v1, "writeDate"

    goto :goto_2

    :cond_3
    const-string v1, "writeInt64"

    :goto_2
    move-object v4, v1

    .line 3158
    sget-object v5, Laff;->m:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, v7

    .line 3155
    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 3170
    :goto_3
    invoke-virtual {v7, v1}, Lse;->a(Lsc;)V

    return-void
.end method

.method private e(Laff$a;Labq;II)V
    .locals 6

    .line 1255
    iget-object v0, p1, Laff$a;->e:Lse;

    .line 1256
    iget-object v1, p2, Labq;->c:Ljava/lang/Class;

    const-class v2, [Ljava/lang/String;

    const/4 v3, 0x1

    const/16 v4, 0x19

    if-ne v1, v2, :cond_0

    .line 1257
    invoke-virtual {v0, v4, v3}, Lse;->b(II)V

    .line 1258
    invoke-virtual {p0, p1, p2, p4, p3}, Laff;->a(Laff$a;Labq;II)V

    const/16 v1, 0xb6

    .line 1259
    sget-object v2, Lrv;->J:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "writeString"

    const-string v4, "([Ljava/lang/String;)V"

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1261
    invoke-virtual {v0, v4, p2}, Lse;->b(II)V

    const/16 p2, 0xb4

    .line 1262
    iget-object p1, p1, Laff$a;->d:Ljava/lang/String;

    invoke-static {p4}, Laff;->a(I)Ljava/lang/String;

    move-result-object p4

    sget-object v1, Lrv;->L:Ljava/lang/String;

    invoke-virtual {v0, p2, p1, p4, v1}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    invoke-virtual {v0, v4, v3}, Lse;->b(II)V

    .line 1264
    invoke-virtual {v0, v4, p3}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 1265
    sget-object v2, Lrv;->K:Ljava/lang/String;

    sget-object v4, Laff;->i:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "writeValue"

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method private e(Laff$a;Labq;IIZ)V
    .locals 7

    .line 3226
    iget-object p5, p1, Laff$a;->e:Lse;

    .line 3227
    iget-object v0, p2, Labq;->f:Ljava/lang/String;

    .line 3228
    iget-object v1, p1, Laff$a;->d:Ljava/lang/String;

    .line 3230
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v1}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v1

    const-string v2, "WRITE_DEFAULT_VALUE"

    .line 3231
    invoke-virtual {p1, v2}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v2

    .line 3232
    new-instance v3, Lsc;

    invoke-direct {v3}, Lsc;-><init>()V

    new-instance v6, Lsc;

    invoke-direct {v6}, Lsc;-><init>()V

    .line 3234
    invoke-virtual {p0, p1, p2, p4, p3}, Laff;->a(Laff$a;Labq;II)V

    const/16 p3, 0x59

    .line 3235
    invoke-virtual {p5, p3}, Lse;->a(I)V

    const/16 p3, 0x36

    .line 3236
    invoke-virtual {p5, p3, v1}, Lse;->b(II)V

    const/16 p3, 0x9a

    .line 3237
    invoke-virtual {p5, p3, v3}, Lse;->a(ILsc;)V

    .line 3239
    iget-object p3, p2, Labq;->y:Ljava/lang/Object;

    const/16 v4, 0x15

    if-nez p3, :cond_0

    .line 3240
    invoke-virtual {p5, v4, v2}, Lse;->b(II)V

    const/16 p3, 0x99

    .line 3241
    invoke-virtual {p5, p3, v3}, Lse;->a(ILsc;)V

    const/16 p3, 0xa7

    .line 3242
    invoke-virtual {p5, p3, v6}, Lse;->a(ILsc;)V

    .line 3244
    :cond_0
    invoke-virtual {p5, v3}, Lse;->a(Lsc;)V

    .line 3246
    invoke-direct {p0, p1, p2, p4}, Laff;->a(Laff$a;Labq;I)V

    const/16 p2, 0x19

    const/4 p3, 0x1

    .line 3248
    invoke-virtual {p5, p2, p3}, Lse;->b(II)V

    .line 3249
    invoke-virtual {p5, v4, v1}, Lse;->b(II)V

    const-string p2, "string"

    .line 3250
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 v1, 0xb8

    const/4 v5, 0x0

    const-string v2, "java/lang/Integer"

    const-string v3, "toString"

    const-string v4, "(I)Ljava/lang/String;"

    move-object v0, p5

    .line 3251
    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0xb6

    .line 3252
    sget-object v2, Lrv;->J:Ljava/lang/String;

    const-string v3, "writeString"

    const-string v4, "(Ljava/lang/String;)V"

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 3254
    invoke-virtual {p5, v0}, Lse;->a(Ljava/lang/String;)V

    const/16 v1, 0xb6

    .line 3255
    sget-object v2, Lrv;->J:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "writeInt32"

    const-string v4, "(ILjava/lang/String;)V"

    move-object v0, p5

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 3257
    iget-object p1, p1, Laff$a;->d:Ljava/lang/String;

    invoke-static {p4}, Laff;->a(I)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lrv;->L:Ljava/lang/String;

    const/16 p4, 0xb4

    invoke-virtual {p5, p4, p1, p2, p3}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3258
    sget-object p1, Lrv;->K:Ljava/lang/String;

    const-string p2, "decimalFormat"

    const-string p3, "Ljava/text/DecimalFormat;"

    invoke-virtual {p5, p4, p1, p2, p3}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb6

    .line 3259
    sget-object v2, Lrv;->J:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "writeInt32"

    const-string v4, "(ILjava/text/DecimalFormat;)V"

    move-object v0, p5

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const/16 v1, 0xb6

    .line 3261
    sget-object v2, Lrv;->J:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "writeInt32"

    const-string v4, "(I)V"

    move-object v0, p5

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3264
    :goto_0
    invoke-virtual {p5, v6}, Lse;->a(Lsc;)V

    return-void
.end method

.method private f(Laff$a;Labq;II)V
    .locals 9

    .line 1688
    iget-object v0, p1, Laff$a;->e:Lse;

    .line 1690
    iget-object v0, p2, Labq;->c:Ljava/lang/Class;

    .line 1692
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 1693
    invoke-direct/range {v2 .. v7}, Laff;->f(Laff$a;Labq;IIZ)V

    goto/16 :goto_2

    .line 1694
    :cond_0
    const-class v1, [Z

    if-eq v0, v1, :cond_10

    const-class v1, [B

    if-eq v0, v1, :cond_10

    const-class v1, [C

    if-eq v0, v1, :cond_10

    const-class v1, [S

    if-eq v0, v1, :cond_10

    const-class v1, [F

    if-eq v0, v1, :cond_10

    const-class v1, [D

    if-ne v0, v1, :cond_1

    goto/16 :goto_1

    .line 1702
    :cond_1
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_f

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_f

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_f

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_f

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    goto/16 :goto_0

    .line 1710
    :cond_2
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 1711
    invoke-direct/range {v2 .. v7}, Laff;->e(Laff$a;Labq;IIZ)V

    goto/16 :goto_2

    .line 1712
    :cond_3
    const-class v1, [I

    if-ne v0, v1, :cond_4

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 1713
    invoke-virtual/range {v2 .. v7}, Laff;->a(Laff$a;Labq;IIZ)V

    goto/16 :goto_2

    .line 1714
    :cond_4
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 1715
    invoke-direct/range {v2 .. v7}, Laff;->d(Laff$a;Labq;IIZ)V

    goto/16 :goto_2

    .line 1716
    :cond_5
    const-class v1, [J

    if-ne v0, v1, :cond_6

    iget-object v1, p1, Laff$a;->a:Lahq;

    const-class v2, Ljava/lang/Long;

    .line 1717
    invoke-virtual {v1, v2}, Lahq;->b(Ljava/lang/Class;)Laem;

    move-result-object v1

    sget-object v2, Lagm;->a:Lagm;

    if-ne v1, v2, :cond_6

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    .line 1719
    invoke-direct/range {v3 .. v8}, Laff;->c(Laff$a;Labq;IIZ)V

    goto :goto_2

    .line 1720
    :cond_6
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_7

    .line 1721
    invoke-direct {p0, p1, p2, p3, p4}, Laff;->k(Laff$a;Labq;II)V

    goto :goto_2

    .line 1722
    :cond_7
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_8

    .line 1723
    invoke-direct {p0, p1, p2, p3, p4}, Laff;->l(Laff$a;Labq;II)V

    goto :goto_2

    .line 1724
    :cond_8
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_9

    .line 1725
    invoke-direct {p0, p1, p2, p3, p4}, Laff;->n(Laff$a;Labq;II)V

    goto :goto_2

    .line 1726
    :cond_9
    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_a

    .line 1727
    invoke-direct {p0, p1, p2, p3, p4}, Laff;->m(Laff$a;Labq;II)V

    goto :goto_2

    .line 1728
    :cond_a
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_b

    .line 1729
    invoke-direct {p0, p1, p2, p3, p4}, Laff;->r(Laff$a;Labq;II)V

    goto :goto_2

    .line 1730
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p1, Laff$a;->a:Lahq;

    .line 1731
    invoke-static {v0, v1}, Laax;->a(Ljava/lang/Class;Lsk;)Ljava/lang/reflect/Member;

    move-result-object v1

    if-nez v1, :cond_c

    instance-of v1, p2, Laea;

    if-nez v1, :cond_c

    .line 1734
    invoke-direct {p0, p1, p2, p3, p4}, Laff;->g(Laff$a;Labq;II)V

    goto :goto_2

    .line 1735
    :cond_c
    const-class v1, Ljava/util/Date;

    if-ne v0, v1, :cond_d

    .line 1736
    invoke-direct {p0, p1, p2, p3, p4}, Laff;->p(Laff$a;Labq;II)V

    goto :goto_2

    .line 1737
    :cond_d
    const-class v1, Ljava/util/List;

    if-ne v0, v1, :cond_e

    .line 1738
    invoke-direct {p0, p1, p2, p3, p4}, Laff;->i(Laff$a;Labq;II)V

    goto :goto_2

    .line 1740
    :cond_e
    invoke-direct {p0, p1, p2, p3, p4}, Laff;->h(Laff$a;Labq;II)V

    goto :goto_2

    .line 1708
    :cond_f
    :goto_0
    invoke-direct {p0, p1, p2, p4}, Laff;->a(Laff$a;Labq;I)V

    .line 1709
    invoke-direct {p0, p1, p2, p3, p4}, Laff;->d(Laff$a;Labq;II)V

    goto :goto_2

    .line 1701
    :cond_10
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Laff;->q(Laff$a;Labq;II)V

    :goto_2
    return-void
.end method

.method private f(Laff$a;Labq;IIZ)V
    .locals 7

    .line 3274
    iget-object p5, p1, Laff$a;->e:Lse;

    .line 3275
    iget-object v0, p1, Laff$a;->d:Ljava/lang/String;

    .line 3277
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v1}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v1

    const-string v2, "WRITE_DEFAULT_VALUE"

    .line 3278
    invoke-virtual {p1, v2}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v2

    .line 3279
    new-instance v3, Lsc;

    invoke-direct {v3}, Lsc;-><init>()V

    new-instance v6, Lsc;

    invoke-direct {v6}, Lsc;-><init>()V

    .line 3281
    invoke-virtual {p0, p1, p2, p4, p3}, Laff;->a(Laff$a;Labq;II)V

    const/16 p1, 0x59

    .line 3282
    invoke-virtual {p5, p1}, Lse;->a(I)V

    const/16 p1, 0x36

    .line 3283
    invoke-virtual {p5, p1, v1}, Lse;->b(II)V

    const/16 p1, 0x9a

    .line 3284
    invoke-virtual {p5, p1, v3}, Lse;->a(ILsc;)V

    .line 3286
    iget-object p1, p2, Labq;->y:Ljava/lang/Object;

    const/16 p2, 0x15

    if-nez p1, :cond_0

    .line 3287
    invoke-virtual {p5, p2, v2}, Lse;->b(II)V

    const/16 p1, 0x99

    .line 3288
    invoke-virtual {p5, p1, v3}, Lse;->a(ILsc;)V

    const/16 p1, 0xa7

    .line 3289
    invoke-virtual {p5, p1, v6}, Lse;->a(ILsc;)V

    .line 3291
    :cond_0
    invoke-virtual {p5, v3}, Lse;->a(Lsc;)V

    const/4 p1, 0x0

    const/16 p3, 0x19

    .line 3293
    invoke-virtual {p5, p3, p1}, Lse;->b(II)V

    const/16 p1, 0xb4

    .line 3294
    invoke-static {p4}, Laff;->a(I)Ljava/lang/String;

    move-result-object p4

    sget-object v2, Lrv;->L:Ljava/lang/String;

    invoke-virtual {p5, p1, v0, p4, v2}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 3295
    invoke-virtual {p5, p3, p1}, Lse;->b(II)V

    .line 3296
    invoke-virtual {p5, p2, v1}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 3297
    sget-object v2, Lrv;->K:Ljava/lang/String;

    sget-object v4, Laff;->q:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "writeBool"

    move-object v0, p5

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3299
    invoke-virtual {p5, v6}, Lse;->a(Lsc;)V

    return-void
.end method

.method private g(Laff$a;Labq;II)V
    .locals 11

    .line 1750
    iget-object v0, p2, Labq;->c:Ljava/lang/Class;

    .line 1752
    iget-object v7, p1, Laff$a;->e:Lse;

    .line 1754
    invoke-virtual {p1, v0}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v0

    .line 1756
    invoke-virtual {p0, p1, p2, p4, p3}, Laff;->a(Laff$a;Labq;II)V

    const/16 p3, 0x59

    .line 1757
    invoke-virtual {v7, p3}, Lse;->a(I)V

    const/16 p3, 0x3a

    .line 1758
    invoke-virtual {v7, p3, v0}, Lse;->b(II)V

    .line 1760
    new-instance p3, Lsc;

    invoke-direct {p3}, Lsc;-><init>()V

    new-instance v8, Lsc;

    invoke-direct {v8}, Lsc;-><init>()V

    const/16 v1, 0xc6

    .line 1761
    invoke-virtual {v7, v1, p3}, Lse;->a(ILsc;)V

    const/16 v9, 0x19

    const/4 v1, 0x0

    .line 1764
    invoke-virtual {v7, v9, v1}, Lse;->b(II)V

    .line 1765
    iget-object v1, p1, Laff$a;->d:Ljava/lang/String;

    invoke-static {p4}, Laff;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lrv;->L:Ljava/lang/String;

    const/16 v4, 0xb4

    invoke-virtual {v7, v4, v1, v2, v3}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x1

    .line 1766
    invoke-virtual {v7, v9, v10}, Lse;->b(II)V

    .line 1767
    invoke-virtual {v7, v9, v0}, Lse;->b(II)V

    .line 1769
    sget-object v3, Lrv;->K:Ljava/lang/String;

    sget-object v5, Laff;->y:Ljava/lang/String;

    const/16 v2, 0xb6

    const-string v4, "writeEnum"

    const/4 v6, 0x0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0xa7

    .line 1770
    invoke-virtual {v7, v0, v8}, Lse;->a(ILsc;)V

    .line 1772
    invoke-virtual {v7, p3}, Lse;->a(Lsc;)V

    const-string p3, "WRITE_NULLS"

    .line 1775
    invoke-virtual {p1, p3}, Laff$a;->a(Ljava/lang/Object;)I

    move-result p3

    const/16 v0, 0x15

    invoke-virtual {v7, v0, p3}, Lse;->b(II)V

    const/16 p3, 0x99

    .line 1776
    invoke-virtual {v7, p3, v8}, Lse;->a(ILsc;)V

    .line 1779
    invoke-direct {p0, p1, p2, p4}, Laff;->a(Laff$a;Labq;I)V

    .line 1782
    invoke-virtual {v7, v9, v10}, Lse;->b(II)V

    .line 1783
    sget-object v3, Lrv;->J:Ljava/lang/String;

    const-string v4, "writeNull"

    const-string v5, "()V"

    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1785
    invoke-virtual {v7, v8}, Lse;->a(Lsc;)V

    return-void
.end method

.method private h(Laff$a;Labq;II)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 1794
    iget-object v5, v2, Labq;->c:Ljava/lang/Class;

    .line 1795
    iget-object v6, v2, Labq;->b:Ljava/lang/reflect/Type;

    .line 1796
    iget-object v7, v2, Labq;->a:Ljava/lang/String;

    .line 1798
    invoke-static {v5}, Lahq;->d(Ljava/lang/Class;)Z

    move-result v8

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    .line 1799
    invoke-virtual {v1, v5}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v10

    if-eqz v8, :cond_0

    const-string v12, "REF_PATH"

    .line 1803
    invoke-virtual {v1, v12}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    .line 1806
    :goto_0
    iget-wide v13, v2, Labq;->d:J

    move-object/from16 v16, v12

    iget-wide v11, v1, Laff$a;->c:J

    or-long/2addr v11, v13

    .line 1807
    iget-object v13, v1, Laff$a;->e:Lse;

    .line 1809
    new-instance v14, Lsc;

    invoke-direct {v14}, Lsc;-><init>()V

    new-instance v15, Lsc;

    invoke-direct {v15}, Lsc;-><init>()V

    .line 1811
    invoke-virtual/range {p2 .. p2}, Labq;->e()Z

    move-result v17

    const/16 v9, 0x19

    if-eqz v17, :cond_1

    move-object/from16 v23, v6

    const/4 v6, 0x0

    .line 1812
    invoke-virtual {v13, v9, v6}, Lse;->b(II)V

    .line 1813
    iget-object v6, v1, Laff$a;->d:Ljava/lang/String;

    invoke-static/range {p4 .. p4}, Laff;->a(I)Ljava/lang/String;

    move-result-object v9

    move-wide/from16 v24, v11

    sget-object v11, Lrv;->L:Ljava/lang/String;

    const/16 v12, 0xb4

    invoke-virtual {v13, v12, v6, v9, v11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    const/16 v9, 0x19

    .line 1814
    invoke-virtual {v13, v9, v6}, Lse;->b(II)V

    .line 1815
    invoke-virtual {v13, v9, v3}, Lse;->b(II)V

    const/16 v18, 0xb6

    .line 1816
    sget-object v19, Lrv;->K:Ljava/lang/String;

    sget-object v21, Laff;->A:Ljava/lang/String;

    const/16 v22, 0x0

    const-string v20, "write"

    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v22}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v6, 0x57

    .line 1818
    invoke-virtual {v13, v6}, Lse;->a(I)V

    const/16 v6, 0xa7

    .line 1819
    invoke-virtual {v13, v6, v15}, Lse;->a(ILsc;)V

    goto :goto_1

    :cond_1
    move-object/from16 v23, v6

    move-wide/from16 v24, v11

    .line 1822
    :goto_1
    invoke-virtual {v0, v1, v2, v4, v3}, Laff;->a(Laff$a;Labq;II)V

    const/16 v6, 0x59

    .line 1823
    invoke-virtual {v13, v6}, Lse;->a(I)V

    const/16 v9, 0x3a

    .line 1824
    invoke-virtual {v13, v9, v10}, Lse;->b(II)V

    const/16 v11, 0xc6

    .line 1826
    invoke-virtual {v13, v11, v14}, Lse;->a(ILsc;)V

    .line 1828
    const-class v12, Ljava/io/Serializable;

    invoke-virtual {v12, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    const/16 v11, 0x9a

    if-nez v12, :cond_3

    const-class v12, Ljava/util/List;

    if-eq v5, v12, :cond_3

    const/16 v9, 0x19

    const/4 v12, 0x1

    .line 1829
    invoke-virtual {v13, v9, v12}, Lse;->b(II)V

    .line 1830
    invoke-virtual/range {p2 .. p2}, Labq;->a()Z

    move-result v9

    if-nez v9, :cond_2

    const/16 v18, 0xb6

    .line 1831
    sget-object v19, Lrv;->J:Ljava/lang/String;

    const/16 v22, 0x0

    const-string v20, "isIgnoreNoneSerializable"

    const-string v21, "()Z"

    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v22}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_2
    const/16 v9, 0x19

    .line 1833
    invoke-virtual {v13, v9, v10}, Lse;->b(II)V

    const/16 v18, 0xb6

    .line 1834
    sget-object v19, Lrv;->J:Ljava/lang/String;

    const/16 v22, 0x0

    const-string v20, "isIgnoreNoneSerializable"

    const-string v21, "(Ljava/lang/Object;)Z"

    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v22}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1836
    :goto_2
    invoke-virtual {v13, v11, v15}, Lse;->a(ILsc;)V

    :cond_3
    const-string v12, "REF_DETECT"

    if-eqz v8, :cond_6

    .line 1840
    new-instance v9, Lsc;

    invoke-direct {v9}, Lsc;-><init>()V

    new-instance v11, Lsc;

    invoke-direct {v11}, Lsc;-><init>()V

    .line 1842
    invoke-virtual {v1, v12}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v6

    move-object/from16 v26, v14

    .line 1844
    const-class v14, Ljava/lang/Object;

    if-ne v5, v14, :cond_4

    move-object/from16 v27, v12

    const/16 v12, 0x19

    const/4 v14, 0x1

    .line 1845
    invoke-virtual {v13, v12, v14}, Lse;->b(II)V

    .line 1846
    invoke-virtual {v13, v12, v10}, Lse;->b(II)V

    const/16 v18, 0xb6

    .line 1847
    sget-object v19, Lrv;->J:Ljava/lang/String;

    const/16 v22, 0x0

    const-string v20, "isRefDetect"

    const-string v21, "(Ljava/lang/Object;)Z"

    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v22}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v14, v7

    move/from16 v28, v8

    goto :goto_3

    :cond_4
    move-object/from16 v27, v12

    .line 1849
    sget-object v12, Lcom/alibaba/fastjson2/ab$b;->ReferenceDetection:Lcom/alibaba/fastjson2/ab$b;

    move-object v14, v7

    move/from16 v28, v8

    iget-wide v7, v12, Lcom/alibaba/fastjson2/ab$b;->mask:J

    const/4 v12, 0x0

    invoke-virtual {v1, v7, v8, v12}, Laff$a;->a(JLsc;)V

    :goto_3
    const/16 v7, 0x59

    .line 1851
    invoke-virtual {v13, v7}, Lse;->a(I)V

    const/16 v7, 0x36

    .line 1852
    invoke-virtual {v13, v7, v6}, Lse;->b(II)V

    const/16 v7, 0x99

    .line 1853
    invoke-virtual {v13, v7, v9}, Lse;->a(ILsc;)V

    const/16 v7, 0x19

    .line 1855
    invoke-virtual {v13, v7, v3}, Lse;->b(II)V

    .line 1856
    invoke-virtual {v13, v7, v10}, Lse;->b(II)V

    const/16 v3, 0xa6

    .line 1857
    invoke-virtual {v13, v3, v11}, Lse;->a(ILsc;)V

    .line 1859
    invoke-direct {v0, v1, v2, v4}, Laff;->a(Laff$a;Labq;I)V

    const/4 v3, 0x1

    .line 1861
    invoke-virtual {v13, v7, v3}, Lse;->b(II)V

    const-string v3, ".."

    .line 1862
    invoke-virtual {v13, v3}, Lse;->a(Ljava/lang/String;)V

    const/16 v18, 0xb6

    .line 1863
    sget-object v19, Lrv;->J:Ljava/lang/String;

    const/16 v22, 0x0

    const-string v20, "writeReference"

    const-string v21, "(Ljava/lang/String;)V"

    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v22}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v3, 0xa7

    .line 1865
    invoke-virtual {v13, v3, v15}, Lse;->a(ILsc;)V

    .line 1867
    invoke-virtual {v13, v11}, Lse;->a(Lsc;)V

    const/4 v3, 0x1

    const/16 v7, 0x19

    .line 1869
    invoke-virtual {v13, v7, v3}, Lse;->b(II)V

    const/4 v3, 0x0

    .line 1870
    invoke-virtual {v13, v7, v3}, Lse;->b(II)V

    .line 1871
    iget-object v3, v1, Laff$a;->d:Ljava/lang/String;

    invoke-static/range {p4 .. p4}, Laff;->a(I)Ljava/lang/String;

    move-result-object v8

    sget-object v11, Lrv;->L:Ljava/lang/String;

    const/16 v12, 0xb4

    invoke-virtual {v13, v12, v3, v8, v11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    invoke-virtual {v13, v7, v10}, Lse;->b(II)V

    .line 1873
    sget-object v19, Lrv;->J:Ljava/lang/String;

    sget-object v21, Laff;->F:Ljava/lang/String;

    const-string v20, "setPath"

    invoke-virtual/range {v17 .. v22}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v3, 0x59

    .line 1874
    invoke-virtual {v13, v3}, Lse;->a(I)V

    .line 1875
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v7, 0x3a

    invoke-virtual {v13, v7, v3}, Lse;->b(II)V

    const/16 v3, 0xc6

    .line 1876
    invoke-virtual {v13, v3, v9}, Lse;->a(ILsc;)V

    .line 1878
    invoke-direct {v0, v1, v2, v4}, Laff;->a(Laff$a;Labq;I)V

    const/4 v3, 0x1

    const/16 v7, 0x19

    .line 1880
    invoke-virtual {v13, v7, v3}, Lse;->b(II)V

    .line 1881
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v13, v7, v3}, Lse;->b(II)V

    .line 1882
    sget-object v19, Lrv;->J:Ljava/lang/String;

    const-string v20, "writeReference"

    const-string v21, "(Ljava/lang/String;)V"

    invoke-virtual/range {v17 .. v22}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v3, 0x1

    const/16 v7, 0x19

    .line 1884
    invoke-virtual {v13, v7, v3}, Lse;->b(II)V

    .line 1885
    invoke-virtual {v13, v7, v10}, Lse;->b(II)V

    .line 1886
    sget-object v19, Lrv;->J:Ljava/lang/String;

    const-string v20, "popPath"

    const-string v21, "(Ljava/lang/Object;)V"

    invoke-virtual/range {v17 .. v22}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v3, 0xa7

    .line 1887
    invoke-virtual {v13, v3, v15}, Lse;->a(ILsc;)V

    .line 1889
    invoke-virtual {v13, v9}, Lse;->a(Lsc;)V

    const-string v3, "this$0"

    move-object v7, v14

    .line 1891
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "this$1"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "this$2"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_5
    const/16 v3, 0x15

    .line 1892
    invoke-virtual {v13, v3, v6}, Lse;->b(II)V

    const/16 v3, 0x99

    .line 1893
    invoke-virtual {v13, v3, v15}, Lse;->a(ILsc;)V

    goto :goto_4

    :cond_6
    move/from16 v28, v8

    move-object/from16 v27, v12

    move-object/from16 v26, v14

    .line 1897
    :cond_7
    :goto_4
    const-class v3, [Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1898
    new-instance v3, Lsc;

    invoke-direct {v3}, Lsc;-><init>()V

    .line 1899
    sget-object v6, Lcom/alibaba/fastjson2/ab$b;->NotWriteEmptyArray:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v6, Lcom/alibaba/fastjson2/ab$b;->mask:J

    invoke-virtual {v1, v8, v9, v3}, Laff$a;->a(JLsc;)V

    const/16 v6, 0x19

    .line 1901
    invoke-virtual {v13, v6, v10}, Lse;->b(II)V

    const/16 v6, 0xc0

    const-string v8, "[Ljava/lang/Object;"

    .line 1902
    invoke-virtual {v13, v6, v8}, Lse;->a(ILjava/lang/String;)V

    const/16 v6, 0xbe

    .line 1903
    invoke-virtual {v13, v6}, Lse;->a(I)V

    const/16 v6, 0x9a

    .line 1904
    invoke-virtual {v13, v6, v3}, Lse;->a(ILsc;)V

    const/16 v6, 0xa7

    .line 1906
    invoke-virtual {v13, v6, v15}, Lse;->a(ILsc;)V

    .line 1908
    invoke-virtual {v13, v3}, Lse;->a(Lsc;)V

    .line 1912
    :cond_8
    invoke-direct {v0, v1, v2, v4}, Laff;->a(Laff$a;Labq;I)V

    .line 1914
    const-class v3, Ljava/math/BigDecimal;

    const-wide/16 v8, 0x0

    if-ne v5, v3, :cond_a

    const/4 v3, 0x1

    const/16 v6, 0x19

    .line 1915
    invoke-virtual {v13, v6, v3}, Lse;->b(II)V

    .line 1916
    invoke-virtual {v13, v6, v10}, Lse;->b(II)V

    move-wide/from16 v11, v24

    .line 1917
    invoke-virtual {v13, v11, v12}, Lse;->a(J)V

    .line 1918
    iget-object v3, v2, Labq;->g:Ljava/text/DecimalFormat;

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    .line 1919
    invoke-virtual {v13, v6, v3}, Lse;->b(II)V

    .line 1920
    iget-object v3, v1, Laff$a;->d:Ljava/lang/String;

    invoke-static/range {p4 .. p4}, Laff;->a(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lrv;->L:Ljava/lang/String;

    const/16 v14, 0xb4

    invoke-virtual {v13, v14, v3, v6, v7}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    sget-object v3, Lrv;->K:Ljava/lang/String;

    const-string v6, "decimalFormat"

    const-string v7, "Ljava/text/DecimalFormat;"

    invoke-virtual {v13, v14, v3, v6, v7}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    const/4 v3, 0x1

    .line 1923
    invoke-virtual {v13, v3}, Lse;->a(I)V

    :goto_5
    const/16 v18, 0xb6

    .line 1925
    sget-object v19, Lrv;->J:Ljava/lang/String;

    const/16 v22, 0x0

    const-string v20, "writeDecimal"

    const-string v21, "(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V"

    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v22}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_6

    :cond_a
    move-wide/from16 v11, v24

    .line 1926
    const-class v3, Ljava/math/BigInteger;

    if-ne v5, v3, :cond_c

    const/4 v3, 0x1

    const/16 v6, 0x19

    .line 1927
    invoke-virtual {v13, v6, v3}, Lse;->b(II)V

    .line 1928
    invoke-virtual {v13, v6, v10}, Lse;->b(II)V

    cmp-long v3, v11, v8

    if-nez v3, :cond_b

    const/16 v18, 0xb6

    .line 1930
    sget-object v19, Lrv;->J:Ljava/lang/String;

    const/16 v22, 0x0

    const-string v20, "writeBigInt"

    const-string v21, "(Ljava/math/BigInteger;)V"

    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v22}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_6

    .line 1932
    :cond_b
    invoke-virtual {v13, v11, v12}, Lse;->a(J)V

    const/16 v18, 0xb6

    .line 1933
    sget-object v19, Lrv;->J:Ljava/lang/String;

    const/16 v22, 0x0

    const-string v20, "writeBigInt"

    const-string v21, "(Ljava/math/BigInteger;J)V"

    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v22}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_6

    .line 1935
    :cond_c
    const-class v3, Ljava/util/UUID;

    if-ne v5, v3, :cond_d

    const/4 v3, 0x1

    const/16 v6, 0x19

    .line 1936
    invoke-virtual {v13, v6, v3}, Lse;->b(II)V

    .line 1937
    invoke-virtual {v13, v6, v10}, Lse;->b(II)V

    const/16 v18, 0xb6

    .line 1938
    sget-object v19, Lrv;->J:Ljava/lang/String;

    const/16 v22, 0x0

    const-string v20, "writeUUID"

    const-string v21, "(Ljava/util/UUID;)V"

    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v22}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_6
    const/16 v3, 0xa7

    goto/16 :goto_8

    .line 1939
    :cond_d
    const-class v3, Ljava/time/LocalDate;

    if-ne v5, v3, :cond_e

    iget-object v3, v2, Labq;->f:Ljava/lang/String;

    if-nez v3, :cond_e

    iget-object v3, v1, Laff$a;->a:Lahq;

    const-class v6, Ljava/time/LocalDate;

    .line 1941
    invoke-virtual {v3, v6}, Lahq;->b(Ljava/lang/Class;)Laem;

    move-result-object v3

    sget-object v6, Lagw;->o:Lagw;

    if-ne v3, v6, :cond_e

    const/4 v3, 0x1

    const/16 v6, 0x19

    .line 1943
    invoke-virtual {v13, v6, v3}, Lse;->b(II)V

    .line 1944
    invoke-virtual {v13, v6, v10}, Lse;->b(II)V

    const/16 v18, 0xb6

    .line 1945
    sget-object v19, Lrv;->J:Ljava/lang/String;

    const/16 v22, 0x0

    const-string v20, "writeLocalDate"

    const-string v21, "(Ljava/time/LocalDate;)V"

    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v22}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_6

    .line 1946
    :cond_e
    const-class v3, Ljava/time/OffsetDateTime;

    if-ne v5, v3, :cond_f

    iget-object v3, v2, Labq;->f:Ljava/lang/String;

    if-nez v3, :cond_f

    iget-object v3, v1, Laff$a;->a:Lahq;

    const-class v6, Ljava/time/OffsetDateTime;

    .line 1948
    invoke-virtual {v3, v6}, Lahq;->b(Ljava/lang/Class;)Laem;

    move-result-object v3

    sget-object v6, Lahc;->o:Lahc;

    if-ne v3, v6, :cond_f

    const/4 v3, 0x1

    const/16 v6, 0x19

    .line 1950
    invoke-virtual {v13, v6, v3}, Lse;->b(II)V

    .line 1951
    invoke-virtual {v13, v6, v10}, Lse;->b(II)V

    const/16 v18, 0xb6

    .line 1952
    sget-object v19, Lrv;->J:Ljava/lang/String;

    const/16 v22, 0x0

    const-string v20, "writeOffsetDateTime"

    const-string v21, "(Ljava/time/OffsetDateTime;)V"

    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v22}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_6

    .line 1953
    :cond_f
    const-class v3, [Ljava/lang/String;

    if-ne v5, v3, :cond_10

    const/4 v3, 0x1

    const/16 v6, 0x19

    .line 1954
    invoke-virtual {v13, v6, v3}, Lse;->b(II)V

    .line 1955
    invoke-virtual {v13, v6, v10}, Lse;->b(II)V

    const/16 v18, 0xb6

    .line 1956
    sget-object v19, Lrv;->J:Ljava/lang/String;

    const/16 v22, 0x0

    const-string v20, "writeString"

    const-string v21, "([Ljava/lang/String;)V"

    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v22}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_6

    :cond_10
    const/4 v3, 0x0

    const/16 v6, 0x19

    .line 1959
    invoke-virtual {v13, v6, v3}, Lse;->b(II)V

    .line 1960
    iget-object v3, v1, Laff$a;->d:Ljava/lang/String;

    invoke-static/range {p4 .. p4}, Laff;->a(I)Ljava/lang/String;

    move-result-object v14

    sget-object v8, Lrv;->L:Ljava/lang/String;

    const/16 v9, 0xb4

    invoke-virtual {v13, v9, v3, v14, v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 1961
    invoke-virtual {v13, v6, v3}, Lse;->b(II)V

    .line 1962
    invoke-virtual {v13, v6, v10}, Lse;->b(II)V

    const/16 v18, 0xb6

    const/16 v22, 0x0

    const-string v19, "java/lang/Object"

    const-string v20, "getClass"

    const-string v21, "()Ljava/lang/Class;"

    move-object/from16 v17, v13

    .line 1963
    invoke-virtual/range {v17 .. v22}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1965
    sget-object v19, Lrv;->K:Ljava/lang/String;

    sget-object v21, Laff;->B:Ljava/lang/String;

    const-string v20, "getObjectWriter"

    invoke-virtual/range {v17 .. v22}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v3, 0x1

    const/16 v6, 0x19

    .line 1969
    invoke-virtual {v13, v6, v3}, Lse;->b(II)V

    .line 1970
    invoke-virtual {v13, v6, v10}, Lse;->b(II)V

    .line 1971
    invoke-virtual {v13, v7}, Lse;->a(Ljava/lang/String;)V

    move-object/from16 v3, v23

    .line 1972
    invoke-static {v1, v4, v3}, Laff$a;->a(Laff$a;ILjava/lang/reflect/Type;)V

    .line 1973
    invoke-virtual {v13, v11, v12}, Lse;->a(J)V

    const/16 v18, 0xb9

    .line 1974
    sget-object v19, Lrv;->I:Ljava/lang/String;

    .line 1977
    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->BeanToArray:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v6, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v6, v11

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_11

    const-string v3, "writeArrayMapping"

    goto :goto_7

    :cond_11
    const-string v3, "write"

    :goto_7
    move-object/from16 v20, v3

    sget-object v21, Laff;->l:Ljava/lang/String;

    const/16 v22, 0x1

    move-object/from16 v17, v13

    .line 1974
    invoke-virtual/range {v17 .. v22}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_6

    .line 1983
    :goto_8
    invoke-virtual {v13, v3, v15}, Lse;->a(ILsc;)V

    if-eqz v28, :cond_12

    move-object/from16 v3, v27

    .line 1986
    invoke-virtual {v1, v3}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v3

    .line 1988
    new-instance v6, Lsc;

    invoke-direct {v6}, Lsc;-><init>()V

    const/16 v7, 0x15

    .line 1990
    invoke-virtual {v13, v7, v3}, Lse;->b(II)V

    const/16 v3, 0x99

    .line 1991
    invoke-virtual {v13, v3, v6}, Lse;->a(ILsc;)V

    const/4 v3, 0x1

    const/16 v7, 0x19

    .line 1993
    invoke-virtual {v13, v7, v3}, Lse;->b(II)V

    .line 1994
    invoke-virtual {v13, v7, v10}, Lse;->b(II)V

    const/16 v18, 0xb6

    .line 1995
    sget-object v19, Lrv;->J:Ljava/lang/String;

    const/16 v22, 0x0

    const-string v20, "popPath"

    const-string v21, "(Ljava/lang/Object;)V"

    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v22}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1997
    invoke-virtual {v13, v6}, Lse;->a(Lsc;)V

    :cond_12
    move-object/from16 v3, v26

    .line 2000
    invoke-virtual {v13, v3}, Lse;->a(Lsc;)V

    .line 2003
    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->WriteNulls:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v6, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v6, v11

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_18

    .line 2004
    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->WriteNulls:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v6, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    .line 2005
    const-class v3, Ljava/util/concurrent/atomic/AtomicLongArray;

    if-eq v5, v3, :cond_16

    const-class v3, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    if-eq v5, v3, :cond_16

    const-class v3, Ljava/util/Collection;

    .line 2007
    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 2008
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_9

    .line 2011
    :cond_13
    const-class v3, Ljava/lang/Number;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2012
    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->WriteNullNumberAsZero:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v6, v8

    .line 2013
    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    goto :goto_a

    .line 2014
    :cond_14
    const-class v3, Ljava/lang/Boolean;

    if-ne v5, v3, :cond_15

    .line 2015
    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v6, v8

    .line 2016
    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    goto :goto_a

    .line 2017
    :cond_15
    const-class v3, Ljava/lang/String;

    if-ne v5, v3, :cond_17

    .line 2018
    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v6, v8

    .line 2019
    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    goto :goto_a

    .line 2009
    :cond_16
    :goto_9
    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->WriteNullListAsEmpty:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v6, v8

    .line 2010
    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    :goto_a
    or-long/2addr v6, v8

    .line 2021
    :cond_17
    invoke-virtual {v1, v6, v7, v15}, Laff$a;->a(JLsc;)V

    .line 2027
    :cond_18
    invoke-direct {v0, v1, v2, v4}, Laff;->a(Laff$a;Labq;I)V

    .line 2031
    const-class v1, Ljava/util/concurrent/atomic/AtomicLongArray;

    if-eq v5, v1, :cond_1e

    const-class v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    if-eq v5, v1, :cond_1e

    const-class v1, Ljava/util/Collection;

    .line 2033
    invoke-virtual {v1, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 2034
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_c

    .line 2036
    :cond_19
    const-class v1, Ljava/lang/Number;

    invoke-virtual {v1, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "writeNumberNull"

    goto :goto_d

    .line 2038
    :cond_1a
    const-class v1, Ljava/lang/Boolean;

    if-ne v5, v1, :cond_1b

    const-string v1, "writeBooleanNull"

    goto :goto_d

    .line 2040
    :cond_1b
    const-class v1, Ljava/lang/String;

    if-eq v5, v1, :cond_1d

    const-class v1, Ljava/lang/Appendable;

    if-eq v5, v1, :cond_1d

    const-class v1, Ljava/lang/StringBuffer;

    if-eq v5, v1, :cond_1d

    const-class v1, Ljava/lang/StringBuilder;

    if-ne v5, v1, :cond_1c

    goto :goto_b

    :cond_1c
    const-string v1, "writeNull"

    goto :goto_d

    :cond_1d
    :goto_b
    const-string v1, "writeStringNull"

    goto :goto_d

    :cond_1e
    :goto_c
    const-string v1, "writeArrayNull"

    :goto_d
    move-object/from16 v20, v1

    const/4 v1, 0x1

    const/16 v2, 0x19

    .line 2048
    invoke-virtual {v13, v2, v1}, Lse;->b(II)V

    const/16 v18, 0xb6

    .line 2049
    sget-object v19, Lrv;->J:Ljava/lang/String;

    const/16 v22, 0x0

    const-string v21, "()V"

    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v22}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2051
    invoke-virtual {v13, v15}, Lse;->a(Lsc;)V

    return-void
.end method

.method private i(Laff$a;Labq;II)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v1, p3

    move/from16 v9, p4

    .line 2060
    iget-object v2, v8, Labq;->b:Ljava/lang/reflect/Type;

    .line 2061
    iget-object v4, v8, Labq;->c:Ljava/lang/Class;

    .line 2062
    iget-object v6, v7, Laff$a;->e:Lse;

    .line 2064
    invoke-virtual {v7, v4}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v5

    const-string v3, "REF_PATH"

    .line 2065
    invoke-virtual {v7, v3}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v3

    .line 2069
    instance-of v10, v2, Ljava/lang/reflect/ParameterizedType;

    const/4 v15, 0x0

    const/4 v14, 0x1

    if-eqz v10, :cond_2

    .line 2070
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 2071
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 2073
    array-length v10, v2

    if-ne v10, v14, :cond_2

    .line 2074
    aget-object v2, v2, v15

    .line 2075
    invoke-static {v2}, Labo;->d(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v10

    .line 2076
    const-class v11, Ljava/lang/String;

    if-eq v2, v11, :cond_1

    const-class v11, Ljava/lang/Integer;

    if-eq v2, v11, :cond_1

    const-class v11, Ljava/lang/Long;

    if-ne v2, v11, :cond_0

    goto :goto_0

    :cond_0
    move v2, v15

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v14

    :goto_1
    move-object/from16 v16, v10

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    move-object/from16 v16, v2

    move v2, v15

    .line 2080
    :goto_2
    invoke-virtual {v7, v4}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v13

    .line 2082
    invoke-virtual {v0, v7, v8, v9, v1}, Laff;->a(Laff$a;Labq;II)V

    const/16 v12, 0x59

    .line 2083
    invoke-virtual {v6, v12}, Lse;->a(I)V

    const/16 v11, 0x3a

    .line 2084
    invoke-virtual {v6, v11, v13}, Lse;->b(II)V

    .line 2086
    new-instance v10, Lsc;

    invoke-direct {v10}, Lsc;-><init>()V

    new-instance v15, Lsc;

    invoke-direct {v15}, Lsc;-><init>()V

    move-object/from16 v18, v15

    const/16 v15, 0xc6

    .line 2087
    invoke-virtual {v6, v15, v10}, Lse;->a(ILsc;)V

    .line 2090
    new-instance v15, Lsc;

    invoke-direct {v15}, Lsc;-><init>()V

    new-instance v11, Lsc;

    invoke-direct {v11}, Lsc;-><init>()V

    .line 2092
    sget-object v12, Lcom/alibaba/fastjson2/ab$b;->ReferenceDetection:Lcom/alibaba/fastjson2/ab$b;

    move/from16 v21, v13

    iget-wide v12, v12, Lcom/alibaba/fastjson2/ab$b;->mask:J

    invoke-virtual {v7, v12, v13, v15}, Laff$a;->a(JLsc;)V

    const/16 v13, 0x19

    .line 2094
    invoke-virtual {v6, v13, v1}, Lse;->b(II)V

    .line 2095
    invoke-virtual {v6, v13, v5}, Lse;->b(II)V

    const/16 v1, 0xa6

    .line 2096
    invoke-virtual {v6, v1, v11}, Lse;->a(ILsc;)V

    .line 2098
    invoke-virtual {v6, v13, v14}, Lse;->b(II)V

    const-string v1, ".."

    .line 2099
    invoke-virtual {v6, v1}, Lse;->a(Ljava/lang/String;)V

    const/16 v1, 0xb6

    .line 2100
    sget-object v12, Lrv;->J:Ljava/lang/String;

    const/16 v22, 0x0

    const-string v23, "writeReference"

    const-string v24, "(Ljava/lang/String;)V"

    move-object/from16 v25, v10

    move-object v10, v6

    move-object/from16 v26, v11

    move v11, v1

    const/16 v1, 0x59

    move v1, v13

    move/from16 p3, v21

    move-object/from16 v13, v23

    move v1, v14

    move-object/from16 v14, v24

    move-object/from16 v17, v4

    move-object v4, v15

    move-object/from16 v1, v18

    const/4 v0, 0x0

    move/from16 v15, v22

    invoke-virtual/range {v10 .. v15}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v15, 0xa7

    .line 2102
    invoke-virtual {v6, v15, v1}, Lse;->a(ILsc;)V

    move-object/from16 v10, v26

    .line 2104
    invoke-virtual {v6, v10}, Lse;->a(Lsc;)V

    const/4 v10, 0x1

    const/16 v11, 0x19

    .line 2106
    invoke-virtual {v6, v11, v10}, Lse;->b(II)V

    .line 2107
    invoke-virtual {v6, v11, v0}, Lse;->b(II)V

    .line 2108
    iget-object v10, v7, Laff$a;->d:Ljava/lang/String;

    invoke-static/range {p4 .. p4}, Laff;->a(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lrv;->L:Ljava/lang/String;

    const/16 v14, 0xb4

    invoke-virtual {v6, v14, v10, v12, v13}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2109
    invoke-virtual {v6, v11, v5}, Lse;->b(II)V

    const/16 v11, 0xb6

    .line 2110
    sget-object v12, Lrv;->J:Ljava/lang/String;

    sget-object v18, Laff;->F:Ljava/lang/String;

    const-string v13, "setPath"

    move-object v10, v6

    move-object/from16 v14, v18

    move v0, v15

    move/from16 v15, v22

    invoke-virtual/range {v10 .. v15}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v10, 0x59

    .line 2111
    invoke-virtual {v6, v10}, Lse;->a(I)V

    const/16 v10, 0x3a

    .line 2112
    invoke-virtual {v6, v10, v3}, Lse;->b(II)V

    const/16 v10, 0xc6

    .line 2113
    invoke-virtual {v6, v10, v4}, Lse;->a(ILsc;)V

    const/4 v10, 0x1

    const/16 v11, 0x19

    .line 2115
    invoke-virtual {v6, v11, v10}, Lse;->b(II)V

    .line 2116
    invoke-virtual {v6, v11, v3}, Lse;->b(II)V

    const/16 v11, 0xb6

    .line 2117
    sget-object v12, Lrv;->J:Ljava/lang/String;

    const/4 v15, 0x0

    const-string v13, "writeReference"

    const-string v14, "(Ljava/lang/String;)V"

    move-object v10, v6

    invoke-virtual/range {v10 .. v15}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v3, 0x1

    const/16 v10, 0x19

    .line 2119
    invoke-virtual {v6, v10, v3}, Lse;->b(II)V

    .line 2120
    invoke-virtual {v6, v10, v5}, Lse;->b(II)V

    .line 2121
    sget-object v12, Lrv;->J:Ljava/lang/String;

    const-string v13, "popPath"

    const-string v14, "(Ljava/lang/Object;)V"

    move-object v10, v6

    invoke-virtual/range {v10 .. v15}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2122
    invoke-virtual {v6, v0, v1}, Lse;->a(ILsc;)V

    .line 2124
    invoke-virtual {v6, v4}, Lse;->a(Lsc;)V

    .line 2128
    new-instance v4, Lsc;

    invoke-direct {v4}, Lsc;-><init>()V

    .line 2129
    sget-object v10, Lcom/alibaba/fastjson2/ab$b;->NotWriteEmptyArray:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v10, v10, Lcom/alibaba/fastjson2/ab$b;->mask:J

    invoke-virtual {v7, v10, v11, v4}, Laff$a;->a(JLsc;)V

    const/16 v15, 0x19

    .line 2131
    invoke-virtual {v6, v15, v5}, Lse;->b(II)V

    const/16 v11, 0xb9

    const/16 v19, 0x1

    const-string v12, "java/util/Collection"

    const-string v13, "isEmpty"

    const-string v14, "()Z"

    move-object v10, v6

    move/from16 v20, v15

    move/from16 v15, v19

    .line 2132
    invoke-virtual/range {v10 .. v15}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v10, 0x99

    .line 2133
    invoke-virtual {v6, v10, v4}, Lse;->a(ILsc;)V

    .line 2135
    invoke-virtual {v6, v0, v1}, Lse;->a(ILsc;)V

    .line 2137
    invoke-virtual {v6, v4}, Lse;->a(Lsc;)V

    if-eqz v2, :cond_3

    move-object/from16 v15, p0

    .line 2150
    invoke-direct {v15, v7, v8, v9}, Laff;->a(Laff$a;Labq;I)V

    move-object v14, v1

    move v13, v3

    move/from16 v12, v20

    move-object/from16 v1, p1

    move/from16 v2, p4

    move-object v3, v6

    move-object/from16 v4, v17

    move v11, v5

    move-object/from16 v5, v16

    move-object v10, v6

    move/from16 v6, p3

    .line 2151
    invoke-static/range {v1 .. v6}, Laff;->a(Laff$a;ILse;Ljava/lang/Class;Ljava/lang/Class;I)V

    move-object v6, v10

    move v0, v11

    move v1, v12

    move v2, v13

    move-object v3, v14

    move-object v4, v15

    goto :goto_4

    :cond_3
    move-object/from16 v15, p0

    move-object v14, v1

    move v13, v3

    move v11, v5

    move-object v10, v6

    move/from16 v12, v20

    .line 2153
    invoke-direct {v15, v7, v8, v9}, Laff;->a(Laff$a;Labq;I)V

    const/4 v1, 0x0

    .line 2156
    invoke-virtual {v10, v12, v1}, Lse;->b(II)V

    .line 2157
    iget-object v1, v7, Laff$a;->d:Ljava/lang/String;

    invoke-static/range {p4 .. p4}, Laff;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lrv;->L:Ljava/lang/String;

    const/16 v4, 0xb4

    invoke-virtual {v10, v4, v1, v2, v3}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    invoke-virtual {v10, v12, v13}, Lse;->b(II)V

    move/from16 v1, p3

    .line 2159
    invoke-virtual {v10, v12, v1}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 2160
    sget-object v2, Lrv;->K:Ljava/lang/String;

    .line 2163
    iget-boolean v3, v7, Laff$a;->g:Z

    if-eqz v3, :cond_4

    const-string v3, "writeListValueJSONB"

    goto :goto_3

    :cond_4
    const-string v3, "writeListValue"

    :goto_3
    sget-object v4, Laff;->z:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v6, v10

    move v0, v11

    move v11, v1

    move v1, v12

    move-object v12, v2

    move v2, v13

    move-object v13, v3

    move-object v3, v14

    move-object v14, v4

    move-object v4, v15

    move v15, v5

    .line 2160
    invoke-virtual/range {v10 .. v15}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2168
    :goto_4
    invoke-virtual {v6, v1, v2}, Lse;->b(II)V

    .line 2169
    invoke-virtual {v6, v1, v0}, Lse;->b(II)V

    const/16 v11, 0xb6

    .line 2170
    sget-object v12, Lrv;->J:Ljava/lang/String;

    const/4 v15, 0x0

    const-string v13, "popPath"

    const-string v14, "(Ljava/lang/Object;)V"

    move-object v10, v6

    invoke-virtual/range {v10 .. v15}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0xa7

    .line 2172
    invoke-virtual {v6, v0, v3}, Lse;->a(ILsc;)V

    move-object/from16 v0, v25

    .line 2174
    invoke-virtual {v6, v0}, Lse;->a(Lsc;)V

    .line 2175
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->WriteNulls:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v10, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v12, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v10, v12

    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->WriteNullListAsEmpty:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v12, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v10, v12

    invoke-virtual {v7, v10, v11, v3}, Laff$a;->a(JLsc;)V

    .line 2178
    invoke-direct {v4, v7, v8, v9}, Laff;->a(Laff$a;Labq;I)V

    .line 2181
    invoke-virtual {v6, v1, v2}, Lse;->b(II)V

    const/16 v0, 0xb6

    .line 2182
    sget-object v7, Lrv;->J:Ljava/lang/String;

    const/4 v10, 0x0

    const-string v8, "writeArrayNull"

    const-string v9, "()V"

    move-object v5, v6

    move-object v1, v6

    move v6, v0

    invoke-virtual/range {v5 .. v10}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2184
    invoke-virtual {v1, v3}, Lse;->a(Lsc;)V

    return-void
.end method

.method private j(Laff$a;Labq;II)V
    .locals 9

    .line 2193
    iget-object v0, p1, Laff$a;->e:Lse;

    .line 2194
    iget-object v0, p1, Laff$a;->b:Ljava/lang/Class;

    .line 2195
    iget-object v0, p2, Labq;->c:Ljava/lang/Class;

    .line 2197
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 2198
    invoke-direct/range {v2 .. v7}, Laff;->f(Laff$a;Labq;IIZ)V

    goto/16 :goto_2

    .line 2199
    :cond_0
    const-class v1, [Z

    if-eq v0, v1, :cond_d

    const-class v1, [B

    if-eq v0, v1, :cond_d

    const-class v1, [C

    if-eq v0, v1, :cond_d

    const-class v1, [S

    if-eq v0, v1, :cond_d

    const-class v1, [F

    if-eq v0, v1, :cond_d

    const-class v1, [D

    if-ne v0, v1, :cond_1

    goto/16 :goto_1

    .line 2207
    :cond_1
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_c

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_c

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_c

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_c

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    goto/16 :goto_0

    .line 2215
    :cond_2
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 2216
    invoke-direct/range {v2 .. v7}, Laff;->e(Laff$a;Labq;IIZ)V

    goto/16 :goto_2

    .line 2217
    :cond_3
    const-class v1, [I

    if-ne v0, v1, :cond_4

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 2218
    invoke-virtual/range {v2 .. v7}, Laff;->a(Laff$a;Labq;IIZ)V

    goto/16 :goto_2

    .line 2219
    :cond_4
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 2220
    invoke-direct/range {v2 .. v7}, Laff;->d(Laff$a;Labq;IIZ)V

    goto :goto_2

    .line 2221
    :cond_5
    const-class v1, [J

    if-ne v0, v1, :cond_6

    iget-object v1, p1, Laff$a;->a:Lahq;

    const-class v2, Ljava/lang/Long;

    .line 2222
    invoke-virtual {v1, v2}, Lahq;->b(Ljava/lang/Class;)Laem;

    move-result-object v1

    sget-object v2, Lagm;->a:Lagm;

    if-ne v1, v2, :cond_6

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    .line 2224
    invoke-direct/range {v3 .. v8}, Laff;->c(Laff$a;Labq;IIZ)V

    goto :goto_2

    .line 2225
    :cond_6
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_7

    .line 2226
    invoke-direct {p0, p1, p2, p3, p4}, Laff;->k(Laff$a;Labq;II)V

    goto :goto_2

    .line 2227
    :cond_7
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_8

    .line 2228
    invoke-direct {p0, p1, p2, p3, p4}, Laff;->l(Laff$a;Labq;II)V

    goto :goto_2

    .line 2229
    :cond_8
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_9

    .line 2230
    invoke-direct {p0, p1, p2, p3, p4}, Laff;->r(Laff$a;Labq;II)V

    goto :goto_2

    .line 2231
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2233
    invoke-direct {p0, p1, p2, p3, p4}, Laff;->q(Laff$a;Labq;II)V

    goto :goto_2

    .line 2234
    :cond_a
    const-class v1, Ljava/util/Date;

    if-ne v0, v1, :cond_b

    .line 2235
    invoke-direct {p0, p1, p2, p3, p4}, Laff;->p(Laff$a;Labq;II)V

    goto :goto_2

    .line 2237
    :cond_b
    invoke-direct {p0, p1, p2, p3, p4}, Laff;->o(Laff$a;Labq;II)V

    goto :goto_2

    .line 2213
    :cond_c
    :goto_0
    invoke-direct {p0, p1, p2, p4}, Laff;->a(Laff$a;Labq;I)V

    .line 2214
    invoke-direct {p0, p1, p2, p3, p4}, Laff;->d(Laff$a;Labq;II)V

    goto :goto_2

    .line 2206
    :cond_d
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Laff;->q(Laff$a;Labq;II)V

    :goto_2
    return-void
.end method

.method private k(Laff$a;Labq;II)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    .line 2247
    iget-boolean v4, v1, Laff$a;->g:Z

    .line 2248
    iget-object v4, v1, Laff$a;->d:Ljava/lang/String;

    .line 2249
    iget-object v4, v1, Laff$a;->e:Lse;

    .line 2250
    iget-object v5, v2, Labq;->c:Ljava/lang/Class;

    .line 2252
    invoke-virtual {v1, v5}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v11

    .line 2254
    new-instance v12, Lsc;

    invoke-direct {v12}, Lsc;-><init>()V

    new-instance v13, Lsc;

    invoke-direct {v13}, Lsc;-><init>()V

    new-instance v5, Lsc;

    invoke-direct {v5}, Lsc;-><init>()V

    move/from16 v6, p3

    .line 2256
    invoke-virtual {v0, v1, v2, v3, v6}, Laff;->a(Laff$a;Labq;II)V

    const/16 v6, 0x59

    .line 2257
    invoke-virtual {v4, v6}, Lse;->a(I)V

    const/16 v6, 0x3a

    .line 2258
    invoke-virtual {v4, v6, v11}, Lse;->b(II)V

    const/16 v6, 0xc7

    .line 2260
    invoke-virtual {v4, v6, v13}, Lse;->a(ILsc;)V

    .line 2262
    iget-wide v6, v2, Labq;->d:J

    sget-object v8, Lcom/alibaba/fastjson2/ab$b;->WriteNulls:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v8, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object v10, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v14, v10, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v8, v14

    sget-object v10, Lcom/alibaba/fastjson2/ab$b;->WriteNullNumberAsZero:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v14, v10, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v8, v14

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    const/4 v14, 0x1

    const/16 v15, 0x19

    if-nez v6, :cond_0

    .line 2263
    sget-object v6, Lcom/alibaba/fastjson2/ab$b;->WriteNulls:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v6, v6, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object v8, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v8, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v6, v8

    sget-object v8, Lcom/alibaba/fastjson2/ab$b;->WriteNullNumberAsZero:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v8, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v6, v8

    invoke-virtual {v1, v6, v7, v5, v12}, Laff$a;->a(JLsc;Lsc;)V

    .line 2269
    invoke-virtual {v4, v5}, Lse;->a(Lsc;)V

    .line 2271
    invoke-direct {v0, v1, v2, v3}, Laff;->a(Laff$a;Labq;I)V

    .line 2273
    invoke-virtual {v4, v15, v14}, Lse;->b(II)V

    const/16 v6, 0xb6

    .line 2274
    sget-object v7, Lrv;->J:Ljava/lang/String;

    const/4 v10, 0x0

    const-string v8, "writeNumberNull"

    const-string v9, "()V"

    move-object v5, v4

    invoke-virtual/range {v5 .. v10}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2276
    :cond_0
    iget-wide v5, v2, Labq;->d:J

    .line 2277
    sget-object v7, Lcom/alibaba/fastjson2/ab$b;->WriteNullNumberAsZero:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v14, v7, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object v7, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v7, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long v7, v14, v8

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    .line 2278
    invoke-direct {v0, v1, v2, v3}, Laff;->a(Laff$a;Labq;I)V

    const/4 v5, 0x1

    const/16 v6, 0x19

    .line 2280
    invoke-virtual {v4, v6, v5}, Lse;->b(II)V

    const/4 v5, 0x0

    .line 2281
    invoke-virtual {v4, v5}, Lse;->b(I)V

    const/16 v6, 0xb6

    .line 2282
    sget-object v7, Lrv;->J:Ljava/lang/String;

    const/4 v10, 0x0

    const-string v8, "writeInt32"

    const-string v9, "(I)V"

    move-object v5, v4

    invoke-virtual/range {v5 .. v10}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2284
    :cond_1
    invoke-direct {v0, v1, v2, v3}, Laff;->a(Laff$a;Labq;I)V

    const/4 v5, 0x1

    const/16 v6, 0x19

    .line 2286
    invoke-virtual {v4, v6, v5}, Lse;->b(II)V

    const/16 v6, 0xb6

    .line 2287
    sget-object v7, Lrv;->J:Ljava/lang/String;

    const/4 v10, 0x0

    const-string v8, "writeNull"

    const-string v9, "()V"

    move-object v5, v4

    invoke-virtual/range {v5 .. v10}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    const/16 v5, 0xa7

    .line 2291
    invoke-virtual {v4, v5, v12}, Lse;->a(ILsc;)V

    .line 2293
    invoke-virtual {v4, v13}, Lse;->a(Lsc;)V

    .line 2295
    invoke-direct {v0, v1, v2, v3}, Laff;->a(Laff$a;Labq;I)V

    const/4 v1, 0x1

    const/16 v2, 0x19

    .line 2297
    invoke-virtual {v4, v2, v1}, Lse;->b(II)V

    .line 2299
    invoke-virtual {v4, v2, v11}, Lse;->b(II)V

    const/16 v6, 0xb6

    const/4 v10, 0x0

    const-string v7, "java/lang/Integer"

    const-string v8, "intValue"

    const-string v9, "()I"

    move-object v5, v4

    .line 2300
    invoke-virtual/range {v5 .. v10}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2302
    sget-object v7, Lrv;->J:Ljava/lang/String;

    const-string v8, "writeInt32"

    const-string v9, "(I)V"

    invoke-virtual/range {v5 .. v10}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2303
    invoke-virtual {v4, v12}, Lse;->a(Lsc;)V

    return-void
.end method

.method private l(Laff$a;Labq;II)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    .line 2312
    iget-boolean v4, v1, Laff$a;->g:Z

    .line 2313
    iget-object v11, v1, Laff$a;->e:Lse;

    .line 2314
    iget-object v5, v2, Labq;->c:Ljava/lang/Class;

    .line 2315
    iget-object v12, v1, Laff$a;->d:Ljava/lang/String;

    .line 2317
    invoke-virtual {v1, v5}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v13

    .line 2319
    new-instance v14, Lsc;

    invoke-direct {v14}, Lsc;-><init>()V

    new-instance v15, Lsc;

    invoke-direct {v15}, Lsc;-><init>()V

    new-instance v5, Lsc;

    invoke-direct {v5}, Lsc;-><init>()V

    move/from16 v6, p3

    .line 2321
    invoke-virtual {v0, v1, v2, v3, v6}, Laff;->a(Laff$a;Labq;II)V

    const/16 v6, 0x59

    .line 2322
    invoke-virtual {v11, v6}, Lse;->a(I)V

    const/16 v6, 0x3a

    .line 2323
    invoke-virtual {v11, v6, v13}, Lse;->b(II)V

    const/16 v6, 0xc7

    .line 2325
    invoke-virtual {v11, v6, v15}, Lse;->a(ILsc;)V

    .line 2327
    sget-object v6, Lcom/alibaba/fastjson2/ab$b;->WriteNulls:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v6, v6, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object v8, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v8, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v6, v8

    sget-object v8, Lcom/alibaba/fastjson2/ab$b;->WriteNullNumberAsZero:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v8, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v6, v8

    invoke-virtual {v1, v6, v7, v5, v14}, Laff$a;->a(JLsc;Lsc;)V

    .line 2333
    invoke-virtual {v11, v5}, Lse;->a(Lsc;)V

    .line 2335
    invoke-direct {v0, v1, v2, v3}, Laff;->a(Laff$a;Labq;I)V

    const/4 v10, 0x1

    const/16 v9, 0x19

    .line 2337
    invoke-virtual {v11, v9, v10}, Lse;->b(II)V

    .line 2338
    sget-object v7, Lrv;->J:Ljava/lang/String;

    const/16 v6, 0xb6

    const-string v8, "writeNumberNull"

    const-string v16, "()V"

    const/16 v17, 0x0

    move-object v5, v11

    move-object/from16 v9, v16

    move v0, v10

    move/from16 v10, v17

    invoke-virtual/range {v5 .. v10}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v5, 0xa7

    .line 2340
    invoke-virtual {v11, v5, v14}, Lse;->a(ILsc;)V

    .line 2342
    invoke-virtual {v11, v15}, Lse;->a(Lsc;)V

    if-nez v4, :cond_1

    .line 2344
    iget-wide v4, v2, Labq;->d:J

    sget-object v6, Lcom/alibaba/fastjson2/ab$b;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v6, v6, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object v8, Lcom/alibaba/fastjson2/ab$b;->WriteLongAsString:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v8, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v6, v8

    sget-object v8, Lcom/alibaba/fastjson2/ab$b;->BrowserCompatible:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v8, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v6, v8

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/16 v4, 0x19

    .line 2354
    invoke-virtual {v11, v4, v1}, Lse;->b(II)V

    const/16 v1, 0xb4

    .line 2355
    invoke-static/range {p4 .. p4}, Laff;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lrv;->L:Ljava/lang/String;

    invoke-virtual {v11, v1, v12, v2, v3}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2356
    invoke-virtual {v11, v4, v0}, Lse;->b(II)V

    .line 2358
    invoke-virtual {v11, v4, v13}, Lse;->b(II)V

    const/16 v6, 0xb6

    const/4 v10, 0x0

    const-string v7, "java/lang/Long"

    const-string v8, "longValue"

    const-string v9, "()J"

    move-object v5, v11

    .line 2359
    invoke-virtual/range {v5 .. v10}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2361
    sget-object v7, Lrv;->K:Ljava/lang/String;

    sget-object v9, Laff;->m:Ljava/lang/String;

    const-string v8, "writeInt64"

    invoke-virtual/range {v5 .. v10}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v4, 0x19

    move v5, v0

    move-object/from16 v0, p0

    .line 2345
    invoke-direct {v0, v1, v2, v3}, Laff;->a(Laff$a;Labq;I)V

    .line 2347
    invoke-virtual {v11, v4, v5}, Lse;->b(II)V

    .line 2349
    invoke-virtual {v11, v4, v13}, Lse;->b(II)V

    const/16 v6, 0xb6

    const/4 v10, 0x0

    const-string v7, "java/lang/Long"

    const-string v8, "longValue"

    const-string v9, "()J"

    move-object v5, v11

    .line 2350
    invoke-virtual/range {v5 .. v10}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2352
    sget-object v7, Lrv;->J:Ljava/lang/String;

    const-string v8, "writeInt64"

    const-string v9, "(J)V"

    invoke-virtual/range {v5 .. v10}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2364
    :goto_1
    invoke-virtual {v11, v14}, Lse;->a(Lsc;)V

    return-void
.end method

.method public static synthetic lambda$9iSjxDvWWT6YL1lmK-QcWTCbGhE(Laff;Lqg;Ljava/lang/Class;JLahq;Lqe;Ljava/util/Map;Ljava/lang/reflect/Field;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Laff;->a(Lqg;Ljava/lang/Class;JLahq;Lqe;Ljava/util/Map;Ljava/lang/reflect/Field;)V

    return-void
.end method

.method public static synthetic lambda$DFoZ2eeChT37wnBaynd0JKatWv8(Laff;Lqg;Ljava/lang/Class;JLahq;Lqe;Ljava/util/Map;Ljava/lang/reflect/Field;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Laff;->b(Lqg;Ljava/lang/Class;JLahq;Lqe;Ljava/util/Map;Ljava/lang/reflect/Field;)V

    return-void
.end method

.method public static synthetic lambda$OBy9z1maL7s2R6dmQqt9BGSOME4(Laff;Lqg;JLqe;Lahq;Ljava/lang/Class;ZLjava/util/Map;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Laff;->a(Lqg;JLqe;Lahq;Ljava/lang/Class;ZLjava/util/Map;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method private m(Laff$a;Labq;II)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    .line 2373
    iget-boolean v4, v1, Laff$a;->g:Z

    .line 2374
    iget-object v11, v1, Laff$a;->e:Lse;

    .line 2375
    iget-object v5, v2, Labq;->c:Ljava/lang/Class;

    .line 2376
    iget-object v12, v1, Laff$a;->d:Ljava/lang/String;

    .line 2378
    invoke-virtual {v1, v5}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v13

    .line 2380
    new-instance v14, Lsc;

    invoke-direct {v14}, Lsc;-><init>()V

    new-instance v15, Lsc;

    invoke-direct {v15}, Lsc;-><init>()V

    new-instance v5, Lsc;

    invoke-direct {v5}, Lsc;-><init>()V

    move/from16 v6, p3

    .line 2382
    invoke-virtual {v0, v1, v2, v3, v6}, Laff;->a(Laff$a;Labq;II)V

    const/16 v6, 0x59

    .line 2383
    invoke-virtual {v11, v6}, Lse;->a(I)V

    const/16 v6, 0x3a

    .line 2384
    invoke-virtual {v11, v6, v13}, Lse;->b(II)V

    const/16 v6, 0xc7

    .line 2386
    invoke-virtual {v11, v6, v15}, Lse;->a(ILsc;)V

    .line 2388
    sget-object v6, Lcom/alibaba/fastjson2/ab$b;->WriteNulls:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v6, v6, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object v8, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v8, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v6, v8

    sget-object v8, Lcom/alibaba/fastjson2/ab$b;->WriteNullNumberAsZero:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v8, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v6, v8

    invoke-virtual {v1, v6, v7, v5, v14}, Laff$a;->a(JLsc;Lsc;)V

    .line 2394
    invoke-virtual {v11, v5}, Lse;->a(Lsc;)V

    .line 2396
    invoke-direct {v0, v1, v2, v3}, Laff;->a(Laff$a;Labq;I)V

    const/4 v10, 0x1

    const/16 v9, 0x19

    .line 2398
    invoke-virtual {v11, v9, v10}, Lse;->b(II)V

    .line 2399
    sget-object v7, Lrv;->J:Ljava/lang/String;

    const/16 v6, 0xb6

    const-string v8, "writeNumberNull"

    const-string v16, "()V"

    const/16 v17, 0x0

    move-object v5, v11

    move-object/from16 v9, v16

    move-object/from16 v16, v12

    move v12, v10

    move/from16 v10, v17

    invoke-virtual/range {v5 .. v10}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v5, 0xa7

    .line 2401
    invoke-virtual {v11, v5, v14}, Lse;->a(ILsc;)V

    .line 2403
    invoke-virtual {v11, v15}, Lse;->a(Lsc;)V

    if-eqz v4, :cond_0

    .line 2406
    invoke-direct {v0, v1, v2, v3}, Laff;->a(Laff$a;Labq;I)V

    const/16 v1, 0x19

    .line 2408
    invoke-virtual {v11, v1, v12}, Lse;->b(II)V

    .line 2410
    invoke-virtual {v11, v1, v13}, Lse;->b(II)V

    const/16 v6, 0xb6

    const/4 v10, 0x0

    const-string v7, "java/lang/Double"

    const-string v8, "doubleValue"

    const-string v9, "()D"

    move-object v5, v11

    .line 2411
    invoke-virtual/range {v5 .. v10}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2413
    sget-object v7, Lrv;->J:Ljava/lang/String;

    const-string v8, "writeDouble"

    const-string v9, "(D)V"

    invoke-virtual/range {v5 .. v10}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x19

    const/4 v2, 0x0

    .line 2415
    invoke-virtual {v11, v1, v2}, Lse;->b(II)V

    const/16 v2, 0xb4

    .line 2416
    invoke-static/range {p4 .. p4}, Laff;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lrv;->L:Ljava/lang/String;

    move-object/from16 v5, v16

    invoke-virtual {v11, v2, v5, v3, v4}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2417
    invoke-virtual {v11, v1, v12}, Lse;->b(II)V

    .line 2419
    invoke-virtual {v11, v1, v13}, Lse;->b(II)V

    const/16 v6, 0xb6

    const/4 v10, 0x0

    const-string v7, "java/lang/Double"

    const-string v8, "doubleValue"

    const-string v9, "()D"

    move-object v5, v11

    .line 2420
    invoke-virtual/range {v5 .. v10}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2422
    sget-object v7, Lrv;->K:Ljava/lang/String;

    sget-object v9, Laff;->n:Ljava/lang/String;

    const-string v8, "writeDouble"

    invoke-virtual/range {v5 .. v10}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2425
    :goto_0
    invoke-virtual {v11, v14}, Lse;->a(Lsc;)V

    return-void
.end method

.method private n(Laff$a;Labq;II)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    .line 2434
    iget-boolean v4, v1, Laff$a;->g:Z

    .line 2435
    iget-object v11, v1, Laff$a;->e:Lse;

    .line 2436
    iget-object v5, v2, Labq;->c:Ljava/lang/Class;

    .line 2437
    iget-object v12, v1, Laff$a;->d:Ljava/lang/String;

    .line 2439
    invoke-virtual {v1, v5}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v13

    .line 2441
    new-instance v14, Lsc;

    invoke-direct {v14}, Lsc;-><init>()V

    new-instance v15, Lsc;

    invoke-direct {v15}, Lsc;-><init>()V

    new-instance v5, Lsc;

    invoke-direct {v5}, Lsc;-><init>()V

    move/from16 v6, p3

    .line 2443
    invoke-virtual {v0, v1, v2, v3, v6}, Laff;->a(Laff$a;Labq;II)V

    const/16 v6, 0x59

    .line 2444
    invoke-virtual {v11, v6}, Lse;->a(I)V

    const/16 v6, 0x3a

    .line 2445
    invoke-virtual {v11, v6, v13}, Lse;->b(II)V

    const/16 v6, 0xc7

    .line 2447
    invoke-virtual {v11, v6, v15}, Lse;->a(ILsc;)V

    .line 2449
    sget-object v6, Lcom/alibaba/fastjson2/ab$b;->WriteNulls:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v6, v6, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object v8, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v8, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v6, v8

    sget-object v8, Lcom/alibaba/fastjson2/ab$b;->WriteNullNumberAsZero:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v8, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v6, v8

    invoke-virtual {v1, v6, v7, v5, v14}, Laff$a;->a(JLsc;Lsc;)V

    .line 2455
    invoke-virtual {v11, v5}, Lse;->a(Lsc;)V

    .line 2457
    invoke-direct {v0, v1, v2, v3}, Laff;->a(Laff$a;Labq;I)V

    const/4 v10, 0x1

    const/16 v9, 0x19

    .line 2459
    invoke-virtual {v11, v9, v10}, Lse;->b(II)V

    .line 2460
    sget-object v7, Lrv;->J:Ljava/lang/String;

    const/16 v6, 0xb6

    const-string v8, "writeNumberNull"

    const-string v16, "()V"

    const/16 v17, 0x0

    move-object v5, v11

    move-object/from16 v9, v16

    move-object/from16 v16, v12

    move v12, v10

    move/from16 v10, v17

    invoke-virtual/range {v5 .. v10}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v5, 0xa7

    .line 2462
    invoke-virtual {v11, v5, v14}, Lse;->a(ILsc;)V

    .line 2464
    invoke-virtual {v11, v15}, Lse;->a(Lsc;)V

    if-eqz v4, :cond_0

    .line 2467
    invoke-direct {v0, v1, v2, v3}, Laff;->a(Laff$a;Labq;I)V

    const/16 v1, 0x19

    .line 2469
    invoke-virtual {v11, v1, v12}, Lse;->b(II)V

    .line 2471
    invoke-virtual {v11, v1, v13}, Lse;->b(II)V

    const/16 v6, 0xb6

    const/4 v10, 0x0

    const-string v7, "java/lang/Float"

    const-string v8, "floatValue"

    const-string v9, "()F"

    move-object v5, v11

    .line 2472
    invoke-virtual/range {v5 .. v10}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2474
    sget-object v7, Lrv;->J:Ljava/lang/String;

    const-string v8, "writeFloat"

    const-string v9, "(D)V"

    invoke-virtual/range {v5 .. v10}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x19

    const/4 v2, 0x0

    .line 2476
    invoke-virtual {v11, v1, v2}, Lse;->b(II)V

    const/16 v2, 0xb4

    .line 2477
    invoke-static/range {p4 .. p4}, Laff;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lrv;->L:Ljava/lang/String;

    move-object/from16 v5, v16

    invoke-virtual {v11, v2, v5, v3, v4}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2478
    invoke-virtual {v11, v1, v12}, Lse;->b(II)V

    .line 2480
    invoke-virtual {v11, v1, v13}, Lse;->b(II)V

    const/16 v6, 0xb6

    const/4 v10, 0x0

    const-string v7, "java/lang/Float"

    const-string v8, "floatValue"

    const-string v9, "()F"

    move-object v5, v11

    .line 2481
    invoke-virtual/range {v5 .. v10}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2483
    sget-object v7, Lrv;->K:Ljava/lang/String;

    sget-object v9, Laff;->o:Ljava/lang/String;

    const-string v8, "writeFloat"

    invoke-virtual/range {v5 .. v10}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2486
    :goto_0
    invoke-virtual {v11, v14}, Lse;->a(Lsc;)V

    return-void
.end method

.method private o(Laff$a;Labq;II)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    .line 2495
    iget-object v14, v7, Laff$a;->e:Lse;

    .line 2496
    iget-object v4, v1, Labq;->c:Ljava/lang/Class;

    .line 2497
    iget-object v5, v1, Labq;->a:Ljava/lang/String;

    .line 2499
    invoke-static {v4}, Lahq;->d(Ljava/lang/Class;)Z

    move-result v6

    const/4 v15, 0x1

    xor-int/lit8 v16, v6, 0x1

    .line 2501
    invoke-virtual {v7, v4}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v6

    if-eqz v16, :cond_0

    const-string v8, "REF_PATH"

    .line 2505
    invoke-virtual {v7, v8}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v17, v8

    goto :goto_0

    :cond_0
    const/16 v17, 0x0

    .line 2508
    :goto_0
    new-instance v12, Lsc;

    invoke-direct {v12}, Lsc;-><init>()V

    new-instance v8, Lsc;

    invoke-direct {v8}, Lsc;-><init>()V

    .line 2510
    invoke-virtual {v0, v7, v1, v3, v2}, Laff;->a(Laff$a;Labq;II)V

    const/16 v11, 0x59

    .line 2511
    invoke-virtual {v14, v11}, Lse;->a(I)V

    const/16 v10, 0x3a

    .line 2512
    invoke-virtual {v14, v10, v6}, Lse;->b(II)V

    const/16 v9, 0xc6

    .line 2514
    invoke-virtual {v14, v9, v12}, Lse;->a(ILsc;)V

    .line 2516
    const-class v8, Ljava/io/Serializable;

    invoke-virtual {v8, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    const/16 v13, 0x19

    if-nez v8, :cond_2

    const-class v8, Ljava/util/List;

    if-eq v4, v8, :cond_2

    .line 2517
    invoke-virtual {v14, v13, v15}, Lse;->b(II)V

    .line 2518
    invoke-virtual/range {p2 .. p2}, Labq;->a()Z

    move-result v8

    if-nez v8, :cond_1

    const/16 v19, 0xb6

    .line 2519
    sget-object v20, Lrv;->J:Ljava/lang/String;

    const/16 v21, 0x0

    const-string v22, "isIgnoreNoneSerializable"

    const-string v23, "()Z"

    move-object v8, v14

    move/from16 v9, v19

    move-object/from16 v10, v20

    move-object/from16 v11, v22

    move-object v15, v12

    move-object/from16 v12, v23

    move-object/from16 v20, v5

    move v5, v13

    move/from16 v13, v21

    invoke-virtual/range {v8 .. v13}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    move-object/from16 v20, v5

    move-object v15, v12

    move v5, v13

    .line 2521
    invoke-virtual {v14, v5, v6}, Lse;->b(II)V

    const/16 v9, 0xb6

    .line 2522
    sget-object v10, Lrv;->J:Ljava/lang/String;

    const/4 v13, 0x0

    const-string v11, "isIgnoreNoneSerializable"

    const-string v12, "(Ljava/lang/Object;)Z"

    move-object v8, v14

    invoke-virtual/range {v8 .. v13}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    const/16 v8, 0x9a

    .line 2524
    invoke-virtual {v14, v8, v15}, Lse;->a(ILsc;)V

    goto :goto_2

    :cond_2
    move-object/from16 v20, v5

    move-object v15, v12

    move v5, v13

    :goto_2
    const/16 v12, 0xb4

    const/4 v11, 0x0

    const-string v10, "REF_DETECT"

    if-eqz v16, :cond_6

    .line 2547
    new-instance v8, Lsc;

    invoke-direct {v8}, Lsc;-><init>()V

    new-instance v13, Lsc;

    invoke-direct {v13}, Lsc;-><init>()V

    move-object/from16 v22, v13

    .line 2549
    invoke-virtual {v7, v10}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v13

    .line 2551
    const-class v9, Ljava/lang/Object;

    if-ne v4, v9, :cond_3

    const/4 v9, 0x1

    .line 2552
    invoke-virtual {v14, v5, v9}, Lse;->b(II)V

    .line 2553
    invoke-virtual {v14, v5, v6}, Lse;->b(II)V

    const/16 v9, 0xb6

    .line 2554
    sget-object v18, Lrv;->J:Ljava/lang/String;

    const/16 v24, 0x0

    const-string v25, "isRefDetect"

    const-string v26, "(Ljava/lang/Object;)Z"

    move-object v5, v8

    move-object v8, v14

    move-object/from16 v27, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v25

    move-object/from16 v12, v26

    move-object/from16 v23, v4

    move-object/from16 v21, v15

    move-object/from16 v4, v22

    move v15, v13

    move/from16 v13, v24

    invoke-virtual/range {v8 .. v13}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_3
    move-object/from16 v23, v4

    move-object v5, v8

    move-object/from16 v27, v10

    move-object/from16 v21, v15

    move-object/from16 v4, v22

    move v15, v13

    .line 2556
    sget-object v8, Lcom/alibaba/fastjson2/ab$b;->ReferenceDetection:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v8, Lcom/alibaba/fastjson2/ab$b;->mask:J

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Laff$a;->a(JLsc;)V

    :goto_3
    const/16 v13, 0x59

    .line 2558
    invoke-virtual {v14, v13}, Lse;->a(I)V

    const/16 v8, 0x36

    .line 2559
    invoke-virtual {v14, v8, v15}, Lse;->b(II)V

    const/16 v12, 0x99

    .line 2560
    invoke-virtual {v14, v12, v5}, Lse;->a(ILsc;)V

    const/16 v8, 0x19

    .line 2562
    invoke-virtual {v14, v8, v2}, Lse;->b(II)V

    .line 2563
    invoke-virtual {v14, v8, v6}, Lse;->b(II)V

    const/16 v2, 0xa6

    .line 2564
    invoke-virtual {v14, v2, v4}, Lse;->a(ILsc;)V

    .line 2566
    invoke-direct {v0, v7, v1, v3}, Laff;->a(Laff$a;Labq;I)V

    const/4 v2, 0x1

    .line 2568
    invoke-virtual {v14, v8, v2}, Lse;->b(II)V

    const-string v2, ".."

    .line 2569
    invoke-virtual {v14, v2}, Lse;->a(Ljava/lang/String;)V

    const/16 v9, 0xb6

    .line 2570
    sget-object v10, Lrv;->J:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v11, "writeReference"

    const-string v18, "(Ljava/lang/String;)V"

    move-object v8, v14

    move-object/from16 v12, v18

    move/from16 v18, v15

    move v15, v13

    move v13, v2

    invoke-virtual/range {v8 .. v13}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v2, 0xa7

    move-object/from16 v13, v21

    .line 2572
    invoke-virtual {v14, v2, v13}, Lse;->a(ILsc;)V

    .line 2574
    invoke-virtual {v14, v4}, Lse;->a(Lsc;)V

    const/4 v4, 0x1

    const/16 v8, 0x19

    .line 2576
    invoke-virtual {v14, v8, v4}, Lse;->b(II)V

    const/4 v4, 0x0

    .line 2577
    invoke-virtual {v14, v8, v4}, Lse;->b(II)V

    .line 2578
    iget-object v9, v7, Laff$a;->d:Ljava/lang/String;

    invoke-static/range {p4 .. p4}, Laff;->a(I)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lrv;->L:Ljava/lang/String;

    const/16 v12, 0xb4

    invoke-virtual {v14, v12, v9, v10, v11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2579
    invoke-virtual {v14, v8, v6}, Lse;->b(II)V

    const/16 v9, 0xb6

    .line 2580
    sget-object v10, Lrv;->J:Ljava/lang/String;

    sget-object v21, Laff;->F:Ljava/lang/String;

    const/16 v22, 0x0

    const-string v11, "setPath"

    move-object v8, v14

    move-object/from16 v12, v21

    move-object v2, v13

    move/from16 v13, v22

    invoke-virtual/range {v8 .. v13}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2581
    invoke-virtual {v14, v15}, Lse;->a(I)V

    .line 2582
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0x3a

    invoke-virtual {v14, v9, v8}, Lse;->b(II)V

    const/16 v8, 0xc6

    .line 2583
    invoke-virtual {v14, v8, v5}, Lse;->a(ILsc;)V

    .line 2585
    invoke-direct {v0, v7, v1, v3}, Laff;->a(Laff$a;Labq;I)V

    const/4 v8, 0x1

    const/16 v9, 0x19

    .line 2587
    invoke-virtual {v14, v9, v8}, Lse;->b(II)V

    .line 2588
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v14, v9, v8}, Lse;->b(II)V

    const/16 v9, 0xb6

    .line 2589
    sget-object v10, Lrv;->J:Ljava/lang/String;

    const/4 v13, 0x0

    const-string v11, "writeReference"

    const-string v12, "(Ljava/lang/String;)V"

    move-object v8, v14

    invoke-virtual/range {v8 .. v13}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v8, 0x1

    const/16 v15, 0x19

    .line 2591
    invoke-virtual {v14, v15, v8}, Lse;->b(II)V

    .line 2592
    invoke-virtual {v14, v15, v6}, Lse;->b(II)V

    .line 2593
    sget-object v10, Lrv;->J:Ljava/lang/String;

    const-string v11, "popPath"

    const-string v12, "(Ljava/lang/Object;)V"

    move-object v8, v14

    invoke-virtual/range {v8 .. v13}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v8, 0xa7

    .line 2594
    invoke-virtual {v14, v8, v2}, Lse;->a(ILsc;)V

    .line 2596
    invoke-virtual {v14, v5}, Lse;->a(Lsc;)V

    const-string v5, "this$0"

    move-object/from16 v13, v20

    .line 2598
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "this$1"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "this$2"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    const/16 v11, 0x99

    const/16 v12, 0x15

    goto :goto_5

    :cond_5
    :goto_4
    move/from16 v5, v18

    const/16 v12, 0x15

    .line 2599
    invoke-virtual {v14, v12, v5}, Lse;->b(II)V

    const/16 v11, 0x99

    .line 2600
    invoke-virtual {v14, v11, v2}, Lse;->a(ILsc;)V

    goto :goto_5

    :cond_6
    move-object/from16 v23, v4

    move-object/from16 v27, v10

    move v4, v11

    move-object v2, v15

    move-object/from16 v13, v20

    const/16 v11, 0x99

    const/16 v12, 0x15

    move v15, v5

    .line 2604
    :goto_5
    invoke-direct {v0, v7, v1, v3}, Laff;->a(Laff$a;Labq;I)V

    .line 2608
    invoke-virtual/range {p2 .. p2}, Labq;->g()Ljava/lang/Class;

    move-result-object v5

    .line 2609
    const-class v8, Ljava/util/List;

    move-object/from16 v9, v23

    if-ne v9, v8, :cond_8

    const-class v8, Ljava/lang/String;

    if-eq v5, v8, :cond_7

    const-class v8, Ljava/lang/Integer;

    if-eq v5, v8, :cond_7

    const-class v8, Ljava/lang/Long;

    if-ne v5, v8, :cond_8

    :cond_7
    move-object/from16 v1, p1

    move-object v10, v2

    move/from16 v2, p4

    move-object v3, v14

    move-object v4, v9

    move v9, v6

    .line 2610
    invoke-static/range {v1 .. v6}, Laff;->a(Laff$a;ILse;Ljava/lang/Class;Ljava/lang/Class;I)V

    move v8, v9

    move/from16 v29, v11

    move-object v11, v10

    move/from16 v10, v29

    goto/16 :goto_6

    :cond_8
    move-object v10, v2

    move v9, v6

    .line 2612
    invoke-virtual {v14, v15, v4}, Lse;->b(II)V

    .line 2613
    iget-object v2, v7, Laff$a;->d:Ljava/lang/String;

    invoke-static/range {p4 .. p4}, Laff;->a(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lrv;->L:Ljava/lang/String;

    const/16 v6, 0xb4

    invoke-virtual {v14, v6, v2, v4, v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 2614
    invoke-virtual {v14, v15, v2}, Lse;->b(II)V

    .line 2615
    invoke-virtual {v14, v15, v9}, Lse;->b(II)V

    const/16 v2, 0xb6

    const/4 v4, 0x0

    const-string v5, "java/lang/Object"

    const-string v6, "getClass"

    const-string v17, "()Ljava/lang/Class;"

    move-object v8, v14

    move/from16 v28, v9

    move v9, v2

    move-object v2, v10

    move-object v10, v5

    move v5, v11

    move-object v11, v6

    move v6, v12

    move-object/from16 v12, v17

    move-object v5, v13

    move v13, v4

    .line 2616
    invoke-virtual/range {v8 .. v13}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v9, 0xb6

    .line 2617
    sget-object v10, Lrv;->K:Ljava/lang/String;

    sget-object v12, Laff;->B:Ljava/lang/String;

    const/4 v13, 0x0

    const-string v11, "getObjectWriter"

    invoke-virtual/range {v8 .. v13}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v4, 0x1

    .line 2624
    invoke-virtual {v14, v15, v4}, Lse;->b(II)V

    move/from16 v8, v28

    .line 2625
    invoke-virtual {v14, v15, v8}, Lse;->b(II)V

    .line 2626
    invoke-virtual {v14, v5}, Lse;->a(Ljava/lang/String;)V

    .line 2627
    iget-object v4, v1, Labq;->b:Ljava/lang/reflect/Type;

    invoke-static {v7, v3, v4}, Laff$a;->a(Laff$a;ILjava/lang/reflect/Type;)V

    .line 2628
    iget-wide v3, v1, Labq;->d:J

    invoke-virtual {v14, v3, v4}, Lse;->a(J)V

    const/16 v3, 0xb9

    .line 2629
    sget-object v4, Lrv;->I:Ljava/lang/String;

    sget-object v5, Laff;->l:Ljava/lang/String;

    const/4 v9, 0x1

    const-string v10, "writeJSONB"

    move-object v1, v14

    move-object v11, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v10

    const/16 v10, 0x99

    move v12, v6

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_6
    if-eqz v16, :cond_9

    move-object/from16 v1, v27

    .line 2633
    invoke-virtual {v7, v1}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v1

    .line 2635
    new-instance v7, Lsc;

    invoke-direct {v7}, Lsc;-><init>()V

    .line 2637
    invoke-virtual {v14, v12, v1}, Lse;->b(II)V

    .line 2638
    invoke-virtual {v14, v10, v7}, Lse;->a(ILsc;)V

    const/4 v1, 0x1

    .line 2640
    invoke-virtual {v14, v15, v1}, Lse;->b(II)V

    .line 2641
    invoke-virtual {v14, v15, v8}, Lse;->b(II)V

    const/16 v2, 0xb6

    .line 2642
    sget-object v3, Lrv;->J:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v4, "popPath"

    const-string v5, "(Ljava/lang/Object;)V"

    move-object v1, v14

    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2644
    invoke-virtual {v14, v7}, Lse;->a(Lsc;)V

    .line 2647
    :cond_9
    invoke-virtual {v14, v11}, Lse;->a(Lsc;)V

    return-void
.end method

.method private p(Laff$a;Labq;II)V
    .locals 11

    .line 2787
    iget-object v6, p1, Laff$a;->e:Lse;

    .line 2788
    iget-object v0, p2, Labq;->c:Ljava/lang/Class;

    .line 2790
    new-instance v7, Lsc;

    invoke-direct {v7}, Lsc;-><init>()V

    new-instance v8, Lsc;

    invoke-direct {v8}, Lsc;-><init>()V

    new-instance v9, Lsc;

    invoke-direct {v9}, Lsc;-><init>()V

    .line 2792
    invoke-virtual {p1, v0}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v0

    .line 2794
    invoke-virtual {p0, p1, p2, p4, p3}, Laff;->a(Laff$a;Labq;II)V

    const/16 p3, 0x59

    .line 2795
    invoke-virtual {v6, p3}, Lse;->a(I)V

    const/16 p3, 0x3a

    .line 2796
    invoke-virtual {v6, p3, v0}, Lse;->b(II)V

    const/16 p3, 0xc6

    .line 2797
    invoke-virtual {v6, p3, v7}, Lse;->a(ILsc;)V

    const/16 p3, 0x19

    const/4 v1, 0x0

    .line 2800
    invoke-virtual {v6, p3, v1}, Lse;->b(II)V

    .line 2801
    iget-object v1, p1, Laff$a;->d:Ljava/lang/String;

    invoke-static {p4}, Laff;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lrv;->L:Ljava/lang/String;

    const/16 v4, 0xb4

    invoke-virtual {v6, v4, v1, v2, v3}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x1

    .line 2802
    invoke-virtual {v6, p3, v10}, Lse;->b(II)V

    .line 2803
    invoke-virtual {v6, p3, v0}, Lse;->b(II)V

    const/16 v1, 0xb6

    const-string v2, "java/util/Date"

    const-string v3, "getTime"

    const-string v4, "()J"

    const/4 v5, 0x0

    move-object v0, v6

    .line 2804
    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2805
    sget-object v2, Lrv;->K:Ljava/lang/String;

    sget-object v4, Laff;->m:Ljava/lang/String;

    const-string v3, "writeDate"

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0xa7

    .line 2806
    invoke-virtual {v6, v0, v9}, Lse;->a(ILsc;)V

    .line 2808
    invoke-virtual {v6, v7}, Lse;->a(Lsc;)V

    .line 2811
    iget-wide v1, p2, Labq;->d:J

    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->WriteNulls:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/16 v1, 0x15

    const-string v2, "WRITE_NULLS"

    .line 2812
    invoke-virtual {p1, v2}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v6, v1, v2}, Lse;->b(II)V

    const/16 v1, 0x9a

    .line 2813
    invoke-virtual {v6, v1, v8}, Lse;->a(ILsc;)V

    .line 2814
    invoke-virtual {v6, v0, v9}, Lse;->a(ILsc;)V

    .line 2817
    :cond_0
    invoke-virtual {v6, v8}, Lse;->a(Lsc;)V

    .line 2818
    invoke-direct {p0, p1, p2, p4}, Laff;->a(Laff$a;Labq;I)V

    .line 2821
    invoke-virtual {v6, p3, v10}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 2822
    sget-object v2, Lrv;->J:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "writeNull"

    const-string v4, "()V"

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2824
    invoke-virtual {v6, v9}, Lse;->a(Lsc;)V

    return-void
.end method

.method private q(Laff$a;Labq;II)V
    .locals 8

    .line 2828
    iget-object v0, p1, Laff$a;->e:Lse;

    .line 2829
    iget-object v1, p2, Labq;->c:Ljava/lang/Class;

    .line 2832
    const-class v2, [C

    if-ne v1, v2, :cond_0

    .line 2834
    sget-object v1, Laff;->x:Ljava/lang/String;

    const-string v2, "writeString"

    :goto_0
    move-object v4, v1

    move-object v3, v2

    goto :goto_1

    .line 2835
    :cond_0
    const-class v2, [Z

    if-ne v1, v2, :cond_1

    .line 2837
    sget-object v1, Laff;->r:Ljava/lang/String;

    const-string v2, "writeBool"

    goto :goto_0

    .line 2838
    :cond_1
    const-class v2, [B

    if-ne v1, v2, :cond_2

    .line 2840
    sget-object v1, Laff;->w:Ljava/lang/String;

    const-string v2, "writeBinary"

    goto :goto_0

    .line 2841
    :cond_2
    const-class v2, [S

    if-ne v1, v2, :cond_3

    .line 2843
    sget-object v1, Laff;->v:Ljava/lang/String;

    const-string v2, "writeInt16"

    goto :goto_0

    .line 2844
    :cond_3
    const-class v2, [F

    if-ne v1, v2, :cond_4

    .line 2846
    sget-object v1, Laff;->s:Ljava/lang/String;

    const-string v2, "writeFloat"

    goto :goto_0

    .line 2847
    :cond_4
    const-class v2, [D

    if-ne v1, v2, :cond_5

    .line 2849
    sget-object v1, Laff;->t:Ljava/lang/String;

    const-string v2, "writeDouble"

    goto :goto_0

    .line 2850
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2852
    sget-object v1, Laff;->y:Ljava/lang/String;

    const-string v2, "writeEnumJSONB"

    goto :goto_0

    :goto_1
    const/4 v1, 0x0

    const/16 v2, 0x19

    .line 2857
    invoke-virtual {v0, v2, v1}, Lse;->b(II)V

    const/16 v1, 0xb4

    .line 2858
    iget-object v5, p1, Laff$a;->d:Ljava/lang/String;

    invoke-static {p4}, Laff;->a(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lrv;->L:Ljava/lang/String;

    invoke-virtual {v0, v1, v5, v6, v7}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 2859
    invoke-virtual {v0, v2, v1}, Lse;->b(II)V

    .line 2860
    invoke-virtual {p0, p1, p2, p4, p3}, Laff;->a(Laff$a;Labq;II)V

    const/16 v1, 0xb6

    .line 2861
    sget-object v2, Lrv;->K:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 2854
    :cond_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method private r(Laff$a;Labq;II)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    .line 3308
    iget-boolean v4, v1, Laff$a;->g:Z

    .line 3309
    iget-wide v5, v2, Labq;->d:J

    iget-wide v7, v1, Laff$a;->c:J

    or-long/2addr v5, v7

    .line 3310
    iget-object v13, v1, Laff$a;->e:Lse;

    .line 3311
    iget-object v14, v2, Labq;->c:Ljava/lang/Class;

    .line 3312
    iget-object v15, v2, Labq;->f:Ljava/lang/String;

    .line 3314
    invoke-virtual {v1, v14}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v12

    .line 3316
    new-instance v11, Lsc;

    invoke-direct {v11}, Lsc;-><init>()V

    new-instance v10, Lsc;

    invoke-direct {v10}, Lsc;-><init>()V

    move/from16 v7, p3

    .line 3318
    invoke-virtual {v0, v1, v2, v3, v7}, Laff;->a(Laff$a;Labq;II)V

    const/16 v7, 0x59

    .line 3320
    invoke-virtual {v13, v7}, Lse;->a(I)V

    const/16 v9, 0x3a

    .line 3321
    invoke-virtual {v13, v9, v12}, Lse;->b(II)V

    const/16 v7, 0xc6

    .line 3323
    invoke-virtual {v13, v7, v11}, Lse;->a(ILsc;)V

    .line 3326
    invoke-direct {v0, v1, v2, v3}, Laff;->a(Laff$a;Labq;I)V

    const-string v7, "trim"

    .line 3328
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/16 v8, 0x19

    if-eqz v7, :cond_0

    .line 3329
    invoke-virtual {v13, v8, v12}, Lse;->b(II)V

    const/16 v16, 0xb6

    const/16 v17, 0x0

    const-string v18, "java/lang/String"

    const-string v19, "trim"

    const-string v20, "()Ljava/lang/String;"

    move-object v7, v13

    move/from16 v8, v16

    move-object/from16 v9, v18

    move-object/from16 v21, v10

    move-object/from16 v10, v19

    move-object/from16 v22, v11

    move-object/from16 v11, v20

    move-object/from16 v16, v14

    move v14, v12

    move/from16 v12, v17

    .line 3330
    invoke-virtual/range {v7 .. v12}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v7, 0x3a

    .line 3331
    invoke-virtual {v13, v7, v14}, Lse;->b(II)V

    goto :goto_0

    :cond_0
    move-object/from16 v21, v10

    move-object/from16 v22, v11

    move-object/from16 v16, v14

    move v14, v12

    :goto_0
    const/4 v7, 0x0

    if-eqz v4, :cond_1

    const-string v4, "symbol"

    .line 3334
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v7

    .line 3335
    :goto_1
    invoke-static {v1, v4, v7, v14}, Laff;->a(Laff$a;ZZI)V

    const/16 v4, 0xa7

    move-object/from16 v14, v21

    .line 3337
    invoke-virtual {v13, v4, v14}, Lse;->a(ILsc;)V

    move-object/from16 v7, v22

    .line 3339
    invoke-virtual {v13, v7}, Lse;->a(Lsc;)V

    .line 3341
    new-instance v15, Lsc;

    invoke-direct {v15}, Lsc;-><init>()V

    new-instance v7, Lsc;

    invoke-direct {v7}, Lsc;-><init>()V

    .line 3343
    sget-object v8, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v8, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object v10, Lcom/alibaba/fastjson2/ab$b;->WriteNullNumberAsZero:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v10, v10, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v8, v10

    sget-object v10, Lcom/alibaba/fastjson2/ab$b;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v10, v10, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v8, v10

    sget-object v10, Lcom/alibaba/fastjson2/ab$b;->WriteNullListAsEmpty:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v10, v10, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v8, v10

    sget-object v10, Lcom/alibaba/fastjson2/ab$b;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v10, v10, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v8, v10

    .line 3350
    sget-object v10, Lcom/alibaba/fastjson2/ab$b;->WriteNulls:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v10, v10, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v10, v8

    and-long/2addr v10, v5

    const-wide/16 v17, 0x0

    cmp-long v10, v10, v17

    if-nez v10, :cond_2

    .line 3351
    sget-object v10, Lcom/alibaba/fastjson2/ab$b;->WriteNulls:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v10, v10, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object v4, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    move-object/from16 v19, v13

    iget-wide v12, v4, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v10, v12

    sget-object v4, Lcom/alibaba/fastjson2/ab$b;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v12, v4, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v10, v12

    invoke-virtual {v1, v10, v11, v7, v14}, Laff$a;->a(JLsc;Lsc;)V

    move-object/from16 v4, v19

    goto :goto_2

    :cond_2
    move-object v4, v13

    .line 3358
    :goto_2
    invoke-virtual {v4, v7}, Lse;->a(Lsc;)V

    .line 3360
    iget-object v7, v2, Labq;->y:Ljava/lang/Object;

    if-nez v7, :cond_3

    .line 3361
    sget-object v7, Lcom/alibaba/fastjson2/ab$b;->NotWriteDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v10, v7, Lcom/alibaba/fastjson2/ab$b;->mask:J

    invoke-virtual {v1, v10, v11, v14}, Laff$a;->b(JLsc;)V

    .line 3365
    :cond_3
    invoke-direct {v0, v1, v2, v3}, Laff;->a(Laff$a;Labq;I)V

    and-long v1, v5, v8

    cmp-long v1, v1, v17

    if-nez v1, :cond_8

    .line 3368
    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/ab$b;->mask:J

    .line 3369
    const-class v3, Ljava/lang/String;

    move-object/from16 v5, v16

    if-ne v5, v3, :cond_5

    .line 3370
    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v5, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    :goto_3
    or-long/2addr v1, v5

    :cond_4
    const/4 v3, 0x1

    const/16 v5, 0x19

    goto :goto_4

    .line 3371
    :cond_5
    const-class v3, Ljava/lang/Boolean;

    if-ne v5, v3, :cond_6

    .line 3372
    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v5, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    goto :goto_3

    .line 3373
    :cond_6
    const-class v3, Ljava/lang/Number;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3374
    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->WriteNullNumberAsZero:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v5, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    goto :goto_3

    .line 3375
    :cond_7
    const-class v3, Ljava/util/Collection;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3376
    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->WriteNullListAsEmpty:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v5, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    goto :goto_3

    .line 3379
    :goto_4
    invoke-virtual {v4, v5, v3}, Lse;->b(II)V

    .line 3380
    invoke-virtual {v4, v1, v2}, Lse;->a(J)V

    const/16 v8, 0xb6

    .line 3381
    sget-object v9, Lrv;->J:Ljava/lang/String;

    const/4 v12, 0x0

    const-string v10, "isEnabled"

    const-string v11, "(J)Z"

    move-object v7, v4

    move v1, v3

    invoke-virtual/range {v7 .. v12}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v2, 0x99

    .line 3382
    invoke-virtual {v4, v2, v15}, Lse;->a(ILsc;)V

    goto :goto_5

    :cond_8
    const/4 v1, 0x1

    const/16 v5, 0x19

    .line 3385
    :goto_5
    invoke-virtual {v4, v5, v1}, Lse;->b(II)V

    const-string v2, ""

    .line 3386
    invoke-virtual {v4, v2}, Lse;->a(Ljava/lang/String;)V

    const/16 v8, 0xb6

    .line 3387
    sget-object v9, Lrv;->J:Ljava/lang/String;

    const/4 v12, 0x0

    const-string v10, "writeString"

    const-string v11, "(Ljava/lang/String;)V"

    move-object v7, v4

    invoke-virtual/range {v7 .. v12}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v2, 0xa7

    .line 3388
    invoke-virtual {v4, v2, v14}, Lse;->a(ILsc;)V

    .line 3391
    invoke-virtual {v4, v15}, Lse;->a(Lsc;)V

    .line 3392
    invoke-virtual {v4, v5, v1}, Lse;->b(II)V

    .line 3393
    sget-object v9, Lrv;->J:Ljava/lang/String;

    const-string v10, "writeStringNull"

    const-string v11, "()V"

    invoke-virtual/range {v7 .. v12}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3395
    invoke-virtual {v4, v14}, Lse;->a(Lsc;)V

    return-void
.end method


# virtual methods
.method public a(Lahq;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Laem;)Labq;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lahq;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            "Laem;",
            ")",
            "Labq<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v11, p9

    .line 3484
    invoke-virtual/range {p8 .. p8}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 3485
    const-class v2, Ljava/lang/Throwable;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 3486
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.lang"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_6

    .line 3491
    :cond_0
    invoke-virtual/range {p8 .. p8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    .line 3492
    invoke-virtual/range {p8 .. p8}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v8

    if-eqz v11, :cond_7

    .line 3495
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v12, v0, :cond_1

    .line 3496
    const-class v0, Ljava/lang/Byte;

    :goto_0
    move-object v7, v0

    move-object v12, v7

    goto :goto_1

    .line 3497
    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v12, v0, :cond_2

    .line 3498
    const-class v0, Ljava/lang/Short;

    goto :goto_0

    .line 3499
    :cond_2
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v12, v0, :cond_3

    .line 3500
    const-class v0, Ljava/lang/Float;

    goto :goto_0

    .line 3501
    :cond_3
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v12, v0, :cond_4

    .line 3502
    const-class v0, Ljava/lang/Double;

    goto :goto_0

    .line 3503
    :cond_4
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v12, v0, :cond_5

    .line 3504
    const-class v0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_5
    move-object v7, v8

    .line 3507
    :goto_1
    new-instance v13, Laea;

    const/4 v10, 0x0

    move-object v0, v13

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object v8, v12

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Laea;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 3518
    iput-object v12, v13, Laea;->B:Ljava/lang/Class;

    .line 3519
    sget-object v0, Lafc$a;->a:Lafc$a;

    if-eq v11, v0, :cond_6

    .line 3520
    iput-object v11, v13, Laea;->x:Laem;

    :cond_6
    return-object v13

    .line 3525
    :cond_7
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v12, v2, :cond_8

    .line 3526
    new-instance v9, Laby;

    move-object v0, v9

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object v8, v12

    invoke-direct/range {v0 .. v8}, Laby;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/Class;)V

    return-object v9

    .line 3529
    :cond_8
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v12, v2, :cond_9

    .line 3530
    new-instance v8, Ladp;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Ladp;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 3533
    :cond_9
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v12, v2, :cond_a

    .line 3534
    new-instance v8, Lada;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lada;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 3537
    :cond_a
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v12, v2, :cond_b

    .line 3538
    new-instance v8, Ladf;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Ladf;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 3541
    :cond_b
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v12, v2, :cond_e

    if-eqz p6, :cond_d

    .line 3542
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_2

    .line 3545
    :cond_c
    new-instance v8, Ladx;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Ladx;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 3543
    :cond_d
    :goto_2
    new-instance v8, Ladk;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Ladk;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 3548
    :cond_e
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v12, v2, :cond_f

    .line 3549
    new-instance v8, Lacv;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lacv;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 3552
    :cond_f
    const-class v2, Ljava/lang/Float;

    if-ne v12, v2, :cond_10

    .line 3553
    new-instance v8, Lacs;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lacs;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 3556
    :cond_10
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v12, v2, :cond_11

    .line 3557
    new-instance v6, Lacn;

    move-object v0, v6

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lacn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v6

    .line 3560
    :cond_11
    const-class v2, Ljava/lang/Double;

    if-ne v12, v2, :cond_12

    .line 3561
    new-instance v8, Lack;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lack;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 3564
    :cond_12
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v12, v2, :cond_13

    .line 3565
    new-instance v8, Lace;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lace;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 3568
    :cond_13
    const-class v2, Ljava/math/BigInteger;

    if-ne v12, v2, :cond_14

    .line 3569
    new-instance v8, Labu;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Labu;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 3572
    :cond_14
    const-class v2, Ljava/math/BigDecimal;

    if-ne v12, v2, :cond_15

    .line 3573
    new-instance v8, Labr;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Labr;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 3576
    :cond_15
    const-class v2, Ljava/util/Date;

    const/4 v13, 0x0

    if-ne v12, v2, :cond_18

    if-eqz p6, :cond_17

    .line 3578
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3580
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    move-object v7, v13

    goto :goto_3

    :cond_16
    move-object v7, v0

    goto :goto_3

    :cond_17
    move-object/from16 v7, p6

    .line 3585
    :goto_3
    new-instance v0, Lach;

    move-object v2, v0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Lach;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 3588
    :cond_18
    const-class v2, Ljava/lang/String;

    if-ne v12, v2, :cond_19

    .line 3589
    new-instance v8, Laei;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laei;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 3592
    :cond_19
    invoke-virtual {v12}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 3593
    new-instance v2, Lqe;

    invoke-direct {v2}, Lqe;-><init>()V

    .line 3594
    invoke-virtual {v0, v2, v12}, Lahq;->a(Lqe;Ljava/lang/Class;)V

    .line 3596
    iget-boolean v2, v2, Lqe;->o:Z

    if-nez v2, :cond_1a

    .line 3598
    iget-object v3, v0, Lahq;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v12}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laem;

    if-eqz v3, :cond_1a

    .line 3599
    instance-of v3, v3, Lagd;

    if-nez v3, :cond_1a

    const/4 v2, 0x1

    .line 3604
    :cond_1a
    invoke-static {v12, v0}, Laax;->a(Ljava/lang/Class;Lsk;)Ljava/lang/reflect/Member;

    move-result-object v0

    if-nez v0, :cond_1b

    if-nez v2, :cond_1b

    .line 3607
    invoke-static {v12}, Laax;->e(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 3609
    new-instance v11, Lacp;

    const/4 v10, 0x0

    move-object v0, v11

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object v7, v8

    move-object v8, v12

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lacp;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v11

    .line 3614
    :cond_1b
    const-class v0, Ljava/util/List;

    const/4 v2, 0x0

    if-eq v12, v0, :cond_23

    const-class v0, Ljava/util/ArrayList;

    if-ne v12, v0, :cond_1c

    goto/16 :goto_4

    .line 3622
    :cond_1c
    invoke-virtual {v12}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3623
    invoke-virtual {v12}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 3625
    const-class v0, Ljava/lang/Throwable;

    if-ne v1, v0, :cond_1d

    const-string v0, "stackTrace"

    move-object/from16 v14, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3627
    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    const-string v1, "getStackTrace"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 3628
    new-instance v15, Laec;

    move-object v0, v15

    move-object/from16 v1, p2

    move-object v2, v3

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v9, v12

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v11}, Laec;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v15

    :cond_1d
    move-object/from16 v14, p2

    .line 3639
    :catch_0
    :cond_1e
    const-class v0, [Ljava/math/BigDecimal;

    if-ne v12, v0, :cond_1f

    .line 3640
    new-instance v11, Laeb;

    const-class v2, Ljava/math/BigDecimal;

    const-class v8, [Ljava/math/BigDecimal;

    const-class v9, [Ljava/math/BigDecimal;

    move-object v0, v11

    move-object/from16 v1, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Laeb;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    return-object v11

    .line 3643
    :cond_1f
    const-class v0, [Ljava/lang/Float;

    if-ne v12, v0, :cond_20

    .line 3644
    new-instance v11, Laeb;

    const-class v2, Ljava/lang/Float;

    const-class v8, [Ljava/lang/Float;

    const-class v9, [Ljava/lang/Float;

    move-object v0, v11

    move-object/from16 v1, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Laeb;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    return-object v11

    .line 3647
    :cond_20
    const-class v0, [Ljava/lang/Double;

    if-ne v12, v0, :cond_21

    .line 3648
    new-instance v11, Laeb;

    const-class v2, Ljava/lang/Float;

    const-class v8, [Ljava/lang/Double;

    const-class v9, [Ljava/lang/Double;

    move-object v0, v11

    move-object/from16 v1, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Laeb;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    return-object v11

    .line 3651
    :cond_21
    invoke-static {v12}, Labo;->d(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_22

    return-object v13

    .line 3655
    :cond_22
    new-instance v11, Laea;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v7

    const/4 v10, 0x0

    move-object v0, v11

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object v8, v12

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Laea;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v11

    :cond_23
    :goto_4
    move-object/from16 v14, p2

    .line 3616
    instance-of v0, v8, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_24

    .line 3617
    move-object v0, v8

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    move-object v2, v0

    goto :goto_5

    :cond_24
    move-object v2, v13

    .line 3619
    :goto_5
    new-instance v11, Lads;

    move-object v0, v11

    move-object/from16 v1, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v9, v12

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lads;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    return-object v11

    :cond_25
    :goto_6
    move-object/from16 v14, p2

    .line 3488
    invoke-super/range {p0 .. p9}, Lafe;->a(Lahq;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Laem;)Labq;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;JLahq;)Laem;
    .locals 25

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v0, p4

    .line 157
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    .line 158
    iget-object v2, v11, Laff;->g:Laba;

    invoke-virtual {v2, v12}, Laba;->a(Ljava/lang/Class;)Z

    move-result v13

    .line 159
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v14

    .line 161
    new-instance v15, Lqe;

    invoke-direct {v15}, Lqe;-><init>()V

    .line 162
    invoke-virtual {v0, v15, v12}, Lahq;->a(Lqe;Ljava/lang/Class;)V

    .line 164
    iget-object v1, v15, Lqe;->v:Ljava/lang/Class;

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-eqz v1, :cond_0

    const-class v1, Laem;

    iget-object v2, v15, Lqe;->v:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    :try_start_0
    iget-object v0, v15, Lqe;->v:Ljava/lang/Class;

    new-array v1, v9, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 167
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 168
    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laem;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 171
    :goto_0
    new-instance v1, Lcom/alibaba/fastjson2/c;

    const-string v2, "create serializer error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 175
    :cond_0
    iget-wide v1, v15, Lqe;->n:J

    .line 176
    iget-object v3, v15, Lqe;->f:[Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 177
    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->WriteClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    not-long v3, v3

    and-long/2addr v1, v3

    :cond_1
    or-long v7, p2, v1

    .line 181
    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->FieldBased:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v1, v7

    const-wide/16 v16, 0x0

    cmp-long v1, v1, v16

    if-eqz v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v10

    goto :goto_1

    :cond_2
    move v1, v9

    .line 183
    :goto_1
    const-class v2, Ljava/lang/Throwable;

    invoke-virtual {v2, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 184
    invoke-static/range {p1 .. p1}, Laax;->h(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_b

    .line 189
    :cond_3
    invoke-static/range {p1 .. p1}, Laax;->g(Ljava/lang/Class;)Z

    move-result v18

    .line 192
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz v1, :cond_6

    if-eqz v18, :cond_4

    goto :goto_2

    .line 347
    :cond_4
    new-instance v3, Lqg;

    invoke-direct {v3}, Lqg;-><init>()V

    .line 348
    new-instance v6, L-$$Lambda$aff$9iSjxDvWWT6YL1lmK-QcWTCbGhE;

    move-object v1, v6

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v19, v5

    move-object v10, v6

    move-wide v5, v7

    move-object/from16 v7, p4

    move-object v8, v15

    move/from16 v21, v9

    move-object/from16 v9, v19

    invoke-direct/range {v1 .. v9}, L-$$Lambda$aff$9iSjxDvWWT6YL1lmK-QcWTCbGhE;-><init>(Laff;Lqg;Ljava/lang/Class;JLahq;Lqe;Ljava/util/Map;)V

    invoke-static {v12, v10}, Laax;->b(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    :cond_5
    move/from16 v24, v13

    move-object/from16 v18, v19

    const/16 v19, 0x1

    goto/16 :goto_6

    :cond_6
    :goto_2
    move-object/from16 v19, v5

    move/from16 v21, v9

    .line 194
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 196
    iget-object v2, v0, Lahq;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lso;

    .line 197
    invoke-interface {v3, v11, v12, v1}, Lso;->a(Lafe;Ljava/lang/Class;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v2, 0x1

    goto :goto_3

    :cond_8
    move/from16 v2, v21

    :goto_3
    if-eqz v2, :cond_a

    .line 204
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labq;

    .line 205
    iget-object v3, v2, Labq;->j:Ljava/lang/reflect/Method;

    if-nez v3, :cond_9

    .line 207
    invoke-super {v11, v12, v7, v8, v0}, Lafe;->a(Ljava/lang/Class;JLahq;)Laem;

    move-result-object v0

    return-object v0

    .line 209
    :cond_9
    iget-object v3, v2, Labq;->a:Ljava/lang/String;

    move-object/from16 v10, v19

    invoke-interface {v10, v3, v2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_a
    move-object/from16 v10, v19

    .line 212
    new-instance v19, Lqg;

    invoke-direct/range {v19 .. v19}, Lqg;-><init>()V

    if-nez v18, :cond_b

    .line 215
    new-instance v9, L-$$Lambda$aff$DFoZ2eeChT37wnBaynd0JKatWv8;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v3, v19

    move-object/from16 v4, p1

    move-wide v5, v7

    move-wide/from16 v22, v7

    move-object/from16 v7, p4

    move-object v8, v15

    move/from16 v24, v13

    move-object v13, v9

    move-object v9, v10

    invoke-direct/range {v1 .. v9}, L-$$Lambda$aff$DFoZ2eeChT37wnBaynd0JKatWv8;-><init>(Laff;Lqg;Ljava/lang/Class;JLahq;Lqe;Ljava/util/Map;)V

    invoke-static {v12, v13}, Laax;->b(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    goto :goto_5

    :cond_b
    move-wide/from16 v22, v7

    move/from16 v24, v13

    .line 232
    :goto_5
    invoke-virtual {v0, v12}, Lahq;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v13

    .line 233
    new-instance v9, L-$$Lambda$aff$OBy9z1maL7s2R6dmQqt9BGSOME4;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v3, v19

    move-wide/from16 v4, v22

    move-object v6, v15

    move-object/from16 v7, p4

    move-object/from16 v8, p1

    move-object v0, v9

    move/from16 v9, v18

    move-object/from16 v18, v10

    const/16 v19, 0x1

    invoke-direct/range {v1 .. v10}, L-$$Lambda$aff$OBy9z1maL7s2R6dmQqt9BGSOME4;-><init>(Laff;Lqg;JLqe;Lahq;Ljava/lang/Class;ZLjava/util/Map;)V

    invoke-static {v12, v13, v0}, Laax;->b(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 356
    :goto_6
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 358
    invoke-virtual {v11, v15, v5}, Laff;->a(Lqe;Ljava/util/List;)V

    .line 359
    iget-boolean v0, v15, Lqe;->B:Z

    if-eqz v0, :cond_d

    .line 361
    :try_start_1
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "fieldWriters sort error, objectClass "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", fields "

    .line 365
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    new-instance v2, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v2}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 368
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labq;

    .line 369
    iget-object v13, v4, Labq;->a:Ljava/lang/String;

    iget-object v15, v4, Labq;->c:Ljava/lang/Class;

    iget v5, v4, Labq;->e:I

    .line 373
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget-object v5, v4, Labq;->i:Ljava/lang/reflect/Field;

    iget-object v4, v4, Labq;->j:Ljava/lang/reflect/Method;

    const-string v12, "name"

    const-string v14, "type"

    const-string v16, "ordinal"

    const-string v18, "field"

    const-string v20, "method"

    move-object/from16 v19, v5

    move-object/from16 v21, v4

    .line 370
    invoke-static/range {v12 .. v21}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/e;

    move-result-object v4

    .line 369
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 379
    :cond_c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 380
    new-instance v2, Lcom/alibaba/fastjson2/c;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 384
    :cond_d
    :goto_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_e

    const-class v0, Ljava/lang/Throwable;

    invoke-virtual {v0, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_e

    move/from16 v9, v19

    goto :goto_9

    :cond_e
    move/from16 v9, v21

    :goto_9
    if-eqz v14, :cond_f

    if-eqz v24, :cond_11

    .line 387
    :cond_f
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labq;

    .line 388
    iget-object v1, v1, Labq;->j:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_10

    move/from16 v9, v21

    .line 395
    :cond_11
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labq;

    .line 396
    invoke-virtual {v1}, Labq;->d()Laem;

    move-result-object v2

    if-nez v2, :cond_13

    iget-wide v2, v1, Labq;->d:J

    const-wide/high16 v6, 0x1000000000000L

    and-long/2addr v2, v6

    cmp-long v2, v2, v16

    if-nez v2, :cond_13

    iget-wide v1, v1, Labq;->d:J

    const-wide/high16 v3, 0x4000000000000L

    and-long/2addr v1, v3

    cmp-long v1, v1, v16

    if-eqz v1, :cond_12

    :cond_13
    move/from16 v9, v21

    .line 405
    :cond_14
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_15

    .line 406
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    .line 407
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_15

    const-string v1, "$$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_a

    :cond_15
    move/from16 v21, v9

    .line 412
    :goto_a
    iget-wide v0, v15, Lqe;->n:J

    or-long v6, p2, v0

    if-nez v21, :cond_16

    .line 414
    invoke-super/range {p0 .. p4}, Lafe;->a(Ljava/lang/Class;JLahq;)Laem;

    move-result-object v0

    return-object v0

    .line 417
    :cond_16
    invoke-virtual {v11, v5, v12}, Laff;->a(Ljava/util/List;Ljava/lang/Class;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object v4, v15

    .line 419
    invoke-direct/range {v1 .. v7}, Laff;->a(Ljava/lang/Class;Lahq;Lqe;Ljava/util/List;J)Laez;

    move-result-object v0

    return-object v0

    .line 186
    :cond_17
    :goto_b
    invoke-super/range {p0 .. p4}, Lafe;->a(Ljava/lang/Class;JLahq;)Laem;

    move-result-object v0

    return-object v0
.end method

.method a(Laff$a;Labq;II)V
    .locals 10

    .line 3659
    iget-object v6, p1, Laff$a;->e:Lse;

    .line 3660
    iget-object v0, p1, Laff$a;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v1, "java/lang/Object"

    goto :goto_0

    .line 3661
    :cond_0
    invoke-static {v0}, Lrv;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v2, v1

    .line 3662
    iget-object v7, p2, Labq;->c:Ljava/lang/Class;

    .line 3663
    iget-object v1, p2, Labq;->j:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    iget-object v1, p2, Labq;->j:Ljava/lang/reflect/Method;

    goto :goto_1

    :cond_1
    iget-object v1, p2, Labq;->i:Ljava/lang/reflect/Field;

    .line 3664
    :goto_1
    invoke-virtual {p2}, Labq;->h()Ljava/util/function/Function;

    move-result-object p2

    const/16 v3, 0xb4

    const/16 v8, 0xc0

    const/16 v9, 0x19

    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 3667
    invoke-virtual {v6, v9, p2}, Lse;->b(II)V

    .line 3668
    iget-object p1, p1, Laff$a;->d:Ljava/lang/String;

    invoke-static {p3}, Laff;->a(I)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lrv;->L:Ljava/lang/String;

    invoke-virtual {v6, v3, p1, p2, p3}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb6

    .line 3669
    sget-object v2, Lrv;->K:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "getFunction"

    const-string v4, "()Ljava/util/function/Function;"

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3670
    invoke-virtual {v6, v9, p4}, Lse;->b(II)V

    const/16 v1, 0xb9

    .line 3671
    const-class p1, Ljava/util/function/Function;

    invoke-static {p1}, Lrv;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    const-string v3, "apply"

    const-string v4, "(Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3672
    invoke-static {v7}, Lrv;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, v8, p1}, Lse;->a(ILjava/lang/String;)V

    return-void

    .line 3676
    :cond_2
    instance-of p1, v1, Ljava/lang/reflect/Method;

    if-eqz p1, :cond_3

    .line 3677
    invoke-virtual {v6, v9, p4}, Lse;->b(II)V

    .line 3678
    invoke-virtual {v6, v8, v2}, Lse;->a(ILjava/lang/String;)V

    const/16 p1, 0xb6

    .line 3679
    invoke-interface {v1}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "()"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lrv;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 3683
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3684
    invoke-interface {v1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Laff;->g:Laba;

    .line 3685
    invoke-virtual {p1, v0}, Laba;->a(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 3687
    invoke-virtual {v6, v9, p4}, Lse;->b(II)V

    .line 3688
    invoke-virtual {v6, v8, v2}, Lse;->a(ILjava/lang/String;)V

    .line 3689
    invoke-interface {v1}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7}, Lrv;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, v3, v2, p1, p2}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3693
    :cond_4
    check-cast v1, Ljava/lang/reflect/Field;

    const/4 p1, 0x0

    .line 3696
    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string p3, "getObject"

    const-string v0, "(Ljava/lang/Object;J)Ljava/lang/Object;"

    if-ne v7, p2, :cond_5

    const-string p2, "getInt"

    const-string p3, "(Ljava/lang/Object;J)I"

    :goto_2
    move-object v3, p2

    move-object v4, p3

    goto/16 :goto_4

    .line 3699
    :cond_5
    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v7, p2, :cond_6

    const-string p2, "getLong"

    const-string p3, "(Ljava/lang/Object;J)J"

    goto :goto_2

    .line 3702
    :cond_6
    sget-object p2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v7, p2, :cond_7

    const-string p2, "getFloat"

    const-string p3, "(Ljava/lang/Object;J)F"

    goto :goto_2

    .line 3705
    :cond_7
    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v7, p2, :cond_8

    const-string p2, "getDouble"

    const-string p3, "(Ljava/lang/Object;J)D"

    goto :goto_2

    .line 3708
    :cond_8
    sget-object p2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v7, p2, :cond_9

    const-string p2, "getChar"

    const-string p3, "(Ljava/lang/Object;J)C"

    goto :goto_2

    .line 3711
    :cond_9
    sget-object p2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v7, p2, :cond_a

    const-string p2, "getByte"

    const-string p3, "(Ljava/lang/Object;J)B"

    goto :goto_2

    .line 3714
    :cond_a
    sget-object p2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v7, p2, :cond_b

    const-string p2, "getShort"

    const-string p3, "(Ljava/lang/Object;J)S"

    goto :goto_2

    .line 3717
    :cond_b
    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v7, p2, :cond_c

    const-string p2, "getBoolean"

    const-string p3, "(Ljava/lang/Object;J)Z"

    goto :goto_2

    .line 3723
    :cond_c
    invoke-virtual {v7}, Ljava/lang/Class;->isEnum()Z

    move-result p2

    if-eqz p2, :cond_e

    const-string p1, "java/lang/Enum"

    :cond_d
    :goto_3
    move-object v3, p3

    move-object v4, v0

    goto :goto_4

    .line 3725
    :cond_e
    invoke-static {v7}, Lahq;->c(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 3726
    invoke-static {v7}, Lrv;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 3727
    :cond_f
    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lahq;->c(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 3728
    invoke-static {v7}, Lrv;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 3729
    :cond_10
    const-class p2, Ljava/util/Map;

    invoke-virtual {p2, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_11

    const-string p1, "java/util/Map"

    goto :goto_3

    .line 3731
    :cond_11
    const-class p2, Ljava/util/List;

    invoke-virtual {p2, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_12

    const-string p1, "java/util/List"

    goto :goto_3

    .line 3733
    :cond_12
    const-class p2, Ljava/util/Collection;

    invoke-virtual {p2, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_d

    const-string p1, "java/util/Collection"

    goto :goto_3

    :goto_4
    const/16 p2, 0xb2

    .line 3738
    sget-object p3, Lafg;->a:Ljava/lang/String;

    const-string v0, "UNSAFE"

    const-string v2, "Lsun/misc/Unsafe;"

    invoke-virtual {v6, p2, p3, v0, v2}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3739
    invoke-virtual {v6, v9, p4}, Lse;->b(II)V

    .line 3740
    sget-object p2, Labf;->a:Lsun/misc/Unsafe;

    .line 3741
    invoke-virtual {p2, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide p2

    .line 3740
    invoke-virtual {v6, p2, p3}, Lse;->a(J)V

    const/16 v1, 0xb6

    const/4 v5, 0x0

    const-string v2, "sun/misc/Unsafe"

    move-object v0, v6

    .line 3742
    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_13

    .line 3744
    invoke-virtual {v6, v8, p1}, Lse;->a(ILjava/lang/String;)V

    :cond_13
    return-void
.end method

.method a(Laff$a;Labq;IIZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    .line 3180
    iget-object v10, v1, Laff$a;->e:Lse;

    .line 3181
    iget-object v4, v2, Labq;->c:Ljava/lang/Class;

    .line 3183
    invoke-virtual {v1, v4}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v11

    .line 3185
    new-instance v12, Lsc;

    invoke-direct {v12}, Lsc;-><init>()V

    new-instance v13, Lsc;

    invoke-direct {v13}, Lsc;-><init>()V

    new-instance v4, Lsc;

    invoke-direct {v4}, Lsc;-><init>()V

    move/from16 v5, p3

    .line 3187
    invoke-virtual {v0, v1, v2, v3, v5}, Laff;->a(Laff$a;Labq;II)V

    const/16 v5, 0x59

    .line 3188
    invoke-virtual {v10, v5}, Lse;->a(I)V

    const/16 v5, 0x3a

    .line 3189
    invoke-virtual {v10, v5, v11}, Lse;->b(II)V

    const/16 v5, 0xc7

    .line 3191
    invoke-virtual {v10, v5, v13}, Lse;->a(ILsc;)V

    const-string v5, "WRITE_NULLS"

    .line 3193
    invoke-virtual {v1, v5}, Laff$a;->a(Ljava/lang/Object;)I

    move-result v5

    const/16 v6, 0x15

    invoke-virtual {v10, v6, v5}, Lse;->b(II)V

    const/16 v5, 0x9a

    .line 3194
    invoke-virtual {v10, v5, v4}, Lse;->a(ILsc;)V

    const/16 v14, 0xa7

    .line 3196
    invoke-virtual {v10, v14, v12}, Lse;->a(ILsc;)V

    .line 3198
    invoke-virtual {v10, v4}, Lse;->a(Lsc;)V

    .line 3200
    invoke-direct {v0, v1, v2, v3}, Laff;->a(Laff$a;Labq;I)V

    const/4 v15, 0x1

    const/16 v9, 0x19

    .line 3203
    invoke-virtual {v10, v9, v15}, Lse;->b(II)V

    .line 3204
    sget-object v6, Lrv;->J:Ljava/lang/String;

    const/16 v5, 0xb6

    const-string v7, "writeArrayNull"

    const-string v8, "()V"

    const/16 v16, 0x0

    move-object v4, v10

    move v15, v9

    move/from16 v9, v16

    invoke-virtual/range {v4 .. v9}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3206
    invoke-virtual {v10, v14, v12}, Lse;->a(ILsc;)V

    .line 3208
    invoke-virtual {v10, v13}, Lse;->a(Lsc;)V

    .line 3210
    invoke-direct {v0, v1, v2, v3}, Laff;->a(Laff$a;Labq;I)V

    const/4 v1, 0x1

    .line 3212
    invoke-virtual {v10, v15, v1}, Lse;->b(II)V

    .line 3213
    invoke-virtual {v10, v15, v11}, Lse;->b(II)V

    .line 3214
    sget-object v3, Lrv;->J:Ljava/lang/String;

    const/16 v2, 0xb6

    const-string v4, "writeInt32"

    const-string v5, "([I)V"

    const/4 v6, 0x0

    move-object v1, v10

    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3216
    invoke-virtual {v10, v12}, Lse;->a(Lsc;)V

    return-void
.end method
