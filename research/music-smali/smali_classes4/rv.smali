.class public Lrv;
.super Ljava/lang/Object;
.source "ASMUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrv$a;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/String;

.field public static final B:Ljava/lang/String;

.field public static final C:Ljava/lang/String;

.field public static final D:Ljava/lang/String;

.field public static final E:Ljava/lang/String;

.field public static final F:Ljava/lang/String;

.field public static final G:Ljava/lang/String;

.field public static final H:Ljava/lang/String;

.field public static final I:Ljava/lang/String;

.field public static final J:Ljava/lang/String;

.field public static final K:Ljava/lang/String;

.field public static final L:Ljava/lang/String;

.field public static final M:Ljava/lang/String;

.field public static final N:Ljava/lang/String;

.field public static final O:Ljava/lang/String;

.field public static final P:Ljava/lang/String;

.field public static final Q:Ljava/lang/String;

.field public static final R:Ljava/lang/String;

.field public static final S:Ljava/lang/String;

.field public static final T:Ljava/lang/String;

.field static final U:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lrv$a;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final V:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final W:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final X:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[C>;"
        }
    .end annotation
.end field

.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/lang/String;

.field public static final k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;

.field public static final m:Ljava/lang/String;

.field public static final n:Ljava/lang/String;

.field public static final o:Ljava/lang/String;

.field public static final p:Ljava/lang/String;

.field public static final q:Ljava/lang/String;

.field public static final r:Ljava/lang/String;

.field public static final s:Ljava/lang/String;

.field public static final t:Ljava/lang/String;

.field public static final u:Ljava/lang/String;

.field public static final v:Ljava/lang/String;

.field public static final w:Ljava/lang/String;

.field public static final x:Ljava/lang/String;

.field public static final y:Ljava/lang/String;

.field public static final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 27
    const-class v0, Labf;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->a:Ljava/lang/String;

    .line 29
    const-class v0, Laez;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->b:Ljava/lang/String;

    .line 31
    const-class v0, Laen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->c:Ljava/lang/String;

    .line 32
    const-class v0, Laer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->d:Ljava/lang/String;

    .line 33
    const-class v0, Laes;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->e:Ljava/lang/String;

    .line 34
    const-class v0, Laet;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->f:Ljava/lang/String;

    .line 35
    const-class v0, Laeu;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->g:Ljava/lang/String;

    .line 36
    const-class v0, Laev;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->h:Ljava/lang/String;

    .line 37
    const-class v0, Laew;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->i:Ljava/lang/String;

    .line 38
    const-class v0, Laex;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->j:Ljava/lang/String;

    .line 39
    const-class v0, Laey;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->k:Ljava/lang/String;

    .line 40
    const-class v0, Laeo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->l:Ljava/lang/String;

    .line 41
    const-class v0, Laep;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->m:Ljava/lang/String;

    .line 42
    const-class v0, Laeq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->n:Ljava/lang/String;

    .line 43
    const-class v0, Lsu;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->o:Ljava/lang/String;

    .line 44
    const-class v0, Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->p:Ljava/lang/String;

    .line 46
    const-class v0, Lwk;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->q:Ljava/lang/String;

    .line 47
    const-class v0, Lwx;

    .line 48
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->r:Ljava/lang/String;

    .line 49
    const-class v0, Lwl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->s:Ljava/lang/String;

    .line 50
    const-class v0, Lwp;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->t:Ljava/lang/String;

    .line 51
    const-class v0, Lwq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->u:Ljava/lang/String;

    .line 52
    const-class v0, Lwr;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->v:Ljava/lang/String;

    .line 53
    const-class v0, Lws;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->w:Ljava/lang/String;

    .line 54
    const-class v0, Lwt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->x:Ljava/lang/String;

    .line 55
    const-class v0, Lwu;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->y:Ljava/lang/String;

    .line 56
    const-class v0, Lwv;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->z:Ljava/lang/String;

    .line 57
    const-class v0, Lww;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->A:Ljava/lang/String;

    .line 58
    const-class v0, Lwm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->B:Ljava/lang/String;

    .line 59
    const-class v0, Lwn;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->C:Ljava/lang/String;

    .line 60
    const-class v0, Lwo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->D:Ljava/lang/String;

    .line 61
    const-class v0, Lsp;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->E:Ljava/lang/String;

    .line 62
    const-class v0, Lsq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->F:Ljava/lang/String;

    .line 63
    const-class v0, Labo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->G:Ljava/lang/String;

    .line 64
    const-class v0, Laay;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->H:Ljava/lang/String;

    .line 66
    const-class v0, Laem;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->I:Ljava/lang/String;

    .line 67
    const-class v0, Lcom/alibaba/fastjson2/ab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->J:Ljava/lang/String;

    .line 68
    const-class v0, Labq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->K:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x4c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-class v4, Labq;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->L:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lrv;->L:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->M:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-class v6, Lsu;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->N:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lrv;->N:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->O:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v5, Lrv;->p:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->P:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v5, Lrv;->J:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->Q:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v5, Lrv;->q:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->R:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v5, Lrv;->I:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->S:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-class v5, Laai;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrv;->T:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lrv;->U:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lrv;->V:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lrv;->W:Ljava/util/Map;

    .line 88
    sget-object v0, Lrv;->U:Ljava/util/Map;

    new-instance v5, Lrv$a;

    const-class v6, Labm;

    .line 90
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "java.lang.reflect.Type"

    const-string v8, "[Ljava.lang.reflect.Type;"

    filled-new-array {v8, v7, v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "<init>"

    invoke-direct {v5, v6, v8, v7}, Lrv$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v6, "actualTypeArguments"

    const-string v7, "ownerType"

    const-string v9, "rawType"

    filled-new-array {v6, v7, v9}, [Ljava/lang/String;

    move-result-object v6

    .line 88
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lrv;->U:Ljava/util/Map;

    new-instance v5, Lrv$a;

    const-string v6, "java.lang.Object"

    filled-new-array {v6, v6, v6}, [Ljava/lang/String;

    move-result-object v7

    const-string v9, "org.apache.commons.lang3.tuple.Triple"

    const-string v10, "of"

    invoke-direct {v5, v9, v10, v7}, Lrv$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v7, "right"

    const-string v9, "middle"

    const-string v10, "left"

    filled-new-array {v10, v9, v7}, [Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lrv;->U:Ljava/util/Map;

    new-instance v5, Lrv$a;

    filled-new-array {v6, v6, v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v11, "org.apache.commons.lang3.tuple.MutableTriple"

    invoke-direct {v5, v11, v8, v6}, Lrv$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    filled-new-array {v10, v9, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lrv;->U:Ljava/util/Map;

    new-instance v5, Lrv$a;

    const-string v6, "javax.money.CurrencyUnit"

    const-string v7, "java.math.BigDecimal"

    const-string v9, "javax.money.MonetaryContext"

    filled-new-array {v7, v6, v9}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "org.javamoney.moneta.Money"

    invoke-direct {v5, v10, v8, v9}, Lrv$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v9, "number"

    const-string v11, "currency"

    const-string v12, "monetaryContext"

    filled-new-array {v9, v11, v12}, [Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lrv;->U:Ljava/util/Map;

    new-instance v5, Lrv$a;

    filled-new-array {v7, v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v10, v8, v6}, Lrv$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v6, "currency"

    filled-new-array {v9, v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lrv;->V:Ljava/util/Map;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v6, "I"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lrv;->V:Ljava/util/Map;

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v6, "V"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lrv;->V:Ljava/util/Map;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v6, "Z"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lrv;->V:Ljava/util/Map;

    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v6, "C"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lrv;->V:Ljava/util/Map;

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v6, "B"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lrv;->V:Ljava/util/Map;

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-string v6, "S"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lrv;->V:Ljava/util/Map;

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v6, "F"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lrv;->V:Ljava/util/Map;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v6, "J"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lrv;->V:Ljava/util/Map;

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v6, "D"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lrv;->W:Ljava/util/Map;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v6, "I"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lrv;->W:Ljava/util/Map;

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v6, "V"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lrv;->W:Ljava/util/Map;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v6, "Z"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lrv;->W:Ljava/util/Map;

    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v6, "C"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lrv;->W:Ljava/util/Map;

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v6, "B"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lrv;->W:Ljava/util/Map;

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-string v6, "S"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lrv;->W:Ljava/util/Map;

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v6, "F"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lrv;->W:Ljava/util/Map;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v6, "J"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lrv;->W:Ljava/util/Map;

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v6, "D"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x32

    .line 151
    new-array v0, v0, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v0, v6

    const-class v5, Ljava/util/List;

    const/4 v6, 0x1

    aput-object v5, v0, v6

    const-class v5, Ljava/util/Collection;

    const/4 v6, 0x2

    aput-object v5, v0, v6

    const-class v5, Lwk;

    const/4 v6, 0x3

    aput-object v5, v0, v6

    const-class v5, Lwl;

    const/4 v6, 0x4

    aput-object v5, v0, v6

    const-class v5, Lwp;

    const/4 v6, 0x5

    aput-object v5, v0, v6

    const-class v5, Lwq;

    const/4 v6, 0x6

    aput-object v5, v0, v6

    const-class v5, Lwr;

    const/4 v6, 0x7

    aput-object v5, v0, v6

    const-class v5, Lws;

    const/16 v6, 0x8

    aput-object v5, v0, v6

    const-class v5, Lwt;

    const/16 v6, 0x9

    aput-object v5, v0, v6

    const-class v5, Lwu;

    const/16 v6, 0xa

    aput-object v5, v0, v6

    const-class v5, Lwv;

    const/16 v6, 0xb

    aput-object v5, v0, v6

    const-class v5, Lww;

    const/16 v6, 0xc

    aput-object v5, v0, v6

    const-class v5, Lwm;

    const/16 v6, 0xd

    aput-object v5, v0, v6

    const-class v5, Lwn;

    const/16 v6, 0xe

    aput-object v5, v0, v6

    const-class v5, Lwo;

    const/16 v6, 0xf

    aput-object v5, v0, v6

    const-class v5, Lwx;

    const/16 v6, 0x10

    aput-object v5, v0, v6

    const-class v5, Lsu;

    const/16 v6, 0x11

    aput-object v5, v0, v6

    const-class v5, Lcom/alibaba/fastjson2/u;

    const/16 v6, 0x12

    aput-object v5, v0, v6

    const-class v5, Lqz;

    const/16 v6, 0x13

    aput-object v5, v0, v6

    const-class v5, Lrb;

    const/16 v6, 0x14

    aput-object v5, v0, v6

    const-class v5, Lra;

    const/16 v6, 0x15

    aput-object v5, v0, v6

    const-class v5, Lrd;

    const/16 v6, 0x16

    aput-object v5, v0, v6

    const-class v5, Ljava/util/function/ObjIntConsumer;

    const/16 v6, 0x17

    aput-object v5, v0, v6

    const-class v5, Ljava/util/function/ObjLongConsumer;

    const/16 v6, 0x18

    aput-object v5, v0, v6

    const-class v5, Lrc;

    const/16 v6, 0x19

    aput-object v5, v0, v6

    const-class v5, Ljava/util/function/ObjDoubleConsumer;

    const/16 v6, 0x1a

    aput-object v5, v0, v6

    const-class v5, Ljava/util/function/BiConsumer;

    const/16 v6, 0x1b

    aput-object v5, v0, v6

    const-class v5, Labf;

    const/16 v6, 0x1c

    aput-object v5, v0, v6

    const-class v5, Laez;

    const/16 v6, 0x1d

    aput-object v5, v0, v6

    const-class v5, Laen;

    const/16 v6, 0x1e

    aput-object v5, v0, v6

    const-class v5, Laer;

    const/16 v6, 0x1f

    aput-object v5, v0, v6

    const-class v5, Laes;

    const/16 v6, 0x20

    aput-object v5, v0, v6

    const-class v5, Laet;

    const/16 v6, 0x21

    aput-object v5, v0, v6

    const-class v5, Laeu;

    const/16 v6, 0x22

    aput-object v5, v0, v6

    const-class v5, Laev;

    const/16 v6, 0x23

    aput-object v5, v0, v6

    const-class v5, Laew;

    const/16 v6, 0x24

    aput-object v5, v0, v6

    const-class v5, Laex;

    const/16 v6, 0x25

    aput-object v5, v0, v6

    const-class v5, Laey;

    const/16 v6, 0x26

    aput-object v5, v0, v6

    const-class v5, Laeo;

    const/16 v6, 0x27

    aput-object v5, v0, v6

    const-class v5, Laep;

    const/16 v6, 0x28

    aput-object v5, v0, v6

    const-class v5, Laeq;

    const/16 v6, 0x29

    aput-object v5, v0, v6

    const-class v5, Labq;

    const/16 v6, 0x2a

    aput-object v5, v0, v6

    const-class v5, Lcom/alibaba/fastjson2/h$a;

    const/16 v6, 0x2b

    aput-object v5, v0, v6

    const-class v5, Lcom/alibaba/fastjson2/ab$a;

    const/16 v6, 0x2c

    aput-object v5, v0, v6

    const-class v5, Lcom/alibaba/fastjson2/b;

    const/16 v6, 0x2d

    aput-object v5, v0, v6

    const-class v5, Laai;

    aput-object v5, v0, v2

    const-class v5, Lqd;

    aput-object v5, v0, v1

    const-class v5, Ljava/util/Date;

    const/16 v6, 0x30

    aput-object v5, v0, v6

    const-class v5, Ljava/util/function/Supplier;

    const/16 v6, 0x31

    aput-object v5, v0, v6

    .line 203
    array-length v5, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v0, v6

    .line 204
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    .line 205
    sget-object v9, Lrv;->W:Ljava/util/Map;

    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 207
    sget-object v9, Lrv;->V:Ljava/util/Map;

    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 210
    :cond_0
    sget-object v0, Lrv;->W:Ljava/util/Map;

    const-class v1, Lcom/alibaba/fastjson2/ab;

    sget-object v2, Lrv;->J:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lrv;->V:Ljava/util/Map;

    const-class v1, Lcom/alibaba/fastjson2/ab;

    sget-object v2, Lrv;->Q:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lrv;->W:Ljava/util/Map;

    const-class v1, Laem;

    sget-object v2, Lrv;->I:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lrv;->V:Ljava/util/Map;

    const-class v1, Laem;

    sget-object v2, Lrv;->S:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lrv;->V:Ljava/util/Map;

    const-class v1, [Labq;

    sget-object v2, Lrv;->M:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lrv;->V:Ljava/util/Map;

    const-class v1, [Lsu;

    sget-object v2, Lrv;->O:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lrv;->X:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 220
    sget-object v0, Lrv;->W:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 225
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lrv;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 230
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;
    .locals 12

    .line 266
    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 267
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 268
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 270
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 271
    const-class v4, Ljava/time/format/DateTimeParseException;

    const-string v5, "cause"

    const/4 v6, 0x2

    const-string v7, "message"

    if-ne v0, v4, :cond_1

    .line 272
    array-length v4, v3

    const-string v8, "errorIndex"

    const-string v9, "parsedString"

    const/4 v10, 0x3

    if-ne v4, v10, :cond_0

    .line 273
    aget-object v4, v3, v2

    const-class v10, Ljava/lang/String;

    if-ne v4, v10, :cond_1

    aget-object v4, v3, v1

    const-class v10, Ljava/lang/CharSequence;

    if-ne v4, v10, :cond_1

    aget-object v4, v3, v6

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v10, :cond_1

    .line 274
    filled-new-array {v7, v9, v8}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 276
    :cond_0
    array-length v4, v3

    const/4 v11, 0x4

    if-ne v4, v11, :cond_1

    .line 277
    aget-object v4, v3, v2

    const-class v11, Ljava/lang/String;

    if-ne v4, v11, :cond_1

    aget-object v4, v3, v1

    const-class v11, Ljava/lang/CharSequence;

    if-ne v4, v11, :cond_1

    aget-object v4, v3, v6

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v11, :cond_1

    aget-object v4, v3, v10

    const-class v10, Ljava/lang/Throwable;

    if-ne v4, v10, :cond_1

    .line 278
    filled-new-array {v7, v9, v8, v5}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 283
    :cond_1
    const-class v4, Ljava/lang/Throwable;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 284
    array-length v0, v3

    if-eq v0, v1, :cond_3

    if-eq v0, v6, :cond_2

    goto :goto_0

    .line 295
    :cond_2
    aget-object v0, v3, v2

    const-class v4, Ljava/lang/String;

    if-ne v0, v4, :cond_5

    const-class v0, Ljava/lang/Throwable;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 296
    filled-new-array {v7, v5}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 286
    :cond_3
    aget-object v0, v3, v2

    const-class v4, Ljava/lang/String;

    if-ne v0, v4, :cond_4

    .line 287
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 290
    :cond_4
    const-class v0, Ljava/lang/Throwable;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 291
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 310
    :cond_5
    :goto_0
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6

    .line 311
    check-cast p0, Ljava/lang/reflect/Method;

    .line 312
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 313
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 314
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    .line 315
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result p0

    goto :goto_1

    .line 317
    :cond_6
    check-cast p0, Ljava/lang/reflect/Constructor;

    .line 318
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 319
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    .line 321
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result p0

    const-string v3, "<init>"

    .line 324
    :goto_1
    array-length v5, v0

    if-nez v5, :cond_7

    .line 325
    new-array p0, p0, [Ljava/lang/String;

    return-object p0

    .line 328
    :cond_7
    sget-object v5, Lrv;->U:Ljava/util/Map;

    new-instance v6, Lrv$a;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v3, v0}, Lrv$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    if-eqz v5, :cond_8

    return-object v5

    .line 333
    :cond_8
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    if-nez v5, :cond_9

    .line 335
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 338
    :cond_9
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 339
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x2e

    const/16 v9, 0x2f

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".class"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 340
    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 344
    :try_start_0
    new-instance v6, Lrx;

    invoke-direct {v6, v5}, Lrx;-><init>(Ljava/io/InputStream;)V

    .line 345
    new-instance v7, Lsi;

    invoke-direct {v7, v3, v0}, Lsi;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 346
    invoke-virtual {v6, v7}, Lrx;->a(Lsi;)V

    .line 348
    invoke-virtual {v7}, Lsi;->a()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 349
    array-length v6, v3

    add-int/lit8 v7, p0, -0x1

    if-ne v6, v7, :cond_a

    .line 350
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 351
    aget-object v7, v0, v2

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 352
    new-array v6, p0, [Ljava/lang/String;

    const-string v7, "this$0"

    .line 353
    aput-object v7, v6, v2

    .line 354
    array-length v7, v3

    invoke-static {v3, v2, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v6

    .line 362
    :cond_a
    invoke-static {v5}, Labe;->a(Ljava/io/Closeable;)V

    return-object v3

    :catchall_0
    move-exception p0

    invoke-static {v5}, Labe;->a(Ljava/io/Closeable;)V

    .line 363
    throw p0

    .line 362
    :catch_0
    invoke-static {v5}, Labe;->a(Ljava/io/Closeable;)V

    .line 366
    :cond_b
    new-array p0, p0, [Ljava/lang/String;

    .line 368
    aget-object v0, v0, v2

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v0, v3, :cond_c

    .line 369
    invoke-virtual {v4}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "this.$0"

    .line 370
    aput-object v0, p0, v2

    goto :goto_2

    :cond_c
    move v1, v2

    .line 375
    :goto_2
    array-length v0, p0

    if-ge v1, v0, :cond_d

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    return-object p0
.end method

.method public static b(Ljava/lang/Class;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 236
    sget-object v0, Lrv;->V:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 241
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lrv;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 246
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 247
    sget-object v0, Lrv;->X:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    if-nez v0, :cond_2

    const/16 v0, 0x200

    .line 249
    new-array v0, v0, [C

    :cond_2
    const/16 v2, 0x4c

    const/4 v3, 0x0

    .line 251
    aput-char v2, v0, v3

    .line 252
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    move v2, v4

    .line 253
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_4

    .line 254
    aget-char v5, v0, v2

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_3

    const/16 v5, 0x2f

    .line 255
    aput-char v5, v0, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 258
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v4

    const/16 v4, 0x3b

    aput-char v4, v0, v2

    .line 260
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x2

    invoke-direct {v2, v0, v3, p0}, Ljava/lang/String;-><init>([CII)V

    .line 261
    sget-object p0, Lrv;->X:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v2
.end method
